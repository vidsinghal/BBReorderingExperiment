; ModuleID = 'samples/989.bc'
source_filename = "bam_tview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.AbstractTview = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kh_kh_rg_s = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.kstring_t = type { i64, i64, ptr }
%struct.bcf_callret1_t = type { [4 x float], [25 x float] }
%struct.bam_pileup1_t = type { ptr, i32, i32, i32, i32, %union.bam_pileup_cd, i32 }
%union.bam_pileup_cd = type { ptr }
%struct.bam1_t = type { %struct.bam1_core_t, i64, ptr, i32, i32, i32 }
%struct.bam1_core_t = type { i64, i32, i16, i8, i8, i16, i16, i32, i32, i32, i64, i64 }
%struct.htsFile = type { i32, i64, %struct.kstring_t, ptr, ptr, %union.anon, ptr, %struct.htsFormat, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.htsFormat = type { i32, i32, %struct.anon, i32, i16, ptr }
%struct.anon = type { i16, i16 }
%struct.sam_global_args = type { %struct.htsFormat, %struct.htsFormat, ptr, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"tv!=NULL\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bam_tview.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.base_tv_init = private unnamed_addr constant [103 x i8] c"int base_tv_init(tview_t *, const char *, const char *, const char *, const char *, const htsFormat *)\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [9 x i8] c"fn!=NULL\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !20
@.str.4 = private unnamed_addr constant [6 x i8] c"tview\00", align 1, !dbg !25
@.str.5 = private unnamed_addr constant [16 x i8] c"can't open \22%s\22\00", align 1, !dbg !30
@.str.6 = private unnamed_addr constant [7 x i8] c"tv->fp\00", align 1, !dbg !35
@.str.7 = private unnamed_addr constant [17 x i8] c"cannot read \22%s\22\00", align 1, !dbg !40
@.str.8 = private unnamed_addr constant [27 x i8] c"cannot read index for \22%s\22\00", align 1, !dbg !45
@.str.9 = private unnamed_addr constant [43 x i8] c"The sample or read group \22%s\22 not present.\00", align 1, !dbg !50
@.str.10 = private unnamed_addr constant [5 x i8] c"%-ld\00", align 1, !dbg !55
@seq_nt16_table = external constant [256 x i8], align 16
@.str.11 = private unnamed_addr constant [5 x i8] c"ACGT\00", align 1, !dbg !60
@.str.12 = private unnamed_addr constant [17 x i8] c",ACMGRSVTWYHKDBN\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [27 x i8] c"Memory allocation failure.\00", align 1, !dbg !64
@seq_nt16_str = external constant [0 x i8], align 1
@seq_nt16_int = external constant [0 x i32], align 4
@__PRETTY_FUNCTION__.base_draw_aln = private unnamed_addr constant [45 x i8] c"int base_draw_aln(tview_t *, int, hts_pos_t)\00", align 1, !dbg !66
@.str.14 = private unnamed_addr constant [16 x i8] c"tv->curr_tid>=0\00", align 1, !dbg !71
@.str.15 = private unnamed_addr constant [10 x i8] c"str!=NULL\00", align 1, !dbg !73
@.str.16 = private unnamed_addr constant [11 x i8] c"%s:%ld-%ld\00", align 1, !dbg !78
@stderr = external global ptr, align 8
@.str.17 = private unnamed_addr constant [109 x i8] c"Could not read the reference sequence. Is it seekable (plain text or compressed + .gzi indexed with bgzip)?\0A\00", align 1, !dbg !83
@.str.18 = private unnamed_addr constant [31 x i8] c"could not read from input file\00", align 1, !dbg !88
@bam_tview_main.lopts = internal constant [9 x %struct.option] [%struct.option { ptr @.str.19, i32 1, ptr null, i32 63 }, %struct.option { ptr @.str.20, i32 1, ptr null, i32 129 }, %struct.option { ptr @.str.21, i32 1, ptr null, i32 63 }, %struct.option { ptr @.str.22, i32 1, ptr null, i32 63 }, %struct.option { ptr @.str.23, i32 1, ptr null, i32 132 }, %struct.option { ptr @.str.24, i32 1, ptr null, i32 63 }, %struct.option { ptr @.str.25, i32 0, ptr null, i32 134 }, %struct.option { ptr @.str.26, i32 1, ptr null, i32 135 }, %struct.option zeroinitializer], align 16, !dbg !93
@.str.19 = private unnamed_addr constant [10 x i8] c"input-fmt\00", align 1, !dbg !406
@.str.20 = private unnamed_addr constant [17 x i8] c"input-fmt-option\00", align 1, !dbg !408
@.str.21 = private unnamed_addr constant [11 x i8] c"output-fmt\00", align 1, !dbg !410
@.str.22 = private unnamed_addr constant [18 x i8] c"output-fmt-option\00", align 1, !dbg !412
@.str.23 = private unnamed_addr constant [10 x i8] c"reference\00", align 1, !dbg !417
@.str.24 = private unnamed_addr constant [8 x i8] c"threads\00", align 1, !dbg !419
@.str.25 = private unnamed_addr constant [12 x i8] c"write-index\00", align 1, !dbg !424
@.str.26 = private unnamed_addr constant [10 x i8] c"verbosity\00", align 1, !dbg !426
@.str.27 = private unnamed_addr constant [10 x i8] c"s:p:d:Xw:\00", align 1, !dbg !428
@optarg = external global ptr, align 8
@.str.28 = private unnamed_addr constant [24 x i8] c"Could not parse: -w %s\0A\00", align 1, !dbg !430
@optind = external global i32, align 4
@.str.29 = private unnamed_addr constant [62 x i8] c"The -w option is currently supported only with -d T and -d H\0A\00", align 1, !dbg !435
@.str.30 = private unnamed_addr constant [53 x i8] c"Incorrect number of arguments provided! Aborting...\0A\00", align 1, !dbg !440
@.str.31 = private unnamed_addr constant [19 x i8] c"cannot create view\00", align 1, !dbg !445
@.str.32 = private unnamed_addr constant [39 x i8] c"Unknown reference or malformed region\0A\00", align 1, !dbg !450
@.str.33 = private unnamed_addr constant [58 x i8] c"None of the BAM sequence names present in the fasta file\0A\00", align 1, !dbg !455
@.str.34 = private unnamed_addr constant [3 x i8] c"RG\00", align 1, !dbg !460
@.str.35 = private unnamed_addr constant [22 x i8] c"couldn't parse header\00", align 1, !dbg !465
@.str.36 = private unnamed_addr constant [3 x i8] c"ID\00", align 1, !dbg !470
@.str.37 = private unnamed_addr constant [3 x i8] c"SM\00", align 1, !dbg !472
@__func__.sam_itr_next = private unnamed_addr constant [13 x i8] c"sam_itr_next\00", align 1, !dbg !478
@.str.38 = private unnamed_addr constant [23 x i8] c"%s not BGZF compressed\00", align 1, !dbg !483
@.str.39 = private unnamed_addr constant [5 x i8] c"File\00", align 1, !dbg !488
@.str.40 = private unnamed_addr constant [14 x i8] c"Null iterator\00", align 1, !dbg !490
@.str.41 = private unnamed_addr constant [334 x i8] c"Usage: samtools tview [options] <aln.bam> [ref.fasta]\0AOptions:\0A   -d display      output as (H)tml or (C)urses or (T)ext \0A   -X              include customized index file\0A   -p chr:pos      go directly to this position\0A   -s STR          display only reads from this sample or group\0A   -w INT          display width (with -d T only)\0A\00", align 1, !dbg !495
@.str.42 = private unnamed_addr constant [9 x i8] c"-.--.--.\00", align 1, !dbg !500

; Function Attrs: nounwind uwtable
define dso_local i32 @base_tv_init(ptr noundef %tv, ptr noundef %fn, ptr noundef %fn_fa, ptr noundef %fn_idx, ptr noundef %samples, ptr noundef %fmt) #0 !dbg !551 {
entry:
  %tv.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %fn_fa.addr = alloca ptr, align 8
  %fn_idx.addr = alloca ptr, align 8
  %samples.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  store ptr %tv, ptr %tv.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %tv.addr, metadata !557, metadata !DIExpression()), !dbg !567
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !558, metadata !DIExpression()), !dbg !568
  store ptr %fn_fa, ptr %fn_fa.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %fn_fa.addr, metadata !559, metadata !DIExpression()), !dbg !569
  store ptr %fn_idx, ptr %fn_idx.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %fn_idx.addr, metadata !560, metadata !DIExpression()), !dbg !570
  store ptr %samples, ptr %samples.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %samples.addr, metadata !561, metadata !DIExpression()), !dbg !571
  store ptr %fmt, ptr %fmt.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !562, metadata !DIExpression()), !dbg !572
  %0 = load ptr, ptr %tv.addr, align 8, !dbg !573, !tbaa !563
  %cmp = icmp ne ptr %0, null, !dbg !573
  br i1 %cmp, label %if.then, label %if.else, !dbg !576

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !576

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 106, ptr noundef @__PRETTY_FUNCTION__.base_tv_init) #16, !dbg !573
  unreachable, !dbg !573

if.end:                                           ; preds = %if.then
  %1 = load ptr, ptr %fn.addr, align 8, !dbg !577, !tbaa !563
  %cmp1 = icmp ne ptr %1, null, !dbg !577
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !580

if.then2:                                         ; preds = %if.end
  br label %if.end4, !dbg !580

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 107, ptr noundef @__PRETTY_FUNCTION__.base_tv_init) #16, !dbg !577
  unreachable, !dbg !577

if.end4:                                          ; preds = %if.then2
  %2 = load ptr, ptr %tv.addr, align 8, !dbg !581, !tbaa !563
  %mrow = getelementptr inbounds %struct.AbstractTview, ptr %2, i32 0, i32 0, !dbg !582
  store i32 24, ptr %mrow, align 8, !dbg !583, !tbaa !584
  %3 = load ptr, ptr %tv.addr, align 8, !dbg !588, !tbaa !563
  %mcol = getelementptr inbounds %struct.AbstractTview, ptr %3, i32 0, i32 1, !dbg !589
  store i32 80, ptr %mcol, align 4, !dbg !590, !tbaa !591
  %4 = load ptr, ptr %tv.addr, align 8, !dbg !592, !tbaa !563
  %color_for = getelementptr inbounds %struct.AbstractTview, ptr %4, i32 0, i32 15, !dbg !593
  store i32 0, ptr %color_for, align 8, !dbg !594, !tbaa !595
  %5 = load ptr, ptr %tv.addr, align 8, !dbg !596, !tbaa !563
  %is_dot = getelementptr inbounds %struct.AbstractTview, ptr %5, i32 0, i32 16, !dbg !597
  store i32 1, ptr %is_dot, align 4, !dbg !598, !tbaa !599
  %6 = load ptr, ptr %fn.addr, align 8, !dbg !600, !tbaa !563
  %7 = load ptr, ptr %fmt.addr, align 8, !dbg !600, !tbaa !563
  %call = call ptr @hts_open_format(ptr noundef %6, ptr noundef @.str.3, ptr noundef %7), !dbg !600
  %8 = load ptr, ptr %tv.addr, align 8, !dbg !601, !tbaa !563
  %fp = getelementptr inbounds %struct.AbstractTview, ptr %8, i32 0, i32 5, !dbg !602
  store ptr %call, ptr %fp, align 8, !dbg !603, !tbaa !604
  %9 = load ptr, ptr %tv.addr, align 8, !dbg !605, !tbaa !563
  %fp5 = getelementptr inbounds %struct.AbstractTview, ptr %9, i32 0, i32 5, !dbg !607
  %10 = load ptr, ptr %fp5, align 8, !dbg !607, !tbaa !604
  %cmp6 = icmp eq ptr %10, null, !dbg !608
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !609

if.then7:                                         ; preds = %if.end4
  %11 = load ptr, ptr %fn.addr, align 8, !dbg !610, !tbaa !563
  call void (ptr, ptr, ...) @print_error_errno(ptr noundef @.str.4, ptr noundef @.str.5, ptr noundef %11), !dbg !612
  call void @exit(i32 noundef 1) #16, !dbg !613
  unreachable, !dbg !613

if.end8:                                          ; preds = %if.end4
  %12 = load ptr, ptr %tv.addr, align 8, !dbg !614, !tbaa !563
  %fp9 = getelementptr inbounds %struct.AbstractTview, ptr %12, i32 0, i32 5, !dbg !614
  %13 = load ptr, ptr %fp9, align 8, !dbg !614, !tbaa !604
  %tobool = icmp ne ptr %13, null, !dbg !614
  br i1 %tobool, label %if.then10, label %if.else11, !dbg !617

if.then10:                                        ; preds = %if.end8
  br label %if.end12, !dbg !617

if.else11:                                        ; preds = %if.end8
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 119, ptr noundef @__PRETTY_FUNCTION__.base_tv_init) #16, !dbg !614
  unreachable, !dbg !614

if.end12:                                         ; preds = %if.then10
  %14 = load ptr, ptr %tv.addr, align 8, !dbg !618, !tbaa !563
  %fp13 = getelementptr inbounds %struct.AbstractTview, ptr %14, i32 0, i32 5, !dbg !619
  %15 = load ptr, ptr %fp13, align 8, !dbg !619, !tbaa !604
  %call14 = call ptr @sam_hdr_read(ptr noundef %15), !dbg !620
  %16 = load ptr, ptr %tv.addr, align 8, !dbg !621, !tbaa !563
  %header = getelementptr inbounds %struct.AbstractTview, ptr %16, i32 0, i32 4, !dbg !622
  store ptr %call14, ptr %header, align 8, !dbg !623, !tbaa !624
  %17 = load ptr, ptr %tv.addr, align 8, !dbg !625, !tbaa !563
  %header15 = getelementptr inbounds %struct.AbstractTview, ptr %17, i32 0, i32 4, !dbg !627
  %18 = load ptr, ptr %header15, align 8, !dbg !627, !tbaa !624
  %cmp16 = icmp eq ptr %18, null, !dbg !628
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !629

if.then17:                                        ; preds = %if.end12
  %19 = load ptr, ptr %fn.addr, align 8, !dbg !630, !tbaa !563
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str.4, ptr noundef @.str.7, ptr noundef %19), !dbg !632
  call void @exit(i32 noundef 1) #16, !dbg !633
  unreachable, !dbg !633

if.end18:                                         ; preds = %if.end12
  %20 = load ptr, ptr %fn_idx.addr, align 8, !dbg !634, !tbaa !563
  %cmp19 = icmp ne ptr %20, null, !dbg !636
  br i1 %cmp19, label %if.then20, label %if.else23, !dbg !637

if.then20:                                        ; preds = %if.end18
  %21 = load ptr, ptr %tv.addr, align 8, !dbg !638, !tbaa !563
  %fp21 = getelementptr inbounds %struct.AbstractTview, ptr %21, i32 0, i32 5, !dbg !640
  %22 = load ptr, ptr %fp21, align 8, !dbg !640, !tbaa !604
  %23 = load ptr, ptr %fn.addr, align 8, !dbg !641, !tbaa !563
  %24 = load ptr, ptr %fn_idx.addr, align 8, !dbg !642, !tbaa !563
  %call22 = call ptr @sam_index_load2(ptr noundef %22, ptr noundef %23, ptr noundef %24), !dbg !643
  %25 = load ptr, ptr %tv.addr, align 8, !dbg !644, !tbaa !563
  %idx = getelementptr inbounds %struct.AbstractTview, ptr %25, i32 0, i32 2, !dbg !645
  store ptr %call22, ptr %idx, align 8, !dbg !646, !tbaa !647
  br label %if.end27, !dbg !648

if.else23:                                        ; preds = %if.end18
  %26 = load ptr, ptr %tv.addr, align 8, !dbg !649, !tbaa !563
  %fp24 = getelementptr inbounds %struct.AbstractTview, ptr %26, i32 0, i32 5, !dbg !651
  %27 = load ptr, ptr %fp24, align 8, !dbg !651, !tbaa !604
  %28 = load ptr, ptr %fn.addr, align 8, !dbg !652, !tbaa !563
  %call25 = call ptr @sam_index_load(ptr noundef %27, ptr noundef %28), !dbg !653
  %29 = load ptr, ptr %tv.addr, align 8, !dbg !654, !tbaa !563
  %idx26 = getelementptr inbounds %struct.AbstractTview, ptr %29, i32 0, i32 2, !dbg !655
  store ptr %call25, ptr %idx26, align 8, !dbg !656, !tbaa !647
  br label %if.end27

if.end27:                                         ; preds = %if.else23, %if.then20
  %30 = load ptr, ptr %tv.addr, align 8, !dbg !657, !tbaa !563
  %idx28 = getelementptr inbounds %struct.AbstractTview, ptr %30, i32 0, i32 2, !dbg !659
  %31 = load ptr, ptr %idx28, align 8, !dbg !659, !tbaa !647
  %cmp29 = icmp eq ptr %31, null, !dbg !660
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !661

if.then30:                                        ; preds = %if.end27
  %32 = load ptr, ptr %fn.addr, align 8, !dbg !662, !tbaa !563
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str.4, ptr noundef @.str.8, ptr noundef %32), !dbg !664
  call void @exit(i32 noundef 1) #16, !dbg !665
  unreachable, !dbg !665

if.end31:                                         ; preds = %if.end27
  %33 = load ptr, ptr %tv.addr, align 8, !dbg !666, !tbaa !563
  %call32 = call ptr @bam_lplbuf_init(ptr noundef @tv_pl_func, ptr noundef %33), !dbg !667
  %34 = load ptr, ptr %tv.addr, align 8, !dbg !668, !tbaa !563
  %lplbuf = getelementptr inbounds %struct.AbstractTview, ptr %34, i32 0, i32 3, !dbg !669
  store ptr %call32, ptr %lplbuf, align 8, !dbg !670, !tbaa !671
  %35 = load ptr, ptr %fn_fa.addr, align 8, !dbg !672, !tbaa !563
  %tobool33 = icmp ne ptr %35, null, !dbg !672
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !674

if.then34:                                        ; preds = %if.end31
  %36 = load ptr, ptr %fn_fa.addr, align 8, !dbg !675, !tbaa !563
  %call35 = call ptr @fai_load(ptr noundef %36), !dbg !676
  %37 = load ptr, ptr %tv.addr, align 8, !dbg !677, !tbaa !563
  %fai = getelementptr inbounds %struct.AbstractTview, ptr %37, i32 0, i32 6, !dbg !678
  store ptr %call35, ptr %fai, align 8, !dbg !679, !tbaa !680
  br label %if.end36, !dbg !677

if.end36:                                         ; preds = %if.then34, %if.end31
  %call37 = call ptr @bcf_call_init(double noundef 8.300000e-01, i32 noundef 13), !dbg !681
  %38 = load ptr, ptr %tv.addr, align 8, !dbg !682, !tbaa !563
  %bca = getelementptr inbounds %struct.AbstractTview, ptr %38, i32 0, i32 7, !dbg !683
  store ptr %call37, ptr %bca, align 8, !dbg !684, !tbaa !685
  %39 = load ptr, ptr %tv.addr, align 8, !dbg !686, !tbaa !563
  %ins = getelementptr inbounds %struct.AbstractTview, ptr %39, i32 0, i32 17, !dbg !687
  store i32 1, ptr %ins, align 8, !dbg !688, !tbaa !689
  %40 = load ptr, ptr %samples.addr, align 8, !dbg !690, !tbaa !563
  %tobool38 = icmp ne ptr %40, null, !dbg !690
  br i1 %tobool38, label %if.then39, label %if.end46, !dbg !692

if.then39:                                        ; preds = %if.end36
  %41 = load ptr, ptr %tv.addr, align 8, !dbg !693, !tbaa !563
  %header40 = getelementptr inbounds %struct.AbstractTview, ptr %41, i32 0, i32 4, !dbg !695
  %42 = load ptr, ptr %header40, align 8, !dbg !695, !tbaa !624
  %43 = load ptr, ptr %samples.addr, align 8, !dbg !696, !tbaa !563
  %call41 = call ptr @get_rg_sample(ptr noundef %42, ptr noundef %43), !dbg !697
  %44 = load ptr, ptr %tv.addr, align 8, !dbg !698, !tbaa !563
  %rg_hash = getelementptr inbounds %struct.AbstractTview, ptr %44, i32 0, i32 22, !dbg !699
  store ptr %call41, ptr %rg_hash, align 8, !dbg !700, !tbaa !701
  %45 = load ptr, ptr %tv.addr, align 8, !dbg !702, !tbaa !563
  %rg_hash42 = getelementptr inbounds %struct.AbstractTview, ptr %45, i32 0, i32 22, !dbg !702
  %46 = load ptr, ptr %rg_hash42, align 8, !dbg !702, !tbaa !701
  %size = getelementptr inbounds %struct.kh_kh_rg_s, ptr %46, i32 0, i32 1, !dbg !702
  %47 = load i32, ptr %size, align 4, !dbg !702, !tbaa !704
  %cmp43 = icmp eq i32 %47, 0, !dbg !706
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !707

if.then44:                                        ; preds = %if.then39
  %48 = load ptr, ptr %samples.addr, align 8, !dbg !708, !tbaa !563
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str.4, ptr noundef @.str.9, ptr noundef %48), !dbg !710
  call void @exit(i32 noundef 1) #16, !dbg !711
  unreachable, !dbg !711

if.end45:                                         ; preds = %if.then39
  br label %if.end46, !dbg !712

if.end46:                                         ; preds = %if.end45, %if.end36
  ret i32 0, !dbg !713
}

; Function Attrs: noreturn nounwind
declare !dbg !714 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare !dbg !718 ptr @hts_open_format(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !722 void @print_error_errno(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !726 void @exit(i32 noundef) #1

declare !dbg !730 ptr @sam_hdr_read(ptr noundef) #2

declare !dbg !733 void @print_error(ptr noundef, ptr noundef, ...) #2

declare !dbg !734 ptr @sam_index_load2(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !737 ptr @sam_index_load(ptr noundef, ptr noundef) #2

declare !dbg !740 ptr @bam_lplbuf_init(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @tv_pl_func(i32 noundef %tid, i64 noundef %pos, i32 noundef %n, ptr noundef %pl, ptr noundef %data) #0 !dbg !800 {
entry:
  %retval = alloca i32, align 4
  %tid.addr = alloca i32, align 4
  %pos.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  %pl.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %tv = alloca ptr, align 8
  %cp = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %rb = alloca i32, align 4
  %attr = alloca i32, align 4
  %max_ins = alloca i32, align 4
  %interval = alloca i32, align 4
  %call = alloca i32, align 4
  %ks = alloca %struct.kstring_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %bcr = alloca %struct.bcf_callret1_t, align 4
  %qsum = alloca [4 x i32], align 16
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %p = alloca [3 x double], align 16
  %prior = alloca double, align 8
  %__res = alloca i32, align 4
  %__c = alloca i32, align 4
  %tmp144 = alloca i32, align 4
  %__res155 = alloca i32, align 4
  %__c157 = alloca i32, align 4
  %tmp173 = alloca i32, align 4
  %__res271 = alloca i32, align 4
  %__c273 = alloca i32, align 4
  %tmp289 = alloca i32, align 4
  %p302 = alloca ptr, align 8
  %len = alloca i32, align 4
  %p324 = alloca ptr, align 8
  %row = alloca i32, align 4
  %name = alloca ptr, align 8
  %__res407 = alloca i32, align 4
  %__c409 = alloca i32, align 4
  %tmp425 = alloca i32, align 4
  %__res426 = alloca i32, align 4
  %__c428 = alloca i32, align 4
  %tmp444 = alloca i32, align 4
  %len477 = alloca i32, align 4
  %name494 = alloca ptr, align 8
  %__res526 = alloca i32, align 4
  %__c528 = alloca i32, align 4
  %tmp544 = alloca i32, align 4
  %__res545 = alloca i32, align 4
  %__c547 = alloca i32, align 4
  %tmp563 = alloca i32, align 4
  %x = alloca i32, align 4
  %__res833 = alloca i32, align 4
  %__c835 = alloca i32, align 4
  %tmp851 = alloca i32, align 4
  %__res853 = alloca i32, align 4
  %__c855 = alloca i32, align 4
  %tmp871 = alloca i32, align 4
  store i32 %tid, ptr %tid.addr, align 4, !tbaa !946
  tail call void @llvm.dbg.declare(metadata ptr %tid.addr, metadata !802, metadata !DIExpression()), !dbg !947
  store i64 %pos, ptr %pos.addr, align 8, !tbaa !948
  tail call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !803, metadata !DIExpression()), !dbg !949
  store i32 %n, ptr %n.addr, align 4, !tbaa !946
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !804, metadata !DIExpression()), !dbg !950
  store ptr %pl, ptr %pl.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %pl.addr, metadata !805, metadata !DIExpression()), !dbg !951
  store ptr %data, ptr %data.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !806, metadata !DIExpression()), !dbg !952
  call void @llvm.lifetime.start.p0(i64 8, ptr %tv) #17, !dbg !953
  tail call void @llvm.dbg.declare(metadata ptr %tv, metadata !807, metadata !DIExpression()), !dbg !954
  %0 = load ptr, ptr %data.addr, align 8, !dbg !955, !tbaa !563
  store ptr %0, ptr %tv, align 8, !dbg !954, !tbaa !563
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #17, !dbg !956
  tail call void @llvm.dbg.declare(metadata ptr %cp, metadata !808, metadata !DIExpression()), !dbg !957
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !958
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !809, metadata !DIExpression()), !dbg !959
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #17, !dbg !958
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !810, metadata !DIExpression()), !dbg !960
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #17, !dbg !958
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !811, metadata !DIExpression()), !dbg !961
  call void @llvm.lifetime.start.p0(i64 4, ptr %rb) #17, !dbg !958
  tail call void @llvm.dbg.declare(metadata ptr %rb, metadata !812, metadata !DIExpression()), !dbg !962
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr) #17, !dbg !958
  tail call void @llvm.dbg.declare(metadata ptr %attr, metadata !813, metadata !DIExpression()), !dbg !963
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_ins) #17, !dbg !958
  tail call void @llvm.dbg.declare(metadata ptr %max_ins, metadata !814, metadata !DIExpression()), !dbg !964
  store i32 0, ptr %max_ins, align 4, !dbg !964, !tbaa !946
  call void @llvm.lifetime.start.p0(i64 4, ptr %interval) #17, !dbg !958
  tail call void @llvm.dbg.declare(metadata ptr %interval, metadata !815, metadata !DIExpression()), !dbg !965
  call void @llvm.lifetime.start.p0(i64 4, ptr %call) #17, !dbg !966
  tail call void @llvm.dbg.declare(metadata ptr %call, metadata !816, metadata !DIExpression()), !dbg !967
  store i32 0, ptr %call, align 4, !dbg !967, !tbaa !946
  call void @llvm.lifetime.start.p0(i64 24, ptr %ks) #17, !dbg !968
  tail call void @llvm.dbg.declare(metadata ptr %ks, metadata !817, metadata !DIExpression()), !dbg !969
  call void @llvm.memset.p0.i64(ptr align 8 %ks, i8 0, i64 24, i1 false), !dbg !969
  %1 = load i64, ptr %pos.addr, align 8, !dbg !970, !tbaa !948
  %2 = load ptr, ptr %tv, align 8, !dbg !972, !tbaa !563
  %left_pos = getelementptr inbounds %struct.AbstractTview, ptr %2, i32 0, i32 8, !dbg !973
  %3 = load i64, ptr %left_pos, align 8, !dbg !973, !tbaa !974
  %cmp = icmp slt i64 %1, %3, !dbg !975
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !976

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %tv, align 8, !dbg !977, !tbaa !563
  %ccol = getelementptr inbounds %struct.AbstractTview, ptr %4, i32 0, i32 12, !dbg !978
  %5 = load i32, ptr %ccol, align 4, !dbg !978, !tbaa !979
  %6 = load ptr, ptr %tv, align 8, !dbg !980, !tbaa !563
  %mcol = getelementptr inbounds %struct.AbstractTview, ptr %6, i32 0, i32 1, !dbg !981
  %7 = load i32, ptr %mcol, align 4, !dbg !981, !tbaa !591
  %cmp1 = icmp sgt i32 %5, %7, !dbg !982
  br i1 %cmp1, label %if.then, label %if.end, !dbg !983

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !984

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %tv, align 8, !dbg !985, !tbaa !563
  %ref = getelementptr inbounds %struct.AbstractTview, ptr %8, i32 0, i32 21, !dbg !986
  %9 = load ptr, ptr %ref, align 8, !dbg !986, !tbaa !987
  %tobool = icmp ne ptr %9, null, !dbg !985
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !988

land.lhs.true:                                    ; preds = %if.end
  %10 = load i64, ptr %pos.addr, align 8, !dbg !989, !tbaa !948
  %11 = load ptr, ptr %tv, align 8, !dbg !990, !tbaa !563
  %left_pos2 = getelementptr inbounds %struct.AbstractTview, ptr %11, i32 0, i32 8, !dbg !991
  %12 = load i64, ptr %left_pos2, align 8, !dbg !991, !tbaa !974
  %sub = sub nsw i64 %10, %12, !dbg !992
  %13 = load ptr, ptr %tv, align 8, !dbg !993, !tbaa !563
  %l_ref = getelementptr inbounds %struct.AbstractTview, ptr %13, i32 0, i32 10, !dbg !994
  %14 = load i64, ptr %l_ref, align 8, !dbg !994, !tbaa !995
  %cmp3 = icmp slt i64 %sub, %14, !dbg !996
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !997

cond.true:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %tv, align 8, !dbg !998, !tbaa !563
  %ref4 = getelementptr inbounds %struct.AbstractTview, ptr %15, i32 0, i32 21, !dbg !999
  %16 = load ptr, ptr %ref4, align 8, !dbg !999, !tbaa !987
  %17 = load i64, ptr %pos.addr, align 8, !dbg !1000, !tbaa !948
  %18 = load ptr, ptr %tv, align 8, !dbg !1001, !tbaa !563
  %left_pos5 = getelementptr inbounds %struct.AbstractTview, ptr %18, i32 0, i32 8, !dbg !1002
  %19 = load i64, ptr %left_pos5, align 8, !dbg !1002, !tbaa !974
  %sub6 = sub nsw i64 %17, %19, !dbg !1003
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 %sub6, !dbg !998
  %20 = load i8, ptr %arrayidx, align 1, !dbg !998, !tbaa !1004
  %conv = sext i8 %20 to i32, !dbg !998
  br label %cond.end, !dbg !997

cond.false:                                       ; preds = %land.lhs.true, %if.end
  br label %cond.end, !dbg !997

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 78, %cond.false ], !dbg !997
  store i32 %cond, ptr %rb, align 4, !dbg !1005, !tbaa !946
  %21 = load ptr, ptr %tv, align 8, !dbg !1006, !tbaa !563
  %last_pos = getelementptr inbounds %struct.AbstractTview, ptr %21, i32 0, i32 9, !dbg !1008
  %22 = load i64, ptr %last_pos, align 8, !dbg !1008, !tbaa !1009
  %add = add nsw i64 %22, 1, !dbg !1010
  store i64 %add, ptr %cp, align 8, !dbg !1011, !tbaa !948
  br label %for.cond, !dbg !1012

for.cond:                                         ; preds = %for.inc, %cond.end
  %23 = load i64, ptr %cp, align 8, !dbg !1013, !tbaa !948
  %24 = load i64, ptr %pos.addr, align 8, !dbg !1015, !tbaa !948
  %cmp7 = icmp slt i64 %23, %24, !dbg !1016
  br i1 %cmp7, label %for.body, label %for.end, !dbg !1017

for.body:                                         ; preds = %for.cond
  %25 = load i64, ptr %cp, align 8, !dbg !1018, !tbaa !948
  %cmp9 = icmp slt i64 %25, 1000000000, !dbg !1020
  %26 = zext i1 %cmp9 to i64, !dbg !1018
  %cond11 = select i1 %cmp9, i32 10, i32 20, !dbg !1018
  store i32 %cond11, ptr %interval, align 4, !dbg !1021, !tbaa !946
  %27 = load i64, ptr %cp, align 8, !dbg !1022, !tbaa !948
  %28 = load i32, ptr %interval, align 4, !dbg !1024, !tbaa !946
  %conv12 = sext i32 %28 to i64, !dbg !1024
  %rem = srem i64 %27, %conv12, !dbg !1025
  %cmp13 = icmp eq i64 %rem, 0, !dbg !1026
  br i1 %cmp13, label %land.lhs.true15, label %if.end24, !dbg !1027

land.lhs.true15:                                  ; preds = %for.body
  %29 = load ptr, ptr %tv, align 8, !dbg !1028, !tbaa !563
  %mcol16 = getelementptr inbounds %struct.AbstractTview, ptr %29, i32 0, i32 1, !dbg !1029
  %30 = load i32, ptr %mcol16, align 4, !dbg !1029, !tbaa !591
  %31 = load ptr, ptr %tv, align 8, !dbg !1030, !tbaa !563
  %ccol17 = getelementptr inbounds %struct.AbstractTview, ptr %31, i32 0, i32 12, !dbg !1031
  %32 = load i32, ptr %ccol17, align 4, !dbg !1031, !tbaa !979
  %sub18 = sub nsw i32 %30, %32, !dbg !1032
  %cmp19 = icmp sge i32 %sub18, 10, !dbg !1033
  br i1 %cmp19, label %if.then21, label %if.end24, !dbg !1034

if.then21:                                        ; preds = %land.lhs.true15
  %33 = load ptr, ptr %tv, align 8, !dbg !1035, !tbaa !563
  %my_mvprintw = getelementptr inbounds %struct.AbstractTview, ptr %33, i32 0, i32 24, !dbg !1036
  %34 = load ptr, ptr %my_mvprintw, align 8, !dbg !1036, !tbaa !1037
  %35 = load ptr, ptr %tv, align 8, !dbg !1038, !tbaa !563
  %36 = load ptr, ptr %tv, align 8, !dbg !1039, !tbaa !563
  %ccol22 = getelementptr inbounds %struct.AbstractTview, ptr %36, i32 0, i32 12, !dbg !1040
  %37 = load i32, ptr %ccol22, align 4, !dbg !1040, !tbaa !979
  %38 = load i64, ptr %cp, align 8, !dbg !1041, !tbaa !948
  %add23 = add nsw i64 %38, 1, !dbg !1042
  call void (ptr, i32, i32, ptr, ...) %34(ptr noundef %35, i32 noundef 0, i32 noundef %37, ptr noundef @.str.10, i64 noundef %add23), !dbg !1035
  br label %if.end24, !dbg !1035

if.end24:                                         ; preds = %if.then21, %land.lhs.true15, %for.body
  %39 = load ptr, ptr %tv, align 8, !dbg !1043, !tbaa !563
  %ref25 = getelementptr inbounds %struct.AbstractTview, ptr %39, i32 0, i32 21, !dbg !1044
  %40 = load ptr, ptr %ref25, align 8, !dbg !1044, !tbaa !987
  %tobool26 = icmp ne ptr %40, null, !dbg !1043
  br i1 %tobool26, label %cond.true27, label %cond.false33, !dbg !1043

cond.true27:                                      ; preds = %if.end24
  %41 = load ptr, ptr %tv, align 8, !dbg !1045, !tbaa !563
  %ref28 = getelementptr inbounds %struct.AbstractTview, ptr %41, i32 0, i32 21, !dbg !1046
  %42 = load ptr, ptr %ref28, align 8, !dbg !1046, !tbaa !987
  %43 = load i64, ptr %cp, align 8, !dbg !1047, !tbaa !948
  %44 = load ptr, ptr %tv, align 8, !dbg !1048, !tbaa !563
  %left_pos29 = getelementptr inbounds %struct.AbstractTview, ptr %44, i32 0, i32 8, !dbg !1049
  %45 = load i64, ptr %left_pos29, align 8, !dbg !1049, !tbaa !974
  %sub30 = sub nsw i64 %43, %45, !dbg !1050
  %arrayidx31 = getelementptr inbounds i8, ptr %42, i64 %sub30, !dbg !1045
  %46 = load i8, ptr %arrayidx31, align 1, !dbg !1045, !tbaa !1004
  %conv32 = sext i8 %46 to i32, !dbg !1045
  br label %cond.end34, !dbg !1043

cond.false33:                                     ; preds = %if.end24
  br label %cond.end34, !dbg !1043

cond.end34:                                       ; preds = %cond.false33, %cond.true27
  %cond35 = phi i32 [ %conv32, %cond.true27 ], [ 78, %cond.false33 ], !dbg !1043
  store i32 %cond35, ptr %c, align 4, !dbg !1051, !tbaa !946
  %47 = load ptr, ptr %tv, align 8, !dbg !1052, !tbaa !563
  %my_mvaddch = getelementptr inbounds %struct.AbstractTview, ptr %47, i32 0, i32 25, !dbg !1053
  %48 = load ptr, ptr %my_mvaddch, align 8, !dbg !1053, !tbaa !1054
  %49 = load ptr, ptr %tv, align 8, !dbg !1055, !tbaa !563
  %50 = load ptr, ptr %tv, align 8, !dbg !1056, !tbaa !563
  %ccol36 = getelementptr inbounds %struct.AbstractTview, ptr %50, i32 0, i32 12, !dbg !1057
  %51 = load i32, ptr %ccol36, align 4, !dbg !1058, !tbaa !979
  %inc = add nsw i32 %51, 1, !dbg !1058
  store i32 %inc, ptr %ccol36, align 4, !dbg !1058, !tbaa !979
  %52 = load i32, ptr %c, align 4, !dbg !1059, !tbaa !946
  call void %48(ptr noundef %49, i32 noundef 1, i32 noundef %51, i32 noundef %52), !dbg !1052
  br label %for.inc, !dbg !1060

for.inc:                                          ; preds = %cond.end34
  %53 = load i64, ptr %cp, align 8, !dbg !1061, !tbaa !948
  %inc37 = add nsw i64 %53, 1, !dbg !1061
  store i64 %inc37, ptr %cp, align 8, !dbg !1061, !tbaa !948
  br label %for.cond, !dbg !1062, !llvm.loop !1063

for.end:                                          ; preds = %for.cond
  %54 = load i64, ptr %pos.addr, align 8, !dbg !1066, !tbaa !948
  %cmp38 = icmp slt i64 %54, 1000000000, !dbg !1067
  %55 = zext i1 %cmp38 to i64, !dbg !1066
  %cond40 = select i1 %cmp38, i32 10, i32 20, !dbg !1066
  store i32 %cond40, ptr %interval, align 4, !dbg !1068, !tbaa !946
  %56 = load i64, ptr %pos.addr, align 8, !dbg !1069, !tbaa !948
  %57 = load i32, ptr %interval, align 4, !dbg !1071, !tbaa !946
  %conv41 = sext i32 %57 to i64, !dbg !1071
  %rem42 = srem i64 %56, %conv41, !dbg !1072
  %cmp43 = icmp eq i64 %rem42, 0, !dbg !1073
  br i1 %cmp43, label %land.lhs.true45, label %if.end55, !dbg !1074

land.lhs.true45:                                  ; preds = %for.end
  %58 = load ptr, ptr %tv, align 8, !dbg !1075, !tbaa !563
  %mcol46 = getelementptr inbounds %struct.AbstractTview, ptr %58, i32 0, i32 1, !dbg !1076
  %59 = load i32, ptr %mcol46, align 4, !dbg !1076, !tbaa !591
  %60 = load ptr, ptr %tv, align 8, !dbg !1077, !tbaa !563
  %ccol47 = getelementptr inbounds %struct.AbstractTview, ptr %60, i32 0, i32 12, !dbg !1078
  %61 = load i32, ptr %ccol47, align 4, !dbg !1078, !tbaa !979
  %sub48 = sub nsw i32 %59, %61, !dbg !1079
  %cmp49 = icmp sge i32 %sub48, 10, !dbg !1080
  br i1 %cmp49, label %if.then51, label %if.end55, !dbg !1081

if.then51:                                        ; preds = %land.lhs.true45
  %62 = load ptr, ptr %tv, align 8, !dbg !1082, !tbaa !563
  %my_mvprintw52 = getelementptr inbounds %struct.AbstractTview, ptr %62, i32 0, i32 24, !dbg !1083
  %63 = load ptr, ptr %my_mvprintw52, align 8, !dbg !1083, !tbaa !1037
  %64 = load ptr, ptr %tv, align 8, !dbg !1084, !tbaa !563
  %65 = load ptr, ptr %tv, align 8, !dbg !1085, !tbaa !563
  %ccol53 = getelementptr inbounds %struct.AbstractTview, ptr %65, i32 0, i32 12, !dbg !1086
  %66 = load i32, ptr %ccol53, align 4, !dbg !1086, !tbaa !979
  %67 = load i64, ptr %pos.addr, align 8, !dbg !1087, !tbaa !948
  %add54 = add nsw i64 %67, 1, !dbg !1088
  call void (ptr, i32, i32, ptr, ...) %63(ptr noundef %64, i32 noundef 0, i32 noundef %66, ptr noundef @.str.10, i64 noundef %add54), !dbg !1082
  br label %if.end55, !dbg !1082

if.end55:                                         ; preds = %if.then51, %land.lhs.true45, %for.end
  call void @llvm.lifetime.start.p0(i64 116, ptr %bcr) #17, !dbg !1089
  tail call void @llvm.dbg.declare(metadata ptr %bcr, metadata !818, metadata !DIExpression()), !dbg !1090
  call void @llvm.memset.p0.i64(ptr align 4 %bcr, i8 0, i64 116, i1 false), !dbg !1091
  call void @llvm.lifetime.start.p0(i64 16, ptr %qsum) #17, !dbg !1092
  tail call void @llvm.dbg.declare(metadata ptr %qsum, metadata !832, metadata !DIExpression()), !dbg !1093
  call void @llvm.lifetime.start.p0(i64 4, ptr %a1) #17, !dbg !1092
  tail call void @llvm.dbg.declare(metadata ptr %a1, metadata !834, metadata !DIExpression()), !dbg !1094
  call void @llvm.lifetime.start.p0(i64 4, ptr %a2) #17, !dbg !1092
  tail call void @llvm.dbg.declare(metadata ptr %a2, metadata !835, metadata !DIExpression()), !dbg !1095
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #17, !dbg !1092
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !836, metadata !DIExpression()), !dbg !1096
  call void @llvm.lifetime.start.p0(i64 24, ptr %p) #17, !dbg !1097
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !837, metadata !DIExpression()), !dbg !1098
  call void @llvm.lifetime.start.p0(i64 8, ptr %prior) #17, !dbg !1097
  tail call void @llvm.dbg.declare(metadata ptr %prior, metadata !839, metadata !DIExpression()), !dbg !1099
  store double 3.000000e+01, ptr %prior, align 8, !dbg !1099, !tbaa !1100
  %68 = load i32, ptr %n.addr, align 4, !dbg !1102, !tbaa !946
  %69 = load ptr, ptr %pl.addr, align 8, !dbg !1103, !tbaa !563
  %70 = load i32, ptr %rb, align 4, !dbg !1104, !tbaa !946
  %idxprom = sext i32 %70 to i64, !dbg !1105
  %arrayidx56 = getelementptr inbounds [256 x i8], ptr @seq_nt16_table, i64 0, i64 %idxprom, !dbg !1105
  %71 = load i8, ptr %arrayidx56, align 1, !dbg !1105, !tbaa !1004
  %conv57 = zext i8 %71 to i32, !dbg !1105
  %72 = load ptr, ptr %tv, align 8, !dbg !1106, !tbaa !563
  %bca = getelementptr inbounds %struct.AbstractTview, ptr %72, i32 0, i32 7, !dbg !1107
  %73 = load ptr, ptr %bca, align 8, !dbg !1107, !tbaa !685
  %call58 = call i32 @bcf_call_glfgen(i32 noundef %68, ptr noundef %69, i32 noundef %conv57, ptr noundef %73, ptr noundef %bcr), !dbg !1108
  store i32 0, ptr %i, align 4, !dbg !1109, !tbaa !946
  br label %for.cond59, !dbg !1111

for.cond59:                                       ; preds = %for.inc69, %if.end55
  %74 = load i32, ptr %i, align 4, !dbg !1112, !tbaa !946
  %cmp60 = icmp slt i32 %74, 4, !dbg !1114
  br i1 %cmp60, label %for.body62, label %for.end71, !dbg !1115

for.body62:                                       ; preds = %for.cond59
  %qsum63 = getelementptr inbounds %struct.bcf_callret1_t, ptr %bcr, i32 0, i32 0, !dbg !1116
  %75 = load i32, ptr %i, align 4, !dbg !1117, !tbaa !946
  %idxprom64 = sext i32 %75 to i64, !dbg !1118
  %arrayidx65 = getelementptr inbounds [4 x float], ptr %qsum63, i64 0, i64 %idxprom64, !dbg !1118
  %76 = load float, ptr %arrayidx65, align 4, !dbg !1118, !tbaa !1119
  %conv66 = fptosi float %76 to i32, !dbg !1121
  %shl = shl i32 %conv66, 2, !dbg !1122
  %77 = load i32, ptr %i, align 4, !dbg !1123, !tbaa !946
  %or = or i32 %shl, %77, !dbg !1124
  %78 = load i32, ptr %i, align 4, !dbg !1125, !tbaa !946
  %idxprom67 = sext i32 %78 to i64, !dbg !1126
  %arrayidx68 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 %idxprom67, !dbg !1126
  store i32 %or, ptr %arrayidx68, align 4, !dbg !1127, !tbaa !946
  br label %for.inc69, !dbg !1126

for.inc69:                                        ; preds = %for.body62
  %79 = load i32, ptr %i, align 4, !dbg !1128, !tbaa !946
  %inc70 = add nsw i32 %79, 1, !dbg !1128
  store i32 %inc70, ptr %i, align 4, !dbg !1128, !tbaa !946
  br label %for.cond59, !dbg !1129, !llvm.loop !1130

for.end71:                                        ; preds = %for.cond59
  store i32 1, ptr %i, align 4, !dbg !1132, !tbaa !946
  br label %for.cond72, !dbg !1134

for.cond72:                                       ; preds = %for.inc99, %for.end71
  %80 = load i32, ptr %i, align 4, !dbg !1135, !tbaa !946
  %cmp73 = icmp slt i32 %80, 4, !dbg !1137
  br i1 %cmp73, label %for.body75, label %for.end101, !dbg !1138

for.body75:                                       ; preds = %for.cond72
  %81 = load i32, ptr %i, align 4, !dbg !1139, !tbaa !946
  store i32 %81, ptr %j, align 4, !dbg !1141, !tbaa !946
  br label %for.cond76, !dbg !1142

for.cond76:                                       ; preds = %for.inc97, %for.body75
  %82 = load i32, ptr %j, align 4, !dbg !1143, !tbaa !946
  %cmp77 = icmp sgt i32 %82, 0, !dbg !1145
  br i1 %cmp77, label %land.rhs, label %land.end, !dbg !1146

land.rhs:                                         ; preds = %for.cond76
  %83 = load i32, ptr %j, align 4, !dbg !1147, !tbaa !946
  %idxprom79 = sext i32 %83 to i64, !dbg !1148
  %arrayidx80 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 %idxprom79, !dbg !1148
  %84 = load i32, ptr %arrayidx80, align 4, !dbg !1148, !tbaa !946
  %85 = load i32, ptr %j, align 4, !dbg !1149, !tbaa !946
  %sub81 = sub nsw i32 %85, 1, !dbg !1150
  %idxprom82 = sext i32 %sub81 to i64, !dbg !1151
  %arrayidx83 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 %idxprom82, !dbg !1151
  %86 = load i32, ptr %arrayidx83, align 4, !dbg !1151, !tbaa !946
  %cmp84 = icmp sgt i32 %84, %86, !dbg !1152
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond76
  %87 = phi i1 [ false, %for.cond76 ], [ %cmp84, %land.rhs ], !dbg !1153
  br i1 %87, label %for.body86, label %for.end98, !dbg !1154

for.body86:                                       ; preds = %land.end
  %88 = load i32, ptr %j, align 4, !dbg !1155, !tbaa !946
  %idxprom87 = sext i32 %88 to i64, !dbg !1156
  %arrayidx88 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 %idxprom87, !dbg !1156
  %89 = load i32, ptr %arrayidx88, align 4, !dbg !1156, !tbaa !946
  store i32 %89, ptr %tmp, align 4, !dbg !1157, !tbaa !946
  %90 = load i32, ptr %j, align 4, !dbg !1158, !tbaa !946
  %sub89 = sub nsw i32 %90, 1, !dbg !1159
  %idxprom90 = sext i32 %sub89 to i64, !dbg !1160
  %arrayidx91 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 %idxprom90, !dbg !1160
  %91 = load i32, ptr %arrayidx91, align 4, !dbg !1160, !tbaa !946
  %92 = load i32, ptr %j, align 4, !dbg !1161, !tbaa !946
  %idxprom92 = sext i32 %92 to i64, !dbg !1162
  %arrayidx93 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 %idxprom92, !dbg !1162
  store i32 %91, ptr %arrayidx93, align 4, !dbg !1163, !tbaa !946
  %93 = load i32, ptr %tmp, align 4, !dbg !1164, !tbaa !946
  %94 = load i32, ptr %j, align 4, !dbg !1165, !tbaa !946
  %sub94 = sub nsw i32 %94, 1, !dbg !1166
  %idxprom95 = sext i32 %sub94 to i64, !dbg !1167
  %arrayidx96 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 %idxprom95, !dbg !1167
  store i32 %93, ptr %arrayidx96, align 4, !dbg !1168, !tbaa !946
  br label %for.inc97, !dbg !1169

for.inc97:                                        ; preds = %for.body86
  %95 = load i32, ptr %j, align 4, !dbg !1170, !tbaa !946
  %dec = add nsw i32 %95, -1, !dbg !1170
  store i32 %dec, ptr %j, align 4, !dbg !1170, !tbaa !946
  br label %for.cond76, !dbg !1171, !llvm.loop !1172

for.end98:                                        ; preds = %land.end
  br label %for.inc99, !dbg !1173

for.inc99:                                        ; preds = %for.end98
  %96 = load i32, ptr %i, align 4, !dbg !1174, !tbaa !946
  %inc100 = add nsw i32 %96, 1, !dbg !1174
  store i32 %inc100, ptr %i, align 4, !dbg !1174, !tbaa !946
  br label %for.cond72, !dbg !1175, !llvm.loop !1176

for.end101:                                       ; preds = %for.cond72
  %arrayidx102 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 0, !dbg !1178
  %97 = load i32, ptr %arrayidx102, align 16, !dbg !1178, !tbaa !946
  %and = and i32 %97, 3, !dbg !1179
  store i32 %and, ptr %a1, align 4, !dbg !1180, !tbaa !946
  %arrayidx103 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 1, !dbg !1181
  %98 = load i32, ptr %arrayidx103, align 4, !dbg !1181, !tbaa !946
  %and104 = and i32 %98, 3, !dbg !1182
  store i32 %and104, ptr %a2, align 4, !dbg !1183, !tbaa !946
  %p105 = getelementptr inbounds %struct.bcf_callret1_t, ptr %bcr, i32 0, i32 1, !dbg !1184
  %99 = load i32, ptr %a1, align 4, !dbg !1185, !tbaa !946
  %mul = mul nsw i32 %99, 5, !dbg !1186
  %100 = load i32, ptr %a1, align 4, !dbg !1187, !tbaa !946
  %add106 = add nsw i32 %mul, %100, !dbg !1188
  %idxprom107 = sext i32 %add106 to i64, !dbg !1189
  %arrayidx108 = getelementptr inbounds [25 x float], ptr %p105, i64 0, i64 %idxprom107, !dbg !1189
  %101 = load float, ptr %arrayidx108, align 4, !dbg !1189, !tbaa !1119
  %conv109 = fpext float %101 to double, !dbg !1189
  %arrayidx110 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1190
  store double %conv109, ptr %arrayidx110, align 16, !dbg !1191, !tbaa !1100
  %p111 = getelementptr inbounds %struct.bcf_callret1_t, ptr %bcr, i32 0, i32 1, !dbg !1192
  %102 = load i32, ptr %a1, align 4, !dbg !1193, !tbaa !946
  %mul112 = mul nsw i32 %102, 5, !dbg !1194
  %103 = load i32, ptr %a2, align 4, !dbg !1195, !tbaa !946
  %add113 = add nsw i32 %mul112, %103, !dbg !1196
  %idxprom114 = sext i32 %add113 to i64, !dbg !1197
  %arrayidx115 = getelementptr inbounds [25 x float], ptr %p111, i64 0, i64 %idxprom114, !dbg !1197
  %104 = load float, ptr %arrayidx115, align 4, !dbg !1197, !tbaa !1119
  %conv116 = fpext float %104 to double, !dbg !1197
  %105 = load double, ptr %prior, align 8, !dbg !1198, !tbaa !1100
  %add117 = fadd double %conv116, %105, !dbg !1199
  %arrayidx118 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1200
  store double %add117, ptr %arrayidx118, align 8, !dbg !1201, !tbaa !1100
  %p119 = getelementptr inbounds %struct.bcf_callret1_t, ptr %bcr, i32 0, i32 1, !dbg !1202
  %106 = load i32, ptr %a2, align 4, !dbg !1203, !tbaa !946
  %mul120 = mul nsw i32 %106, 5, !dbg !1204
  %107 = load i32, ptr %a2, align 4, !dbg !1205, !tbaa !946
  %add121 = add nsw i32 %mul120, %107, !dbg !1206
  %idxprom122 = sext i32 %add121 to i64, !dbg !1207
  %arrayidx123 = getelementptr inbounds [25 x float], ptr %p119, i64 0, i64 %idxprom122, !dbg !1207
  %108 = load float, ptr %arrayidx123, align 4, !dbg !1207, !tbaa !1119
  %conv124 = fpext float %108 to double, !dbg !1207
  %arrayidx125 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1208
  store double %conv124, ptr %arrayidx125, align 16, !dbg !1209, !tbaa !1100
  %109 = load i32, ptr %a1, align 4, !dbg !1210, !tbaa !946
  %idxprom126 = sext i32 %109 to i64, !dbg !1211
  %arrayidx127 = getelementptr inbounds [5 x i8], ptr @.str.11, i64 0, i64 %idxprom126, !dbg !1211
  %110 = load i8, ptr %arrayidx127, align 1, !dbg !1211, !tbaa !1004
  %conv128 = sext i8 %110 to i32, !dbg !1211
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #17, !dbg !1212
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !840, metadata !DIExpression()), !dbg !1212
  %111 = load i32, ptr %rb, align 4, !dbg !1213, !tbaa !946
  %112 = call i1 @llvm.is.constant.i32(i32 %111), !dbg !1213
  br i1 %112, label %if.then129, label %if.else, !dbg !1214

if.then129:                                       ; preds = %for.end101
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c) #17, !dbg !1215
  tail call void @llvm.dbg.declare(metadata ptr %__c, metadata !843, metadata !DIExpression()), !dbg !1215
  %113 = load i32, ptr %rb, align 4, !dbg !1215, !tbaa !946
  store i32 %113, ptr %__c, align 4, !dbg !1215, !tbaa !946
  %114 = load i32, ptr %__c, align 4, !dbg !1215, !tbaa !946
  %cmp130 = icmp slt i32 %114, -128, !dbg !1215
  br i1 %cmp130, label %cond.true135, label %lor.lhs.false132, !dbg !1215

lor.lhs.false132:                                 ; preds = %if.then129
  %115 = load i32, ptr %__c, align 4, !dbg !1215, !tbaa !946
  %cmp133 = icmp sgt i32 %115, 255, !dbg !1215
  br i1 %cmp133, label %cond.true135, label %cond.false136, !dbg !1215

cond.true135:                                     ; preds = %lor.lhs.false132, %if.then129
  %116 = load i32, ptr %__c, align 4, !dbg !1215, !tbaa !946
  br label %cond.end140, !dbg !1215

cond.false136:                                    ; preds = %lor.lhs.false132
  %call137 = call ptr @__ctype_toupper_loc() #18, !dbg !1215
  %117 = load ptr, ptr %call137, align 8, !dbg !1215, !tbaa !563
  %118 = load i32, ptr %__c, align 4, !dbg !1215, !tbaa !946
  %idxprom138 = sext i32 %118 to i64, !dbg !1215
  %arrayidx139 = getelementptr inbounds i32, ptr %117, i64 %idxprom138, !dbg !1215
  %119 = load i32, ptr %arrayidx139, align 4, !dbg !1215, !tbaa !946
  br label %cond.end140, !dbg !1215

cond.end140:                                      ; preds = %cond.false136, %cond.true135
  %cond141 = phi i32 [ %116, %cond.true135 ], [ %119, %cond.false136 ], !dbg !1215
  store i32 %cond141, ptr %__res, align 4, !dbg !1215, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #17, !dbg !1213
  br label %if.end143, !dbg !1215

if.else:                                          ; preds = %for.end101
  %120 = load i32, ptr %rb, align 4, !dbg !1213, !tbaa !946
  %call142 = call i32 @toupper(i32 noundef %120) #19, !dbg !1213
  store i32 %call142, ptr %__res, align 4, !dbg !1213, !tbaa !946
  br label %if.end143

if.end143:                                        ; preds = %if.else, %cond.end140
  %121 = load i32, ptr %__res, align 4, !dbg !1212, !tbaa !946
  store i32 %121, ptr %tmp144, align 4, !dbg !1216, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #17, !dbg !1217
  %122 = load i32, ptr %tmp144, align 4, !dbg !1212, !tbaa !946
  %cmp145 = icmp ne i32 %conv128, %122, !dbg !1218
  br i1 %cmp145, label %if.then147, label %if.end151, !dbg !1219

if.then147:                                       ; preds = %if.end143
  %123 = load double, ptr %prior, align 8, !dbg !1220, !tbaa !1100
  %add148 = fadd double %123, 3.000000e+00, !dbg !1221
  %arrayidx149 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1222
  %124 = load double, ptr %arrayidx149, align 16, !dbg !1223, !tbaa !1100
  %add150 = fadd double %124, %add148, !dbg !1223
  store double %add150, ptr %arrayidx149, align 16, !dbg !1223, !tbaa !1100
  br label %if.end151, !dbg !1222

if.end151:                                        ; preds = %if.then147, %if.end143
  %125 = load i32, ptr %a2, align 4, !dbg !1224, !tbaa !946
  %idxprom152 = sext i32 %125 to i64, !dbg !1225
  %arrayidx153 = getelementptr inbounds [5 x i8], ptr @.str.11, i64 0, i64 %idxprom152, !dbg !1225
  %126 = load i8, ptr %arrayidx153, align 1, !dbg !1225, !tbaa !1004
  %conv154 = sext i8 %126 to i32, !dbg !1225
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res155) #17, !dbg !1226
  tail call void @llvm.dbg.declare(metadata ptr %__res155, metadata !848, metadata !DIExpression()), !dbg !1226
  %127 = load i32, ptr %rb, align 4, !dbg !1227, !tbaa !946
  %128 = call i1 @llvm.is.constant.i32(i32 %127), !dbg !1227
  br i1 %128, label %if.then156, label %if.else170, !dbg !1228

if.then156:                                       ; preds = %if.end151
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c157) #17, !dbg !1229
  tail call void @llvm.dbg.declare(metadata ptr %__c157, metadata !851, metadata !DIExpression()), !dbg !1229
  %129 = load i32, ptr %rb, align 4, !dbg !1229, !tbaa !946
  store i32 %129, ptr %__c157, align 4, !dbg !1229, !tbaa !946
  %130 = load i32, ptr %__c157, align 4, !dbg !1229, !tbaa !946
  %cmp158 = icmp slt i32 %130, -128, !dbg !1229
  br i1 %cmp158, label %cond.true163, label %lor.lhs.false160, !dbg !1229

lor.lhs.false160:                                 ; preds = %if.then156
  %131 = load i32, ptr %__c157, align 4, !dbg !1229, !tbaa !946
  %cmp161 = icmp sgt i32 %131, 255, !dbg !1229
  br i1 %cmp161, label %cond.true163, label %cond.false164, !dbg !1229

cond.true163:                                     ; preds = %lor.lhs.false160, %if.then156
  %132 = load i32, ptr %__c157, align 4, !dbg !1229, !tbaa !946
  br label %cond.end168, !dbg !1229

cond.false164:                                    ; preds = %lor.lhs.false160
  %call165 = call ptr @__ctype_toupper_loc() #18, !dbg !1229
  %133 = load ptr, ptr %call165, align 8, !dbg !1229, !tbaa !563
  %134 = load i32, ptr %__c157, align 4, !dbg !1229, !tbaa !946
  %idxprom166 = sext i32 %134 to i64, !dbg !1229
  %arrayidx167 = getelementptr inbounds i32, ptr %133, i64 %idxprom166, !dbg !1229
  %135 = load i32, ptr %arrayidx167, align 4, !dbg !1229, !tbaa !946
  br label %cond.end168, !dbg !1229

cond.end168:                                      ; preds = %cond.false164, %cond.true163
  %cond169 = phi i32 [ %132, %cond.true163 ], [ %135, %cond.false164 ], !dbg !1229
  store i32 %cond169, ptr %__res155, align 4, !dbg !1229, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c157) #17, !dbg !1227
  br label %if.end172, !dbg !1229

if.else170:                                       ; preds = %if.end151
  %136 = load i32, ptr %rb, align 4, !dbg !1227, !tbaa !946
  %call171 = call i32 @toupper(i32 noundef %136) #19, !dbg !1227
  store i32 %call171, ptr %__res155, align 4, !dbg !1227, !tbaa !946
  br label %if.end172

if.end172:                                        ; preds = %if.else170, %cond.end168
  %137 = load i32, ptr %__res155, align 4, !dbg !1226, !tbaa !946
  store i32 %137, ptr %tmp173, align 4, !dbg !1230, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res155) #17, !dbg !1231
  %138 = load i32, ptr %tmp173, align 4, !dbg !1226, !tbaa !946
  %cmp174 = icmp ne i32 %conv154, %138, !dbg !1232
  br i1 %cmp174, label %if.then176, label %if.end180, !dbg !1233

if.then176:                                       ; preds = %if.end172
  %139 = load double, ptr %prior, align 8, !dbg !1234, !tbaa !1100
  %add177 = fadd double %139, 3.000000e+00, !dbg !1235
  %arrayidx178 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1236
  %140 = load double, ptr %arrayidx178, align 16, !dbg !1237, !tbaa !1100
  %add179 = fadd double %140, %add177, !dbg !1237
  store double %add179, ptr %arrayidx178, align 16, !dbg !1237, !tbaa !1100
  br label %if.end180, !dbg !1236

if.end180:                                        ; preds = %if.then176, %if.end172
  %arrayidx181 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1238
  %141 = load double, ptr %arrayidx181, align 16, !dbg !1238, !tbaa !1100
  %arrayidx182 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1240
  %142 = load double, ptr %arrayidx182, align 8, !dbg !1240, !tbaa !1100
  %cmp183 = fcmp olt double %141, %142, !dbg !1241
  br i1 %cmp183, label %land.lhs.true185, label %if.else208, !dbg !1242

land.lhs.true185:                                 ; preds = %if.end180
  %arrayidx186 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1243
  %143 = load double, ptr %arrayidx186, align 16, !dbg !1243, !tbaa !1100
  %arrayidx187 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1244
  %144 = load double, ptr %arrayidx187, align 16, !dbg !1244, !tbaa !1100
  %cmp188 = fcmp olt double %143, %144, !dbg !1245
  br i1 %cmp188, label %if.then190, label %if.else208, !dbg !1246

if.then190:                                       ; preds = %land.lhs.true185
  %145 = load i32, ptr %a1, align 4, !dbg !1247, !tbaa !946
  %shl191 = shl i32 1, %145, !dbg !1248
  %shl192 = shl i32 %shl191, 16, !dbg !1249
  %arrayidx193 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1250
  %146 = load double, ptr %arrayidx193, align 8, !dbg !1250, !tbaa !1100
  %arrayidx194 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1251
  %147 = load double, ptr %arrayidx194, align 16, !dbg !1251, !tbaa !1100
  %cmp195 = fcmp olt double %146, %147, !dbg !1252
  br i1 %cmp195, label %cond.true197, label %cond.false199, !dbg !1250

cond.true197:                                     ; preds = %if.then190
  %arrayidx198 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1253
  %148 = load double, ptr %arrayidx198, align 8, !dbg !1253, !tbaa !1100
  br label %cond.end201, !dbg !1250

cond.false199:                                    ; preds = %if.then190
  %arrayidx200 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1254
  %149 = load double, ptr %arrayidx200, align 16, !dbg !1254, !tbaa !1100
  br label %cond.end201, !dbg !1250

cond.end201:                                      ; preds = %cond.false199, %cond.true197
  %cond202 = phi double [ %148, %cond.true197 ], [ %149, %cond.false199 ], !dbg !1250
  %arrayidx203 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1255
  %150 = load double, ptr %arrayidx203, align 16, !dbg !1255, !tbaa !1100
  %sub204 = fsub double %cond202, %150, !dbg !1256
  %add205 = fadd double %sub204, 4.990000e-01, !dbg !1257
  %conv206 = fptosi double %add205 to i32, !dbg !1258
  %or207 = or i32 %shl192, %conv206, !dbg !1259
  store i32 %or207, ptr %call, align 4, !dbg !1260, !tbaa !946
  br label %if.end257, !dbg !1261

if.else208:                                       ; preds = %land.lhs.true185, %if.end180
  %arrayidx209 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1262
  %151 = load double, ptr %arrayidx209, align 16, !dbg !1262, !tbaa !1100
  %arrayidx210 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1264
  %152 = load double, ptr %arrayidx210, align 8, !dbg !1264, !tbaa !1100
  %cmp211 = fcmp olt double %151, %152, !dbg !1265
  br i1 %cmp211, label %land.lhs.true213, label %if.else236, !dbg !1266

land.lhs.true213:                                 ; preds = %if.else208
  %arrayidx214 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1267
  %153 = load double, ptr %arrayidx214, align 16, !dbg !1267, !tbaa !1100
  %arrayidx215 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1268
  %154 = load double, ptr %arrayidx215, align 16, !dbg !1268, !tbaa !1100
  %cmp216 = fcmp olt double %153, %154, !dbg !1269
  br i1 %cmp216, label %if.then218, label %if.else236, !dbg !1270

if.then218:                                       ; preds = %land.lhs.true213
  %155 = load i32, ptr %a2, align 4, !dbg !1271, !tbaa !946
  %shl219 = shl i32 1, %155, !dbg !1272
  %shl220 = shl i32 %shl219, 16, !dbg !1273
  %arrayidx221 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1274
  %156 = load double, ptr %arrayidx221, align 16, !dbg !1274, !tbaa !1100
  %arrayidx222 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1275
  %157 = load double, ptr %arrayidx222, align 8, !dbg !1275, !tbaa !1100
  %cmp223 = fcmp olt double %156, %157, !dbg !1276
  br i1 %cmp223, label %cond.true225, label %cond.false227, !dbg !1274

cond.true225:                                     ; preds = %if.then218
  %arrayidx226 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1277
  %158 = load double, ptr %arrayidx226, align 16, !dbg !1277, !tbaa !1100
  br label %cond.end229, !dbg !1274

cond.false227:                                    ; preds = %if.then218
  %arrayidx228 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1278
  %159 = load double, ptr %arrayidx228, align 8, !dbg !1278, !tbaa !1100
  br label %cond.end229, !dbg !1274

cond.end229:                                      ; preds = %cond.false227, %cond.true225
  %cond230 = phi double [ %158, %cond.true225 ], [ %159, %cond.false227 ], !dbg !1274
  %arrayidx231 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1279
  %160 = load double, ptr %arrayidx231, align 16, !dbg !1279, !tbaa !1100
  %sub232 = fsub double %cond230, %160, !dbg !1280
  %add233 = fadd double %sub232, 4.990000e-01, !dbg !1281
  %conv234 = fptosi double %add233 to i32, !dbg !1282
  %or235 = or i32 %shl220, %conv234, !dbg !1283
  store i32 %or235, ptr %call, align 4, !dbg !1284, !tbaa !946
  br label %if.end256, !dbg !1285

if.else236:                                       ; preds = %land.lhs.true213, %if.else208
  %161 = load i32, ptr %a1, align 4, !dbg !1286, !tbaa !946
  %shl237 = shl i32 1, %161, !dbg !1287
  %162 = load i32, ptr %a2, align 4, !dbg !1288, !tbaa !946
  %shl238 = shl i32 1, %162, !dbg !1289
  %or239 = or i32 %shl237, %shl238, !dbg !1290
  %shl240 = shl i32 %or239, 16, !dbg !1291
  %arrayidx241 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1292
  %163 = load double, ptr %arrayidx241, align 16, !dbg !1292, !tbaa !1100
  %arrayidx242 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1293
  %164 = load double, ptr %arrayidx242, align 16, !dbg !1293, !tbaa !1100
  %cmp243 = fcmp olt double %163, %164, !dbg !1294
  br i1 %cmp243, label %cond.true245, label %cond.false247, !dbg !1292

cond.true245:                                     ; preds = %if.else236
  %arrayidx246 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1295
  %165 = load double, ptr %arrayidx246, align 16, !dbg !1295, !tbaa !1100
  br label %cond.end249, !dbg !1292

cond.false247:                                    ; preds = %if.else236
  %arrayidx248 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1296
  %166 = load double, ptr %arrayidx248, align 16, !dbg !1296, !tbaa !1100
  br label %cond.end249, !dbg !1292

cond.end249:                                      ; preds = %cond.false247, %cond.true245
  %cond250 = phi double [ %165, %cond.true245 ], [ %166, %cond.false247 ], !dbg !1292
  %arrayidx251 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1297
  %167 = load double, ptr %arrayidx251, align 8, !dbg !1297, !tbaa !1100
  %sub252 = fsub double %cond250, %167, !dbg !1298
  %add253 = fadd double %sub252, 4.990000e-01, !dbg !1299
  %conv254 = fptosi double %add253 to i32, !dbg !1300
  %or255 = or i32 %shl240, %conv254, !dbg !1301
  store i32 %or255, ptr %call, align 4, !dbg !1302, !tbaa !946
  br label %if.end256

if.end256:                                        ; preds = %cond.end249, %cond.end229
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %cond.end201
  call void @llvm.lifetime.end.p0(i64 8, ptr %prior) #17, !dbg !1303
  call void @llvm.lifetime.end.p0(i64 24, ptr %p) #17, !dbg !1303
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #17, !dbg !1303
  call void @llvm.lifetime.end.p0(i64 4, ptr %a2) #17, !dbg !1303
  call void @llvm.lifetime.end.p0(i64 4, ptr %a1) #17, !dbg !1303
  call void @llvm.lifetime.end.p0(i64 16, ptr %qsum) #17, !dbg !1303
  call void @llvm.lifetime.end.p0(i64 116, ptr %bcr) #17, !dbg !1303
  %168 = load ptr, ptr %tv, align 8, !dbg !1304, !tbaa !563
  %my_underline = getelementptr inbounds %struct.AbstractTview, ptr %168, i32 0, i32 32, !dbg !1305
  %169 = load ptr, ptr %my_underline, align 8, !dbg !1305, !tbaa !1306
  %170 = load ptr, ptr %tv, align 8, !dbg !1307, !tbaa !563
  %call258 = call i32 %169(ptr noundef %170), !dbg !1304
  store i32 %call258, ptr %attr, align 4, !dbg !1308, !tbaa !946
  %171 = load i32, ptr %call, align 4, !dbg !1309, !tbaa !946
  %shr = lshr i32 %171, 16, !dbg !1310
  %and259 = and i32 %shr, 15, !dbg !1311
  %idxprom260 = zext i32 %and259 to i64, !dbg !1312
  %arrayidx261 = getelementptr inbounds [17 x i8], ptr @.str.12, i64 0, i64 %idxprom260, !dbg !1312
  %172 = load i8, ptr %arrayidx261, align 1, !dbg !1312, !tbaa !1004
  %conv262 = sext i8 %172 to i32, !dbg !1312
  store i32 %conv262, ptr %c, align 4, !dbg !1313, !tbaa !946
  %173 = load i32, ptr %call, align 4, !dbg !1314, !tbaa !946
  %and263 = and i32 %173, 65535, !dbg !1315
  %div = udiv i32 %and263, 10, !dbg !1316
  %add264 = add i32 %div, 1, !dbg !1317
  store i32 %add264, ptr %i, align 4, !dbg !1318, !tbaa !946
  %174 = load i32, ptr %i, align 4, !dbg !1319, !tbaa !946
  %cmp265 = icmp sgt i32 %174, 4, !dbg !1321
  br i1 %cmp265, label %if.then267, label %if.end268, !dbg !1322

if.then267:                                       ; preds = %if.end257
  store i32 4, ptr %i, align 4, !dbg !1323, !tbaa !946
  br label %if.end268, !dbg !1324

if.end268:                                        ; preds = %if.then267, %if.end257
  %175 = load ptr, ptr %tv, align 8, !dbg !1325, !tbaa !563
  %my_colorpair = getelementptr inbounds %struct.AbstractTview, ptr %175, i32 0, i32 29, !dbg !1326
  %176 = load ptr, ptr %my_colorpair, align 8, !dbg !1326, !tbaa !1327
  %177 = load ptr, ptr %tv, align 8, !dbg !1328, !tbaa !563
  %178 = load i32, ptr %i, align 4, !dbg !1329, !tbaa !946
  %call269 = call i32 %176(ptr noundef %177, i32 noundef %178), !dbg !1325
  %179 = load i32, ptr %attr, align 4, !dbg !1330, !tbaa !946
  %or270 = or i32 %179, %call269, !dbg !1330
  store i32 %or270, ptr %attr, align 4, !dbg !1330, !tbaa !946
  %180 = load i32, ptr %c, align 4, !dbg !1331, !tbaa !946
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res271) #17, !dbg !1332
  tail call void @llvm.dbg.declare(metadata ptr %__res271, metadata !856, metadata !DIExpression()), !dbg !1332
  %181 = load i32, ptr %rb, align 4, !dbg !1333, !tbaa !946
  %182 = call i1 @llvm.is.constant.i32(i32 %181), !dbg !1333
  br i1 %182, label %if.then272, label %if.else286, !dbg !1334

if.then272:                                       ; preds = %if.end268
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c273) #17, !dbg !1335
  tail call void @llvm.dbg.declare(metadata ptr %__c273, metadata !859, metadata !DIExpression()), !dbg !1335
  %183 = load i32, ptr %rb, align 4, !dbg !1335, !tbaa !946
  store i32 %183, ptr %__c273, align 4, !dbg !1335, !tbaa !946
  %184 = load i32, ptr %__c273, align 4, !dbg !1335, !tbaa !946
  %cmp274 = icmp slt i32 %184, -128, !dbg !1335
  br i1 %cmp274, label %cond.true279, label %lor.lhs.false276, !dbg !1335

lor.lhs.false276:                                 ; preds = %if.then272
  %185 = load i32, ptr %__c273, align 4, !dbg !1335, !tbaa !946
  %cmp277 = icmp sgt i32 %185, 255, !dbg !1335
  br i1 %cmp277, label %cond.true279, label %cond.false280, !dbg !1335

cond.true279:                                     ; preds = %lor.lhs.false276, %if.then272
  %186 = load i32, ptr %__c273, align 4, !dbg !1335, !tbaa !946
  br label %cond.end284, !dbg !1335

cond.false280:                                    ; preds = %lor.lhs.false276
  %call281 = call ptr @__ctype_toupper_loc() #18, !dbg !1335
  %187 = load ptr, ptr %call281, align 8, !dbg !1335, !tbaa !563
  %188 = load i32, ptr %__c273, align 4, !dbg !1335, !tbaa !946
  %idxprom282 = sext i32 %188 to i64, !dbg !1335
  %arrayidx283 = getelementptr inbounds i32, ptr %187, i64 %idxprom282, !dbg !1335
  %189 = load i32, ptr %arrayidx283, align 4, !dbg !1335, !tbaa !946
  br label %cond.end284, !dbg !1335

cond.end284:                                      ; preds = %cond.false280, %cond.true279
  %cond285 = phi i32 [ %186, %cond.true279 ], [ %189, %cond.false280 ], !dbg !1335
  store i32 %cond285, ptr %__res271, align 4, !dbg !1335, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c273) #17, !dbg !1333
  br label %if.end288, !dbg !1335

if.else286:                                       ; preds = %if.end268
  %190 = load i32, ptr %rb, align 4, !dbg !1333, !tbaa !946
  %call287 = call i32 @toupper(i32 noundef %190) #19, !dbg !1333
  store i32 %call287, ptr %__res271, align 4, !dbg !1333, !tbaa !946
  br label %if.end288

if.end288:                                        ; preds = %if.else286, %cond.end284
  %191 = load i32, ptr %__res271, align 4, !dbg !1332, !tbaa !946
  store i32 %191, ptr %tmp289, align 4, !dbg !1336, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res271) #17, !dbg !1337
  %192 = load i32, ptr %tmp289, align 4, !dbg !1332, !tbaa !946
  %cmp290 = icmp eq i32 %180, %192, !dbg !1338
  br i1 %cmp290, label %if.then292, label %if.end293, !dbg !1339

if.then292:                                       ; preds = %if.end288
  store i32 46, ptr %c, align 4, !dbg !1340, !tbaa !946
  br label %if.end293, !dbg !1341

if.end293:                                        ; preds = %if.then292, %if.end288
  %193 = load ptr, ptr %tv, align 8, !dbg !1342, !tbaa !563
  %my_attron = getelementptr inbounds %struct.AbstractTview, ptr %193, i32 0, i32 26, !dbg !1343
  %194 = load ptr, ptr %my_attron, align 8, !dbg !1343, !tbaa !1344
  %195 = load ptr, ptr %tv, align 8, !dbg !1345, !tbaa !563
  %196 = load i32, ptr %attr, align 4, !dbg !1346, !tbaa !946
  call void %194(ptr noundef %195, i32 noundef %196), !dbg !1342
  %197 = load ptr, ptr %tv, align 8, !dbg !1347, !tbaa !563
  %my_mvaddch294 = getelementptr inbounds %struct.AbstractTview, ptr %197, i32 0, i32 25, !dbg !1348
  %198 = load ptr, ptr %my_mvaddch294, align 8, !dbg !1348, !tbaa !1054
  %199 = load ptr, ptr %tv, align 8, !dbg !1349, !tbaa !563
  %200 = load ptr, ptr %tv, align 8, !dbg !1350, !tbaa !563
  %ccol295 = getelementptr inbounds %struct.AbstractTview, ptr %200, i32 0, i32 12, !dbg !1351
  %201 = load i32, ptr %ccol295, align 4, !dbg !1351, !tbaa !979
  %202 = load i32, ptr %c, align 4, !dbg !1352, !tbaa !946
  call void %198(ptr noundef %199, i32 noundef 2, i32 noundef %201, i32 noundef %202), !dbg !1347
  %203 = load ptr, ptr %tv, align 8, !dbg !1353, !tbaa !563
  %my_attroff = getelementptr inbounds %struct.AbstractTview, ptr %203, i32 0, i32 27, !dbg !1354
  %204 = load ptr, ptr %my_attroff, align 8, !dbg !1354, !tbaa !1355
  %205 = load ptr, ptr %tv, align 8, !dbg !1356, !tbaa !563
  %206 = load i32, ptr %attr, align 4, !dbg !1357, !tbaa !946
  call void %204(ptr noundef %205, i32 noundef %206), !dbg !1353
  %207 = load ptr, ptr %tv, align 8, !dbg !1358, !tbaa !563
  %ins = getelementptr inbounds %struct.AbstractTview, ptr %207, i32 0, i32 17, !dbg !1359
  %208 = load i32, ptr %ins, align 8, !dbg !1359, !tbaa !689
  %tobool296 = icmp ne i32 %208, 0, !dbg !1358
  br i1 %tobool296, label %if.then297, label %if.end315, !dbg !1360

if.then297:                                       ; preds = %if.end293
  store i32 0, ptr %i, align 4, !dbg !1361, !tbaa !946
  br label %for.cond298, !dbg !1362

for.cond298:                                      ; preds = %for.inc312, %if.then297
  %209 = load i32, ptr %i, align 4, !dbg !1363, !tbaa !946
  %210 = load i32, ptr %n.addr, align 4, !dbg !1364, !tbaa !946
  %cmp299 = icmp slt i32 %209, %210, !dbg !1365
  br i1 %cmp299, label %for.body301, label %for.end314, !dbg !1366

for.body301:                                      ; preds = %for.cond298
  call void @llvm.lifetime.start.p0(i64 8, ptr %p302) #17, !dbg !1367
  tail call void @llvm.dbg.declare(metadata ptr %p302, metadata !864, metadata !DIExpression()), !dbg !1368
  %211 = load ptr, ptr %pl.addr, align 8, !dbg !1369, !tbaa !563
  %212 = load i32, ptr %i, align 4, !dbg !1370, !tbaa !946
  %idx.ext = sext i32 %212 to i64, !dbg !1371
  %add.ptr = getelementptr inbounds %struct.bam_pileup1_t, ptr %211, i64 %idx.ext, !dbg !1371
  store ptr %add.ptr, ptr %p302, align 8, !dbg !1368, !tbaa !563
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #17, !dbg !1372
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !870, metadata !DIExpression()), !dbg !1373
  %213 = load ptr, ptr %p302, align 8, !dbg !1374, !tbaa !563
  %call303 = call i32 @bam_plp_insertion(ptr noundef %213, ptr noundef %ks, ptr noundef null), !dbg !1375
  store i32 %call303, ptr %len, align 4, !dbg !1373, !tbaa !946
  %214 = load i32, ptr %len, align 4, !dbg !1376, !tbaa !946
  %cmp304 = icmp slt i32 %214, 0, !dbg !1378
  br i1 %cmp304, label %if.then306, label %if.end307, !dbg !1379

if.then306:                                       ; preds = %for.body301
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str.4, ptr noundef @.str.13), !dbg !1380
  call void @exit(i32 noundef 1) #16, !dbg !1382
  unreachable, !dbg !1382

if.end307:                                        ; preds = %for.body301
  %215 = load i32, ptr %max_ins, align 4, !dbg !1383, !tbaa !946
  %216 = load i32, ptr %len, align 4, !dbg !1385, !tbaa !946
  %cmp308 = icmp slt i32 %215, %216, !dbg !1386
  br i1 %cmp308, label %if.then310, label %if.end311, !dbg !1387

if.then310:                                       ; preds = %if.end307
  %217 = load i32, ptr %len, align 4, !dbg !1388, !tbaa !946
  store i32 %217, ptr %max_ins, align 4, !dbg !1389, !tbaa !946
  br label %if.end311, !dbg !1390

if.end311:                                        ; preds = %if.then310, %if.end307
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #17, !dbg !1391
  call void @llvm.lifetime.end.p0(i64 8, ptr %p302) #17, !dbg !1391
  br label %for.inc312, !dbg !1392

for.inc312:                                       ; preds = %if.end311
  %218 = load i32, ptr %i, align 4, !dbg !1393, !tbaa !946
  %inc313 = add nsw i32 %218, 1, !dbg !1393
  store i32 %inc313, ptr %i, align 4, !dbg !1393, !tbaa !946
  br label %for.cond298, !dbg !1394, !llvm.loop !1395

for.end314:                                       ; preds = %for.cond298
  br label %if.end315, !dbg !1397

if.end315:                                        ; preds = %for.end314, %if.end293
  store i32 0, ptr %j, align 4, !dbg !1398, !tbaa !946
  br label %for.cond316, !dbg !1399

for.cond316:                                      ; preds = %for.inc899, %if.end315
  %219 = load i32, ptr %j, align 4, !dbg !1400, !tbaa !946
  %220 = load i32, ptr %max_ins, align 4, !dbg !1401, !tbaa !946
  %cmp317 = icmp sle i32 %219, %220, !dbg !1402
  br i1 %cmp317, label %for.body319, label %for.end901, !dbg !1403

for.body319:                                      ; preds = %for.cond316
  store i32 0, ptr %i, align 4, !dbg !1404, !tbaa !946
  br label %for.cond320, !dbg !1405

for.cond320:                                      ; preds = %for.inc876, %for.body319
  %221 = load i32, ptr %i, align 4, !dbg !1406, !tbaa !946
  %222 = load i32, ptr %n.addr, align 4, !dbg !1407, !tbaa !946
  %cmp321 = icmp slt i32 %221, %222, !dbg !1408
  br i1 %cmp321, label %for.body323, label %for.end878, !dbg !1409

for.body323:                                      ; preds = %for.cond320
  call void @llvm.lifetime.start.p0(i64 8, ptr %p324) #17, !dbg !1410
  tail call void @llvm.dbg.declare(metadata ptr %p324, metadata !871, metadata !DIExpression()), !dbg !1411
  %223 = load ptr, ptr %pl.addr, align 8, !dbg !1412, !tbaa !563
  %224 = load i32, ptr %i, align 4, !dbg !1413, !tbaa !946
  %idx.ext325 = sext i32 %224 to i64, !dbg !1414
  %add.ptr326 = getelementptr inbounds %struct.bam_pileup1_t, ptr %223, i64 %idx.ext325, !dbg !1414
  store ptr %add.ptr326, ptr %p324, align 8, !dbg !1411, !tbaa !563
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #17, !dbg !1415
  tail call void @llvm.dbg.declare(metadata ptr %row, metadata !878, metadata !DIExpression()), !dbg !1416
  %225 = load ptr, ptr %p324, align 8, !dbg !1417, !tbaa !563
  %level = getelementptr inbounds %struct.bam_pileup1_t, ptr %225, i32 0, i32 3, !dbg !1418
  %226 = load i32, ptr %level, align 8, !dbg !1418, !tbaa !1419
  %add327 = add nsw i32 2, %226, !dbg !1421
  %227 = load ptr, ptr %tv, align 8, !dbg !1422, !tbaa !563
  %row_shift = getelementptr inbounds %struct.AbstractTview, ptr %227, i32 0, i32 13, !dbg !1423
  %228 = load i32, ptr %row_shift, align 8, !dbg !1423, !tbaa !1424
  %sub328 = sub nsw i32 %add327, %228, !dbg !1425
  store i32 %sub328, ptr %row, align 4, !dbg !1416, !tbaa !946
  %229 = load i32, ptr %j, align 4, !dbg !1426, !tbaa !946
  %cmp329 = icmp eq i32 %229, 0, !dbg !1427
  br i1 %cmp329, label %if.then331, label %if.else476, !dbg !1428

if.then331:                                       ; preds = %for.body323
  %230 = load ptr, ptr %p324, align 8, !dbg !1429, !tbaa !563
  %is_del = getelementptr inbounds %struct.bam_pileup1_t, ptr %230, i32 0, i32 4, !dbg !1430
  %bf.load = load i32, ptr %is_del, align 4, !dbg !1430
  %bf.clear = and i32 %bf.load, 1, !dbg !1430
  %tobool332 = icmp ne i32 %bf.clear, 0, !dbg !1429
  br i1 %tobool332, label %if.else459, label %if.then333, !dbg !1431

if.then333:                                       ; preds = %if.then331
  %231 = load ptr, ptr %tv, align 8, !dbg !1432, !tbaa !563
  %base_for = getelementptr inbounds %struct.AbstractTview, ptr %231, i32 0, i32 14, !dbg !1433
  %232 = load i32, ptr %base_for, align 4, !dbg !1433, !tbaa !1434
  %cmp334 = icmp eq i32 %232, 1, !dbg !1435
  br i1 %cmp334, label %land.lhs.true336, label %if.else357, !dbg !1436

land.lhs.true336:                                 ; preds = %if.then333
  %233 = load ptr, ptr %p324, align 8, !dbg !1437, !tbaa !563
  %b = getelementptr inbounds %struct.bam_pileup1_t, ptr %233, i32 0, i32 0, !dbg !1438
  %234 = load ptr, ptr %b, align 8, !dbg !1438, !tbaa !1439
  %235 = load ptr, ptr %p324, align 8, !dbg !1440, !tbaa !563
  %qpos = getelementptr inbounds %struct.bam_pileup1_t, ptr %235, i32 0, i32 1, !dbg !1441
  %236 = load i32, ptr %qpos, align 8, !dbg !1441, !tbaa !1442
  %call337 = call signext i8 @bam_aux_getCSi(ptr noundef %234, i32 noundef %236), !dbg !1443
  %conv338 = sext i8 %call337 to i32, !dbg !1443
  store i32 %conv338, ptr %c, align 4, !dbg !1444, !tbaa !946
  %tobool339 = icmp ne i32 %conv338, 0, !dbg !1444
  br i1 %tobool339, label %if.then340, label %if.else357, !dbg !1445

if.then340:                                       ; preds = %land.lhs.true336
  %237 = load ptr, ptr %tv, align 8, !dbg !1446, !tbaa !563
  %is_dot = getelementptr inbounds %struct.AbstractTview, ptr %237, i32 0, i32 16, !dbg !1449
  %238 = load i32, ptr %is_dot, align 4, !dbg !1449, !tbaa !599
  %tobool341 = icmp ne i32 %238, 0, !dbg !1446
  br i1 %tobool341, label %land.lhs.true342, label %if.end356, !dbg !1450

land.lhs.true342:                                 ; preds = %if.then340
  %239 = load ptr, ptr %p324, align 8, !dbg !1451, !tbaa !563
  %b343 = getelementptr inbounds %struct.bam_pileup1_t, ptr %239, i32 0, i32 0, !dbg !1452
  %240 = load ptr, ptr %b343, align 8, !dbg !1452, !tbaa !1439
  %241 = load ptr, ptr %p324, align 8, !dbg !1453, !tbaa !563
  %qpos344 = getelementptr inbounds %struct.bam_pileup1_t, ptr %241, i32 0, i32 1, !dbg !1454
  %242 = load i32, ptr %qpos344, align 8, !dbg !1454, !tbaa !1442
  %call345 = call signext i8 @bam_aux_getCEi(ptr noundef %240, i32 noundef %242), !dbg !1455
  %conv346 = sext i8 %call345 to i32, !dbg !1455
  %cmp347 = icmp eq i32 45, %conv346, !dbg !1456
  br i1 %cmp347, label %if.then349, label %if.end356, !dbg !1457

if.then349:                                       ; preds = %land.lhs.true342
  %243 = load ptr, ptr %p324, align 8, !dbg !1458, !tbaa !563
  %b350 = getelementptr inbounds %struct.bam_pileup1_t, ptr %243, i32 0, i32 0, !dbg !1458
  %244 = load ptr, ptr %b350, align 8, !dbg !1458, !tbaa !1439
  %core = getelementptr inbounds %struct.bam1_t, ptr %244, i32 0, i32 0, !dbg !1458
  %flag = getelementptr inbounds %struct.bam1_core_t, ptr %core, i32 0, i32 5, !dbg !1458
  %245 = load i16, ptr %flag, align 8, !dbg !1458, !tbaa !1459
  %conv351 = zext i16 %245 to i32, !dbg !1458
  %and352 = and i32 %conv351, 16, !dbg !1458
  %cmp353 = icmp ne i32 %and352, 0, !dbg !1458
  %246 = zext i1 %cmp353 to i64, !dbg !1458
  %cond355 = select i1 %cmp353, i32 44, i32 46, !dbg !1458
  store i32 %cond355, ptr %c, align 4, !dbg !1463, !tbaa !946
  br label %if.end356, !dbg !1464

if.end356:                                        ; preds = %if.then349, %land.lhs.true342, %if.then340
  br label %if.end458, !dbg !1465

if.else357:                                       ; preds = %land.lhs.true336, %if.then333
  %247 = load ptr, ptr %tv, align 8, !dbg !1466, !tbaa !563
  %show_name = getelementptr inbounds %struct.AbstractTview, ptr %247, i32 0, i32 19, !dbg !1467
  %248 = load i32, ptr %show_name, align 8, !dbg !1467, !tbaa !1468
  %tobool358 = icmp ne i32 %248, 0, !dbg !1466
  br i1 %tobool358, label %if.then359, label %if.else377, !dbg !1469

if.then359:                                       ; preds = %if.else357
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #17, !dbg !1470
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !879, metadata !DIExpression()), !dbg !1471
  %249 = load ptr, ptr %p324, align 8, !dbg !1472, !tbaa !563
  %b360 = getelementptr inbounds %struct.bam_pileup1_t, ptr %249, i32 0, i32 0, !dbg !1472
  %250 = load ptr, ptr %b360, align 8, !dbg !1472, !tbaa !1439
  %data361 = getelementptr inbounds %struct.bam1_t, ptr %250, i32 0, i32 2, !dbg !1472
  %251 = load ptr, ptr %data361, align 8, !dbg !1472, !tbaa !1473
  store ptr %251, ptr %name, align 8, !dbg !1471, !tbaa !563
  %252 = load ptr, ptr %p324, align 8, !dbg !1474, !tbaa !563
  %qpos362 = getelementptr inbounds %struct.bam_pileup1_t, ptr %252, i32 0, i32 1, !dbg !1475
  %253 = load i32, ptr %qpos362, align 8, !dbg !1475, !tbaa !1442
  %add363 = add nsw i32 %253, 1, !dbg !1476
  %254 = load ptr, ptr %p324, align 8, !dbg !1477, !tbaa !563
  %b364 = getelementptr inbounds %struct.bam_pileup1_t, ptr %254, i32 0, i32 0, !dbg !1478
  %255 = load ptr, ptr %b364, align 8, !dbg !1478, !tbaa !1439
  %core365 = getelementptr inbounds %struct.bam1_t, ptr %255, i32 0, i32 0, !dbg !1479
  %l_qname = getelementptr inbounds %struct.bam1_core_t, ptr %core365, i32 0, i32 6, !dbg !1480
  %256 = load i16, ptr %l_qname, align 2, !dbg !1480, !tbaa !1481
  %conv366 = zext i16 %256 to i32, !dbg !1477
  %cmp367 = icmp sge i32 %add363, %conv366, !dbg !1482
  br i1 %cmp367, label %cond.true369, label %cond.false370, !dbg !1483

cond.true369:                                     ; preds = %if.then359
  br label %cond.end375, !dbg !1483

cond.false370:                                    ; preds = %if.then359
  %257 = load ptr, ptr %name, align 8, !dbg !1484, !tbaa !563
  %258 = load ptr, ptr %p324, align 8, !dbg !1485, !tbaa !563
  %qpos371 = getelementptr inbounds %struct.bam_pileup1_t, ptr %258, i32 0, i32 1, !dbg !1486
  %259 = load i32, ptr %qpos371, align 8, !dbg !1486, !tbaa !1442
  %idxprom372 = sext i32 %259 to i64, !dbg !1484
  %arrayidx373 = getelementptr inbounds i8, ptr %257, i64 %idxprom372, !dbg !1484
  %260 = load i8, ptr %arrayidx373, align 1, !dbg !1484, !tbaa !1004
  %conv374 = sext i8 %260 to i32, !dbg !1484
  br label %cond.end375, !dbg !1483

cond.end375:                                      ; preds = %cond.false370, %cond.true369
  %cond376 = phi i32 [ 32, %cond.true369 ], [ %conv374, %cond.false370 ], !dbg !1483
  store i32 %cond376, ptr %c, align 4, !dbg !1487, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #17, !dbg !1488
  br label %if.end457, !dbg !1489

if.else377:                                       ; preds = %if.else357
  %261 = load ptr, ptr %p324, align 8, !dbg !1490, !tbaa !563
  %b378 = getelementptr inbounds %struct.bam_pileup1_t, ptr %261, i32 0, i32 0, !dbg !1490
  %262 = load ptr, ptr %b378, align 8, !dbg !1490, !tbaa !1439
  %data379 = getelementptr inbounds %struct.bam1_t, ptr %262, i32 0, i32 2, !dbg !1490
  %263 = load ptr, ptr %data379, align 8, !dbg !1490, !tbaa !1473
  %264 = load ptr, ptr %p324, align 8, !dbg !1490, !tbaa !563
  %b380 = getelementptr inbounds %struct.bam_pileup1_t, ptr %264, i32 0, i32 0, !dbg !1490
  %265 = load ptr, ptr %b380, align 8, !dbg !1490, !tbaa !1439
  %core381 = getelementptr inbounds %struct.bam1_t, ptr %265, i32 0, i32 0, !dbg !1490
  %n_cigar = getelementptr inbounds %struct.bam1_core_t, ptr %core381, i32 0, i32 7, !dbg !1490
  %266 = load i32, ptr %n_cigar, align 4, !dbg !1490, !tbaa !1491
  %shl382 = shl i32 %266, 2, !dbg !1490
  %idx.ext383 = zext i32 %shl382 to i64, !dbg !1490
  %add.ptr384 = getelementptr inbounds i8, ptr %263, i64 %idx.ext383, !dbg !1490
  %267 = load ptr, ptr %p324, align 8, !dbg !1490, !tbaa !563
  %b385 = getelementptr inbounds %struct.bam_pileup1_t, ptr %267, i32 0, i32 0, !dbg !1490
  %268 = load ptr, ptr %b385, align 8, !dbg !1490, !tbaa !1439
  %core386 = getelementptr inbounds %struct.bam1_t, ptr %268, i32 0, i32 0, !dbg !1490
  %l_qname387 = getelementptr inbounds %struct.bam1_core_t, ptr %core386, i32 0, i32 6, !dbg !1490
  %269 = load i16, ptr %l_qname387, align 2, !dbg !1490, !tbaa !1481
  %conv388 = zext i16 %269 to i32, !dbg !1490
  %idx.ext389 = sext i32 %conv388 to i64, !dbg !1490
  %add.ptr390 = getelementptr inbounds i8, ptr %add.ptr384, i64 %idx.ext389, !dbg !1490
  %270 = load ptr, ptr %p324, align 8, !dbg !1490, !tbaa !563
  %qpos391 = getelementptr inbounds %struct.bam_pileup1_t, ptr %270, i32 0, i32 1, !dbg !1490
  %271 = load i32, ptr %qpos391, align 8, !dbg !1490, !tbaa !1442
  %shr392 = ashr i32 %271, 1, !dbg !1490
  %idxprom393 = sext i32 %shr392 to i64, !dbg !1490
  %arrayidx394 = getelementptr inbounds i8, ptr %add.ptr390, i64 %idxprom393, !dbg !1490
  %272 = load i8, ptr %arrayidx394, align 1, !dbg !1490, !tbaa !1004
  %conv395 = zext i8 %272 to i32, !dbg !1490
  %273 = load ptr, ptr %p324, align 8, !dbg !1490, !tbaa !563
  %qpos396 = getelementptr inbounds %struct.bam_pileup1_t, ptr %273, i32 0, i32 1, !dbg !1490
  %274 = load i32, ptr %qpos396, align 8, !dbg !1490, !tbaa !1442
  %not = xor i32 %274, -1, !dbg !1490
  %and397 = and i32 %not, 1, !dbg !1490
  %shl398 = shl i32 %and397, 2, !dbg !1490
  %shr399 = ashr i32 %conv395, %shl398, !dbg !1490
  %and400 = and i32 %shr399, 15, !dbg !1490
  %idxprom401 = sext i32 %and400 to i64, !dbg !1492
  %arrayidx402 = getelementptr inbounds [0 x i8], ptr @seq_nt16_str, i64 0, i64 %idxprom401, !dbg !1492
  %275 = load i8, ptr %arrayidx402, align 1, !dbg !1492, !tbaa !1004
  %conv403 = sext i8 %275 to i32, !dbg !1492
  store i32 %conv403, ptr %c, align 4, !dbg !1493, !tbaa !946
  %276 = load ptr, ptr %tv, align 8, !dbg !1494, !tbaa !563
  %is_dot404 = getelementptr inbounds %struct.AbstractTview, ptr %276, i32 0, i32 16, !dbg !1495
  %277 = load i32, ptr %is_dot404, align 4, !dbg !1495, !tbaa !599
  %tobool405 = icmp ne i32 %277, 0, !dbg !1494
  br i1 %tobool405, label %land.lhs.true406, label %if.end456, !dbg !1496

land.lhs.true406:                                 ; preds = %if.else377
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res407) #17, !dbg !1497
  tail call void @llvm.dbg.declare(metadata ptr %__res407, metadata !888, metadata !DIExpression()), !dbg !1497
  %278 = load i32, ptr %c, align 4, !dbg !1498, !tbaa !946
  %279 = call i1 @llvm.is.constant.i32(i32 %278), !dbg !1498
  br i1 %279, label %if.then408, label %if.else422, !dbg !1499

if.then408:                                       ; preds = %land.lhs.true406
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c409) #17, !dbg !1500
  tail call void @llvm.dbg.declare(metadata ptr %__c409, metadata !892, metadata !DIExpression()), !dbg !1500
  %280 = load i32, ptr %c, align 4, !dbg !1500, !tbaa !946
  store i32 %280, ptr %__c409, align 4, !dbg !1500, !tbaa !946
  %281 = load i32, ptr %__c409, align 4, !dbg !1500, !tbaa !946
  %cmp410 = icmp slt i32 %281, -128, !dbg !1500
  br i1 %cmp410, label %cond.true415, label %lor.lhs.false412, !dbg !1500

lor.lhs.false412:                                 ; preds = %if.then408
  %282 = load i32, ptr %__c409, align 4, !dbg !1500, !tbaa !946
  %cmp413 = icmp sgt i32 %282, 255, !dbg !1500
  br i1 %cmp413, label %cond.true415, label %cond.false416, !dbg !1500

cond.true415:                                     ; preds = %lor.lhs.false412, %if.then408
  %283 = load i32, ptr %__c409, align 4, !dbg !1500, !tbaa !946
  br label %cond.end420, !dbg !1500

cond.false416:                                    ; preds = %lor.lhs.false412
  %call417 = call ptr @__ctype_toupper_loc() #18, !dbg !1500
  %284 = load ptr, ptr %call417, align 8, !dbg !1500, !tbaa !563
  %285 = load i32, ptr %__c409, align 4, !dbg !1500, !tbaa !946
  %idxprom418 = sext i32 %285 to i64, !dbg !1500
  %arrayidx419 = getelementptr inbounds i32, ptr %284, i64 %idxprom418, !dbg !1500
  %286 = load i32, ptr %arrayidx419, align 4, !dbg !1500, !tbaa !946
  br label %cond.end420, !dbg !1500

cond.end420:                                      ; preds = %cond.false416, %cond.true415
  %cond421 = phi i32 [ %283, %cond.true415 ], [ %286, %cond.false416 ], !dbg !1500
  store i32 %cond421, ptr %__res407, align 4, !dbg !1500, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c409) #17, !dbg !1498
  br label %if.end424, !dbg !1500

if.else422:                                       ; preds = %land.lhs.true406
  %287 = load i32, ptr %c, align 4, !dbg !1498, !tbaa !946
  %call423 = call i32 @toupper(i32 noundef %287) #19, !dbg !1498
  store i32 %call423, ptr %__res407, align 4, !dbg !1498, !tbaa !946
  br label %if.end424

if.end424:                                        ; preds = %if.else422, %cond.end420
  %288 = load i32, ptr %__res407, align 4, !dbg !1497, !tbaa !946
  store i32 %288, ptr %tmp425, align 4, !dbg !1501, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res407) #17, !dbg !1502
  %289 = load i32, ptr %tmp425, align 4, !dbg !1497, !tbaa !946
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res426) #17, !dbg !1503
  tail call void @llvm.dbg.declare(metadata ptr %__res426, metadata !897, metadata !DIExpression()), !dbg !1503
  %290 = load i32, ptr %rb, align 4, !dbg !1504, !tbaa !946
  %291 = call i1 @llvm.is.constant.i32(i32 %290), !dbg !1504
  br i1 %291, label %if.then427, label %if.else441, !dbg !1505

if.then427:                                       ; preds = %if.end424
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c428) #17, !dbg !1506
  tail call void @llvm.dbg.declare(metadata ptr %__c428, metadata !899, metadata !DIExpression()), !dbg !1506
  %292 = load i32, ptr %rb, align 4, !dbg !1506, !tbaa !946
  store i32 %292, ptr %__c428, align 4, !dbg !1506, !tbaa !946
  %293 = load i32, ptr %__c428, align 4, !dbg !1506, !tbaa !946
  %cmp429 = icmp slt i32 %293, -128, !dbg !1506
  br i1 %cmp429, label %cond.true434, label %lor.lhs.false431, !dbg !1506

lor.lhs.false431:                                 ; preds = %if.then427
  %294 = load i32, ptr %__c428, align 4, !dbg !1506, !tbaa !946
  %cmp432 = icmp sgt i32 %294, 255, !dbg !1506
  br i1 %cmp432, label %cond.true434, label %cond.false435, !dbg !1506

cond.true434:                                     ; preds = %lor.lhs.false431, %if.then427
  %295 = load i32, ptr %__c428, align 4, !dbg !1506, !tbaa !946
  br label %cond.end439, !dbg !1506

cond.false435:                                    ; preds = %lor.lhs.false431
  %call436 = call ptr @__ctype_toupper_loc() #18, !dbg !1506
  %296 = load ptr, ptr %call436, align 8, !dbg !1506, !tbaa !563
  %297 = load i32, ptr %__c428, align 4, !dbg !1506, !tbaa !946
  %idxprom437 = sext i32 %297 to i64, !dbg !1506
  %arrayidx438 = getelementptr inbounds i32, ptr %296, i64 %idxprom437, !dbg !1506
  %298 = load i32, ptr %arrayidx438, align 4, !dbg !1506, !tbaa !946
  br label %cond.end439, !dbg !1506

cond.end439:                                      ; preds = %cond.false435, %cond.true434
  %cond440 = phi i32 [ %295, %cond.true434 ], [ %298, %cond.false435 ], !dbg !1506
  store i32 %cond440, ptr %__res426, align 4, !dbg !1506, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c428) #17, !dbg !1504
  br label %if.end443, !dbg !1506

if.else441:                                       ; preds = %if.end424
  %299 = load i32, ptr %rb, align 4, !dbg !1504, !tbaa !946
  %call442 = call i32 @toupper(i32 noundef %299) #19, !dbg !1504
  store i32 %call442, ptr %__res426, align 4, !dbg !1504, !tbaa !946
  br label %if.end443

if.end443:                                        ; preds = %if.else441, %cond.end439
  %300 = load i32, ptr %__res426, align 4, !dbg !1503, !tbaa !946
  store i32 %300, ptr %tmp444, align 4, !dbg !1507, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res426) #17, !dbg !1508
  %301 = load i32, ptr %tmp444, align 4, !dbg !1503, !tbaa !946
  %cmp445 = icmp eq i32 %289, %301, !dbg !1509
  br i1 %cmp445, label %if.then447, label %if.end456, !dbg !1510

if.then447:                                       ; preds = %if.end443
  %302 = load ptr, ptr %p324, align 8, !dbg !1511, !tbaa !563
  %b448 = getelementptr inbounds %struct.bam_pileup1_t, ptr %302, i32 0, i32 0, !dbg !1511
  %303 = load ptr, ptr %b448, align 8, !dbg !1511, !tbaa !1439
  %core449 = getelementptr inbounds %struct.bam1_t, ptr %303, i32 0, i32 0, !dbg !1511
  %flag450 = getelementptr inbounds %struct.bam1_core_t, ptr %core449, i32 0, i32 5, !dbg !1511
  %304 = load i16, ptr %flag450, align 8, !dbg !1511, !tbaa !1459
  %conv451 = zext i16 %304 to i32, !dbg !1511
  %and452 = and i32 %conv451, 16, !dbg !1511
  %cmp453 = icmp ne i32 %and452, 0, !dbg !1511
  %305 = zext i1 %cmp453 to i64, !dbg !1511
  %cond455 = select i1 %cmp453, i32 44, i32 46, !dbg !1511
  store i32 %cond455, ptr %c, align 4, !dbg !1512, !tbaa !946
  br label %if.end456, !dbg !1513

if.end456:                                        ; preds = %if.then447, %if.end443, %if.else377
  br label %if.end457

if.end457:                                        ; preds = %if.end456, %cond.end375
  br label %if.end458

if.end458:                                        ; preds = %if.end457, %if.end356
  br label %if.end475, !dbg !1514

if.else459:                                       ; preds = %if.then331
  %306 = load ptr, ptr %p324, align 8, !dbg !1515, !tbaa !563
  %is_refskip = getelementptr inbounds %struct.bam_pileup1_t, ptr %306, i32 0, i32 4, !dbg !1516
  %bf.load460 = load i32, ptr %is_refskip, align 4, !dbg !1516
  %bf.lshr = lshr i32 %bf.load460, 3, !dbg !1516
  %bf.clear461 = and i32 %bf.lshr, 1, !dbg !1516
  %tobool462 = icmp ne i32 %bf.clear461, 0, !dbg !1515
  br i1 %tobool462, label %cond.true463, label %cond.false472, !dbg !1515

cond.true463:                                     ; preds = %if.else459
  %307 = load ptr, ptr %p324, align 8, !dbg !1517, !tbaa !563
  %b464 = getelementptr inbounds %struct.bam_pileup1_t, ptr %307, i32 0, i32 0, !dbg !1517
  %308 = load ptr, ptr %b464, align 8, !dbg !1517, !tbaa !1439
  %core465 = getelementptr inbounds %struct.bam1_t, ptr %308, i32 0, i32 0, !dbg !1517
  %flag466 = getelementptr inbounds %struct.bam1_core_t, ptr %core465, i32 0, i32 5, !dbg !1517
  %309 = load i16, ptr %flag466, align 8, !dbg !1517, !tbaa !1459
  %conv467 = zext i16 %309 to i32, !dbg !1517
  %and468 = and i32 %conv467, 16, !dbg !1517
  %cmp469 = icmp ne i32 %and468, 0, !dbg !1517
  %310 = zext i1 %cmp469 to i64, !dbg !1517
  %cond471 = select i1 %cmp469, i32 60, i32 62, !dbg !1517
  br label %cond.end473, !dbg !1515

cond.false472:                                    ; preds = %if.else459
  br label %cond.end473, !dbg !1515

cond.end473:                                      ; preds = %cond.false472, %cond.true463
  %cond474 = phi i32 [ %cond471, %cond.true463 ], [ 42, %cond.false472 ], !dbg !1515
  store i32 %cond474, ptr %c, align 4, !dbg !1518, !tbaa !946
  br label %if.end475

if.end475:                                        ; preds = %cond.end473, %if.end458
  br label %if.end605, !dbg !1519

if.else476:                                       ; preds = %for.body323
  call void @llvm.lifetime.start.p0(i64 4, ptr %len477) #17, !dbg !1520
  tail call void @llvm.dbg.declare(metadata ptr %len477, metadata !904, metadata !DIExpression()), !dbg !1521
  %311 = load ptr, ptr %p324, align 8, !dbg !1522, !tbaa !563
  %call478 = call i32 @bam_plp_insertion(ptr noundef %311, ptr noundef %ks, ptr noundef null), !dbg !1523
  store i32 %call478, ptr %len477, align 4, !dbg !1521, !tbaa !946
  %312 = load i32, ptr %len477, align 4, !dbg !1524, !tbaa !946
  %cmp479 = icmp slt i32 %312, 0, !dbg !1526
  br i1 %cmp479, label %if.then481, label %if.end482, !dbg !1527

if.then481:                                       ; preds = %if.else476
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str.4, ptr noundef @.str.13), !dbg !1528
  call void @exit(i32 noundef 1) #16, !dbg !1530
  unreachable, !dbg !1530

if.end482:                                        ; preds = %if.else476
  %313 = load i32, ptr %j, align 4, !dbg !1531, !tbaa !946
  %314 = load i32, ptr %len477, align 4, !dbg !1532, !tbaa !946
  %cmp483 = icmp sgt i32 %313, %314, !dbg !1533
  br i1 %cmp483, label %if.then485, label %if.else486, !dbg !1534

if.then485:                                       ; preds = %if.end482
  store i32 42, ptr %c, align 4, !dbg !1535, !tbaa !946
  br label %if.end604, !dbg !1536

if.else486:                                       ; preds = %if.end482
  %315 = load ptr, ptr %tv, align 8, !dbg !1537, !tbaa !563
  %base_for487 = getelementptr inbounds %struct.AbstractTview, ptr %315, i32 0, i32 14, !dbg !1538
  %316 = load i32, ptr %base_for487, align 4, !dbg !1538, !tbaa !1434
  %cmp488 = icmp eq i32 %316, 0, !dbg !1539
  br i1 %cmp488, label %if.then490, label %if.else577, !dbg !1540

if.then490:                                       ; preds = %if.else486
  %317 = load ptr, ptr %tv, align 8, !dbg !1541, !tbaa !563
  %show_name491 = getelementptr inbounds %struct.AbstractTview, ptr %317, i32 0, i32 19, !dbg !1542
  %318 = load i32, ptr %show_name491, align 8, !dbg !1542, !tbaa !1468
  %tobool492 = icmp ne i32 %318, 0, !dbg !1541
  br i1 %tobool492, label %if.then493, label %if.else515, !dbg !1543

if.then493:                                       ; preds = %if.then490
  call void @llvm.lifetime.start.p0(i64 8, ptr %name494) #17, !dbg !1544
  tail call void @llvm.dbg.declare(metadata ptr %name494, metadata !906, metadata !DIExpression()), !dbg !1545
  %319 = load ptr, ptr %p324, align 8, !dbg !1546, !tbaa !563
  %b495 = getelementptr inbounds %struct.bam_pileup1_t, ptr %319, i32 0, i32 0, !dbg !1546
  %320 = load ptr, ptr %b495, align 8, !dbg !1546, !tbaa !1439
  %data496 = getelementptr inbounds %struct.bam1_t, ptr %320, i32 0, i32 2, !dbg !1546
  %321 = load ptr, ptr %data496, align 8, !dbg !1546, !tbaa !1473
  store ptr %321, ptr %name494, align 8, !dbg !1545, !tbaa !563
  %322 = load ptr, ptr %p324, align 8, !dbg !1547, !tbaa !563
  %qpos497 = getelementptr inbounds %struct.bam_pileup1_t, ptr %322, i32 0, i32 1, !dbg !1548
  %323 = load i32, ptr %qpos497, align 8, !dbg !1548, !tbaa !1442
  %324 = load i32, ptr %j, align 4, !dbg !1549, !tbaa !946
  %add498 = add nsw i32 %323, %324, !dbg !1550
  %add499 = add nsw i32 %add498, 1, !dbg !1551
  %325 = load ptr, ptr %p324, align 8, !dbg !1552, !tbaa !563
  %b500 = getelementptr inbounds %struct.bam_pileup1_t, ptr %325, i32 0, i32 0, !dbg !1553
  %326 = load ptr, ptr %b500, align 8, !dbg !1553, !tbaa !1439
  %core501 = getelementptr inbounds %struct.bam1_t, ptr %326, i32 0, i32 0, !dbg !1554
  %l_qname502 = getelementptr inbounds %struct.bam1_core_t, ptr %core501, i32 0, i32 6, !dbg !1555
  %327 = load i16, ptr %l_qname502, align 2, !dbg !1555, !tbaa !1481
  %conv503 = zext i16 %327 to i32, !dbg !1552
  %cmp504 = icmp sge i32 %add499, %conv503, !dbg !1556
  br i1 %cmp504, label %cond.true506, label %cond.false507, !dbg !1557

cond.true506:                                     ; preds = %if.then493
  br label %cond.end513, !dbg !1557

cond.false507:                                    ; preds = %if.then493
  %328 = load ptr, ptr %name494, align 8, !dbg !1558, !tbaa !563
  %329 = load ptr, ptr %p324, align 8, !dbg !1559, !tbaa !563
  %qpos508 = getelementptr inbounds %struct.bam_pileup1_t, ptr %329, i32 0, i32 1, !dbg !1560
  %330 = load i32, ptr %qpos508, align 8, !dbg !1560, !tbaa !1442
  %331 = load i32, ptr %j, align 4, !dbg !1561, !tbaa !946
  %add509 = add nsw i32 %330, %331, !dbg !1562
  %idxprom510 = sext i32 %add509 to i64, !dbg !1558
  %arrayidx511 = getelementptr inbounds i8, ptr %328, i64 %idxprom510, !dbg !1558
  %332 = load i8, ptr %arrayidx511, align 1, !dbg !1558, !tbaa !1004
  %conv512 = sext i8 %332 to i32, !dbg !1558
  br label %cond.end513, !dbg !1557

cond.end513:                                      ; preds = %cond.false507, %cond.true506
  %cond514 = phi i32 [ 32, %cond.true506 ], [ %conv512, %cond.false507 ], !dbg !1557
  store i32 %cond514, ptr %c, align 4, !dbg !1563, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %name494) #17, !dbg !1564
  br label %if.end576, !dbg !1565

if.else515:                                       ; preds = %if.then490
  %s = getelementptr inbounds %struct.kstring_t, ptr %ks, i32 0, i32 2, !dbg !1566
  %333 = load ptr, ptr %s, align 8, !dbg !1566, !tbaa !1567
  %334 = load i32, ptr %j, align 4, !dbg !1569, !tbaa !946
  %sub516 = sub nsw i32 %334, 1, !dbg !1570
  %idxprom517 = sext i32 %sub516 to i64, !dbg !1571
  %arrayidx518 = getelementptr inbounds i8, ptr %333, i64 %idxprom517, !dbg !1571
  %335 = load i8, ptr %arrayidx518, align 1, !dbg !1571, !tbaa !1004
  %conv519 = sext i8 %335 to i32, !dbg !1571
  store i32 %conv519, ptr %c, align 4, !dbg !1572, !tbaa !946
  %336 = load i32, ptr %j, align 4, !dbg !1573, !tbaa !946
  %cmp520 = icmp eq i32 %336, 0, !dbg !1574
  br i1 %cmp520, label %land.lhs.true522, label %if.end575, !dbg !1575

land.lhs.true522:                                 ; preds = %if.else515
  %337 = load ptr, ptr %tv, align 8, !dbg !1576, !tbaa !563
  %is_dot523 = getelementptr inbounds %struct.AbstractTview, ptr %337, i32 0, i32 16, !dbg !1577
  %338 = load i32, ptr %is_dot523, align 4, !dbg !1577, !tbaa !599
  %tobool524 = icmp ne i32 %338, 0, !dbg !1576
  br i1 %tobool524, label %land.lhs.true525, label %if.end575, !dbg !1578

land.lhs.true525:                                 ; preds = %land.lhs.true522
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res526) #17, !dbg !1579
  tail call void @llvm.dbg.declare(metadata ptr %__res526, metadata !913, metadata !DIExpression()), !dbg !1579
  %339 = load i32, ptr %c, align 4, !dbg !1580, !tbaa !946
  %340 = call i1 @llvm.is.constant.i32(i32 %339), !dbg !1580
  br i1 %340, label %if.then527, label %if.else541, !dbg !1581

if.then527:                                       ; preds = %land.lhs.true525
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c528) #17, !dbg !1582
  tail call void @llvm.dbg.declare(metadata ptr %__c528, metadata !917, metadata !DIExpression()), !dbg !1582
  %341 = load i32, ptr %c, align 4, !dbg !1582, !tbaa !946
  store i32 %341, ptr %__c528, align 4, !dbg !1582, !tbaa !946
  %342 = load i32, ptr %__c528, align 4, !dbg !1582, !tbaa !946
  %cmp529 = icmp slt i32 %342, -128, !dbg !1582
  br i1 %cmp529, label %cond.true534, label %lor.lhs.false531, !dbg !1582

lor.lhs.false531:                                 ; preds = %if.then527
  %343 = load i32, ptr %__c528, align 4, !dbg !1582, !tbaa !946
  %cmp532 = icmp sgt i32 %343, 255, !dbg !1582
  br i1 %cmp532, label %cond.true534, label %cond.false535, !dbg !1582

cond.true534:                                     ; preds = %lor.lhs.false531, %if.then527
  %344 = load i32, ptr %__c528, align 4, !dbg !1582, !tbaa !946
  br label %cond.end539, !dbg !1582

cond.false535:                                    ; preds = %lor.lhs.false531
  %call536 = call ptr @__ctype_toupper_loc() #18, !dbg !1582
  %345 = load ptr, ptr %call536, align 8, !dbg !1582, !tbaa !563
  %346 = load i32, ptr %__c528, align 4, !dbg !1582, !tbaa !946
  %idxprom537 = sext i32 %346 to i64, !dbg !1582
  %arrayidx538 = getelementptr inbounds i32, ptr %345, i64 %idxprom537, !dbg !1582
  %347 = load i32, ptr %arrayidx538, align 4, !dbg !1582, !tbaa !946
  br label %cond.end539, !dbg !1582

cond.end539:                                      ; preds = %cond.false535, %cond.true534
  %cond540 = phi i32 [ %344, %cond.true534 ], [ %347, %cond.false535 ], !dbg !1582
  store i32 %cond540, ptr %__res526, align 4, !dbg !1582, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c528) #17, !dbg !1580
  br label %if.end543, !dbg !1582

if.else541:                                       ; preds = %land.lhs.true525
  %348 = load i32, ptr %c, align 4, !dbg !1580, !tbaa !946
  %call542 = call i32 @toupper(i32 noundef %348) #19, !dbg !1580
  store i32 %call542, ptr %__res526, align 4, !dbg !1580, !tbaa !946
  br label %if.end543

if.end543:                                        ; preds = %if.else541, %cond.end539
  %349 = load i32, ptr %__res526, align 4, !dbg !1579, !tbaa !946
  store i32 %349, ptr %tmp544, align 4, !dbg !1583, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res526) #17, !dbg !1584
  %350 = load i32, ptr %tmp544, align 4, !dbg !1579, !tbaa !946
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res545) #17, !dbg !1585
  tail call void @llvm.dbg.declare(metadata ptr %__res545, metadata !922, metadata !DIExpression()), !dbg !1585
  %351 = load i32, ptr %rb, align 4, !dbg !1586, !tbaa !946
  %352 = call i1 @llvm.is.constant.i32(i32 %351), !dbg !1586
  br i1 %352, label %if.then546, label %if.else560, !dbg !1587

if.then546:                                       ; preds = %if.end543
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c547) #17, !dbg !1588
  tail call void @llvm.dbg.declare(metadata ptr %__c547, metadata !924, metadata !DIExpression()), !dbg !1588
  %353 = load i32, ptr %rb, align 4, !dbg !1588, !tbaa !946
  store i32 %353, ptr %__c547, align 4, !dbg !1588, !tbaa !946
  %354 = load i32, ptr %__c547, align 4, !dbg !1588, !tbaa !946
  %cmp548 = icmp slt i32 %354, -128, !dbg !1588
  br i1 %cmp548, label %cond.true553, label %lor.lhs.false550, !dbg !1588

lor.lhs.false550:                                 ; preds = %if.then546
  %355 = load i32, ptr %__c547, align 4, !dbg !1588, !tbaa !946
  %cmp551 = icmp sgt i32 %355, 255, !dbg !1588
  br i1 %cmp551, label %cond.true553, label %cond.false554, !dbg !1588

cond.true553:                                     ; preds = %lor.lhs.false550, %if.then546
  %356 = load i32, ptr %__c547, align 4, !dbg !1588, !tbaa !946
  br label %cond.end558, !dbg !1588

cond.false554:                                    ; preds = %lor.lhs.false550
  %call555 = call ptr @__ctype_toupper_loc() #18, !dbg !1588
  %357 = load ptr, ptr %call555, align 8, !dbg !1588, !tbaa !563
  %358 = load i32, ptr %__c547, align 4, !dbg !1588, !tbaa !946
  %idxprom556 = sext i32 %358 to i64, !dbg !1588
  %arrayidx557 = getelementptr inbounds i32, ptr %357, i64 %idxprom556, !dbg !1588
  %359 = load i32, ptr %arrayidx557, align 4, !dbg !1588, !tbaa !946
  br label %cond.end558, !dbg !1588

cond.end558:                                      ; preds = %cond.false554, %cond.true553
  %cond559 = phi i32 [ %356, %cond.true553 ], [ %359, %cond.false554 ], !dbg !1588
  store i32 %cond559, ptr %__res545, align 4, !dbg !1588, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c547) #17, !dbg !1586
  br label %if.end562, !dbg !1588

if.else560:                                       ; preds = %if.end543
  %360 = load i32, ptr %rb, align 4, !dbg !1586, !tbaa !946
  %call561 = call i32 @toupper(i32 noundef %360) #19, !dbg !1586
  store i32 %call561, ptr %__res545, align 4, !dbg !1586, !tbaa !946
  br label %if.end562

if.end562:                                        ; preds = %if.else560, %cond.end558
  %361 = load i32, ptr %__res545, align 4, !dbg !1585, !tbaa !946
  store i32 %361, ptr %tmp563, align 4, !dbg !1589, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res545) #17, !dbg !1590
  %362 = load i32, ptr %tmp563, align 4, !dbg !1585, !tbaa !946
  %cmp564 = icmp eq i32 %350, %362, !dbg !1591
  br i1 %cmp564, label %if.then566, label %if.end575, !dbg !1592

if.then566:                                       ; preds = %if.end562
  %363 = load ptr, ptr %p324, align 8, !dbg !1593, !tbaa !563
  %b567 = getelementptr inbounds %struct.bam_pileup1_t, ptr %363, i32 0, i32 0, !dbg !1593
  %364 = load ptr, ptr %b567, align 8, !dbg !1593, !tbaa !1439
  %core568 = getelementptr inbounds %struct.bam1_t, ptr %364, i32 0, i32 0, !dbg !1593
  %flag569 = getelementptr inbounds %struct.bam1_core_t, ptr %core568, i32 0, i32 5, !dbg !1593
  %365 = load i16, ptr %flag569, align 8, !dbg !1593, !tbaa !1459
  %conv570 = zext i16 %365 to i32, !dbg !1593
  %and571 = and i32 %conv570, 16, !dbg !1593
  %cmp572 = icmp ne i32 %and571, 0, !dbg !1593
  %366 = zext i1 %cmp572 to i64, !dbg !1593
  %cond574 = select i1 %cmp572, i32 44, i32 46, !dbg !1593
  store i32 %cond574, ptr %c, align 4, !dbg !1594, !tbaa !946
  br label %if.end575, !dbg !1595

if.end575:                                        ; preds = %if.then566, %if.end562, %land.lhs.true522, %if.else515
  br label %if.end576

if.end576:                                        ; preds = %if.end575, %cond.end513
  br label %if.end603, !dbg !1596

if.else577:                                       ; preds = %if.else486
  %367 = load ptr, ptr %p324, align 8, !dbg !1597, !tbaa !563
  %b578 = getelementptr inbounds %struct.bam_pileup1_t, ptr %367, i32 0, i32 0, !dbg !1599
  %368 = load ptr, ptr %b578, align 8, !dbg !1599, !tbaa !1439
  %369 = load ptr, ptr %p324, align 8, !dbg !1600, !tbaa !563
  %qpos579 = getelementptr inbounds %struct.bam_pileup1_t, ptr %369, i32 0, i32 1, !dbg !1601
  %370 = load i32, ptr %qpos579, align 8, !dbg !1601, !tbaa !1442
  %371 = load i32, ptr %j, align 4, !dbg !1602, !tbaa !946
  %add580 = add nsw i32 %370, %371, !dbg !1603
  %call581 = call signext i8 @bam_aux_getCSi(ptr noundef %368, i32 noundef %add580), !dbg !1604
  %conv582 = sext i8 %call581 to i32, !dbg !1604
  store i32 %conv582, ptr %c, align 4, !dbg !1605, !tbaa !946
  %372 = load ptr, ptr %tv, align 8, !dbg !1606, !tbaa !563
  %is_dot583 = getelementptr inbounds %struct.AbstractTview, ptr %372, i32 0, i32 16, !dbg !1608
  %373 = load i32, ptr %is_dot583, align 4, !dbg !1608, !tbaa !599
  %tobool584 = icmp ne i32 %373, 0, !dbg !1606
  br i1 %tobool584, label %land.lhs.true585, label %if.end602, !dbg !1609

land.lhs.true585:                                 ; preds = %if.else577
  %374 = load ptr, ptr %p324, align 8, !dbg !1610, !tbaa !563
  %b586 = getelementptr inbounds %struct.bam_pileup1_t, ptr %374, i32 0, i32 0, !dbg !1611
  %375 = load ptr, ptr %b586, align 8, !dbg !1611, !tbaa !1439
  %376 = load ptr, ptr %p324, align 8, !dbg !1612, !tbaa !563
  %qpos587 = getelementptr inbounds %struct.bam_pileup1_t, ptr %376, i32 0, i32 1, !dbg !1613
  %377 = load i32, ptr %qpos587, align 8, !dbg !1613, !tbaa !1442
  %378 = load i32, ptr %j, align 4, !dbg !1614, !tbaa !946
  %add588 = add nsw i32 %377, %378, !dbg !1615
  %call589 = call signext i8 @bam_aux_getCEi(ptr noundef %375, i32 noundef %add588), !dbg !1616
  %conv590 = sext i8 %call589 to i32, !dbg !1616
  %cmp591 = icmp eq i32 45, %conv590, !dbg !1617
  br i1 %cmp591, label %if.then593, label %if.end602, !dbg !1618

if.then593:                                       ; preds = %land.lhs.true585
  %379 = load ptr, ptr %p324, align 8, !dbg !1619, !tbaa !563
  %b594 = getelementptr inbounds %struct.bam_pileup1_t, ptr %379, i32 0, i32 0, !dbg !1619
  %380 = load ptr, ptr %b594, align 8, !dbg !1619, !tbaa !1439
  %core595 = getelementptr inbounds %struct.bam1_t, ptr %380, i32 0, i32 0, !dbg !1619
  %flag596 = getelementptr inbounds %struct.bam1_core_t, ptr %core595, i32 0, i32 5, !dbg !1619
  %381 = load i16, ptr %flag596, align 8, !dbg !1619, !tbaa !1459
  %conv597 = zext i16 %381 to i32, !dbg !1619
  %and598 = and i32 %conv597, 16, !dbg !1619
  %cmp599 = icmp ne i32 %and598, 0, !dbg !1619
  %382 = zext i1 %cmp599 to i64, !dbg !1619
  %cond601 = select i1 %cmp599, i32 44, i32 46, !dbg !1619
  store i32 %cond601, ptr %c, align 4, !dbg !1620, !tbaa !946
  br label %if.end602, !dbg !1621

if.end602:                                        ; preds = %if.then593, %land.lhs.true585, %if.else577
  br label %if.end603

if.end603:                                        ; preds = %if.end602, %if.end576
  br label %if.end604

if.end604:                                        ; preds = %if.end603, %if.then485
  call void @llvm.lifetime.end.p0(i64 4, ptr %len477) #17, !dbg !1622
  br label %if.end605

if.end605:                                        ; preds = %if.end604, %if.end475
  %383 = load i32, ptr %row, align 4, !dbg !1623, !tbaa !946
  %cmp606 = icmp sgt i32 %383, 2, !dbg !1624
  br i1 %cmp606, label %land.lhs.true608, label %if.end875, !dbg !1625

land.lhs.true608:                                 ; preds = %if.end605
  %384 = load i32, ptr %row, align 4, !dbg !1626, !tbaa !946
  %385 = load ptr, ptr %tv, align 8, !dbg !1627, !tbaa !563
  %mrow = getelementptr inbounds %struct.AbstractTview, ptr %385, i32 0, i32 0, !dbg !1628
  %386 = load i32, ptr %mrow, align 8, !dbg !1628, !tbaa !584
  %cmp609 = icmp slt i32 %384, %386, !dbg !1629
  br i1 %cmp609, label %if.then611, label %if.end875, !dbg !1630

if.then611:                                       ; preds = %land.lhs.true608
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #17, !dbg !1631
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !929, metadata !DIExpression()), !dbg !1632
  store i32 0, ptr %attr, align 4, !dbg !1633, !tbaa !946
  %387 = load ptr, ptr %p324, align 8, !dbg !1634, !tbaa !563
  %b612 = getelementptr inbounds %struct.bam_pileup1_t, ptr %387, i32 0, i32 0, !dbg !1636
  %388 = load ptr, ptr %b612, align 8, !dbg !1636, !tbaa !1439
  %core613 = getelementptr inbounds %struct.bam1_t, ptr %388, i32 0, i32 0, !dbg !1637
  %flag614 = getelementptr inbounds %struct.bam1_core_t, ptr %core613, i32 0, i32 5, !dbg !1638
  %389 = load i16, ptr %flag614, align 8, !dbg !1638, !tbaa !1459
  %conv615 = zext i16 %389 to i32, !dbg !1634
  %and616 = and i32 %conv615, 1, !dbg !1639
  %tobool617 = icmp ne i32 %and616, 0, !dbg !1639
  br i1 %tobool617, label %land.lhs.true618, label %lor.lhs.false625, !dbg !1640

land.lhs.true618:                                 ; preds = %if.then611
  %390 = load ptr, ptr %p324, align 8, !dbg !1641, !tbaa !563
  %b619 = getelementptr inbounds %struct.bam_pileup1_t, ptr %390, i32 0, i32 0, !dbg !1642
  %391 = load ptr, ptr %b619, align 8, !dbg !1642, !tbaa !1439
  %core620 = getelementptr inbounds %struct.bam1_t, ptr %391, i32 0, i32 0, !dbg !1643
  %flag621 = getelementptr inbounds %struct.bam1_core_t, ptr %core620, i32 0, i32 5, !dbg !1644
  %392 = load i16, ptr %flag621, align 8, !dbg !1644, !tbaa !1459
  %conv622 = zext i16 %392 to i32, !dbg !1641
  %and623 = and i32 %conv622, 2, !dbg !1645
  %tobool624 = icmp ne i32 %and623, 0, !dbg !1645
  br i1 %tobool624, label %lor.lhs.false625, label %if.then632, !dbg !1646

lor.lhs.false625:                                 ; preds = %land.lhs.true618, %if.then611
  %393 = load ptr, ptr %p324, align 8, !dbg !1647, !tbaa !563
  %b626 = getelementptr inbounds %struct.bam_pileup1_t, ptr %393, i32 0, i32 0, !dbg !1648
  %394 = load ptr, ptr %b626, align 8, !dbg !1648, !tbaa !1439
  %core627 = getelementptr inbounds %struct.bam1_t, ptr %394, i32 0, i32 0, !dbg !1649
  %flag628 = getelementptr inbounds %struct.bam1_core_t, ptr %core627, i32 0, i32 5, !dbg !1650
  %395 = load i16, ptr %flag628, align 8, !dbg !1650, !tbaa !1459
  %conv629 = zext i16 %395 to i32, !dbg !1647
  %and630 = and i32 %conv629, 256, !dbg !1651
  %tobool631 = icmp ne i32 %and630, 0, !dbg !1651
  br i1 %tobool631, label %if.then632, label %if.end636, !dbg !1652

if.then632:                                       ; preds = %lor.lhs.false625, %land.lhs.true618
  %396 = load ptr, ptr %tv, align 8, !dbg !1653, !tbaa !563
  %my_underline633 = getelementptr inbounds %struct.AbstractTview, ptr %396, i32 0, i32 32, !dbg !1654
  %397 = load ptr, ptr %my_underline633, align 8, !dbg !1654, !tbaa !1306
  %398 = load ptr, ptr %tv, align 8, !dbg !1655, !tbaa !563
  %call634 = call i32 %397(ptr noundef %398), !dbg !1653
  %399 = load i32, ptr %attr, align 4, !dbg !1656, !tbaa !946
  %or635 = or i32 %399, %call634, !dbg !1656
  store i32 %or635, ptr %attr, align 4, !dbg !1656, !tbaa !946
  br label %if.end636, !dbg !1657

if.end636:                                        ; preds = %if.then632, %lor.lhs.false625
  %400 = load ptr, ptr %tv, align 8, !dbg !1658, !tbaa !563
  %color_for = getelementptr inbounds %struct.AbstractTview, ptr %400, i32 0, i32 15, !dbg !1660
  %401 = load i32, ptr %color_for, align 8, !dbg !1660, !tbaa !595
  %cmp637 = icmp eq i32 %401, 1, !dbg !1661
  br i1 %cmp637, label %if.then639, label %if.else673, !dbg !1662

if.then639:                                       ; preds = %if.end636
  %402 = load ptr, ptr %p324, align 8, !dbg !1663, !tbaa !563
  %b640 = getelementptr inbounds %struct.bam_pileup1_t, ptr %402, i32 0, i32 0, !dbg !1663
  %403 = load ptr, ptr %b640, align 8, !dbg !1663, !tbaa !1439
  %data641 = getelementptr inbounds %struct.bam1_t, ptr %403, i32 0, i32 2, !dbg !1663
  %404 = load ptr, ptr %data641, align 8, !dbg !1663, !tbaa !1473
  %405 = load ptr, ptr %p324, align 8, !dbg !1663, !tbaa !563
  %b642 = getelementptr inbounds %struct.bam_pileup1_t, ptr %405, i32 0, i32 0, !dbg !1663
  %406 = load ptr, ptr %b642, align 8, !dbg !1663, !tbaa !1439
  %core643 = getelementptr inbounds %struct.bam1_t, ptr %406, i32 0, i32 0, !dbg !1663
  %n_cigar644 = getelementptr inbounds %struct.bam1_core_t, ptr %core643, i32 0, i32 7, !dbg !1663
  %407 = load i32, ptr %n_cigar644, align 4, !dbg !1663, !tbaa !1491
  %shl645 = shl i32 %407, 2, !dbg !1663
  %idx.ext646 = zext i32 %shl645 to i64, !dbg !1663
  %add.ptr647 = getelementptr inbounds i8, ptr %404, i64 %idx.ext646, !dbg !1663
  %408 = load ptr, ptr %p324, align 8, !dbg !1663, !tbaa !563
  %b648 = getelementptr inbounds %struct.bam_pileup1_t, ptr %408, i32 0, i32 0, !dbg !1663
  %409 = load ptr, ptr %b648, align 8, !dbg !1663, !tbaa !1439
  %core649 = getelementptr inbounds %struct.bam1_t, ptr %409, i32 0, i32 0, !dbg !1663
  %l_qname650 = getelementptr inbounds %struct.bam1_core_t, ptr %core649, i32 0, i32 6, !dbg !1663
  %410 = load i16, ptr %l_qname650, align 2, !dbg !1663, !tbaa !1481
  %conv651 = zext i16 %410 to i32, !dbg !1663
  %idx.ext652 = sext i32 %conv651 to i64, !dbg !1663
  %add.ptr653 = getelementptr inbounds i8, ptr %add.ptr647, i64 %idx.ext652, !dbg !1663
  %411 = load ptr, ptr %p324, align 8, !dbg !1663, !tbaa !563
  %b654 = getelementptr inbounds %struct.bam_pileup1_t, ptr %411, i32 0, i32 0, !dbg !1663
  %412 = load ptr, ptr %b654, align 8, !dbg !1663, !tbaa !1439
  %core655 = getelementptr inbounds %struct.bam1_t, ptr %412, i32 0, i32 0, !dbg !1663
  %l_qseq = getelementptr inbounds %struct.bam1_core_t, ptr %core655, i32 0, i32 8, !dbg !1663
  %413 = load i32, ptr %l_qseq, align 8, !dbg !1663, !tbaa !1665
  %add656 = add nsw i32 %413, 1, !dbg !1663
  %shr657 = ashr i32 %add656, 1, !dbg !1663
  %idx.ext658 = sext i32 %shr657 to i64, !dbg !1663
  %add.ptr659 = getelementptr inbounds i8, ptr %add.ptr653, i64 %idx.ext658, !dbg !1663
  %414 = load ptr, ptr %p324, align 8, !dbg !1666, !tbaa !563
  %qpos660 = getelementptr inbounds %struct.bam_pileup1_t, ptr %414, i32 0, i32 1, !dbg !1667
  %415 = load i32, ptr %qpos660, align 8, !dbg !1667, !tbaa !1442
  %idxprom661 = sext i32 %415 to i64, !dbg !1663
  %arrayidx662 = getelementptr inbounds i8, ptr %add.ptr659, i64 %idxprom661, !dbg !1663
  %416 = load i8, ptr %arrayidx662, align 1, !dbg !1663, !tbaa !1004
  %conv663 = zext i8 %416 to i32, !dbg !1663
  %div664 = sdiv i32 %conv663, 10, !dbg !1668
  %add665 = add nsw i32 %div664, 1, !dbg !1669
  store i32 %add665, ptr %x, align 4, !dbg !1670, !tbaa !946
  %417 = load i32, ptr %x, align 4, !dbg !1671, !tbaa !946
  %cmp666 = icmp sgt i32 %417, 4, !dbg !1673
  br i1 %cmp666, label %if.then668, label %if.end669, !dbg !1674

if.then668:                                       ; preds = %if.then639
  store i32 4, ptr %x, align 4, !dbg !1675, !tbaa !946
  br label %if.end669, !dbg !1676

if.end669:                                        ; preds = %if.then668, %if.then639
  %418 = load ptr, ptr %tv, align 8, !dbg !1677, !tbaa !563
  %my_colorpair670 = getelementptr inbounds %struct.AbstractTview, ptr %418, i32 0, i32 29, !dbg !1678
  %419 = load ptr, ptr %my_colorpair670, align 8, !dbg !1678, !tbaa !1327
  %420 = load ptr, ptr %tv, align 8, !dbg !1679, !tbaa !563
  %421 = load i32, ptr %x, align 4, !dbg !1680, !tbaa !946
  %call671 = call i32 %419(ptr noundef %420, i32 noundef %421), !dbg !1677
  %422 = load i32, ptr %attr, align 4, !dbg !1681, !tbaa !946
  %or672 = or i32 %422, %call671, !dbg !1681
  store i32 %or672, ptr %attr, align 4, !dbg !1681, !tbaa !946
  br label %if.end821, !dbg !1682

if.else673:                                       ; preds = %if.end636
  %423 = load ptr, ptr %tv, align 8, !dbg !1683, !tbaa !563
  %color_for674 = getelementptr inbounds %struct.AbstractTview, ptr %423, i32 0, i32 15, !dbg !1685
  %424 = load i32, ptr %color_for674, align 8, !dbg !1685, !tbaa !595
  %cmp675 = icmp eq i32 %424, 0, !dbg !1686
  br i1 %cmp675, label %if.then677, label %if.else690, !dbg !1687

if.then677:                                       ; preds = %if.else673
  %425 = load ptr, ptr %p324, align 8, !dbg !1688, !tbaa !563
  %b678 = getelementptr inbounds %struct.bam_pileup1_t, ptr %425, i32 0, i32 0, !dbg !1690
  %426 = load ptr, ptr %b678, align 8, !dbg !1690, !tbaa !1439
  %core679 = getelementptr inbounds %struct.bam1_t, ptr %426, i32 0, i32 0, !dbg !1691
  %qual = getelementptr inbounds %struct.bam1_core_t, ptr %core679, i32 0, i32 3, !dbg !1692
  %427 = load i8, ptr %qual, align 2, !dbg !1692, !tbaa !1693
  %conv680 = zext i8 %427 to i32, !dbg !1688
  %div681 = sdiv i32 %conv680, 10, !dbg !1694
  %add682 = add nsw i32 %div681, 1, !dbg !1695
  store i32 %add682, ptr %x, align 4, !dbg !1696, !tbaa !946
  %428 = load i32, ptr %x, align 4, !dbg !1697, !tbaa !946
  %cmp683 = icmp sgt i32 %428, 4, !dbg !1699
  br i1 %cmp683, label %if.then685, label %if.end686, !dbg !1700

if.then685:                                       ; preds = %if.then677
  store i32 4, ptr %x, align 4, !dbg !1701, !tbaa !946
  br label %if.end686, !dbg !1702

if.end686:                                        ; preds = %if.then685, %if.then677
  %429 = load ptr, ptr %tv, align 8, !dbg !1703, !tbaa !563
  %my_colorpair687 = getelementptr inbounds %struct.AbstractTview, ptr %429, i32 0, i32 29, !dbg !1704
  %430 = load ptr, ptr %my_colorpair687, align 8, !dbg !1704, !tbaa !1327
  %431 = load ptr, ptr %tv, align 8, !dbg !1705, !tbaa !563
  %432 = load i32, ptr %x, align 4, !dbg !1706, !tbaa !946
  %call688 = call i32 %430(ptr noundef %431, i32 noundef %432), !dbg !1703
  %433 = load i32, ptr %attr, align 4, !dbg !1707, !tbaa !946
  %or689 = or i32 %433, %call688, !dbg !1707
  store i32 %or689, ptr %attr, align 4, !dbg !1707, !tbaa !946
  br label %if.end820, !dbg !1708

if.else690:                                       ; preds = %if.else673
  %434 = load ptr, ptr %tv, align 8, !dbg !1709, !tbaa !563
  %color_for691 = getelementptr inbounds %struct.AbstractTview, ptr %434, i32 0, i32 15, !dbg !1711
  %435 = load i32, ptr %color_for691, align 8, !dbg !1711, !tbaa !595
  %cmp692 = icmp eq i32 %435, 2, !dbg !1712
  br i1 %cmp692, label %if.then694, label %if.else726, !dbg !1713

if.then694:                                       ; preds = %if.else690
  %436 = load ptr, ptr %p324, align 8, !dbg !1714, !tbaa !563
  %b695 = getelementptr inbounds %struct.bam_pileup1_t, ptr %436, i32 0, i32 0, !dbg !1714
  %437 = load ptr, ptr %b695, align 8, !dbg !1714, !tbaa !1439
  %data696 = getelementptr inbounds %struct.bam1_t, ptr %437, i32 0, i32 2, !dbg !1714
  %438 = load ptr, ptr %data696, align 8, !dbg !1714, !tbaa !1473
  %439 = load ptr, ptr %p324, align 8, !dbg !1714, !tbaa !563
  %b697 = getelementptr inbounds %struct.bam_pileup1_t, ptr %439, i32 0, i32 0, !dbg !1714
  %440 = load ptr, ptr %b697, align 8, !dbg !1714, !tbaa !1439
  %core698 = getelementptr inbounds %struct.bam1_t, ptr %440, i32 0, i32 0, !dbg !1714
  %n_cigar699 = getelementptr inbounds %struct.bam1_core_t, ptr %core698, i32 0, i32 7, !dbg !1714
  %441 = load i32, ptr %n_cigar699, align 4, !dbg !1714, !tbaa !1491
  %shl700 = shl i32 %441, 2, !dbg !1714
  %idx.ext701 = zext i32 %shl700 to i64, !dbg !1714
  %add.ptr702 = getelementptr inbounds i8, ptr %438, i64 %idx.ext701, !dbg !1714
  %442 = load ptr, ptr %p324, align 8, !dbg !1714, !tbaa !563
  %b703 = getelementptr inbounds %struct.bam_pileup1_t, ptr %442, i32 0, i32 0, !dbg !1714
  %443 = load ptr, ptr %b703, align 8, !dbg !1714, !tbaa !1439
  %core704 = getelementptr inbounds %struct.bam1_t, ptr %443, i32 0, i32 0, !dbg !1714
  %l_qname705 = getelementptr inbounds %struct.bam1_core_t, ptr %core704, i32 0, i32 6, !dbg !1714
  %444 = load i16, ptr %l_qname705, align 2, !dbg !1714, !tbaa !1481
  %conv706 = zext i16 %444 to i32, !dbg !1714
  %idx.ext707 = sext i32 %conv706 to i64, !dbg !1714
  %add.ptr708 = getelementptr inbounds i8, ptr %add.ptr702, i64 %idx.ext707, !dbg !1714
  %445 = load ptr, ptr %p324, align 8, !dbg !1714, !tbaa !563
  %qpos709 = getelementptr inbounds %struct.bam_pileup1_t, ptr %445, i32 0, i32 1, !dbg !1714
  %446 = load i32, ptr %qpos709, align 8, !dbg !1714, !tbaa !1442
  %shr710 = ashr i32 %446, 1, !dbg !1714
  %idxprom711 = sext i32 %shr710 to i64, !dbg !1714
  %arrayidx712 = getelementptr inbounds i8, ptr %add.ptr708, i64 %idxprom711, !dbg !1714
  %447 = load i8, ptr %arrayidx712, align 1, !dbg !1714, !tbaa !1004
  %conv713 = zext i8 %447 to i32, !dbg !1714
  %448 = load ptr, ptr %p324, align 8, !dbg !1714, !tbaa !563
  %qpos714 = getelementptr inbounds %struct.bam_pileup1_t, ptr %448, i32 0, i32 1, !dbg !1714
  %449 = load i32, ptr %qpos714, align 8, !dbg !1714, !tbaa !1442
  %not715 = xor i32 %449, -1, !dbg !1714
  %and716 = and i32 %not715, 1, !dbg !1714
  %shl717 = shl i32 %and716, 2, !dbg !1714
  %shr718 = ashr i32 %conv713, %shl717, !dbg !1714
  %and719 = and i32 %shr718, 15, !dbg !1714
  %idxprom720 = sext i32 %and719 to i64, !dbg !1716
  %arrayidx721 = getelementptr inbounds [0 x i32], ptr @seq_nt16_int, i64 0, i64 %idxprom720, !dbg !1716
  %450 = load i32, ptr %arrayidx721, align 4, !dbg !1716, !tbaa !946
  %add722 = add nsw i32 %450, 5, !dbg !1717
  store i32 %add722, ptr %x, align 4, !dbg !1718, !tbaa !946
  %451 = load ptr, ptr %tv, align 8, !dbg !1719, !tbaa !563
  %my_colorpair723 = getelementptr inbounds %struct.AbstractTview, ptr %451, i32 0, i32 29, !dbg !1720
  %452 = load ptr, ptr %my_colorpair723, align 8, !dbg !1720, !tbaa !1327
  %453 = load ptr, ptr %tv, align 8, !dbg !1721, !tbaa !563
  %454 = load i32, ptr %x, align 4, !dbg !1722, !tbaa !946
  %call724 = call i32 %452(ptr noundef %453, i32 noundef %454), !dbg !1719
  %455 = load i32, ptr %attr, align 4, !dbg !1723, !tbaa !946
  %or725 = or i32 %455, %call724, !dbg !1723
  store i32 %or725, ptr %attr, align 4, !dbg !1723, !tbaa !946
  br label %if.end819, !dbg !1724

if.else726:                                       ; preds = %if.else690
  %456 = load ptr, ptr %tv, align 8, !dbg !1725, !tbaa !563
  %color_for727 = getelementptr inbounds %struct.AbstractTview, ptr %456, i32 0, i32 15, !dbg !1727
  %457 = load i32, ptr %color_for727, align 8, !dbg !1727, !tbaa !595
  %cmp728 = icmp eq i32 %457, 3, !dbg !1728
  br i1 %cmp728, label %if.then730, label %if.else770, !dbg !1729

if.then730:                                       ; preds = %if.else726
  store i32 0, ptr %x, align 4, !dbg !1730, !tbaa !946
  %458 = load ptr, ptr %p324, align 8, !dbg !1732, !tbaa !563
  %b731 = getelementptr inbounds %struct.bam_pileup1_t, ptr %458, i32 0, i32 0, !dbg !1733
  %459 = load ptr, ptr %b731, align 8, !dbg !1733, !tbaa !1439
  %460 = load ptr, ptr %p324, align 8, !dbg !1734, !tbaa !563
  %qpos732 = getelementptr inbounds %struct.bam_pileup1_t, ptr %460, i32 0, i32 1, !dbg !1735
  %461 = load i32, ptr %qpos732, align 8, !dbg !1735, !tbaa !1442
  %call733 = call signext i8 @bam_aux_getCSi(ptr noundef %459, i32 noundef %461), !dbg !1736
  %conv734 = sext i8 %call733 to i32, !dbg !1736
  switch i32 %conv734, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb735
    i32 50, label %sw.bb736
    i32 51, label %sw.bb737
    i32 52, label %sw.bb738
  ], !dbg !1737

sw.bb:                                            ; preds = %if.then730
  store i32 0, ptr %x, align 4, !dbg !1738, !tbaa !946
  br label %sw.epilog, !dbg !1740

sw.bb735:                                         ; preds = %if.then730
  store i32 1, ptr %x, align 4, !dbg !1741, !tbaa !946
  br label %sw.epilog, !dbg !1742

sw.bb736:                                         ; preds = %if.then730
  store i32 2, ptr %x, align 4, !dbg !1743, !tbaa !946
  br label %sw.epilog, !dbg !1744

sw.bb737:                                         ; preds = %if.then730
  store i32 3, ptr %x, align 4, !dbg !1745, !tbaa !946
  br label %sw.epilog, !dbg !1746

sw.bb738:                                         ; preds = %if.then730
  store i32 4, ptr %x, align 4, !dbg !1747, !tbaa !946
  br label %sw.epilog, !dbg !1748

sw.default:                                       ; preds = %if.then730
  %462 = load ptr, ptr %p324, align 8, !dbg !1749, !tbaa !563
  %b739 = getelementptr inbounds %struct.bam_pileup1_t, ptr %462, i32 0, i32 0, !dbg !1749
  %463 = load ptr, ptr %b739, align 8, !dbg !1749, !tbaa !1439
  %data740 = getelementptr inbounds %struct.bam1_t, ptr %463, i32 0, i32 2, !dbg !1749
  %464 = load ptr, ptr %data740, align 8, !dbg !1749, !tbaa !1473
  %465 = load ptr, ptr %p324, align 8, !dbg !1749, !tbaa !563
  %b741 = getelementptr inbounds %struct.bam_pileup1_t, ptr %465, i32 0, i32 0, !dbg !1749
  %466 = load ptr, ptr %b741, align 8, !dbg !1749, !tbaa !1439
  %core742 = getelementptr inbounds %struct.bam1_t, ptr %466, i32 0, i32 0, !dbg !1749
  %n_cigar743 = getelementptr inbounds %struct.bam1_core_t, ptr %core742, i32 0, i32 7, !dbg !1749
  %467 = load i32, ptr %n_cigar743, align 4, !dbg !1749, !tbaa !1491
  %shl744 = shl i32 %467, 2, !dbg !1749
  %idx.ext745 = zext i32 %shl744 to i64, !dbg !1749
  %add.ptr746 = getelementptr inbounds i8, ptr %464, i64 %idx.ext745, !dbg !1749
  %468 = load ptr, ptr %p324, align 8, !dbg !1749, !tbaa !563
  %b747 = getelementptr inbounds %struct.bam_pileup1_t, ptr %468, i32 0, i32 0, !dbg !1749
  %469 = load ptr, ptr %b747, align 8, !dbg !1749, !tbaa !1439
  %core748 = getelementptr inbounds %struct.bam1_t, ptr %469, i32 0, i32 0, !dbg !1749
  %l_qname749 = getelementptr inbounds %struct.bam1_core_t, ptr %core748, i32 0, i32 6, !dbg !1749
  %470 = load i16, ptr %l_qname749, align 2, !dbg !1749, !tbaa !1481
  %conv750 = zext i16 %470 to i32, !dbg !1749
  %idx.ext751 = sext i32 %conv750 to i64, !dbg !1749
  %add.ptr752 = getelementptr inbounds i8, ptr %add.ptr746, i64 %idx.ext751, !dbg !1749
  %471 = load ptr, ptr %p324, align 8, !dbg !1749, !tbaa !563
  %qpos753 = getelementptr inbounds %struct.bam_pileup1_t, ptr %471, i32 0, i32 1, !dbg !1749
  %472 = load i32, ptr %qpos753, align 8, !dbg !1749, !tbaa !1442
  %shr754 = ashr i32 %472, 1, !dbg !1749
  %idxprom755 = sext i32 %shr754 to i64, !dbg !1749
  %arrayidx756 = getelementptr inbounds i8, ptr %add.ptr752, i64 %idxprom755, !dbg !1749
  %473 = load i8, ptr %arrayidx756, align 1, !dbg !1749, !tbaa !1004
  %conv757 = zext i8 %473 to i32, !dbg !1749
  %474 = load ptr, ptr %p324, align 8, !dbg !1749, !tbaa !563
  %qpos758 = getelementptr inbounds %struct.bam_pileup1_t, ptr %474, i32 0, i32 1, !dbg !1749
  %475 = load i32, ptr %qpos758, align 8, !dbg !1749, !tbaa !1442
  %not759 = xor i32 %475, -1, !dbg !1749
  %and760 = and i32 %not759, 1, !dbg !1749
  %shl761 = shl i32 %and760, 2, !dbg !1749
  %shr762 = ashr i32 %conv757, %shl761, !dbg !1749
  %and763 = and i32 %shr762, 15, !dbg !1749
  %idxprom764 = sext i32 %and763 to i64, !dbg !1750
  %arrayidx765 = getelementptr inbounds [0 x i32], ptr @seq_nt16_int, i64 0, i64 %idxprom764, !dbg !1750
  %476 = load i32, ptr %arrayidx765, align 4, !dbg !1750, !tbaa !946
  store i32 %476, ptr %x, align 4, !dbg !1751, !tbaa !946
  br label %sw.epilog, !dbg !1752

sw.epilog:                                        ; preds = %sw.default, %sw.bb738, %sw.bb737, %sw.bb736, %sw.bb735, %sw.bb
  %477 = load i32, ptr %x, align 4, !dbg !1753, !tbaa !946
  %add766 = add nsw i32 %477, 5, !dbg !1753
  store i32 %add766, ptr %x, align 4, !dbg !1753, !tbaa !946
  %478 = load ptr, ptr %tv, align 8, !dbg !1754, !tbaa !563
  %my_colorpair767 = getelementptr inbounds %struct.AbstractTview, ptr %478, i32 0, i32 29, !dbg !1755
  %479 = load ptr, ptr %my_colorpair767, align 8, !dbg !1755, !tbaa !1327
  %480 = load ptr, ptr %tv, align 8, !dbg !1756, !tbaa !563
  %481 = load i32, ptr %x, align 4, !dbg !1757, !tbaa !946
  %call768 = call i32 %479(ptr noundef %480, i32 noundef %481), !dbg !1754
  %482 = load i32, ptr %attr, align 4, !dbg !1758, !tbaa !946
  %or769 = or i32 %482, %call768, !dbg !1758
  store i32 %or769, ptr %attr, align 4, !dbg !1758, !tbaa !946
  br label %if.end818, !dbg !1759

if.else770:                                       ; preds = %if.else726
  %483 = load ptr, ptr %tv, align 8, !dbg !1760, !tbaa !563
  %color_for771 = getelementptr inbounds %struct.AbstractTview, ptr %483, i32 0, i32 15, !dbg !1762
  %484 = load i32, ptr %color_for771, align 8, !dbg !1762, !tbaa !595
  %cmp772 = icmp eq i32 %484, 4, !dbg !1763
  br i1 %cmp772, label %if.then774, label %if.end817, !dbg !1764

if.then774:                                       ; preds = %if.else770
  %485 = load ptr, ptr %p324, align 8, !dbg !1765, !tbaa !563
  %b775 = getelementptr inbounds %struct.bam_pileup1_t, ptr %485, i32 0, i32 0, !dbg !1767
  %486 = load ptr, ptr %b775, align 8, !dbg !1767, !tbaa !1439
  %487 = load ptr, ptr %p324, align 8, !dbg !1768, !tbaa !563
  %qpos776 = getelementptr inbounds %struct.bam_pileup1_t, ptr %487, i32 0, i32 1, !dbg !1769
  %488 = load i32, ptr %qpos776, align 8, !dbg !1769, !tbaa !1442
  %call777 = call signext i8 @bam_aux_getCQi(ptr noundef %486, i32 noundef %488), !dbg !1770
  %conv778 = sext i8 %call777 to i32, !dbg !1770
  store i32 %conv778, ptr %x, align 4, !dbg !1771, !tbaa !946
  %489 = load i32, ptr %x, align 4, !dbg !1772, !tbaa !946
  %cmp779 = icmp eq i32 0, %489, !dbg !1774
  br i1 %cmp779, label %if.then781, label %if.end807, !dbg !1775

if.then781:                                       ; preds = %if.then774
  %490 = load ptr, ptr %p324, align 8, !dbg !1776, !tbaa !563
  %b782 = getelementptr inbounds %struct.bam_pileup1_t, ptr %490, i32 0, i32 0, !dbg !1776
  %491 = load ptr, ptr %b782, align 8, !dbg !1776, !tbaa !1439
  %data783 = getelementptr inbounds %struct.bam1_t, ptr %491, i32 0, i32 2, !dbg !1776
  %492 = load ptr, ptr %data783, align 8, !dbg !1776, !tbaa !1473
  %493 = load ptr, ptr %p324, align 8, !dbg !1776, !tbaa !563
  %b784 = getelementptr inbounds %struct.bam_pileup1_t, ptr %493, i32 0, i32 0, !dbg !1776
  %494 = load ptr, ptr %b784, align 8, !dbg !1776, !tbaa !1439
  %core785 = getelementptr inbounds %struct.bam1_t, ptr %494, i32 0, i32 0, !dbg !1776
  %n_cigar786 = getelementptr inbounds %struct.bam1_core_t, ptr %core785, i32 0, i32 7, !dbg !1776
  %495 = load i32, ptr %n_cigar786, align 4, !dbg !1776, !tbaa !1491
  %shl787 = shl i32 %495, 2, !dbg !1776
  %idx.ext788 = zext i32 %shl787 to i64, !dbg !1776
  %add.ptr789 = getelementptr inbounds i8, ptr %492, i64 %idx.ext788, !dbg !1776
  %496 = load ptr, ptr %p324, align 8, !dbg !1776, !tbaa !563
  %b790 = getelementptr inbounds %struct.bam_pileup1_t, ptr %496, i32 0, i32 0, !dbg !1776
  %497 = load ptr, ptr %b790, align 8, !dbg !1776, !tbaa !1439
  %core791 = getelementptr inbounds %struct.bam1_t, ptr %497, i32 0, i32 0, !dbg !1776
  %l_qname792 = getelementptr inbounds %struct.bam1_core_t, ptr %core791, i32 0, i32 6, !dbg !1776
  %498 = load i16, ptr %l_qname792, align 2, !dbg !1776, !tbaa !1481
  %conv793 = zext i16 %498 to i32, !dbg !1776
  %idx.ext794 = sext i32 %conv793 to i64, !dbg !1776
  %add.ptr795 = getelementptr inbounds i8, ptr %add.ptr789, i64 %idx.ext794, !dbg !1776
  %499 = load ptr, ptr %p324, align 8, !dbg !1776, !tbaa !563
  %b796 = getelementptr inbounds %struct.bam_pileup1_t, ptr %499, i32 0, i32 0, !dbg !1776
  %500 = load ptr, ptr %b796, align 8, !dbg !1776, !tbaa !1439
  %core797 = getelementptr inbounds %struct.bam1_t, ptr %500, i32 0, i32 0, !dbg !1776
  %l_qseq798 = getelementptr inbounds %struct.bam1_core_t, ptr %core797, i32 0, i32 8, !dbg !1776
  %501 = load i32, ptr %l_qseq798, align 8, !dbg !1776, !tbaa !1665
  %add799 = add nsw i32 %501, 1, !dbg !1776
  %shr800 = ashr i32 %add799, 1, !dbg !1776
  %idx.ext801 = sext i32 %shr800 to i64, !dbg !1776
  %add.ptr802 = getelementptr inbounds i8, ptr %add.ptr795, i64 %idx.ext801, !dbg !1776
  %502 = load ptr, ptr %p324, align 8, !dbg !1777, !tbaa !563
  %qpos803 = getelementptr inbounds %struct.bam_pileup1_t, ptr %502, i32 0, i32 1, !dbg !1778
  %503 = load i32, ptr %qpos803, align 8, !dbg !1778, !tbaa !1442
  %idxprom804 = sext i32 %503 to i64, !dbg !1776
  %arrayidx805 = getelementptr inbounds i8, ptr %add.ptr802, i64 %idxprom804, !dbg !1776
  %504 = load i8, ptr %arrayidx805, align 1, !dbg !1776, !tbaa !1004
  %conv806 = zext i8 %504 to i32, !dbg !1776
  store i32 %conv806, ptr %x, align 4, !dbg !1779, !tbaa !946
  br label %if.end807, !dbg !1780

if.end807:                                        ; preds = %if.then781, %if.then774
  %505 = load i32, ptr %x, align 4, !dbg !1781, !tbaa !946
  %div808 = sdiv i32 %505, 10, !dbg !1782
  %add809 = add nsw i32 %div808, 1, !dbg !1783
  store i32 %add809, ptr %x, align 4, !dbg !1784, !tbaa !946
  %506 = load i32, ptr %x, align 4, !dbg !1785, !tbaa !946
  %cmp810 = icmp sgt i32 %506, 4, !dbg !1787
  br i1 %cmp810, label %if.then812, label %if.end813, !dbg !1788

if.then812:                                       ; preds = %if.end807
  store i32 4, ptr %x, align 4, !dbg !1789, !tbaa !946
  br label %if.end813, !dbg !1790

if.end813:                                        ; preds = %if.then812, %if.end807
  %507 = load ptr, ptr %tv, align 8, !dbg !1791, !tbaa !563
  %my_colorpair814 = getelementptr inbounds %struct.AbstractTview, ptr %507, i32 0, i32 29, !dbg !1792
  %508 = load ptr, ptr %my_colorpair814, align 8, !dbg !1792, !tbaa !1327
  %509 = load ptr, ptr %tv, align 8, !dbg !1793, !tbaa !563
  %510 = load i32, ptr %x, align 4, !dbg !1794, !tbaa !946
  %call815 = call i32 %508(ptr noundef %509, i32 noundef %510), !dbg !1791
  %511 = load i32, ptr %attr, align 4, !dbg !1795, !tbaa !946
  %or816 = or i32 %511, %call815, !dbg !1795
  store i32 %or816, ptr %attr, align 4, !dbg !1795, !tbaa !946
  br label %if.end817, !dbg !1796

if.end817:                                        ; preds = %if.end813, %if.else770
  br label %if.end818

if.end818:                                        ; preds = %if.end817, %sw.epilog
  br label %if.end819

if.end819:                                        ; preds = %if.end818, %if.then694
  br label %if.end820

if.end820:                                        ; preds = %if.end819, %if.end686
  br label %if.end821

if.end821:                                        ; preds = %if.end820, %if.end669
  %512 = load ptr, ptr %tv, align 8, !dbg !1797, !tbaa !563
  %my_attron822 = getelementptr inbounds %struct.AbstractTview, ptr %512, i32 0, i32 26, !dbg !1798
  %513 = load ptr, ptr %my_attron822, align 8, !dbg !1798, !tbaa !1344
  %514 = load ptr, ptr %tv, align 8, !dbg !1799, !tbaa !563
  %515 = load i32, ptr %attr, align 4, !dbg !1800, !tbaa !946
  call void %513(ptr noundef %514, i32 noundef %515), !dbg !1797
  %516 = load ptr, ptr %tv, align 8, !dbg !1801, !tbaa !563
  %my_mvaddch823 = getelementptr inbounds %struct.AbstractTview, ptr %516, i32 0, i32 25, !dbg !1802
  %517 = load ptr, ptr %my_mvaddch823, align 8, !dbg !1802, !tbaa !1054
  %518 = load ptr, ptr %tv, align 8, !dbg !1803, !tbaa !563
  %519 = load i32, ptr %row, align 4, !dbg !1804, !tbaa !946
  %520 = load ptr, ptr %tv, align 8, !dbg !1805, !tbaa !563
  %ccol824 = getelementptr inbounds %struct.AbstractTview, ptr %520, i32 0, i32 12, !dbg !1806
  %521 = load i32, ptr %ccol824, align 4, !dbg !1806, !tbaa !979
  %522 = load ptr, ptr %p324, align 8, !dbg !1807, !tbaa !563
  %b825 = getelementptr inbounds %struct.bam_pileup1_t, ptr %522, i32 0, i32 0, !dbg !1807
  %523 = load ptr, ptr %b825, align 8, !dbg !1807, !tbaa !1439
  %core826 = getelementptr inbounds %struct.bam1_t, ptr %523, i32 0, i32 0, !dbg !1807
  %flag827 = getelementptr inbounds %struct.bam1_core_t, ptr %core826, i32 0, i32 5, !dbg !1807
  %524 = load i16, ptr %flag827, align 8, !dbg !1807, !tbaa !1459
  %conv828 = zext i16 %524 to i32, !dbg !1807
  %and829 = and i32 %conv828, 16, !dbg !1807
  %cmp830 = icmp ne i32 %and829, 0, !dbg !1807
  br i1 %cmp830, label %cond.true832, label %cond.false852, !dbg !1807

cond.true832:                                     ; preds = %if.end821
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res833) #17, !dbg !1808
  tail call void @llvm.dbg.declare(metadata ptr %__res833, metadata !932, metadata !DIExpression()), !dbg !1808
  %525 = load i32, ptr %c, align 4, !dbg !1809, !tbaa !946
  %526 = call i1 @llvm.is.constant.i32(i32 %525), !dbg !1809
  br i1 %526, label %if.then834, label %if.else848, !dbg !1810

if.then834:                                       ; preds = %cond.true832
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c835) #17, !dbg !1811
  tail call void @llvm.dbg.declare(metadata ptr %__c835, metadata !934, metadata !DIExpression()), !dbg !1811
  %527 = load i32, ptr %c, align 4, !dbg !1811, !tbaa !946
  store i32 %527, ptr %__c835, align 4, !dbg !1811, !tbaa !946
  %528 = load i32, ptr %__c835, align 4, !dbg !1811, !tbaa !946
  %cmp836 = icmp slt i32 %528, -128, !dbg !1811
  br i1 %cmp836, label %cond.true841, label %lor.lhs.false838, !dbg !1811

lor.lhs.false838:                                 ; preds = %if.then834
  %529 = load i32, ptr %__c835, align 4, !dbg !1811, !tbaa !946
  %cmp839 = icmp sgt i32 %529, 255, !dbg !1811
  br i1 %cmp839, label %cond.true841, label %cond.false842, !dbg !1811

cond.true841:                                     ; preds = %lor.lhs.false838, %if.then834
  %530 = load i32, ptr %__c835, align 4, !dbg !1811, !tbaa !946
  br label %cond.end846, !dbg !1811

cond.false842:                                    ; preds = %lor.lhs.false838
  %call843 = call ptr @__ctype_tolower_loc() #18, !dbg !1811
  %531 = load ptr, ptr %call843, align 8, !dbg !1811, !tbaa !563
  %532 = load i32, ptr %__c835, align 4, !dbg !1811, !tbaa !946
  %idxprom844 = sext i32 %532 to i64, !dbg !1811
  %arrayidx845 = getelementptr inbounds i32, ptr %531, i64 %idxprom844, !dbg !1811
  %533 = load i32, ptr %arrayidx845, align 4, !dbg !1811, !tbaa !946
  br label %cond.end846, !dbg !1811

cond.end846:                                      ; preds = %cond.false842, %cond.true841
  %cond847 = phi i32 [ %530, %cond.true841 ], [ %533, %cond.false842 ], !dbg !1811
  store i32 %cond847, ptr %__res833, align 4, !dbg !1811, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c835) #17, !dbg !1809
  br label %if.end850, !dbg !1811

if.else848:                                       ; preds = %cond.true832
  %534 = load i32, ptr %c, align 4, !dbg !1809, !tbaa !946
  %call849 = call i32 @tolower(i32 noundef %534) #19, !dbg !1809
  store i32 %call849, ptr %__res833, align 4, !dbg !1809, !tbaa !946
  br label %if.end850

if.end850:                                        ; preds = %if.else848, %cond.end846
  %535 = load i32, ptr %__res833, align 4, !dbg !1808, !tbaa !946
  store i32 %535, ptr %tmp851, align 4, !dbg !1812, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res833) #17, !dbg !1813
  %536 = load i32, ptr %tmp851, align 4, !dbg !1808, !tbaa !946
  br label %cond.end872, !dbg !1807

cond.false852:                                    ; preds = %if.end821
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res853) #17, !dbg !1814
  tail call void @llvm.dbg.declare(metadata ptr %__res853, metadata !939, metadata !DIExpression()), !dbg !1814
  %537 = load i32, ptr %c, align 4, !dbg !1815, !tbaa !946
  %538 = call i1 @llvm.is.constant.i32(i32 %537), !dbg !1815
  br i1 %538, label %if.then854, label %if.else868, !dbg !1816

if.then854:                                       ; preds = %cond.false852
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c855) #17, !dbg !1817
  tail call void @llvm.dbg.declare(metadata ptr %__c855, metadata !941, metadata !DIExpression()), !dbg !1817
  %539 = load i32, ptr %c, align 4, !dbg !1817, !tbaa !946
  store i32 %539, ptr %__c855, align 4, !dbg !1817, !tbaa !946
  %540 = load i32, ptr %__c855, align 4, !dbg !1817, !tbaa !946
  %cmp856 = icmp slt i32 %540, -128, !dbg !1817
  br i1 %cmp856, label %cond.true861, label %lor.lhs.false858, !dbg !1817

lor.lhs.false858:                                 ; preds = %if.then854
  %541 = load i32, ptr %__c855, align 4, !dbg !1817, !tbaa !946
  %cmp859 = icmp sgt i32 %541, 255, !dbg !1817
  br i1 %cmp859, label %cond.true861, label %cond.false862, !dbg !1817

cond.true861:                                     ; preds = %lor.lhs.false858, %if.then854
  %542 = load i32, ptr %__c855, align 4, !dbg !1817, !tbaa !946
  br label %cond.end866, !dbg !1817

cond.false862:                                    ; preds = %lor.lhs.false858
  %call863 = call ptr @__ctype_toupper_loc() #18, !dbg !1817
  %543 = load ptr, ptr %call863, align 8, !dbg !1817, !tbaa !563
  %544 = load i32, ptr %__c855, align 4, !dbg !1817, !tbaa !946
  %idxprom864 = sext i32 %544 to i64, !dbg !1817
  %arrayidx865 = getelementptr inbounds i32, ptr %543, i64 %idxprom864, !dbg !1817
  %545 = load i32, ptr %arrayidx865, align 4, !dbg !1817, !tbaa !946
  br label %cond.end866, !dbg !1817

cond.end866:                                      ; preds = %cond.false862, %cond.true861
  %cond867 = phi i32 [ %542, %cond.true861 ], [ %545, %cond.false862 ], !dbg !1817
  store i32 %cond867, ptr %__res853, align 4, !dbg !1817, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c855) #17, !dbg !1815
  br label %if.end870, !dbg !1817

if.else868:                                       ; preds = %cond.false852
  %546 = load i32, ptr %c, align 4, !dbg !1815, !tbaa !946
  %call869 = call i32 @toupper(i32 noundef %546) #19, !dbg !1815
  store i32 %call869, ptr %__res853, align 4, !dbg !1815, !tbaa !946
  br label %if.end870

if.end870:                                        ; preds = %if.else868, %cond.end866
  %547 = load i32, ptr %__res853, align 4, !dbg !1814, !tbaa !946
  store i32 %547, ptr %tmp871, align 4, !dbg !1818, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res853) #17, !dbg !1819
  %548 = load i32, ptr %tmp871, align 4, !dbg !1814, !tbaa !946
  br label %cond.end872, !dbg !1807

cond.end872:                                      ; preds = %if.end870, %if.end850
  %cond873 = phi i32 [ %536, %if.end850 ], [ %548, %if.end870 ], !dbg !1807
  call void %517(ptr noundef %518, i32 noundef %519, i32 noundef %521, i32 noundef %cond873), !dbg !1801
  %549 = load ptr, ptr %tv, align 8, !dbg !1820, !tbaa !563
  %my_attroff874 = getelementptr inbounds %struct.AbstractTview, ptr %549, i32 0, i32 27, !dbg !1821
  %550 = load ptr, ptr %my_attroff874, align 8, !dbg !1821, !tbaa !1355
  %551 = load ptr, ptr %tv, align 8, !dbg !1822, !tbaa !563
  %552 = load i32, ptr %attr, align 4, !dbg !1823, !tbaa !946
  call void %550(ptr noundef %551, i32 noundef %552), !dbg !1820
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #17, !dbg !1824
  br label %if.end875, !dbg !1825

if.end875:                                        ; preds = %cond.end872, %land.lhs.true608, %if.end605
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #17, !dbg !1826
  call void @llvm.lifetime.end.p0(i64 8, ptr %p324) #17, !dbg !1826
  br label %for.inc876, !dbg !1827

for.inc876:                                       ; preds = %if.end875
  %553 = load i32, ptr %i, align 4, !dbg !1828, !tbaa !946
  %inc877 = add nsw i32 %553, 1, !dbg !1828
  store i32 %inc877, ptr %i, align 4, !dbg !1828, !tbaa !946
  br label %for.cond320, !dbg !1829, !llvm.loop !1830

for.end878:                                       ; preds = %for.cond320
  %554 = load i32, ptr %j, align 4, !dbg !1832, !tbaa !946
  %tobool879 = icmp ne i32 %554, 0, !dbg !1832
  br i1 %tobool879, label %cond.true880, label %cond.false881, !dbg !1832

cond.true880:                                     ; preds = %for.end878
  br label %cond.end882, !dbg !1832

cond.false881:                                    ; preds = %for.end878
  %555 = load i32, ptr %rb, align 4, !dbg !1833, !tbaa !946
  br label %cond.end882, !dbg !1832

cond.end882:                                      ; preds = %cond.false881, %cond.true880
  %cond883 = phi i32 [ 42, %cond.true880 ], [ %555, %cond.false881 ], !dbg !1832
  store i32 %cond883, ptr %c, align 4, !dbg !1834, !tbaa !946
  %556 = load i32, ptr %c, align 4, !dbg !1835, !tbaa !946
  %cmp884 = icmp eq i32 %556, 42, !dbg !1837
  br i1 %cmp884, label %if.then886, label %if.else894, !dbg !1838

if.then886:                                       ; preds = %cond.end882
  %557 = load ptr, ptr %tv, align 8, !dbg !1839, !tbaa !563
  %my_colorpair887 = getelementptr inbounds %struct.AbstractTview, ptr %557, i32 0, i32 29, !dbg !1841
  %558 = load ptr, ptr %my_colorpair887, align 8, !dbg !1841, !tbaa !1327
  %559 = load ptr, ptr %tv, align 8, !dbg !1842, !tbaa !563
  %call888 = call i32 %558(ptr noundef %559, i32 noundef 8), !dbg !1839
  store i32 %call888, ptr %attr, align 4, !dbg !1843, !tbaa !946
  %560 = load ptr, ptr %tv, align 8, !dbg !1844, !tbaa !563
  %my_attron889 = getelementptr inbounds %struct.AbstractTview, ptr %560, i32 0, i32 26, !dbg !1845
  %561 = load ptr, ptr %my_attron889, align 8, !dbg !1845, !tbaa !1344
  %562 = load ptr, ptr %tv, align 8, !dbg !1846, !tbaa !563
  %563 = load i32, ptr %attr, align 4, !dbg !1847, !tbaa !946
  call void %561(ptr noundef %562, i32 noundef %563), !dbg !1844
  %564 = load ptr, ptr %tv, align 8, !dbg !1848, !tbaa !563
  %my_mvaddch890 = getelementptr inbounds %struct.AbstractTview, ptr %564, i32 0, i32 25, !dbg !1849
  %565 = load ptr, ptr %my_mvaddch890, align 8, !dbg !1849, !tbaa !1054
  %566 = load ptr, ptr %tv, align 8, !dbg !1850, !tbaa !563
  %567 = load ptr, ptr %tv, align 8, !dbg !1851, !tbaa !563
  %ccol891 = getelementptr inbounds %struct.AbstractTview, ptr %567, i32 0, i32 12, !dbg !1852
  %568 = load i32, ptr %ccol891, align 4, !dbg !1853, !tbaa !979
  %inc892 = add nsw i32 %568, 1, !dbg !1853
  store i32 %inc892, ptr %ccol891, align 4, !dbg !1853, !tbaa !979
  %569 = load i32, ptr %c, align 4, !dbg !1854, !tbaa !946
  call void %565(ptr noundef %566, i32 noundef 1, i32 noundef %568, i32 noundef %569), !dbg !1848
  %570 = load ptr, ptr %tv, align 8, !dbg !1855, !tbaa !563
  %my_attroff893 = getelementptr inbounds %struct.AbstractTview, ptr %570, i32 0, i32 27, !dbg !1856
  %571 = load ptr, ptr %my_attroff893, align 8, !dbg !1856, !tbaa !1355
  %572 = load ptr, ptr %tv, align 8, !dbg !1857, !tbaa !563
  %573 = load i32, ptr %attr, align 4, !dbg !1858, !tbaa !946
  call void %571(ptr noundef %572, i32 noundef %573), !dbg !1855
  br label %if.end898, !dbg !1859

if.else894:                                       ; preds = %cond.end882
  %574 = load ptr, ptr %tv, align 8, !dbg !1860, !tbaa !563
  %my_mvaddch895 = getelementptr inbounds %struct.AbstractTview, ptr %574, i32 0, i32 25, !dbg !1861
  %575 = load ptr, ptr %my_mvaddch895, align 8, !dbg !1861, !tbaa !1054
  %576 = load ptr, ptr %tv, align 8, !dbg !1862, !tbaa !563
  %577 = load ptr, ptr %tv, align 8, !dbg !1863, !tbaa !563
  %ccol896 = getelementptr inbounds %struct.AbstractTview, ptr %577, i32 0, i32 12, !dbg !1864
  %578 = load i32, ptr %ccol896, align 4, !dbg !1865, !tbaa !979
  %inc897 = add nsw i32 %578, 1, !dbg !1865
  store i32 %inc897, ptr %ccol896, align 4, !dbg !1865, !tbaa !979
  %579 = load i32, ptr %c, align 4, !dbg !1866, !tbaa !946
  call void %575(ptr noundef %576, i32 noundef 1, i32 noundef %578, i32 noundef %579), !dbg !1860
  br label %if.end898

if.end898:                                        ; preds = %if.else894, %if.then886
  br label %for.inc899, !dbg !1867

for.inc899:                                       ; preds = %if.end898
  %580 = load i32, ptr %j, align 4, !dbg !1868, !tbaa !946
  %inc900 = add nsw i32 %580, 1, !dbg !1868
  store i32 %inc900, ptr %j, align 4, !dbg !1868, !tbaa !946
  br label %for.cond316, !dbg !1869, !llvm.loop !1870

for.end901:                                       ; preds = %for.cond316
  %581 = load i64, ptr %pos.addr, align 8, !dbg !1872, !tbaa !948
  %582 = load ptr, ptr %tv, align 8, !dbg !1873, !tbaa !563
  %last_pos902 = getelementptr inbounds %struct.AbstractTview, ptr %582, i32 0, i32 9, !dbg !1874
  store i64 %581, ptr %last_pos902, align 8, !dbg !1875, !tbaa !1009
  call void @ks_free(ptr noundef %ks), !dbg !1876
  store i32 0, ptr %retval, align 4, !dbg !1877
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1877

cleanup:                                          ; preds = %for.end901, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %ks) #17, !dbg !1878
  call void @llvm.lifetime.end.p0(i64 4, ptr %call) #17, !dbg !1878
  call void @llvm.lifetime.end.p0(i64 4, ptr %interval) #17, !dbg !1878
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_ins) #17, !dbg !1878
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr) #17, !dbg !1878
  call void @llvm.lifetime.end.p0(i64 4, ptr %rb) #17, !dbg !1878
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #17, !dbg !1878
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #17, !dbg !1878
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !1878
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #17, !dbg !1878
  call void @llvm.lifetime.end.p0(i64 8, ptr %tv) #17, !dbg !1878
  %583 = load i32, ptr %retval, align 4, !dbg !1878
  ret i32 %583, !dbg !1878
}

declare !dbg !1879 ptr @fai_load(ptr noundef) #2

declare !dbg !1882 ptr @bcf_call_init(double noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @get_rg_sample(ptr noundef %header, ptr noundef %sample) #0 !dbg !1885 {
entry:
  %retval = alloca ptr, align 8
  %header.addr = alloca ptr, align 8
  %sample.addr = alloca ptr, align 8
  %n_rg = alloca i32, align 4
  %i = alloca i32, align 4
  %id_val = alloca %struct.kstring_t, align 8
  %sm_val = alloca %struct.kstring_t, align 8
  %rg_hash = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca i32, align 4
  store ptr %header, ptr %header.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !1889, metadata !DIExpression()), !dbg !1902
  store ptr %sample, ptr %sample.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %sample.addr, metadata !1890, metadata !DIExpression()), !dbg !1903
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_rg) #17, !dbg !1904
  tail call void @llvm.dbg.declare(metadata ptr %n_rg, metadata !1891, metadata !DIExpression()), !dbg !1905
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !1904
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1892, metadata !DIExpression()), !dbg !1906
  call void @llvm.lifetime.start.p0(i64 24, ptr %id_val) #17, !dbg !1907
  tail call void @llvm.dbg.declare(metadata ptr %id_val, metadata !1893, metadata !DIExpression()), !dbg !1908
  call void @llvm.memset.p0.i64(ptr align 8 %id_val, i8 0, i64 24, i1 false), !dbg !1908
  call void @llvm.lifetime.start.p0(i64 24, ptr %sm_val) #17, !dbg !1907
  tail call void @llvm.dbg.declare(metadata ptr %sm_val, metadata !1894, metadata !DIExpression()), !dbg !1909
  call void @llvm.memset.p0.i64(ptr align 8 %sm_val, i8 0, i64 24, i1 false), !dbg !1909
  call void @llvm.lifetime.start.p0(i64 8, ptr %rg_hash) #17, !dbg !1910
  tail call void @llvm.dbg.declare(metadata ptr %rg_hash, metadata !1895, metadata !DIExpression()), !dbg !1911
  %call = call ptr @kh_init_kh_rg(), !dbg !1912
  store ptr %call, ptr %rg_hash, align 8, !dbg !1911, !tbaa !563
  %0 = load ptr, ptr %rg_hash, align 8, !dbg !1913, !tbaa !563
  %tobool = icmp ne ptr %0, null, !dbg !1913
  br i1 %tobool, label %if.end, label %if.then, !dbg !1915

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1916

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %header.addr, align 8, !dbg !1917, !tbaa !563
  %call1 = call i32 @sam_hdr_count_lines(ptr noundef %1, ptr noundef @.str.34), !dbg !1918
  store i32 %call1, ptr %n_rg, align 4, !dbg !1919, !tbaa !946
  %2 = load i32, ptr %n_rg, align 4, !dbg !1920, !tbaa !946
  %cmp = icmp slt i32 %2, 0, !dbg !1922
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1923

if.then2:                                         ; preds = %if.end
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str.4, ptr noundef @.str.35), !dbg !1924
  br label %fail, !dbg !1926

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !1927, !tbaa !946
  br label %for.cond, !dbg !1928

for.cond:                                         ; preds = %for.inc, %if.end3
  %3 = load i32, ptr %i, align 4, !dbg !1929, !tbaa !946
  %4 = load i32, ptr %n_rg, align 4, !dbg !1930, !tbaa !946
  %cmp4 = icmp slt i32 %3, %4, !dbg !1931
  br i1 %cmp4, label %for.body, label %for.end, !dbg !1932

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #17, !dbg !1933
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1896, metadata !DIExpression()), !dbg !1934
  %5 = load ptr, ptr %header.addr, align 8, !dbg !1935, !tbaa !563
  %6 = load i32, ptr %i, align 4, !dbg !1936, !tbaa !946
  %call5 = call i32 @sam_hdr_find_tag_pos(ptr noundef %5, ptr noundef @.str.34, i32 noundef %6, ptr noundef @.str.36, ptr noundef %id_val), !dbg !1937
  store i32 %call5, ptr %r, align 4, !dbg !1934, !tbaa !946
  %7 = load i32, ptr %r, align 4, !dbg !1938, !tbaa !946
  %cmp6 = icmp slt i32 %7, -1, !dbg !1940
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1941

if.then7:                                         ; preds = %for.body
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1942

if.end8:                                          ; preds = %for.body
  %8 = load i32, ptr %r, align 4, !dbg !1943, !tbaa !946
  %cmp9 = icmp eq i32 %8, -1, !dbg !1945
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1946

if.then10:                                        ; preds = %if.end8
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1947

if.end11:                                         ; preds = %if.end8
  %9 = load ptr, ptr %sample.addr, align 8, !dbg !1948, !tbaa !563
  %s = getelementptr inbounds %struct.kstring_t, ptr %id_val, i32 0, i32 2, !dbg !1950
  %10 = load ptr, ptr %s, align 8, !dbg !1950, !tbaa !1567
  %call12 = call i32 @strcmp(ptr noundef %9, ptr noundef %10) #19, !dbg !1951
  %cmp13 = icmp ne i32 %call12, 0, !dbg !1952
  br i1 %cmp13, label %if.then14, label %if.end25, !dbg !1953

if.then14:                                        ; preds = %if.end11
  %11 = load ptr, ptr %header.addr, align 8, !dbg !1954, !tbaa !563
  %12 = load i32, ptr %i, align 4, !dbg !1956, !tbaa !946
  %call15 = call i32 @sam_hdr_find_tag_pos(ptr noundef %11, ptr noundef @.str.34, i32 noundef %12, ptr noundef @.str.37, ptr noundef %sm_val), !dbg !1957
  store i32 %call15, ptr %r, align 4, !dbg !1958, !tbaa !946
  %13 = load i32, ptr %r, align 4, !dbg !1959, !tbaa !946
  %cmp16 = icmp slt i32 %13, -1, !dbg !1961
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !1962

if.then17:                                        ; preds = %if.then14
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1963

if.end18:                                         ; preds = %if.then14
  %14 = load i32, ptr %r, align 4, !dbg !1964, !tbaa !946
  %cmp19 = icmp slt i32 %14, 0, !dbg !1966
  br i1 %cmp19, label %if.then23, label %lor.lhs.false, !dbg !1967

lor.lhs.false:                                    ; preds = %if.end18
  %15 = load ptr, ptr %sample.addr, align 8, !dbg !1968, !tbaa !563
  %s20 = getelementptr inbounds %struct.kstring_t, ptr %sm_val, i32 0, i32 2, !dbg !1969
  %16 = load ptr, ptr %s20, align 8, !dbg !1969, !tbaa !1567
  %call21 = call i32 @strcmp(ptr noundef %15, ptr noundef %16) #19, !dbg !1970
  %cmp22 = icmp ne i32 %call21, 0, !dbg !1971
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !1972

if.then23:                                        ; preds = %lor.lhs.false, %if.end18
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1973

if.end24:                                         ; preds = %lor.lhs.false
  br label %if.end25, !dbg !1974

if.end25:                                         ; preds = %if.end24, %if.end11
  %17 = load ptr, ptr %rg_hash, align 8, !dbg !1975, !tbaa !563
  %s26 = getelementptr inbounds %struct.kstring_t, ptr %id_val, i32 0, i32 2, !dbg !1975
  %18 = load ptr, ptr %s26, align 8, !dbg !1975, !tbaa !1567
  %call27 = call i32 @kh_put_kh_rg(ptr noundef %17, ptr noundef %18, ptr noundef %r), !dbg !1975
  %19 = load i32, ptr %r, align 4, !dbg !1976, !tbaa !946
  %cmp28 = icmp slt i32 %19, 0, !dbg !1978
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !1979

if.then29:                                        ; preds = %if.end25
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1980

if.end30:                                         ; preds = %if.end25
  %call31 = call ptr @ks_release(ptr noundef %id_val), !dbg !1981
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1982
  br label %cleanup, !dbg !1982

cleanup:                                          ; preds = %if.then29, %if.then17, %if.then7, %if.end30, %if.then23, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #17, !dbg !1982
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup32 [
    i32 0, label %cleanup.cont
    i32 5, label %for.inc
    i32 6, label %memfail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1983

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %20 = load i32, ptr %i, align 4, !dbg !1984, !tbaa !946
  %inc = add nsw i32 %20, 1, !dbg !1984
  store i32 %inc, ptr %i, align 4, !dbg !1984, !tbaa !946
  br label %for.cond, !dbg !1985, !llvm.loop !1986

for.end:                                          ; preds = %for.cond
  call void @ks_free(ptr noundef %id_val), !dbg !1988
  call void @ks_free(ptr noundef %sm_val), !dbg !1989
  %21 = load ptr, ptr %rg_hash, align 8, !dbg !1990, !tbaa !563
  store ptr %21, ptr %retval, align 8, !dbg !1991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1991

memfail:                                          ; preds = %cleanup
  tail call void @llvm.dbg.label(metadata !1900), !dbg !1992
  call void @perror(ptr noundef @.str.4), !dbg !1993
  br label %fail, !dbg !1993

fail:                                             ; preds = %memfail, %if.then2
  tail call void @llvm.dbg.label(metadata !1901), !dbg !1994
  call void @ks_free(ptr noundef %id_val), !dbg !1995
  call void @ks_free(ptr noundef %sm_val), !dbg !1996
  %22 = load ptr, ptr %rg_hash, align 8, !dbg !1997, !tbaa !563
  call void @destroy_rg_hash(ptr noundef %22), !dbg !1998
  store ptr null, ptr %retval, align 8, !dbg !1999
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1999

cleanup32:                                        ; preds = %fail, %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rg_hash) #17, !dbg !2000
  call void @llvm.lifetime.end.p0(i64 24, ptr %sm_val) #17, !dbg !2000
  call void @llvm.lifetime.end.p0(i64 24, ptr %id_val) #17, !dbg !2000
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !2000
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_rg) #17, !dbg !2000
  %23 = load ptr, ptr %retval, align 8, !dbg !2000
  ret ptr %23, !dbg !2000
}

; Function Attrs: nounwind uwtable
define dso_local void @base_tv_destroy(ptr noundef %tv) #0 !dbg !2001 {
entry:
  %tv.addr = alloca ptr, align 8
  store ptr %tv, ptr %tv.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %tv.addr, metadata !2005, metadata !DIExpression()), !dbg !2006
  %0 = load ptr, ptr %tv.addr, align 8, !dbg !2007, !tbaa !563
  %lplbuf = getelementptr inbounds %struct.AbstractTview, ptr %0, i32 0, i32 3, !dbg !2008
  %1 = load ptr, ptr %lplbuf, align 8, !dbg !2008, !tbaa !671
  call void @bam_lplbuf_destroy(ptr noundef %1), !dbg !2009
  %2 = load ptr, ptr %tv.addr, align 8, !dbg !2010, !tbaa !563
  %bca = getelementptr inbounds %struct.AbstractTview, ptr %2, i32 0, i32 7, !dbg !2011
  %3 = load ptr, ptr %bca, align 8, !dbg !2011, !tbaa !685
  call void @bcf_call_destroy(ptr noundef %3), !dbg !2012
  %4 = load ptr, ptr %tv.addr, align 8, !dbg !2013, !tbaa !563
  %idx = getelementptr inbounds %struct.AbstractTview, ptr %4, i32 0, i32 2, !dbg !2014
  %5 = load ptr, ptr %idx, align 8, !dbg !2014, !tbaa !647
  call void @hts_idx_destroy(ptr noundef %5), !dbg !2015
  %6 = load ptr, ptr %tv.addr, align 8, !dbg !2016, !tbaa !563
  %fai = getelementptr inbounds %struct.AbstractTview, ptr %6, i32 0, i32 6, !dbg !2018
  %7 = load ptr, ptr %fai, align 8, !dbg !2018, !tbaa !680
  %tobool = icmp ne ptr %7, null, !dbg !2016
  br i1 %tobool, label %if.then, label %if.end, !dbg !2019

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %tv.addr, align 8, !dbg !2020, !tbaa !563
  %fai1 = getelementptr inbounds %struct.AbstractTview, ptr %8, i32 0, i32 6, !dbg !2021
  %9 = load ptr, ptr %fai1, align 8, !dbg !2021, !tbaa !680
  call void @fai_destroy(ptr noundef %9), !dbg !2022
  br label %if.end, !dbg !2022

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %tv.addr, align 8, !dbg !2023, !tbaa !563
  %ref = getelementptr inbounds %struct.AbstractTview, ptr %10, i32 0, i32 21, !dbg !2024
  %11 = load ptr, ptr %ref, align 8, !dbg !2024, !tbaa !987
  call void @free(ptr noundef %11) #17, !dbg !2025
  %12 = load ptr, ptr %tv.addr, align 8, !dbg !2026, !tbaa !563
  %header = getelementptr inbounds %struct.AbstractTview, ptr %12, i32 0, i32 4, !dbg !2027
  %13 = load ptr, ptr %header, align 8, !dbg !2027, !tbaa !624
  call void @sam_hdr_destroy(ptr noundef %13), !dbg !2028
  %14 = load ptr, ptr %tv.addr, align 8, !dbg !2029, !tbaa !563
  %rg_hash = getelementptr inbounds %struct.AbstractTview, ptr %14, i32 0, i32 22, !dbg !2030
  %15 = load ptr, ptr %rg_hash, align 8, !dbg !2030, !tbaa !701
  call void @destroy_rg_hash(ptr noundef %15), !dbg !2031
  %16 = load ptr, ptr %tv.addr, align 8, !dbg !2032, !tbaa !563
  %fp = getelementptr inbounds %struct.AbstractTview, ptr %16, i32 0, i32 5, !dbg !2032
  %17 = load ptr, ptr %fp, align 8, !dbg !2032, !tbaa !604
  %call = call i32 @hts_close(ptr noundef %17), !dbg !2032
  ret void, !dbg !2033
}

declare !dbg !2034 void @bam_lplbuf_destroy(ptr noundef) #2

declare !dbg !2037 void @bcf_call_destroy(ptr noundef) #2

declare !dbg !2040 void @hts_idx_destroy(ptr noundef) #2

declare !dbg !2043 void @fai_destroy(ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !2046 void @free(ptr noundef) #3

declare !dbg !2049 void @sam_hdr_destroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @destroy_rg_hash(ptr noundef %rg_hash) #0 !dbg !2052 {
entry:
  %rg_hash.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rg_hash, ptr %rg_hash.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %rg_hash.addr, metadata !2056, metadata !DIExpression()), !dbg !2059
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #17, !dbg !2060
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !2057, metadata !DIExpression()), !dbg !2061
  %0 = load ptr, ptr %rg_hash.addr, align 8, !dbg !2062, !tbaa !563
  %tobool = icmp ne ptr %0, null, !dbg !2062
  br i1 %tobool, label %if.end, label %if.then, !dbg !2064

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2065

if.end:                                           ; preds = %entry
  store i32 0, ptr %k, align 4, !dbg !2066, !tbaa !946
  br label %for.cond, !dbg !2068

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %k, align 4, !dbg !2069, !tbaa !946
  %2 = load ptr, ptr %rg_hash.addr, align 8, !dbg !2071, !tbaa !563
  %n_buckets = getelementptr inbounds %struct.kh_kh_rg_s, ptr %2, i32 0, i32 0, !dbg !2071
  %3 = load i32, ptr %n_buckets, align 8, !dbg !2071, !tbaa !2072
  %cmp = icmp ult i32 %1, %3, !dbg !2073
  br i1 %cmp, label %for.body, label %for.end, !dbg !2074

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %rg_hash.addr, align 8, !dbg !2075, !tbaa !563
  %flags = getelementptr inbounds %struct.kh_kh_rg_s, ptr %4, i32 0, i32 4, !dbg !2075
  %5 = load ptr, ptr %flags, align 8, !dbg !2075, !tbaa !2078
  %6 = load i32, ptr %k, align 4, !dbg !2075, !tbaa !946
  %shr = lshr i32 %6, 4, !dbg !2075
  %idxprom = zext i32 %shr to i64, !dbg !2075
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom, !dbg !2075
  %7 = load i32, ptr %arrayidx, align 4, !dbg !2075, !tbaa !946
  %8 = load i32, ptr %k, align 4, !dbg !2075, !tbaa !946
  %and = and i32 %8, 15, !dbg !2075
  %shl = shl i32 %and, 1, !dbg !2075
  %shr1 = lshr i32 %7, %shl, !dbg !2075
  %and2 = and i32 %shr1, 3, !dbg !2075
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2075
  br i1 %tobool3, label %if.end7, label %if.then4, !dbg !2079

if.then4:                                         ; preds = %for.body
  %9 = load ptr, ptr %rg_hash.addr, align 8, !dbg !2080, !tbaa !563
  %keys = getelementptr inbounds %struct.kh_kh_rg_s, ptr %9, i32 0, i32 5, !dbg !2080
  %10 = load ptr, ptr %keys, align 8, !dbg !2080, !tbaa !2081
  %11 = load i32, ptr %k, align 4, !dbg !2080, !tbaa !946
  %idxprom5 = zext i32 %11 to i64, !dbg !2080
  %arrayidx6 = getelementptr inbounds ptr, ptr %10, i64 %idxprom5, !dbg !2080
  %12 = load ptr, ptr %arrayidx6, align 8, !dbg !2080, !tbaa !563
  call void @free(ptr noundef %12) #17, !dbg !2082
  br label %if.end7, !dbg !2082

if.end7:                                          ; preds = %if.then4, %for.body
  br label %for.inc, !dbg !2083

for.inc:                                          ; preds = %if.end7
  %13 = load i32, ptr %k, align 4, !dbg !2084, !tbaa !946
  %inc = add i32 %13, 1, !dbg !2084
  store i32 %inc, ptr %k, align 4, !dbg !2084, !tbaa !946
  br label %for.cond, !dbg !2085, !llvm.loop !2086

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %rg_hash.addr, align 8, !dbg !2088, !tbaa !563
  call void @kh_destroy_kh_rg(ptr noundef %14), !dbg !2088
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2089
  br label %cleanup, !dbg !2089

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #17, !dbg !2089
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2089

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !2090 i32 @hts_close(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !2093 i32 @bcf_call_glfgen(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !2097 ptr @__ctype_toupper_loc() #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @toupper(i32 noundef %__c) #8 !dbg !2104 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4, !tbaa !946
  tail call void @llvm.dbg.declare(metadata ptr %__c.addr, metadata !2108, metadata !DIExpression()), !dbg !2109
  %0 = load i32, ptr %__c.addr, align 4, !dbg !2110, !tbaa !946
  %cmp = icmp sge i32 %0, -128, !dbg !2111
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !2112

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %__c.addr, align 4, !dbg !2113, !tbaa !946
  %cmp1 = icmp slt i32 %1, 256, !dbg !2114
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !2110

cond.true:                                        ; preds = %land.lhs.true
  %call = call ptr @__ctype_toupper_loc() #18, !dbg !2115
  %2 = load ptr, ptr %call, align 8, !dbg !2116, !tbaa !563
  %3 = load i32, ptr %__c.addr, align 4, !dbg !2117, !tbaa !946
  %idxprom = sext i32 %3 to i64, !dbg !2118
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom, !dbg !2118
  %4 = load i32, ptr %arrayidx, align 4, !dbg !2118, !tbaa !946
  br label %cond.end, !dbg !2110

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %__c.addr, align 4, !dbg !2119, !tbaa !946
  br label %cond.end, !dbg !2110

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !2110
  ret i32 %cond, !dbg !2120
}

declare !dbg !2121 i32 @bam_plp_insertion(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2125 signext i8 @bam_aux_getCSi(ptr noundef, i32 noundef) #2

declare !dbg !2128 signext i8 @bam_aux_getCEi(ptr noundef, i32 noundef) #2

declare !dbg !2129 signext i8 @bam_aux_getCQi(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !2130 ptr @__ctype_tolower_loc() #7

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @tolower(i32 noundef %__c) #8 !dbg !2131 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4, !tbaa !946
  tail call void @llvm.dbg.declare(metadata ptr %__c.addr, metadata !2133, metadata !DIExpression()), !dbg !2134
  %0 = load i32, ptr %__c.addr, align 4, !dbg !2135, !tbaa !946
  %cmp = icmp sge i32 %0, -128, !dbg !2136
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !2137

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %__c.addr, align 4, !dbg !2138, !tbaa !946
  %cmp1 = icmp slt i32 %1, 256, !dbg !2139
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !2135

cond.true:                                        ; preds = %land.lhs.true
  %call = call ptr @__ctype_tolower_loc() #18, !dbg !2140
  %2 = load ptr, ptr %call, align 8, !dbg !2141, !tbaa !563
  %3 = load i32, ptr %__c.addr, align 4, !dbg !2142, !tbaa !946
  %idxprom = sext i32 %3 to i64, !dbg !2143
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom, !dbg !2143
  %4 = load i32, ptr %arrayidx, align 4, !dbg !2143, !tbaa !946
  br label %cond.end, !dbg !2135

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %__c.addr, align 4, !dbg !2144, !tbaa !946
  br label %cond.end, !dbg !2135

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !2135
  ret i32 %cond, !dbg !2145
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ks_free(ptr noundef %s) #9 !dbg !2146 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2150, metadata !DIExpression()), !dbg !2151
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2152, !tbaa !563
  %tobool = icmp ne ptr %0, null, !dbg !2152
  br i1 %tobool, label %if.then, label %if.end, !dbg !2154

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !2155, !tbaa !563
  %s1 = getelementptr inbounds %struct.kstring_t, ptr %1, i32 0, i32 2, !dbg !2157
  %2 = load ptr, ptr %s1, align 8, !dbg !2157, !tbaa !1567
  call void @free(ptr noundef %2) #17, !dbg !2158
  %3 = load ptr, ptr %s.addr, align 8, !dbg !2159, !tbaa !563
  call void @ks_initialize(ptr noundef %3), !dbg !2160
  br label %if.end, !dbg !2161

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2162
}

; Function Attrs: nounwind uwtable
define dso_local i32 @base_draw_aln(ptr noundef %tv, i32 noundef %tid, i64 noundef %pos) #0 !dbg !2163 {
entry:
  %tv.addr = alloca ptr, align 8
  %tid.addr = alloca i32, align 4
  %pos.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %str = alloca ptr, align 8
  %ref_name = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %b = alloca ptr, align 8
  %pos57 = alloca i64, align 8
  %interval = alloca i32, align 4
  store ptr %tv, ptr %tv.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %tv.addr, metadata !2167, metadata !DIExpression()), !dbg !2250
  store i32 %tid, ptr %tid.addr, align 4, !tbaa !946
  tail call void @llvm.dbg.declare(metadata ptr %tid.addr, metadata !2168, metadata !DIExpression()), !dbg !2251
  store i64 %pos, ptr %pos.addr, align 8, !tbaa !948
  tail call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !2169, metadata !DIExpression()), !dbg !2252
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !2253
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2170, metadata !DIExpression()), !dbg !2254
  %0 = load ptr, ptr %tv.addr, align 8, !dbg !2255, !tbaa !563
  %cmp = icmp ne ptr %0, null, !dbg !2255
  br i1 %cmp, label %if.then, label %if.else, !dbg !2258

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !2258

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 355, ptr noundef @__PRETTY_FUNCTION__.base_draw_aln) #16, !dbg !2255
  unreachable, !dbg !2255

if.end:                                           ; preds = %if.then
  %1 = load ptr, ptr %tv.addr, align 8, !dbg !2259, !tbaa !563
  %my_clear = getelementptr inbounds %struct.AbstractTview, ptr %1, i32 0, i32 28, !dbg !2260
  %2 = load ptr, ptr %my_clear, align 8, !dbg !2260, !tbaa !2261
  %3 = load ptr, ptr %tv.addr, align 8, !dbg !2262, !tbaa !563
  call void %2(ptr noundef %3), !dbg !2259
  %4 = load i32, ptr %tid.addr, align 4, !dbg !2263, !tbaa !946
  %5 = load ptr, ptr %tv.addr, align 8, !dbg !2264, !tbaa !563
  %curr_tid = getelementptr inbounds %struct.AbstractTview, ptr %5, i32 0, i32 11, !dbg !2265
  store i32 %4, ptr %curr_tid, align 8, !dbg !2266, !tbaa !2267
  %6 = load i64, ptr %pos.addr, align 8, !dbg !2268, !tbaa !948
  %7 = load ptr, ptr %tv.addr, align 8, !dbg !2269, !tbaa !563
  %left_pos = getelementptr inbounds %struct.AbstractTview, ptr %7, i32 0, i32 8, !dbg !2270
  store i64 %6, ptr %left_pos, align 8, !dbg !2271, !tbaa !974
  %8 = load ptr, ptr %tv.addr, align 8, !dbg !2272, !tbaa !563
  %left_pos1 = getelementptr inbounds %struct.AbstractTview, ptr %8, i32 0, i32 8, !dbg !2273
  %9 = load i64, ptr %left_pos1, align 8, !dbg !2273, !tbaa !974
  %sub = sub nsw i64 %9, 1, !dbg !2274
  %10 = load ptr, ptr %tv.addr, align 8, !dbg !2275, !tbaa !563
  %last_pos = getelementptr inbounds %struct.AbstractTview, ptr %10, i32 0, i32 9, !dbg !2276
  store i64 %sub, ptr %last_pos, align 8, !dbg !2277, !tbaa !1009
  %11 = load ptr, ptr %tv.addr, align 8, !dbg !2278, !tbaa !563
  %ccol = getelementptr inbounds %struct.AbstractTview, ptr %11, i32 0, i32 12, !dbg !2279
  store i32 0, ptr %ccol, align 4, !dbg !2280, !tbaa !979
  %12 = load ptr, ptr %tv.addr, align 8, !dbg !2281, !tbaa !563
  %fai = getelementptr inbounds %struct.AbstractTview, ptr %12, i32 0, i32 6, !dbg !2282
  %13 = load ptr, ptr %fai, align 8, !dbg !2282, !tbaa !680
  %tobool = icmp ne ptr %13, null, !dbg !2281
  br i1 %tobool, label %if.then2, label %if.end32, !dbg !2283

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #17, !dbg !2284
  tail call void @llvm.dbg.declare(metadata ptr %str, metadata !2171, metadata !DIExpression()), !dbg !2285
  %14 = load ptr, ptr %tv.addr, align 8, !dbg !2286, !tbaa !563
  %ref = getelementptr inbounds %struct.AbstractTview, ptr %14, i32 0, i32 21, !dbg !2288
  %15 = load ptr, ptr %ref, align 8, !dbg !2288, !tbaa !987
  %tobool3 = icmp ne ptr %15, null, !dbg !2286
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !2289

if.then4:                                         ; preds = %if.then2
  %16 = load ptr, ptr %tv.addr, align 8, !dbg !2290, !tbaa !563
  %ref5 = getelementptr inbounds %struct.AbstractTview, ptr %16, i32 0, i32 21, !dbg !2291
  %17 = load ptr, ptr %ref5, align 8, !dbg !2291, !tbaa !987
  call void @free(ptr noundef %17) #17, !dbg !2292
  br label %if.end6, !dbg !2292

if.end6:                                          ; preds = %if.then4, %if.then2
  %18 = load ptr, ptr %tv.addr, align 8, !dbg !2293, !tbaa !563
  %curr_tid7 = getelementptr inbounds %struct.AbstractTview, ptr %18, i32 0, i32 11, !dbg !2293
  %19 = load i32, ptr %curr_tid7, align 8, !dbg !2293, !tbaa !2267
  %cmp8 = icmp sge i32 %19, 0, !dbg !2293
  br i1 %cmp8, label %if.then9, label %if.else10, !dbg !2296

if.then9:                                         ; preds = %if.end6
  br label %if.end11, !dbg !2296

if.else10:                                        ; preds = %if.end6
  call void @__assert_fail(ptr noundef @.str.14, ptr noundef @.str.1, i32 noundef 365, ptr noundef @__PRETTY_FUNCTION__.base_draw_aln) #16, !dbg !2293
  unreachable, !dbg !2293

if.end11:                                         ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref_name) #17, !dbg !2297
  tail call void @llvm.dbg.declare(metadata ptr %ref_name, metadata !2174, metadata !DIExpression()), !dbg !2298
  %20 = load ptr, ptr %tv.addr, align 8, !dbg !2299, !tbaa !563
  %header = getelementptr inbounds %struct.AbstractTview, ptr %20, i32 0, i32 4, !dbg !2300
  %21 = load ptr, ptr %header, align 8, !dbg !2300, !tbaa !624
  %22 = load ptr, ptr %tv.addr, align 8, !dbg !2301, !tbaa !563
  %curr_tid12 = getelementptr inbounds %struct.AbstractTview, ptr %22, i32 0, i32 11, !dbg !2302
  %23 = load i32, ptr %curr_tid12, align 8, !dbg !2302, !tbaa !2267
  %call = call ptr @sam_hdr_tid2name(ptr noundef %21, i32 noundef %23), !dbg !2303
  store ptr %call, ptr %ref_name, align 8, !dbg !2298, !tbaa !563
  %24 = load ptr, ptr %ref_name, align 8, !dbg !2304, !tbaa !563
  %call13 = call i64 @strlen(ptr noundef %24) #19, !dbg !2305
  %add = add i64 %call13, 30, !dbg !2306
  %call14 = call noalias ptr @calloc(i64 noundef %add, i64 noundef 1) #20, !dbg !2307
  store ptr %call14, ptr %str, align 8, !dbg !2308, !tbaa !563
  %25 = load ptr, ptr %str, align 8, !dbg !2309, !tbaa !563
  %cmp15 = icmp ne ptr %25, null, !dbg !2309
  br i1 %cmp15, label %if.then16, label %if.else17, !dbg !2312

if.then16:                                        ; preds = %if.end11
  br label %if.end18, !dbg !2312

if.else17:                                        ; preds = %if.end11
  call void @__assert_fail(ptr noundef @.str.15, ptr noundef @.str.1, i32 noundef 369, ptr noundef @__PRETTY_FUNCTION__.base_draw_aln) #16, !dbg !2309
  unreachable, !dbg !2309

if.end18:                                         ; preds = %if.then16
  %26 = load ptr, ptr %str, align 8, !dbg !2313, !tbaa !563
  %27 = load ptr, ptr %ref_name, align 8, !dbg !2314, !tbaa !563
  %28 = load ptr, ptr %tv.addr, align 8, !dbg !2315, !tbaa !563
  %left_pos19 = getelementptr inbounds %struct.AbstractTview, ptr %28, i32 0, i32 8, !dbg !2316
  %29 = load i64, ptr %left_pos19, align 8, !dbg !2316, !tbaa !974
  %add20 = add nsw i64 %29, 1, !dbg !2317
  %30 = load ptr, ptr %tv.addr, align 8, !dbg !2318, !tbaa !563
  %left_pos21 = getelementptr inbounds %struct.AbstractTview, ptr %30, i32 0, i32 8, !dbg !2319
  %31 = load i64, ptr %left_pos21, align 8, !dbg !2319, !tbaa !974
  %32 = load ptr, ptr %tv.addr, align 8, !dbg !2320, !tbaa !563
  %mcol = getelementptr inbounds %struct.AbstractTview, ptr %32, i32 0, i32 1, !dbg !2321
  %33 = load i32, ptr %mcol, align 4, !dbg !2321, !tbaa !591
  %conv = sext i32 %33 to i64, !dbg !2320
  %add22 = add nsw i64 %31, %conv, !dbg !2322
  %call23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %26, ptr noundef @.str.16, ptr noundef %27, i64 noundef %add20, i64 noundef %add22) #17, !dbg !2323
  %34 = load ptr, ptr %tv.addr, align 8, !dbg !2324, !tbaa !563
  %fai24 = getelementptr inbounds %struct.AbstractTview, ptr %34, i32 0, i32 6, !dbg !2325
  %35 = load ptr, ptr %fai24, align 8, !dbg !2325, !tbaa !680
  %36 = load ptr, ptr %str, align 8, !dbg !2326, !tbaa !563
  %37 = load ptr, ptr %tv.addr, align 8, !dbg !2327, !tbaa !563
  %l_ref = getelementptr inbounds %struct.AbstractTview, ptr %37, i32 0, i32 10, !dbg !2328
  %call25 = call ptr @fai_fetch64(ptr noundef %35, ptr noundef %36, ptr noundef %l_ref), !dbg !2329
  %38 = load ptr, ptr %tv.addr, align 8, !dbg !2330, !tbaa !563
  %ref26 = getelementptr inbounds %struct.AbstractTview, ptr %38, i32 0, i32 21, !dbg !2331
  store ptr %call25, ptr %ref26, align 8, !dbg !2332, !tbaa !987
  %39 = load ptr, ptr %str, align 8, !dbg !2333, !tbaa !563
  call void @free(ptr noundef %39) #17, !dbg !2334
  %40 = load ptr, ptr %tv.addr, align 8, !dbg !2335, !tbaa !563
  %ref27 = getelementptr inbounds %struct.AbstractTview, ptr %40, i32 0, i32 21, !dbg !2337
  %41 = load ptr, ptr %ref27, align 8, !dbg !2337, !tbaa !987
  %tobool28 = icmp ne ptr %41, null, !dbg !2335
  br i1 %tobool28, label %if.end31, label %if.then29, !dbg !2338

if.then29:                                        ; preds = %if.end18
  %42 = load ptr, ptr @stderr, align 8, !dbg !2339, !tbaa !563
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.17), !dbg !2341
  call void @exit(i32 noundef 1) #16, !dbg !2342
  unreachable, !dbg !2342

if.end31:                                         ; preds = %if.end18
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref_name) #17, !dbg !2343
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #17, !dbg !2343
  br label %if.end32, !dbg !2344

if.end32:                                         ; preds = %if.end31, %if.end
  %43 = load ptr, ptr %tv.addr, align 8, !dbg !2345, !tbaa !563
  %lplbuf = getelementptr inbounds %struct.AbstractTview, ptr %43, i32 0, i32 3, !dbg !2346
  %44 = load ptr, ptr %lplbuf, align 8, !dbg !2346, !tbaa !671
  call void @bam_lplbuf_reset(ptr noundef %44), !dbg !2347
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #17, !dbg !2348
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !2175, metadata !DIExpression()), !dbg !2349
  %45 = load ptr, ptr %tv.addr, align 8, !dbg !2350, !tbaa !563
  %idx = getelementptr inbounds %struct.AbstractTview, ptr %45, i32 0, i32 2, !dbg !2351
  %46 = load ptr, ptr %idx, align 8, !dbg !2351, !tbaa !647
  %47 = load ptr, ptr %tv.addr, align 8, !dbg !2352, !tbaa !563
  %curr_tid33 = getelementptr inbounds %struct.AbstractTview, ptr %47, i32 0, i32 11, !dbg !2353
  %48 = load i32, ptr %curr_tid33, align 8, !dbg !2353, !tbaa !2267
  %49 = load ptr, ptr %tv.addr, align 8, !dbg !2354, !tbaa !563
  %left_pos34 = getelementptr inbounds %struct.AbstractTview, ptr %49, i32 0, i32 8, !dbg !2355
  %50 = load i64, ptr %left_pos34, align 8, !dbg !2355, !tbaa !974
  %51 = load ptr, ptr %tv.addr, align 8, !dbg !2356, !tbaa !563
  %left_pos35 = getelementptr inbounds %struct.AbstractTview, ptr %51, i32 0, i32 8, !dbg !2357
  %52 = load i64, ptr %left_pos35, align 8, !dbg !2357, !tbaa !974
  %53 = load ptr, ptr %tv.addr, align 8, !dbg !2358, !tbaa !563
  %mcol36 = getelementptr inbounds %struct.AbstractTview, ptr %53, i32 0, i32 1, !dbg !2359
  %54 = load i32, ptr %mcol36, align 4, !dbg !2359, !tbaa !591
  %conv37 = sext i32 %54 to i64, !dbg !2358
  %add38 = add nsw i64 %52, %conv37, !dbg !2360
  %call39 = call ptr @sam_itr_queryi(ptr noundef %46, i32 noundef %48, i64 noundef %50, i64 noundef %add38), !dbg !2361
  store ptr %call39, ptr %iter, align 8, !dbg !2349, !tbaa !563
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #17, !dbg !2362
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !2246, metadata !DIExpression()), !dbg !2363
  %call40 = call ptr @bam_init1(), !dbg !2364
  store ptr %call40, ptr %b, align 8, !dbg !2363, !tbaa !563
  br label %while.cond, !dbg !2365

while.cond:                                       ; preds = %while.body, %if.end32
  %55 = load ptr, ptr %tv.addr, align 8, !dbg !2366, !tbaa !563
  %fp = getelementptr inbounds %struct.AbstractTview, ptr %55, i32 0, i32 5, !dbg !2367
  %56 = load ptr, ptr %fp, align 8, !dbg !2367, !tbaa !604
  %57 = load ptr, ptr %iter, align 8, !dbg !2368, !tbaa !563
  %58 = load ptr, ptr %b, align 8, !dbg !2369, !tbaa !563
  %call41 = call i32 @sam_itr_next(ptr noundef %56, ptr noundef %57, ptr noundef %58), !dbg !2370
  store i32 %call41, ptr %ret, align 4, !dbg !2371, !tbaa !946
  %cmp42 = icmp sge i32 %call41, 0, !dbg !2372
  br i1 %cmp42, label %while.body, label %while.end, !dbg !2365

while.body:                                       ; preds = %while.cond
  %59 = load ptr, ptr %b, align 8, !dbg !2373, !tbaa !563
  %60 = load ptr, ptr %tv.addr, align 8, !dbg !2374, !tbaa !563
  %call44 = call i32 @tv_push_aln(ptr noundef %59, ptr noundef %60), !dbg !2375
  br label %while.cond, !dbg !2365, !llvm.loop !2376

while.end:                                        ; preds = %while.cond
  %61 = load ptr, ptr %b, align 8, !dbg !2378, !tbaa !563
  call void @bam_destroy1(ptr noundef %61), !dbg !2379
  %62 = load ptr, ptr %iter, align 8, !dbg !2380, !tbaa !563
  call void @hts_itr_destroy(ptr noundef %62), !dbg !2381
  %63 = load i32, ptr %ret, align 4, !dbg !2382, !tbaa !946
  %cmp45 = icmp slt i32 %63, -1, !dbg !2384
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !2385

if.then47:                                        ; preds = %while.end
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str.4, ptr noundef @.str.18), !dbg !2386
  call void @exit(i32 noundef 1) #16, !dbg !2388
  unreachable, !dbg !2388

if.end48:                                         ; preds = %while.end
  %64 = load ptr, ptr %tv.addr, align 8, !dbg !2389, !tbaa !563
  %lplbuf49 = getelementptr inbounds %struct.AbstractTview, ptr %64, i32 0, i32 3, !dbg !2390
  %65 = load ptr, ptr %lplbuf49, align 8, !dbg !2390, !tbaa !671
  %call50 = call i32 @bam_lplbuf_push(ptr noundef null, ptr noundef %65), !dbg !2391
  br label %while.cond51, !dbg !2392

while.cond51:                                     ; preds = %cond.end, %if.end48
  %66 = load ptr, ptr %tv.addr, align 8, !dbg !2393, !tbaa !563
  %ccol52 = getelementptr inbounds %struct.AbstractTview, ptr %66, i32 0, i32 12, !dbg !2394
  %67 = load i32, ptr %ccol52, align 4, !dbg !2394, !tbaa !979
  %68 = load ptr, ptr %tv.addr, align 8, !dbg !2395, !tbaa !563
  %mcol53 = getelementptr inbounds %struct.AbstractTview, ptr %68, i32 0, i32 1, !dbg !2396
  %69 = load i32, ptr %mcol53, align 4, !dbg !2396, !tbaa !591
  %cmp54 = icmp slt i32 %67, %69, !dbg !2397
  br i1 %cmp54, label %while.body56, label %while.end88, !dbg !2392

while.body56:                                     ; preds = %while.cond51
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos57) #17, !dbg !2398
  tail call void @llvm.dbg.declare(metadata ptr %pos57, metadata !2247, metadata !DIExpression()), !dbg !2399
  %70 = load ptr, ptr %tv.addr, align 8, !dbg !2400, !tbaa !563
  %last_pos58 = getelementptr inbounds %struct.AbstractTview, ptr %70, i32 0, i32 9, !dbg !2401
  %71 = load i64, ptr %last_pos58, align 8, !dbg !2401, !tbaa !1009
  %add59 = add nsw i64 %71, 1, !dbg !2402
  store i64 %add59, ptr %pos57, align 8, !dbg !2399, !tbaa !948
  call void @llvm.lifetime.start.p0(i64 4, ptr %interval) #17, !dbg !2403
  tail call void @llvm.dbg.declare(metadata ptr %interval, metadata !2249, metadata !DIExpression()), !dbg !2404
  %72 = load i64, ptr %pos57, align 8, !dbg !2405, !tbaa !948
  %cmp60 = icmp slt i64 %72, 1000000000, !dbg !2406
  %73 = zext i1 %cmp60 to i64, !dbg !2405
  %cond = select i1 %cmp60, i32 10, i32 20, !dbg !2405
  store i32 %cond, ptr %interval, align 4, !dbg !2404, !tbaa !946
  %74 = load i64, ptr %pos57, align 8, !dbg !2407, !tbaa !948
  %75 = load i32, ptr %interval, align 4, !dbg !2409, !tbaa !946
  %conv62 = sext i32 %75 to i64, !dbg !2409
  %rem = srem i64 %74, %conv62, !dbg !2410
  %cmp63 = icmp eq i64 %rem, 0, !dbg !2411
  br i1 %cmp63, label %land.lhs.true, label %if.end73, !dbg !2412

land.lhs.true:                                    ; preds = %while.body56
  %76 = load ptr, ptr %tv.addr, align 8, !dbg !2413, !tbaa !563
  %mcol65 = getelementptr inbounds %struct.AbstractTview, ptr %76, i32 0, i32 1, !dbg !2414
  %77 = load i32, ptr %mcol65, align 4, !dbg !2414, !tbaa !591
  %78 = load ptr, ptr %tv.addr, align 8, !dbg !2415, !tbaa !563
  %ccol66 = getelementptr inbounds %struct.AbstractTview, ptr %78, i32 0, i32 12, !dbg !2416
  %79 = load i32, ptr %ccol66, align 4, !dbg !2416, !tbaa !979
  %sub67 = sub nsw i32 %77, %79, !dbg !2417
  %cmp68 = icmp sge i32 %sub67, 10, !dbg !2418
  br i1 %cmp68, label %if.then70, label %if.end73, !dbg !2419

if.then70:                                        ; preds = %land.lhs.true
  %80 = load ptr, ptr %tv.addr, align 8, !dbg !2420, !tbaa !563
  %my_mvprintw = getelementptr inbounds %struct.AbstractTview, ptr %80, i32 0, i32 24, !dbg !2421
  %81 = load ptr, ptr %my_mvprintw, align 8, !dbg !2421, !tbaa !1037
  %82 = load ptr, ptr %tv.addr, align 8, !dbg !2422, !tbaa !563
  %83 = load ptr, ptr %tv.addr, align 8, !dbg !2423, !tbaa !563
  %ccol71 = getelementptr inbounds %struct.AbstractTview, ptr %83, i32 0, i32 12, !dbg !2424
  %84 = load i32, ptr %ccol71, align 4, !dbg !2424, !tbaa !979
  %85 = load i64, ptr %pos57, align 8, !dbg !2425, !tbaa !948
  %add72 = add nsw i64 %85, 1, !dbg !2426
  call void (ptr, i32, i32, ptr, ...) %81(ptr noundef %82, i32 noundef 0, i32 noundef %84, ptr noundef @.str.10, i64 noundef %add72), !dbg !2420
  br label %if.end73, !dbg !2420

if.end73:                                         ; preds = %if.then70, %land.lhs.true, %while.body56
  %86 = load ptr, ptr %tv.addr, align 8, !dbg !2427, !tbaa !563
  %my_mvaddch = getelementptr inbounds %struct.AbstractTview, ptr %86, i32 0, i32 25, !dbg !2428
  %87 = load ptr, ptr %my_mvaddch, align 8, !dbg !2428, !tbaa !1054
  %88 = load ptr, ptr %tv.addr, align 8, !dbg !2429, !tbaa !563
  %89 = load ptr, ptr %tv.addr, align 8, !dbg !2430, !tbaa !563
  %ccol74 = getelementptr inbounds %struct.AbstractTview, ptr %89, i32 0, i32 12, !dbg !2431
  %90 = load i32, ptr %ccol74, align 4, !dbg !2432, !tbaa !979
  %inc = add nsw i32 %90, 1, !dbg !2432
  store i32 %inc, ptr %ccol74, align 4, !dbg !2432, !tbaa !979
  %91 = load ptr, ptr %tv.addr, align 8, !dbg !2433, !tbaa !563
  %ref75 = getelementptr inbounds %struct.AbstractTview, ptr %91, i32 0, i32 21, !dbg !2434
  %92 = load ptr, ptr %ref75, align 8, !dbg !2434, !tbaa !987
  %tobool76 = icmp ne ptr %92, null, !dbg !2433
  br i1 %tobool76, label %land.lhs.true77, label %cond.false, !dbg !2435

land.lhs.true77:                                  ; preds = %if.end73
  %93 = load i64, ptr %pos57, align 8, !dbg !2436, !tbaa !948
  %94 = load ptr, ptr %tv.addr, align 8, !dbg !2437, !tbaa !563
  %l_ref78 = getelementptr inbounds %struct.AbstractTview, ptr %94, i32 0, i32 10, !dbg !2438
  %95 = load i64, ptr %l_ref78, align 8, !dbg !2438, !tbaa !995
  %cmp79 = icmp slt i64 %93, %95, !dbg !2439
  br i1 %cmp79, label %cond.true, label %cond.false, !dbg !2440

cond.true:                                        ; preds = %land.lhs.true77
  %96 = load ptr, ptr %tv.addr, align 8, !dbg !2441, !tbaa !563
  %ref81 = getelementptr inbounds %struct.AbstractTview, ptr %96, i32 0, i32 21, !dbg !2442
  %97 = load ptr, ptr %ref81, align 8, !dbg !2442, !tbaa !987
  %98 = load i64, ptr %pos57, align 8, !dbg !2443, !tbaa !948
  %99 = load ptr, ptr %tv.addr, align 8, !dbg !2444, !tbaa !563
  %left_pos82 = getelementptr inbounds %struct.AbstractTview, ptr %99, i32 0, i32 8, !dbg !2445
  %100 = load i64, ptr %left_pos82, align 8, !dbg !2445, !tbaa !974
  %sub83 = sub nsw i64 %98, %100, !dbg !2446
  %arrayidx = getelementptr inbounds i8, ptr %97, i64 %sub83, !dbg !2441
  %101 = load i8, ptr %arrayidx, align 1, !dbg !2441, !tbaa !1004
  %conv84 = sext i8 %101 to i32, !dbg !2441
  br label %cond.end, !dbg !2440

cond.false:                                       ; preds = %land.lhs.true77, %if.end73
  br label %cond.end, !dbg !2440

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond85 = phi i32 [ %conv84, %cond.true ], [ 78, %cond.false ], !dbg !2440
  call void %87(ptr noundef %88, i32 noundef 1, i32 noundef %90, i32 noundef %cond85), !dbg !2427
  %102 = load ptr, ptr %tv.addr, align 8, !dbg !2447, !tbaa !563
  %last_pos86 = getelementptr inbounds %struct.AbstractTview, ptr %102, i32 0, i32 9, !dbg !2448
  %103 = load i64, ptr %last_pos86, align 8, !dbg !2449, !tbaa !1009
  %inc87 = add nsw i64 %103, 1, !dbg !2449
  store i64 %inc87, ptr %last_pos86, align 8, !dbg !2449, !tbaa !1009
  call void @llvm.lifetime.end.p0(i64 4, ptr %interval) #17, !dbg !2450
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos57) #17, !dbg !2450
  br label %while.cond51, !dbg !2392, !llvm.loop !2451

while.end88:                                      ; preds = %while.cond51
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #17, !dbg !2452
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #17, !dbg !2452
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !2452
  ret i32 0, !dbg !2453
}

declare !dbg !2454 ptr @sam_hdr_tid2name(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !2459 noalias ptr @calloc(i64 noundef, i64 noundef) #10

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2462 i64 @strlen(ptr noundef) #11

; Function Attrs: nounwind
declare !dbg !2466 i32 @sprintf(ptr noundef, ptr noundef, ...) #3

declare !dbg !2472 ptr @fai_fetch64(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2477 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !2533 void @bam_lplbuf_reset(ptr noundef) #2

declare !dbg !2534 ptr @sam_itr_queryi(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

declare !dbg !2539 ptr @bam_init1() #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sam_itr_next(ptr noundef %htsfp, ptr noundef %itr, ptr noundef %r) #9 !dbg !2542 {
entry:
  %retval = alloca i32, align 4
  %htsfp.addr = alloca ptr, align 8
  %itr.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  store ptr %htsfp, ptr %htsfp.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %htsfp.addr, metadata !2546, metadata !DIExpression()), !dbg !2549
  store ptr %itr, ptr %itr.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %itr.addr, metadata !2547, metadata !DIExpression()), !dbg !2550
  store ptr %r, ptr %r.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2548, metadata !DIExpression()), !dbg !2551
  %0 = load ptr, ptr %htsfp.addr, align 8, !dbg !2552, !tbaa !563
  %bf.load = load i32, ptr %0, align 8, !dbg !2554
  %bf.lshr = lshr i32 %bf.load, 4, !dbg !2554
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2554
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2552
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2555

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %htsfp.addr, align 8, !dbg !2556, !tbaa !563
  %bf.load1 = load i32, ptr %1, align 8, !dbg !2557
  %bf.lshr2 = lshr i32 %bf.load1, 3, !dbg !2557
  %bf.clear3 = and i32 %bf.lshr2, 1, !dbg !2557
  %tobool4 = icmp ne i32 %bf.clear3, 0, !dbg !2556
  br i1 %tobool4, label %if.end, label %if.then, !dbg !2558

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %htsfp.addr, align 8, !dbg !2559, !tbaa !563
  %fn = getelementptr inbounds %struct.htsFile, ptr %2, i32 0, i32 3, !dbg !2559
  %3 = load ptr, ptr %fn, align 8, !dbg !2559, !tbaa !2561
  %tobool5 = icmp ne ptr %3, null, !dbg !2559
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !2559

cond.true:                                        ; preds = %if.then
  %4 = load ptr, ptr %htsfp.addr, align 8, !dbg !2559, !tbaa !563
  %fn6 = getelementptr inbounds %struct.htsFile, ptr %4, i32 0, i32 3, !dbg !2559
  %5 = load ptr, ptr %fn6, align 8, !dbg !2559, !tbaa !2561
  br label %cond.end, !dbg !2559

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !2559

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ @.str.39, %cond.false ], !dbg !2559
  call void (i32, ptr, ptr, ...) @hts_log(i32 noundef 1, ptr noundef @__func__.sam_itr_next, ptr noundef @.str.38, ptr noundef %cond), !dbg !2559
  store i32 -2, ptr %retval, align 4, !dbg !2565
  br label %return, !dbg !2565

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %itr.addr, align 8, !dbg !2566, !tbaa !563
  %tobool7 = icmp ne ptr %6, null, !dbg !2566
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2568

if.then8:                                         ; preds = %if.end
  call void (i32, ptr, ptr, ...) @hts_log(i32 noundef 1, ptr noundef @__func__.sam_itr_next, ptr noundef @.str.40), !dbg !2569
  store i32 -2, ptr %retval, align 4, !dbg !2571
  br label %return, !dbg !2571

if.end9:                                          ; preds = %if.end
  %7 = load ptr, ptr %itr.addr, align 8, !dbg !2572, !tbaa !563
  %bf.load10 = load i32, ptr %7, align 8, !dbg !2574
  %bf.lshr11 = lshr i32 %bf.load10, 4, !dbg !2574
  %bf.clear12 = and i32 %bf.lshr11, 1, !dbg !2574
  %tobool13 = icmp ne i32 %bf.clear12, 0, !dbg !2572
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !2575

if.then14:                                        ; preds = %if.end9
  %8 = load ptr, ptr %htsfp.addr, align 8, !dbg !2576, !tbaa !563
  %9 = load ptr, ptr %itr.addr, align 8, !dbg !2577, !tbaa !563
  %10 = load ptr, ptr %r.addr, align 8, !dbg !2578, !tbaa !563
  %call = call i32 @hts_itr_multi_next(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !2579
  store i32 %call, ptr %retval, align 4, !dbg !2580
  br label %return, !dbg !2580

if.else:                                          ; preds = %if.end9
  %11 = load ptr, ptr %htsfp.addr, align 8, !dbg !2581, !tbaa !563
  %bf.load15 = load i32, ptr %11, align 8, !dbg !2582
  %bf.lshr16 = lshr i32 %bf.load15, 4, !dbg !2582
  %bf.clear17 = and i32 %bf.lshr16, 1, !dbg !2582
  %tobool18 = icmp ne i32 %bf.clear17, 0, !dbg !2581
  br i1 %tobool18, label %cond.true19, label %cond.false20, !dbg !2581

cond.true19:                                      ; preds = %if.else
  %12 = load ptr, ptr %htsfp.addr, align 8, !dbg !2583, !tbaa !563
  %fp = getelementptr inbounds %struct.htsFile, ptr %12, i32 0, i32 5, !dbg !2584
  %13 = load ptr, ptr %fp, align 8, !dbg !2585, !tbaa !1004
  br label %cond.end21, !dbg !2581

cond.false20:                                     ; preds = %if.else
  br label %cond.end21, !dbg !2581

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi ptr [ %13, %cond.true19 ], [ null, %cond.false20 ], !dbg !2581
  %14 = load ptr, ptr %itr.addr, align 8, !dbg !2586, !tbaa !563
  %15 = load ptr, ptr %r.addr, align 8, !dbg !2587, !tbaa !563
  %16 = load ptr, ptr %htsfp.addr, align 8, !dbg !2588, !tbaa !563
  %call23 = call i32 @hts_itr_next(ptr noundef %cond22, ptr noundef %14, ptr noundef %15, ptr noundef %16), !dbg !2589
  store i32 %call23, ptr %retval, align 4, !dbg !2590
  br label %return, !dbg !2590

return:                                           ; preds = %cond.end21, %if.then14, %if.then8, %cond.end
  %17 = load i32, ptr %retval, align 4, !dbg !2591
  ret i32 %17, !dbg !2591
}

; Function Attrs: nounwind uwtable
define internal i32 @tv_push_aln(ptr noundef %b, ptr noundef %tv) #0 !dbg !2592 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %tv.addr = alloca ptr, align 8
  %rg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  %cigar = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2598, metadata !DIExpression()), !dbg !2610
  store ptr %tv, ptr %tv.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %tv.addr, metadata !2599, metadata !DIExpression()), !dbg !2611
  %0 = load ptr, ptr %tv.addr, align 8, !dbg !2612, !tbaa !563
  %rg_hash = getelementptr inbounds %struct.AbstractTview, ptr %0, i32 0, i32 22, !dbg !2613
  %1 = load ptr, ptr %rg_hash, align 8, !dbg !2613, !tbaa !701
  %tobool = icmp ne ptr %1, null, !dbg !2612
  br i1 %tobool, label %if.then, label %if.end9, !dbg !2614

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %rg) #17, !dbg !2615
  tail call void @llvm.dbg.declare(metadata ptr %rg, metadata !2600, metadata !DIExpression()), !dbg !2616
  %2 = load ptr, ptr %b.addr, align 8, !dbg !2617, !tbaa !563
  %call = call ptr @bam_aux_get(ptr noundef %2, ptr noundef @.str.34), !dbg !2618
  store ptr %call, ptr %rg, align 8, !dbg !2616, !tbaa !563
  %3 = load ptr, ptr %rg, align 8, !dbg !2619, !tbaa !563
  %tobool1 = icmp ne ptr %3, null, !dbg !2619
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !2621

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !2622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !2622

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #17, !dbg !2623
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !2605, metadata !DIExpression()), !dbg !2624
  %4 = load ptr, ptr %tv.addr, align 8, !dbg !2625, !tbaa !563
  %rg_hash3 = getelementptr inbounds %struct.AbstractTview, ptr %4, i32 0, i32 22, !dbg !2625
  %5 = load ptr, ptr %rg_hash3, align 8, !dbg !2625, !tbaa !701
  %6 = load ptr, ptr %rg, align 8, !dbg !2625, !tbaa !563
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 1, !dbg !2625
  %call4 = call i32 @kh_get_kh_rg(ptr noundef %5, ptr noundef %add.ptr), !dbg !2625
  store i32 %call4, ptr %k, align 4, !dbg !2624, !tbaa !946
  %7 = load i32, ptr %k, align 4, !dbg !2626, !tbaa !946
  %8 = load ptr, ptr %tv.addr, align 8, !dbg !2628, !tbaa !563
  %rg_hash5 = getelementptr inbounds %struct.AbstractTview, ptr %8, i32 0, i32 22, !dbg !2628
  %9 = load ptr, ptr %rg_hash5, align 8, !dbg !2628, !tbaa !701
  %n_buckets = getelementptr inbounds %struct.kh_kh_rg_s, ptr %9, i32 0, i32 0, !dbg !2628
  %10 = load i32, ptr %n_buckets, align 8, !dbg !2628, !tbaa !2072
  %cmp = icmp eq i32 %7, %10, !dbg !2629
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2630

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2631
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2631

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2632
  br label %cleanup, !dbg !2632

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #17, !dbg !2632
  br label %cleanup8

cleanup8:                                         ; preds = %cleanup, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %rg) #17, !dbg !2632
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup8
  br label %if.end9, !dbg !2633

if.end9:                                          ; preds = %cleanup.cont, %entry
  %11 = load ptr, ptr %tv.addr, align 8, !dbg !2634, !tbaa !563
  %no_skip = getelementptr inbounds %struct.AbstractTview, ptr %11, i32 0, i32 18, !dbg !2635
  %12 = load i32, ptr %no_skip, align 4, !dbg !2635, !tbaa !2636
  %tobool10 = icmp ne i32 %12, 0, !dbg !2634
  br i1 %tobool10, label %if.then11, label %if.end24, !dbg !2637

if.then11:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %cigar) #17, !dbg !2638
  tail call void @llvm.dbg.declare(metadata ptr %cigar, metadata !2606, metadata !DIExpression()), !dbg !2639
  %13 = load ptr, ptr %b.addr, align 8, !dbg !2640, !tbaa !563
  %data = getelementptr inbounds %struct.bam1_t, ptr %13, i32 0, i32 2, !dbg !2640
  %14 = load ptr, ptr %data, align 8, !dbg !2640, !tbaa !1473
  %15 = load ptr, ptr %b.addr, align 8, !dbg !2640, !tbaa !563
  %core = getelementptr inbounds %struct.bam1_t, ptr %15, i32 0, i32 0, !dbg !2640
  %l_qname = getelementptr inbounds %struct.bam1_core_t, ptr %core, i32 0, i32 6, !dbg !2640
  %16 = load i16, ptr %l_qname, align 2, !dbg !2640, !tbaa !1481
  %conv = zext i16 %16 to i32, !dbg !2640
  %idx.ext = sext i32 %conv to i64, !dbg !2640
  %add.ptr12 = getelementptr inbounds i8, ptr %14, i64 %idx.ext, !dbg !2640
  store ptr %add.ptr12, ptr %cigar, align 8, !dbg !2639, !tbaa !563
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !2641
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2609, metadata !DIExpression()), !dbg !2642
  store i32 0, ptr %i, align 4, !dbg !2643, !tbaa !946
  br label %for.cond, !dbg !2645

for.cond:                                         ; preds = %for.inc, %if.then11
  %17 = load i32, ptr %i, align 4, !dbg !2646, !tbaa !946
  %18 = load ptr, ptr %b.addr, align 8, !dbg !2648, !tbaa !563
  %core13 = getelementptr inbounds %struct.bam1_t, ptr %18, i32 0, i32 0, !dbg !2649
  %n_cigar = getelementptr inbounds %struct.bam1_core_t, ptr %core13, i32 0, i32 7, !dbg !2650
  %19 = load i32, ptr %n_cigar, align 4, !dbg !2650, !tbaa !1491
  %cmp14 = icmp ult i32 %17, %19, !dbg !2651
  br i1 %cmp14, label %for.body, label %for.end, !dbg !2652

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %cigar, align 8, !dbg !2653, !tbaa !563
  %21 = load i32, ptr %i, align 4, !dbg !2656, !tbaa !946
  %idxprom = sext i32 %21 to i64, !dbg !2653
  %arrayidx = getelementptr inbounds i32, ptr %20, i64 %idxprom, !dbg !2653
  %22 = load i32, ptr %arrayidx, align 4, !dbg !2653, !tbaa !946
  %and = and i32 %22, 15, !dbg !2657
  %cmp16 = icmp eq i32 %and, 3, !dbg !2658
  br i1 %cmp16, label %if.then18, label %if.end23, !dbg !2659

if.then18:                                        ; preds = %for.body
  %23 = load ptr, ptr %cigar, align 8, !dbg !2660, !tbaa !563
  %24 = load i32, ptr %i, align 4, !dbg !2661, !tbaa !946
  %idxprom19 = sext i32 %24 to i64, !dbg !2660
  %arrayidx20 = getelementptr inbounds i32, ptr %23, i64 %idxprom19, !dbg !2660
  %25 = load i32, ptr %arrayidx20, align 4, !dbg !2660, !tbaa !946
  %shr = lshr i32 %25, 4, !dbg !2662
  %shl = shl i32 %shr, 4, !dbg !2663
  %or = or i32 %shl, 2, !dbg !2664
  %26 = load ptr, ptr %cigar, align 8, !dbg !2665, !tbaa !563
  %27 = load i32, ptr %i, align 4, !dbg !2666, !tbaa !946
  %idxprom21 = sext i32 %27 to i64, !dbg !2665
  %arrayidx22 = getelementptr inbounds i32, ptr %26, i64 %idxprom21, !dbg !2665
  store i32 %or, ptr %arrayidx22, align 4, !dbg !2667, !tbaa !946
  br label %if.end23, !dbg !2665

if.end23:                                         ; preds = %if.then18, %for.body
  br label %for.inc, !dbg !2668

for.inc:                                          ; preds = %if.end23
  %28 = load i32, ptr %i, align 4, !dbg !2669, !tbaa !946
  %inc = add nsw i32 %28, 1, !dbg !2669
  store i32 %inc, ptr %i, align 4, !dbg !2669, !tbaa !946
  br label %for.cond, !dbg !2670, !llvm.loop !2671

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !2673
  call void @llvm.lifetime.end.p0(i64 8, ptr %cigar) #17, !dbg !2673
  br label %if.end24, !dbg !2674

if.end24:                                         ; preds = %for.end, %if.end9
  %29 = load ptr, ptr %b.addr, align 8, !dbg !2675, !tbaa !563
  %30 = load ptr, ptr %tv.addr, align 8, !dbg !2676, !tbaa !563
  %lplbuf = getelementptr inbounds %struct.AbstractTview, ptr %30, i32 0, i32 3, !dbg !2677
  %31 = load ptr, ptr %lplbuf, align 8, !dbg !2677, !tbaa !671
  %call25 = call i32 @bam_lplbuf_push(ptr noundef %29, ptr noundef %31), !dbg !2678
  store i32 0, ptr %retval, align 4, !dbg !2679
  br label %return, !dbg !2679

return:                                           ; preds = %if.end24, %cleanup8
  %32 = load i32, ptr %retval, align 4, !dbg !2680
  ret i32 %32, !dbg !2680

unreachable:                                      ; preds = %cleanup8
  unreachable
}

declare !dbg !2681 void @bam_destroy1(ptr noundef) #2

declare !dbg !2684 void @hts_itr_destroy(ptr noundef) #2

declare !dbg !2687 i32 @bam_lplbuf_push(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @bam_tview_main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !95 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %view_mode = alloca i32, align 4
  %display_width = alloca i32, align 4
  %tv = alloca ptr, align 8
  %samples = alloca ptr, align 8
  %position = alloca ptr, align 8
  %ref = alloca ptr, align 8
  %fn_idx = alloca ptr, align 8
  %c = alloca i32, align 4
  %has_index_file = alloca i32, align 4
  %ref_index = alloca i32, align 4
  %ga = alloca %struct.sam_global_args, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tid = alloca i32, align 4
  %beg = alloca i64, align 8
  %end = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !946
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !503, metadata !DIExpression()), !dbg !2690
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !504, metadata !DIExpression()), !dbg !2691
  call void @llvm.lifetime.start.p0(i64 4, ptr %view_mode) #17, !dbg !2692
  tail call void @llvm.dbg.declare(metadata ptr %view_mode, metadata !505, metadata !DIExpression()), !dbg !2693
  store i32 0, ptr %view_mode, align 4, !dbg !2693, !tbaa !946
  call void @llvm.lifetime.start.p0(i64 4, ptr %display_width) #17, !dbg !2692
  tail call void @llvm.dbg.declare(metadata ptr %display_width, metadata !506, metadata !DIExpression()), !dbg !2694
  store i32 0, ptr %display_width, align 4, !dbg !2694, !tbaa !946
  call void @llvm.lifetime.start.p0(i64 8, ptr %tv) #17, !dbg !2695
  tail call void @llvm.dbg.declare(metadata ptr %tv, metadata !507, metadata !DIExpression()), !dbg !2696
  store ptr null, ptr %tv, align 8, !dbg !2696, !tbaa !563
  call void @llvm.lifetime.start.p0(i64 8, ptr %samples) #17, !dbg !2697
  tail call void @llvm.dbg.declare(metadata ptr %samples, metadata !508, metadata !DIExpression()), !dbg !2698
  store ptr null, ptr %samples, align 8, !dbg !2698, !tbaa !563
  call void @llvm.lifetime.start.p0(i64 8, ptr %position) #17, !dbg !2697
  tail call void @llvm.dbg.declare(metadata ptr %position, metadata !509, metadata !DIExpression()), !dbg !2699
  store ptr null, ptr %position, align 8, !dbg !2699, !tbaa !563
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref) #17, !dbg !2697
  tail call void @llvm.dbg.declare(metadata ptr %ref, metadata !510, metadata !DIExpression()), !dbg !2700
  call void @llvm.lifetime.start.p0(i64 8, ptr %fn_idx) #17, !dbg !2697
  tail call void @llvm.dbg.declare(metadata ptr %fn_idx, metadata !511, metadata !DIExpression()), !dbg !2701
  store ptr null, ptr %fn_idx, align 8, !dbg !2701, !tbaa !563
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #17, !dbg !2702
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !512, metadata !DIExpression()), !dbg !2703
  call void @llvm.lifetime.start.p0(i64 4, ptr %has_index_file) #17, !dbg !2702
  tail call void @llvm.dbg.declare(metadata ptr %has_index_file, metadata !513, metadata !DIExpression()), !dbg !2704
  store i32 0, ptr %has_index_file, align 4, !dbg !2704, !tbaa !946
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_index) #17, !dbg !2702
  tail call void @llvm.dbg.declare(metadata ptr %ref_index, metadata !514, metadata !DIExpression()), !dbg !2705
  store i32 0, ptr %ref_index, align 4, !dbg !2705, !tbaa !946
  call void @llvm.lifetime.start.p0(i64 80, ptr %ga) #17, !dbg !2706
  tail call void @llvm.dbg.declare(metadata ptr %ga, metadata !515, metadata !DIExpression()), !dbg !2707
  call void @llvm.memset.p0.i64(ptr align 8 %ga, i8 0, i64 80, i1 false), !dbg !2707
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !2708
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !525, metadata !DIExpression()), !dbg !2709
  br label %while.cond, !dbg !2710

while.cond:                                       ; preds = %sw.epilog23, %entry
  %0 = load i32, ptr %argc.addr, align 4, !dbg !2711, !tbaa !946
  %1 = load ptr, ptr %argv.addr, align 8, !dbg !2712, !tbaa !563
  %call = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.27, ptr noundef @bam_tview_main.lopts, ptr noundef null) #17, !dbg !2713
  store i32 %call, ptr %c, align 4, !dbg !2714, !tbaa !946
  %cmp = icmp sge i32 %call, 0, !dbg !2715
  br i1 %cmp, label %while.body, label %while.end, !dbg !2710

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %c, align 4, !dbg !2716, !tbaa !946
  switch i32 %2, label %sw.default16 [
    i32 119, label %sw.bb
    i32 115, label %sw.bb8
    i32 112, label %sw.bb9
    i32 88, label %sw.bb10
    i32 100, label %sw.bb11
    i32 63, label %sw.bb22
  ], !dbg !2718

sw.bb:                                            ; preds = %while.body
  %3 = load ptr, ptr @optarg, align 8, !dbg !2719, !tbaa !563
  %call1 = call i64 @strtol(ptr noundef %3, ptr noundef %tmp, i32 noundef 10) #17, !dbg !2721
  %conv = trunc i64 %call1 to i32, !dbg !2721
  store i32 %conv, ptr %display_width, align 4, !dbg !2722, !tbaa !946
  %4 = load ptr, ptr %tmp, align 8, !dbg !2723, !tbaa !563
  %5 = load ptr, ptr @optarg, align 8, !dbg !2725, !tbaa !563
  %cmp2 = icmp eq ptr %4, %5, !dbg !2726
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !2727

lor.lhs.false:                                    ; preds = %sw.bb
  %6 = load ptr, ptr %tmp, align 8, !dbg !2728, !tbaa !563
  %7 = load i8, ptr %6, align 1, !dbg !2729, !tbaa !1004
  %conv4 = sext i8 %7 to i32, !dbg !2729
  %tobool = icmp ne i32 %conv4, 0, !dbg !2729
  br i1 %tobool, label %if.then, label %lor.lhs.false5, !dbg !2730

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %8 = load i32, ptr %display_width, align 4, !dbg !2731, !tbaa !946
  %cmp6 = icmp slt i32 %8, 1, !dbg !2732
  br i1 %cmp6, label %if.then, label %if.end, !dbg !2733

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %sw.bb
  %9 = load ptr, ptr @optarg, align 8, !dbg !2734, !tbaa !563
  call void (ptr, ...) @error(ptr noundef @.str.28, ptr noundef %9), !dbg !2735
  br label %if.end, !dbg !2735

if.end:                                           ; preds = %if.then, %lor.lhs.false5
  br label %sw.epilog23, !dbg !2736

sw.bb8:                                           ; preds = %while.body
  %10 = load ptr, ptr @optarg, align 8, !dbg !2737, !tbaa !563
  store ptr %10, ptr %samples, align 8, !dbg !2738, !tbaa !563
  br label %sw.epilog23, !dbg !2739

sw.bb9:                                           ; preds = %while.body
  %11 = load ptr, ptr @optarg, align 8, !dbg !2740, !tbaa !563
  store ptr %11, ptr %position, align 8, !dbg !2741, !tbaa !563
  br label %sw.epilog23, !dbg !2742

sw.bb10:                                          ; preds = %while.body
  store i32 1, ptr %has_index_file, align 4, !dbg !2743, !tbaa !946
  br label %sw.epilog23, !dbg !2744

sw.bb11:                                          ; preds = %while.body
  %12 = load ptr, ptr @optarg, align 8, !dbg !2745, !tbaa !563
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 0, !dbg !2745
  %13 = load i8, ptr %arrayidx, align 1, !dbg !2745, !tbaa !1004
  %conv12 = sext i8 %13 to i32, !dbg !2745
  switch i32 %conv12, label %sw.default [
    i32 72, label %sw.bb13
    i32 104, label %sw.bb13
    i32 84, label %sw.bb14
    i32 116, label %sw.bb14
    i32 67, label %sw.bb15
    i32 99, label %sw.bb15
  ], !dbg !2747

sw.bb13:                                          ; preds = %sw.bb11, %sw.bb11
  store i32 1, ptr %view_mode, align 4, !dbg !2748, !tbaa !946
  br label %sw.epilog, !dbg !2750

sw.bb14:                                          ; preds = %sw.bb11, %sw.bb11
  store i32 2, ptr %view_mode, align 4, !dbg !2751, !tbaa !946
  br label %sw.epilog, !dbg !2752

sw.bb15:                                          ; preds = %sw.bb11, %sw.bb11
  store i32 0, ptr %view_mode, align 4, !dbg !2753, !tbaa !946
  br label %sw.epilog, !dbg !2754

sw.default:                                       ; preds = %sw.bb11
  store i32 0, ptr %view_mode, align 4, !dbg !2755, !tbaa !946
  br label %sw.epilog, !dbg !2756

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb14, %sw.bb13
  br label %sw.epilog23, !dbg !2757

sw.default16:                                     ; preds = %while.body
  %14 = load i32, ptr %c, align 4, !dbg !2758, !tbaa !946
  %15 = load ptr, ptr @optarg, align 8, !dbg !2760, !tbaa !563
  %call17 = call i32 @parse_sam_global_opt(i32 noundef %14, ptr noundef %15, ptr noundef @bam_tview_main.lopts, ptr noundef %ga), !dbg !2761
  %cmp18 = icmp eq i32 %call17, 0, !dbg !2762
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !2763

if.then20:                                        ; preds = %sw.default16
  br label %sw.epilog23, !dbg !2764

if.end21:                                         ; preds = %sw.default16
  br label %sw.bb22, !dbg !2765

sw.bb22:                                          ; preds = %while.body, %if.end21
  call void (ptr, ...) @error(ptr noundef null), !dbg !2766
  br label %sw.epilog23, !dbg !2767

sw.epilog23:                                      ; preds = %sw.bb22, %if.then20, %sw.epilog, %sw.bb10, %sw.bb9, %sw.bb8, %if.end
  br label %while.cond, !dbg !2710, !llvm.loop !2768

while.end:                                        ; preds = %while.cond
  %16 = load i32, ptr %argc.addr, align 4, !dbg !2770, !tbaa !946
  %17 = load i32, ptr @optind, align 4, !dbg !2772, !tbaa !946
  %cmp24 = icmp eq i32 %16, %17, !dbg !2773
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !2774

if.then26:                                        ; preds = %while.end
  call void (ptr, ...) @error(ptr noundef null), !dbg !2775
  br label %if.end27, !dbg !2775

if.end27:                                         ; preds = %if.then26, %while.end
  %18 = load i32, ptr %display_width, align 4, !dbg !2776, !tbaa !946
  %tobool28 = icmp ne i32 %18, 0, !dbg !2776
  br i1 %tobool28, label %land.lhs.true, label %if.end32, !dbg !2778

land.lhs.true:                                    ; preds = %if.end27
  %19 = load i32, ptr %view_mode, align 4, !dbg !2779, !tbaa !946
  %cmp29 = icmp eq i32 %19, 0, !dbg !2780
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !2781

if.then31:                                        ; preds = %land.lhs.true
  call void (ptr, ...) @error(ptr noundef @.str.29), !dbg !2782
  br label %if.end32, !dbg !2782

if.end32:                                         ; preds = %if.then31, %land.lhs.true, %if.end27
  store ptr null, ptr %ref, align 8, !dbg !2783, !tbaa !563
  %20 = load i32, ptr @optind, align 4, !dbg !2784, !tbaa !946
  store i32 %20, ptr %ref_index, align 4, !dbg !2785, !tbaa !946
  %21 = load i32, ptr %has_index_file, align 4, !dbg !2786, !tbaa !946
  %tobool33 = icmp ne i32 %21, 0, !dbg !2786
  br i1 %tobool33, label %if.else, label %if.then34, !dbg !2788

if.then34:                                        ; preds = %if.end32
  %22 = load i32, ptr @optind, align 4, !dbg !2789, !tbaa !946
  %add = add nsw i32 %22, 1, !dbg !2791
  %23 = load i32, ptr %argc.addr, align 4, !dbg !2792, !tbaa !946
  %cmp35 = icmp sge i32 %add, %23, !dbg !2793
  br i1 %cmp35, label %cond.true, label %cond.false, !dbg !2794

cond.true:                                        ; preds = %if.then34
  %reference = getelementptr inbounds %struct.sam_global_args, ptr %ga, i32 0, i32 2, !dbg !2795
  %24 = load ptr, ptr %reference, align 8, !dbg !2795, !tbaa !2796
  br label %cond.end, !dbg !2794

cond.false:                                       ; preds = %if.then34
  %25 = load ptr, ptr %argv.addr, align 8, !dbg !2798, !tbaa !563
  %26 = load i32, ptr @optind, align 4, !dbg !2799, !tbaa !946
  %add37 = add nsw i32 %26, 1, !dbg !2800
  %idxprom = sext i32 %add37 to i64, !dbg !2798
  %arrayidx38 = getelementptr inbounds ptr, ptr %25, i64 %idxprom, !dbg !2798
  %27 = load ptr, ptr %arrayidx38, align 8, !dbg !2798, !tbaa !563
  br label %cond.end, !dbg !2794

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %24, %cond.true ], [ %27, %cond.false ], !dbg !2794
  store ptr %cond, ptr %ref, align 8, !dbg !2801, !tbaa !563
  br label %if.end60, !dbg !2802

if.else:                                          ; preds = %if.end32
  %28 = load i32, ptr @optind, align 4, !dbg !2803, !tbaa !946
  %add39 = add nsw i32 %28, 2, !dbg !2805
  %29 = load i32, ptr %argc.addr, align 4, !dbg !2806, !tbaa !946
  %cmp40 = icmp sge i32 %add39, %29, !dbg !2807
  br i1 %cmp40, label %cond.true42, label %cond.false44, !dbg !2808

cond.true42:                                      ; preds = %if.else
  %reference43 = getelementptr inbounds %struct.sam_global_args, ptr %ga, i32 0, i32 2, !dbg !2809
  %30 = load ptr, ptr %reference43, align 8, !dbg !2809, !tbaa !2796
  br label %cond.end48, !dbg !2808

cond.false44:                                     ; preds = %if.else
  %31 = load ptr, ptr %argv.addr, align 8, !dbg !2810, !tbaa !563
  %32 = load i32, ptr @optind, align 4, !dbg !2811, !tbaa !946
  %add45 = add nsw i32 %32, 2, !dbg !2812
  %idxprom46 = sext i32 %add45 to i64, !dbg !2810
  %arrayidx47 = getelementptr inbounds ptr, ptr %31, i64 %idxprom46, !dbg !2810
  %33 = load ptr, ptr %arrayidx47, align 8, !dbg !2810, !tbaa !563
  br label %cond.end48, !dbg !2808

cond.end48:                                       ; preds = %cond.false44, %cond.true42
  %cond49 = phi ptr [ %30, %cond.true42 ], [ %33, %cond.false44 ], !dbg !2808
  store ptr %cond49, ptr %ref, align 8, !dbg !2813, !tbaa !563
  %34 = load i32, ptr @optind, align 4, !dbg !2814, !tbaa !946
  %add50 = add nsw i32 %34, 1, !dbg !2816
  %35 = load i32, ptr %argc.addr, align 4, !dbg !2817, !tbaa !946
  %cmp51 = icmp sge i32 %add50, %35, !dbg !2818
  br i1 %cmp51, label %if.then53, label %if.end55, !dbg !2819

if.then53:                                        ; preds = %cond.end48
  %36 = load ptr, ptr @stderr, align 8, !dbg !2820, !tbaa !563
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.30), !dbg !2822
  store i32 1, ptr %retval, align 4, !dbg !2823
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2823

if.end55:                                         ; preds = %cond.end48
  %37 = load ptr, ptr %argv.addr, align 8, !dbg !2824, !tbaa !563
  %38 = load i32, ptr @optind, align 4, !dbg !2825, !tbaa !946
  %add56 = add nsw i32 %38, 1, !dbg !2826
  %idxprom57 = sext i32 %add56 to i64, !dbg !2824
  %arrayidx58 = getelementptr inbounds ptr, ptr %37, i64 %idxprom57, !dbg !2824
  %39 = load ptr, ptr %arrayidx58, align 8, !dbg !2824, !tbaa !563
  store ptr %39, ptr %fn_idx, align 8, !dbg !2827, !tbaa !563
  %40 = load i32, ptr @optind, align 4, !dbg !2828, !tbaa !946
  %add59 = add nsw i32 %40, 1, !dbg !2829
  store i32 %add59, ptr %ref_index, align 4, !dbg !2830, !tbaa !946
  br label %if.end60

if.end60:                                         ; preds = %if.end55, %cond.end
  %41 = load i32, ptr %view_mode, align 4, !dbg !2831, !tbaa !946
  switch i32 %41, label %sw.epilog82 [
    i32 0, label %sw.bb61
    i32 2, label %sw.bb65
    i32 1, label %sw.bb73
  ], !dbg !2832

sw.bb61:                                          ; preds = %if.end60
  %42 = load ptr, ptr %argv.addr, align 8, !dbg !2833, !tbaa !563
  %43 = load i32, ptr %ref_index, align 4, !dbg !2835, !tbaa !946
  %idxprom62 = sext i32 %43 to i64, !dbg !2833
  %arrayidx63 = getelementptr inbounds ptr, ptr %42, i64 %idxprom62, !dbg !2833
  %44 = load ptr, ptr %arrayidx63, align 8, !dbg !2833, !tbaa !563
  %45 = load ptr, ptr %ref, align 8, !dbg !2836, !tbaa !563
  %46 = load ptr, ptr %samples, align 8, !dbg !2837, !tbaa !563
  %in = getelementptr inbounds %struct.sam_global_args, ptr %ga, i32 0, i32 0, !dbg !2838
  %call64 = call ptr @curses_tv_init(ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %in), !dbg !2839
  store ptr %call64, ptr %tv, align 8, !dbg !2840, !tbaa !563
  br label %sw.epilog82, !dbg !2841

sw.bb65:                                          ; preds = %if.end60
  %47 = load ptr, ptr %argv.addr, align 8, !dbg !2842, !tbaa !563
  %48 = load i32, ptr %ref_index, align 4, !dbg !2843, !tbaa !946
  %idxprom66 = sext i32 %48 to i64, !dbg !2842
  %arrayidx67 = getelementptr inbounds ptr, ptr %47, i64 %idxprom66, !dbg !2842
  %49 = load ptr, ptr %arrayidx67, align 8, !dbg !2842, !tbaa !563
  %50 = load ptr, ptr %ref, align 8, !dbg !2844, !tbaa !563
  %51 = load ptr, ptr %fn_idx, align 8, !dbg !2845, !tbaa !563
  %52 = load ptr, ptr %samples, align 8, !dbg !2846, !tbaa !563
  %in68 = getelementptr inbounds %struct.sam_global_args, ptr %ga, i32 0, i32 0, !dbg !2847
  %call69 = call ptr @text_tv_init(ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %in68), !dbg !2848
  store ptr %call69, ptr %tv, align 8, !dbg !2849, !tbaa !563
  %53 = load i32, ptr %display_width, align 4, !dbg !2850, !tbaa !946
  %tobool70 = icmp ne i32 %53, 0, !dbg !2850
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !2852

if.then71:                                        ; preds = %sw.bb65
  %54 = load i32, ptr %display_width, align 4, !dbg !2853, !tbaa !946
  %55 = load ptr, ptr %tv, align 8, !dbg !2854, !tbaa !563
  %mcol = getelementptr inbounds %struct.AbstractTview, ptr %55, i32 0, i32 1, !dbg !2855
  store i32 %54, ptr %mcol, align 4, !dbg !2856, !tbaa !591
  br label %if.end72, !dbg !2854

if.end72:                                         ; preds = %if.then71, %sw.bb65
  br label %sw.epilog82, !dbg !2857

sw.bb73:                                          ; preds = %if.end60
  %56 = load ptr, ptr %argv.addr, align 8, !dbg !2858, !tbaa !563
  %57 = load i32, ptr %ref_index, align 4, !dbg !2859, !tbaa !946
  %idxprom74 = sext i32 %57 to i64, !dbg !2858
  %arrayidx75 = getelementptr inbounds ptr, ptr %56, i64 %idxprom74, !dbg !2858
  %58 = load ptr, ptr %arrayidx75, align 8, !dbg !2858, !tbaa !563
  %59 = load ptr, ptr %ref, align 8, !dbg !2860, !tbaa !563
  %60 = load ptr, ptr %fn_idx, align 8, !dbg !2861, !tbaa !563
  %61 = load ptr, ptr %samples, align 8, !dbg !2862, !tbaa !563
  %in76 = getelementptr inbounds %struct.sam_global_args, ptr %ga, i32 0, i32 0, !dbg !2863
  %call77 = call ptr @html_tv_init(ptr noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %61, ptr noundef %in76), !dbg !2864
  store ptr %call77, ptr %tv, align 8, !dbg !2865, !tbaa !563
  %62 = load i32, ptr %display_width, align 4, !dbg !2866, !tbaa !946
  %tobool78 = icmp ne i32 %62, 0, !dbg !2866
  br i1 %tobool78, label %if.then79, label %if.end81, !dbg !2868

if.then79:                                        ; preds = %sw.bb73
  %63 = load i32, ptr %display_width, align 4, !dbg !2869, !tbaa !946
  %64 = load ptr, ptr %tv, align 8, !dbg !2870, !tbaa !563
  %mcol80 = getelementptr inbounds %struct.AbstractTview, ptr %64, i32 0, i32 1, !dbg !2871
  store i32 %63, ptr %mcol80, align 4, !dbg !2872, !tbaa !591
  br label %if.end81, !dbg !2870

if.end81:                                         ; preds = %if.then79, %sw.bb73
  br label %sw.epilog82, !dbg !2873

sw.epilog82:                                      ; preds = %if.end60, %if.end81, %if.end72, %sw.bb61
  %65 = load ptr, ptr %tv, align 8, !dbg !2874, !tbaa !563
  %cmp83 = icmp eq ptr %65, null, !dbg !2876
  br i1 %cmp83, label %if.then85, label %if.end86, !dbg !2877

if.then85:                                        ; preds = %sw.epilog82
  call void (ptr, ...) @error(ptr noundef @.str.31), !dbg !2878
  store i32 1, ptr %retval, align 4, !dbg !2880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2880

if.end86:                                         ; preds = %sw.epilog82
  %66 = load ptr, ptr %position, align 8, !dbg !2881, !tbaa !563
  %tobool87 = icmp ne ptr %66, null, !dbg !2881
  br i1 %tobool87, label %if.then88, label %if.else94, !dbg !2882

if.then88:                                        ; preds = %if.end86
  call void @llvm.lifetime.start.p0(i64 4, ptr %tid) #17, !dbg !2883
  tail call void @llvm.dbg.declare(metadata ptr %tid, metadata !526, metadata !DIExpression()), !dbg !2884
  call void @llvm.lifetime.start.p0(i64 8, ptr %beg) #17, !dbg !2885
  tail call void @llvm.dbg.declare(metadata ptr %beg, metadata !529, metadata !DIExpression()), !dbg !2886
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #17, !dbg !2885
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !530, metadata !DIExpression()), !dbg !2887
  %67 = load ptr, ptr %tv, align 8, !dbg !2888, !tbaa !563
  %header = getelementptr inbounds %struct.AbstractTview, ptr %67, i32 0, i32 4, !dbg !2890
  %68 = load ptr, ptr %header, align 8, !dbg !2890, !tbaa !624
  %69 = load ptr, ptr %position, align 8, !dbg !2891, !tbaa !563
  %call89 = call ptr @sam_parse_region(ptr noundef %68, ptr noundef %69, ptr noundef %tid, ptr noundef %beg, ptr noundef %end, i32 noundef 0), !dbg !2892
  %tobool90 = icmp ne ptr %call89, null, !dbg !2892
  br i1 %tobool90, label %if.end93, label %if.then91, !dbg !2893

if.then91:                                        ; preds = %if.then88
  %70 = load ptr, ptr %tv, align 8, !dbg !2894, !tbaa !563
  %my_destroy = getelementptr inbounds %struct.AbstractTview, ptr %70, i32 0, i32 23, !dbg !2896
  %71 = load ptr, ptr %my_destroy, align 8, !dbg !2896, !tbaa !2897
  %72 = load ptr, ptr %tv, align 8, !dbg !2898, !tbaa !563
  call void %71(ptr noundef %72), !dbg !2894
  %73 = load ptr, ptr @stderr, align 8, !dbg !2899, !tbaa !563
  %call92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str.32), !dbg !2900
  call void @exit(i32 noundef 1) #16, !dbg !2901
  unreachable, !dbg !2901

if.end93:                                         ; preds = %if.then88
  %74 = load i32, ptr %tid, align 4, !dbg !2902, !tbaa !946
  %75 = load ptr, ptr %tv, align 8, !dbg !2903, !tbaa !563
  %curr_tid = getelementptr inbounds %struct.AbstractTview, ptr %75, i32 0, i32 11, !dbg !2904
  store i32 %74, ptr %curr_tid, align 8, !dbg !2905, !tbaa !2267
  %76 = load i64, ptr %beg, align 8, !dbg !2906, !tbaa !948
  %77 = load ptr, ptr %tv, align 8, !dbg !2907, !tbaa !563
  %left_pos = getelementptr inbounds %struct.AbstractTview, ptr %77, i32 0, i32 8, !dbg !2908
  store i64 %76, ptr %left_pos, align 8, !dbg !2909, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #17, !dbg !2910
  call void @llvm.lifetime.end.p0(i64 8, ptr %beg) #17, !dbg !2910
  call void @llvm.lifetime.end.p0(i64 4, ptr %tid) #17, !dbg !2910
  br label %if.end118, !dbg !2911

if.else94:                                        ; preds = %if.end86
  %78 = load ptr, ptr %tv, align 8, !dbg !2912, !tbaa !563
  %fai = getelementptr inbounds %struct.AbstractTview, ptr %78, i32 0, i32 6, !dbg !2913
  %79 = load ptr, ptr %fai, align 8, !dbg !2913, !tbaa !680
  %tobool95 = icmp ne ptr %79, null, !dbg !2912
  br i1 %tobool95, label %if.then96, label %if.end117, !dbg !2914

if.then96:                                        ; preds = %if.else94
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !2915
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !531, metadata !DIExpression()), !dbg !2916
  store i32 0, ptr %i, align 4, !dbg !2917, !tbaa !946
  br label %for.cond, !dbg !2919

for.cond:                                         ; preds = %for.inc, %if.then96
  %80 = load i32, ptr %i, align 4, !dbg !2920, !tbaa !946
  %81 = load ptr, ptr %tv, align 8, !dbg !2922, !tbaa !563
  %header97 = getelementptr inbounds %struct.AbstractTview, ptr %81, i32 0, i32 4, !dbg !2923
  %82 = load ptr, ptr %header97, align 8, !dbg !2923, !tbaa !624
  %call98 = call i32 @sam_hdr_nref(ptr noundef %82), !dbg !2924
  %cmp99 = icmp slt i32 %80, %call98, !dbg !2925
  br i1 %cmp99, label %for.body, label %for.end, !dbg !2926

for.body:                                         ; preds = %for.cond
  %83 = load ptr, ptr %tv, align 8, !dbg !2927, !tbaa !563
  %fai101 = getelementptr inbounds %struct.AbstractTview, ptr %83, i32 0, i32 6, !dbg !2930
  %84 = load ptr, ptr %fai101, align 8, !dbg !2930, !tbaa !680
  %85 = load ptr, ptr %tv, align 8, !dbg !2931, !tbaa !563
  %header102 = getelementptr inbounds %struct.AbstractTview, ptr %85, i32 0, i32 4, !dbg !2932
  %86 = load ptr, ptr %header102, align 8, !dbg !2932, !tbaa !624
  %87 = load i32, ptr %i, align 4, !dbg !2933, !tbaa !946
  %call103 = call ptr @sam_hdr_tid2name(ptr noundef %86, i32 noundef %87), !dbg !2934
  %call104 = call i32 @faidx_has_seq(ptr noundef %84, ptr noundef %call103), !dbg !2935
  %tobool105 = icmp ne i32 %call104, 0, !dbg !2935
  br i1 %tobool105, label %if.then106, label %if.end107, !dbg !2936

if.then106:                                       ; preds = %for.body
  br label %for.end, !dbg !2937

if.end107:                                        ; preds = %for.body
  br label %for.inc, !dbg !2938

for.inc:                                          ; preds = %if.end107
  %88 = load i32, ptr %i, align 4, !dbg !2939, !tbaa !946
  %inc = add nsw i32 %88, 1, !dbg !2939
  store i32 %inc, ptr %i, align 4, !dbg !2939, !tbaa !946
  br label %for.cond, !dbg !2940, !llvm.loop !2941

for.end:                                          ; preds = %if.then106, %for.cond
  %89 = load i32, ptr %i, align 4, !dbg !2943, !tbaa !946
  %90 = load ptr, ptr %tv, align 8, !dbg !2945, !tbaa !563
  %header108 = getelementptr inbounds %struct.AbstractTview, ptr %90, i32 0, i32 4, !dbg !2946
  %91 = load ptr, ptr %header108, align 8, !dbg !2946, !tbaa !624
  %call109 = call i32 @sam_hdr_nref(ptr noundef %91), !dbg !2947
  %cmp110 = icmp eq i32 %89, %call109, !dbg !2948
  br i1 %cmp110, label %if.then112, label %if.end115, !dbg !2949

if.then112:                                       ; preds = %for.end
  %92 = load ptr, ptr %tv, align 8, !dbg !2950, !tbaa !563
  %my_destroy113 = getelementptr inbounds %struct.AbstractTview, ptr %92, i32 0, i32 23, !dbg !2952
  %93 = load ptr, ptr %my_destroy113, align 8, !dbg !2952, !tbaa !2897
  %94 = load ptr, ptr %tv, align 8, !dbg !2953, !tbaa !563
  call void %93(ptr noundef %94), !dbg !2950
  %95 = load ptr, ptr @stderr, align 8, !dbg !2954, !tbaa !563
  %call114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.33), !dbg !2955
  call void @exit(i32 noundef 1) #16, !dbg !2956
  unreachable, !dbg !2956

if.end115:                                        ; preds = %for.end
  %96 = load i32, ptr %i, align 4, !dbg !2957, !tbaa !946
  %97 = load ptr, ptr %tv, align 8, !dbg !2958, !tbaa !563
  %curr_tid116 = getelementptr inbounds %struct.AbstractTview, ptr %97, i32 0, i32 11, !dbg !2959
  store i32 %96, ptr %curr_tid116, align 8, !dbg !2960, !tbaa !2267
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !2961
  br label %if.end117, !dbg !2962

if.end117:                                        ; preds = %if.end115, %if.else94
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end93
  %98 = load ptr, ptr %tv, align 8, !dbg !2963, !tbaa !563
  %my_drawaln = getelementptr inbounds %struct.AbstractTview, ptr %98, i32 0, i32 30, !dbg !2964
  %99 = load ptr, ptr %my_drawaln, align 8, !dbg !2964, !tbaa !2965
  %100 = load ptr, ptr %tv, align 8, !dbg !2966, !tbaa !563
  %101 = load ptr, ptr %tv, align 8, !dbg !2967, !tbaa !563
  %curr_tid119 = getelementptr inbounds %struct.AbstractTview, ptr %101, i32 0, i32 11, !dbg !2968
  %102 = load i32, ptr %curr_tid119, align 8, !dbg !2968, !tbaa !2267
  %103 = load ptr, ptr %tv, align 8, !dbg !2969, !tbaa !563
  %left_pos120 = getelementptr inbounds %struct.AbstractTview, ptr %103, i32 0, i32 8, !dbg !2970
  %104 = load i64, ptr %left_pos120, align 8, !dbg !2970, !tbaa !974
  %call121 = call i32 %99(ptr noundef %100, i32 noundef %102, i64 noundef %104), !dbg !2963
  %105 = load ptr, ptr %tv, align 8, !dbg !2971, !tbaa !563
  %my_loop = getelementptr inbounds %struct.AbstractTview, ptr %105, i32 0, i32 31, !dbg !2972
  %106 = load ptr, ptr %my_loop, align 8, !dbg !2972, !tbaa !2973
  %107 = load ptr, ptr %tv, align 8, !dbg !2974, !tbaa !563
  %call122 = call i32 %106(ptr noundef %107), !dbg !2971
  %108 = load ptr, ptr %tv, align 8, !dbg !2975, !tbaa !563
  %my_destroy123 = getelementptr inbounds %struct.AbstractTview, ptr %108, i32 0, i32 23, !dbg !2976
  %109 = load ptr, ptr %my_destroy123, align 8, !dbg !2976, !tbaa !2897
  %110 = load ptr, ptr %tv, align 8, !dbg !2977, !tbaa !563
  call void %109(ptr noundef %110), !dbg !2975
  store i32 0, ptr %retval, align 4, !dbg !2978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2978

cleanup:                                          ; preds = %if.end118, %if.then85, %if.then53
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !2979
  call void @llvm.lifetime.end.p0(i64 80, ptr %ga) #17, !dbg !2979
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_index) #17, !dbg !2979
  call void @llvm.lifetime.end.p0(i64 4, ptr %has_index_file) #17, !dbg !2979
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #17, !dbg !2979
  call void @llvm.lifetime.end.p0(i64 8, ptr %fn_idx) #17, !dbg !2979
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref) #17, !dbg !2979
  call void @llvm.lifetime.end.p0(i64 8, ptr %position) #17, !dbg !2979
  call void @llvm.lifetime.end.p0(i64 8, ptr %samples) #17, !dbg !2979
  call void @llvm.lifetime.end.p0(i64 8, ptr %tv) #17, !dbg !2979
  call void @llvm.lifetime.end.p0(i64 4, ptr %display_width) #17, !dbg !2979
  call void @llvm.lifetime.end.p0(i64 4, ptr %view_mode) #17, !dbg !2979
  %111 = load i32, ptr %retval, align 4, !dbg !2979
  ret i32 %111, !dbg !2979
}

; Function Attrs: nounwind
declare !dbg !2980 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !2986 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal void @error(ptr noundef %format, ...) #0 !dbg !2990 {
entry:
  %format.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !2994, metadata !DIExpression()), !dbg !3009
  %0 = load ptr, ptr %format.addr, align 8, !dbg !3010, !tbaa !563
  %tobool = icmp ne ptr %0, null, !dbg !3010
  br i1 %tobool, label %if.else, label %if.then, !dbg !3011

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !3012, !tbaa !563
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.41), !dbg !3014
  %2 = load ptr, ptr @stderr, align 8, !dbg !3015, !tbaa !563
  call void @sam_global_opt_help(ptr noundef %2, ptr noundef @.str.42), !dbg !3016
  br label %if.end, !dbg !3017

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #17, !dbg !3018
  tail call void @llvm.dbg.declare(metadata ptr %ap, metadata !2995, metadata !DIExpression()), !dbg !3019
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !3020
  call void @llvm.va_start.p0(ptr %arraydecay), !dbg !3020
  %3 = load ptr, ptr @stderr, align 8, !dbg !3021, !tbaa !563
  %4 = load ptr, ptr %format.addr, align 8, !dbg !3022, !tbaa !563
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !3023
  %call2 = call i32 @vfprintf(ptr noundef %3, ptr noundef %4, ptr noundef %arraydecay1), !dbg !3024
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !3025
  call void @llvm.va_end.p0(ptr %arraydecay3), !dbg !3025
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #17, !dbg !3026
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @exit(i32 noundef -1) #16, !dbg !3027
  unreachable, !dbg !3027
}

declare !dbg !3028 i32 @parse_sam_global_opt(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3032 ptr @curses_tv_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3035 ptr @text_tv_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3038 ptr @html_tv_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3039 ptr @sam_parse_region(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !3042 i32 @sam_hdr_nref(ptr noundef) #2

declare !dbg !3045 i32 @faidx_has_seq(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @kh_init_kh_rg() #9 !dbg !3048 {
entry:
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 40) #20, !dbg !3051
  ret ptr %call, !dbg !3051
}

declare !dbg !3052 i32 @sam_hdr_count_lines(ptr noundef, ptr noundef) #2

declare !dbg !3055 i32 @sam_hdr_find_tag_pos(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !3058 i32 @strcmp(ptr noundef, ptr noundef) #11

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_put_kh_rg(ptr noundef %h, ptr noundef %key, ptr noundef %ret) #9 !dbg !3061 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %ret.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %site = alloca i32, align 4
  %last = alloca i32, align 4
  %mask = alloca i32, align 4
  %step = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !3065, metadata !DIExpression()), !dbg !3076
  store ptr %key, ptr %key.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3066, metadata !DIExpression()), !dbg !3076
  store ptr %ret, ptr %ret.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !3067, metadata !DIExpression()), !dbg !3076
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #17, !dbg !3076
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !3068, metadata !DIExpression()), !dbg !3076
  %0 = load ptr, ptr %h.addr, align 8, !dbg !3077, !tbaa !563
  %n_occupied = getelementptr inbounds %struct.kh_kh_rg_s, ptr %0, i32 0, i32 2, !dbg !3077
  %1 = load i32, ptr %n_occupied, align 8, !dbg !3077, !tbaa !3079
  %2 = load ptr, ptr %h.addr, align 8, !dbg !3077, !tbaa !563
  %upper_bound = getelementptr inbounds %struct.kh_kh_rg_s, ptr %2, i32 0, i32 3, !dbg !3077
  %3 = load i32, ptr %upper_bound, align 4, !dbg !3077, !tbaa !3080
  %cmp = icmp uge i32 %1, %3, !dbg !3077
  br i1 %cmp, label %if.then, label %if.end14, !dbg !3076

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %h.addr, align 8, !dbg !3081, !tbaa !563
  %n_buckets = getelementptr inbounds %struct.kh_kh_rg_s, ptr %4, i32 0, i32 0, !dbg !3081
  %5 = load i32, ptr %n_buckets, align 8, !dbg !3081, !tbaa !2072
  %6 = load ptr, ptr %h.addr, align 8, !dbg !3081, !tbaa !563
  %size = getelementptr inbounds %struct.kh_kh_rg_s, ptr %6, i32 0, i32 1, !dbg !3081
  %7 = load i32, ptr %size, align 4, !dbg !3081, !tbaa !704
  %shl = shl i32 %7, 1, !dbg !3081
  %cmp1 = icmp ugt i32 %5, %shl, !dbg !3081
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !3084

if.then2:                                         ; preds = %if.then
  %8 = load ptr, ptr %h.addr, align 8, !dbg !3085, !tbaa !563
  %9 = load ptr, ptr %h.addr, align 8, !dbg !3085, !tbaa !563
  %n_buckets3 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %9, i32 0, i32 0, !dbg !3085
  %10 = load i32, ptr %n_buckets3, align 8, !dbg !3085, !tbaa !2072
  %sub = sub i32 %10, 1, !dbg !3085
  %call = call i32 @kh_resize_kh_rg(ptr noundef %8, i32 noundef %sub), !dbg !3085
  %cmp4 = icmp slt i32 %call, 0, !dbg !3085
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !3088

if.then5:                                         ; preds = %if.then2
  %11 = load ptr, ptr %ret.addr, align 8, !dbg !3089, !tbaa !563
  store i32 -1, ptr %11, align 4, !dbg !3089, !tbaa !946
  %12 = load ptr, ptr %h.addr, align 8, !dbg !3089, !tbaa !563
  %n_buckets6 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %12, i32 0, i32 0, !dbg !3089
  %13 = load i32, ptr %n_buckets6, align 8, !dbg !3089, !tbaa !2072
  store i32 %13, ptr %retval, align 4, !dbg !3089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3089

if.end:                                           ; preds = %if.then2
  br label %if.end13, !dbg !3088

if.else:                                          ; preds = %if.then
  %14 = load ptr, ptr %h.addr, align 8, !dbg !3091, !tbaa !563
  %15 = load ptr, ptr %h.addr, align 8, !dbg !3091, !tbaa !563
  %n_buckets7 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %15, i32 0, i32 0, !dbg !3091
  %16 = load i32, ptr %n_buckets7, align 8, !dbg !3091, !tbaa !2072
  %add = add i32 %16, 1, !dbg !3091
  %call8 = call i32 @kh_resize_kh_rg(ptr noundef %14, i32 noundef %add), !dbg !3091
  %cmp9 = icmp slt i32 %call8, 0, !dbg !3091
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !3081

if.then10:                                        ; preds = %if.else
  %17 = load ptr, ptr %ret.addr, align 8, !dbg !3093, !tbaa !563
  store i32 -1, ptr %17, align 4, !dbg !3093, !tbaa !946
  %18 = load ptr, ptr %h.addr, align 8, !dbg !3093, !tbaa !563
  %n_buckets11 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %18, i32 0, i32 0, !dbg !3093
  %19 = load i32, ptr %n_buckets11, align 8, !dbg !3093, !tbaa !2072
  store i32 %19, ptr %retval, align 4, !dbg !3093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3093

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  br label %if.end14, !dbg !3084

if.end14:                                         ; preds = %if.end13, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #17, !dbg !3095
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !3069, metadata !DIExpression()), !dbg !3095
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !3095
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3071, metadata !DIExpression()), !dbg !3095
  call void @llvm.lifetime.start.p0(i64 4, ptr %site) #17, !dbg !3095
  tail call void @llvm.dbg.declare(metadata ptr %site, metadata !3072, metadata !DIExpression()), !dbg !3095
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #17, !dbg !3095
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !3073, metadata !DIExpression()), !dbg !3095
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #17, !dbg !3095
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !3074, metadata !DIExpression()), !dbg !3095
  %20 = load ptr, ptr %h.addr, align 8, !dbg !3095, !tbaa !563
  %n_buckets15 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %20, i32 0, i32 0, !dbg !3095
  %21 = load i32, ptr %n_buckets15, align 8, !dbg !3095, !tbaa !2072
  %sub16 = sub i32 %21, 1, !dbg !3095
  store i32 %sub16, ptr %mask, align 4, !dbg !3095, !tbaa !946
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #17, !dbg !3095
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !3075, metadata !DIExpression()), !dbg !3095
  store i32 0, ptr %step, align 4, !dbg !3095, !tbaa !946
  %22 = load ptr, ptr %h.addr, align 8, !dbg !3095, !tbaa !563
  %n_buckets17 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %22, i32 0, i32 0, !dbg !3095
  %23 = load i32, ptr %n_buckets17, align 8, !dbg !3095, !tbaa !2072
  store i32 %23, ptr %site, align 4, !dbg !3095, !tbaa !946
  store i32 %23, ptr %x, align 4, !dbg !3095, !tbaa !946
  %24 = load ptr, ptr %key.addr, align 8, !dbg !3095, !tbaa !563
  %call18 = call i32 @__ac_X31_hash_string(ptr noundef %24), !dbg !3095
  store i32 %call18, ptr %k, align 4, !dbg !3095, !tbaa !946
  %25 = load i32, ptr %k, align 4, !dbg !3095, !tbaa !946
  %26 = load i32, ptr %mask, align 4, !dbg !3095, !tbaa !946
  %and = and i32 %25, %26, !dbg !3095
  store i32 %and, ptr %i, align 4, !dbg !3095, !tbaa !946
  %27 = load ptr, ptr %h.addr, align 8, !dbg !3096, !tbaa !563
  %flags = getelementptr inbounds %struct.kh_kh_rg_s, ptr %27, i32 0, i32 4, !dbg !3096
  %28 = load ptr, ptr %flags, align 8, !dbg !3096, !tbaa !2078
  %29 = load i32, ptr %i, align 4, !dbg !3096, !tbaa !946
  %shr = lshr i32 %29, 4, !dbg !3096
  %idxprom = zext i32 %shr to i64, !dbg !3096
  %arrayidx = getelementptr inbounds i32, ptr %28, i64 %idxprom, !dbg !3096
  %30 = load i32, ptr %arrayidx, align 4, !dbg !3096, !tbaa !946
  %31 = load i32, ptr %i, align 4, !dbg !3096, !tbaa !946
  %and19 = and i32 %31, 15, !dbg !3096
  %shl20 = shl i32 %and19, 1, !dbg !3096
  %shr21 = lshr i32 %30, %shl20, !dbg !3096
  %and22 = and i32 %shr21, 2, !dbg !3096
  %tobool = icmp ne i32 %and22, 0, !dbg !3096
  br i1 %tobool, label %if.then23, label %if.else24, !dbg !3095

if.then23:                                        ; preds = %if.end14
  %32 = load i32, ptr %i, align 4, !dbg !3096, !tbaa !946
  store i32 %32, ptr %x, align 4, !dbg !3096, !tbaa !946
  br label %if.end81, !dbg !3096

if.else24:                                        ; preds = %if.end14
  %33 = load i32, ptr %i, align 4, !dbg !3098, !tbaa !946
  store i32 %33, ptr %last, align 4, !dbg !3098, !tbaa !946
  br label %while.cond, !dbg !3098

while.cond:                                       ; preds = %if.end62, %if.else24
  %34 = load ptr, ptr %h.addr, align 8, !dbg !3098, !tbaa !563
  %flags25 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %34, i32 0, i32 4, !dbg !3098
  %35 = load ptr, ptr %flags25, align 8, !dbg !3098, !tbaa !2078
  %36 = load i32, ptr %i, align 4, !dbg !3098, !tbaa !946
  %shr26 = lshr i32 %36, 4, !dbg !3098
  %idxprom27 = zext i32 %shr26 to i64, !dbg !3098
  %arrayidx28 = getelementptr inbounds i32, ptr %35, i64 %idxprom27, !dbg !3098
  %37 = load i32, ptr %arrayidx28, align 4, !dbg !3098, !tbaa !946
  %38 = load i32, ptr %i, align 4, !dbg !3098, !tbaa !946
  %and29 = and i32 %38, 15, !dbg !3098
  %shl30 = shl i32 %and29, 1, !dbg !3098
  %shr31 = lshr i32 %37, %shl30, !dbg !3098
  %and32 = and i32 %shr31, 2, !dbg !3098
  %tobool33 = icmp ne i32 %and32, 0, !dbg !3098
  br i1 %tobool33, label %land.end, label %land.rhs, !dbg !3098

land.rhs:                                         ; preds = %while.cond
  %39 = load ptr, ptr %h.addr, align 8, !dbg !3098, !tbaa !563
  %flags34 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %39, i32 0, i32 4, !dbg !3098
  %40 = load ptr, ptr %flags34, align 8, !dbg !3098, !tbaa !2078
  %41 = load i32, ptr %i, align 4, !dbg !3098, !tbaa !946
  %shr35 = lshr i32 %41, 4, !dbg !3098
  %idxprom36 = zext i32 %shr35 to i64, !dbg !3098
  %arrayidx37 = getelementptr inbounds i32, ptr %40, i64 %idxprom36, !dbg !3098
  %42 = load i32, ptr %arrayidx37, align 4, !dbg !3098, !tbaa !946
  %43 = load i32, ptr %i, align 4, !dbg !3098, !tbaa !946
  %and38 = and i32 %43, 15, !dbg !3098
  %shl39 = shl i32 %and38, 1, !dbg !3098
  %shr40 = lshr i32 %42, %shl39, !dbg !3098
  %and41 = and i32 %shr40, 1, !dbg !3098
  %tobool42 = icmp ne i32 %and41, 0, !dbg !3098
  br i1 %tobool42, label %lor.end, label %lor.rhs, !dbg !3098

lor.rhs:                                          ; preds = %land.rhs
  %44 = load ptr, ptr %h.addr, align 8, !dbg !3098, !tbaa !563
  %keys = getelementptr inbounds %struct.kh_kh_rg_s, ptr %44, i32 0, i32 5, !dbg !3098
  %45 = load ptr, ptr %keys, align 8, !dbg !3098, !tbaa !2081
  %46 = load i32, ptr %i, align 4, !dbg !3098, !tbaa !946
  %idxprom43 = zext i32 %46 to i64, !dbg !3098
  %arrayidx44 = getelementptr inbounds ptr, ptr %45, i64 %idxprom43, !dbg !3098
  %47 = load ptr, ptr %arrayidx44, align 8, !dbg !3098, !tbaa !563
  %48 = load ptr, ptr %key.addr, align 8, !dbg !3098, !tbaa !563
  %call45 = call i32 @strcmp(ptr noundef %47, ptr noundef %48) #19, !dbg !3098
  %cmp46 = icmp eq i32 %call45, 0, !dbg !3098
  %lnot = xor i1 %cmp46, true, !dbg !3098
  br label %lor.end, !dbg !3098

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %49 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %50 = phi i1 [ false, %while.cond ], [ %49, %lor.end ], !dbg !3100
  br i1 %50, label %while.body, label %while.end, !dbg !3098

while.body:                                       ; preds = %land.end
  %51 = load ptr, ptr %h.addr, align 8, !dbg !3101, !tbaa !563
  %flags47 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %51, i32 0, i32 4, !dbg !3101
  %52 = load ptr, ptr %flags47, align 8, !dbg !3101, !tbaa !2078
  %53 = load i32, ptr %i, align 4, !dbg !3101, !tbaa !946
  %shr48 = lshr i32 %53, 4, !dbg !3101
  %idxprom49 = zext i32 %shr48 to i64, !dbg !3101
  %arrayidx50 = getelementptr inbounds i32, ptr %52, i64 %idxprom49, !dbg !3101
  %54 = load i32, ptr %arrayidx50, align 4, !dbg !3101, !tbaa !946
  %55 = load i32, ptr %i, align 4, !dbg !3101, !tbaa !946
  %and51 = and i32 %55, 15, !dbg !3101
  %shl52 = shl i32 %and51, 1, !dbg !3101
  %shr53 = lshr i32 %54, %shl52, !dbg !3101
  %and54 = and i32 %shr53, 1, !dbg !3101
  %tobool55 = icmp ne i32 %and54, 0, !dbg !3101
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !3104

if.then56:                                        ; preds = %while.body
  %56 = load i32, ptr %i, align 4, !dbg !3101, !tbaa !946
  store i32 %56, ptr %site, align 4, !dbg !3101, !tbaa !946
  br label %if.end57, !dbg !3101

if.end57:                                         ; preds = %if.then56, %while.body
  %57 = load i32, ptr %i, align 4, !dbg !3104, !tbaa !946
  %58 = load i32, ptr %step, align 4, !dbg !3104, !tbaa !946
  %inc = add i32 %58, 1, !dbg !3104
  store i32 %inc, ptr %step, align 4, !dbg !3104, !tbaa !946
  %add58 = add i32 %57, %inc, !dbg !3104
  %59 = load i32, ptr %mask, align 4, !dbg !3104, !tbaa !946
  %and59 = and i32 %add58, %59, !dbg !3104
  store i32 %and59, ptr %i, align 4, !dbg !3104, !tbaa !946
  %60 = load i32, ptr %i, align 4, !dbg !3105, !tbaa !946
  %61 = load i32, ptr %last, align 4, !dbg !3105, !tbaa !946
  %cmp60 = icmp eq i32 %60, %61, !dbg !3105
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3104

if.then61:                                        ; preds = %if.end57
  %62 = load i32, ptr %site, align 4, !dbg !3107, !tbaa !946
  store i32 %62, ptr %x, align 4, !dbg !3107, !tbaa !946
  br label %while.end, !dbg !3107

if.end62:                                         ; preds = %if.end57
  br label %while.cond, !dbg !3098, !llvm.loop !3109

while.end:                                        ; preds = %if.then61, %land.end
  %63 = load i32, ptr %x, align 4, !dbg !3110, !tbaa !946
  %64 = load ptr, ptr %h.addr, align 8, !dbg !3110, !tbaa !563
  %n_buckets63 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %64, i32 0, i32 0, !dbg !3110
  %65 = load i32, ptr %n_buckets63, align 8, !dbg !3110, !tbaa !2072
  %cmp64 = icmp eq i32 %63, %65, !dbg !3110
  br i1 %cmp64, label %if.then65, label %if.end80, !dbg !3098

if.then65:                                        ; preds = %while.end
  %66 = load ptr, ptr %h.addr, align 8, !dbg !3112, !tbaa !563
  %flags66 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %66, i32 0, i32 4, !dbg !3112
  %67 = load ptr, ptr %flags66, align 8, !dbg !3112, !tbaa !2078
  %68 = load i32, ptr %i, align 4, !dbg !3112, !tbaa !946
  %shr67 = lshr i32 %68, 4, !dbg !3112
  %idxprom68 = zext i32 %shr67 to i64, !dbg !3112
  %arrayidx69 = getelementptr inbounds i32, ptr %67, i64 %idxprom68, !dbg !3112
  %69 = load i32, ptr %arrayidx69, align 4, !dbg !3112, !tbaa !946
  %70 = load i32, ptr %i, align 4, !dbg !3112, !tbaa !946
  %and70 = and i32 %70, 15, !dbg !3112
  %shl71 = shl i32 %and70, 1, !dbg !3112
  %shr72 = lshr i32 %69, %shl71, !dbg !3112
  %and73 = and i32 %shr72, 2, !dbg !3112
  %tobool74 = icmp ne i32 %and73, 0, !dbg !3112
  br i1 %tobool74, label %land.lhs.true, label %if.else78, !dbg !3112

land.lhs.true:                                    ; preds = %if.then65
  %71 = load i32, ptr %site, align 4, !dbg !3112, !tbaa !946
  %72 = load ptr, ptr %h.addr, align 8, !dbg !3112, !tbaa !563
  %n_buckets75 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %72, i32 0, i32 0, !dbg !3112
  %73 = load i32, ptr %n_buckets75, align 8, !dbg !3112, !tbaa !2072
  %cmp76 = icmp ne i32 %71, %73, !dbg !3112
  br i1 %cmp76, label %if.then77, label %if.else78, !dbg !3115

if.then77:                                        ; preds = %land.lhs.true
  %74 = load i32, ptr %site, align 4, !dbg !3112, !tbaa !946
  store i32 %74, ptr %x, align 4, !dbg !3112, !tbaa !946
  br label %if.end79, !dbg !3112

if.else78:                                        ; preds = %land.lhs.true, %if.then65
  %75 = load i32, ptr %i, align 4, !dbg !3112, !tbaa !946
  store i32 %75, ptr %x, align 4, !dbg !3112, !tbaa !946
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %if.then77
  br label %if.end80, !dbg !3115

if.end80:                                         ; preds = %if.end79, %while.end
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then23
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #17, !dbg !3076
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #17, !dbg !3076
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #17, !dbg !3076
  call void @llvm.lifetime.end.p0(i64 4, ptr %site) #17, !dbg !3076
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !3076
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #17, !dbg !3076
  %76 = load ptr, ptr %h.addr, align 8, !dbg !3116, !tbaa !563
  %flags82 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %76, i32 0, i32 4, !dbg !3116
  %77 = load ptr, ptr %flags82, align 8, !dbg !3116, !tbaa !2078
  %78 = load i32, ptr %x, align 4, !dbg !3116, !tbaa !946
  %shr83 = lshr i32 %78, 4, !dbg !3116
  %idxprom84 = zext i32 %shr83 to i64, !dbg !3116
  %arrayidx85 = getelementptr inbounds i32, ptr %77, i64 %idxprom84, !dbg !3116
  %79 = load i32, ptr %arrayidx85, align 4, !dbg !3116, !tbaa !946
  %80 = load i32, ptr %x, align 4, !dbg !3116, !tbaa !946
  %and86 = and i32 %80, 15, !dbg !3116
  %shl87 = shl i32 %and86, 1, !dbg !3116
  %shr88 = lshr i32 %79, %shl87, !dbg !3116
  %and89 = and i32 %shr88, 2, !dbg !3116
  %tobool90 = icmp ne i32 %and89, 0, !dbg !3116
  br i1 %tobool90, label %if.then91, label %if.else108, !dbg !3076

if.then91:                                        ; preds = %if.end81
  %81 = load ptr, ptr %key.addr, align 8, !dbg !3118, !tbaa !563
  %82 = load ptr, ptr %h.addr, align 8, !dbg !3118, !tbaa !563
  %keys92 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %82, i32 0, i32 5, !dbg !3118
  %83 = load ptr, ptr %keys92, align 8, !dbg !3118, !tbaa !2081
  %84 = load i32, ptr %x, align 4, !dbg !3118, !tbaa !946
  %idxprom93 = zext i32 %84 to i64, !dbg !3118
  %arrayidx94 = getelementptr inbounds ptr, ptr %83, i64 %idxprom93, !dbg !3118
  store ptr %81, ptr %arrayidx94, align 8, !dbg !3118, !tbaa !563
  %85 = load i32, ptr %x, align 4, !dbg !3118, !tbaa !946
  %and95 = and i32 %85, 15, !dbg !3118
  %shl96 = shl i32 %and95, 1, !dbg !3118
  %sh_prom = zext i32 %shl96 to i64, !dbg !3118
  %shl97 = shl i64 3, %sh_prom, !dbg !3118
  %not = xor i64 %shl97, -1, !dbg !3118
  %86 = load ptr, ptr %h.addr, align 8, !dbg !3118, !tbaa !563
  %flags98 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %86, i32 0, i32 4, !dbg !3118
  %87 = load ptr, ptr %flags98, align 8, !dbg !3118, !tbaa !2078
  %88 = load i32, ptr %x, align 4, !dbg !3118, !tbaa !946
  %shr99 = lshr i32 %88, 4, !dbg !3118
  %idxprom100 = zext i32 %shr99 to i64, !dbg !3118
  %arrayidx101 = getelementptr inbounds i32, ptr %87, i64 %idxprom100, !dbg !3118
  %89 = load i32, ptr %arrayidx101, align 4, !dbg !3118, !tbaa !946
  %conv = zext i32 %89 to i64, !dbg !3118
  %and102 = and i64 %conv, %not, !dbg !3118
  %conv103 = trunc i64 %and102 to i32, !dbg !3118
  store i32 %conv103, ptr %arrayidx101, align 4, !dbg !3118, !tbaa !946
  %90 = load ptr, ptr %h.addr, align 8, !dbg !3118, !tbaa !563
  %size104 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %90, i32 0, i32 1, !dbg !3118
  %91 = load i32, ptr %size104, align 4, !dbg !3118, !tbaa !704
  %inc105 = add i32 %91, 1, !dbg !3118
  store i32 %inc105, ptr %size104, align 4, !dbg !3118, !tbaa !704
  %92 = load ptr, ptr %h.addr, align 8, !dbg !3118, !tbaa !563
  %n_occupied106 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %92, i32 0, i32 2, !dbg !3118
  %93 = load i32, ptr %n_occupied106, align 8, !dbg !3118, !tbaa !3079
  %inc107 = add i32 %93, 1, !dbg !3118
  store i32 %inc107, ptr %n_occupied106, align 8, !dbg !3118, !tbaa !3079
  %94 = load ptr, ptr %ret.addr, align 8, !dbg !3118, !tbaa !563
  store i32 1, ptr %94, align 4, !dbg !3118, !tbaa !946
  br label %if.end138, !dbg !3118

if.else108:                                       ; preds = %if.end81
  %95 = load ptr, ptr %h.addr, align 8, !dbg !3120, !tbaa !563
  %flags109 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %95, i32 0, i32 4, !dbg !3120
  %96 = load ptr, ptr %flags109, align 8, !dbg !3120, !tbaa !2078
  %97 = load i32, ptr %x, align 4, !dbg !3120, !tbaa !946
  %shr110 = lshr i32 %97, 4, !dbg !3120
  %idxprom111 = zext i32 %shr110 to i64, !dbg !3120
  %arrayidx112 = getelementptr inbounds i32, ptr %96, i64 %idxprom111, !dbg !3120
  %98 = load i32, ptr %arrayidx112, align 4, !dbg !3120, !tbaa !946
  %99 = load i32, ptr %x, align 4, !dbg !3120, !tbaa !946
  %and113 = and i32 %99, 15, !dbg !3120
  %shl114 = shl i32 %and113, 1, !dbg !3120
  %shr115 = lshr i32 %98, %shl114, !dbg !3120
  %and116 = and i32 %shr115, 1, !dbg !3120
  %tobool117 = icmp ne i32 %and116, 0, !dbg !3120
  br i1 %tobool117, label %if.then118, label %if.else136, !dbg !3116

if.then118:                                       ; preds = %if.else108
  %100 = load ptr, ptr %key.addr, align 8, !dbg !3122, !tbaa !563
  %101 = load ptr, ptr %h.addr, align 8, !dbg !3122, !tbaa !563
  %keys119 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %101, i32 0, i32 5, !dbg !3122
  %102 = load ptr, ptr %keys119, align 8, !dbg !3122, !tbaa !2081
  %103 = load i32, ptr %x, align 4, !dbg !3122, !tbaa !946
  %idxprom120 = zext i32 %103 to i64, !dbg !3122
  %arrayidx121 = getelementptr inbounds ptr, ptr %102, i64 %idxprom120, !dbg !3122
  store ptr %100, ptr %arrayidx121, align 8, !dbg !3122, !tbaa !563
  %104 = load i32, ptr %x, align 4, !dbg !3122, !tbaa !946
  %and122 = and i32 %104, 15, !dbg !3122
  %shl123 = shl i32 %and122, 1, !dbg !3122
  %sh_prom124 = zext i32 %shl123 to i64, !dbg !3122
  %shl125 = shl i64 3, %sh_prom124, !dbg !3122
  %not126 = xor i64 %shl125, -1, !dbg !3122
  %105 = load ptr, ptr %h.addr, align 8, !dbg !3122, !tbaa !563
  %flags127 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %105, i32 0, i32 4, !dbg !3122
  %106 = load ptr, ptr %flags127, align 8, !dbg !3122, !tbaa !2078
  %107 = load i32, ptr %x, align 4, !dbg !3122, !tbaa !946
  %shr128 = lshr i32 %107, 4, !dbg !3122
  %idxprom129 = zext i32 %shr128 to i64, !dbg !3122
  %arrayidx130 = getelementptr inbounds i32, ptr %106, i64 %idxprom129, !dbg !3122
  %108 = load i32, ptr %arrayidx130, align 4, !dbg !3122, !tbaa !946
  %conv131 = zext i32 %108 to i64, !dbg !3122
  %and132 = and i64 %conv131, %not126, !dbg !3122
  %conv133 = trunc i64 %and132 to i32, !dbg !3122
  store i32 %conv133, ptr %arrayidx130, align 4, !dbg !3122, !tbaa !946
  %109 = load ptr, ptr %h.addr, align 8, !dbg !3122, !tbaa !563
  %size134 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %109, i32 0, i32 1, !dbg !3122
  %110 = load i32, ptr %size134, align 4, !dbg !3122, !tbaa !704
  %inc135 = add i32 %110, 1, !dbg !3122
  store i32 %inc135, ptr %size134, align 4, !dbg !3122, !tbaa !704
  %111 = load ptr, ptr %ret.addr, align 8, !dbg !3122, !tbaa !563
  store i32 2, ptr %111, align 4, !dbg !3122, !tbaa !946
  br label %if.end137, !dbg !3122

if.else136:                                       ; preds = %if.else108
  %112 = load ptr, ptr %ret.addr, align 8, !dbg !3120, !tbaa !563
  store i32 0, ptr %112, align 4, !dbg !3120, !tbaa !946
  br label %if.end137

if.end137:                                        ; preds = %if.else136, %if.then118
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.then91
  %113 = load i32, ptr %x, align 4, !dbg !3076, !tbaa !946
  store i32 %113, ptr %retval, align 4, !dbg !3076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3076

cleanup:                                          ; preds = %if.end138, %if.then10, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #17, !dbg !3076
  %114 = load i32, ptr %retval, align 4, !dbg !3076
  ret i32 %114, !dbg !3076
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ks_release(ptr noundef %s) #9 !dbg !3124 {
entry:
  %s.addr = alloca ptr, align 8
  %ss = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3128, metadata !DIExpression()), !dbg !3130
  call void @llvm.lifetime.start.p0(i64 8, ptr %ss) #17, !dbg !3131
  tail call void @llvm.dbg.declare(metadata ptr %ss, metadata !3129, metadata !DIExpression()), !dbg !3132
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3133, !tbaa !563
  %s1 = getelementptr inbounds %struct.kstring_t, ptr %0, i32 0, i32 2, !dbg !3134
  %1 = load ptr, ptr %s1, align 8, !dbg !3134, !tbaa !1567
  store ptr %1, ptr %ss, align 8, !dbg !3132, !tbaa !563
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3135, !tbaa !563
  %m = getelementptr inbounds %struct.kstring_t, ptr %2, i32 0, i32 1, !dbg !3136
  store i64 0, ptr %m, align 8, !dbg !3137, !tbaa !3138
  %3 = load ptr, ptr %s.addr, align 8, !dbg !3139, !tbaa !563
  %l = getelementptr inbounds %struct.kstring_t, ptr %3, i32 0, i32 0, !dbg !3140
  store i64 0, ptr %l, align 8, !dbg !3141, !tbaa !3142
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3143, !tbaa !563
  %s2 = getelementptr inbounds %struct.kstring_t, ptr %4, i32 0, i32 2, !dbg !3144
  store ptr null, ptr %s2, align 8, !dbg !3145, !tbaa !1567
  %5 = load ptr, ptr %ss, align 8, !dbg !3146, !tbaa !563
  call void @llvm.lifetime.end.p0(i64 8, ptr %ss) #17, !dbg !3147
  ret ptr %5, !dbg !3148
}

declare !dbg !3149 void @perror(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_resize_kh_rg(ptr noundef %h, i32 noundef %new_n_buckets) #9 !dbg !3152 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %new_n_buckets.addr = alloca i32, align 4
  %new_flags = alloca ptr, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %new_keys = alloca ptr, align 8
  %new_vals = alloca ptr, align 8
  %key = alloca ptr, align 8
  %val = alloca ptr, align 8
  %new_mask = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %step = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %tmp144 = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !3156, metadata !DIExpression()), !dbg !3190
  store i32 %new_n_buckets, ptr %new_n_buckets.addr, align 4, !tbaa !946
  tail call void @llvm.dbg.declare(metadata ptr %new_n_buckets.addr, metadata !3157, metadata !DIExpression()), !dbg !3190
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_flags) #17, !dbg !3190
  tail call void @llvm.dbg.declare(metadata ptr %new_flags, metadata !3158, metadata !DIExpression()), !dbg !3190
  store ptr null, ptr %new_flags, align 8, !dbg !3190, !tbaa !563
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #17, !dbg !3190
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !3159, metadata !DIExpression()), !dbg !3190
  store i32 1, ptr %j, align 4, !dbg !3190, !tbaa !946
  %0 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %cmp = icmp ugt i32 %0, 0, !dbg !3191
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3191

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %dec = add i32 %1, -1, !dbg !3191
  store i32 %dec, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %2 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %shr = lshr i32 %2, 0, !dbg !3191
  %3 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %or = or i32 %3, %shr, !dbg !3191
  store i32 %or, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %4 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %shr1 = lshr i32 %4, 1, !dbg !3191
  %5 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %or2 = or i32 %5, %shr1, !dbg !3191
  store i32 %or2, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %6 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %shr3 = lshr i32 %6, 2, !dbg !3191
  %7 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %or4 = or i32 %7, %shr3, !dbg !3191
  store i32 %or4, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %8 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %shr5 = lshr i32 %8, 4, !dbg !3191
  %9 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %or6 = or i32 %9, %shr5, !dbg !3191
  store i32 %or6, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %10 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %shr7 = lshr i32 %10, 8, !dbg !3191
  %11 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %or8 = or i32 %11, %shr7, !dbg !3191
  store i32 %or8, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %12 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %shr9 = lshr i32 %12, 16, !dbg !3191
  %13 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %or10 = or i32 %13, %shr9, !dbg !3191
  store i32 %or10, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %14 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %15 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %mul = mul i32 %15, 0, !dbg !3191
  %add = add i32 %mul, 1, !dbg !3191
  %sub = sub i32 0, %add, !dbg !3191
  %cmp11 = icmp ugt i32 %sub, 0, !dbg !3191
  %lnot = xor i1 %cmp11, true, !dbg !3191
  %lnot.ext = zext i1 %lnot to i32, !dbg !3191
  %conv = sext i32 %lnot.ext to i64, !dbg !3191
  %sub12 = sub i64 31, %conv, !dbg !3191
  %sh_prom = trunc i64 %sub12 to i32, !dbg !3191
  %shr13 = lshr i32 %14, %sh_prom, !dbg !3191
  %and = and i32 %shr13, 1, !dbg !3191
  %tobool = icmp ne i32 %and, 0, !dbg !3191
  %lnot14 = xor i1 %tobool, true, !dbg !3191
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !3191
  %16 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %add16 = add i32 %16, %lnot.ext15, !dbg !3191
  store i32 %add16, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  %17 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3191, !tbaa !946
  br label %cond.end, !dbg !3191

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3191

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 0, %cond.false ], !dbg !3191
  %18 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3192, !tbaa !946
  %cmp17 = icmp ult i32 %18, 4, !dbg !3192
  br i1 %cmp17, label %if.then, label %if.end, !dbg !3191

if.then:                                          ; preds = %cond.end
  store i32 4, ptr %new_n_buckets.addr, align 4, !dbg !3192, !tbaa !946
  br label %if.end, !dbg !3192

if.end:                                           ; preds = %if.then, %cond.end
  %19 = load ptr, ptr %h.addr, align 8, !dbg !3194, !tbaa !563
  %size = getelementptr inbounds %struct.kh_kh_rg_s, ptr %19, i32 0, i32 1, !dbg !3194
  %20 = load i32, ptr %size, align 4, !dbg !3194, !tbaa !704
  %21 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3194, !tbaa !946
  %conv19 = uitofp i32 %21 to double, !dbg !3194
  %22 = call double @llvm.fmuladd.f64(double %conv19, double 7.700000e-01, double 5.000000e-01), !dbg !3194
  %conv21 = fptoui double %22 to i32, !dbg !3194
  %cmp22 = icmp uge i32 %20, %conv21, !dbg !3194
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !3191

if.then24:                                        ; preds = %if.end
  store i32 0, ptr %j, align 4, !dbg !3194, !tbaa !946
  br label %if.end67, !dbg !3194

if.else:                                          ; preds = %if.end
  %23 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3195, !tbaa !946
  %cmp25 = icmp ult i32 %23, 16, !dbg !3195
  br i1 %cmp25, label %cond.true27, label %cond.false28, !dbg !3195

cond.true27:                                      ; preds = %if.else
  br label %cond.end30, !dbg !3195

cond.false28:                                     ; preds = %if.else
  %24 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3195, !tbaa !946
  %shr29 = lshr i32 %24, 4, !dbg !3195
  br label %cond.end30, !dbg !3195

cond.end30:                                       ; preds = %cond.false28, %cond.true27
  %cond31 = phi i32 [ 1, %cond.true27 ], [ %shr29, %cond.false28 ], !dbg !3195
  %conv32 = zext i32 %cond31 to i64, !dbg !3195
  %mul33 = mul i64 %conv32, 4, !dbg !3195
  %call = call noalias ptr @malloc(i64 noundef %mul33) #21, !dbg !3195
  store ptr %call, ptr %new_flags, align 8, !dbg !3195, !tbaa !563
  %25 = load ptr, ptr %new_flags, align 8, !dbg !3196, !tbaa !563
  %tobool34 = icmp ne ptr %25, null, !dbg !3196
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !3195

if.then35:                                        ; preds = %cond.end30
  store i32 -1, ptr %retval, align 4, !dbg !3196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !3196

if.end36:                                         ; preds = %cond.end30
  %26 = load ptr, ptr %new_flags, align 8, !dbg !3195, !tbaa !563
  %27 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3195, !tbaa !946
  %cmp37 = icmp ult i32 %27, 16, !dbg !3195
  br i1 %cmp37, label %cond.true39, label %cond.false40, !dbg !3195

cond.true39:                                      ; preds = %if.end36
  br label %cond.end42, !dbg !3195

cond.false40:                                     ; preds = %if.end36
  %28 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3195, !tbaa !946
  %shr41 = lshr i32 %28, 4, !dbg !3195
  br label %cond.end42, !dbg !3195

cond.end42:                                       ; preds = %cond.false40, %cond.true39
  %cond43 = phi i32 [ 1, %cond.true39 ], [ %shr41, %cond.false40 ], !dbg !3195
  %conv44 = zext i32 %cond43 to i64, !dbg !3195
  %mul45 = mul i64 %conv44, 4, !dbg !3195
  call void @llvm.memset.p0.i64(ptr align 4 %26, i8 -86, i64 %mul45, i1 false), !dbg !3195
  %29 = load ptr, ptr %h.addr, align 8, !dbg !3198, !tbaa !563
  %n_buckets = getelementptr inbounds %struct.kh_kh_rg_s, ptr %29, i32 0, i32 0, !dbg !3198
  %30 = load i32, ptr %n_buckets, align 8, !dbg !3198, !tbaa !2072
  %31 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3198, !tbaa !946
  %cmp46 = icmp ult i32 %30, %31, !dbg !3198
  br i1 %cmp46, label %if.then48, label %if.end66, !dbg !3195

if.then48:                                        ; preds = %cond.end42
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_keys) #17, !dbg !3199
  tail call void @llvm.dbg.declare(metadata ptr %new_keys, metadata !3160, metadata !DIExpression()), !dbg !3199
  %32 = load ptr, ptr %h.addr, align 8, !dbg !3199, !tbaa !563
  %keys = getelementptr inbounds %struct.kh_kh_rg_s, ptr %32, i32 0, i32 5, !dbg !3199
  %33 = load ptr, ptr %keys, align 8, !dbg !3199, !tbaa !2081
  %34 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3199, !tbaa !946
  %conv49 = zext i32 %34 to i64, !dbg !3199
  %mul50 = mul i64 %conv49, 8, !dbg !3199
  %call51 = call ptr @realloc(ptr noundef %33, i64 noundef %mul50) #22, !dbg !3199
  store ptr %call51, ptr %new_keys, align 8, !dbg !3199, !tbaa !563
  %35 = load ptr, ptr %new_keys, align 8, !dbg !3200, !tbaa !563
  %tobool52 = icmp ne ptr %35, null, !dbg !3200
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !3199

if.then53:                                        ; preds = %if.then48
  %36 = load ptr, ptr %new_flags, align 8, !dbg !3202, !tbaa !563
  call void @free(ptr noundef %36) #17, !dbg !3202
  store i32 -1, ptr %retval, align 4, !dbg !3202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !3202

if.end54:                                         ; preds = %if.then48
  %37 = load ptr, ptr %new_keys, align 8, !dbg !3199, !tbaa !563
  %38 = load ptr, ptr %h.addr, align 8, !dbg !3199, !tbaa !563
  %keys55 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %38, i32 0, i32 5, !dbg !3199
  store ptr %37, ptr %keys55, align 8, !dbg !3199, !tbaa !2081
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_vals) #17, !dbg !3204
  tail call void @llvm.dbg.declare(metadata ptr %new_vals, metadata !3166, metadata !DIExpression()), !dbg !3204
  %39 = load ptr, ptr %h.addr, align 8, !dbg !3204, !tbaa !563
  %vals = getelementptr inbounds %struct.kh_kh_rg_s, ptr %39, i32 0, i32 6, !dbg !3204
  %40 = load ptr, ptr %vals, align 8, !dbg !3204, !tbaa !3205
  %41 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3204, !tbaa !946
  %conv56 = zext i32 %41 to i64, !dbg !3204
  %mul57 = mul i64 %conv56, 8, !dbg !3204
  %call58 = call ptr @realloc(ptr noundef %40, i64 noundef %mul57) #22, !dbg !3204
  store ptr %call58, ptr %new_vals, align 8, !dbg !3204, !tbaa !563
  %42 = load ptr, ptr %new_vals, align 8, !dbg !3206, !tbaa !563
  %tobool59 = icmp ne ptr %42, null, !dbg !3206
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !3204

if.then60:                                        ; preds = %if.end54
  %43 = load ptr, ptr %new_flags, align 8, !dbg !3208, !tbaa !563
  call void @free(ptr noundef %43) #17, !dbg !3208
  store i32 -1, ptr %retval, align 4, !dbg !3208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3208

if.end61:                                         ; preds = %if.end54
  %44 = load ptr, ptr %new_vals, align 8, !dbg !3204, !tbaa !563
  %45 = load ptr, ptr %h.addr, align 8, !dbg !3204, !tbaa !563
  %vals62 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %45, i32 0, i32 6, !dbg !3204
  store ptr %44, ptr %vals62, align 8, !dbg !3204, !tbaa !3205
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3210
  br label %cleanup, !dbg !3210

cleanup:                                          ; preds = %if.end61, %if.then60
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_vals) #17, !dbg !3210
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup63 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3198
  br label %cleanup63, !dbg !3198

cleanup63:                                        ; preds = %cleanup.cont, %cleanup, %if.then53
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_keys) #17, !dbg !3198
  %cleanup.dest64 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest64, label %cleanup202 [
    i32 0, label %cleanup.cont65
  ]

cleanup.cont65:                                   ; preds = %cleanup63
  br label %if.end66, !dbg !3199

if.end66:                                         ; preds = %cleanup.cont65, %cond.end42
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then24
  %46 = load i32, ptr %j, align 4, !dbg !3211, !tbaa !946
  %tobool68 = icmp ne i32 %46, 0, !dbg !3211
  br i1 %tobool68, label %if.then69, label %if.end201, !dbg !3190

if.then69:                                        ; preds = %if.end67
  store i32 0, ptr %j, align 4, !dbg !3212, !tbaa !946
  br label %for.cond, !dbg !3212

for.cond:                                         ; preds = %for.inc, %if.then69
  %47 = load i32, ptr %j, align 4, !dbg !3213, !tbaa !946
  %48 = load ptr, ptr %h.addr, align 8, !dbg !3213, !tbaa !563
  %n_buckets70 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %48, i32 0, i32 0, !dbg !3213
  %49 = load i32, ptr %n_buckets70, align 8, !dbg !3213, !tbaa !2072
  %cmp71 = icmp ne i32 %47, %49, !dbg !3213
  br i1 %cmp71, label %for.body, label %for.end, !dbg !3212

for.body:                                         ; preds = %for.cond
  %50 = load ptr, ptr %h.addr, align 8, !dbg !3214, !tbaa !563
  %flags = getelementptr inbounds %struct.kh_kh_rg_s, ptr %50, i32 0, i32 4, !dbg !3214
  %51 = load ptr, ptr %flags, align 8, !dbg !3214, !tbaa !2078
  %52 = load i32, ptr %j, align 4, !dbg !3214, !tbaa !946
  %shr73 = lshr i32 %52, 4, !dbg !3214
  %idxprom = zext i32 %shr73 to i64, !dbg !3214
  %arrayidx = getelementptr inbounds i32, ptr %51, i64 %idxprom, !dbg !3214
  %53 = load i32, ptr %arrayidx, align 4, !dbg !3214, !tbaa !946
  %54 = load i32, ptr %j, align 4, !dbg !3214, !tbaa !946
  %and74 = and i32 %54, 15, !dbg !3214
  %shl = shl i32 %and74, 1, !dbg !3214
  %shr75 = lshr i32 %53, %shl, !dbg !3214
  %and76 = and i32 %shr75, 3, !dbg !3214
  %cmp77 = icmp eq i32 %and76, 0, !dbg !3214
  br i1 %cmp77, label %if.then79, label %if.end176, !dbg !3215

if.then79:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #17, !dbg !3216
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !3169, metadata !DIExpression()), !dbg !3216
  %55 = load ptr, ptr %h.addr, align 8, !dbg !3216, !tbaa !563
  %keys80 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %55, i32 0, i32 5, !dbg !3216
  %56 = load ptr, ptr %keys80, align 8, !dbg !3216, !tbaa !2081
  %57 = load i32, ptr %j, align 4, !dbg !3216, !tbaa !946
  %idxprom81 = zext i32 %57 to i64, !dbg !3216
  %arrayidx82 = getelementptr inbounds ptr, ptr %56, i64 %idxprom81, !dbg !3216
  %58 = load ptr, ptr %arrayidx82, align 8, !dbg !3216, !tbaa !563
  store ptr %58, ptr %key, align 8, !dbg !3216, !tbaa !563
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !3216
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !3177, metadata !DIExpression()), !dbg !3216
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_mask) #17, !dbg !3216
  tail call void @llvm.dbg.declare(metadata ptr %new_mask, metadata !3178, metadata !DIExpression()), !dbg !3216
  %59 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3216, !tbaa !946
  %sub83 = sub i32 %59, 1, !dbg !3216
  store i32 %sub83, ptr %new_mask, align 4, !dbg !3216, !tbaa !946
  %60 = load ptr, ptr %h.addr, align 8, !dbg !3217, !tbaa !563
  %vals84 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %60, i32 0, i32 6, !dbg !3217
  %61 = load ptr, ptr %vals84, align 8, !dbg !3217, !tbaa !3205
  %62 = load i32, ptr %j, align 4, !dbg !3217, !tbaa !946
  %idxprom85 = zext i32 %62 to i64, !dbg !3217
  %arrayidx86 = getelementptr inbounds ptr, ptr %61, i64 %idxprom85, !dbg !3217
  %63 = load ptr, ptr %arrayidx86, align 8, !dbg !3217, !tbaa !563
  store ptr %63, ptr %val, align 8, !dbg !3217, !tbaa !563
  %64 = load i32, ptr %j, align 4, !dbg !3216, !tbaa !946
  %and87 = and i32 %64, 15, !dbg !3216
  %shl88 = shl i32 %and87, 1, !dbg !3216
  %sh_prom89 = zext i32 %shl88 to i64, !dbg !3216
  %shl90 = shl i64 1, %sh_prom89, !dbg !3216
  %65 = load ptr, ptr %h.addr, align 8, !dbg !3216, !tbaa !563
  %flags91 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %65, i32 0, i32 4, !dbg !3216
  %66 = load ptr, ptr %flags91, align 8, !dbg !3216, !tbaa !2078
  %67 = load i32, ptr %j, align 4, !dbg !3216, !tbaa !946
  %shr92 = lshr i32 %67, 4, !dbg !3216
  %idxprom93 = zext i32 %shr92 to i64, !dbg !3216
  %arrayidx94 = getelementptr inbounds i32, ptr %66, i64 %idxprom93, !dbg !3216
  %68 = load i32, ptr %arrayidx94, align 4, !dbg !3216, !tbaa !946
  %conv95 = zext i32 %68 to i64, !dbg !3216
  %or96 = or i64 %conv95, %shl90, !dbg !3216
  %conv97 = trunc i64 %or96 to i32, !dbg !3216
  store i32 %conv97, ptr %arrayidx94, align 4, !dbg !3216, !tbaa !946
  br label %while.cond, !dbg !3216

while.cond:                                       ; preds = %cleanup.cont174, %if.then79
  br label %while.body, !dbg !3216

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #17, !dbg !3219
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !3179, metadata !DIExpression()), !dbg !3219
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !3219
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3181, metadata !DIExpression()), !dbg !3219
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #17, !dbg !3219
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !3182, metadata !DIExpression()), !dbg !3219
  store i32 0, ptr %step, align 4, !dbg !3219, !tbaa !946
  %69 = load ptr, ptr %key, align 8, !dbg !3219, !tbaa !563
  %call98 = call i32 @__ac_X31_hash_string(ptr noundef %69), !dbg !3219
  store i32 %call98, ptr %k, align 4, !dbg !3219, !tbaa !946
  %70 = load i32, ptr %k, align 4, !dbg !3219, !tbaa !946
  %71 = load i32, ptr %new_mask, align 4, !dbg !3219, !tbaa !946
  %and99 = and i32 %70, %71, !dbg !3219
  store i32 %and99, ptr %i, align 4, !dbg !3219, !tbaa !946
  br label %while.cond100, !dbg !3219

while.cond100:                                    ; preds = %while.body111, %while.body
  %72 = load ptr, ptr %new_flags, align 8, !dbg !3219, !tbaa !563
  %73 = load i32, ptr %i, align 4, !dbg !3219, !tbaa !946
  %shr101 = lshr i32 %73, 4, !dbg !3219
  %idxprom102 = zext i32 %shr101 to i64, !dbg !3219
  %arrayidx103 = getelementptr inbounds i32, ptr %72, i64 %idxprom102, !dbg !3219
  %74 = load i32, ptr %arrayidx103, align 4, !dbg !3219, !tbaa !946
  %75 = load i32, ptr %i, align 4, !dbg !3219, !tbaa !946
  %and104 = and i32 %75, 15, !dbg !3219
  %shl105 = shl i32 %and104, 1, !dbg !3219
  %shr106 = lshr i32 %74, %shl105, !dbg !3219
  %and107 = and i32 %shr106, 2, !dbg !3219
  %tobool108 = icmp ne i32 %and107, 0, !dbg !3219
  %lnot109 = xor i1 %tobool108, true, !dbg !3219
  br i1 %lnot109, label %while.body111, label %while.end, !dbg !3219

while.body111:                                    ; preds = %while.cond100
  %76 = load i32, ptr %i, align 4, !dbg !3219, !tbaa !946
  %77 = load i32, ptr %step, align 4, !dbg !3219, !tbaa !946
  %inc = add i32 %77, 1, !dbg !3219
  store i32 %inc, ptr %step, align 4, !dbg !3219, !tbaa !946
  %add112 = add i32 %76, %inc, !dbg !3219
  %78 = load i32, ptr %new_mask, align 4, !dbg !3219, !tbaa !946
  %and113 = and i32 %add112, %78, !dbg !3219
  store i32 %and113, ptr %i, align 4, !dbg !3219, !tbaa !946
  br label %while.cond100, !dbg !3219, !llvm.loop !3220

while.end:                                        ; preds = %while.cond100
  %79 = load i32, ptr %i, align 4, !dbg !3219, !tbaa !946
  %and114 = and i32 %79, 15, !dbg !3219
  %shl115 = shl i32 %and114, 1, !dbg !3219
  %sh_prom116 = zext i32 %shl115 to i64, !dbg !3219
  %shl117 = shl i64 2, %sh_prom116, !dbg !3219
  %not = xor i64 %shl117, -1, !dbg !3219
  %80 = load ptr, ptr %new_flags, align 8, !dbg !3219, !tbaa !563
  %81 = load i32, ptr %i, align 4, !dbg !3219, !tbaa !946
  %shr118 = lshr i32 %81, 4, !dbg !3219
  %idxprom119 = zext i32 %shr118 to i64, !dbg !3219
  %arrayidx120 = getelementptr inbounds i32, ptr %80, i64 %idxprom119, !dbg !3219
  %82 = load i32, ptr %arrayidx120, align 4, !dbg !3219, !tbaa !946
  %conv121 = zext i32 %82 to i64, !dbg !3219
  %and122 = and i64 %conv121, %not, !dbg !3219
  %conv123 = trunc i64 %and122 to i32, !dbg !3219
  store i32 %conv123, ptr %arrayidx120, align 4, !dbg !3219, !tbaa !946
  %83 = load i32, ptr %i, align 4, !dbg !3221, !tbaa !946
  %84 = load ptr, ptr %h.addr, align 8, !dbg !3221, !tbaa !563
  %n_buckets124 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %84, i32 0, i32 0, !dbg !3221
  %85 = load i32, ptr %n_buckets124, align 8, !dbg !3221, !tbaa !2072
  %cmp125 = icmp ult i32 %83, %85, !dbg !3221
  br i1 %cmp125, label %land.lhs.true, label %if.else162, !dbg !3221

land.lhs.true:                                    ; preds = %while.end
  %86 = load ptr, ptr %h.addr, align 8, !dbg !3221, !tbaa !563
  %flags127 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %86, i32 0, i32 4, !dbg !3221
  %87 = load ptr, ptr %flags127, align 8, !dbg !3221, !tbaa !2078
  %88 = load i32, ptr %i, align 4, !dbg !3221, !tbaa !946
  %shr128 = lshr i32 %88, 4, !dbg !3221
  %idxprom129 = zext i32 %shr128 to i64, !dbg !3221
  %arrayidx130 = getelementptr inbounds i32, ptr %87, i64 %idxprom129, !dbg !3221
  %89 = load i32, ptr %arrayidx130, align 4, !dbg !3221, !tbaa !946
  %90 = load i32, ptr %i, align 4, !dbg !3221, !tbaa !946
  %and131 = and i32 %90, 15, !dbg !3221
  %shl132 = shl i32 %and131, 1, !dbg !3221
  %shr133 = lshr i32 %89, %shl132, !dbg !3221
  %and134 = and i32 %shr133, 3, !dbg !3221
  %cmp135 = icmp eq i32 %and134, 0, !dbg !3221
  br i1 %cmp135, label %if.then137, label %if.else162, !dbg !3219

if.then137:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !3222
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3183, metadata !DIExpression()), !dbg !3222
  %91 = load ptr, ptr %h.addr, align 8, !dbg !3222, !tbaa !563
  %keys138 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %91, i32 0, i32 5, !dbg !3222
  %92 = load ptr, ptr %keys138, align 8, !dbg !3222, !tbaa !2081
  %93 = load i32, ptr %i, align 4, !dbg !3222, !tbaa !946
  %idxprom139 = zext i32 %93 to i64, !dbg !3222
  %arrayidx140 = getelementptr inbounds ptr, ptr %92, i64 %idxprom139, !dbg !3222
  %94 = load ptr, ptr %arrayidx140, align 8, !dbg !3222, !tbaa !563
  store ptr %94, ptr %tmp, align 8, !dbg !3222, !tbaa !563
  %95 = load ptr, ptr %key, align 8, !dbg !3222, !tbaa !563
  %96 = load ptr, ptr %h.addr, align 8, !dbg !3222, !tbaa !563
  %keys141 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %96, i32 0, i32 5, !dbg !3222
  %97 = load ptr, ptr %keys141, align 8, !dbg !3222, !tbaa !2081
  %98 = load i32, ptr %i, align 4, !dbg !3222, !tbaa !946
  %idxprom142 = zext i32 %98 to i64, !dbg !3222
  %arrayidx143 = getelementptr inbounds ptr, ptr %97, i64 %idxprom142, !dbg !3222
  store ptr %95, ptr %arrayidx143, align 8, !dbg !3222, !tbaa !563
  %99 = load ptr, ptr %tmp, align 8, !dbg !3222, !tbaa !563
  store ptr %99, ptr %key, align 8, !dbg !3222, !tbaa !563
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !3223
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp144) #17, !dbg !3224
  tail call void @llvm.dbg.declare(metadata ptr %tmp144, metadata !3187, metadata !DIExpression()), !dbg !3224
  %100 = load ptr, ptr %h.addr, align 8, !dbg !3224, !tbaa !563
  %vals145 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %100, i32 0, i32 6, !dbg !3224
  %101 = load ptr, ptr %vals145, align 8, !dbg !3224, !tbaa !3205
  %102 = load i32, ptr %i, align 4, !dbg !3224, !tbaa !946
  %idxprom146 = zext i32 %102 to i64, !dbg !3224
  %arrayidx147 = getelementptr inbounds ptr, ptr %101, i64 %idxprom146, !dbg !3224
  %103 = load ptr, ptr %arrayidx147, align 8, !dbg !3224, !tbaa !563
  store ptr %103, ptr %tmp144, align 8, !dbg !3224, !tbaa !563
  %104 = load ptr, ptr %val, align 8, !dbg !3224, !tbaa !563
  %105 = load ptr, ptr %h.addr, align 8, !dbg !3224, !tbaa !563
  %vals148 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %105, i32 0, i32 6, !dbg !3224
  %106 = load ptr, ptr %vals148, align 8, !dbg !3224, !tbaa !3205
  %107 = load i32, ptr %i, align 4, !dbg !3224, !tbaa !946
  %idxprom149 = zext i32 %107 to i64, !dbg !3224
  %arrayidx150 = getelementptr inbounds ptr, ptr %106, i64 %idxprom149, !dbg !3224
  store ptr %104, ptr %arrayidx150, align 8, !dbg !3224, !tbaa !563
  %108 = load ptr, ptr %tmp144, align 8, !dbg !3224, !tbaa !563
  store ptr %108, ptr %val, align 8, !dbg !3224, !tbaa !563
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp144) #17, !dbg !3225
  %109 = load i32, ptr %i, align 4, !dbg !3223, !tbaa !946
  %and151 = and i32 %109, 15, !dbg !3223
  %shl152 = shl i32 %and151, 1, !dbg !3223
  %sh_prom153 = zext i32 %shl152 to i64, !dbg !3223
  %shl154 = shl i64 1, %sh_prom153, !dbg !3223
  %110 = load ptr, ptr %h.addr, align 8, !dbg !3223, !tbaa !563
  %flags155 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %110, i32 0, i32 4, !dbg !3223
  %111 = load ptr, ptr %flags155, align 8, !dbg !3223, !tbaa !2078
  %112 = load i32, ptr %i, align 4, !dbg !3223, !tbaa !946
  %shr156 = lshr i32 %112, 4, !dbg !3223
  %idxprom157 = zext i32 %shr156 to i64, !dbg !3223
  %arrayidx158 = getelementptr inbounds i32, ptr %111, i64 %idxprom157, !dbg !3223
  %113 = load i32, ptr %arrayidx158, align 4, !dbg !3223, !tbaa !946
  %conv159 = zext i32 %113 to i64, !dbg !3223
  %or160 = or i64 %conv159, %shl154, !dbg !3223
  %conv161 = trunc i64 %or160 to i32, !dbg !3223
  store i32 %conv161, ptr %arrayidx158, align 4, !dbg !3223, !tbaa !946
  br label %if.end169, !dbg !3223

if.else162:                                       ; preds = %land.lhs.true, %while.end
  %114 = load ptr, ptr %key, align 8, !dbg !3226, !tbaa !563
  %115 = load ptr, ptr %h.addr, align 8, !dbg !3226, !tbaa !563
  %keys163 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %115, i32 0, i32 5, !dbg !3226
  %116 = load ptr, ptr %keys163, align 8, !dbg !3226, !tbaa !2081
  %117 = load i32, ptr %i, align 4, !dbg !3226, !tbaa !946
  %idxprom164 = zext i32 %117 to i64, !dbg !3226
  %arrayidx165 = getelementptr inbounds ptr, ptr %116, i64 %idxprom164, !dbg !3226
  store ptr %114, ptr %arrayidx165, align 8, !dbg !3226, !tbaa !563
  %118 = load ptr, ptr %val, align 8, !dbg !3228, !tbaa !563
  %119 = load ptr, ptr %h.addr, align 8, !dbg !3228, !tbaa !563
  %vals166 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %119, i32 0, i32 6, !dbg !3228
  %120 = load ptr, ptr %vals166, align 8, !dbg !3228, !tbaa !3205
  %121 = load i32, ptr %i, align 4, !dbg !3228, !tbaa !946
  %idxprom167 = zext i32 %121 to i64, !dbg !3228
  %arrayidx168 = getelementptr inbounds ptr, ptr %120, i64 %idxprom167, !dbg !3228
  store ptr %118, ptr %arrayidx168, align 8, !dbg !3228, !tbaa !563
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup170, !dbg !3226

if.end169:                                        ; preds = %if.then137
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3216
  br label %cleanup170, !dbg !3216

cleanup170:                                       ; preds = %if.end169, %if.else162
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #17, !dbg !3216
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !3216
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #17, !dbg !3216
  %cleanup.dest173 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest173, label %unreachable [
    i32 0, label %cleanup.cont174
    i32 6, label %while.end175
  ]

cleanup.cont174:                                  ; preds = %cleanup170
  br label %while.cond, !dbg !3216, !llvm.loop !3230

while.end175:                                     ; preds = %cleanup170
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_mask) #17, !dbg !3214
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !3214
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #17, !dbg !3214
  br label %if.end176, !dbg !3216

if.end176:                                        ; preds = %while.end175, %for.body
  br label %for.inc, !dbg !3215

for.inc:                                          ; preds = %if.end176
  %122 = load i32, ptr %j, align 4, !dbg !3213, !tbaa !946
  %inc177 = add i32 %122, 1, !dbg !3213
  store i32 %inc177, ptr %j, align 4, !dbg !3213, !tbaa !946
  br label %for.cond, !dbg !3213, !llvm.loop !3231

for.end:                                          ; preds = %for.cond
  %123 = load ptr, ptr %h.addr, align 8, !dbg !3232, !tbaa !563
  %n_buckets178 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %123, i32 0, i32 0, !dbg !3232
  %124 = load i32, ptr %n_buckets178, align 8, !dbg !3232, !tbaa !2072
  %125 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3232, !tbaa !946
  %cmp179 = icmp ugt i32 %124, %125, !dbg !3232
  br i1 %cmp179, label %if.then181, label %if.end192, !dbg !3234

if.then181:                                       ; preds = %for.end
  %126 = load ptr, ptr %h.addr, align 8, !dbg !3235, !tbaa !563
  %keys182 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %126, i32 0, i32 5, !dbg !3235
  %127 = load ptr, ptr %keys182, align 8, !dbg !3235, !tbaa !2081
  %128 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3235, !tbaa !946
  %conv183 = zext i32 %128 to i64, !dbg !3235
  %mul184 = mul i64 %conv183, 8, !dbg !3235
  %call185 = call ptr @realloc(ptr noundef %127, i64 noundef %mul184) #22, !dbg !3235
  %129 = load ptr, ptr %h.addr, align 8, !dbg !3235, !tbaa !563
  %keys186 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %129, i32 0, i32 5, !dbg !3235
  store ptr %call185, ptr %keys186, align 8, !dbg !3235, !tbaa !2081
  %130 = load ptr, ptr %h.addr, align 8, !dbg !3237, !tbaa !563
  %vals187 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %130, i32 0, i32 6, !dbg !3237
  %131 = load ptr, ptr %vals187, align 8, !dbg !3237, !tbaa !3205
  %132 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3237, !tbaa !946
  %conv188 = zext i32 %132 to i64, !dbg !3237
  %mul189 = mul i64 %conv188, 8, !dbg !3237
  %call190 = call ptr @realloc(ptr noundef %131, i64 noundef %mul189) #22, !dbg !3237
  %133 = load ptr, ptr %h.addr, align 8, !dbg !3237, !tbaa !563
  %vals191 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %133, i32 0, i32 6, !dbg !3237
  store ptr %call190, ptr %vals191, align 8, !dbg !3237, !tbaa !3205
  br label %if.end192, !dbg !3235

if.end192:                                        ; preds = %if.then181, %for.end
  %134 = load ptr, ptr %h.addr, align 8, !dbg !3234, !tbaa !563
  %flags193 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %134, i32 0, i32 4, !dbg !3234
  %135 = load ptr, ptr %flags193, align 8, !dbg !3234, !tbaa !2078
  call void @free(ptr noundef %135) #17, !dbg !3234
  %136 = load ptr, ptr %new_flags, align 8, !dbg !3234, !tbaa !563
  %137 = load ptr, ptr %h.addr, align 8, !dbg !3234, !tbaa !563
  %flags194 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %137, i32 0, i32 4, !dbg !3234
  store ptr %136, ptr %flags194, align 8, !dbg !3234, !tbaa !2078
  %138 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3234, !tbaa !946
  %139 = load ptr, ptr %h.addr, align 8, !dbg !3234, !tbaa !563
  %n_buckets195 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %139, i32 0, i32 0, !dbg !3234
  store i32 %138, ptr %n_buckets195, align 8, !dbg !3234, !tbaa !2072
  %140 = load ptr, ptr %h.addr, align 8, !dbg !3234, !tbaa !563
  %size196 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %140, i32 0, i32 1, !dbg !3234
  %141 = load i32, ptr %size196, align 4, !dbg !3234, !tbaa !704
  %142 = load ptr, ptr %h.addr, align 8, !dbg !3234, !tbaa !563
  %n_occupied = getelementptr inbounds %struct.kh_kh_rg_s, ptr %142, i32 0, i32 2, !dbg !3234
  store i32 %141, ptr %n_occupied, align 8, !dbg !3234, !tbaa !3079
  %143 = load ptr, ptr %h.addr, align 8, !dbg !3234, !tbaa !563
  %n_buckets197 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %143, i32 0, i32 0, !dbg !3234
  %144 = load i32, ptr %n_buckets197, align 8, !dbg !3234, !tbaa !2072
  %conv198 = uitofp i32 %144 to double, !dbg !3234
  %145 = call double @llvm.fmuladd.f64(double %conv198, double 7.700000e-01, double 5.000000e-01), !dbg !3234
  %conv200 = fptoui double %145 to i32, !dbg !3234
  %146 = load ptr, ptr %h.addr, align 8, !dbg !3234, !tbaa !563
  %upper_bound = getelementptr inbounds %struct.kh_kh_rg_s, ptr %146, i32 0, i32 3, !dbg !3234
  store i32 %conv200, ptr %upper_bound, align 4, !dbg !3234, !tbaa !3080
  br label %if.end201, !dbg !3234

if.end201:                                        ; preds = %if.end192, %if.end67
  store i32 0, ptr %retval, align 4, !dbg !3190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !3190

cleanup202:                                       ; preds = %if.end201, %cleanup63, %if.then35
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #17, !dbg !3190
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_flags) #17, !dbg !3190
  %147 = load i32, ptr %retval, align 4, !dbg !3190
  ret i32 %147, !dbg !3190

unreachable:                                      ; preds = %cleanup170
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__ac_X31_hash_string(ptr noundef %s) #9 !dbg !3239 {
entry:
  %s.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3243, metadata !DIExpression()), !dbg !3245
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #17, !dbg !3246
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !3244, metadata !DIExpression()), !dbg !3247
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3248, !tbaa !563
  %1 = load i8, ptr %0, align 1, !dbg !3249, !tbaa !1004
  %conv = sext i8 %1 to i32, !dbg !3250
  store i32 %conv, ptr %h, align 4, !dbg !3247, !tbaa !946
  %2 = load i32, ptr %h, align 4, !dbg !3251, !tbaa !946
  %tobool = icmp ne i32 %2, 0, !dbg !3251
  br i1 %tobool, label %if.then, label %if.end, !dbg !3253

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !3254, !tbaa !563
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1, !dbg !3254
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !3254, !tbaa !563
  br label %for.cond, !dbg !3254

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3256, !tbaa !563
  %5 = load i8, ptr %4, align 1, !dbg !3258, !tbaa !1004
  %tobool1 = icmp ne i8 %5, 0, !dbg !3259
  br i1 %tobool1, label %for.body, label %for.end, !dbg !3259

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %h, align 4, !dbg !3260, !tbaa !946
  %shl = shl i32 %6, 5, !dbg !3261
  %7 = load i32, ptr %h, align 4, !dbg !3262, !tbaa !946
  %sub = sub i32 %shl, %7, !dbg !3263
  %8 = load ptr, ptr %s.addr, align 8, !dbg !3264, !tbaa !563
  %9 = load i8, ptr %8, align 1, !dbg !3265, !tbaa !1004
  %conv2 = sext i8 %9 to i32, !dbg !3266
  %add = add i32 %sub, %conv2, !dbg !3267
  store i32 %add, ptr %h, align 4, !dbg !3268, !tbaa !946
  br label %for.inc, !dbg !3269

for.inc:                                          ; preds = %for.body
  %10 = load ptr, ptr %s.addr, align 8, !dbg !3270, !tbaa !563
  %incdec.ptr3 = getelementptr inbounds i8, ptr %10, i32 1, !dbg !3270
  store ptr %incdec.ptr3, ptr %s.addr, align 8, !dbg !3270, !tbaa !563
  br label %for.cond, !dbg !3271, !llvm.loop !3272

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !3273

if.end:                                           ; preds = %for.end, %entry
  %11 = load i32, ptr %h, align 4, !dbg !3274, !tbaa !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #17, !dbg !3275
  ret i32 %11, !dbg !3276
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: nounwind allocsize(0)
declare !dbg !3277 noalias ptr @malloc(i64 noundef) #13

; Function Attrs: nounwind allocsize(1)
declare !dbg !3280 ptr @realloc(ptr noundef, i64 noundef) #14

; Function Attrs: inlinehint nounwind uwtable
define internal void @kh_destroy_kh_rg(ptr noundef %h) #9 !dbg !3283 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !3285, metadata !DIExpression()), !dbg !3286
  %0 = load ptr, ptr %h.addr, align 8, !dbg !3287, !tbaa !563
  %tobool = icmp ne ptr %0, null, !dbg !3287
  br i1 %tobool, label %if.then, label %if.end, !dbg !3286

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %h.addr, align 8, !dbg !3289, !tbaa !563
  %keys = getelementptr inbounds %struct.kh_kh_rg_s, ptr %1, i32 0, i32 5, !dbg !3289
  %2 = load ptr, ptr %keys, align 8, !dbg !3289, !tbaa !2081
  call void @free(ptr noundef %2) #17, !dbg !3289
  %3 = load ptr, ptr %h.addr, align 8, !dbg !3289, !tbaa !563
  %flags = getelementptr inbounds %struct.kh_kh_rg_s, ptr %3, i32 0, i32 4, !dbg !3289
  %4 = load ptr, ptr %flags, align 8, !dbg !3289, !tbaa !2078
  call void @free(ptr noundef %4) #17, !dbg !3289
  %5 = load ptr, ptr %h.addr, align 8, !dbg !3289, !tbaa !563
  %vals = getelementptr inbounds %struct.kh_kh_rg_s, ptr %5, i32 0, i32 6, !dbg !3289
  %6 = load ptr, ptr %vals, align 8, !dbg !3289, !tbaa !3205
  call void @free(ptr noundef %6) #17, !dbg !3289
  %7 = load ptr, ptr %h.addr, align 8, !dbg !3289, !tbaa !563
  call void @free(ptr noundef %7) #17, !dbg !3289
  br label %if.end, !dbg !3289

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3286
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ks_initialize(ptr noundef %s) #9 !dbg !3291 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3293, metadata !DIExpression()), !dbg !3294
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3295, !tbaa !563
  %m = getelementptr inbounds %struct.kstring_t, ptr %0, i32 0, i32 1, !dbg !3296
  store i64 0, ptr %m, align 8, !dbg !3297, !tbaa !3138
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3298, !tbaa !563
  %l = getelementptr inbounds %struct.kstring_t, ptr %1, i32 0, i32 0, !dbg !3299
  store i64 0, ptr %l, align 8, !dbg !3300, !tbaa !3142
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3301, !tbaa !563
  %s1 = getelementptr inbounds %struct.kstring_t, ptr %2, i32 0, i32 2, !dbg !3302
  store ptr null, ptr %s1, align 8, !dbg !3303, !tbaa !1567
  ret void, !dbg !3304
}

declare !dbg !3305 void @hts_log(i32 noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !3308 i32 @hts_itr_multi_next(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3311 i32 @hts_itr_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3314 ptr @bam_aux_get(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_get_kh_rg(ptr noundef %h, ptr noundef %key) #9 !dbg !3317 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %last = alloca i32, align 4
  %mask = alloca i32, align 4
  %step = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !3323, metadata !DIExpression()), !dbg !3332
  store ptr %key, ptr %key.addr, align 8, !tbaa !563
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3324, metadata !DIExpression()), !dbg !3332
  %0 = load ptr, ptr %h.addr, align 8, !dbg !3333, !tbaa !563
  %n_buckets = getelementptr inbounds %struct.kh_kh_rg_s, ptr %0, i32 0, i32 0, !dbg !3333
  %1 = load i32, ptr %n_buckets, align 8, !dbg !3333, !tbaa !2072
  %tobool = icmp ne i32 %1, 0, !dbg !3333
  br i1 %tobool, label %if.then, label %if.else, !dbg !3332

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #17, !dbg !3334
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !3325, metadata !DIExpression()), !dbg !3334
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !3334
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3328, metadata !DIExpression()), !dbg !3334
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #17, !dbg !3334
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !3329, metadata !DIExpression()), !dbg !3334
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #17, !dbg !3334
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !3330, metadata !DIExpression()), !dbg !3334
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #17, !dbg !3334
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !3331, metadata !DIExpression()), !dbg !3334
  store i32 0, ptr %step, align 4, !dbg !3334, !tbaa !946
  %2 = load ptr, ptr %h.addr, align 8, !dbg !3334, !tbaa !563
  %n_buckets1 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %2, i32 0, i32 0, !dbg !3334
  %3 = load i32, ptr %n_buckets1, align 8, !dbg !3334, !tbaa !2072
  %sub = sub i32 %3, 1, !dbg !3334
  store i32 %sub, ptr %mask, align 4, !dbg !3334, !tbaa !946
  %4 = load ptr, ptr %key.addr, align 8, !dbg !3334, !tbaa !563
  %call = call i32 @__ac_X31_hash_string(ptr noundef %4), !dbg !3334
  store i32 %call, ptr %k, align 4, !dbg !3334, !tbaa !946
  %5 = load i32, ptr %k, align 4, !dbg !3334, !tbaa !946
  %6 = load i32, ptr %mask, align 4, !dbg !3334, !tbaa !946
  %and = and i32 %5, %6, !dbg !3334
  store i32 %and, ptr %i, align 4, !dbg !3334, !tbaa !946
  %7 = load i32, ptr %i, align 4, !dbg !3334, !tbaa !946
  store i32 %7, ptr %last, align 4, !dbg !3334, !tbaa !946
  br label %while.cond, !dbg !3334

while.cond:                                       ; preds = %if.end, %if.then
  %8 = load ptr, ptr %h.addr, align 8, !dbg !3334, !tbaa !563
  %flags = getelementptr inbounds %struct.kh_kh_rg_s, ptr %8, i32 0, i32 4, !dbg !3334
  %9 = load ptr, ptr %flags, align 8, !dbg !3334, !tbaa !2078
  %10 = load i32, ptr %i, align 4, !dbg !3334, !tbaa !946
  %shr = lshr i32 %10, 4, !dbg !3334
  %idxprom = zext i32 %shr to i64, !dbg !3334
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %idxprom, !dbg !3334
  %11 = load i32, ptr %arrayidx, align 4, !dbg !3334, !tbaa !946
  %12 = load i32, ptr %i, align 4, !dbg !3334, !tbaa !946
  %and2 = and i32 %12, 15, !dbg !3334
  %shl = shl i32 %and2, 1, !dbg !3334
  %shr3 = lshr i32 %11, %shl, !dbg !3334
  %and4 = and i32 %shr3, 2, !dbg !3334
  %tobool5 = icmp ne i32 %and4, 0, !dbg !3334
  br i1 %tobool5, label %land.end, label %land.rhs, !dbg !3334

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %h.addr, align 8, !dbg !3334, !tbaa !563
  %flags6 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %13, i32 0, i32 4, !dbg !3334
  %14 = load ptr, ptr %flags6, align 8, !dbg !3334, !tbaa !2078
  %15 = load i32, ptr %i, align 4, !dbg !3334, !tbaa !946
  %shr7 = lshr i32 %15, 4, !dbg !3334
  %idxprom8 = zext i32 %shr7 to i64, !dbg !3334
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 %idxprom8, !dbg !3334
  %16 = load i32, ptr %arrayidx9, align 4, !dbg !3334, !tbaa !946
  %17 = load i32, ptr %i, align 4, !dbg !3334, !tbaa !946
  %and10 = and i32 %17, 15, !dbg !3334
  %shl11 = shl i32 %and10, 1, !dbg !3334
  %shr12 = lshr i32 %16, %shl11, !dbg !3334
  %and13 = and i32 %shr12, 1, !dbg !3334
  %tobool14 = icmp ne i32 %and13, 0, !dbg !3334
  br i1 %tobool14, label %lor.end, label %lor.rhs, !dbg !3334

lor.rhs:                                          ; preds = %land.rhs
  %18 = load ptr, ptr %h.addr, align 8, !dbg !3334, !tbaa !563
  %keys = getelementptr inbounds %struct.kh_kh_rg_s, ptr %18, i32 0, i32 5, !dbg !3334
  %19 = load ptr, ptr %keys, align 8, !dbg !3334, !tbaa !2081
  %20 = load i32, ptr %i, align 4, !dbg !3334, !tbaa !946
  %idxprom15 = zext i32 %20 to i64, !dbg !3334
  %arrayidx16 = getelementptr inbounds ptr, ptr %19, i64 %idxprom15, !dbg !3334
  %21 = load ptr, ptr %arrayidx16, align 8, !dbg !3334, !tbaa !563
  %22 = load ptr, ptr %key.addr, align 8, !dbg !3334, !tbaa !563
  %call17 = call i32 @strcmp(ptr noundef %21, ptr noundef %22) #19, !dbg !3334
  %cmp = icmp eq i32 %call17, 0, !dbg !3334
  %lnot = xor i1 %cmp, true, !dbg !3334
  br label %lor.end, !dbg !3334

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %23 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %23, %lor.end ], !dbg !3335
  br i1 %24, label %while.body, label %while.end, !dbg !3334

while.body:                                       ; preds = %land.end
  %25 = load i32, ptr %i, align 4, !dbg !3336, !tbaa !946
  %26 = load i32, ptr %step, align 4, !dbg !3336, !tbaa !946
  %inc = add i32 %26, 1, !dbg !3336
  store i32 %inc, ptr %step, align 4, !dbg !3336, !tbaa !946
  %add = add i32 %25, %inc, !dbg !3336
  %27 = load i32, ptr %mask, align 4, !dbg !3336, !tbaa !946
  %and18 = and i32 %add, %27, !dbg !3336
  store i32 %and18, ptr %i, align 4, !dbg !3336, !tbaa !946
  %28 = load i32, ptr %i, align 4, !dbg !3338, !tbaa !946
  %29 = load i32, ptr %last, align 4, !dbg !3338, !tbaa !946
  %cmp19 = icmp eq i32 %28, %29, !dbg !3338
  br i1 %cmp19, label %if.then20, label %if.end, !dbg !3336

if.then20:                                        ; preds = %while.body
  %30 = load ptr, ptr %h.addr, align 8, !dbg !3338, !tbaa !563
  %n_buckets21 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %30, i32 0, i32 0, !dbg !3338
  %31 = load i32, ptr %n_buckets21, align 8, !dbg !3338, !tbaa !2072
  store i32 %31, ptr %retval, align 4, !dbg !3338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3338

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !3334, !llvm.loop !3340

while.end:                                        ; preds = %land.end
  %32 = load ptr, ptr %h.addr, align 8, !dbg !3334, !tbaa !563
  %flags22 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %32, i32 0, i32 4, !dbg !3334
  %33 = load ptr, ptr %flags22, align 8, !dbg !3334, !tbaa !2078
  %34 = load i32, ptr %i, align 4, !dbg !3334, !tbaa !946
  %shr23 = lshr i32 %34, 4, !dbg !3334
  %idxprom24 = zext i32 %shr23 to i64, !dbg !3334
  %arrayidx25 = getelementptr inbounds i32, ptr %33, i64 %idxprom24, !dbg !3334
  %35 = load i32, ptr %arrayidx25, align 4, !dbg !3334, !tbaa !946
  %36 = load i32, ptr %i, align 4, !dbg !3334, !tbaa !946
  %and26 = and i32 %36, 15, !dbg !3334
  %shl27 = shl i32 %and26, 1, !dbg !3334
  %shr28 = lshr i32 %35, %shl27, !dbg !3334
  %and29 = and i32 %shr28, 3, !dbg !3334
  %tobool30 = icmp ne i32 %and29, 0, !dbg !3334
  br i1 %tobool30, label %cond.true, label %cond.false, !dbg !3334

cond.true:                                        ; preds = %while.end
  %37 = load ptr, ptr %h.addr, align 8, !dbg !3334, !tbaa !563
  %n_buckets31 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %37, i32 0, i32 0, !dbg !3334
  %38 = load i32, ptr %n_buckets31, align 8, !dbg !3334, !tbaa !2072
  br label %cond.end, !dbg !3334

cond.false:                                       ; preds = %while.end
  %39 = load i32, ptr %i, align 4, !dbg !3334, !tbaa !946
  br label %cond.end, !dbg !3334

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %38, %cond.true ], [ %39, %cond.false ], !dbg !3334
  store i32 %cond, ptr %retval, align 4, !dbg !3334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3334

cleanup:                                          ; preds = %cond.end, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #17, !dbg !3333
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #17, !dbg !3333
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #17, !dbg !3333
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !3333
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #17, !dbg !3333
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3333
  br label %return, !dbg !3333

return:                                           ; preds = %if.else, %cleanup
  %40 = load i32, ptr %retval, align 4, !dbg !3332
  ret i32 %40, !dbg !3332
}

declare !dbg !3341 void @sam_global_opt_help(ptr noundef, ptr noundef) #2

declare !dbg !3344 i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!101}
!llvm.module.flags = !{!544, !545, !546, !547, !548, !549}
!llvm.ident = !{!550}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bam_tview.c", directory: "/local-ssd/samtools-ixclfdiyeueodfbnl36ciufw4t2pah3o-build/aidengro/spack-stage-samtools-1.16.1-ixclfdiyeueodfbnl36ciufw4t2pah3o/spack-src", checksumkind: CSK_MD5, checksum: "6dc6e7fe68ee7482fbeab342da55aa4c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 824, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 103)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !3, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 2)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 6)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 16)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 7)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 17)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 27)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 43)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 5)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !57, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !42, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 224, type: !47, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 355, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 360, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 45)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 365, type: !32, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 369, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 10)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 370, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 11)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 375, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 872, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 109)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 387, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 31)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "lopts", scope: !95, file: !2, line: 446, type: !534, isLocal: true, isDefinition: true)
!95 = distinct !DISubprogram(name: "bam_tview_main", scope: !2, file: !2, line: 438, type: !96, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !502)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !98, !99}
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!101 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102, retainedTypes: !164, globals: !405, splitDebugInlining: false, nameTableKind: None)
!102 = !{!103, !113, !139, !150, !155}
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "htsFormatCategory", file: !104, line: 190, baseType: !105, size: 32, elements: !106)
!104 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.16-u3muba5aqqbfu2qjmpspueoxc626r2jh/include/htslib/hts.h", directory: "/local-ssd/samtools-ixclfdiyeueodfbnl36ciufw4t2pah3o-build", checksumkind: CSK_MD5, checksum: "f4a5289511cab080773ce03930900dc4")
!105 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!106 = !{!107, !108, !109, !110, !111, !112}
!107 = !DIEnumerator(name: "unknown_category", value: 0)
!108 = !DIEnumerator(name: "sequence_data", value: 1)
!109 = !DIEnumerator(name: "variant_data", value: 2)
!110 = !DIEnumerator(name: "index_file", value: 3)
!111 = !DIEnumerator(name: "region_list", value: 4)
!112 = !DIEnumerator(name: "category_maximum", value: 32767)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "htsExactFormat", file: !104, line: 199, baseType: !105, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!115 = !DIEnumerator(name: "unknown_format", value: 0)
!116 = !DIEnumerator(name: "binary_format", value: 1)
!117 = !DIEnumerator(name: "text_format", value: 2)
!118 = !DIEnumerator(name: "sam", value: 3)
!119 = !DIEnumerator(name: "bam", value: 4)
!120 = !DIEnumerator(name: "bai", value: 5)
!121 = !DIEnumerator(name: "cram", value: 6)
!122 = !DIEnumerator(name: "crai", value: 7)
!123 = !DIEnumerator(name: "vcf", value: 8)
!124 = !DIEnumerator(name: "bcf", value: 9)
!125 = !DIEnumerator(name: "csi", value: 10)
!126 = !DIEnumerator(name: "gzi", value: 11)
!127 = !DIEnumerator(name: "tbi", value: 12)
!128 = !DIEnumerator(name: "bed", value: 13)
!129 = !DIEnumerator(name: "htsget", value: 14)
!130 = !DIEnumerator(name: "json", value: 14)
!131 = !DIEnumerator(name: "empty_format", value: 15)
!132 = !DIEnumerator(name: "fasta_format", value: 16)
!133 = !DIEnumerator(name: "fastq_format", value: 17)
!134 = !DIEnumerator(name: "fai_format", value: 18)
!135 = !DIEnumerator(name: "fqi_format", value: 19)
!136 = !DIEnumerator(name: "hts_crypt4gh_format", value: 20)
!137 = !DIEnumerator(name: "d4_format", value: 21)
!138 = !DIEnumerator(name: "format_maximum", value: 32767)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "htsCompression", file: !104, line: 212, baseType: !105, size: 32, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149}
!141 = !DIEnumerator(name: "no_compression", value: 0)
!142 = !DIEnumerator(name: "gzip", value: 1)
!143 = !DIEnumerator(name: "bgzf", value: 2)
!144 = !DIEnumerator(name: "custom", value: 3)
!145 = !DIEnumerator(name: "bzip2_compression", value: 4)
!146 = !DIEnumerator(name: "razf_compression", value: 5)
!147 = !DIEnumerator(name: "xz_compression", value: 6)
!148 = !DIEnumerator(name: "zstd_compression", value: 7)
!149 = !DIEnumerator(name: "compression_maximum", value: 32767)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dipsay_mode", file: !2, line: 430, baseType: !105, size: 32, elements: !151)
!151 = !{!152, !153, !154}
!152 = !DIEnumerator(name: "display_ncurses", value: 0)
!153 = !DIEnumerator(name: "display_html", value: 1)
!154 = !DIEnumerator(name: "display_text", value: 2)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "htsLogLevel", file: !156, line: 39, baseType: !105, size: 32, elements: !157)
!156 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.16-u3muba5aqqbfu2qjmpspueoxc626r2jh/include/htslib/hts_log.h", directory: "/local-ssd/samtools-ixclfdiyeueodfbnl36ciufw4t2pah3o-build", checksumkind: CSK_MD5, checksum: "8fb2df4647dee4d3e4fb3802c924da5f")
!157 = !{!158, !159, !160, !161, !162, !163}
!158 = !DIEnumerator(name: "HTS_LOG_OFF", value: 0)
!159 = !DIEnumerator(name: "HTS_LOG_ERROR", value: 1)
!160 = !DIEnumerator(name: "HTS_LOG_WARNING", value: 3)
!161 = !DIEnumerator(name: "HTS_LOG_INFO", value: 4)
!162 = !DIEnumerator(name: "HTS_LOG_DEBUG", value: 5)
!163 = !DIEnumerator(name: "HTS_LOG_TRACE", value: 6)
!164 = !{!165, !166, !98, !100, !355, !360, !367, !369, !372, !310, !199}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "tview_t", file: !168, line: 72, baseType: !169)
!168 = !DIFile(filename: "./bam_tview.h", directory: "/local-ssd/samtools-ixclfdiyeueodfbnl36ciufw4t2pah3o-build/aidengro/spack-stage-samtools-1.16.1-ixclfdiyeueodfbnl36ciufw4t2pah3o/spack-src", checksumkind: CSK_MD5, checksum: "3b349f71b90ac25e9c77ae39361a7bbf")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AbstractTview", file: !168, line: 45, size: 1728, elements: !170)
!170 = !{!171, !172, !173, !177, !182, !217, !316, !321, !339, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !373, !378, !382, !386, !390, !391, !392, !396, !400, !404}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "mrow", scope: !169, file: !168, line: 46, baseType: !98, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "mcol", scope: !169, file: !168, line: 46, baseType: !98, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !169, file: !168, line: 48, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_idx_t", file: !104, line: 228, baseType: !176)
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "hts_idx_t", file: !104, line: 227, flags: DIFlagFwdDecl)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "lplbuf", scope: !169, file: !168, line: 49, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam_lplbuf_t", file: !180, line: 32, baseType: !181)
!180 = !DIFile(filename: "./bam_lpileup.h", directory: "/local-ssd/samtools-ixclfdiyeueodfbnl36ciufw4t2pah3o-build/aidengro/spack-stage-samtools-1.16.1-ixclfdiyeueodfbnl36ciufw4t2pah3o/spack-src", checksumkind: CSK_MD5, checksum: "98ac72b286274d61c34b7f6168f2e580")
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "__bam_lplbuf_t", file: !180, line: 31, flags: DIFlagFwdDecl)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !169, file: !168, line: 50, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "sam_hdr_t", file: !185, line: 90, baseType: !186)
!185 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.16-u3muba5aqqbfu2qjmpspueoxc626r2jh/include/htslib/sam.h", directory: "/local-ssd/samtools-ixclfdiyeueodfbnl36ciufw4t2pah3o-build", checksumkind: CSK_MD5, checksum: "9e238e674687de4845a0fe7baed16919")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sam_hdr_t", file: !185, line: 80, size: 576, elements: !187)
!187 = !{!188, !193, !194, !198, !203, !209, !210, !211, !212, !216}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "n_targets", scope: !186, file: !185, line: 81, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !190, line: 26, baseType: !191)
!190 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !192, line: 41, baseType: !98)
!192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_sam_err", scope: !186, file: !185, line: 81, baseType: !189, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "l_text", scope: !186, file: !185, line: 82, baseType: !195, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !196, line: 70, baseType: !197)
!196 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!197 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "target_len", scope: !186, file: !185, line: 83, baseType: !199, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !201, line: 26, baseType: !202)
!201 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !192, line: 42, baseType: !105)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "cigar_tab", scope: !186, file: !185, line: 84, baseType: !204, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !190, line: 24, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !192, line: 37, baseType: !208)
!208 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "target_name", scope: !186, file: !185, line: 85, baseType: !99, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !186, file: !185, line: 86, baseType: !100, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sdict", scope: !186, file: !185, line: 87, baseType: !165, size: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "hrecs", scope: !186, file: !185, line: 88, baseType: !213, size: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "sam_hrecs_t", file: !185, line: 59, baseType: !215)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "sam_hrecs_t", file: !185, line: 59, flags: DIFlagFwdDecl)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !186, file: !185, line: 89, baseType: !200, size: 32, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !169, file: !168, line: 51, baseType: !218, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "samFile", file: !185, line: 404, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsFile", file: !104, line: 263, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsFile", file: !104, line: 247, size: 1088, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !233, !241, !242, !243, !292, !293, !308, !309, !311, !313}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin", scope: !221, file: !104, line: 248, baseType: !200, size: 1, flags: DIFlagBitField, extraData: i64 0)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "is_write", scope: !221, file: !104, line: 248, baseType: !200, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "is_be", scope: !221, file: !104, line: 248, baseType: !200, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "is_cram", scope: !221, file: !104, line: 248, baseType: !200, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "is_bgzf", scope: !221, file: !104, line: 248, baseType: !200, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !221, file: !104, line: 248, baseType: !200, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !221, file: !104, line: 249, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !190, line: 27, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !192, line: 44, baseType: !232)
!232 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !221, file: !104, line: 250, baseType: !234, size: 192, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "kstring_t", file: !235, line: 78, baseType: !236)
!235 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.16-u3muba5aqqbfu2qjmpspueoxc626r2jh/include/htslib/kstring.h", directory: "/local-ssd/samtools-ixclfdiyeueodfbnl36ciufw4t2pah3o-build", checksumkind: CSK_MD5, checksum: "203874d61436e17956eb647b81536b7f")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstring_t", file: !235, line: 75, size: 192, elements: !237)
!237 = !{!238, !239, !240}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !236, file: !235, line: 76, baseType: !195, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !236, file: !235, line: 76, baseType: !195, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !236, file: !235, line: 77, baseType: !100, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !221, file: !104, line: 251, baseType: !100, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "fn_aux", scope: !221, file: !104, line: 251, baseType: !100, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !221, file: !104, line: 256, baseType: !244, size: 64, offset: 448)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !104, line: 252, size: 64, elements: !245)
!245 = !{!246, !288, !291}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "bgzf", scope: !244, file: !104, line: 253, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "BGZF", file: !104, line: 54, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BGZF", file: !250, line: 67, size: 896, elements: !251)
!250 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.16-u3muba5aqqbfu2qjmpspueoxc626r2jh/include/htslib/bgzf.h", directory: "/local-ssd/samtools-ixclfdiyeueodfbnl36ciufw4t2pah3o-build", checksumkind: CSK_MD5, checksum: "210776a92ce059210f99c67f166a1d10")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !273, !276, !279, !283, !284, !287}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "errcode", scope: !249, file: !250, line: 69, baseType: !105, size: 16, flags: DIFlagBitField, extraData: i64 0)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !249, file: !250, line: 69, baseType: !105, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "is_write", scope: !249, file: !250, line: 69, baseType: !105, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "no_eof_block", scope: !249, file: !250, line: 69, baseType: !105, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "is_be", scope: !249, file: !250, line: 69, baseType: !105, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "compress_level", scope: !249, file: !250, line: 70, baseType: !98, size: 9, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "last_block_eof", scope: !249, file: !250, line: 71, baseType: !105, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "is_compressed", scope: !249, file: !250, line: 71, baseType: !105, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "is_gzip", scope: !249, file: !250, line: 71, baseType: !105, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size", scope: !249, file: !250, line: 72, baseType: !98, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "block_length", scope: !249, file: !250, line: 73, baseType: !98, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "block_clength", scope: !249, file: !250, line: 73, baseType: !98, size: 32, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "block_offset", scope: !249, file: !250, line: 73, baseType: !98, size: 32, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "block_address", scope: !249, file: !250, line: 74, baseType: !230, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_address", scope: !249, file: !250, line: 74, baseType: !230, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_block", scope: !249, file: !250, line: 75, baseType: !165, size: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_block", scope: !249, file: !250, line: 75, baseType: !165, size: 64, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !249, file: !250, line: 76, baseType: !270, size: 64, offset: 448)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "bgzf_cache_t", file: !250, line: 64, baseType: !272)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "bgzf_cache_t", file: !250, line: 64, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !249, file: !250, line: 77, baseType: !274, size: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "hFILE", file: !104, line: 58, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !249, file: !250, line: 78, baseType: !277, size: 64, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DICompositeType(tag: DW_TAG_structure_type, name: "bgzf_mtaux_t", file: !250, line: 62, flags: DIFlagFwdDecl)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !249, file: !250, line: 79, baseType: !280, size: 64, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "bgzidx_t", file: !250, line: 63, baseType: !282)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "bgzidx_t", file: !250, line: 63, flags: DIFlagFwdDecl)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "idx_build_otf", scope: !249, file: !250, line: 80, baseType: !98, size: 32, offset: 704)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "gz_stream", scope: !249, file: !250, line: 81, baseType: !285, size: 64, offset: 768)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !250, line: 65, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "seeked", scope: !249, file: !250, line: 82, baseType: !230, size: 64, offset: 832)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "cram", scope: !244, file: !104, line: 254, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "cram_fd", file: !104, line: 57, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "hfile", scope: !244, file: !104, line: 255, baseType: !274, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !221, file: !104, line: 257, baseType: !165, size: 64, offset: 512)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !221, file: !104, line: 258, baseType: !294, size: 256, offset: 576)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsFormat", file: !104, line: 225, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsFormat", file: !104, line: 218, size: 256, elements: !296)
!296 = !{!297, !298, !299, !305, !306, !307}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !295, file: !104, line: 219, baseType: !103, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !295, file: !104, line: 220, baseType: !113, size: 32, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !295, file: !104, line: 221, baseType: !300, size: 32, offset: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !295, file: !104, line: 221, size: 32, elements: !301)
!301 = !{!302, !304}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !300, file: !104, line: 221, baseType: !303, size: 16)
!303 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !300, file: !104, line: 221, baseType: !303, size: 16, offset: 16)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !295, file: !104, line: 222, baseType: !139, size: 32, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "compression_level", scope: !295, file: !104, line: 223, baseType: !303, size: 16, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "specific", scope: !295, file: !104, line: 224, baseType: !165, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !221, file: !104, line: 259, baseType: !174, size: 64, offset: 832)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "fnidx", scope: !221, file: !104, line: 260, baseType: !310, size: 64, offset: 896)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "bam_header", scope: !221, file: !104, line: 261, baseType: !312, size: 64, offset: 960)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !221, file: !104, line: 262, baseType: !314, size: 64, offset: 1024)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "hts_filter_t", file: !104, line: 229, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "fai", scope: !169, file: !168, line: 52, baseType: !317, size: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "faidx_t", file: !319, line: 71, baseType: !320)
!319 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.16-u3muba5aqqbfu2qjmpspueoxc626r2jh/include/htslib/faidx.h", directory: "/local-ssd/samtools-ixclfdiyeueodfbnl36ciufw4t2pah3o-build", checksumkind: CSK_MD5, checksum: "858bc49c28731a428b501e9a007eb69a")
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "faidx_t", file: !319, line: 69, flags: DIFlagFwdDecl)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "bca", scope: !169, file: !168, line: 53, baseType: !322, size: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "bcf_callaux_t", file: !324, line: 39, baseType: !325)
!324 = !DIFile(filename: "./bam2bcf.h", directory: "/local-ssd/samtools-ixclfdiyeueodfbnl36ciufw4t2pah3o-build/aidengro/spack-stage-samtools-1.16.1-ixclfdiyeueodfbnl36ciufw4t2pah3o/spack-src", checksumkind: CSK_MD5, checksum: "ce16452de4e906e4ffcda371e6aaefe7")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__bcf_callaux_t", file: !324, line: 33, size: 256, elements: !326)
!326 = !{!327, !328, !329, !330, !335}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "capQ", scope: !325, file: !324, line: 34, baseType: !98, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "min_baseQ", scope: !325, file: !324, line: 34, baseType: !98, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "max_bases", scope: !325, file: !324, line: 36, baseType: !98, size: 32, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !325, file: !324, line: 37, baseType: !331, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !201, line: 25, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !192, line: 40, baseType: !334)
!334 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !325, file: !324, line: 38, baseType: !336, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "errmod_t", file: !104, line: 1402, baseType: !338)
!338 = !DICompositeType(tag: DW_TAG_structure_type, name: "errmod_t", file: !104, line: 1401, flags: DIFlagFwdDecl)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "left_pos", scope: !169, file: !168, line: 55, baseType: !340, size: 64, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_pos_t", file: !104, line: 791, baseType: !230)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "last_pos", scope: !169, file: !168, line: 55, baseType: !340, size: 64, offset: 512)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "l_ref", scope: !169, file: !168, line: 55, baseType: !340, size: 64, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "curr_tid", scope: !169, file: !168, line: 56, baseType: !98, size: 32, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ccol", scope: !169, file: !168, line: 56, baseType: !98, size: 32, offset: 672)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "row_shift", scope: !169, file: !168, line: 56, baseType: !98, size: 32, offset: 704)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "base_for", scope: !169, file: !168, line: 56, baseType: !98, size: 32, offset: 736)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "color_for", scope: !169, file: !168, line: 56, baseType: !98, size: 32, offset: 768)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "is_dot", scope: !169, file: !168, line: 56, baseType: !98, size: 32, offset: 800)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ins", scope: !169, file: !168, line: 56, baseType: !98, size: 32, offset: 832)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "no_skip", scope: !169, file: !168, line: 57, baseType: !98, size: 32, offset: 864)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "show_name", scope: !169, file: !168, line: 57, baseType: !98, size: 32, offset: 896)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "inverse", scope: !169, file: !168, line: 57, baseType: !98, size: 32, offset: 928)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !169, file: !168, line: 58, baseType: !100, size: 64, offset: 960)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rg_hash", scope: !169, file: !168, line: 60, baseType: !355, size: 64, offset: 1024)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_kh_rg_t", file: !168, line: 42, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kh_kh_rg_s", file: !168, line: 42, size: 320, elements: !358)
!358 = !{!359, !363, !364, !365, !366, !368, !371}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !357, file: !168, line: 42, baseType: !360, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint_t", file: !361, line: 166, baseType: !362)
!361 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.16-u3muba5aqqbfu2qjmpspueoxc626r2jh/include/htslib/khash.h", directory: "/local-ssd/samtools-ixclfdiyeueodfbnl36ciufw4t2pah3o-build", checksumkind: CSK_MD5, checksum: "65a22945a6b0dd8c7e4297e6fc0b7826")
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint32_t", file: !361, line: 139, baseType: !105)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !357, file: !168, line: 42, baseType: !360, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !357, file: !168, line: 42, baseType: !360, size: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !357, file: !168, line: 42, baseType: !360, size: 32, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !168, line: 42, baseType: !367, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !357, file: !168, line: 42, baseType: !369, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_cstr_t", file: !361, line: 639, baseType: !310)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !357, file: !168, line: 42, baseType: !372, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "my_destroy", scope: !169, file: !168, line: 62, baseType: !374, size: 64, offset: 1088)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "my_mvprintw", scope: !169, file: !168, line: 63, baseType: !379, size: 64, offset: 1152)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !377, !98, !98, !310, null}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "my_mvaddch", scope: !169, file: !168, line: 64, baseType: !383, size: 64, offset: 1216)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !377, !98, !98, !98}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "my_attron", scope: !169, file: !168, line: 65, baseType: !387, size: 64, offset: 1280)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !377, !98}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "my_attroff", scope: !169, file: !168, line: 66, baseType: !387, size: 64, offset: 1344)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "my_clear", scope: !169, file: !168, line: 67, baseType: !374, size: 64, offset: 1408)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "my_colorpair", scope: !169, file: !168, line: 68, baseType: !393, size: 64, offset: 1472)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!98, !377, !98}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "my_drawaln", scope: !169, file: !168, line: 69, baseType: !397, size: 64, offset: 1536)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!98, !377, !98, !340}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "my_loop", scope: !169, file: !168, line: 70, baseType: !401, size: 64, offset: 1600)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!98, !377}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "my_underline", scope: !169, file: !168, line: 71, baseType: !401, size: 64, offset: 1664)
!405 = !{!0, !7, !12, !18, !20, !25, !30, !35, !40, !45, !50, !55, !60, !62, !64, !66, !71, !73, !78, !83, !88, !406, !408, !410, !412, !417, !419, !424, !426, !93, !428, !430, !435, !440, !445, !450, !455, !460, !465, !470, !472, !474, !478, !483, !488, !490, !495, !500}
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !75, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !42, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !80, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !414, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 18)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !75, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !421, isLocal: true, isDefinition: true)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 8)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !9, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !75, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !2, line: 452, type: !75, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !2, line: 456, type: !432, isLocal: true, isDefinition: true)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 24)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !2, line: 479, type: !437, isLocal: true, isDefinition: true)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 62)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !2, line: 489, type: !442, isLocal: true, isDefinition: true)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 53)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !2, line: 514, type: !447, isLocal: true, isDefinition: true)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 19)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !2, line: 524, type: !452, isLocal: true, isDefinition: true)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 39)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !457, isLocal: true, isDefinition: true)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 58)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !462, isLocal: true, isDefinition: true)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 3)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !467, isLocal: true, isDefinition: true)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 22)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !462, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !462, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression(DW_OP_constu, 4605110762971426980, DW_OP_stack_value))
!475 = distinct !DIGlobalVariable(name: "__ac_HASH_UPPER", scope: !101, file: !361, line: 196, type: !476, isLocal: true, isDefinition: true)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!477 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !185, line: 1351, type: !480, isLocal: true, isDefinition: true)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 104, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 13)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !185, line: 1351, type: !485, isLocal: true, isDefinition: true)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 23)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !185, line: 1351, type: !57, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !185, line: 1355, type: !492, isLocal: true, isDefinition: true)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 14)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !2, line: 411, type: !497, isLocal: true, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2672, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 334)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !2, line: 418, type: !3, isLocal: true, isDefinition: true)
!502 = !{!503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !525, !526, !529, !530, !531}
!503 = !DILocalVariable(name: "argc", arg: 1, scope: !95, file: !2, line: 438, type: !98)
!504 = !DILocalVariable(name: "argv", arg: 2, scope: !95, file: !2, line: 438, type: !99)
!505 = !DILocalVariable(name: "view_mode", scope: !95, file: !2, line: 440, type: !98)
!506 = !DILocalVariable(name: "display_width", scope: !95, file: !2, line: 440, type: !98)
!507 = !DILocalVariable(name: "tv", scope: !95, file: !2, line: 441, type: !166)
!508 = !DILocalVariable(name: "samples", scope: !95, file: !2, line: 442, type: !100)
!509 = !DILocalVariable(name: "position", scope: !95, file: !2, line: 442, type: !100)
!510 = !DILocalVariable(name: "ref", scope: !95, file: !2, line: 442, type: !100)
!511 = !DILocalVariable(name: "fn_idx", scope: !95, file: !2, line: 442, type: !100)
!512 = !DILocalVariable(name: "c", scope: !95, file: !2, line: 443, type: !98)
!513 = !DILocalVariable(name: "has_index_file", scope: !95, file: !2, line: 443, type: !98)
!514 = !DILocalVariable(name: "ref_index", scope: !95, file: !2, line: 443, type: !98)
!515 = !DILocalVariable(name: "ga", scope: !95, file: !2, line: 445, type: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "sam_global_args", file: !517, line: 39, baseType: !518)
!517 = !DIFile(filename: "./sam_opts.h", directory: "/local-ssd/samtools-ixclfdiyeueodfbnl36ciufw4t2pah3o-build/aidengro/spack-stage-samtools-1.16.1-ixclfdiyeueodfbnl36ciufw4t2pah3o/spack-src", checksumkind: CSK_MD5, checksum: "2b38086da37a54b3b8875492f0298c0e")
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sam_global_args", file: !517, line: 33, size: 640, elements: !519)
!519 = !{!520, !521, !522, !523, !524}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !518, file: !517, line: 34, baseType: !294, size: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !518, file: !517, line: 35, baseType: !294, size: 256, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !518, file: !517, line: 36, baseType: !100, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !518, file: !517, line: 37, baseType: !98, size: 32, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "write_index", scope: !518, file: !517, line: 38, baseType: !98, size: 32, offset: 608)
!525 = !DILocalVariable(name: "tmp", scope: !95, file: !2, line: 451, type: !100)
!526 = !DILocalVariable(name: "tid", scope: !527, file: !2, line: 520, type: !98)
!527 = distinct !DILexicalBlock(scope: !528, file: !2, line: 519, column: 5)
!528 = distinct !DILexicalBlock(scope: !95, file: !2, line: 518, column: 10)
!529 = !DILocalVariable(name: "beg", scope: !527, file: !2, line: 521, type: !340)
!530 = !DILocalVariable(name: "end", scope: !527, file: !2, line: 521, type: !340)
!531 = !DILocalVariable(name: "i", scope: !532, file: !2, line: 533, type: !98)
!532 = distinct !DILexicalBlock(scope: !533, file: !2, line: 531, column: 5)
!533 = distinct !DILexicalBlock(scope: !528, file: !2, line: 530, column: 15)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 2304, elements: !5)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !537, line: 50, size: 256, elements: !538)
!537 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!538 = !{!539, !540, !541, !543}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !536, file: !537, line: 52, baseType: !310, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !536, file: !537, line: 55, baseType: !98, size: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !536, file: !537, line: 56, baseType: !542, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !536, file: !537, line: 57, baseType: !98, size: 32, offset: 192)
!544 = !{i32 7, !"Dwarf Version", i32 5}
!545 = !{i32 2, !"Debug Info Version", i32 3}
!546 = !{i32 1, !"wchar_size", i32 4}
!547 = !{i32 8, !"PIC Level", i32 2}
!548 = !{i32 7, !"PIE Level", i32 2}
!549 = !{i32 7, !"uwtable", i32 2}
!550 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!551 = distinct !DISubprogram(name: "base_tv_init", scope: !2, file: !2, line: 103, type: !552, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !556)
!552 = !DISubroutineType(types: !553)
!553 = !{!98, !166, !310, !310, !310, !310, !554}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!556 = !{!557, !558, !559, !560, !561, !562}
!557 = !DILocalVariable(name: "tv", arg: 1, scope: !551, file: !2, line: 103, type: !166)
!558 = !DILocalVariable(name: "fn", arg: 2, scope: !551, file: !2, line: 103, type: !310)
!559 = !DILocalVariable(name: "fn_fa", arg: 3, scope: !551, file: !2, line: 103, type: !310)
!560 = !DILocalVariable(name: "fn_idx", arg: 4, scope: !551, file: !2, line: 103, type: !310)
!561 = !DILocalVariable(name: "samples", arg: 5, scope: !551, file: !2, line: 104, type: !310)
!562 = !DILocalVariable(name: "fmt", arg: 6, scope: !551, file: !2, line: 104, type: !554)
!563 = !{!564, !564, i64 0}
!564 = !{!"any pointer", !565, i64 0}
!565 = !{!"omnipotent char", !566, i64 0}
!566 = !{!"Simple C/C++ TBAA"}
!567 = !DILocation(line: 103, column: 27, scope: !551)
!568 = !DILocation(line: 103, column: 43, scope: !551)
!569 = !DILocation(line: 103, column: 59, scope: !551)
!570 = !DILocation(line: 103, column: 78, scope: !551)
!571 = !DILocation(line: 104, column: 30, scope: !551)
!572 = !DILocation(line: 104, column: 56, scope: !551)
!573 = !DILocation(line: 106, column: 5, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !2, line: 106, column: 5)
!575 = distinct !DILexicalBlock(scope: !551, file: !2, line: 106, column: 5)
!576 = !DILocation(line: 106, column: 5, scope: !575)
!577 = !DILocation(line: 107, column: 5, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !2, line: 107, column: 5)
!579 = distinct !DILexicalBlock(scope: !551, file: !2, line: 107, column: 5)
!580 = !DILocation(line: 107, column: 5, scope: !579)
!581 = !DILocation(line: 108, column: 5, scope: !551)
!582 = !DILocation(line: 108, column: 9, scope: !551)
!583 = !DILocation(line: 108, column: 14, scope: !551)
!584 = !{!585, !586, i64 0}
!585 = !{!"AbstractTview", !586, i64 0, !586, i64 4, !564, i64 8, !564, i64 16, !564, i64 24, !564, i64 32, !564, i64 40, !564, i64 48, !587, i64 56, !587, i64 64, !587, i64 72, !586, i64 80, !586, i64 84, !586, i64 88, !586, i64 92, !586, i64 96, !586, i64 100, !586, i64 104, !586, i64 108, !586, i64 112, !586, i64 116, !564, i64 120, !564, i64 128, !564, i64 136, !564, i64 144, !564, i64 152, !564, i64 160, !564, i64 168, !564, i64 176, !564, i64 184, !564, i64 192, !564, i64 200, !564, i64 208}
!586 = !{!"int", !565, i64 0}
!587 = !{!"long", !565, i64 0}
!588 = !DILocation(line: 108, column: 20, scope: !551)
!589 = !DILocation(line: 108, column: 24, scope: !551)
!590 = !DILocation(line: 108, column: 29, scope: !551)
!591 = !{!585, !586, i64 4}
!592 = !DILocation(line: 109, column: 5, scope: !551)
!593 = !DILocation(line: 109, column: 9, scope: !551)
!594 = !DILocation(line: 109, column: 19, scope: !551)
!595 = !{!585, !586, i64 96}
!596 = !DILocation(line: 110, column: 5, scope: !551)
!597 = !DILocation(line: 110, column: 9, scope: !551)
!598 = !DILocation(line: 110, column: 16, scope: !551)
!599 = !{!585, !586, i64 100}
!600 = !DILocation(line: 112, column: 14, scope: !551)
!601 = !DILocation(line: 112, column: 5, scope: !551)
!602 = !DILocation(line: 112, column: 9, scope: !551)
!603 = !DILocation(line: 112, column: 12, scope: !551)
!604 = !{!585, !564, i64 32}
!605 = !DILocation(line: 113, column: 8, scope: !606)
!606 = distinct !DILexicalBlock(scope: !551, file: !2, line: 113, column: 8)
!607 = !DILocation(line: 113, column: 12, scope: !606)
!608 = !DILocation(line: 113, column: 15, scope: !606)
!609 = !DILocation(line: 113, column: 8, scope: !551)
!610 = !DILocation(line: 115, column: 57, scope: !611)
!611 = distinct !DILexicalBlock(scope: !606, file: !2, line: 114, column: 5)
!612 = !DILocation(line: 115, column: 9, scope: !611)
!613 = !DILocation(line: 116, column: 9, scope: !611)
!614 = !DILocation(line: 119, column: 5, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !2, line: 119, column: 5)
!616 = distinct !DILexicalBlock(scope: !551, file: !2, line: 119, column: 5)
!617 = !DILocation(line: 119, column: 5, scope: !616)
!618 = !DILocation(line: 121, column: 31, scope: !551)
!619 = !DILocation(line: 121, column: 35, scope: !551)
!620 = !DILocation(line: 121, column: 18, scope: !551)
!621 = !DILocation(line: 121, column: 5, scope: !551)
!622 = !DILocation(line: 121, column: 9, scope: !551)
!623 = !DILocation(line: 121, column: 16, scope: !551)
!624 = !{!585, !564, i64 24}
!625 = !DILocation(line: 122, column: 8, scope: !626)
!626 = distinct !DILexicalBlock(scope: !551, file: !2, line: 122, column: 8)
!627 = !DILocation(line: 122, column: 12, scope: !626)
!628 = !DILocation(line: 122, column: 19, scope: !626)
!629 = !DILocation(line: 122, column: 8, scope: !551)
!630 = !DILocation(line: 124, column: 52, scope: !631)
!631 = distinct !DILexicalBlock(scope: !626, file: !2, line: 123, column: 5)
!632 = !DILocation(line: 124, column: 9, scope: !631)
!633 = !DILocation(line: 125, column: 9, scope: !631)
!634 = !DILocation(line: 128, column: 9, scope: !635)
!635 = distinct !DILexicalBlock(scope: !551, file: !2, line: 128, column: 9)
!636 = !DILocation(line: 128, column: 16, scope: !635)
!637 = !DILocation(line: 128, column: 9, scope: !551)
!638 = !DILocation(line: 129, column: 35, scope: !639)
!639 = distinct !DILexicalBlock(scope: !635, file: !2, line: 128, column: 25)
!640 = !DILocation(line: 129, column: 39, scope: !639)
!641 = !DILocation(line: 129, column: 43, scope: !639)
!642 = !DILocation(line: 129, column: 47, scope: !639)
!643 = !DILocation(line: 129, column: 19, scope: !639)
!644 = !DILocation(line: 129, column: 9, scope: !639)
!645 = !DILocation(line: 129, column: 13, scope: !639)
!646 = !DILocation(line: 129, column: 17, scope: !639)
!647 = !{!585, !564, i64 8}
!648 = !DILocation(line: 130, column: 5, scope: !639)
!649 = !DILocation(line: 131, column: 34, scope: !650)
!650 = distinct !DILexicalBlock(scope: !635, file: !2, line: 130, column: 12)
!651 = !DILocation(line: 131, column: 38, scope: !650)
!652 = !DILocation(line: 131, column: 42, scope: !650)
!653 = !DILocation(line: 131, column: 19, scope: !650)
!654 = !DILocation(line: 131, column: 9, scope: !650)
!655 = !DILocation(line: 131, column: 13, scope: !650)
!656 = !DILocation(line: 131, column: 17, scope: !650)
!657 = !DILocation(line: 134, column: 9, scope: !658)
!658 = distinct !DILexicalBlock(scope: !551, file: !2, line: 134, column: 9)
!659 = !DILocation(line: 134, column: 13, scope: !658)
!660 = !DILocation(line: 134, column: 17, scope: !658)
!661 = !DILocation(line: 134, column: 9, scope: !551)
!662 = !DILocation(line: 136, column: 62, scope: !663)
!663 = distinct !DILexicalBlock(scope: !658, file: !2, line: 135, column: 5)
!664 = !DILocation(line: 136, column: 9, scope: !663)
!665 = !DILocation(line: 137, column: 9, scope: !663)
!666 = !DILocation(line: 139, column: 46, scope: !551)
!667 = !DILocation(line: 139, column: 18, scope: !551)
!668 = !DILocation(line: 139, column: 5, scope: !551)
!669 = !DILocation(line: 139, column: 9, scope: !551)
!670 = !DILocation(line: 139, column: 16, scope: !551)
!671 = !{!585, !564, i64 16}
!672 = !DILocation(line: 140, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !551, file: !2, line: 140, column: 9)
!674 = !DILocation(line: 140, column: 9, scope: !551)
!675 = !DILocation(line: 140, column: 35, scope: !673)
!676 = !DILocation(line: 140, column: 26, scope: !673)
!677 = !DILocation(line: 140, column: 16, scope: !673)
!678 = !DILocation(line: 140, column: 20, scope: !673)
!679 = !DILocation(line: 140, column: 24, scope: !673)
!680 = !{!585, !564, i64 40}
!681 = !DILocation(line: 141, column: 15, scope: !551)
!682 = !DILocation(line: 141, column: 5, scope: !551)
!683 = !DILocation(line: 141, column: 9, scope: !551)
!684 = !DILocation(line: 141, column: 13, scope: !551)
!685 = !{!585, !564, i64 48}
!686 = !DILocation(line: 142, column: 5, scope: !551)
!687 = !DILocation(line: 142, column: 9, scope: !551)
!688 = !DILocation(line: 142, column: 13, scope: !551)
!689 = !{!585, !586, i64 104}
!690 = !DILocation(line: 145, column: 10, scope: !691)
!691 = distinct !DILexicalBlock(scope: !551, file: !2, line: 145, column: 10)
!692 = !DILocation(line: 145, column: 10, scope: !551)
!693 = !DILocation(line: 147, column: 37, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !2, line: 146, column: 5)
!695 = !DILocation(line: 147, column: 41, scope: !694)
!696 = !DILocation(line: 147, column: 49, scope: !694)
!697 = !DILocation(line: 147, column: 23, scope: !694)
!698 = !DILocation(line: 147, column: 9, scope: !694)
!699 = !DILocation(line: 147, column: 13, scope: !694)
!700 = !DILocation(line: 147, column: 21, scope: !694)
!701 = !{!585, !564, i64 128}
!702 = !DILocation(line: 148, column: 13, scope: !703)
!703 = distinct !DILexicalBlock(scope: !694, file: !2, line: 148, column: 13)
!704 = !{!705, !586, i64 4}
!705 = !{!"kh_kh_rg_s", !586, i64 0, !586, i64 4, !586, i64 8, !586, i64 12, !564, i64 16, !564, i64 24, !564, i64 32}
!706 = !DILocation(line: 148, column: 34, scope: !703)
!707 = !DILocation(line: 148, column: 13, scope: !694)
!708 = !DILocation(line: 151, column: 25, scope: !709)
!709 = distinct !DILexicalBlock(scope: !703, file: !2, line: 148, column: 40)
!710 = !DILocation(line: 149, column: 13, scope: !709)
!711 = !DILocation(line: 152, column: 13, scope: !709)
!712 = !DILocation(line: 154, column: 5, scope: !694)
!713 = !DILocation(line: 156, column: 5, scope: !551)
!714 = !DISubprogram(name: "__assert_fail", scope: !715, file: !715, line: 69, type: !716, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!715 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!716 = !DISubroutineType(types: !717)
!717 = !{null, !310, !310, !105, !310}
!718 = !DISubprogram(name: "hts_open_format", scope: !104, file: !104, line: 621, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!719 = !DISubroutineType(types: !720)
!720 = !{!721, !310, !310, !554}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!722 = !DISubprogram(name: "print_error_errno", scope: !723, file: !723, line: 36, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!723 = !DIFile(filename: "./samtools.h", directory: "/local-ssd/samtools-ixclfdiyeueodfbnl36ciufw4t2pah3o-build/aidengro/spack-stage-samtools-1.16.1-ixclfdiyeueodfbnl36ciufw4t2pah3o/spack-src", checksumkind: CSK_MD5, checksum: "dd3a8ea7a464e2dcace7e84071590593")
!724 = !DISubroutineType(types: !725)
!725 = !{null, !310, !310, null}
!726 = !DISubprogram(name: "exit", scope: !727, file: !727, line: 624, type: !728, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!727 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!728 = !DISubroutineType(types: !729)
!729 = !{null, !98}
!730 = !DISubprogram(name: "sam_hdr_read", scope: !185, file: !185, line: 429, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!731 = !DISubroutineType(types: !732)
!732 = !{!183, !218}
!733 = !DISubprogram(name: "print_error", scope: !723, file: !723, line: 35, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!734 = !DISubprogram(name: "sam_index_load2", scope: !185, file: !185, line: 1196, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!735 = !DISubroutineType(types: !736)
!736 = !{!174, !721, !310, !310}
!737 = !DISubprogram(name: "sam_index_load", scope: !185, file: !185, line: 1185, type: !738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!738 = !DISubroutineType(types: !739)
!739 = !{!174, !721, !310}
!740 = !DISubprogram(name: "bam_lplbuf_init", scope: !180, file: !180, line: 46, type: !741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!741 = !DISubroutineType(types: !742)
!742 = !{!178, !743, !165}
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam_pileup_f", file: !180, line: 36, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!98, !200, !340, !98, !747, !165}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam_pileup1_t", file: !185, line: 1915, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bam_pileup1_t", file: !185, line: 1908, size: 320, elements: !751)
!751 = !{!752, !784, !785, !786, !787, !788, !789, !790, !791, !792, !799}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !750, file: !185, line: 1909, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam1_t", file: !185, line: 260, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bam1_t", file: !185, line: 253, size: 640, elements: !756)
!756 = !{!757, !776, !779, !781, !782, !783}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !755, file: !185, line: 254, baseType: !758, size: 384)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam1_core_t", file: !185, line: 227, baseType: !759)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bam1_core_t", file: !185, line: 214, size: 384, elements: !760)
!760 = !{!761, !762, !763, !764, !768, !769, !770, !771, !772, !773, !774, !775}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !759, file: !185, line: 215, baseType: !340, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !759, file: !185, line: 216, baseType: !189, size: 32, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "bin", scope: !759, file: !185, line: 217, baseType: !332, size: 16, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "qual", scope: !759, file: !185, line: 218, baseType: !765, size: 8, offset: 112)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !201, line: 24, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !192, line: 38, baseType: !767)
!767 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "l_extranul", scope: !759, file: !185, line: 219, baseType: !765, size: 8, offset: 120)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !759, file: !185, line: 220, baseType: !332, size: 16, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "l_qname", scope: !759, file: !185, line: 221, baseType: !332, size: 16, offset: 144)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "n_cigar", scope: !759, file: !185, line: 222, baseType: !200, size: 32, offset: 160)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "l_qseq", scope: !759, file: !185, line: 223, baseType: !189, size: 32, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mtid", scope: !759, file: !185, line: 224, baseType: !189, size: 32, offset: 224)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mpos", scope: !759, file: !185, line: 225, baseType: !340, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "isize", scope: !759, file: !185, line: 226, baseType: !340, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !755, file: !185, line: 255, baseType: !777, size: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !201, line: 27, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !192, line: 45, baseType: !197)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !755, file: !185, line: 256, baseType: !780, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "l_data", scope: !755, file: !185, line: 257, baseType: !98, size: 32, offset: 512)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "m_data", scope: !755, file: !185, line: 258, baseType: !200, size: 32, offset: 544)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !755, file: !185, line: 259, baseType: !200, size: 2, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "qpos", scope: !750, file: !185, line: 1910, baseType: !189, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "indel", scope: !750, file: !185, line: 1911, baseType: !98, size: 32, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !750, file: !185, line: 1911, baseType: !98, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "is_del", scope: !750, file: !185, line: 1912, baseType: !200, size: 1, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "is_head", scope: !750, file: !185, line: 1912, baseType: !200, size: 1, offset: 161, flags: DIFlagBitField, extraData: i64 160)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "is_tail", scope: !750, file: !185, line: 1912, baseType: !200, size: 1, offset: 162, flags: DIFlagBitField, extraData: i64 160)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "is_refskip", scope: !750, file: !185, line: 1912, baseType: !200, size: 1, offset: 163, flags: DIFlagBitField, extraData: i64 160)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !750, file: !185, line: 1912, baseType: !200, size: 27, offset: 165, flags: DIFlagBitField, extraData: i64 160)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !750, file: !185, line: 1913, baseType: !793, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam_pileup_cd", file: !185, line: 1887, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !185, line: 1883, size: 64, elements: !795)
!795 = !{!796, !797, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !794, file: !185, line: 1884, baseType: !165, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !794, file: !185, line: 1885, baseType: !230, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !794, file: !185, line: 1886, baseType: !477, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "cigar_ind", scope: !750, file: !185, line: 1914, baseType: !98, size: 32, offset: 256)
!800 = distinct !DISubprogram(name: "tv_pl_func", scope: !2, file: !2, line: 173, type: !745, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !832, !834, !835, !836, !837, !839, !840, !843, !848, !851, !856, !859, !864, !870, !871, !878, !879, !888, !892, !897, !899, !904, !906, !913, !917, !922, !924, !929, !932, !934, !939, !941}
!802 = !DILocalVariable(name: "tid", arg: 1, scope: !800, file: !2, line: 173, type: !200)
!803 = !DILocalVariable(name: "pos", arg: 2, scope: !800, file: !2, line: 173, type: !340)
!804 = !DILocalVariable(name: "n", arg: 3, scope: !800, file: !2, line: 173, type: !98)
!805 = !DILocalVariable(name: "pl", arg: 4, scope: !800, file: !2, line: 173, type: !747)
!806 = !DILocalVariable(name: "data", arg: 5, scope: !800, file: !2, line: 173, type: !165)
!807 = !DILocalVariable(name: "tv", scope: !800, file: !2, line: 175, type: !166)
!808 = !DILocalVariable(name: "cp", scope: !800, file: !2, line: 176, type: !340)
!809 = !DILocalVariable(name: "i", scope: !800, file: !2, line: 177, type: !98)
!810 = !DILocalVariable(name: "j", scope: !800, file: !2, line: 177, type: !98)
!811 = !DILocalVariable(name: "c", scope: !800, file: !2, line: 177, type: !98)
!812 = !DILocalVariable(name: "rb", scope: !800, file: !2, line: 177, type: !98)
!813 = !DILocalVariable(name: "attr", scope: !800, file: !2, line: 177, type: !98)
!814 = !DILocalVariable(name: "max_ins", scope: !800, file: !2, line: 177, type: !98)
!815 = !DILocalVariable(name: "interval", scope: !800, file: !2, line: 177, type: !98)
!816 = !DILocalVariable(name: "call", scope: !800, file: !2, line: 178, type: !200)
!817 = !DILocalVariable(name: "ks", scope: !800, file: !2, line: 179, type: !234)
!818 = !DILocalVariable(name: "bcr", scope: !819, file: !2, line: 192, type: !820)
!819 = distinct !DILexicalBlock(scope: !800, file: !2, line: 191, column: 5)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "bcf_callret1_t", file: !324, line: 45, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 42, size: 928, elements: !822)
!822 = !{!823, !828}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "qsum", scope: !821, file: !324, line: 43, baseType: !824, size: 128)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !825, size: 128, elements: !826)
!825 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!826 = !{!827}
!827 = !DISubrange(count: 4)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !821, file: !324, line: 44, baseType: !829, size: 800, offset: 128)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !825, size: 800, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 25)
!832 = !DILocalVariable(name: "qsum", scope: !819, file: !2, line: 194, type: !833)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !826)
!834 = !DILocalVariable(name: "a1", scope: !819, file: !2, line: 194, type: !98)
!835 = !DILocalVariable(name: "a2", scope: !819, file: !2, line: 194, type: !98)
!836 = !DILocalVariable(name: "tmp", scope: !819, file: !2, line: 194, type: !98)
!837 = !DILocalVariable(name: "p", scope: !819, file: !2, line: 195, type: !838)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 192, elements: !463)
!839 = !DILocalVariable(name: "prior", scope: !819, file: !2, line: 195, type: !477)
!840 = !DILocalVariable(name: "__res", scope: !841, file: !2, line: 203, type: !98)
!841 = distinct !DILexicalBlock(scope: !842, file: !2, line: 203, column: 27)
!842 = distinct !DILexicalBlock(scope: !819, file: !2, line: 203, column: 13)
!843 = !DILocalVariable(name: "__c", scope: !844, file: !2, line: 203, type: !98)
!844 = distinct !DILexicalBlock(scope: !845, file: !2, line: 203, column: 27)
!845 = distinct !DILexicalBlock(scope: !846, file: !2, line: 203, column: 27)
!846 = distinct !DILexicalBlock(scope: !847, file: !2, line: 203, column: 27)
!847 = distinct !DILexicalBlock(scope: !841, file: !2, line: 203, column: 27)
!848 = !DILocalVariable(name: "__res", scope: !849, file: !2, line: 204, type: !98)
!849 = distinct !DILexicalBlock(scope: !850, file: !2, line: 204, column: 27)
!850 = distinct !DILexicalBlock(scope: !819, file: !2, line: 204, column: 13)
!851 = !DILocalVariable(name: "__c", scope: !852, file: !2, line: 204, type: !98)
!852 = distinct !DILexicalBlock(scope: !853, file: !2, line: 204, column: 27)
!853 = distinct !DILexicalBlock(scope: !854, file: !2, line: 204, column: 27)
!854 = distinct !DILexicalBlock(scope: !855, file: !2, line: 204, column: 27)
!855 = distinct !DILexicalBlock(scope: !849, file: !2, line: 204, column: 27)
!856 = !DILocalVariable(name: "__res", scope: !857, file: !2, line: 214, type: !98)
!857 = distinct !DILexicalBlock(scope: !858, file: !2, line: 214, column: 14)
!858 = distinct !DILexicalBlock(scope: !800, file: !2, line: 214, column: 9)
!859 = !DILocalVariable(name: "__c", scope: !860, file: !2, line: 214, type: !98)
!860 = distinct !DILexicalBlock(scope: !861, file: !2, line: 214, column: 14)
!861 = distinct !DILexicalBlock(scope: !862, file: !2, line: 214, column: 14)
!862 = distinct !DILexicalBlock(scope: !863, file: !2, line: 214, column: 14)
!863 = distinct !DILexicalBlock(scope: !857, file: !2, line: 214, column: 14)
!864 = !DILocalVariable(name: "p", scope: !865, file: !2, line: 221, type: !747)
!865 = distinct !DILexicalBlock(scope: !866, file: !2, line: 220, column: 33)
!866 = distinct !DILexicalBlock(scope: !867, file: !2, line: 220, column: 9)
!867 = distinct !DILexicalBlock(scope: !868, file: !2, line: 220, column: 9)
!868 = distinct !DILexicalBlock(scope: !869, file: !2, line: 218, column: 17)
!869 = distinct !DILexicalBlock(scope: !800, file: !2, line: 218, column: 8)
!870 = !DILocalVariable(name: "len", scope: !865, file: !2, line: 222, type: !98)
!871 = !DILocalVariable(name: "p", scope: !872, file: !2, line: 233, type: !747)
!872 = distinct !DILexicalBlock(scope: !873, file: !2, line: 232, column: 33)
!873 = distinct !DILexicalBlock(scope: !874, file: !2, line: 232, column: 9)
!874 = distinct !DILexicalBlock(scope: !875, file: !2, line: 232, column: 9)
!875 = distinct !DILexicalBlock(scope: !876, file: !2, line: 231, column: 36)
!876 = distinct !DILexicalBlock(scope: !877, file: !2, line: 231, column: 5)
!877 = distinct !DILexicalBlock(scope: !800, file: !2, line: 231, column: 5)
!878 = !DILocalVariable(name: "row", scope: !872, file: !2, line: 234, type: !98)
!879 = !DILocalVariable(name: "name", scope: !880, file: !2, line: 243, type: !100)
!880 = distinct !DILexicalBlock(scope: !881, file: !2, line: 242, column: 44)
!881 = distinct !DILexicalBlock(scope: !882, file: !2, line: 242, column: 29)
!882 = distinct !DILexicalBlock(scope: !883, file: !2, line: 241, column: 28)
!883 = distinct !DILexicalBlock(scope: !884, file: !2, line: 237, column: 25)
!884 = distinct !DILexicalBlock(scope: !885, file: !2, line: 236, column: 33)
!885 = distinct !DILexicalBlock(scope: !886, file: !2, line: 236, column: 21)
!886 = distinct !DILexicalBlock(scope: !887, file: !2, line: 235, column: 25)
!887 = distinct !DILexicalBlock(scope: !872, file: !2, line: 235, column: 17)
!888 = !DILocalVariable(name: "__res", scope: !889, file: !2, line: 247, type: !98)
!889 = distinct !DILexicalBlock(scope: !890, file: !2, line: 247, column: 47)
!890 = distinct !DILexicalBlock(scope: !891, file: !2, line: 247, column: 33)
!891 = distinct !DILexicalBlock(scope: !881, file: !2, line: 245, column: 32)
!892 = !DILocalVariable(name: "__c", scope: !893, file: !2, line: 247, type: !98)
!893 = distinct !DILexicalBlock(scope: !894, file: !2, line: 247, column: 47)
!894 = distinct !DILexicalBlock(scope: !895, file: !2, line: 247, column: 47)
!895 = distinct !DILexicalBlock(scope: !896, file: !2, line: 247, column: 47)
!896 = distinct !DILexicalBlock(scope: !889, file: !2, line: 247, column: 47)
!897 = !DILocalVariable(name: "__res", scope: !898, file: !2, line: 247, type: !98)
!898 = distinct !DILexicalBlock(scope: !890, file: !2, line: 247, column: 61)
!899 = !DILocalVariable(name: "__c", scope: !900, file: !2, line: 247, type: !98)
!900 = distinct !DILexicalBlock(scope: !901, file: !2, line: 247, column: 61)
!901 = distinct !DILexicalBlock(scope: !902, file: !2, line: 247, column: 61)
!902 = distinct !DILexicalBlock(scope: !903, file: !2, line: 247, column: 61)
!903 = distinct !DILexicalBlock(scope: !898, file: !2, line: 247, column: 61)
!904 = !DILocalVariable(name: "len", scope: !905, file: !2, line: 252, type: !98)
!905 = distinct !DILexicalBlock(scope: !887, file: !2, line: 251, column: 20)
!906 = !DILocalVariable(name: "name", scope: !907, file: !2, line: 262, type: !100)
!907 = distinct !DILexicalBlock(scope: !908, file: !2, line: 261, column: 44)
!908 = distinct !DILexicalBlock(scope: !909, file: !2, line: 261, column: 29)
!909 = distinct !DILexicalBlock(scope: !910, file: !2, line: 260, column: 56)
!910 = distinct !DILexicalBlock(scope: !911, file: !2, line: 260, column: 25)
!911 = distinct !DILexicalBlock(scope: !912, file: !2, line: 259, column: 22)
!912 = distinct !DILexicalBlock(scope: !905, file: !2, line: 258, column: 21)
!913 = !DILocalVariable(name: "__res", scope: !914, file: !2, line: 266, type: !98)
!914 = distinct !DILexicalBlock(scope: !915, file: !2, line: 266, column: 57)
!915 = distinct !DILexicalBlock(scope: !916, file: !2, line: 266, column: 33)
!916 = distinct !DILexicalBlock(scope: !908, file: !2, line: 264, column: 32)
!917 = !DILocalVariable(name: "__c", scope: !918, file: !2, line: 266, type: !98)
!918 = distinct !DILexicalBlock(scope: !919, file: !2, line: 266, column: 57)
!919 = distinct !DILexicalBlock(scope: !920, file: !2, line: 266, column: 57)
!920 = distinct !DILexicalBlock(scope: !921, file: !2, line: 266, column: 57)
!921 = distinct !DILexicalBlock(scope: !914, file: !2, line: 266, column: 57)
!922 = !DILocalVariable(name: "__res", scope: !923, file: !2, line: 266, type: !98)
!923 = distinct !DILexicalBlock(scope: !915, file: !2, line: 266, column: 71)
!924 = !DILocalVariable(name: "__c", scope: !925, file: !2, line: 266, type: !98)
!925 = distinct !DILexicalBlock(scope: !926, file: !2, line: 266, column: 71)
!926 = distinct !DILexicalBlock(scope: !927, file: !2, line: 266, column: 71)
!927 = distinct !DILexicalBlock(scope: !928, file: !2, line: 266, column: 71)
!928 = distinct !DILexicalBlock(scope: !923, file: !2, line: 266, column: 71)
!929 = !DILocalVariable(name: "x", scope: !930, file: !2, line: 275, type: !98)
!930 = distinct !DILexicalBlock(scope: !931, file: !2, line: 274, column: 56)
!931 = distinct !DILexicalBlock(scope: !872, file: !2, line: 274, column: 17)
!932 = !DILocalVariable(name: "__res", scope: !933, file: !2, line: 310, type: !98)
!933 = distinct !DILexicalBlock(scope: !930, file: !2, line: 310, column: 68)
!934 = !DILocalVariable(name: "__c", scope: !935, file: !2, line: 310, type: !98)
!935 = distinct !DILexicalBlock(scope: !936, file: !2, line: 310, column: 68)
!936 = distinct !DILexicalBlock(scope: !937, file: !2, line: 310, column: 68)
!937 = distinct !DILexicalBlock(scope: !938, file: !2, line: 310, column: 68)
!938 = distinct !DILexicalBlock(scope: !933, file: !2, line: 310, column: 68)
!939 = !DILocalVariable(name: "__res", scope: !940, file: !2, line: 310, type: !98)
!940 = distinct !DILexicalBlock(scope: !930, file: !2, line: 310, column: 81)
!941 = !DILocalVariable(name: "__c", scope: !942, file: !2, line: 310, type: !98)
!942 = distinct !DILexicalBlock(scope: !943, file: !2, line: 310, column: 81)
!943 = distinct !DILexicalBlock(scope: !944, file: !2, line: 310, column: 81)
!944 = distinct !DILexicalBlock(scope: !945, file: !2, line: 310, column: 81)
!945 = distinct !DILexicalBlock(scope: !940, file: !2, line: 310, column: 81)
!946 = !{!586, !586, i64 0}
!947 = !DILocation(line: 173, column: 25, scope: !800)
!948 = !{!587, !587, i64 0}
!949 = !DILocation(line: 173, column: 40, scope: !800)
!950 = !DILocation(line: 173, column: 49, scope: !800)
!951 = !DILocation(line: 173, column: 73, scope: !800)
!952 = !DILocation(line: 173, column: 83, scope: !800)
!953 = !DILocation(line: 175, column: 5, scope: !800)
!954 = !DILocation(line: 175, column: 14, scope: !800)
!955 = !DILocation(line: 175, column: 29, scope: !800)
!956 = !DILocation(line: 176, column: 5, scope: !800)
!957 = !DILocation(line: 176, column: 15, scope: !800)
!958 = !DILocation(line: 177, column: 5, scope: !800)
!959 = !DILocation(line: 177, column: 9, scope: !800)
!960 = !DILocation(line: 177, column: 12, scope: !800)
!961 = !DILocation(line: 177, column: 15, scope: !800)
!962 = !DILocation(line: 177, column: 18, scope: !800)
!963 = !DILocation(line: 177, column: 22, scope: !800)
!964 = !DILocation(line: 177, column: 28, scope: !800)
!965 = !DILocation(line: 177, column: 41, scope: !800)
!966 = !DILocation(line: 178, column: 5, scope: !800)
!967 = !DILocation(line: 178, column: 14, scope: !800)
!968 = !DILocation(line: 179, column: 5, scope: !800)
!969 = !DILocation(line: 179, column: 15, scope: !800)
!970 = !DILocation(line: 180, column: 9, scope: !971)
!971 = distinct !DILexicalBlock(scope: !800, file: !2, line: 180, column: 9)
!972 = !DILocation(line: 180, column: 15, scope: !971)
!973 = !DILocation(line: 180, column: 19, scope: !971)
!974 = !{!585, !587, i64 56}
!975 = !DILocation(line: 180, column: 13, scope: !971)
!976 = !DILocation(line: 180, column: 28, scope: !971)
!977 = !DILocation(line: 180, column: 31, scope: !971)
!978 = !DILocation(line: 180, column: 35, scope: !971)
!979 = !{!585, !586, i64 84}
!980 = !DILocation(line: 180, column: 42, scope: !971)
!981 = !DILocation(line: 180, column: 46, scope: !971)
!982 = !DILocation(line: 180, column: 40, scope: !971)
!983 = !DILocation(line: 180, column: 9, scope: !800)
!984 = !DILocation(line: 180, column: 52, scope: !971)
!985 = !DILocation(line: 182, column: 11, scope: !800)
!986 = !DILocation(line: 182, column: 15, scope: !800)
!987 = !{!585, !564, i64 120}
!988 = !DILocation(line: 182, column: 19, scope: !800)
!989 = !DILocation(line: 182, column: 22, scope: !800)
!990 = !DILocation(line: 182, column: 28, scope: !800)
!991 = !DILocation(line: 182, column: 32, scope: !800)
!992 = !DILocation(line: 182, column: 26, scope: !800)
!993 = !DILocation(line: 182, column: 43, scope: !800)
!994 = !DILocation(line: 182, column: 47, scope: !800)
!995 = !{!585, !587, i64 72}
!996 = !DILocation(line: 182, column: 41, scope: !800)
!997 = !DILocation(line: 182, column: 10, scope: !800)
!998 = !DILocation(line: 182, column: 55, scope: !800)
!999 = !DILocation(line: 182, column: 59, scope: !800)
!1000 = !DILocation(line: 182, column: 63, scope: !800)
!1001 = !DILocation(line: 182, column: 69, scope: !800)
!1002 = !DILocation(line: 182, column: 73, scope: !800)
!1003 = !DILocation(line: 182, column: 67, scope: !800)
!1004 = !{!565, !565, i64 0}
!1005 = !DILocation(line: 182, column: 8, scope: !800)
!1006 = !DILocation(line: 183, column: 15, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !800, file: !2, line: 183, column: 5)
!1008 = !DILocation(line: 183, column: 19, scope: !1007)
!1009 = !{!585, !587, i64 64}
!1010 = !DILocation(line: 183, column: 28, scope: !1007)
!1011 = !DILocation(line: 183, column: 13, scope: !1007)
!1012 = !DILocation(line: 183, column: 10, scope: !1007)
!1013 = !DILocation(line: 183, column: 33, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 183, column: 5)
!1015 = !DILocation(line: 183, column: 38, scope: !1014)
!1016 = !DILocation(line: 183, column: 36, scope: !1014)
!1017 = !DILocation(line: 183, column: 5, scope: !1007)
!1018 = !DILocation(line: 184, column: 20, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 183, column: 49)
!1020 = !DILocation(line: 184, column: 23, scope: !1019)
!1021 = !DILocation(line: 184, column: 18, scope: !1019)
!1022 = !DILocation(line: 185, column: 13, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 185, column: 13)
!1024 = !DILocation(line: 185, column: 16, scope: !1023)
!1025 = !DILocation(line: 185, column: 15, scope: !1023)
!1026 = !DILocation(line: 185, column: 25, scope: !1023)
!1027 = !DILocation(line: 185, column: 30, scope: !1023)
!1028 = !DILocation(line: 185, column: 33, scope: !1023)
!1029 = !DILocation(line: 185, column: 37, scope: !1023)
!1030 = !DILocation(line: 185, column: 44, scope: !1023)
!1031 = !DILocation(line: 185, column: 48, scope: !1023)
!1032 = !DILocation(line: 185, column: 42, scope: !1023)
!1033 = !DILocation(line: 185, column: 53, scope: !1023)
!1034 = !DILocation(line: 185, column: 13, scope: !1019)
!1035 = !DILocation(line: 185, column: 60, scope: !1023)
!1036 = !DILocation(line: 185, column: 64, scope: !1023)
!1037 = !{!585, !564, i64 144}
!1038 = !DILocation(line: 185, column: 76, scope: !1023)
!1039 = !DILocation(line: 185, column: 82, scope: !1023)
!1040 = !DILocation(line: 185, column: 86, scope: !1023)
!1041 = !DILocation(line: 185, column: 108, scope: !1023)
!1042 = !DILocation(line: 185, column: 110, scope: !1023)
!1043 = !DILocation(line: 186, column: 13, scope: !1019)
!1044 = !DILocation(line: 186, column: 17, scope: !1019)
!1045 = !DILocation(line: 186, column: 22, scope: !1019)
!1046 = !DILocation(line: 186, column: 26, scope: !1019)
!1047 = !DILocation(line: 186, column: 30, scope: !1019)
!1048 = !DILocation(line: 186, column: 35, scope: !1019)
!1049 = !DILocation(line: 186, column: 39, scope: !1019)
!1050 = !DILocation(line: 186, column: 33, scope: !1019)
!1051 = !DILocation(line: 186, column: 11, scope: !1019)
!1052 = !DILocation(line: 187, column: 9, scope: !1019)
!1053 = !DILocation(line: 187, column: 13, scope: !1019)
!1054 = !{!585, !564, i64 152}
!1055 = !DILocation(line: 187, column: 24, scope: !1019)
!1056 = !DILocation(line: 187, column: 30, scope: !1019)
!1057 = !DILocation(line: 187, column: 34, scope: !1019)
!1058 = !DILocation(line: 187, column: 38, scope: !1019)
!1059 = !DILocation(line: 187, column: 42, scope: !1019)
!1060 = !DILocation(line: 188, column: 5, scope: !1019)
!1061 = !DILocation(line: 183, column: 43, scope: !1014)
!1062 = !DILocation(line: 183, column: 5, scope: !1014)
!1063 = distinct !{!1063, !1017, !1064, !1065}
!1064 = !DILocation(line: 188, column: 5, scope: !1007)
!1065 = !{!"llvm.loop.mustprogress"}
!1066 = !DILocation(line: 189, column: 16, scope: !800)
!1067 = !DILocation(line: 189, column: 20, scope: !800)
!1068 = !DILocation(line: 189, column: 14, scope: !800)
!1069 = !DILocation(line: 190, column: 9, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !800, file: !2, line: 190, column: 9)
!1071 = !DILocation(line: 190, column: 13, scope: !1070)
!1072 = !DILocation(line: 190, column: 12, scope: !1070)
!1073 = !DILocation(line: 190, column: 22, scope: !1070)
!1074 = !DILocation(line: 190, column: 27, scope: !1070)
!1075 = !DILocation(line: 190, column: 30, scope: !1070)
!1076 = !DILocation(line: 190, column: 34, scope: !1070)
!1077 = !DILocation(line: 190, column: 41, scope: !1070)
!1078 = !DILocation(line: 190, column: 45, scope: !1070)
!1079 = !DILocation(line: 190, column: 39, scope: !1070)
!1080 = !DILocation(line: 190, column: 50, scope: !1070)
!1081 = !DILocation(line: 190, column: 9, scope: !800)
!1082 = !DILocation(line: 190, column: 57, scope: !1070)
!1083 = !DILocation(line: 190, column: 61, scope: !1070)
!1084 = !DILocation(line: 190, column: 73, scope: !1070)
!1085 = !DILocation(line: 190, column: 79, scope: !1070)
!1086 = !DILocation(line: 190, column: 83, scope: !1070)
!1087 = !DILocation(line: 190, column: 105, scope: !1070)
!1088 = !DILocation(line: 190, column: 108, scope: !1070)
!1089 = !DILocation(line: 192, column: 9, scope: !819)
!1090 = !DILocation(line: 192, column: 24, scope: !819)
!1091 = !DILocation(line: 193, column: 9, scope: !819)
!1092 = !DILocation(line: 194, column: 9, scope: !819)
!1093 = !DILocation(line: 194, column: 13, scope: !819)
!1094 = !DILocation(line: 194, column: 22, scope: !819)
!1095 = !DILocation(line: 194, column: 26, scope: !819)
!1096 = !DILocation(line: 194, column: 30, scope: !819)
!1097 = !DILocation(line: 195, column: 9, scope: !819)
!1098 = !DILocation(line: 195, column: 16, scope: !819)
!1099 = !DILocation(line: 195, column: 22, scope: !819)
!1100 = !{!1101, !1101, i64 0}
!1101 = !{!"double", !565, i64 0}
!1102 = !DILocation(line: 196, column: 25, scope: !819)
!1103 = !DILocation(line: 196, column: 28, scope: !819)
!1104 = !DILocation(line: 196, column: 47, scope: !819)
!1105 = !DILocation(line: 196, column: 32, scope: !819)
!1106 = !DILocation(line: 196, column: 52, scope: !819)
!1107 = !DILocation(line: 196, column: 56, scope: !819)
!1108 = !DILocation(line: 196, column: 9, scope: !819)
!1109 = !DILocation(line: 197, column: 16, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !819, file: !2, line: 197, column: 9)
!1111 = !DILocation(line: 197, column: 14, scope: !1110)
!1112 = !DILocation(line: 197, column: 21, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 197, column: 9)
!1114 = !DILocation(line: 197, column: 23, scope: !1113)
!1115 = !DILocation(line: 197, column: 9, scope: !1110)
!1116 = !DILocation(line: 197, column: 53, scope: !1113)
!1117 = !DILocation(line: 197, column: 58, scope: !1113)
!1118 = !DILocation(line: 197, column: 49, scope: !1113)
!1119 = !{!1120, !1120, i64 0}
!1120 = !{!"float", !565, i64 0}
!1121 = !DILocation(line: 197, column: 44, scope: !1113)
!1122 = !DILocation(line: 197, column: 61, scope: !1113)
!1123 = !DILocation(line: 197, column: 67, scope: !1113)
!1124 = !DILocation(line: 197, column: 65, scope: !1113)
!1125 = !DILocation(line: 197, column: 38, scope: !1113)
!1126 = !DILocation(line: 197, column: 33, scope: !1113)
!1127 = !DILocation(line: 197, column: 41, scope: !1113)
!1128 = !DILocation(line: 197, column: 28, scope: !1113)
!1129 = !DILocation(line: 197, column: 9, scope: !1113)
!1130 = distinct !{!1130, !1115, !1131, !1065}
!1131 = !DILocation(line: 197, column: 67, scope: !1110)
!1132 = !DILocation(line: 198, column: 16, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !819, file: !2, line: 198, column: 9)
!1134 = !DILocation(line: 198, column: 14, scope: !1133)
!1135 = !DILocation(line: 198, column: 21, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 198, column: 9)
!1137 = !DILocation(line: 198, column: 23, scope: !1136)
!1138 = !DILocation(line: 198, column: 9, scope: !1133)
!1139 = !DILocation(line: 199, column: 22, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 199, column: 13)
!1141 = !DILocation(line: 199, column: 20, scope: !1140)
!1142 = !DILocation(line: 199, column: 18, scope: !1140)
!1143 = !DILocation(line: 199, column: 25, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 199, column: 13)
!1145 = !DILocation(line: 199, column: 27, scope: !1144)
!1146 = !DILocation(line: 199, column: 31, scope: !1144)
!1147 = !DILocation(line: 199, column: 39, scope: !1144)
!1148 = !DILocation(line: 199, column: 34, scope: !1144)
!1149 = !DILocation(line: 199, column: 49, scope: !1144)
!1150 = !DILocation(line: 199, column: 50, scope: !1144)
!1151 = !DILocation(line: 199, column: 44, scope: !1144)
!1152 = !DILocation(line: 199, column: 42, scope: !1144)
!1153 = !DILocation(line: 0, scope: !1144)
!1154 = !DILocation(line: 199, column: 13, scope: !1140)
!1155 = !DILocation(line: 200, column: 28, scope: !1144)
!1156 = !DILocation(line: 200, column: 23, scope: !1144)
!1157 = !DILocation(line: 200, column: 21, scope: !1144)
!1158 = !DILocation(line: 200, column: 47, scope: !1144)
!1159 = !DILocation(line: 200, column: 48, scope: !1144)
!1160 = !DILocation(line: 200, column: 42, scope: !1144)
!1161 = !DILocation(line: 200, column: 37, scope: !1144)
!1162 = !DILocation(line: 200, column: 32, scope: !1144)
!1163 = !DILocation(line: 200, column: 40, scope: !1144)
!1164 = !DILocation(line: 200, column: 65, scope: !1144)
!1165 = !DILocation(line: 200, column: 58, scope: !1144)
!1166 = !DILocation(line: 200, column: 59, scope: !1144)
!1167 = !DILocation(line: 200, column: 53, scope: !1144)
!1168 = !DILocation(line: 200, column: 63, scope: !1144)
!1169 = !DILocation(line: 200, column: 17, scope: !1144)
!1170 = !DILocation(line: 199, column: 55, scope: !1144)
!1171 = !DILocation(line: 199, column: 13, scope: !1144)
!1172 = distinct !{!1172, !1154, !1173, !1065}
!1173 = !DILocation(line: 200, column: 65, scope: !1140)
!1174 = !DILocation(line: 198, column: 28, scope: !1136)
!1175 = !DILocation(line: 198, column: 9, scope: !1136)
!1176 = distinct !{!1176, !1138, !1177, !1065}
!1177 = !DILocation(line: 200, column: 65, scope: !1133)
!1178 = !DILocation(line: 201, column: 14, scope: !819)
!1179 = !DILocation(line: 201, column: 21, scope: !819)
!1180 = !DILocation(line: 201, column: 12, scope: !819)
!1181 = !DILocation(line: 201, column: 30, scope: !819)
!1182 = !DILocation(line: 201, column: 37, scope: !819)
!1183 = !DILocation(line: 201, column: 28, scope: !819)
!1184 = !DILocation(line: 202, column: 20, scope: !819)
!1185 = !DILocation(line: 202, column: 22, scope: !819)
!1186 = !DILocation(line: 202, column: 24, scope: !819)
!1187 = !DILocation(line: 202, column: 27, scope: !819)
!1188 = !DILocation(line: 202, column: 26, scope: !819)
!1189 = !DILocation(line: 202, column: 16, scope: !819)
!1190 = !DILocation(line: 202, column: 9, scope: !819)
!1191 = !DILocation(line: 202, column: 14, scope: !819)
!1192 = !DILocation(line: 202, column: 43, scope: !819)
!1193 = !DILocation(line: 202, column: 45, scope: !819)
!1194 = !DILocation(line: 202, column: 47, scope: !819)
!1195 = !DILocation(line: 202, column: 50, scope: !819)
!1196 = !DILocation(line: 202, column: 49, scope: !819)
!1197 = !DILocation(line: 202, column: 39, scope: !819)
!1198 = !DILocation(line: 202, column: 56, scope: !819)
!1199 = !DILocation(line: 202, column: 54, scope: !819)
!1200 = !DILocation(line: 202, column: 32, scope: !819)
!1201 = !DILocation(line: 202, column: 37, scope: !819)
!1202 = !DILocation(line: 202, column: 74, scope: !819)
!1203 = !DILocation(line: 202, column: 76, scope: !819)
!1204 = !DILocation(line: 202, column: 78, scope: !819)
!1205 = !DILocation(line: 202, column: 81, scope: !819)
!1206 = !DILocation(line: 202, column: 80, scope: !819)
!1207 = !DILocation(line: 202, column: 70, scope: !819)
!1208 = !DILocation(line: 202, column: 63, scope: !819)
!1209 = !DILocation(line: 202, column: 68, scope: !819)
!1210 = !DILocation(line: 203, column: 20, scope: !842)
!1211 = !DILocation(line: 203, column: 13, scope: !842)
!1212 = !DILocation(line: 203, column: 27, scope: !841)
!1213 = !DILocation(line: 203, column: 27, scope: !845)
!1214 = !DILocation(line: 203, column: 27, scope: !846)
!1215 = !DILocation(line: 203, column: 27, scope: !844)
!1216 = !DILocation(line: 203, column: 27, scope: !847)
!1217 = !DILocation(line: 203, column: 27, scope: !842)
!1218 = !DILocation(line: 203, column: 24, scope: !842)
!1219 = !DILocation(line: 203, column: 13, scope: !819)
!1220 = !DILocation(line: 203, column: 48, scope: !842)
!1221 = !DILocation(line: 203, column: 54, scope: !842)
!1222 = !DILocation(line: 203, column: 40, scope: !842)
!1223 = !DILocation(line: 203, column: 45, scope: !842)
!1224 = !DILocation(line: 204, column: 20, scope: !850)
!1225 = !DILocation(line: 204, column: 13, scope: !850)
!1226 = !DILocation(line: 204, column: 27, scope: !849)
!1227 = !DILocation(line: 204, column: 27, scope: !853)
!1228 = !DILocation(line: 204, column: 27, scope: !854)
!1229 = !DILocation(line: 204, column: 27, scope: !852)
!1230 = !DILocation(line: 204, column: 27, scope: !855)
!1231 = !DILocation(line: 204, column: 27, scope: !850)
!1232 = !DILocation(line: 204, column: 24, scope: !850)
!1233 = !DILocation(line: 204, column: 13, scope: !819)
!1234 = !DILocation(line: 204, column: 48, scope: !850)
!1235 = !DILocation(line: 204, column: 54, scope: !850)
!1236 = !DILocation(line: 204, column: 40, scope: !850)
!1237 = !DILocation(line: 204, column: 45, scope: !850)
!1238 = !DILocation(line: 205, column: 13, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !819, file: !2, line: 205, column: 13)
!1240 = !DILocation(line: 205, column: 20, scope: !1239)
!1241 = !DILocation(line: 205, column: 18, scope: !1239)
!1242 = !DILocation(line: 205, column: 25, scope: !1239)
!1243 = !DILocation(line: 205, column: 28, scope: !1239)
!1244 = !DILocation(line: 205, column: 35, scope: !1239)
!1245 = !DILocation(line: 205, column: 33, scope: !1239)
!1246 = !DILocation(line: 205, column: 13, scope: !819)
!1247 = !DILocation(line: 205, column: 52, scope: !1239)
!1248 = !DILocation(line: 205, column: 50, scope: !1239)
!1249 = !DILocation(line: 205, column: 55, scope: !1239)
!1250 = !DILocation(line: 205, column: 69, scope: !1239)
!1251 = !DILocation(line: 205, column: 74, scope: !1239)
!1252 = !DILocation(line: 205, column: 73, scope: !1239)
!1253 = !DILocation(line: 205, column: 79, scope: !1239)
!1254 = !DILocation(line: 205, column: 84, scope: !1239)
!1255 = !DILocation(line: 205, column: 92, scope: !1239)
!1256 = !DILocation(line: 205, column: 90, scope: !1239)
!1257 = !DILocation(line: 205, column: 97, scope: !1239)
!1258 = !DILocation(line: 205, column: 62, scope: !1239)
!1259 = !DILocation(line: 205, column: 60, scope: !1239)
!1260 = !DILocation(line: 205, column: 46, scope: !1239)
!1261 = !DILocation(line: 205, column: 41, scope: !1239)
!1262 = !DILocation(line: 206, column: 18, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 206, column: 18)
!1264 = !DILocation(line: 206, column: 25, scope: !1263)
!1265 = !DILocation(line: 206, column: 23, scope: !1263)
!1266 = !DILocation(line: 206, column: 30, scope: !1263)
!1267 = !DILocation(line: 206, column: 33, scope: !1263)
!1268 = !DILocation(line: 206, column: 40, scope: !1263)
!1269 = !DILocation(line: 206, column: 38, scope: !1263)
!1270 = !DILocation(line: 206, column: 18, scope: !1239)
!1271 = !DILocation(line: 206, column: 57, scope: !1263)
!1272 = !DILocation(line: 206, column: 55, scope: !1263)
!1273 = !DILocation(line: 206, column: 60, scope: !1263)
!1274 = !DILocation(line: 206, column: 74, scope: !1263)
!1275 = !DILocation(line: 206, column: 79, scope: !1263)
!1276 = !DILocation(line: 206, column: 78, scope: !1263)
!1277 = !DILocation(line: 206, column: 84, scope: !1263)
!1278 = !DILocation(line: 206, column: 89, scope: !1263)
!1279 = !DILocation(line: 206, column: 97, scope: !1263)
!1280 = !DILocation(line: 206, column: 95, scope: !1263)
!1281 = !DILocation(line: 206, column: 102, scope: !1263)
!1282 = !DILocation(line: 206, column: 67, scope: !1263)
!1283 = !DILocation(line: 206, column: 65, scope: !1263)
!1284 = !DILocation(line: 206, column: 51, scope: !1263)
!1285 = !DILocation(line: 206, column: 46, scope: !1263)
!1286 = !DILocation(line: 207, column: 25, scope: !1263)
!1287 = !DILocation(line: 207, column: 23, scope: !1263)
!1288 = !DILocation(line: 207, column: 31, scope: !1263)
!1289 = !DILocation(line: 207, column: 29, scope: !1263)
!1290 = !DILocation(line: 207, column: 27, scope: !1263)
!1291 = !DILocation(line: 207, column: 34, scope: !1263)
!1292 = !DILocation(line: 207, column: 48, scope: !1263)
!1293 = !DILocation(line: 207, column: 53, scope: !1263)
!1294 = !DILocation(line: 207, column: 52, scope: !1263)
!1295 = !DILocation(line: 207, column: 58, scope: !1263)
!1296 = !DILocation(line: 207, column: 63, scope: !1263)
!1297 = !DILocation(line: 207, column: 71, scope: !1263)
!1298 = !DILocation(line: 207, column: 69, scope: !1263)
!1299 = !DILocation(line: 207, column: 76, scope: !1263)
!1300 = !DILocation(line: 207, column: 41, scope: !1263)
!1301 = !DILocation(line: 207, column: 39, scope: !1263)
!1302 = !DILocation(line: 207, column: 19, scope: !1263)
!1303 = !DILocation(line: 208, column: 5, scope: !800)
!1304 = !DILocation(line: 209, column: 12, scope: !800)
!1305 = !DILocation(line: 209, column: 16, scope: !800)
!1306 = !{!585, !564, i64 208}
!1307 = !DILocation(line: 209, column: 29, scope: !800)
!1308 = !DILocation(line: 209, column: 10, scope: !800)
!1309 = !DILocation(line: 210, column: 28, scope: !800)
!1310 = !DILocation(line: 210, column: 32, scope: !800)
!1311 = !DILocation(line: 210, column: 36, scope: !800)
!1312 = !DILocation(line: 210, column: 9, scope: !800)
!1313 = !DILocation(line: 210, column: 7, scope: !800)
!1314 = !DILocation(line: 211, column: 10, scope: !800)
!1315 = !DILocation(line: 211, column: 14, scope: !800)
!1316 = !DILocation(line: 211, column: 22, scope: !800)
!1317 = !DILocation(line: 211, column: 25, scope: !800)
!1318 = !DILocation(line: 211, column: 7, scope: !800)
!1319 = !DILocation(line: 212, column: 9, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !800, file: !2, line: 212, column: 9)
!1321 = !DILocation(line: 212, column: 11, scope: !1320)
!1322 = !DILocation(line: 212, column: 9, scope: !800)
!1323 = !DILocation(line: 212, column: 18, scope: !1320)
!1324 = !DILocation(line: 212, column: 16, scope: !1320)
!1325 = !DILocation(line: 213, column: 13, scope: !800)
!1326 = !DILocation(line: 213, column: 17, scope: !800)
!1327 = !{!585, !564, i64 184}
!1328 = !DILocation(line: 213, column: 30, scope: !800)
!1329 = !DILocation(line: 213, column: 33, scope: !800)
!1330 = !DILocation(line: 213, column: 10, scope: !800)
!1331 = !DILocation(line: 214, column: 9, scope: !858)
!1332 = !DILocation(line: 214, column: 14, scope: !857)
!1333 = !DILocation(line: 214, column: 14, scope: !861)
!1334 = !DILocation(line: 214, column: 14, scope: !862)
!1335 = !DILocation(line: 214, column: 14, scope: !860)
!1336 = !DILocation(line: 214, column: 14, scope: !863)
!1337 = !DILocation(line: 214, column: 14, scope: !858)
!1338 = !DILocation(line: 214, column: 11, scope: !858)
!1339 = !DILocation(line: 214, column: 9, scope: !800)
!1340 = !DILocation(line: 214, column: 29, scope: !858)
!1341 = !DILocation(line: 214, column: 27, scope: !858)
!1342 = !DILocation(line: 215, column: 5, scope: !800)
!1343 = !DILocation(line: 215, column: 9, scope: !800)
!1344 = !{!585, !564, i64 160}
!1345 = !DILocation(line: 215, column: 19, scope: !800)
!1346 = !DILocation(line: 215, column: 22, scope: !800)
!1347 = !DILocation(line: 216, column: 5, scope: !800)
!1348 = !DILocation(line: 216, column: 9, scope: !800)
!1349 = !DILocation(line: 216, column: 20, scope: !800)
!1350 = !DILocation(line: 216, column: 26, scope: !800)
!1351 = !DILocation(line: 216, column: 30, scope: !800)
!1352 = !DILocation(line: 216, column: 36, scope: !800)
!1353 = !DILocation(line: 217, column: 5, scope: !800)
!1354 = !DILocation(line: 217, column: 9, scope: !800)
!1355 = !{!585, !564, i64 168}
!1356 = !DILocation(line: 217, column: 20, scope: !800)
!1357 = !DILocation(line: 217, column: 23, scope: !800)
!1358 = !DILocation(line: 218, column: 8, scope: !869)
!1359 = !DILocation(line: 218, column: 12, scope: !869)
!1360 = !DILocation(line: 218, column: 8, scope: !800)
!1361 = !DILocation(line: 220, column: 16, scope: !867)
!1362 = !DILocation(line: 220, column: 14, scope: !867)
!1363 = !DILocation(line: 220, column: 21, scope: !866)
!1364 = !DILocation(line: 220, column: 25, scope: !866)
!1365 = !DILocation(line: 220, column: 23, scope: !866)
!1366 = !DILocation(line: 220, column: 9, scope: !867)
!1367 = !DILocation(line: 221, column: 13, scope: !865)
!1368 = !DILocation(line: 221, column: 34, scope: !865)
!1369 = !DILocation(line: 221, column: 38, scope: !865)
!1370 = !DILocation(line: 221, column: 43, scope: !865)
!1371 = !DILocation(line: 221, column: 41, scope: !865)
!1372 = !DILocation(line: 222, column: 13, scope: !865)
!1373 = !DILocation(line: 222, column: 17, scope: !865)
!1374 = !DILocation(line: 222, column: 41, scope: !865)
!1375 = !DILocation(line: 222, column: 23, scope: !865)
!1376 = !DILocation(line: 223, column: 17, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !865, file: !2, line: 223, column: 17)
!1378 = !DILocation(line: 223, column: 21, scope: !1377)
!1379 = !DILocation(line: 223, column: 17, scope: !865)
!1380 = !DILocation(line: 224, column: 17, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 223, column: 26)
!1382 = !DILocation(line: 225, column: 17, scope: !1381)
!1383 = !DILocation(line: 227, column: 17, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !865, file: !2, line: 227, column: 17)
!1385 = !DILocation(line: 227, column: 27, scope: !1384)
!1386 = !DILocation(line: 227, column: 25, scope: !1384)
!1387 = !DILocation(line: 227, column: 17, scope: !865)
!1388 = !DILocation(line: 227, column: 42, scope: !1384)
!1389 = !DILocation(line: 227, column: 40, scope: !1384)
!1390 = !DILocation(line: 227, column: 32, scope: !1384)
!1391 = !DILocation(line: 228, column: 9, scope: !866)
!1392 = !DILocation(line: 228, column: 9, scope: !865)
!1393 = !DILocation(line: 220, column: 28, scope: !866)
!1394 = !DILocation(line: 220, column: 9, scope: !866)
!1395 = distinct !{!1395, !1366, !1396, !1065}
!1396 = !DILocation(line: 228, column: 9, scope: !867)
!1397 = !DILocation(line: 229, column: 5, scope: !868)
!1398 = !DILocation(line: 231, column: 12, scope: !877)
!1399 = !DILocation(line: 231, column: 10, scope: !877)
!1400 = !DILocation(line: 231, column: 17, scope: !876)
!1401 = !DILocation(line: 231, column: 22, scope: !876)
!1402 = !DILocation(line: 231, column: 19, scope: !876)
!1403 = !DILocation(line: 231, column: 5, scope: !877)
!1404 = !DILocation(line: 232, column: 16, scope: !874)
!1405 = !DILocation(line: 232, column: 14, scope: !874)
!1406 = !DILocation(line: 232, column: 21, scope: !873)
!1407 = !DILocation(line: 232, column: 25, scope: !873)
!1408 = !DILocation(line: 232, column: 23, scope: !873)
!1409 = !DILocation(line: 232, column: 9, scope: !874)
!1410 = !DILocation(line: 233, column: 13, scope: !872)
!1411 = !DILocation(line: 233, column: 34, scope: !872)
!1412 = !DILocation(line: 233, column: 38, scope: !872)
!1413 = !DILocation(line: 233, column: 43, scope: !872)
!1414 = !DILocation(line: 233, column: 41, scope: !872)
!1415 = !DILocation(line: 234, column: 13, scope: !872)
!1416 = !DILocation(line: 234, column: 17, scope: !872)
!1417 = !DILocation(line: 234, column: 39, scope: !872)
!1418 = !DILocation(line: 234, column: 42, scope: !872)
!1419 = !{!1420, !586, i64 16}
!1420 = !{!"bam_pileup1_t", !564, i64 0, !586, i64 8, !586, i64 12, !586, i64 16, !586, i64 20, !586, i64 20, !586, i64 20, !586, i64 20, !586, i64 20, !565, i64 24, !586, i64 32}
!1421 = !DILocation(line: 234, column: 37, scope: !872)
!1422 = !DILocation(line: 234, column: 50, scope: !872)
!1423 = !DILocation(line: 234, column: 54, scope: !872)
!1424 = !{!585, !586, i64 88}
!1425 = !DILocation(line: 234, column: 48, scope: !872)
!1426 = !DILocation(line: 235, column: 17, scope: !887)
!1427 = !DILocation(line: 235, column: 19, scope: !887)
!1428 = !DILocation(line: 235, column: 17, scope: !872)
!1429 = !DILocation(line: 236, column: 22, scope: !885)
!1430 = !DILocation(line: 236, column: 25, scope: !885)
!1431 = !DILocation(line: 236, column: 21, scope: !886)
!1432 = !DILocation(line: 237, column: 25, scope: !883)
!1433 = !DILocation(line: 237, column: 29, scope: !883)
!1434 = !{!585, !586, i64 92}
!1435 = !DILocation(line: 237, column: 38, scope: !883)
!1436 = !DILocation(line: 237, column: 61, scope: !883)
!1437 = !DILocation(line: 238, column: 49, scope: !883)
!1438 = !DILocation(line: 238, column: 52, scope: !883)
!1439 = !{!1420, !564, i64 0}
!1440 = !DILocation(line: 238, column: 55, scope: !883)
!1441 = !DILocation(line: 238, column: 58, scope: !883)
!1442 = !{!1420, !586, i64 8}
!1443 = !DILocation(line: 238, column: 34, scope: !883)
!1444 = !DILocation(line: 238, column: 32, scope: !883)
!1445 = !DILocation(line: 237, column: 25, scope: !884)
!1446 = !DILocation(line: 240, column: 29, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !2, line: 240, column: 29)
!1448 = distinct !DILexicalBlock(scope: !883, file: !2, line: 238, column: 66)
!1449 = !DILocation(line: 240, column: 33, scope: !1447)
!1450 = !DILocation(line: 240, column: 40, scope: !1447)
!1451 = !DILocation(line: 240, column: 65, scope: !1447)
!1452 = !DILocation(line: 240, column: 68, scope: !1447)
!1453 = !DILocation(line: 240, column: 71, scope: !1447)
!1454 = !DILocation(line: 240, column: 74, scope: !1447)
!1455 = !DILocation(line: 240, column: 50, scope: !1447)
!1456 = !DILocation(line: 240, column: 47, scope: !1447)
!1457 = !DILocation(line: 240, column: 29, scope: !1448)
!1458 = !DILocation(line: 240, column: 85, scope: !1447)
!1459 = !{!1460, !1462, i64 16}
!1460 = !{!"bam1_t", !1461, i64 0, !587, i64 48, !564, i64 56, !586, i64 64, !586, i64 68, !586, i64 72}
!1461 = !{!"bam1_core_t", !587, i64 0, !586, i64 8, !1462, i64 12, !565, i64 14, !565, i64 15, !1462, i64 16, !1462, i64 18, !586, i64 20, !586, i64 24, !586, i64 28, !587, i64 32, !587, i64 40}
!1462 = !{!"short", !565, i64 0}
!1463 = !DILocation(line: 240, column: 83, scope: !1447)
!1464 = !DILocation(line: 240, column: 81, scope: !1447)
!1465 = !DILocation(line: 241, column: 21, scope: !1448)
!1466 = !DILocation(line: 242, column: 29, scope: !881)
!1467 = !DILocation(line: 242, column: 33, scope: !881)
!1468 = !{!585, !586, i64 112}
!1469 = !DILocation(line: 242, column: 29, scope: !882)
!1470 = !DILocation(line: 243, column: 29, scope: !880)
!1471 = !DILocation(line: 243, column: 35, scope: !880)
!1472 = !DILocation(line: 243, column: 42, scope: !880)
!1473 = !{!1460, !564, i64 56}
!1474 = !DILocation(line: 244, column: 34, scope: !880)
!1475 = !DILocation(line: 244, column: 37, scope: !880)
!1476 = !DILocation(line: 244, column: 42, scope: !880)
!1477 = !DILocation(line: 244, column: 49, scope: !880)
!1478 = !DILocation(line: 244, column: 52, scope: !880)
!1479 = !DILocation(line: 244, column: 55, scope: !880)
!1480 = !DILocation(line: 244, column: 60, scope: !880)
!1481 = !{!1460, !1462, i64 18}
!1482 = !DILocation(line: 244, column: 46, scope: !880)
!1483 = !DILocation(line: 244, column: 33, scope: !880)
!1484 = !DILocation(line: 244, column: 76, scope: !880)
!1485 = !DILocation(line: 244, column: 81, scope: !880)
!1486 = !DILocation(line: 244, column: 84, scope: !880)
!1487 = !DILocation(line: 244, column: 31, scope: !880)
!1488 = !DILocation(line: 245, column: 25, scope: !881)
!1489 = !DILocation(line: 245, column: 25, scope: !880)
!1490 = !DILocation(line: 246, column: 46, scope: !891)
!1491 = !{!1460, !586, i64 20}
!1492 = !DILocation(line: 246, column: 33, scope: !891)
!1493 = !DILocation(line: 246, column: 31, scope: !891)
!1494 = !DILocation(line: 247, column: 33, scope: !890)
!1495 = !DILocation(line: 247, column: 37, scope: !890)
!1496 = !DILocation(line: 247, column: 44, scope: !890)
!1497 = !DILocation(line: 247, column: 47, scope: !889)
!1498 = !DILocation(line: 247, column: 47, scope: !894)
!1499 = !DILocation(line: 247, column: 47, scope: !895)
!1500 = !DILocation(line: 247, column: 47, scope: !893)
!1501 = !DILocation(line: 247, column: 47, scope: !896)
!1502 = !DILocation(line: 247, column: 47, scope: !890)
!1503 = !DILocation(line: 247, column: 61, scope: !898)
!1504 = !DILocation(line: 247, column: 61, scope: !901)
!1505 = !DILocation(line: 247, column: 61, scope: !902)
!1506 = !DILocation(line: 247, column: 61, scope: !900)
!1507 = !DILocation(line: 247, column: 61, scope: !903)
!1508 = !DILocation(line: 247, column: 61, scope: !890)
!1509 = !DILocation(line: 247, column: 58, scope: !890)
!1510 = !DILocation(line: 247, column: 33, scope: !891)
!1511 = !DILocation(line: 247, column: 78, scope: !890)
!1512 = !DILocation(line: 247, column: 76, scope: !890)
!1513 = !DILocation(line: 247, column: 74, scope: !890)
!1514 = !DILocation(line: 250, column: 17, scope: !884)
!1515 = !DILocation(line: 250, column: 28, scope: !885)
!1516 = !DILocation(line: 250, column: 31, scope: !885)
!1517 = !DILocation(line: 250, column: 44, scope: !885)
!1518 = !DILocation(line: 250, column: 26, scope: !885)
!1519 = !DILocation(line: 251, column: 13, scope: !886)
!1520 = !DILocation(line: 252, column: 17, scope: !905)
!1521 = !DILocation(line: 252, column: 21, scope: !905)
!1522 = !DILocation(line: 252, column: 45, scope: !905)
!1523 = !DILocation(line: 252, column: 27, scope: !905)
!1524 = !DILocation(line: 253, column: 21, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !905, file: !2, line: 253, column: 21)
!1526 = !DILocation(line: 253, column: 25, scope: !1525)
!1527 = !DILocation(line: 253, column: 21, scope: !905)
!1528 = !DILocation(line: 254, column: 21, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !2, line: 253, column: 30)
!1530 = !DILocation(line: 255, column: 21, scope: !1529)
!1531 = !DILocation(line: 258, column: 21, scope: !912)
!1532 = !DILocation(line: 258, column: 25, scope: !912)
!1533 = !DILocation(line: 258, column: 23, scope: !912)
!1534 = !DILocation(line: 258, column: 21, scope: !905)
!1535 = !DILocation(line: 258, column: 32, scope: !912)
!1536 = !DILocation(line: 258, column: 30, scope: !912)
!1537 = !DILocation(line: 260, column: 25, scope: !910)
!1538 = !DILocation(line: 260, column: 29, scope: !910)
!1539 = !DILocation(line: 260, column: 38, scope: !910)
!1540 = !DILocation(line: 260, column: 25, scope: !911)
!1541 = !DILocation(line: 261, column: 29, scope: !908)
!1542 = !DILocation(line: 261, column: 33, scope: !908)
!1543 = !DILocation(line: 261, column: 29, scope: !909)
!1544 = !DILocation(line: 262, column: 29, scope: !907)
!1545 = !DILocation(line: 262, column: 35, scope: !907)
!1546 = !DILocation(line: 262, column: 42, scope: !907)
!1547 = !DILocation(line: 263, column: 34, scope: !907)
!1548 = !DILocation(line: 263, column: 37, scope: !907)
!1549 = !DILocation(line: 263, column: 44, scope: !907)
!1550 = !DILocation(line: 263, column: 42, scope: !907)
!1551 = !DILocation(line: 263, column: 46, scope: !907)
!1552 = !DILocation(line: 263, column: 53, scope: !907)
!1553 = !DILocation(line: 263, column: 56, scope: !907)
!1554 = !DILocation(line: 263, column: 59, scope: !907)
!1555 = !DILocation(line: 263, column: 64, scope: !907)
!1556 = !DILocation(line: 263, column: 50, scope: !907)
!1557 = !DILocation(line: 263, column: 33, scope: !907)
!1558 = !DILocation(line: 263, column: 80, scope: !907)
!1559 = !DILocation(line: 263, column: 85, scope: !907)
!1560 = !DILocation(line: 263, column: 88, scope: !907)
!1561 = !DILocation(line: 263, column: 95, scope: !907)
!1562 = !DILocation(line: 263, column: 93, scope: !907)
!1563 = !DILocation(line: 263, column: 31, scope: !907)
!1564 = !DILocation(line: 264, column: 25, scope: !908)
!1565 = !DILocation(line: 264, column: 25, scope: !907)
!1566 = !DILocation(line: 265, column: 36, scope: !916)
!1567 = !{!1568, !564, i64 16}
!1568 = !{!"kstring_t", !587, i64 0, !587, i64 8, !564, i64 16}
!1569 = !DILocation(line: 265, column: 38, scope: !916)
!1570 = !DILocation(line: 265, column: 39, scope: !916)
!1571 = !DILocation(line: 265, column: 33, scope: !916)
!1572 = !DILocation(line: 265, column: 31, scope: !916)
!1573 = !DILocation(line: 266, column: 33, scope: !915)
!1574 = !DILocation(line: 266, column: 35, scope: !915)
!1575 = !DILocation(line: 266, column: 40, scope: !915)
!1576 = !DILocation(line: 266, column: 43, scope: !915)
!1577 = !DILocation(line: 266, column: 47, scope: !915)
!1578 = !DILocation(line: 266, column: 54, scope: !915)
!1579 = !DILocation(line: 266, column: 57, scope: !914)
!1580 = !DILocation(line: 266, column: 57, scope: !919)
!1581 = !DILocation(line: 266, column: 57, scope: !920)
!1582 = !DILocation(line: 266, column: 57, scope: !918)
!1583 = !DILocation(line: 266, column: 57, scope: !921)
!1584 = !DILocation(line: 266, column: 57, scope: !915)
!1585 = !DILocation(line: 266, column: 71, scope: !923)
!1586 = !DILocation(line: 266, column: 71, scope: !926)
!1587 = !DILocation(line: 266, column: 71, scope: !927)
!1588 = !DILocation(line: 266, column: 71, scope: !925)
!1589 = !DILocation(line: 266, column: 71, scope: !928)
!1590 = !DILocation(line: 266, column: 71, scope: !915)
!1591 = !DILocation(line: 266, column: 68, scope: !915)
!1592 = !DILocation(line: 266, column: 33, scope: !916)
!1593 = !DILocation(line: 266, column: 88, scope: !915)
!1594 = !DILocation(line: 266, column: 86, scope: !915)
!1595 = !DILocation(line: 266, column: 84, scope: !915)
!1596 = !DILocation(line: 268, column: 21, scope: !909)
!1597 = !DILocation(line: 269, column: 44, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !910, file: !2, line: 268, column: 28)
!1599 = !DILocation(line: 269, column: 47, scope: !1598)
!1600 = !DILocation(line: 269, column: 50, scope: !1598)
!1601 = !DILocation(line: 269, column: 53, scope: !1598)
!1602 = !DILocation(line: 269, column: 60, scope: !1598)
!1603 = !DILocation(line: 269, column: 58, scope: !1598)
!1604 = !DILocation(line: 269, column: 29, scope: !1598)
!1605 = !DILocation(line: 269, column: 27, scope: !1598)
!1606 = !DILocation(line: 270, column: 29, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 270, column: 29)
!1608 = !DILocation(line: 270, column: 33, scope: !1607)
!1609 = !DILocation(line: 270, column: 40, scope: !1607)
!1610 = !DILocation(line: 270, column: 65, scope: !1607)
!1611 = !DILocation(line: 270, column: 68, scope: !1607)
!1612 = !DILocation(line: 270, column: 71, scope: !1607)
!1613 = !DILocation(line: 270, column: 74, scope: !1607)
!1614 = !DILocation(line: 270, column: 81, scope: !1607)
!1615 = !DILocation(line: 270, column: 79, scope: !1607)
!1616 = !DILocation(line: 270, column: 50, scope: !1607)
!1617 = !DILocation(line: 270, column: 47, scope: !1607)
!1618 = !DILocation(line: 270, column: 29, scope: !1598)
!1619 = !DILocation(line: 270, column: 89, scope: !1607)
!1620 = !DILocation(line: 270, column: 87, scope: !1607)
!1621 = !DILocation(line: 270, column: 85, scope: !1607)
!1622 = !DILocation(line: 273, column: 13, scope: !887)
!1623 = !DILocation(line: 274, column: 17, scope: !931)
!1624 = !DILocation(line: 274, column: 21, scope: !931)
!1625 = !DILocation(line: 274, column: 37, scope: !931)
!1626 = !DILocation(line: 274, column: 40, scope: !931)
!1627 = !DILocation(line: 274, column: 46, scope: !931)
!1628 = !DILocation(line: 274, column: 50, scope: !931)
!1629 = !DILocation(line: 274, column: 44, scope: !931)
!1630 = !DILocation(line: 274, column: 17, scope: !872)
!1631 = !DILocation(line: 275, column: 17, scope: !930)
!1632 = !DILocation(line: 275, column: 21, scope: !930)
!1633 = !DILocation(line: 276, column: 22, scope: !930)
!1634 = !DILocation(line: 277, column: 23, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !930, file: !2, line: 277, column: 21)
!1636 = !DILocation(line: 277, column: 26, scope: !1635)
!1637 = !DILocation(line: 277, column: 29, scope: !1635)
!1638 = !DILocation(line: 277, column: 34, scope: !1635)
!1639 = !DILocation(line: 277, column: 38, scope: !1635)
!1640 = !DILocation(line: 277, column: 52, scope: !1635)
!1641 = !DILocation(line: 277, column: 57, scope: !1635)
!1642 = !DILocation(line: 277, column: 60, scope: !1635)
!1643 = !DILocation(line: 277, column: 63, scope: !1635)
!1644 = !DILocation(line: 277, column: 68, scope: !1635)
!1645 = !DILocation(line: 277, column: 72, scope: !1635)
!1646 = !DILocation(line: 278, column: 25, scope: !1635)
!1647 = !DILocation(line: 278, column: 29, scope: !1635)
!1648 = !DILocation(line: 278, column: 32, scope: !1635)
!1649 = !DILocation(line: 278, column: 35, scope: !1635)
!1650 = !DILocation(line: 278, column: 40, scope: !1635)
!1651 = !DILocation(line: 278, column: 45, scope: !1635)
!1652 = !DILocation(line: 277, column: 21, scope: !930)
!1653 = !DILocation(line: 278, column: 72, scope: !1635)
!1654 = !DILocation(line: 278, column: 76, scope: !1635)
!1655 = !DILocation(line: 278, column: 89, scope: !1635)
!1656 = !DILocation(line: 278, column: 69, scope: !1635)
!1657 = !DILocation(line: 278, column: 64, scope: !1635)
!1658 = !DILocation(line: 279, column: 21, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !930, file: !2, line: 279, column: 21)
!1660 = !DILocation(line: 279, column: 25, scope: !1659)
!1661 = !DILocation(line: 279, column: 35, scope: !1659)
!1662 = !DILocation(line: 279, column: 21, scope: !930)
!1663 = !DILocation(line: 280, column: 25, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 279, column: 54)
!1665 = !{!1460, !586, i64 24}
!1666 = !DILocation(line: 280, column: 44, scope: !1664)
!1667 = !DILocation(line: 280, column: 47, scope: !1664)
!1668 = !DILocation(line: 280, column: 52, scope: !1664)
!1669 = !DILocation(line: 280, column: 56, scope: !1664)
!1670 = !DILocation(line: 280, column: 23, scope: !1664)
!1671 = !DILocation(line: 281, column: 25, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 281, column: 25)
!1673 = !DILocation(line: 281, column: 27, scope: !1672)
!1674 = !DILocation(line: 281, column: 25, scope: !1664)
!1675 = !DILocation(line: 281, column: 34, scope: !1672)
!1676 = !DILocation(line: 281, column: 32, scope: !1672)
!1677 = !DILocation(line: 282, column: 29, scope: !1664)
!1678 = !DILocation(line: 282, column: 33, scope: !1664)
!1679 = !DILocation(line: 282, column: 46, scope: !1664)
!1680 = !DILocation(line: 282, column: 49, scope: !1664)
!1681 = !DILocation(line: 282, column: 26, scope: !1664)
!1682 = !DILocation(line: 283, column: 17, scope: !1664)
!1683 = !DILocation(line: 283, column: 28, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 283, column: 28)
!1685 = !DILocation(line: 283, column: 32, scope: !1684)
!1686 = !DILocation(line: 283, column: 42, scope: !1684)
!1687 = !DILocation(line: 283, column: 28, scope: !1659)
!1688 = !DILocation(line: 284, column: 25, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 283, column: 60)
!1690 = !DILocation(line: 284, column: 28, scope: !1689)
!1691 = !DILocation(line: 284, column: 31, scope: !1689)
!1692 = !DILocation(line: 284, column: 36, scope: !1689)
!1693 = !{!1460, !565, i64 14}
!1694 = !DILocation(line: 284, column: 40, scope: !1689)
!1695 = !DILocation(line: 284, column: 44, scope: !1689)
!1696 = !DILocation(line: 284, column: 23, scope: !1689)
!1697 = !DILocation(line: 285, column: 25, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 285, column: 25)
!1699 = !DILocation(line: 285, column: 27, scope: !1698)
!1700 = !DILocation(line: 285, column: 25, scope: !1689)
!1701 = !DILocation(line: 285, column: 34, scope: !1698)
!1702 = !DILocation(line: 285, column: 32, scope: !1698)
!1703 = !DILocation(line: 286, column: 29, scope: !1689)
!1704 = !DILocation(line: 286, column: 33, scope: !1689)
!1705 = !DILocation(line: 286, column: 46, scope: !1689)
!1706 = !DILocation(line: 286, column: 49, scope: !1689)
!1707 = !DILocation(line: 286, column: 26, scope: !1689)
!1708 = !DILocation(line: 287, column: 17, scope: !1689)
!1709 = !DILocation(line: 287, column: 28, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 287, column: 28)
!1711 = !DILocation(line: 287, column: 32, scope: !1710)
!1712 = !DILocation(line: 287, column: 42, scope: !1710)
!1713 = !DILocation(line: 287, column: 28, scope: !1684)
!1714 = !DILocation(line: 288, column: 38, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1710, file: !2, line: 287, column: 60)
!1716 = !DILocation(line: 288, column: 25, scope: !1715)
!1717 = !DILocation(line: 288, column: 76, scope: !1715)
!1718 = !DILocation(line: 288, column: 23, scope: !1715)
!1719 = !DILocation(line: 289, column: 29, scope: !1715)
!1720 = !DILocation(line: 289, column: 33, scope: !1715)
!1721 = !DILocation(line: 289, column: 46, scope: !1715)
!1722 = !DILocation(line: 289, column: 49, scope: !1715)
!1723 = !DILocation(line: 289, column: 26, scope: !1715)
!1724 = !DILocation(line: 290, column: 17, scope: !1715)
!1725 = !DILocation(line: 290, column: 27, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1710, file: !2, line: 290, column: 27)
!1727 = !DILocation(line: 290, column: 31, scope: !1726)
!1728 = !DILocation(line: 290, column: 41, scope: !1726)
!1729 = !DILocation(line: 290, column: 27, scope: !1710)
!1730 = !DILocation(line: 291, column: 23, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !2, line: 290, column: 58)
!1732 = !DILocation(line: 292, column: 43, scope: !1731)
!1733 = !DILocation(line: 292, column: 46, scope: !1731)
!1734 = !DILocation(line: 292, column: 49, scope: !1731)
!1735 = !DILocation(line: 292, column: 52, scope: !1731)
!1736 = !DILocation(line: 292, column: 28, scope: !1731)
!1737 = !DILocation(line: 292, column: 21, scope: !1731)
!1738 = !DILocation(line: 293, column: 37, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 292, column: 59)
!1740 = !DILocation(line: 293, column: 42, scope: !1739)
!1741 = !DILocation(line: 294, column: 37, scope: !1739)
!1742 = !DILocation(line: 294, column: 42, scope: !1739)
!1743 = !DILocation(line: 295, column: 37, scope: !1739)
!1744 = !DILocation(line: 295, column: 42, scope: !1739)
!1745 = !DILocation(line: 296, column: 37, scope: !1739)
!1746 = !DILocation(line: 296, column: 42, scope: !1739)
!1747 = !DILocation(line: 297, column: 37, scope: !1739)
!1748 = !DILocation(line: 297, column: 42, scope: !1739)
!1749 = !DILocation(line: 298, column: 51, scope: !1739)
!1750 = !DILocation(line: 298, column: 38, scope: !1739)
!1751 = !DILocation(line: 298, column: 36, scope: !1739)
!1752 = !DILocation(line: 298, column: 90, scope: !1739)
!1753 = !DILocation(line: 300, column: 22, scope: !1731)
!1754 = !DILocation(line: 301, column: 29, scope: !1731)
!1755 = !DILocation(line: 301, column: 33, scope: !1731)
!1756 = !DILocation(line: 301, column: 46, scope: !1731)
!1757 = !DILocation(line: 301, column: 49, scope: !1731)
!1758 = !DILocation(line: 301, column: 26, scope: !1731)
!1759 = !DILocation(line: 302, column: 17, scope: !1731)
!1760 = !DILocation(line: 302, column: 27, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1726, file: !2, line: 302, column: 27)
!1762 = !DILocation(line: 302, column: 31, scope: !1761)
!1763 = !DILocation(line: 302, column: 41, scope: !1761)
!1764 = !DILocation(line: 302, column: 27, scope: !1726)
!1765 = !DILocation(line: 303, column: 40, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 302, column: 59)
!1767 = !DILocation(line: 303, column: 43, scope: !1766)
!1768 = !DILocation(line: 303, column: 46, scope: !1766)
!1769 = !DILocation(line: 303, column: 49, scope: !1766)
!1770 = !DILocation(line: 303, column: 25, scope: !1766)
!1771 = !DILocation(line: 303, column: 23, scope: !1766)
!1772 = !DILocation(line: 304, column: 29, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 304, column: 24)
!1774 = !DILocation(line: 304, column: 26, scope: !1773)
!1775 = !DILocation(line: 304, column: 24, scope: !1766)
!1776 = !DILocation(line: 304, column: 36, scope: !1773)
!1777 = !DILocation(line: 304, column: 55, scope: !1773)
!1778 = !DILocation(line: 304, column: 58, scope: !1773)
!1779 = !DILocation(line: 304, column: 34, scope: !1773)
!1780 = !DILocation(line: 304, column: 32, scope: !1773)
!1781 = !DILocation(line: 305, column: 25, scope: !1766)
!1782 = !DILocation(line: 305, column: 26, scope: !1766)
!1783 = !DILocation(line: 305, column: 30, scope: !1766)
!1784 = !DILocation(line: 305, column: 23, scope: !1766)
!1785 = !DILocation(line: 306, column: 25, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 306, column: 25)
!1787 = !DILocation(line: 306, column: 27, scope: !1786)
!1788 = !DILocation(line: 306, column: 25, scope: !1766)
!1789 = !DILocation(line: 306, column: 34, scope: !1786)
!1790 = !DILocation(line: 306, column: 32, scope: !1786)
!1791 = !DILocation(line: 307, column: 29, scope: !1766)
!1792 = !DILocation(line: 307, column: 33, scope: !1766)
!1793 = !DILocation(line: 307, column: 46, scope: !1766)
!1794 = !DILocation(line: 307, column: 49, scope: !1766)
!1795 = !DILocation(line: 307, column: 26, scope: !1766)
!1796 = !DILocation(line: 308, column: 17, scope: !1766)
!1797 = !DILocation(line: 309, column: 17, scope: !930)
!1798 = !DILocation(line: 309, column: 21, scope: !930)
!1799 = !DILocation(line: 309, column: 31, scope: !930)
!1800 = !DILocation(line: 309, column: 34, scope: !930)
!1801 = !DILocation(line: 310, column: 17, scope: !930)
!1802 = !DILocation(line: 310, column: 21, scope: !930)
!1803 = !DILocation(line: 310, column: 32, scope: !930)
!1804 = !DILocation(line: 310, column: 35, scope: !930)
!1805 = !DILocation(line: 310, column: 40, scope: !930)
!1806 = !DILocation(line: 310, column: 44, scope: !930)
!1807 = !DILocation(line: 310, column: 50, scope: !930)
!1808 = !DILocation(line: 310, column: 68, scope: !933)
!1809 = !DILocation(line: 310, column: 68, scope: !936)
!1810 = !DILocation(line: 310, column: 68, scope: !937)
!1811 = !DILocation(line: 310, column: 68, scope: !935)
!1812 = !DILocation(line: 310, column: 68, scope: !938)
!1813 = !DILocation(line: 310, column: 68, scope: !930)
!1814 = !DILocation(line: 310, column: 81, scope: !940)
!1815 = !DILocation(line: 310, column: 81, scope: !943)
!1816 = !DILocation(line: 310, column: 81, scope: !944)
!1817 = !DILocation(line: 310, column: 81, scope: !942)
!1818 = !DILocation(line: 310, column: 81, scope: !945)
!1819 = !DILocation(line: 310, column: 81, scope: !930)
!1820 = !DILocation(line: 311, column: 17, scope: !930)
!1821 = !DILocation(line: 311, column: 21, scope: !930)
!1822 = !DILocation(line: 311, column: 32, scope: !930)
!1823 = !DILocation(line: 311, column: 35, scope: !930)
!1824 = !DILocation(line: 312, column: 13, scope: !931)
!1825 = !DILocation(line: 312, column: 13, scope: !930)
!1826 = !DILocation(line: 313, column: 9, scope: !873)
!1827 = !DILocation(line: 313, column: 9, scope: !872)
!1828 = !DILocation(line: 232, column: 28, scope: !873)
!1829 = !DILocation(line: 232, column: 9, scope: !873)
!1830 = distinct !{!1830, !1409, !1831, !1065}
!1831 = !DILocation(line: 313, column: 9, scope: !874)
!1832 = !DILocation(line: 314, column: 13, scope: !875)
!1833 = !DILocation(line: 314, column: 22, scope: !875)
!1834 = !DILocation(line: 314, column: 11, scope: !875)
!1835 = !DILocation(line: 315, column: 13, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !875, file: !2, line: 315, column: 13)
!1837 = !DILocation(line: 315, column: 15, scope: !1836)
!1838 = !DILocation(line: 315, column: 13, scope: !875)
!1839 = !DILocation(line: 316, column: 20, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !2, line: 315, column: 23)
!1841 = !DILocation(line: 316, column: 24, scope: !1840)
!1842 = !DILocation(line: 316, column: 37, scope: !1840)
!1843 = !DILocation(line: 316, column: 18, scope: !1840)
!1844 = !DILocation(line: 317, column: 13, scope: !1840)
!1845 = !DILocation(line: 317, column: 17, scope: !1840)
!1846 = !DILocation(line: 317, column: 27, scope: !1840)
!1847 = !DILocation(line: 317, column: 30, scope: !1840)
!1848 = !DILocation(line: 318, column: 13, scope: !1840)
!1849 = !DILocation(line: 318, column: 17, scope: !1840)
!1850 = !DILocation(line: 318, column: 28, scope: !1840)
!1851 = !DILocation(line: 318, column: 34, scope: !1840)
!1852 = !DILocation(line: 318, column: 38, scope: !1840)
!1853 = !DILocation(line: 318, column: 42, scope: !1840)
!1854 = !DILocation(line: 318, column: 46, scope: !1840)
!1855 = !DILocation(line: 319, column: 13, scope: !1840)
!1856 = !DILocation(line: 319, column: 17, scope: !1840)
!1857 = !DILocation(line: 319, column: 28, scope: !1840)
!1858 = !DILocation(line: 319, column: 31, scope: !1840)
!1859 = !DILocation(line: 320, column: 9, scope: !1840)
!1860 = !DILocation(line: 320, column: 16, scope: !1836)
!1861 = !DILocation(line: 320, column: 20, scope: !1836)
!1862 = !DILocation(line: 320, column: 31, scope: !1836)
!1863 = !DILocation(line: 320, column: 37, scope: !1836)
!1864 = !DILocation(line: 320, column: 41, scope: !1836)
!1865 = !DILocation(line: 320, column: 45, scope: !1836)
!1866 = !DILocation(line: 320, column: 49, scope: !1836)
!1867 = !DILocation(line: 321, column: 5, scope: !875)
!1868 = !DILocation(line: 231, column: 31, scope: !876)
!1869 = !DILocation(line: 231, column: 5, scope: !876)
!1870 = distinct !{!1870, !1403, !1871, !1065}
!1871 = !DILocation(line: 321, column: 5, scope: !877)
!1872 = !DILocation(line: 322, column: 20, scope: !800)
!1873 = !DILocation(line: 322, column: 5, scope: !800)
!1874 = !DILocation(line: 322, column: 9, scope: !800)
!1875 = !DILocation(line: 322, column: 18, scope: !800)
!1876 = !DILocation(line: 323, column: 5, scope: !800)
!1877 = !DILocation(line: 324, column: 5, scope: !800)
!1878 = !DILocation(line: 325, column: 1, scope: !800)
!1879 = !DISubprogram(name: "fai_load", scope: !319, file: !319, line: 139, type: !1880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!317, !310}
!1882 = !DISubprogram(name: "bcf_call_init", scope: !324, file: !324, line: 51, type: !1883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!322, !477, !98}
!1885 = distinct !DISubprogram(name: "get_rg_sample", scope: !2, file: !2, line: 56, type: !1886, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!355, !183, !310}
!1888 = !{!1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1900, !1901}
!1889 = !DILocalVariable(name: "header", arg: 1, scope: !1885, file: !2, line: 56, type: !183)
!1890 = !DILocalVariable(name: "sample", arg: 2, scope: !1885, file: !2, line: 56, type: !310)
!1891 = !DILocalVariable(name: "n_rg", scope: !1885, file: !2, line: 58, type: !98)
!1892 = !DILocalVariable(name: "i", scope: !1885, file: !2, line: 58, type: !98)
!1893 = !DILocalVariable(name: "id_val", scope: !1885, file: !2, line: 59, type: !234)
!1894 = !DILocalVariable(name: "sm_val", scope: !1885, file: !2, line: 59, type: !234)
!1895 = !DILocalVariable(name: "rg_hash", scope: !1885, file: !2, line: 60, type: !355)
!1896 = !DILocalVariable(name: "r", scope: !1897, file: !2, line: 72, type: !98)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 70, column: 32)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 70, column: 5)
!1899 = distinct !DILexicalBlock(scope: !1885, file: !2, line: 70, column: 5)
!1900 = !DILabel(scope: !1885, name: "memfail", file: !2, line: 94)
!1901 = !DILabel(scope: !1885, name: "fail", file: !2, line: 96)
!1902 = !DILocation(line: 56, column: 42, scope: !1885)
!1903 = !DILocation(line: 56, column: 62, scope: !1885)
!1904 = !DILocation(line: 58, column: 5, scope: !1885)
!1905 = !DILocation(line: 58, column: 9, scope: !1885)
!1906 = !DILocation(line: 58, column: 15, scope: !1885)
!1907 = !DILocation(line: 59, column: 5, scope: !1885)
!1908 = !DILocation(line: 59, column: 15, scope: !1885)
!1909 = !DILocation(line: 59, column: 39, scope: !1885)
!1910 = !DILocation(line: 60, column: 5, scope: !1885)
!1911 = !DILocation(line: 60, column: 21, scope: !1885)
!1912 = !DILocation(line: 60, column: 31, scope: !1885)
!1913 = !DILocation(line: 61, column: 10, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1885, file: !2, line: 61, column: 9)
!1915 = !DILocation(line: 61, column: 9, scope: !1885)
!1916 = !DILocation(line: 61, column: 19, scope: !1914)
!1917 = !DILocation(line: 64, column: 32, scope: !1885)
!1918 = !DILocation(line: 64, column: 12, scope: !1885)
!1919 = !DILocation(line: 64, column: 10, scope: !1885)
!1920 = !DILocation(line: 65, column: 9, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1885, file: !2, line: 65, column: 9)
!1922 = !DILocation(line: 65, column: 14, scope: !1921)
!1923 = !DILocation(line: 65, column: 9, scope: !1885)
!1924 = !DILocation(line: 66, column: 9, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1921, file: !2, line: 65, column: 19)
!1926 = !DILocation(line: 67, column: 9, scope: !1925)
!1927 = !DILocation(line: 70, column: 12, scope: !1899)
!1928 = !DILocation(line: 70, column: 10, scope: !1899)
!1929 = !DILocation(line: 70, column: 17, scope: !1898)
!1930 = !DILocation(line: 70, column: 21, scope: !1898)
!1931 = !DILocation(line: 70, column: 19, scope: !1898)
!1932 = !DILocation(line: 70, column: 5, scope: !1899)
!1933 = !DILocation(line: 72, column: 9, scope: !1897)
!1934 = !DILocation(line: 72, column: 13, scope: !1897)
!1935 = !DILocation(line: 72, column: 38, scope: !1897)
!1936 = !DILocation(line: 72, column: 52, scope: !1897)
!1937 = !DILocation(line: 72, column: 17, scope: !1897)
!1938 = !DILocation(line: 73, column: 13, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 73, column: 13)
!1940 = !DILocation(line: 73, column: 15, scope: !1939)
!1941 = !DILocation(line: 73, column: 13, scope: !1897)
!1942 = !DILocation(line: 73, column: 21, scope: !1939)
!1943 = !DILocation(line: 74, column: 13, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 74, column: 13)
!1945 = !DILocation(line: 74, column: 15, scope: !1944)
!1946 = !DILocation(line: 74, column: 13, scope: !1897)
!1947 = !DILocation(line: 74, column: 22, scope: !1944)
!1948 = !DILocation(line: 76, column: 20, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 76, column: 13)
!1950 = !DILocation(line: 76, column: 35, scope: !1949)
!1951 = !DILocation(line: 76, column: 13, scope: !1949)
!1952 = !DILocation(line: 76, column: 38, scope: !1949)
!1953 = !DILocation(line: 76, column: 13, scope: !1897)
!1954 = !DILocation(line: 78, column: 38, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 76, column: 44)
!1956 = !DILocation(line: 78, column: 52, scope: !1955)
!1957 = !DILocation(line: 78, column: 17, scope: !1955)
!1958 = !DILocation(line: 78, column: 15, scope: !1955)
!1959 = !DILocation(line: 79, column: 17, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1955, file: !2, line: 79, column: 17)
!1961 = !DILocation(line: 79, column: 19, scope: !1960)
!1962 = !DILocation(line: 79, column: 17, scope: !1955)
!1963 = !DILocation(line: 79, column: 25, scope: !1960)
!1964 = !DILocation(line: 80, column: 17, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1955, file: !2, line: 80, column: 17)
!1966 = !DILocation(line: 80, column: 19, scope: !1965)
!1967 = !DILocation(line: 80, column: 23, scope: !1965)
!1968 = !DILocation(line: 80, column: 33, scope: !1965)
!1969 = !DILocation(line: 80, column: 48, scope: !1965)
!1970 = !DILocation(line: 80, column: 26, scope: !1965)
!1971 = !DILocation(line: 80, column: 51, scope: !1965)
!1972 = !DILocation(line: 80, column: 17, scope: !1955)
!1973 = !DILocation(line: 81, column: 17, scope: !1965)
!1974 = !DILocation(line: 82, column: 9, scope: !1955)
!1975 = !DILocation(line: 85, column: 9, scope: !1897)
!1976 = !DILocation(line: 86, column: 13, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 86, column: 13)
!1978 = !DILocation(line: 86, column: 15, scope: !1977)
!1979 = !DILocation(line: 86, column: 13, scope: !1897)
!1980 = !DILocation(line: 86, column: 20, scope: !1977)
!1981 = !DILocation(line: 87, column: 9, scope: !1897)
!1982 = !DILocation(line: 88, column: 5, scope: !1898)
!1983 = !DILocation(line: 88, column: 5, scope: !1897)
!1984 = !DILocation(line: 70, column: 28, scope: !1898)
!1985 = !DILocation(line: 70, column: 5, scope: !1898)
!1986 = distinct !{!1986, !1932, !1987, !1065}
!1987 = !DILocation(line: 88, column: 5, scope: !1899)
!1988 = !DILocation(line: 90, column: 5, scope: !1885)
!1989 = !DILocation(line: 91, column: 5, scope: !1885)
!1990 = !DILocation(line: 92, column: 12, scope: !1885)
!1991 = !DILocation(line: 92, column: 5, scope: !1885)
!1992 = !DILocation(line: 94, column: 2, scope: !1885)
!1993 = !DILocation(line: 95, column: 5, scope: !1885)
!1994 = !DILocation(line: 96, column: 2, scope: !1885)
!1995 = !DILocation(line: 97, column: 5, scope: !1885)
!1996 = !DILocation(line: 98, column: 5, scope: !1885)
!1997 = !DILocation(line: 99, column: 21, scope: !1885)
!1998 = !DILocation(line: 99, column: 5, scope: !1885)
!1999 = !DILocation(line: 100, column: 5, scope: !1885)
!2000 = !DILocation(line: 101, column: 1, scope: !1885)
!2001 = distinct !DISubprogram(name: "base_tv_destroy", scope: !2, file: !2, line: 160, type: !2002, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !166}
!2004 = !{!2005}
!2005 = !DILocalVariable(name: "tv", arg: 1, scope: !2001, file: !2, line: 160, type: !166)
!2006 = !DILocation(line: 160, column: 31, scope: !2001)
!2007 = !DILocation(line: 162, column: 24, scope: !2001)
!2008 = !DILocation(line: 162, column: 28, scope: !2001)
!2009 = !DILocation(line: 162, column: 5, scope: !2001)
!2010 = !DILocation(line: 163, column: 22, scope: !2001)
!2011 = !DILocation(line: 163, column: 26, scope: !2001)
!2012 = !DILocation(line: 163, column: 5, scope: !2001)
!2013 = !DILocation(line: 164, column: 21, scope: !2001)
!2014 = !DILocation(line: 164, column: 25, scope: !2001)
!2015 = !DILocation(line: 164, column: 5, scope: !2001)
!2016 = !DILocation(line: 165, column: 9, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2001, file: !2, line: 165, column: 9)
!2018 = !DILocation(line: 165, column: 13, scope: !2017)
!2019 = !DILocation(line: 165, column: 9, scope: !2001)
!2020 = !DILocation(line: 165, column: 30, scope: !2017)
!2021 = !DILocation(line: 165, column: 34, scope: !2017)
!2022 = !DILocation(line: 165, column: 18, scope: !2017)
!2023 = !DILocation(line: 166, column: 10, scope: !2001)
!2024 = !DILocation(line: 166, column: 14, scope: !2001)
!2025 = !DILocation(line: 166, column: 5, scope: !2001)
!2026 = !DILocation(line: 167, column: 21, scope: !2001)
!2027 = !DILocation(line: 167, column: 25, scope: !2001)
!2028 = !DILocation(line: 167, column: 5, scope: !2001)
!2029 = !DILocation(line: 168, column: 21, scope: !2001)
!2030 = !DILocation(line: 168, column: 25, scope: !2001)
!2031 = !DILocation(line: 168, column: 5, scope: !2001)
!2032 = !DILocation(line: 169, column: 5, scope: !2001)
!2033 = !DILocation(line: 170, column: 1, scope: !2001)
!2034 = !DISubprogram(name: "bam_lplbuf_destroy", scope: !180, file: !180, line: 49, type: !2035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !178}
!2037 = !DISubprogram(name: "bcf_call_destroy", scope: !324, file: !324, line: 52, type: !2038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null, !322}
!2040 = !DISubprogram(name: "hts_idx_destroy", scope: !104, file: !104, line: 912, type: !2041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !174}
!2043 = !DISubprogram(name: "fai_destroy", scope: !319, file: !319, line: 105, type: !2044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !317}
!2046 = !DISubprogram(name: "free", scope: !727, file: !727, line: 555, type: !2047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{null, !165}
!2049 = !DISubprogram(name: "sam_hdr_destroy", scope: !185, file: !185, line: 385, type: !2050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !183}
!2052 = distinct !DISubprogram(name: "destroy_rg_hash", scope: !2, file: !2, line: 41, type: !2053, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2055)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !355}
!2055 = !{!2056, !2057}
!2056 = !DILocalVariable(name: "rg_hash", arg: 1, scope: !2052, file: !2, line: 41, type: !355)
!2057 = !DILocalVariable(name: "k", scope: !2052, file: !2, line: 43, type: !2058)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "khiter_t", file: !361, line: 167, baseType: !360)
!2059 = !DILocation(line: 41, column: 45, scope: !2052)
!2060 = !DILocation(line: 43, column: 5, scope: !2052)
!2061 = !DILocation(line: 43, column: 14, scope: !2052)
!2062 = !DILocation(line: 45, column: 10, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2052, file: !2, line: 45, column: 9)
!2064 = !DILocation(line: 45, column: 9, scope: !2052)
!2065 = !DILocation(line: 46, column: 9, scope: !2063)
!2066 = !DILocation(line: 48, column: 12, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2052, file: !2, line: 48, column: 5)
!2068 = !DILocation(line: 48, column: 10, scope: !2067)
!2069 = !DILocation(line: 48, column: 17, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2067, file: !2, line: 48, column: 5)
!2071 = !DILocation(line: 48, column: 21, scope: !2070)
!2072 = !{!705, !586, i64 0}
!2073 = !DILocation(line: 48, column: 19, scope: !2070)
!2074 = !DILocation(line: 48, column: 5, scope: !2067)
!2075 = !DILocation(line: 49, column: 13, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !2, line: 49, column: 13)
!2077 = distinct !DILexicalBlock(scope: !2070, file: !2, line: 48, column: 43)
!2078 = !{!705, !564, i64 16}
!2079 = !DILocation(line: 49, column: 13, scope: !2077)
!2080 = !DILocation(line: 50, column: 27, scope: !2076)
!2081 = !{!705, !564, i64 24}
!2082 = !DILocation(line: 50, column: 13, scope: !2076)
!2083 = !DILocation(line: 51, column: 5, scope: !2077)
!2084 = !DILocation(line: 48, column: 39, scope: !2070)
!2085 = !DILocation(line: 48, column: 5, scope: !2070)
!2086 = distinct !{!2086, !2074, !2087, !1065}
!2087 = !DILocation(line: 51, column: 5, scope: !2067)
!2088 = !DILocation(line: 52, column: 5, scope: !2052)
!2089 = !DILocation(line: 53, column: 1, scope: !2052)
!2090 = !DISubprogram(name: "hts_close", scope: !104, file: !104, line: 646, type: !2091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!98, !721}
!2093 = !DISubprogram(name: "bcf_call_glfgen", scope: !324, file: !324, line: 53, type: !2094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!98, !98, !747, !98, !322, !2096}
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!2097 = !DISubprogram(name: "__ctype_toupper_loc", scope: !2098, file: !2098, line: 83, type: !2099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2098 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!2101}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!2104 = distinct !DISubprogram(name: "toupper", scope: !2098, file: !2098, line: 213, type: !2105, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!98, !98}
!2107 = !{!2108}
!2108 = !DILocalVariable(name: "__c", arg: 1, scope: !2104, file: !2098, line: 213, type: !98)
!2109 = !DILocation(line: 213, column: 1, scope: !2104)
!2110 = !DILocation(line: 215, column: 10, scope: !2104)
!2111 = !DILocation(line: 215, column: 14, scope: !2104)
!2112 = !DILocation(line: 215, column: 22, scope: !2104)
!2113 = !DILocation(line: 215, column: 25, scope: !2104)
!2114 = !DILocation(line: 215, column: 29, scope: !2104)
!2115 = !DILocation(line: 215, column: 39, scope: !2104)
!2116 = !DILocation(line: 215, column: 38, scope: !2104)
!2117 = !DILocation(line: 215, column: 63, scope: !2104)
!2118 = !DILocation(line: 215, column: 37, scope: !2104)
!2119 = !DILocation(line: 215, column: 70, scope: !2104)
!2120 = !DILocation(line: 215, column: 3, scope: !2104)
!2121 = !DISubprogram(name: "bam_plp_insertion", scope: !185, file: !185, line: 1993, type: !2122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!98, !747, !2124, !542}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!2125 = !DISubprogram(name: "bam_aux_getCSi", scope: !168, file: !168, line: 76, type: !2126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!4, !753, !98}
!2128 = !DISubprogram(name: "bam_aux_getCEi", scope: !168, file: !168, line: 75, type: !2126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2129 = !DISubprogram(name: "bam_aux_getCQi", scope: !168, file: !168, line: 77, type: !2126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2130 = !DISubprogram(name: "__ctype_tolower_loc", scope: !2098, file: !2098, line: 81, type: !2099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2131 = distinct !DISubprogram(name: "tolower", scope: !2098, file: !2098, line: 207, type: !2105, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2132)
!2132 = !{!2133}
!2133 = !DILocalVariable(name: "__c", arg: 1, scope: !2131, file: !2098, line: 207, type: !98)
!2134 = !DILocation(line: 207, column: 1, scope: !2131)
!2135 = !DILocation(line: 209, column: 10, scope: !2131)
!2136 = !DILocation(line: 209, column: 14, scope: !2131)
!2137 = !DILocation(line: 209, column: 22, scope: !2131)
!2138 = !DILocation(line: 209, column: 25, scope: !2131)
!2139 = !DILocation(line: 209, column: 29, scope: !2131)
!2140 = !DILocation(line: 209, column: 39, scope: !2131)
!2141 = !DILocation(line: 209, column: 38, scope: !2131)
!2142 = !DILocation(line: 209, column: 63, scope: !2131)
!2143 = !DILocation(line: 209, column: 37, scope: !2131)
!2144 = !DILocation(line: 209, column: 70, scope: !2131)
!2145 = !DILocation(line: 209, column: 3, scope: !2131)
!2146 = distinct !DISubprogram(name: "ks_free", scope: !235, file: !235, line: 226, type: !2147, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !2124}
!2149 = !{!2150}
!2150 = !DILocalVariable(name: "s", arg: 1, scope: !2146, file: !235, line: 226, type: !2124)
!2151 = !DILocation(line: 226, column: 39, scope: !2146)
!2152 = !DILocation(line: 228, column: 9, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2146, file: !235, line: 228, column: 9)
!2154 = !DILocation(line: 228, column: 9, scope: !2146)
!2155 = !DILocation(line: 229, column: 14, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2153, file: !235, line: 228, column: 12)
!2157 = !DILocation(line: 229, column: 17, scope: !2156)
!2158 = !DILocation(line: 229, column: 9, scope: !2156)
!2159 = !DILocation(line: 230, column: 23, scope: !2156)
!2160 = !DILocation(line: 230, column: 9, scope: !2156)
!2161 = !DILocation(line: 231, column: 5, scope: !2156)
!2162 = !DILocation(line: 232, column: 1, scope: !2146)
!2163 = distinct !DISubprogram(name: "base_draw_aln", scope: !2, file: !2, line: 352, type: !2164, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!98, !166, !98, !340}
!2166 = !{!2167, !2168, !2169, !2170, !2171, !2174, !2175, !2246, !2247, !2249}
!2167 = !DILocalVariable(name: "tv", arg: 1, scope: !2163, file: !2, line: 352, type: !166)
!2168 = !DILocalVariable(name: "tid", arg: 2, scope: !2163, file: !2, line: 352, type: !98)
!2169 = !DILocalVariable(name: "pos", arg: 3, scope: !2163, file: !2, line: 352, type: !340)
!2170 = !DILocalVariable(name: "ret", scope: !2163, file: !2, line: 354, type: !98)
!2171 = !DILocalVariable(name: "str", scope: !2172, file: !2, line: 363, type: !100)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !2, line: 362, column: 18)
!2173 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 362, column: 9)
!2174 = !DILocalVariable(name: "ref_name", scope: !2172, file: !2, line: 367, type: !310)
!2175 = !DILocalVariable(name: "iter", scope: !2163, file: !2, line: 381, type: !2176)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_itr_t", file: !104, line: 882, baseType: !2178)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hts_itr_t", file: !104, line: 866, size: 1152, elements: !2179)
!2179 = !{!2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2224, !2230, !2235, !2240}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "read_rest", scope: !2178, file: !104, line: 867, baseType: !200, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "finished", scope: !2178, file: !104, line: 867, baseType: !200, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "is_cram", scope: !2178, file: !104, line: 867, baseType: !200, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "nocoor", scope: !2178, file: !104, line: 867, baseType: !200, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !2178, file: !104, line: 867, baseType: !200, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !2178, file: !104, line: 867, baseType: !200, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !2178, file: !104, line: 868, baseType: !98, size: 32, offset: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "n_off", scope: !2178, file: !104, line: 868, baseType: !98, size: 32, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !2178, file: !104, line: 868, baseType: !98, size: 32, offset: 96)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "n_reg", scope: !2178, file: !104, line: 868, baseType: !98, size: 32, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "beg", scope: !2178, file: !104, line: 869, baseType: !340, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2178, file: !104, line: 869, baseType: !340, size: 64, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "reg_list", scope: !2178, file: !104, line: 870, baseType: !2193, size: 64, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_reglist_t", file: !104, line: 821, baseType: !2195)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hts_reglist_t", file: !104, line: 815, size: 320, elements: !2196)
!2196 = !{!2197, !2198, !2205, !2206, !2207, !2208}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2195, file: !104, line: 816, baseType: !310, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "intervals", scope: !2195, file: !104, line: 817, baseType: !2199, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_pair_pos_t", file: !104, line: 802, baseType: !2201)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hts_pair_pos_t", file: !104, line: 800, size: 128, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "beg", scope: !2201, file: !104, line: 801, baseType: !340, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2201, file: !104, line: 801, baseType: !340, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !2195, file: !104, line: 818, baseType: !98, size: 32, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2195, file: !104, line: 819, baseType: !200, size: 32, offset: 160)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "min_beg", scope: !2195, file: !104, line: 820, baseType: !340, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "max_end", scope: !2195, file: !104, line: 820, baseType: !340, size: 64, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "curr_tid", scope: !2178, file: !104, line: 871, baseType: !98, size: 32, offset: 384)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "curr_reg", scope: !2178, file: !104, line: 871, baseType: !98, size: 32, offset: 416)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "curr_intv", scope: !2178, file: !104, line: 871, baseType: !98, size: 32, offset: 448)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "curr_beg", scope: !2178, file: !104, line: 872, baseType: !340, size: 64, offset: 512)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "curr_end", scope: !2178, file: !104, line: 872, baseType: !340, size: 64, offset: 576)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "curr_off", scope: !2178, file: !104, line: 873, baseType: !777, size: 64, offset: 640)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "nocoor_off", scope: !2178, file: !104, line: 873, baseType: !777, size: 64, offset: 704)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !2178, file: !104, line: 874, baseType: !2217, size: 64, offset: 768)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_pair64_max_t", file: !104, line: 813, baseType: !2219)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hts_pair64_max_t", file: !104, line: 810, size: 192, elements: !2220)
!2220 = !{!2221, !2222, !2223}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !2219, file: !104, line: 811, baseType: !777, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !2219, file: !104, line: 811, baseType: !777, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2219, file: !104, line: 812, baseType: !777, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "readrec", scope: !2178, file: !104, line: 875, baseType: !2225, size: 64, offset: 832)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_readrec_func", file: !104, line: 823, baseType: !2227)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!98, !247, !165, !165, !542, !2229, !2229}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !2178, file: !104, line: 876, baseType: !2231, size: 64, offset: 896)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_seek_func", file: !104, line: 824, baseType: !2233)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!98, !165, !230, !98}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !2178, file: !104, line: 877, baseType: !2236, size: 64, offset: 960)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_tell_func", file: !104, line: 825, baseType: !2238)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!230, !165}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "bins", scope: !2178, file: !104, line: 881, baseType: !2241, size: 128, offset: 1024)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !104, line: 878, size: 128, elements: !2242)
!2242 = !{!2243, !2244, !2245}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2241, file: !104, line: 879, baseType: !98, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2241, file: !104, line: 879, baseType: !98, size: 32, offset: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2241, file: !104, line: 880, baseType: !542, size: 64, offset: 64)
!2246 = !DILocalVariable(name: "b", scope: !2163, file: !2, line: 382, type: !753)
!2247 = !DILocalVariable(name: "pos", scope: !2248, file: !2, line: 394, type: !340)
!2248 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 393, column: 33)
!2249 = !DILocalVariable(name: "interval", scope: !2248, file: !2, line: 395, type: !98)
!2250 = !DILocation(line: 352, column: 28, scope: !2163)
!2251 = !DILocation(line: 352, column: 36, scope: !2163)
!2252 = !DILocation(line: 352, column: 51, scope: !2163)
!2253 = !DILocation(line: 354, column: 5, scope: !2163)
!2254 = !DILocation(line: 354, column: 9, scope: !2163)
!2255 = !DILocation(line: 355, column: 5, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !2, line: 355, column: 5)
!2257 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 355, column: 5)
!2258 = !DILocation(line: 355, column: 5, scope: !2257)
!2259 = !DILocation(line: 357, column: 5, scope: !2163)
!2260 = !DILocation(line: 357, column: 9, scope: !2163)
!2261 = !{!585, !564, i64 176}
!2262 = !DILocation(line: 357, column: 18, scope: !2163)
!2263 = !DILocation(line: 358, column: 20, scope: !2163)
!2264 = !DILocation(line: 358, column: 5, scope: !2163)
!2265 = !DILocation(line: 358, column: 9, scope: !2163)
!2266 = !DILocation(line: 358, column: 18, scope: !2163)
!2267 = !{!585, !586, i64 80}
!2268 = !DILocation(line: 358, column: 40, scope: !2163)
!2269 = !DILocation(line: 358, column: 25, scope: !2163)
!2270 = !DILocation(line: 358, column: 29, scope: !2163)
!2271 = !DILocation(line: 358, column: 38, scope: !2163)
!2272 = !DILocation(line: 359, column: 20, scope: !2163)
!2273 = !DILocation(line: 359, column: 24, scope: !2163)
!2274 = !DILocation(line: 359, column: 33, scope: !2163)
!2275 = !DILocation(line: 359, column: 5, scope: !2163)
!2276 = !DILocation(line: 359, column: 9, scope: !2163)
!2277 = !DILocation(line: 359, column: 18, scope: !2163)
!2278 = !DILocation(line: 360, column: 5, scope: !2163)
!2279 = !DILocation(line: 360, column: 9, scope: !2163)
!2280 = !DILocation(line: 360, column: 14, scope: !2163)
!2281 = !DILocation(line: 362, column: 9, scope: !2173)
!2282 = !DILocation(line: 362, column: 13, scope: !2173)
!2283 = !DILocation(line: 362, column: 9, scope: !2163)
!2284 = !DILocation(line: 363, column: 9, scope: !2172)
!2285 = !DILocation(line: 363, column: 15, scope: !2172)
!2286 = !DILocation(line: 364, column: 13, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 364, column: 13)
!2288 = !DILocation(line: 364, column: 17, scope: !2287)
!2289 = !DILocation(line: 364, column: 13, scope: !2172)
!2290 = !DILocation(line: 364, column: 27, scope: !2287)
!2291 = !DILocation(line: 364, column: 31, scope: !2287)
!2292 = !DILocation(line: 364, column: 22, scope: !2287)
!2293 = !DILocation(line: 365, column: 9, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !2, line: 365, column: 9)
!2295 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 365, column: 9)
!2296 = !DILocation(line: 365, column: 9, scope: !2295)
!2297 = !DILocation(line: 367, column: 9, scope: !2172)
!2298 = !DILocation(line: 367, column: 21, scope: !2172)
!2299 = !DILocation(line: 367, column: 49, scope: !2172)
!2300 = !DILocation(line: 367, column: 53, scope: !2172)
!2301 = !DILocation(line: 367, column: 61, scope: !2172)
!2302 = !DILocation(line: 367, column: 65, scope: !2172)
!2303 = !DILocation(line: 367, column: 32, scope: !2172)
!2304 = !DILocation(line: 368, column: 36, scope: !2172)
!2305 = !DILocation(line: 368, column: 29, scope: !2172)
!2306 = !DILocation(line: 368, column: 46, scope: !2172)
!2307 = !DILocation(line: 368, column: 22, scope: !2172)
!2308 = !DILocation(line: 368, column: 13, scope: !2172)
!2309 = !DILocation(line: 369, column: 9, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !2, line: 369, column: 9)
!2311 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 369, column: 9)
!2312 = !DILocation(line: 369, column: 9, scope: !2311)
!2313 = !DILocation(line: 370, column: 17, scope: !2172)
!2314 = !DILocation(line: 370, column: 54, scope: !2172)
!2315 = !DILocation(line: 370, column: 64, scope: !2172)
!2316 = !DILocation(line: 370, column: 68, scope: !2172)
!2317 = !DILocation(line: 370, column: 77, scope: !2172)
!2318 = !DILocation(line: 370, column: 82, scope: !2172)
!2319 = !DILocation(line: 370, column: 86, scope: !2172)
!2320 = !DILocation(line: 370, column: 97, scope: !2172)
!2321 = !DILocation(line: 370, column: 101, scope: !2172)
!2322 = !DILocation(line: 370, column: 95, scope: !2172)
!2323 = !DILocation(line: 370, column: 9, scope: !2172)
!2324 = !DILocation(line: 371, column: 31, scope: !2172)
!2325 = !DILocation(line: 371, column: 35, scope: !2172)
!2326 = !DILocation(line: 371, column: 40, scope: !2172)
!2327 = !DILocation(line: 371, column: 46, scope: !2172)
!2328 = !DILocation(line: 371, column: 50, scope: !2172)
!2329 = !DILocation(line: 371, column: 19, scope: !2172)
!2330 = !DILocation(line: 371, column: 9, scope: !2172)
!2331 = !DILocation(line: 371, column: 13, scope: !2172)
!2332 = !DILocation(line: 371, column: 17, scope: !2172)
!2333 = !DILocation(line: 372, column: 14, scope: !2172)
!2334 = !DILocation(line: 372, column: 9, scope: !2172)
!2335 = !DILocation(line: 373, column: 15, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 373, column: 14)
!2337 = !DILocation(line: 373, column: 19, scope: !2336)
!2338 = !DILocation(line: 373, column: 14, scope: !2172)
!2339 = !DILocation(line: 375, column: 21, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !2, line: 374, column: 9)
!2341 = !DILocation(line: 375, column: 13, scope: !2340)
!2342 = !DILocation(line: 376, column: 13, scope: !2340)
!2343 = !DILocation(line: 378, column: 5, scope: !2173)
!2344 = !DILocation(line: 378, column: 5, scope: !2172)
!2345 = !DILocation(line: 380, column: 22, scope: !2163)
!2346 = !DILocation(line: 380, column: 26, scope: !2163)
!2347 = !DILocation(line: 380, column: 5, scope: !2163)
!2348 = !DILocation(line: 381, column: 5, scope: !2163)
!2349 = !DILocation(line: 381, column: 16, scope: !2163)
!2350 = !DILocation(line: 381, column: 38, scope: !2163)
!2351 = !DILocation(line: 381, column: 42, scope: !2163)
!2352 = !DILocation(line: 381, column: 47, scope: !2163)
!2353 = !DILocation(line: 381, column: 51, scope: !2163)
!2354 = !DILocation(line: 381, column: 61, scope: !2163)
!2355 = !DILocation(line: 381, column: 65, scope: !2163)
!2356 = !DILocation(line: 381, column: 75, scope: !2163)
!2357 = !DILocation(line: 381, column: 79, scope: !2163)
!2358 = !DILocation(line: 381, column: 90, scope: !2163)
!2359 = !DILocation(line: 381, column: 94, scope: !2163)
!2360 = !DILocation(line: 381, column: 88, scope: !2163)
!2361 = !DILocation(line: 381, column: 23, scope: !2163)
!2362 = !DILocation(line: 382, column: 5, scope: !2163)
!2363 = !DILocation(line: 382, column: 13, scope: !2163)
!2364 = !DILocation(line: 382, column: 17, scope: !2163)
!2365 = !DILocation(line: 383, column: 5, scope: !2163)
!2366 = !DILocation(line: 383, column: 32, scope: !2163)
!2367 = !DILocation(line: 383, column: 36, scope: !2163)
!2368 = !DILocation(line: 383, column: 40, scope: !2163)
!2369 = !DILocation(line: 383, column: 46, scope: !2163)
!2370 = !DILocation(line: 383, column: 19, scope: !2163)
!2371 = !DILocation(line: 383, column: 17, scope: !2163)
!2372 = !DILocation(line: 383, column: 50, scope: !2163)
!2373 = !DILocation(line: 383, column: 68, scope: !2163)
!2374 = !DILocation(line: 383, column: 71, scope: !2163)
!2375 = !DILocation(line: 383, column: 56, scope: !2163)
!2376 = distinct !{!2376, !2365, !2377, !1065}
!2377 = !DILocation(line: 383, column: 73, scope: !2163)
!2378 = !DILocation(line: 384, column: 18, scope: !2163)
!2379 = !DILocation(line: 384, column: 5, scope: !2163)
!2380 = !DILocation(line: 385, column: 21, scope: !2163)
!2381 = !DILocation(line: 385, column: 5, scope: !2163)
!2382 = !DILocation(line: 386, column: 9, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 386, column: 9)
!2384 = !DILocation(line: 386, column: 13, scope: !2383)
!2385 = !DILocation(line: 386, column: 9, scope: !2163)
!2386 = !DILocation(line: 387, column: 9, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !2, line: 386, column: 19)
!2388 = !DILocation(line: 388, column: 9, scope: !2387)
!2389 = !DILocation(line: 391, column: 24, scope: !2163)
!2390 = !DILocation(line: 391, column: 28, scope: !2163)
!2391 = !DILocation(line: 391, column: 5, scope: !2163)
!2392 = !DILocation(line: 393, column: 5, scope: !2163)
!2393 = !DILocation(line: 393, column: 12, scope: !2163)
!2394 = !DILocation(line: 393, column: 16, scope: !2163)
!2395 = !DILocation(line: 393, column: 23, scope: !2163)
!2396 = !DILocation(line: 393, column: 27, scope: !2163)
!2397 = !DILocation(line: 393, column: 21, scope: !2163)
!2398 = !DILocation(line: 394, column: 9, scope: !2248)
!2399 = !DILocation(line: 394, column: 19, scope: !2248)
!2400 = !DILocation(line: 394, column: 25, scope: !2248)
!2401 = !DILocation(line: 394, column: 29, scope: !2248)
!2402 = !DILocation(line: 394, column: 38, scope: !2248)
!2403 = !DILocation(line: 395, column: 9, scope: !2248)
!2404 = !DILocation(line: 395, column: 13, scope: !2248)
!2405 = !DILocation(line: 395, column: 24, scope: !2248)
!2406 = !DILocation(line: 395, column: 28, scope: !2248)
!2407 = !DILocation(line: 396, column: 13, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2248, file: !2, line: 396, column: 13)
!2409 = !DILocation(line: 396, column: 17, scope: !2408)
!2410 = !DILocation(line: 396, column: 16, scope: !2408)
!2411 = !DILocation(line: 396, column: 26, scope: !2408)
!2412 = !DILocation(line: 396, column: 31, scope: !2408)
!2413 = !DILocation(line: 396, column: 34, scope: !2408)
!2414 = !DILocation(line: 396, column: 38, scope: !2408)
!2415 = !DILocation(line: 396, column: 45, scope: !2408)
!2416 = !DILocation(line: 396, column: 49, scope: !2408)
!2417 = !DILocation(line: 396, column: 43, scope: !2408)
!2418 = !DILocation(line: 396, column: 54, scope: !2408)
!2419 = !DILocation(line: 396, column: 13, scope: !2248)
!2420 = !DILocation(line: 396, column: 61, scope: !2408)
!2421 = !DILocation(line: 396, column: 65, scope: !2408)
!2422 = !DILocation(line: 396, column: 77, scope: !2408)
!2423 = !DILocation(line: 396, column: 83, scope: !2408)
!2424 = !DILocation(line: 396, column: 87, scope: !2408)
!2425 = !DILocation(line: 396, column: 109, scope: !2408)
!2426 = !DILocation(line: 396, column: 112, scope: !2408)
!2427 = !DILocation(line: 397, column: 9, scope: !2248)
!2428 = !DILocation(line: 397, column: 13, scope: !2248)
!2429 = !DILocation(line: 397, column: 24, scope: !2248)
!2430 = !DILocation(line: 397, column: 30, scope: !2248)
!2431 = !DILocation(line: 397, column: 34, scope: !2248)
!2432 = !DILocation(line: 397, column: 38, scope: !2248)
!2433 = !DILocation(line: 397, column: 43, scope: !2248)
!2434 = !DILocation(line: 397, column: 47, scope: !2248)
!2435 = !DILocation(line: 397, column: 51, scope: !2248)
!2436 = !DILocation(line: 397, column: 54, scope: !2248)
!2437 = !DILocation(line: 397, column: 60, scope: !2248)
!2438 = !DILocation(line: 397, column: 64, scope: !2248)
!2439 = !DILocation(line: 397, column: 58, scope: !2248)
!2440 = !DILocation(line: 397, column: 42, scope: !2248)
!2441 = !DILocation(line: 397, column: 72, scope: !2248)
!2442 = !DILocation(line: 397, column: 76, scope: !2248)
!2443 = !DILocation(line: 397, column: 80, scope: !2248)
!2444 = !DILocation(line: 397, column: 86, scope: !2248)
!2445 = !DILocation(line: 397, column: 90, scope: !2248)
!2446 = !DILocation(line: 397, column: 84, scope: !2248)
!2447 = !DILocation(line: 398, column: 11, scope: !2248)
!2448 = !DILocation(line: 398, column: 15, scope: !2248)
!2449 = !DILocation(line: 398, column: 9, scope: !2248)
!2450 = !DILocation(line: 399, column: 5, scope: !2163)
!2451 = distinct !{!2451, !2392, !2450, !1065}
!2452 = !DILocation(line: 401, column: 1, scope: !2163)
!2453 = !DILocation(line: 400, column: 5, scope: !2163)
!2454 = !DISubprogram(name: "sam_hdr_tid2name", scope: !185, file: !185, line: 760, type: !2455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!310, !2457, !98}
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!2459 = !DISubprogram(name: "calloc", scope: !727, file: !727, line: 543, type: !2460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!165, !195, !195}
!2462 = !DISubprogram(name: "strlen", scope: !2463, file: !2463, line: 407, type: !2464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2463 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!197, !310}
!2466 = !DISubprogram(name: "sprintf", scope: !2467, file: !2467, line: 358, type: !2468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2467 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!98, !2470, !2471, null}
!2470 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!2471 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !310)
!2472 = !DISubprogram(name: "fai_fetch64", scope: !319, file: !319, line: 189, type: !2473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!100, !2475, !310, !2229}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!2477 = !DISubprogram(name: "fprintf", scope: !2467, file: !2467, line: 350, type: !2478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!98, !2480, !2471, null}
!2480 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2481)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2483, line: 7, baseType: !2484)
!2483 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2485, line: 49, size: 1728, elements: !2486)
!2485 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2486 = !{!2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2502, !2504, !2505, !2506, !2508, !2509, !2510, !2514, !2517, !2519, !2522, !2525, !2526, !2527, !2528, !2529}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2484, file: !2485, line: 51, baseType: !98, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2484, file: !2485, line: 54, baseType: !100, size: 64, offset: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2484, file: !2485, line: 55, baseType: !100, size: 64, offset: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2484, file: !2485, line: 56, baseType: !100, size: 64, offset: 192)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2484, file: !2485, line: 57, baseType: !100, size: 64, offset: 256)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2484, file: !2485, line: 58, baseType: !100, size: 64, offset: 320)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2484, file: !2485, line: 59, baseType: !100, size: 64, offset: 384)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2484, file: !2485, line: 60, baseType: !100, size: 64, offset: 448)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2484, file: !2485, line: 61, baseType: !100, size: 64, offset: 512)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2484, file: !2485, line: 64, baseType: !100, size: 64, offset: 576)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2484, file: !2485, line: 65, baseType: !100, size: 64, offset: 640)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2484, file: !2485, line: 66, baseType: !100, size: 64, offset: 704)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2484, file: !2485, line: 68, baseType: !2500, size: 64, offset: 768)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2485, line: 36, flags: DIFlagFwdDecl)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2484, file: !2485, line: 70, baseType: !2503, size: 64, offset: 832)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2484, file: !2485, line: 72, baseType: !98, size: 32, offset: 896)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2484, file: !2485, line: 73, baseType: !98, size: 32, offset: 928)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2484, file: !2485, line: 74, baseType: !2507, size: 64, offset: 960)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !192, line: 152, baseType: !232)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2484, file: !2485, line: 77, baseType: !334, size: 16, offset: 1024)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2484, file: !2485, line: 78, baseType: !208, size: 8, offset: 1040)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2484, file: !2485, line: 79, baseType: !2511, size: 8, offset: 1048)
!2511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !2512)
!2512 = !{!2513}
!2513 = !DISubrange(count: 1)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2484, file: !2485, line: 81, baseType: !2515, size: 64, offset: 1088)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2485, line: 43, baseType: null)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2484, file: !2485, line: 89, baseType: !2518, size: 64, offset: 1152)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !192, line: 153, baseType: !232)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2484, file: !2485, line: 91, baseType: !2520, size: 64, offset: 1216)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2485, line: 37, flags: DIFlagFwdDecl)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2484, file: !2485, line: 92, baseType: !2523, size: 64, offset: 1280)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2485, line: 38, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2484, file: !2485, line: 93, baseType: !2503, size: 64, offset: 1344)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2484, file: !2485, line: 94, baseType: !165, size: 64, offset: 1408)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2484, file: !2485, line: 95, baseType: !195, size: 64, offset: 1472)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2484, file: !2485, line: 96, baseType: !98, size: 32, offset: 1536)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2484, file: !2485, line: 98, baseType: !2530, size: 160, offset: 1568)
!2530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !2531)
!2531 = !{!2532}
!2532 = !DISubrange(count: 20)
!2533 = !DISubprogram(name: "bam_lplbuf_reset", scope: !180, file: !180, line: 43, type: !2035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2534 = !DISubprogram(name: "sam_itr_queryi", scope: !185, file: !185, line: 1272, type: !2535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!2176, !2537, !98, !340, !340}
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!2539 = !DISubprogram(name: "bam_init1", scope: !185, file: !185, line: 855, type: !2540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!753}
!2542 = distinct !DISubprogram(name: "sam_itr_next", scope: !185, file: !185, line: 1349, type: !2543, scopeLine: 1349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2545)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!98, !721, !2176, !753}
!2545 = !{!2546, !2547, !2548}
!2546 = !DILocalVariable(name: "htsfp", arg: 1, scope: !2542, file: !185, line: 1349, type: !721)
!2547 = !DILocalVariable(name: "itr", arg: 2, scope: !2542, file: !185, line: 1349, type: !2176)
!2548 = !DILocalVariable(name: "r", arg: 3, scope: !2542, file: !185, line: 1349, type: !753)
!2549 = !DILocation(line: 1349, column: 41, scope: !2542)
!2550 = !DILocation(line: 1349, column: 59, scope: !2542)
!2551 = !DILocation(line: 1349, column: 72, scope: !2542)
!2552 = !DILocation(line: 1350, column: 10, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2542, file: !185, line: 1350, column: 9)
!2554 = !DILocation(line: 1350, column: 17, scope: !2553)
!2555 = !DILocation(line: 1350, column: 25, scope: !2553)
!2556 = !DILocation(line: 1350, column: 29, scope: !2553)
!2557 = !DILocation(line: 1350, column: 36, scope: !2553)
!2558 = !DILocation(line: 1350, column: 9, scope: !2542)
!2559 = !DILocation(line: 1351, column: 9, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2553, file: !185, line: 1350, column: 45)
!2561 = !{!2562, !564, i64 40}
!2562 = !{!"htsFile", !586, i64 0, !586, i64 0, !586, i64 0, !586, i64 0, !586, i64 0, !586, i64 0, !587, i64 8, !1568, i64 16, !564, i64 40, !564, i64 48, !565, i64 56, !564, i64 64, !2563, i64 72, !564, i64 104, !564, i64 112, !564, i64 120, !564, i64 128}
!2563 = !{!"htsFormat", !565, i64 0, !565, i64 4, !2564, i64 8, !565, i64 12, !1462, i64 16, !564, i64 24}
!2564 = !{!"", !1462, i64 0, !1462, i64 2}
!2565 = !DILocation(line: 1352, column: 9, scope: !2560)
!2566 = !DILocation(line: 1354, column: 10, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2542, file: !185, line: 1354, column: 9)
!2568 = !DILocation(line: 1354, column: 9, scope: !2542)
!2569 = !DILocation(line: 1355, column: 9, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2567, file: !185, line: 1354, column: 15)
!2571 = !DILocation(line: 1356, column: 9, scope: !2570)
!2572 = !DILocation(line: 1359, column: 9, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2542, file: !185, line: 1359, column: 9)
!2574 = !DILocation(line: 1359, column: 14, scope: !2573)
!2575 = !DILocation(line: 1359, column: 9, scope: !2542)
!2576 = !DILocation(line: 1360, column: 35, scope: !2573)
!2577 = !DILocation(line: 1360, column: 42, scope: !2573)
!2578 = !DILocation(line: 1360, column: 47, scope: !2573)
!2579 = !DILocation(line: 1360, column: 16, scope: !2573)
!2580 = !DILocation(line: 1360, column: 9, scope: !2573)
!2581 = !DILocation(line: 1362, column: 29, scope: !2573)
!2582 = !DILocation(line: 1362, column: 36, scope: !2573)
!2583 = !DILocation(line: 1362, column: 46, scope: !2573)
!2584 = !DILocation(line: 1362, column: 53, scope: !2573)
!2585 = !DILocation(line: 1362, column: 56, scope: !2573)
!2586 = !DILocation(line: 1362, column: 69, scope: !2573)
!2587 = !DILocation(line: 1362, column: 74, scope: !2573)
!2588 = !DILocation(line: 1362, column: 77, scope: !2573)
!2589 = !DILocation(line: 1362, column: 16, scope: !2573)
!2590 = !DILocation(line: 1362, column: 9, scope: !2573)
!2591 = !DILocation(line: 1363, column: 1, scope: !2542)
!2592 = distinct !DISubprogram(name: "tv_push_aln", scope: !2, file: !2, line: 330, type: !2593, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2597)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!98, !2595, !166}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!2597 = !{!2598, !2599, !2600, !2605, !2606, !2609}
!2598 = !DILocalVariable(name: "b", arg: 1, scope: !2592, file: !2, line: 330, type: !2595)
!2599 = !DILocalVariable(name: "tv", arg: 2, scope: !2592, file: !2, line: 330, type: !166)
!2600 = !DILocalVariable(name: "rg", scope: !2601, file: !2, line: 335, type: !2603)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 334, column: 5)
!2602 = distinct !DILexicalBlock(scope: !2592, file: !2, line: 333, column: 10)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!2605 = !DILocalVariable(name: "k", scope: !2601, file: !2, line: 337, type: !2058)
!2606 = !DILocalVariable(name: "cigar", scope: !2607, file: !2, line: 341, type: !199)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !2, line: 340, column: 22)
!2608 = distinct !DILexicalBlock(scope: !2592, file: !2, line: 340, column: 9)
!2609 = !DILocalVariable(name: "i", scope: !2607, file: !2, line: 342, type: !98)
!2610 = !DILocation(line: 330, column: 38, scope: !2592)
!2611 = !DILocation(line: 330, column: 50, scope: !2592)
!2612 = !DILocation(line: 333, column: 10, scope: !2602)
!2613 = !DILocation(line: 333, column: 14, scope: !2602)
!2614 = !DILocation(line: 333, column: 10, scope: !2592)
!2615 = !DILocation(line: 335, column: 9, scope: !2601)
!2616 = !DILocation(line: 335, column: 24, scope: !2601)
!2617 = !DILocation(line: 335, column: 41, scope: !2601)
!2618 = !DILocation(line: 335, column: 29, scope: !2601)
!2619 = !DILocation(line: 336, column: 15, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2601, file: !2, line: 336, column: 14)
!2621 = !DILocation(line: 336, column: 14, scope: !2601)
!2622 = !DILocation(line: 336, column: 20, scope: !2620)
!2623 = !DILocation(line: 337, column: 9, scope: !2601)
!2624 = !DILocation(line: 337, column: 18, scope: !2601)
!2625 = !DILocation(line: 337, column: 22, scope: !2601)
!2626 = !DILocation(line: 338, column: 14, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2601, file: !2, line: 338, column: 14)
!2628 = !DILocation(line: 338, column: 19, scope: !2627)
!2629 = !DILocation(line: 338, column: 16, scope: !2627)
!2630 = !DILocation(line: 338, column: 14, scope: !2601)
!2631 = !DILocation(line: 338, column: 41, scope: !2627)
!2632 = !DILocation(line: 339, column: 5, scope: !2602)
!2633 = !DILocation(line: 339, column: 5, scope: !2601)
!2634 = !DILocation(line: 340, column: 9, scope: !2608)
!2635 = !DILocation(line: 340, column: 13, scope: !2608)
!2636 = !{!585, !586, i64 108}
!2637 = !DILocation(line: 340, column: 9, scope: !2592)
!2638 = !DILocation(line: 341, column: 9, scope: !2607)
!2639 = !DILocation(line: 341, column: 19, scope: !2607)
!2640 = !DILocation(line: 341, column: 27, scope: !2607)
!2641 = !DILocation(line: 342, column: 9, scope: !2607)
!2642 = !DILocation(line: 342, column: 13, scope: !2607)
!2643 = !DILocation(line: 343, column: 16, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2607, file: !2, line: 343, column: 9)
!2645 = !DILocation(line: 343, column: 14, scope: !2644)
!2646 = !DILocation(line: 343, column: 21, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2644, file: !2, line: 343, column: 9)
!2648 = !DILocation(line: 343, column: 24, scope: !2647)
!2649 = !DILocation(line: 343, column: 27, scope: !2647)
!2650 = !DILocation(line: 343, column: 32, scope: !2647)
!2651 = !DILocation(line: 343, column: 23, scope: !2647)
!2652 = !DILocation(line: 343, column: 9, scope: !2644)
!2653 = !DILocation(line: 344, column: 18, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 344, column: 17)
!2655 = distinct !DILexicalBlock(scope: !2647, file: !2, line: 343, column: 46)
!2656 = !DILocation(line: 344, column: 24, scope: !2654)
!2657 = !DILocation(line: 344, column: 26, scope: !2654)
!2658 = !DILocation(line: 344, column: 32, scope: !2654)
!2659 = !DILocation(line: 344, column: 17, scope: !2655)
!2660 = !DILocation(line: 345, column: 28, scope: !2654)
!2661 = !DILocation(line: 345, column: 34, scope: !2654)
!2662 = !DILocation(line: 345, column: 36, scope: !2654)
!2663 = !DILocation(line: 345, column: 39, scope: !2654)
!2664 = !DILocation(line: 345, column: 43, scope: !2654)
!2665 = !DILocation(line: 345, column: 17, scope: !2654)
!2666 = !DILocation(line: 345, column: 23, scope: !2654)
!2667 = !DILocation(line: 345, column: 26, scope: !2654)
!2668 = !DILocation(line: 346, column: 9, scope: !2655)
!2669 = !DILocation(line: 343, column: 41, scope: !2647)
!2670 = !DILocation(line: 343, column: 9, scope: !2647)
!2671 = distinct !{!2671, !2652, !2672, !1065}
!2672 = !DILocation(line: 346, column: 9, scope: !2644)
!2673 = !DILocation(line: 347, column: 5, scope: !2608)
!2674 = !DILocation(line: 347, column: 5, scope: !2607)
!2675 = !DILocation(line: 348, column: 21, scope: !2592)
!2676 = !DILocation(line: 348, column: 24, scope: !2592)
!2677 = !DILocation(line: 348, column: 28, scope: !2592)
!2678 = !DILocation(line: 348, column: 5, scope: !2592)
!2679 = !DILocation(line: 349, column: 5, scope: !2592)
!2680 = !DILocation(line: 350, column: 1, scope: !2592)
!2681 = !DISubprogram(name: "bam_destroy1", scope: !185, file: !185, line: 866, type: !2682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{null, !753}
!2684 = !DISubprogram(name: "hts_itr_destroy", scope: !104, file: !104, line: 1287, type: !2685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{null, !2176}
!2687 = !DISubprogram(name: "bam_lplbuf_push", scope: !180, file: !180, line: 52, type: !2688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!98, !2595, !178}
!2690 = !DILocation(line: 438, column: 24, scope: !95)
!2691 = !DILocation(line: 438, column: 36, scope: !95)
!2692 = !DILocation(line: 440, column: 5, scope: !95)
!2693 = !DILocation(line: 440, column: 9, scope: !95)
!2694 = !DILocation(line: 440, column: 36, scope: !95)
!2695 = !DILocation(line: 441, column: 5, scope: !95)
!2696 = !DILocation(line: 441, column: 14, scope: !95)
!2697 = !DILocation(line: 442, column: 5, scope: !95)
!2698 = !DILocation(line: 442, column: 11, scope: !95)
!2699 = !DILocation(line: 442, column: 26, scope: !95)
!2700 = !DILocation(line: 442, column: 42, scope: !95)
!2701 = !DILocation(line: 442, column: 48, scope: !95)
!2702 = !DILocation(line: 443, column: 5, scope: !95)
!2703 = !DILocation(line: 443, column: 9, scope: !95)
!2704 = !DILocation(line: 443, column: 12, scope: !95)
!2705 = !DILocation(line: 443, column: 32, scope: !95)
!2706 = !DILocation(line: 445, column: 5, scope: !95)
!2707 = !DILocation(line: 445, column: 21, scope: !95)
!2708 = !DILocation(line: 451, column: 5, scope: !95)
!2709 = !DILocation(line: 451, column: 11, scope: !95)
!2710 = !DILocation(line: 452, column: 5, scope: !95)
!2711 = !DILocation(line: 452, column: 29, scope: !95)
!2712 = !DILocation(line: 452, column: 35, scope: !95)
!2713 = !DILocation(line: 452, column: 17, scope: !95)
!2714 = !DILocation(line: 452, column: 15, scope: !95)
!2715 = !DILocation(line: 452, column: 68, scope: !95)
!2716 = !DILocation(line: 453, column: 17, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !95, file: !2, line: 452, column: 74)
!2718 = !DILocation(line: 453, column: 9, scope: !2717)
!2719 = !DILocation(line: 455, column: 40, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2717, file: !2, line: 453, column: 20)
!2721 = !DILocation(line: 455, column: 33, scope: !2720)
!2722 = !DILocation(line: 455, column: 31, scope: !2720)
!2723 = !DILocation(line: 456, column: 22, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2720, file: !2, line: 456, column: 22)
!2725 = !DILocation(line: 456, column: 27, scope: !2724)
!2726 = !DILocation(line: 456, column: 25, scope: !2724)
!2727 = !DILocation(line: 456, column: 34, scope: !2724)
!2728 = !DILocation(line: 456, column: 38, scope: !2724)
!2729 = !DILocation(line: 456, column: 37, scope: !2724)
!2730 = !DILocation(line: 456, column: 42, scope: !2724)
!2731 = !DILocation(line: 456, column: 45, scope: !2724)
!2732 = !DILocation(line: 456, column: 58, scope: !2724)
!2733 = !DILocation(line: 456, column: 22, scope: !2720)
!2734 = !DILocation(line: 456, column: 96, scope: !2724)
!2735 = !DILocation(line: 456, column: 63, scope: !2724)
!2736 = !DILocation(line: 457, column: 17, scope: !2720)
!2737 = !DILocation(line: 458, column: 31, scope: !2720)
!2738 = !DILocation(line: 458, column: 30, scope: !2720)
!2739 = !DILocation(line: 458, column: 39, scope: !2720)
!2740 = !DILocation(line: 459, column: 32, scope: !2720)
!2741 = !DILocation(line: 459, column: 31, scope: !2720)
!2742 = !DILocation(line: 459, column: 40, scope: !2720)
!2743 = !DILocation(line: 460, column: 37, scope: !2720)
!2744 = !DILocation(line: 460, column: 41, scope: !2720)
!2745 = !DILocation(line: 463, column: 24, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2720, file: !2, line: 462, column: 13)
!2747 = !DILocation(line: 463, column: 17, scope: !2746)
!2748 = !DILocation(line: 465, column: 50, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2746, file: !2, line: 464, column: 17)
!2750 = !DILocation(line: 465, column: 64, scope: !2749)
!2751 = !DILocation(line: 466, column: 50, scope: !2749)
!2752 = !DILocation(line: 466, column: 64, scope: !2749)
!2753 = !DILocation(line: 467, column: 50, scope: !2749)
!2754 = !DILocation(line: 467, column: 67, scope: !2749)
!2755 = !DILocation(line: 468, column: 39, scope: !2749)
!2756 = !DILocation(line: 468, column: 56, scope: !2749)
!2757 = !DILocation(line: 470, column: 17, scope: !2746)
!2758 = !DILocation(line: 472, column: 48, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2720, file: !2, line: 472, column: 27)
!2760 = !DILocation(line: 472, column: 51, scope: !2759)
!2761 = !DILocation(line: 472, column: 27, scope: !2759)
!2762 = !DILocation(line: 472, column: 71, scope: !2759)
!2763 = !DILocation(line: 472, column: 27, scope: !2720)
!2764 = !DILocation(line: 472, column: 77, scope: !2759)
!2765 = !DILocation(line: 472, column: 74, scope: !2759)
!2766 = !DILocation(line: 474, column: 23, scope: !2720)
!2767 = !DILocation(line: 475, column: 9, scope: !2720)
!2768 = distinct !{!2768, !2710, !2769, !1065}
!2769 = !DILocation(line: 476, column: 5, scope: !95)
!2770 = !DILocation(line: 477, column: 9, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !95, file: !2, line: 477, column: 9)
!2772 = !DILocation(line: 477, column: 15, scope: !2771)
!2773 = !DILocation(line: 477, column: 13, scope: !2771)
!2774 = !DILocation(line: 477, column: 9, scope: !95)
!2775 = !DILocation(line: 477, column: 23, scope: !2771)
!2776 = !DILocation(line: 478, column: 9, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !95, file: !2, line: 478, column: 9)
!2778 = !DILocation(line: 478, column: 23, scope: !2777)
!2779 = !DILocation(line: 478, column: 26, scope: !2777)
!2780 = !DILocation(line: 478, column: 36, scope: !2777)
!2781 = !DILocation(line: 478, column: 9, scope: !95)
!2782 = !DILocation(line: 479, column: 9, scope: !2777)
!2783 = !DILocation(line: 481, column: 9, scope: !95)
!2784 = !DILocation(line: 482, column: 17, scope: !95)
!2785 = !DILocation(line: 482, column: 15, scope: !95)
!2786 = !DILocation(line: 483, column: 10, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !95, file: !2, line: 483, column: 9)
!2788 = !DILocation(line: 483, column: 9, scope: !95)
!2789 = !DILocation(line: 484, column: 16, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2787, file: !2, line: 483, column: 26)
!2791 = !DILocation(line: 484, column: 22, scope: !2790)
!2792 = !DILocation(line: 484, column: 26, scope: !2790)
!2793 = !DILocation(line: 484, column: 24, scope: !2790)
!2794 = !DILocation(line: 484, column: 15, scope: !2790)
!2795 = !DILocation(line: 484, column: 36, scope: !2790)
!2796 = !{!2797, !564, i64 64}
!2797 = !{!"sam_global_args", !2563, i64 0, !2563, i64 32, !564, i64 64, !586, i64 72, !586, i64 76}
!2798 = !DILocation(line: 484, column: 48, scope: !2790)
!2799 = !DILocation(line: 484, column: 53, scope: !2790)
!2800 = !DILocation(line: 484, column: 59, scope: !2790)
!2801 = !DILocation(line: 484, column: 13, scope: !2790)
!2802 = !DILocation(line: 485, column: 5, scope: !2790)
!2803 = !DILocation(line: 487, column: 16, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2787, file: !2, line: 486, column: 10)
!2805 = !DILocation(line: 487, column: 22, scope: !2804)
!2806 = !DILocation(line: 487, column: 26, scope: !2804)
!2807 = !DILocation(line: 487, column: 24, scope: !2804)
!2808 = !DILocation(line: 487, column: 15, scope: !2804)
!2809 = !DILocation(line: 487, column: 36, scope: !2804)
!2810 = !DILocation(line: 487, column: 48, scope: !2804)
!2811 = !DILocation(line: 487, column: 53, scope: !2804)
!2812 = !DILocation(line: 487, column: 59, scope: !2804)
!2813 = !DILocation(line: 487, column: 13, scope: !2804)
!2814 = !DILocation(line: 488, column: 13, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2804, file: !2, line: 488, column: 13)
!2816 = !DILocation(line: 488, column: 19, scope: !2815)
!2817 = !DILocation(line: 488, column: 25, scope: !2815)
!2818 = !DILocation(line: 488, column: 22, scope: !2815)
!2819 = !DILocation(line: 488, column: 13, scope: !2804)
!2820 = !DILocation(line: 489, column: 21, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2815, file: !2, line: 488, column: 31)
!2822 = !DILocation(line: 489, column: 13, scope: !2821)
!2823 = !DILocation(line: 490, column: 13, scope: !2821)
!2824 = !DILocation(line: 492, column: 18, scope: !2804)
!2825 = !DILocation(line: 492, column: 23, scope: !2804)
!2826 = !DILocation(line: 492, column: 29, scope: !2804)
!2827 = !DILocation(line: 492, column: 16, scope: !2804)
!2828 = !DILocation(line: 493, column: 21, scope: !2804)
!2829 = !DILocation(line: 493, column: 27, scope: !2804)
!2830 = !DILocation(line: 493, column: 19, scope: !2804)
!2831 = !DILocation(line: 496, column: 12, scope: !95)
!2832 = !DILocation(line: 496, column: 5, scope: !95)
!2833 = !DILocation(line: 499, column: 33, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !95, file: !2, line: 497, column: 5)
!2835 = !DILocation(line: 499, column: 38, scope: !2834)
!2836 = !DILocation(line: 499, column: 50, scope: !2834)
!2837 = !DILocation(line: 499, column: 55, scope: !2834)
!2838 = !DILocation(line: 499, column: 68, scope: !2834)
!2839 = !DILocation(line: 499, column: 18, scope: !2834)
!2840 = !DILocation(line: 499, column: 16, scope: !2834)
!2841 = !DILocation(line: 500, column: 13, scope: !2834)
!2842 = !DILocation(line: 503, column: 31, scope: !2834)
!2843 = !DILocation(line: 503, column: 36, scope: !2834)
!2844 = !DILocation(line: 503, column: 48, scope: !2834)
!2845 = !DILocation(line: 503, column: 53, scope: !2834)
!2846 = !DILocation(line: 503, column: 61, scope: !2834)
!2847 = !DILocation(line: 503, column: 74, scope: !2834)
!2848 = !DILocation(line: 503, column: 18, scope: !2834)
!2849 = !DILocation(line: 503, column: 16, scope: !2834)
!2850 = !DILocation(line: 504, column: 18, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2834, file: !2, line: 504, column: 18)
!2852 = !DILocation(line: 504, column: 18, scope: !2834)
!2853 = !DILocation(line: 504, column: 45, scope: !2851)
!2854 = !DILocation(line: 504, column: 34, scope: !2851)
!2855 = !DILocation(line: 504, column: 38, scope: !2851)
!2856 = !DILocation(line: 504, column: 43, scope: !2851)
!2857 = !DILocation(line: 505, column: 13, scope: !2834)
!2858 = !DILocation(line: 508, column: 31, scope: !2834)
!2859 = !DILocation(line: 508, column: 36, scope: !2834)
!2860 = !DILocation(line: 508, column: 48, scope: !2834)
!2861 = !DILocation(line: 508, column: 53, scope: !2834)
!2862 = !DILocation(line: 508, column: 61, scope: !2834)
!2863 = !DILocation(line: 508, column: 74, scope: !2834)
!2864 = !DILocation(line: 508, column: 18, scope: !2834)
!2865 = !DILocation(line: 508, column: 16, scope: !2834)
!2866 = !DILocation(line: 509, column: 18, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2834, file: !2, line: 509, column: 18)
!2868 = !DILocation(line: 509, column: 18, scope: !2834)
!2869 = !DILocation(line: 509, column: 45, scope: !2867)
!2870 = !DILocation(line: 509, column: 34, scope: !2867)
!2871 = !DILocation(line: 509, column: 38, scope: !2867)
!2872 = !DILocation(line: 509, column: 43, scope: !2867)
!2873 = !DILocation(line: 510, column: 13, scope: !2834)
!2874 = !DILocation(line: 512, column: 9, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !95, file: !2, line: 512, column: 9)
!2876 = !DILocation(line: 512, column: 11, scope: !2875)
!2877 = !DILocation(line: 512, column: 9, scope: !95)
!2878 = !DILocation(line: 514, column: 9, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2875, file: !2, line: 513, column: 5)
!2880 = !DILocation(line: 515, column: 9, scope: !2879)
!2881 = !DILocation(line: 518, column: 10, scope: !528)
!2882 = !DILocation(line: 518, column: 10, scope: !95)
!2883 = !DILocation(line: 520, column: 9, scope: !527)
!2884 = !DILocation(line: 520, column: 13, scope: !527)
!2885 = !DILocation(line: 521, column: 9, scope: !527)
!2886 = !DILocation(line: 521, column: 19, scope: !527)
!2887 = !DILocation(line: 521, column: 24, scope: !527)
!2888 = !DILocation(line: 522, column: 31, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !527, file: !2, line: 522, column: 13)
!2890 = !DILocation(line: 522, column: 35, scope: !2889)
!2891 = !DILocation(line: 522, column: 43, scope: !2889)
!2892 = !DILocation(line: 522, column: 14, scope: !2889)
!2893 = !DILocation(line: 522, column: 13, scope: !527)
!2894 = !DILocation(line: 523, column: 13, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2889, file: !2, line: 522, column: 75)
!2896 = !DILocation(line: 523, column: 17, scope: !2895)
!2897 = !{!585, !564, i64 136}
!2898 = !DILocation(line: 523, column: 28, scope: !2895)
!2899 = !DILocation(line: 524, column: 21, scope: !2895)
!2900 = !DILocation(line: 524, column: 13, scope: !2895)
!2901 = !DILocation(line: 525, column: 13, scope: !2895)
!2902 = !DILocation(line: 527, column: 24, scope: !527)
!2903 = !DILocation(line: 527, column: 9, scope: !527)
!2904 = !DILocation(line: 527, column: 13, scope: !527)
!2905 = !DILocation(line: 527, column: 22, scope: !527)
!2906 = !DILocation(line: 528, column: 24, scope: !527)
!2907 = !DILocation(line: 528, column: 9, scope: !527)
!2908 = !DILocation(line: 528, column: 13, scope: !527)
!2909 = !DILocation(line: 528, column: 22, scope: !527)
!2910 = !DILocation(line: 529, column: 5, scope: !528)
!2911 = !DILocation(line: 529, column: 5, scope: !527)
!2912 = !DILocation(line: 530, column: 15, scope: !533)
!2913 = !DILocation(line: 530, column: 19, scope: !533)
!2914 = !DILocation(line: 530, column: 15, scope: !528)
!2915 = !DILocation(line: 533, column: 9, scope: !532)
!2916 = !DILocation(line: 533, column: 13, scope: !532)
!2917 = !DILocation(line: 534, column: 15, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !532, file: !2, line: 534, column: 9)
!2919 = !DILocation(line: 534, column: 14, scope: !2918)
!2920 = !DILocation(line: 534, column: 19, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2918, file: !2, line: 534, column: 9)
!2922 = !DILocation(line: 534, column: 36, scope: !2921)
!2923 = !DILocation(line: 534, column: 40, scope: !2921)
!2924 = !DILocation(line: 534, column: 23, scope: !2921)
!2925 = !DILocation(line: 534, column: 21, scope: !2921)
!2926 = !DILocation(line: 534, column: 9, scope: !2918)
!2927 = !DILocation(line: 536, column: 32, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !2, line: 536, column: 18)
!2929 = distinct !DILexicalBlock(scope: !2921, file: !2, line: 535, column: 9)
!2930 = !DILocation(line: 536, column: 36, scope: !2928)
!2931 = !DILocation(line: 536, column: 58, scope: !2928)
!2932 = !DILocation(line: 536, column: 62, scope: !2928)
!2933 = !DILocation(line: 536, column: 70, scope: !2928)
!2934 = !DILocation(line: 536, column: 41, scope: !2928)
!2935 = !DILocation(line: 536, column: 18, scope: !2928)
!2936 = !DILocation(line: 536, column: 18, scope: !2929)
!2937 = !DILocation(line: 536, column: 76, scope: !2928)
!2938 = !DILocation(line: 537, column: 9, scope: !2929)
!2939 = !DILocation(line: 534, column: 50, scope: !2921)
!2940 = !DILocation(line: 534, column: 9, scope: !2921)
!2941 = distinct !{!2941, !2926, !2942, !1065}
!2942 = !DILocation(line: 537, column: 9, scope: !2918)
!2943 = !DILocation(line: 538, column: 14, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !532, file: !2, line: 538, column: 14)
!2945 = !DILocation(line: 538, column: 30, scope: !2944)
!2946 = !DILocation(line: 538, column: 34, scope: !2944)
!2947 = !DILocation(line: 538, column: 17, scope: !2944)
!2948 = !DILocation(line: 538, column: 15, scope: !2944)
!2949 = !DILocation(line: 538, column: 14, scope: !532)
!2950 = !DILocation(line: 540, column: 13, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2944, file: !2, line: 539, column: 9)
!2952 = !DILocation(line: 540, column: 17, scope: !2951)
!2953 = !DILocation(line: 540, column: 28, scope: !2951)
!2954 = !DILocation(line: 541, column: 21, scope: !2951)
!2955 = !DILocation(line: 541, column: 13, scope: !2951)
!2956 = !DILocation(line: 542, column: 13, scope: !2951)
!2957 = !DILocation(line: 544, column: 24, scope: !532)
!2958 = !DILocation(line: 544, column: 9, scope: !532)
!2959 = !DILocation(line: 544, column: 13, scope: !532)
!2960 = !DILocation(line: 544, column: 22, scope: !532)
!2961 = !DILocation(line: 545, column: 5, scope: !533)
!2962 = !DILocation(line: 545, column: 5, scope: !532)
!2963 = !DILocation(line: 546, column: 5, scope: !95)
!2964 = !DILocation(line: 546, column: 9, scope: !95)
!2965 = !{!585, !564, i64 192}
!2966 = !DILocation(line: 546, column: 20, scope: !95)
!2967 = !DILocation(line: 546, column: 24, scope: !95)
!2968 = !DILocation(line: 546, column: 28, scope: !95)
!2969 = !DILocation(line: 546, column: 38, scope: !95)
!2970 = !DILocation(line: 546, column: 42, scope: !95)
!2971 = !DILocation(line: 547, column: 5, scope: !95)
!2972 = !DILocation(line: 547, column: 9, scope: !95)
!2973 = !{!585, !564, i64 200}
!2974 = !DILocation(line: 547, column: 17, scope: !95)
!2975 = !DILocation(line: 548, column: 5, scope: !95)
!2976 = !DILocation(line: 548, column: 9, scope: !95)
!2977 = !DILocation(line: 548, column: 20, scope: !95)
!2978 = !DILocation(line: 550, column: 5, scope: !95)
!2979 = !DILocation(line: 551, column: 1, scope: !95)
!2980 = !DISubprogram(name: "getopt_long", scope: !537, file: !537, line: 66, type: !2981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!98, !98, !2983, !310, !2985, !542}
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!2986 = !DISubprogram(name: "strtol", scope: !727, file: !727, line: 177, type: !2987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!232, !2471, !2989, !98}
!2989 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!2990 = distinct !DISubprogram(name: "error", scope: !2, file: !2, line: 406, type: !2991, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{null, !310, null}
!2993 = !{!2994, !2995}
!2994 = !DILocalVariable(name: "format", arg: 1, scope: !2990, file: !2, line: 406, type: !310)
!2995 = !DILocalVariable(name: "ap", scope: !2996, file: !2, line: 422, type: !2998)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !2, line: 421, column: 5)
!2997 = distinct !DILexicalBlock(scope: !2990, file: !2, line: 408, column: 10)
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2467, line: 52, baseType: !2999)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3000, line: 35, baseType: !3001)
!3000 = !DIFile(filename: "/usr/lib/clang/18/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "95ff2da58c2c75d7c246cff7935ff18b")
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !3002)
!3002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3003, size: 192, elements: !2512)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3004)
!3004 = !{!3005, !3006, !3007, !3008}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3003, file: !2, line: 422, baseType: !105, size: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3003, file: !2, line: 422, baseType: !105, size: 32, offset: 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3003, file: !2, line: 422, baseType: !165, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3003, file: !2, line: 422, baseType: !165, size: 64, offset: 128)
!3009 = !DILocation(line: 406, column: 31, scope: !2990)
!3010 = !DILocation(line: 408, column: 11, scope: !2997)
!3011 = !DILocation(line: 408, column: 10, scope: !2990)
!3012 = !DILocation(line: 410, column: 17, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2997, file: !2, line: 409, column: 5)
!3014 = !DILocation(line: 410, column: 9, scope: !3013)
!3015 = !DILocation(line: 418, column: 29, scope: !3013)
!3016 = !DILocation(line: 418, column: 9, scope: !3013)
!3017 = !DILocation(line: 419, column: 5, scope: !3013)
!3018 = !DILocation(line: 422, column: 9, scope: !2996)
!3019 = !DILocation(line: 422, column: 17, scope: !2996)
!3020 = !DILocation(line: 423, column: 9, scope: !2996)
!3021 = !DILocation(line: 424, column: 18, scope: !2996)
!3022 = !DILocation(line: 424, column: 26, scope: !2996)
!3023 = !DILocation(line: 424, column: 34, scope: !2996)
!3024 = !DILocation(line: 424, column: 9, scope: !2996)
!3025 = !DILocation(line: 425, column: 9, scope: !2996)
!3026 = !DILocation(line: 426, column: 5, scope: !2997)
!3027 = !DILocation(line: 427, column: 5, scope: !2990)
!3028 = !DISubprogram(name: "parse_sam_global_opt", scope: !517, file: !517, line: 85, type: !3029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!98, !98, !310, !2985, !3031}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!3032 = !DISubprogram(name: "curses_tv_init", scope: !2, file: !2, line: 431, type: !3033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!166, !310, !310, !310, !554}
!3035 = !DISubprogram(name: "text_tv_init", scope: !2, file: !2, line: 435, type: !3036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!166, !310, !310, !310, !310, !554}
!3038 = !DISubprogram(name: "html_tv_init", scope: !2, file: !2, line: 433, type: !3036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3039 = !DISubprogram(name: "sam_parse_region", scope: !185, file: !185, line: 1374, type: !3040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!310, !183, !310, !542, !2229, !2229, !98}
!3042 = !DISubprogram(name: "sam_hdr_nref", scope: !185, file: !185, line: 465, type: !3043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!98, !2457}
!3045 = !DISubprogram(name: "faidx_has_seq", scope: !319, file: !319, line: 276, type: !3046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!98, !2475, !310}
!3048 = distinct !DISubprogram(name: "kh_init_kh_rg", scope: !168, file: !168, line: 42, type: !3049, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!355}
!3051 = !DILocation(line: 42, column: 1, scope: !3048)
!3052 = !DISubprogram(name: "sam_hdr_count_lines", scope: !185, file: !185, line: 666, type: !3053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!98, !183, !310}
!3055 = !DISubprogram(name: "sam_hdr_find_tag_pos", scope: !185, file: !185, line: 725, type: !3056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!98, !183, !310, !98, !310, !2124}
!3058 = !DISubprogram(name: "strcmp", scope: !2463, file: !2463, line: 156, type: !3059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!98, !310, !310}
!3061 = distinct !DISubprogram(name: "kh_put_kh_rg", scope: !168, file: !168, line: 42, type: !3062, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3064)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!360, !355, !370, !542}
!3064 = !{!3065, !3066, !3067, !3068, !3069, !3071, !3072, !3073, !3074, !3075}
!3065 = !DILocalVariable(name: "h", arg: 1, scope: !3061, file: !168, line: 42, type: !355)
!3066 = !DILocalVariable(name: "key", arg: 2, scope: !3061, file: !168, line: 42, type: !370)
!3067 = !DILocalVariable(name: "ret", arg: 3, scope: !3061, file: !168, line: 42, type: !542)
!3068 = !DILocalVariable(name: "x", scope: !3061, file: !168, line: 42, type: !360)
!3069 = !DILocalVariable(name: "k", scope: !3070, file: !168, line: 42, type: !360)
!3070 = distinct !DILexicalBlock(scope: !3061, file: !168, line: 42, column: 1)
!3071 = !DILocalVariable(name: "i", scope: !3070, file: !168, line: 42, type: !360)
!3072 = !DILocalVariable(name: "site", scope: !3070, file: !168, line: 42, type: !360)
!3073 = !DILocalVariable(name: "last", scope: !3070, file: !168, line: 42, type: !360)
!3074 = !DILocalVariable(name: "mask", scope: !3070, file: !168, line: 42, type: !360)
!3075 = !DILocalVariable(name: "step", scope: !3070, file: !168, line: 42, type: !360)
!3076 = !DILocation(line: 42, column: 1, scope: !3061)
!3077 = !DILocation(line: 42, column: 1, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3061, file: !168, line: 42, column: 1)
!3079 = !{!705, !586, i64 8}
!3080 = !{!705, !586, i64 12}
!3081 = !DILocation(line: 42, column: 1, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !168, line: 42, column: 1)
!3083 = distinct !DILexicalBlock(scope: !3078, file: !168, line: 42, column: 1)
!3084 = !DILocation(line: 42, column: 1, scope: !3083)
!3085 = !DILocation(line: 42, column: 1, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !168, line: 42, column: 1)
!3087 = distinct !DILexicalBlock(scope: !3082, file: !168, line: 42, column: 1)
!3088 = !DILocation(line: 42, column: 1, scope: !3087)
!3089 = !DILocation(line: 42, column: 1, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3086, file: !168, line: 42, column: 1)
!3091 = !DILocation(line: 42, column: 1, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3082, file: !168, line: 42, column: 1)
!3093 = !DILocation(line: 42, column: 1, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3092, file: !168, line: 42, column: 1)
!3095 = !DILocation(line: 42, column: 1, scope: !3070)
!3096 = !DILocation(line: 42, column: 1, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3070, file: !168, line: 42, column: 1)
!3098 = !DILocation(line: 42, column: 1, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3097, file: !168, line: 42, column: 1)
!3100 = !DILocation(line: 0, scope: !3099)
!3101 = !DILocation(line: 42, column: 1, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !168, line: 42, column: 1)
!3103 = distinct !DILexicalBlock(scope: !3099, file: !168, line: 42, column: 1)
!3104 = !DILocation(line: 42, column: 1, scope: !3103)
!3105 = !DILocation(line: 42, column: 1, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3103, file: !168, line: 42, column: 1)
!3107 = !DILocation(line: 42, column: 1, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3106, file: !168, line: 42, column: 1)
!3109 = distinct !{!3109, !3098, !3098, !1065}
!3110 = !DILocation(line: 42, column: 1, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3099, file: !168, line: 42, column: 1)
!3112 = !DILocation(line: 42, column: 1, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !168, line: 42, column: 1)
!3114 = distinct !DILexicalBlock(scope: !3111, file: !168, line: 42, column: 1)
!3115 = !DILocation(line: 42, column: 1, scope: !3114)
!3116 = !DILocation(line: 42, column: 1, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3061, file: !168, line: 42, column: 1)
!3118 = !DILocation(line: 42, column: 1, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3117, file: !168, line: 42, column: 1)
!3120 = !DILocation(line: 42, column: 1, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3117, file: !168, line: 42, column: 1)
!3122 = !DILocation(line: 42, column: 1, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3121, file: !168, line: 42, column: 1)
!3124 = distinct !DISubprogram(name: "ks_release", scope: !235, file: !235, line: 217, type: !3125, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!100, !2124}
!3127 = !{!3128, !3129}
!3128 = !DILocalVariable(name: "s", arg: 1, scope: !3124, file: !235, line: 217, type: !2124)
!3129 = !DILocalVariable(name: "ss", scope: !3124, file: !235, line: 219, type: !100)
!3130 = !DILocation(line: 217, column: 43, scope: !3124)
!3131 = !DILocation(line: 219, column: 2, scope: !3124)
!3132 = !DILocation(line: 219, column: 8, scope: !3124)
!3133 = !DILocation(line: 219, column: 13, scope: !3124)
!3134 = !DILocation(line: 219, column: 16, scope: !3124)
!3135 = !DILocation(line: 220, column: 9, scope: !3124)
!3136 = !DILocation(line: 220, column: 12, scope: !3124)
!3137 = !DILocation(line: 220, column: 14, scope: !3124)
!3138 = !{!1568, !587, i64 8}
!3139 = !DILocation(line: 220, column: 2, scope: !3124)
!3140 = !DILocation(line: 220, column: 5, scope: !3124)
!3141 = !DILocation(line: 220, column: 7, scope: !3124)
!3142 = !{!1568, !587, i64 0}
!3143 = !DILocation(line: 221, column: 2, scope: !3124)
!3144 = !DILocation(line: 221, column: 5, scope: !3124)
!3145 = !DILocation(line: 221, column: 7, scope: !3124)
!3146 = !DILocation(line: 222, column: 9, scope: !3124)
!3147 = !DILocation(line: 223, column: 1, scope: !3124)
!3148 = !DILocation(line: 222, column: 2, scope: !3124)
!3149 = !DISubprogram(name: "perror", scope: !2467, file: !2467, line: 804, type: !3150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{null, !310}
!3152 = distinct !DISubprogram(name: "kh_resize_kh_rg", scope: !168, file: !168, line: 42, type: !3153, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!98, !355, !360}
!3155 = !{!3156, !3157, !3158, !3159, !3160, !3166, !3169, !3177, !3178, !3179, !3181, !3182, !3183, !3187}
!3156 = !DILocalVariable(name: "h", arg: 1, scope: !3152, file: !168, line: 42, type: !355)
!3157 = !DILocalVariable(name: "new_n_buckets", arg: 2, scope: !3152, file: !168, line: 42, type: !360)
!3158 = !DILocalVariable(name: "new_flags", scope: !3152, file: !168, line: 42, type: !367)
!3159 = !DILocalVariable(name: "j", scope: !3152, file: !168, line: 42, type: !360)
!3160 = !DILocalVariable(name: "new_keys", scope: !3161, file: !168, line: 42, type: !369)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !168, line: 42, column: 1)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !168, line: 42, column: 1)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !168, line: 42, column: 1)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !168, line: 42, column: 1)
!3165 = distinct !DILexicalBlock(scope: !3152, file: !168, line: 42, column: 1)
!3166 = !DILocalVariable(name: "new_vals", scope: !3167, file: !168, line: 42, type: !372)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !168, line: 42, column: 1)
!3168 = distinct !DILexicalBlock(scope: !3161, file: !168, line: 42, column: 1)
!3169 = !DILocalVariable(name: "key", scope: !3170, file: !168, line: 42, type: !370)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !168, line: 42, column: 1)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !168, line: 42, column: 1)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !168, line: 42, column: 1)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !168, line: 42, column: 1)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !168, line: 42, column: 1)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !168, line: 42, column: 1)
!3176 = distinct !DILexicalBlock(scope: !3152, file: !168, line: 42, column: 1)
!3177 = !DILocalVariable(name: "val", scope: !3170, file: !168, line: 42, type: !310)
!3178 = !DILocalVariable(name: "new_mask", scope: !3170, file: !168, line: 42, type: !360)
!3179 = !DILocalVariable(name: "k", scope: !3180, file: !168, line: 42, type: !360)
!3180 = distinct !DILexicalBlock(scope: !3170, file: !168, line: 42, column: 1)
!3181 = !DILocalVariable(name: "i", scope: !3180, file: !168, line: 42, type: !360)
!3182 = !DILocalVariable(name: "step", scope: !3180, file: !168, line: 42, type: !360)
!3183 = !DILocalVariable(name: "tmp", scope: !3184, file: !168, line: 42, type: !370)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !168, line: 42, column: 1)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !168, line: 42, column: 1)
!3186 = distinct !DILexicalBlock(scope: !3180, file: !168, line: 42, column: 1)
!3187 = !DILocalVariable(name: "tmp", scope: !3188, file: !168, line: 42, type: !310)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !168, line: 42, column: 1)
!3189 = distinct !DILexicalBlock(scope: !3185, file: !168, line: 42, column: 1)
!3190 = !DILocation(line: 42, column: 1, scope: !3152)
!3191 = !DILocation(line: 42, column: 1, scope: !3165)
!3192 = !DILocation(line: 42, column: 1, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3165, file: !168, line: 42, column: 1)
!3194 = !DILocation(line: 42, column: 1, scope: !3164)
!3195 = !DILocation(line: 42, column: 1, scope: !3163)
!3196 = !DILocation(line: 42, column: 1, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3163, file: !168, line: 42, column: 1)
!3198 = !DILocation(line: 42, column: 1, scope: !3162)
!3199 = !DILocation(line: 42, column: 1, scope: !3161)
!3200 = !DILocation(line: 42, column: 1, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3161, file: !168, line: 42, column: 1)
!3202 = !DILocation(line: 42, column: 1, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3201, file: !168, line: 42, column: 1)
!3204 = !DILocation(line: 42, column: 1, scope: !3167)
!3205 = !{!705, !564, i64 32}
!3206 = !DILocation(line: 42, column: 1, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3167, file: !168, line: 42, column: 1)
!3208 = !DILocation(line: 42, column: 1, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3207, file: !168, line: 42, column: 1)
!3210 = !DILocation(line: 42, column: 1, scope: !3168)
!3211 = !DILocation(line: 42, column: 1, scope: !3176)
!3212 = !DILocation(line: 42, column: 1, scope: !3174)
!3213 = !DILocation(line: 42, column: 1, scope: !3173)
!3214 = !DILocation(line: 42, column: 1, scope: !3171)
!3215 = !DILocation(line: 42, column: 1, scope: !3172)
!3216 = !DILocation(line: 42, column: 1, scope: !3170)
!3217 = !DILocation(line: 42, column: 1, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3170, file: !168, line: 42, column: 1)
!3219 = !DILocation(line: 42, column: 1, scope: !3180)
!3220 = distinct !{!3220, !3219, !3219, !1065}
!3221 = !DILocation(line: 42, column: 1, scope: !3186)
!3222 = !DILocation(line: 42, column: 1, scope: !3184)
!3223 = !DILocation(line: 42, column: 1, scope: !3185)
!3224 = !DILocation(line: 42, column: 1, scope: !3188)
!3225 = !DILocation(line: 42, column: 1, scope: !3189)
!3226 = !DILocation(line: 42, column: 1, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3186, file: !168, line: 42, column: 1)
!3228 = !DILocation(line: 42, column: 1, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3227, file: !168, line: 42, column: 1)
!3230 = distinct !{!3230, !3216, !3216}
!3231 = distinct !{!3231, !3212, !3212, !1065}
!3232 = !DILocation(line: 42, column: 1, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3175, file: !168, line: 42, column: 1)
!3234 = !DILocation(line: 42, column: 1, scope: !3175)
!3235 = !DILocation(line: 42, column: 1, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3233, file: !168, line: 42, column: 1)
!3237 = !DILocation(line: 42, column: 1, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3236, file: !168, line: 42, column: 1)
!3239 = distinct !DISubprogram(name: "__ac_X31_hash_string", scope: !361, file: !361, line: 399, type: !3240, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3242)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!360, !310}
!3242 = !{!3243, !3244}
!3243 = !DILocalVariable(name: "s", arg: 1, scope: !3239, file: !361, line: 399, type: !310)
!3244 = !DILocalVariable(name: "h", scope: !3239, file: !361, line: 401, type: !360)
!3245 = !DILocation(line: 399, column: 59, scope: !3239)
!3246 = !DILocation(line: 401, column: 2, scope: !3239)
!3247 = !DILocation(line: 401, column: 10, scope: !3239)
!3248 = !DILocation(line: 401, column: 24, scope: !3239)
!3249 = !DILocation(line: 401, column: 23, scope: !3239)
!3250 = !DILocation(line: 401, column: 14, scope: !3239)
!3251 = !DILocation(line: 402, column: 6, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3239, file: !361, line: 402, column: 6)
!3253 = !DILocation(line: 402, column: 6, scope: !3239)
!3254 = !DILocation(line: 402, column: 14, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3252, file: !361, line: 402, column: 9)
!3256 = !DILocation(line: 402, column: 21, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3255, file: !361, line: 402, column: 9)
!3258 = !DILocation(line: 402, column: 20, scope: !3257)
!3259 = !DILocation(line: 402, column: 9, scope: !3255)
!3260 = !DILocation(line: 402, column: 34, scope: !3257)
!3261 = !DILocation(line: 402, column: 36, scope: !3257)
!3262 = !DILocation(line: 402, column: 44, scope: !3257)
!3263 = !DILocation(line: 402, column: 42, scope: !3257)
!3264 = !DILocation(line: 402, column: 58, scope: !3257)
!3265 = !DILocation(line: 402, column: 57, scope: !3257)
!3266 = !DILocation(line: 402, column: 48, scope: !3257)
!3267 = !DILocation(line: 402, column: 46, scope: !3257)
!3268 = !DILocation(line: 402, column: 31, scope: !3257)
!3269 = !DILocation(line: 402, column: 29, scope: !3257)
!3270 = !DILocation(line: 402, column: 24, scope: !3257)
!3271 = !DILocation(line: 402, column: 9, scope: !3257)
!3272 = distinct !{!3272, !3259, !3273, !1065}
!3273 = !DILocation(line: 402, column: 58, scope: !3255)
!3274 = !DILocation(line: 403, column: 9, scope: !3239)
!3275 = !DILocation(line: 404, column: 1, scope: !3239)
!3276 = !DILocation(line: 403, column: 2, scope: !3239)
!3277 = !DISubprogram(name: "malloc", scope: !727, file: !727, line: 540, type: !3278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!165, !195}
!3280 = !DISubprogram(name: "realloc", scope: !727, file: !727, line: 551, type: !3281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!165, !165, !195}
!3283 = distinct !DISubprogram(name: "kh_destroy_kh_rg", scope: !168, file: !168, line: 42, type: !2053, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3284)
!3284 = !{!3285}
!3285 = !DILocalVariable(name: "h", arg: 1, scope: !3283, file: !168, line: 42, type: !355)
!3286 = !DILocation(line: 42, column: 1, scope: !3283)
!3287 = !DILocation(line: 42, column: 1, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3283, file: !168, line: 42, column: 1)
!3289 = !DILocation(line: 42, column: 1, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3288, file: !168, line: 42, column: 1)
!3291 = distinct !DISubprogram(name: "ks_initialize", scope: !235, file: !235, line: 148, type: !2147, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3292)
!3292 = !{!3293}
!3293 = !DILocalVariable(name: "s", arg: 1, scope: !3291, file: !235, line: 148, type: !2124)
!3294 = !DILocation(line: 148, column: 45, scope: !3291)
!3295 = !DILocation(line: 150, column: 12, scope: !3291)
!3296 = !DILocation(line: 150, column: 15, scope: !3291)
!3297 = !DILocation(line: 150, column: 17, scope: !3291)
!3298 = !DILocation(line: 150, column: 5, scope: !3291)
!3299 = !DILocation(line: 150, column: 8, scope: !3291)
!3300 = !DILocation(line: 150, column: 10, scope: !3291)
!3301 = !DILocation(line: 151, column: 5, scope: !3291)
!3302 = !DILocation(line: 151, column: 8, scope: !3291)
!3303 = !DILocation(line: 151, column: 10, scope: !3291)
!3304 = !DILocation(line: 152, column: 1, scope: !3291)
!3305 = !DISubprogram(name: "hts_log", scope: !156, file: !156, line: 75, type: !3306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !155, !310, !310, null}
!3308 = !DISubprogram(name: "hts_itr_multi_next", scope: !104, file: !104, line: 1352, type: !3309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!98, !721, !2176, !165}
!3311 = !DISubprogram(name: "hts_itr_next", scope: !104, file: !104, line: 1315, type: !3312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!98, !247, !2176, !165, !165}
!3314 = !DISubprogram(name: "bam_aux_get", scope: !185, file: !185, line: 1641, type: !3315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!780, !2595, !310}
!3317 = distinct !DISubprogram(name: "kh_get_kh_rg", scope: !168, file: !168, line: 42, type: !3318, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3322)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!360, !3320, !370}
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!3322 = !{!3323, !3324, !3325, !3328, !3329, !3330, !3331}
!3323 = !DILocalVariable(name: "h", arg: 1, scope: !3317, file: !168, line: 42, type: !3320)
!3324 = !DILocalVariable(name: "key", arg: 2, scope: !3317, file: !168, line: 42, type: !370)
!3325 = !DILocalVariable(name: "k", scope: !3326, file: !168, line: 42, type: !360)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !168, line: 42, column: 1)
!3327 = distinct !DILexicalBlock(scope: !3317, file: !168, line: 42, column: 1)
!3328 = !DILocalVariable(name: "i", scope: !3326, file: !168, line: 42, type: !360)
!3329 = !DILocalVariable(name: "last", scope: !3326, file: !168, line: 42, type: !360)
!3330 = !DILocalVariable(name: "mask", scope: !3326, file: !168, line: 42, type: !360)
!3331 = !DILocalVariable(name: "step", scope: !3326, file: !168, line: 42, type: !360)
!3332 = !DILocation(line: 42, column: 1, scope: !3317)
!3333 = !DILocation(line: 42, column: 1, scope: !3327)
!3334 = !DILocation(line: 42, column: 1, scope: !3326)
!3335 = !DILocation(line: 0, scope: !3326)
!3336 = !DILocation(line: 42, column: 1, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3326, file: !168, line: 42, column: 1)
!3338 = !DILocation(line: 42, column: 1, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3337, file: !168, line: 42, column: 1)
!3340 = distinct !{!3340, !3334, !3334, !1065}
!3341 = !DISubprogram(name: "sam_global_opt_help", scope: !517, file: !517, line: 98, type: !3342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{null, !2481, !310}
!3344 = !DISubprogram(name: "vfprintf", scope: !2467, file: !2467, line: 365, type: !3345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!98, !2480, !2471, !3347}
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)

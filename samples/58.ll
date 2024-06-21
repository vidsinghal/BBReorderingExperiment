; ModuleID = 'samples/58.bc'
source_filename = "bam_tview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.AbstractTview = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kh_kh_rg_s = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.kstring_t = type { i64, i64, ptr }
%struct.bcf_callret1_t = type { i32, i32, ptr, ptr, [4 x float], [16 x double], [25 x float] }
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
@.str.19 = private unnamed_addr constant [10 x i8] c"input-fmt\00", align 1, !dbg !433
@.str.20 = private unnamed_addr constant [17 x i8] c"input-fmt-option\00", align 1, !dbg !435
@.str.21 = private unnamed_addr constant [11 x i8] c"output-fmt\00", align 1, !dbg !437
@.str.22 = private unnamed_addr constant [18 x i8] c"output-fmt-option\00", align 1, !dbg !439
@.str.23 = private unnamed_addr constant [10 x i8] c"reference\00", align 1, !dbg !444
@.str.24 = private unnamed_addr constant [8 x i8] c"threads\00", align 1, !dbg !446
@.str.25 = private unnamed_addr constant [12 x i8] c"write-index\00", align 1, !dbg !451
@.str.26 = private unnamed_addr constant [10 x i8] c"verbosity\00", align 1, !dbg !453
@.str.27 = private unnamed_addr constant [10 x i8] c"s:p:d:Xw:\00", align 1, !dbg !455
@optarg = external global ptr, align 8
@.str.28 = private unnamed_addr constant [24 x i8] c"Could not parse: -w %s\0A\00", align 1, !dbg !457
@optind = external global i32, align 4
@.str.29 = private unnamed_addr constant [62 x i8] c"The -w option is currently supported only with -d T and -d H\0A\00", align 1, !dbg !462
@.str.30 = private unnamed_addr constant [53 x i8] c"Incorrect number of arguments provided! Aborting...\0A\00", align 1, !dbg !467
@.str.31 = private unnamed_addr constant [19 x i8] c"cannot create view\00", align 1, !dbg !472
@.str.32 = private unnamed_addr constant [39 x i8] c"Unknown reference or malformed region\0A\00", align 1, !dbg !477
@.str.33 = private unnamed_addr constant [58 x i8] c"None of the BAM sequence names present in the fasta file\0A\00", align 1, !dbg !482
@.str.34 = private unnamed_addr constant [3 x i8] c"RG\00", align 1, !dbg !487
@.str.35 = private unnamed_addr constant [22 x i8] c"couldn't parse header\00", align 1, !dbg !492
@.str.36 = private unnamed_addr constant [3 x i8] c"ID\00", align 1, !dbg !497
@.str.37 = private unnamed_addr constant [3 x i8] c"SM\00", align 1, !dbg !499
@__func__.sam_itr_next = private unnamed_addr constant [13 x i8] c"sam_itr_next\00", align 1, !dbg !504
@.str.38 = private unnamed_addr constant [23 x i8] c"%s not BGZF compressed\00", align 1, !dbg !509
@.str.39 = private unnamed_addr constant [5 x i8] c"File\00", align 1, !dbg !514
@.str.40 = private unnamed_addr constant [14 x i8] c"Null iterator\00", align 1, !dbg !516
@.str.41 = private unnamed_addr constant [334 x i8] c"Usage: samtools tview [options] <aln.bam> [ref.fasta]\0AOptions:\0A   -d display      output as (H)tml or (C)urses or (T)ext \0A   -X              include customized index file\0A   -p chr:pos      go directly to this position\0A   -s STR          display only reads from this sample or group\0A   -w INT          display width (with -d T only)\0A\00", align 1, !dbg !521
@.str.42 = private unnamed_addr constant [9 x i8] c"-.--.--.\00", align 1, !dbg !526

; Function Attrs: nounwind uwtable
define dso_local i32 @base_tv_init(ptr noundef %tv, ptr noundef %fn, ptr noundef %fn_fa, ptr noundef %fn_idx, ptr noundef %samples, ptr noundef %fmt) #0 !dbg !576 {
entry:
  %tv.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %fn_fa.addr = alloca ptr, align 8
  %fn_idx.addr = alloca ptr, align 8
  %samples.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  store ptr %tv, ptr %tv.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %tv.addr, metadata !582, metadata !DIExpression()), !dbg !592
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !583, metadata !DIExpression()), !dbg !593
  store ptr %fn_fa, ptr %fn_fa.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %fn_fa.addr, metadata !584, metadata !DIExpression()), !dbg !594
  store ptr %fn_idx, ptr %fn_idx.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %fn_idx.addr, metadata !585, metadata !DIExpression()), !dbg !595
  store ptr %samples, ptr %samples.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %samples.addr, metadata !586, metadata !DIExpression()), !dbg !596
  store ptr %fmt, ptr %fmt.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !587, metadata !DIExpression()), !dbg !597
  %0 = load ptr, ptr %tv.addr, align 8, !dbg !598, !tbaa !588
  %cmp = icmp ne ptr %0, null, !dbg !598
  br i1 %cmp, label %if.then, label %if.else, !dbg !601

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !601

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 106, ptr noundef @__PRETTY_FUNCTION__.base_tv_init) #16, !dbg !598
  unreachable, !dbg !598

if.end:                                           ; preds = %if.then
  %1 = load ptr, ptr %fn.addr, align 8, !dbg !602, !tbaa !588
  %cmp1 = icmp ne ptr %1, null, !dbg !602
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !605

if.then2:                                         ; preds = %if.end
  br label %if.end4, !dbg !605

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 107, ptr noundef @__PRETTY_FUNCTION__.base_tv_init) #16, !dbg !602
  unreachable, !dbg !602

if.end4:                                          ; preds = %if.then2
  %2 = load ptr, ptr %tv.addr, align 8, !dbg !606, !tbaa !588
  %mrow = getelementptr inbounds %struct.AbstractTview, ptr %2, i32 0, i32 0, !dbg !607
  store i32 24, ptr %mrow, align 8, !dbg !608, !tbaa !609
  %3 = load ptr, ptr %tv.addr, align 8, !dbg !613, !tbaa !588
  %mcol = getelementptr inbounds %struct.AbstractTview, ptr %3, i32 0, i32 1, !dbg !614
  store i32 80, ptr %mcol, align 4, !dbg !615, !tbaa !616
  %4 = load ptr, ptr %tv.addr, align 8, !dbg !617, !tbaa !588
  %color_for = getelementptr inbounds %struct.AbstractTview, ptr %4, i32 0, i32 15, !dbg !618
  store i32 0, ptr %color_for, align 8, !dbg !619, !tbaa !620
  %5 = load ptr, ptr %tv.addr, align 8, !dbg !621, !tbaa !588
  %is_dot = getelementptr inbounds %struct.AbstractTview, ptr %5, i32 0, i32 16, !dbg !622
  store i32 1, ptr %is_dot, align 4, !dbg !623, !tbaa !624
  %6 = load ptr, ptr %fn.addr, align 8, !dbg !625, !tbaa !588
  %7 = load ptr, ptr %fmt.addr, align 8, !dbg !625, !tbaa !588
  %call = call ptr @hts_open_format(ptr noundef %6, ptr noundef @.str.3, ptr noundef %7), !dbg !625
  %8 = load ptr, ptr %tv.addr, align 8, !dbg !626, !tbaa !588
  %fp = getelementptr inbounds %struct.AbstractTview, ptr %8, i32 0, i32 5, !dbg !627
  store ptr %call, ptr %fp, align 8, !dbg !628, !tbaa !629
  %9 = load ptr, ptr %tv.addr, align 8, !dbg !630, !tbaa !588
  %fp5 = getelementptr inbounds %struct.AbstractTview, ptr %9, i32 0, i32 5, !dbg !632
  %10 = load ptr, ptr %fp5, align 8, !dbg !632, !tbaa !629
  %cmp6 = icmp eq ptr %10, null, !dbg !633
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !634

if.then7:                                         ; preds = %if.end4
  %11 = load ptr, ptr %fn.addr, align 8, !dbg !635, !tbaa !588
  call void (ptr, ptr, ...) @print_error_errno(ptr noundef @.str.4, ptr noundef @.str.5, ptr noundef %11), !dbg !637
  call void @exit(i32 noundef 1) #16, !dbg !638
  unreachable, !dbg !638

if.end8:                                          ; preds = %if.end4
  %12 = load ptr, ptr %tv.addr, align 8, !dbg !639, !tbaa !588
  %fp9 = getelementptr inbounds %struct.AbstractTview, ptr %12, i32 0, i32 5, !dbg !639
  %13 = load ptr, ptr %fp9, align 8, !dbg !639, !tbaa !629
  %tobool = icmp ne ptr %13, null, !dbg !639
  br i1 %tobool, label %if.then10, label %if.else11, !dbg !642

if.then10:                                        ; preds = %if.end8
  br label %if.end12, !dbg !642

if.else11:                                        ; preds = %if.end8
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 119, ptr noundef @__PRETTY_FUNCTION__.base_tv_init) #16, !dbg !639
  unreachable, !dbg !639

if.end12:                                         ; preds = %if.then10
  %14 = load ptr, ptr %tv.addr, align 8, !dbg !643, !tbaa !588
  %fp13 = getelementptr inbounds %struct.AbstractTview, ptr %14, i32 0, i32 5, !dbg !644
  %15 = load ptr, ptr %fp13, align 8, !dbg !644, !tbaa !629
  %call14 = call ptr @sam_hdr_read(ptr noundef %15), !dbg !645
  %16 = load ptr, ptr %tv.addr, align 8, !dbg !646, !tbaa !588
  %header = getelementptr inbounds %struct.AbstractTview, ptr %16, i32 0, i32 4, !dbg !647
  store ptr %call14, ptr %header, align 8, !dbg !648, !tbaa !649
  %17 = load ptr, ptr %tv.addr, align 8, !dbg !650, !tbaa !588
  %header15 = getelementptr inbounds %struct.AbstractTview, ptr %17, i32 0, i32 4, !dbg !652
  %18 = load ptr, ptr %header15, align 8, !dbg !652, !tbaa !649
  %cmp16 = icmp eq ptr %18, null, !dbg !653
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !654

if.then17:                                        ; preds = %if.end12
  %19 = load ptr, ptr %fn.addr, align 8, !dbg !655, !tbaa !588
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str.4, ptr noundef @.str.7, ptr noundef %19), !dbg !657
  call void @exit(i32 noundef 1) #16, !dbg !658
  unreachable, !dbg !658

if.end18:                                         ; preds = %if.end12
  %20 = load ptr, ptr %fn_idx.addr, align 8, !dbg !659, !tbaa !588
  %cmp19 = icmp ne ptr %20, null, !dbg !661
  br i1 %cmp19, label %if.then20, label %if.else23, !dbg !662

if.then20:                                        ; preds = %if.end18
  %21 = load ptr, ptr %tv.addr, align 8, !dbg !663, !tbaa !588
  %fp21 = getelementptr inbounds %struct.AbstractTview, ptr %21, i32 0, i32 5, !dbg !665
  %22 = load ptr, ptr %fp21, align 8, !dbg !665, !tbaa !629
  %23 = load ptr, ptr %fn.addr, align 8, !dbg !666, !tbaa !588
  %24 = load ptr, ptr %fn_idx.addr, align 8, !dbg !667, !tbaa !588
  %call22 = call ptr @sam_index_load2(ptr noundef %22, ptr noundef %23, ptr noundef %24), !dbg !668
  %25 = load ptr, ptr %tv.addr, align 8, !dbg !669, !tbaa !588
  %idx = getelementptr inbounds %struct.AbstractTview, ptr %25, i32 0, i32 2, !dbg !670
  store ptr %call22, ptr %idx, align 8, !dbg !671, !tbaa !672
  br label %if.end27, !dbg !673

if.else23:                                        ; preds = %if.end18
  %26 = load ptr, ptr %tv.addr, align 8, !dbg !674, !tbaa !588
  %fp24 = getelementptr inbounds %struct.AbstractTview, ptr %26, i32 0, i32 5, !dbg !676
  %27 = load ptr, ptr %fp24, align 8, !dbg !676, !tbaa !629
  %28 = load ptr, ptr %fn.addr, align 8, !dbg !677, !tbaa !588
  %call25 = call ptr @sam_index_load(ptr noundef %27, ptr noundef %28), !dbg !678
  %29 = load ptr, ptr %tv.addr, align 8, !dbg !679, !tbaa !588
  %idx26 = getelementptr inbounds %struct.AbstractTview, ptr %29, i32 0, i32 2, !dbg !680
  store ptr %call25, ptr %idx26, align 8, !dbg !681, !tbaa !672
  br label %if.end27

if.end27:                                         ; preds = %if.else23, %if.then20
  %30 = load ptr, ptr %tv.addr, align 8, !dbg !682, !tbaa !588
  %idx28 = getelementptr inbounds %struct.AbstractTview, ptr %30, i32 0, i32 2, !dbg !684
  %31 = load ptr, ptr %idx28, align 8, !dbg !684, !tbaa !672
  %cmp29 = icmp eq ptr %31, null, !dbg !685
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !686

if.then30:                                        ; preds = %if.end27
  %32 = load ptr, ptr %fn.addr, align 8, !dbg !687, !tbaa !588
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str.4, ptr noundef @.str.8, ptr noundef %32), !dbg !689
  call void @exit(i32 noundef 1) #16, !dbg !690
  unreachable, !dbg !690

if.end31:                                         ; preds = %if.end27
  %33 = load ptr, ptr %tv.addr, align 8, !dbg !691, !tbaa !588
  %call32 = call ptr @bam_lplbuf_init(ptr noundef @tv_pl_func, ptr noundef %33), !dbg !692
  %34 = load ptr, ptr %tv.addr, align 8, !dbg !693, !tbaa !588
  %lplbuf = getelementptr inbounds %struct.AbstractTview, ptr %34, i32 0, i32 3, !dbg !694
  store ptr %call32, ptr %lplbuf, align 8, !dbg !695, !tbaa !696
  %35 = load ptr, ptr %fn_fa.addr, align 8, !dbg !697, !tbaa !588
  %tobool33 = icmp ne ptr %35, null, !dbg !697
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !699

if.then34:                                        ; preds = %if.end31
  %36 = load ptr, ptr %fn_fa.addr, align 8, !dbg !700, !tbaa !588
  %call35 = call ptr @fai_load(ptr noundef %36), !dbg !701
  %37 = load ptr, ptr %tv.addr, align 8, !dbg !702, !tbaa !588
  %fai = getelementptr inbounds %struct.AbstractTview, ptr %37, i32 0, i32 6, !dbg !703
  store ptr %call35, ptr %fai, align 8, !dbg !704, !tbaa !705
  br label %if.end36, !dbg !702

if.end36:                                         ; preds = %if.then34, %if.end31
  %call37 = call ptr @bcf_call_init(double noundef 8.300000e-01, i32 noundef 13), !dbg !706
  %38 = load ptr, ptr %tv.addr, align 8, !dbg !707, !tbaa !588
  %bca = getelementptr inbounds %struct.AbstractTview, ptr %38, i32 0, i32 7, !dbg !708
  store ptr %call37, ptr %bca, align 8, !dbg !709, !tbaa !710
  %39 = load ptr, ptr %tv.addr, align 8, !dbg !711, !tbaa !588
  %ins = getelementptr inbounds %struct.AbstractTview, ptr %39, i32 0, i32 17, !dbg !712
  store i32 1, ptr %ins, align 8, !dbg !713, !tbaa !714
  %40 = load ptr, ptr %samples.addr, align 8, !dbg !715, !tbaa !588
  %tobool38 = icmp ne ptr %40, null, !dbg !715
  br i1 %tobool38, label %if.then39, label %if.end46, !dbg !717

if.then39:                                        ; preds = %if.end36
  %41 = load ptr, ptr %tv.addr, align 8, !dbg !718, !tbaa !588
  %header40 = getelementptr inbounds %struct.AbstractTview, ptr %41, i32 0, i32 4, !dbg !720
  %42 = load ptr, ptr %header40, align 8, !dbg !720, !tbaa !649
  %43 = load ptr, ptr %samples.addr, align 8, !dbg !721, !tbaa !588
  %call41 = call ptr @get_rg_sample(ptr noundef %42, ptr noundef %43), !dbg !722
  %44 = load ptr, ptr %tv.addr, align 8, !dbg !723, !tbaa !588
  %rg_hash = getelementptr inbounds %struct.AbstractTview, ptr %44, i32 0, i32 22, !dbg !724
  store ptr %call41, ptr %rg_hash, align 8, !dbg !725, !tbaa !726
  %45 = load ptr, ptr %tv.addr, align 8, !dbg !727, !tbaa !588
  %rg_hash42 = getelementptr inbounds %struct.AbstractTview, ptr %45, i32 0, i32 22, !dbg !727
  %46 = load ptr, ptr %rg_hash42, align 8, !dbg !727, !tbaa !726
  %size = getelementptr inbounds %struct.kh_kh_rg_s, ptr %46, i32 0, i32 1, !dbg !727
  %47 = load i32, ptr %size, align 4, !dbg !727, !tbaa !729
  %cmp43 = icmp eq i32 %47, 0, !dbg !731
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !732

if.then44:                                        ; preds = %if.then39
  %48 = load ptr, ptr %samples.addr, align 8, !dbg !733, !tbaa !588
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str.4, ptr noundef @.str.9, ptr noundef %48), !dbg !735
  call void @exit(i32 noundef 1) #16, !dbg !736
  unreachable, !dbg !736

if.end45:                                         ; preds = %if.then39
  br label %if.end46, !dbg !737

if.end46:                                         ; preds = %if.end45, %if.end36
  ret i32 0, !dbg !738
}

; Function Attrs: noreturn nounwind
declare !dbg !739 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare !dbg !743 ptr @hts_open_format(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !747 void @print_error_errno(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !751 void @exit(i32 noundef) #1

declare !dbg !755 ptr @sam_hdr_read(ptr noundef) #2

declare !dbg !758 void @print_error(ptr noundef, ptr noundef, ...) #2

declare !dbg !759 ptr @sam_index_load2(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !762 ptr @sam_index_load(ptr noundef, ptr noundef) #2

declare !dbg !765 ptr @bam_lplbuf_init(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @tv_pl_func(i32 noundef %tid, i64 noundef %pos, i32 noundef %n, ptr noundef %pl, ptr noundef %data) #0 !dbg !825 {
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
  %bcr = alloca %struct.bcf_callret1_t, align 8
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
  store i32 %tid, ptr %tid.addr, align 4, !tbaa !974
  tail call void @llvm.dbg.declare(metadata ptr %tid.addr, metadata !827, metadata !DIExpression()), !dbg !975
  store i64 %pos, ptr %pos.addr, align 8, !tbaa !976
  tail call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !828, metadata !DIExpression()), !dbg !977
  store i32 %n, ptr %n.addr, align 4, !tbaa !974
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !829, metadata !DIExpression()), !dbg !978
  store ptr %pl, ptr %pl.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %pl.addr, metadata !830, metadata !DIExpression()), !dbg !979
  store ptr %data, ptr %data.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !831, metadata !DIExpression()), !dbg !980
  call void @llvm.lifetime.start.p0(i64 8, ptr %tv) #17, !dbg !981
  tail call void @llvm.dbg.declare(metadata ptr %tv, metadata !832, metadata !DIExpression()), !dbg !982
  %0 = load ptr, ptr %data.addr, align 8, !dbg !983, !tbaa !588
  store ptr %0, ptr %tv, align 8, !dbg !982, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #17, !dbg !984
  tail call void @llvm.dbg.declare(metadata ptr %cp, metadata !833, metadata !DIExpression()), !dbg !985
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !986
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !834, metadata !DIExpression()), !dbg !987
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #17, !dbg !986
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !835, metadata !DIExpression()), !dbg !988
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #17, !dbg !986
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !836, metadata !DIExpression()), !dbg !989
  call void @llvm.lifetime.start.p0(i64 4, ptr %rb) #17, !dbg !986
  tail call void @llvm.dbg.declare(metadata ptr %rb, metadata !837, metadata !DIExpression()), !dbg !990
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr) #17, !dbg !986
  tail call void @llvm.dbg.declare(metadata ptr %attr, metadata !838, metadata !DIExpression()), !dbg !991
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_ins) #17, !dbg !986
  tail call void @llvm.dbg.declare(metadata ptr %max_ins, metadata !839, metadata !DIExpression()), !dbg !992
  store i32 0, ptr %max_ins, align 4, !dbg !992, !tbaa !974
  call void @llvm.lifetime.start.p0(i64 4, ptr %interval) #17, !dbg !986
  tail call void @llvm.dbg.declare(metadata ptr %interval, metadata !840, metadata !DIExpression()), !dbg !993
  call void @llvm.lifetime.start.p0(i64 4, ptr %call) #17, !dbg !994
  tail call void @llvm.dbg.declare(metadata ptr %call, metadata !841, metadata !DIExpression()), !dbg !995
  store i32 0, ptr %call, align 4, !dbg !995, !tbaa !974
  call void @llvm.lifetime.start.p0(i64 24, ptr %ks) #17, !dbg !996
  tail call void @llvm.dbg.declare(metadata ptr %ks, metadata !842, metadata !DIExpression()), !dbg !997
  call void @llvm.memset.p0.i64(ptr align 8 %ks, i8 0, i64 24, i1 false), !dbg !997
  %1 = load i64, ptr %pos.addr, align 8, !dbg !998, !tbaa !976
  %2 = load ptr, ptr %tv, align 8, !dbg !1000, !tbaa !588
  %left_pos = getelementptr inbounds %struct.AbstractTview, ptr %2, i32 0, i32 8, !dbg !1001
  %3 = load i64, ptr %left_pos, align 8, !dbg !1001, !tbaa !1002
  %cmp = icmp slt i64 %1, %3, !dbg !1003
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1004

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %tv, align 8, !dbg !1005, !tbaa !588
  %ccol = getelementptr inbounds %struct.AbstractTview, ptr %4, i32 0, i32 12, !dbg !1006
  %5 = load i32, ptr %ccol, align 4, !dbg !1006, !tbaa !1007
  %6 = load ptr, ptr %tv, align 8, !dbg !1008, !tbaa !588
  %mcol = getelementptr inbounds %struct.AbstractTview, ptr %6, i32 0, i32 1, !dbg !1009
  %7 = load i32, ptr %mcol, align 4, !dbg !1009, !tbaa !616
  %cmp1 = icmp sgt i32 %5, %7, !dbg !1010
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1011

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !1012
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1012

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %tv, align 8, !dbg !1013, !tbaa !588
  %ref = getelementptr inbounds %struct.AbstractTview, ptr %8, i32 0, i32 21, !dbg !1014
  %9 = load ptr, ptr %ref, align 8, !dbg !1014, !tbaa !1015
  %tobool = icmp ne ptr %9, null, !dbg !1013
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !1016

land.lhs.true:                                    ; preds = %if.end
  %10 = load i64, ptr %pos.addr, align 8, !dbg !1017, !tbaa !976
  %11 = load ptr, ptr %tv, align 8, !dbg !1018, !tbaa !588
  %left_pos2 = getelementptr inbounds %struct.AbstractTview, ptr %11, i32 0, i32 8, !dbg !1019
  %12 = load i64, ptr %left_pos2, align 8, !dbg !1019, !tbaa !1002
  %sub = sub nsw i64 %10, %12, !dbg !1020
  %13 = load ptr, ptr %tv, align 8, !dbg !1021, !tbaa !588
  %l_ref = getelementptr inbounds %struct.AbstractTview, ptr %13, i32 0, i32 10, !dbg !1022
  %14 = load i64, ptr %l_ref, align 8, !dbg !1022, !tbaa !1023
  %cmp3 = icmp slt i64 %sub, %14, !dbg !1024
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !1025

cond.true:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %tv, align 8, !dbg !1026, !tbaa !588
  %ref4 = getelementptr inbounds %struct.AbstractTview, ptr %15, i32 0, i32 21, !dbg !1027
  %16 = load ptr, ptr %ref4, align 8, !dbg !1027, !tbaa !1015
  %17 = load i64, ptr %pos.addr, align 8, !dbg !1028, !tbaa !976
  %18 = load ptr, ptr %tv, align 8, !dbg !1029, !tbaa !588
  %left_pos5 = getelementptr inbounds %struct.AbstractTview, ptr %18, i32 0, i32 8, !dbg !1030
  %19 = load i64, ptr %left_pos5, align 8, !dbg !1030, !tbaa !1002
  %sub6 = sub nsw i64 %17, %19, !dbg !1031
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 %sub6, !dbg !1026
  %20 = load i8, ptr %arrayidx, align 1, !dbg !1026, !tbaa !1032
  %conv = sext i8 %20 to i32, !dbg !1026
  br label %cond.end, !dbg !1025

cond.false:                                       ; preds = %land.lhs.true, %if.end
  br label %cond.end, !dbg !1025

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 78, %cond.false ], !dbg !1025
  store i32 %cond, ptr %rb, align 4, !dbg !1033, !tbaa !974
  %21 = load ptr, ptr %tv, align 8, !dbg !1034, !tbaa !588
  %last_pos = getelementptr inbounds %struct.AbstractTview, ptr %21, i32 0, i32 9, !dbg !1036
  %22 = load i64, ptr %last_pos, align 8, !dbg !1036, !tbaa !1037
  %add = add nsw i64 %22, 1, !dbg !1038
  store i64 %add, ptr %cp, align 8, !dbg !1039, !tbaa !976
  br label %for.cond, !dbg !1040

for.cond:                                         ; preds = %for.inc, %cond.end
  %23 = load i64, ptr %cp, align 8, !dbg !1041, !tbaa !976
  %24 = load i64, ptr %pos.addr, align 8, !dbg !1043, !tbaa !976
  %cmp7 = icmp slt i64 %23, %24, !dbg !1044
  br i1 %cmp7, label %for.body, label %for.end, !dbg !1045

for.body:                                         ; preds = %for.cond
  %25 = load i64, ptr %cp, align 8, !dbg !1046, !tbaa !976
  %cmp9 = icmp slt i64 %25, 1000000000, !dbg !1048
  %26 = zext i1 %cmp9 to i64, !dbg !1046
  %cond11 = select i1 %cmp9, i32 10, i32 20, !dbg !1046
  store i32 %cond11, ptr %interval, align 4, !dbg !1049, !tbaa !974
  %27 = load i64, ptr %cp, align 8, !dbg !1050, !tbaa !976
  %28 = load i32, ptr %interval, align 4, !dbg !1052, !tbaa !974
  %conv12 = sext i32 %28 to i64, !dbg !1052
  %rem = srem i64 %27, %conv12, !dbg !1053
  %cmp13 = icmp eq i64 %rem, 0, !dbg !1054
  br i1 %cmp13, label %land.lhs.true15, label %if.end24, !dbg !1055

land.lhs.true15:                                  ; preds = %for.body
  %29 = load ptr, ptr %tv, align 8, !dbg !1056, !tbaa !588
  %mcol16 = getelementptr inbounds %struct.AbstractTview, ptr %29, i32 0, i32 1, !dbg !1057
  %30 = load i32, ptr %mcol16, align 4, !dbg !1057, !tbaa !616
  %31 = load ptr, ptr %tv, align 8, !dbg !1058, !tbaa !588
  %ccol17 = getelementptr inbounds %struct.AbstractTview, ptr %31, i32 0, i32 12, !dbg !1059
  %32 = load i32, ptr %ccol17, align 4, !dbg !1059, !tbaa !1007
  %sub18 = sub nsw i32 %30, %32, !dbg !1060
  %cmp19 = icmp sge i32 %sub18, 10, !dbg !1061
  br i1 %cmp19, label %if.then21, label %if.end24, !dbg !1062

if.then21:                                        ; preds = %land.lhs.true15
  %33 = load ptr, ptr %tv, align 8, !dbg !1063, !tbaa !588
  %my_mvprintw = getelementptr inbounds %struct.AbstractTview, ptr %33, i32 0, i32 24, !dbg !1064
  %34 = load ptr, ptr %my_mvprintw, align 8, !dbg !1064, !tbaa !1065
  %35 = load ptr, ptr %tv, align 8, !dbg !1066, !tbaa !588
  %36 = load ptr, ptr %tv, align 8, !dbg !1067, !tbaa !588
  %ccol22 = getelementptr inbounds %struct.AbstractTview, ptr %36, i32 0, i32 12, !dbg !1068
  %37 = load i32, ptr %ccol22, align 4, !dbg !1068, !tbaa !1007
  %38 = load i64, ptr %cp, align 8, !dbg !1069, !tbaa !976
  %add23 = add nsw i64 %38, 1, !dbg !1070
  call void (ptr, i32, i32, ptr, ...) %34(ptr noundef %35, i32 noundef 0, i32 noundef %37, ptr noundef @.str.10, i64 noundef %add23), !dbg !1063
  br label %if.end24, !dbg !1063

if.end24:                                         ; preds = %if.then21, %land.lhs.true15, %for.body
  %39 = load ptr, ptr %tv, align 8, !dbg !1071, !tbaa !588
  %ref25 = getelementptr inbounds %struct.AbstractTview, ptr %39, i32 0, i32 21, !dbg !1072
  %40 = load ptr, ptr %ref25, align 8, !dbg !1072, !tbaa !1015
  %tobool26 = icmp ne ptr %40, null, !dbg !1071
  br i1 %tobool26, label %cond.true27, label %cond.false33, !dbg !1071

cond.true27:                                      ; preds = %if.end24
  %41 = load ptr, ptr %tv, align 8, !dbg !1073, !tbaa !588
  %ref28 = getelementptr inbounds %struct.AbstractTview, ptr %41, i32 0, i32 21, !dbg !1074
  %42 = load ptr, ptr %ref28, align 8, !dbg !1074, !tbaa !1015
  %43 = load i64, ptr %cp, align 8, !dbg !1075, !tbaa !976
  %44 = load ptr, ptr %tv, align 8, !dbg !1076, !tbaa !588
  %left_pos29 = getelementptr inbounds %struct.AbstractTview, ptr %44, i32 0, i32 8, !dbg !1077
  %45 = load i64, ptr %left_pos29, align 8, !dbg !1077, !tbaa !1002
  %sub30 = sub nsw i64 %43, %45, !dbg !1078
  %arrayidx31 = getelementptr inbounds i8, ptr %42, i64 %sub30, !dbg !1073
  %46 = load i8, ptr %arrayidx31, align 1, !dbg !1073, !tbaa !1032
  %conv32 = sext i8 %46 to i32, !dbg !1073
  br label %cond.end34, !dbg !1071

cond.false33:                                     ; preds = %if.end24
  br label %cond.end34, !dbg !1071

cond.end34:                                       ; preds = %cond.false33, %cond.true27
  %cond35 = phi i32 [ %conv32, %cond.true27 ], [ 78, %cond.false33 ], !dbg !1071
  store i32 %cond35, ptr %c, align 4, !dbg !1079, !tbaa !974
  %47 = load ptr, ptr %tv, align 8, !dbg !1080, !tbaa !588
  %my_mvaddch = getelementptr inbounds %struct.AbstractTview, ptr %47, i32 0, i32 25, !dbg !1081
  %48 = load ptr, ptr %my_mvaddch, align 8, !dbg !1081, !tbaa !1082
  %49 = load ptr, ptr %tv, align 8, !dbg !1083, !tbaa !588
  %50 = load ptr, ptr %tv, align 8, !dbg !1084, !tbaa !588
  %ccol36 = getelementptr inbounds %struct.AbstractTview, ptr %50, i32 0, i32 12, !dbg !1085
  %51 = load i32, ptr %ccol36, align 4, !dbg !1086, !tbaa !1007
  %inc = add nsw i32 %51, 1, !dbg !1086
  store i32 %inc, ptr %ccol36, align 4, !dbg !1086, !tbaa !1007
  %52 = load i32, ptr %c, align 4, !dbg !1087, !tbaa !974
  call void %48(ptr noundef %49, i32 noundef 1, i32 noundef %51, i32 noundef %52), !dbg !1080
  br label %for.inc, !dbg !1088

for.inc:                                          ; preds = %cond.end34
  %53 = load i64, ptr %cp, align 8, !dbg !1089, !tbaa !976
  %inc37 = add nsw i64 %53, 1, !dbg !1089
  store i64 %inc37, ptr %cp, align 8, !dbg !1089, !tbaa !976
  br label %for.cond, !dbg !1090, !llvm.loop !1091

for.end:                                          ; preds = %for.cond
  %54 = load i64, ptr %pos.addr, align 8, !dbg !1094, !tbaa !976
  %cmp38 = icmp slt i64 %54, 1000000000, !dbg !1095
  %55 = zext i1 %cmp38 to i64, !dbg !1094
  %cond40 = select i1 %cmp38, i32 10, i32 20, !dbg !1094
  store i32 %cond40, ptr %interval, align 4, !dbg !1096, !tbaa !974
  %56 = load i64, ptr %pos.addr, align 8, !dbg !1097, !tbaa !976
  %57 = load i32, ptr %interval, align 4, !dbg !1099, !tbaa !974
  %conv41 = sext i32 %57 to i64, !dbg !1099
  %rem42 = srem i64 %56, %conv41, !dbg !1100
  %cmp43 = icmp eq i64 %rem42, 0, !dbg !1101
  br i1 %cmp43, label %land.lhs.true45, label %if.end55, !dbg !1102

land.lhs.true45:                                  ; preds = %for.end
  %58 = load ptr, ptr %tv, align 8, !dbg !1103, !tbaa !588
  %mcol46 = getelementptr inbounds %struct.AbstractTview, ptr %58, i32 0, i32 1, !dbg !1104
  %59 = load i32, ptr %mcol46, align 4, !dbg !1104, !tbaa !616
  %60 = load ptr, ptr %tv, align 8, !dbg !1105, !tbaa !588
  %ccol47 = getelementptr inbounds %struct.AbstractTview, ptr %60, i32 0, i32 12, !dbg !1106
  %61 = load i32, ptr %ccol47, align 4, !dbg !1106, !tbaa !1007
  %sub48 = sub nsw i32 %59, %61, !dbg !1107
  %cmp49 = icmp sge i32 %sub48, 10, !dbg !1108
  br i1 %cmp49, label %if.then51, label %if.end55, !dbg !1109

if.then51:                                        ; preds = %land.lhs.true45
  %62 = load ptr, ptr %tv, align 8, !dbg !1110, !tbaa !588
  %my_mvprintw52 = getelementptr inbounds %struct.AbstractTview, ptr %62, i32 0, i32 24, !dbg !1111
  %63 = load ptr, ptr %my_mvprintw52, align 8, !dbg !1111, !tbaa !1065
  %64 = load ptr, ptr %tv, align 8, !dbg !1112, !tbaa !588
  %65 = load ptr, ptr %tv, align 8, !dbg !1113, !tbaa !588
  %ccol53 = getelementptr inbounds %struct.AbstractTview, ptr %65, i32 0, i32 12, !dbg !1114
  %66 = load i32, ptr %ccol53, align 4, !dbg !1114, !tbaa !1007
  %67 = load i64, ptr %pos.addr, align 8, !dbg !1115, !tbaa !976
  %add54 = add nsw i64 %67, 1, !dbg !1116
  call void (ptr, i32, i32, ptr, ...) %63(ptr noundef %64, i32 noundef 0, i32 noundef %66, ptr noundef @.str.10, i64 noundef %add54), !dbg !1110
  br label %if.end55, !dbg !1110

if.end55:                                         ; preds = %if.then51, %land.lhs.true45, %for.end
  call void @llvm.lifetime.start.p0(i64 272, ptr %bcr) #17, !dbg !1117
  tail call void @llvm.dbg.declare(metadata ptr %bcr, metadata !843, metadata !DIExpression()), !dbg !1118
  call void @llvm.memset.p0.i64(ptr align 8 %bcr, i8 0, i64 272, i1 false), !dbg !1119
  call void @llvm.lifetime.start.p0(i64 16, ptr %qsum) #17, !dbg !1120
  tail call void @llvm.dbg.declare(metadata ptr %qsum, metadata !861, metadata !DIExpression()), !dbg !1121
  call void @llvm.lifetime.start.p0(i64 4, ptr %a1) #17, !dbg !1120
  tail call void @llvm.dbg.declare(metadata ptr %a1, metadata !862, metadata !DIExpression()), !dbg !1122
  call void @llvm.lifetime.start.p0(i64 4, ptr %a2) #17, !dbg !1120
  tail call void @llvm.dbg.declare(metadata ptr %a2, metadata !863, metadata !DIExpression()), !dbg !1123
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #17, !dbg !1120
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !864, metadata !DIExpression()), !dbg !1124
  call void @llvm.lifetime.start.p0(i64 24, ptr %p) #17, !dbg !1125
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !865, metadata !DIExpression()), !dbg !1126
  call void @llvm.lifetime.start.p0(i64 8, ptr %prior) #17, !dbg !1125
  tail call void @llvm.dbg.declare(metadata ptr %prior, metadata !867, metadata !DIExpression()), !dbg !1127
  store double 3.000000e+01, ptr %prior, align 8, !dbg !1127, !tbaa !1128
  %68 = load i32, ptr %n.addr, align 4, !dbg !1130, !tbaa !974
  %69 = load ptr, ptr %pl.addr, align 8, !dbg !1131, !tbaa !588
  %70 = load i32, ptr %rb, align 4, !dbg !1132, !tbaa !974
  %idxprom = sext i32 %70 to i64, !dbg !1133
  %arrayidx56 = getelementptr inbounds [256 x i8], ptr @seq_nt16_table, i64 0, i64 %idxprom, !dbg !1133
  %71 = load i8, ptr %arrayidx56, align 1, !dbg !1133, !tbaa !1032
  %conv57 = zext i8 %71 to i32, !dbg !1133
  %72 = load ptr, ptr %tv, align 8, !dbg !1134, !tbaa !588
  %bca = getelementptr inbounds %struct.AbstractTview, ptr %72, i32 0, i32 7, !dbg !1135
  %73 = load ptr, ptr %bca, align 8, !dbg !1135, !tbaa !710
  %call58 = call i32 @bcf_call_glfgen(i32 noundef %68, ptr noundef %69, i32 noundef %conv57, ptr noundef %73, ptr noundef %bcr), !dbg !1136
  store i32 0, ptr %i, align 4, !dbg !1137, !tbaa !974
  br label %for.cond59, !dbg !1139

for.cond59:                                       ; preds = %for.inc69, %if.end55
  %74 = load i32, ptr %i, align 4, !dbg !1140, !tbaa !974
  %cmp60 = icmp slt i32 %74, 4, !dbg !1142
  br i1 %cmp60, label %for.body62, label %for.end71, !dbg !1143

for.body62:                                       ; preds = %for.cond59
  %qsum63 = getelementptr inbounds %struct.bcf_callret1_t, ptr %bcr, i32 0, i32 4, !dbg !1144
  %75 = load i32, ptr %i, align 4, !dbg !1145, !tbaa !974
  %idxprom64 = sext i32 %75 to i64, !dbg !1146
  %arrayidx65 = getelementptr inbounds [4 x float], ptr %qsum63, i64 0, i64 %idxprom64, !dbg !1146
  %76 = load float, ptr %arrayidx65, align 4, !dbg !1146, !tbaa !1147
  %conv66 = fptosi float %76 to i32, !dbg !1149
  %shl = shl i32 %conv66, 2, !dbg !1150
  %77 = load i32, ptr %i, align 4, !dbg !1151, !tbaa !974
  %or = or i32 %shl, %77, !dbg !1152
  %78 = load i32, ptr %i, align 4, !dbg !1153, !tbaa !974
  %idxprom67 = sext i32 %78 to i64, !dbg !1154
  %arrayidx68 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 %idxprom67, !dbg !1154
  store i32 %or, ptr %arrayidx68, align 4, !dbg !1155, !tbaa !974
  br label %for.inc69, !dbg !1154

for.inc69:                                        ; preds = %for.body62
  %79 = load i32, ptr %i, align 4, !dbg !1156, !tbaa !974
  %inc70 = add nsw i32 %79, 1, !dbg !1156
  store i32 %inc70, ptr %i, align 4, !dbg !1156, !tbaa !974
  br label %for.cond59, !dbg !1157, !llvm.loop !1158

for.end71:                                        ; preds = %for.cond59
  store i32 1, ptr %i, align 4, !dbg !1160, !tbaa !974
  br label %for.cond72, !dbg !1162

for.cond72:                                       ; preds = %for.inc99, %for.end71
  %80 = load i32, ptr %i, align 4, !dbg !1163, !tbaa !974
  %cmp73 = icmp slt i32 %80, 4, !dbg !1165
  br i1 %cmp73, label %for.body75, label %for.end101, !dbg !1166

for.body75:                                       ; preds = %for.cond72
  %81 = load i32, ptr %i, align 4, !dbg !1167, !tbaa !974
  store i32 %81, ptr %j, align 4, !dbg !1169, !tbaa !974
  br label %for.cond76, !dbg !1170

for.cond76:                                       ; preds = %for.inc97, %for.body75
  %82 = load i32, ptr %j, align 4, !dbg !1171, !tbaa !974
  %cmp77 = icmp sgt i32 %82, 0, !dbg !1173
  br i1 %cmp77, label %land.rhs, label %land.end, !dbg !1174

land.rhs:                                         ; preds = %for.cond76
  %83 = load i32, ptr %j, align 4, !dbg !1175, !tbaa !974
  %idxprom79 = sext i32 %83 to i64, !dbg !1176
  %arrayidx80 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 %idxprom79, !dbg !1176
  %84 = load i32, ptr %arrayidx80, align 4, !dbg !1176, !tbaa !974
  %85 = load i32, ptr %j, align 4, !dbg !1177, !tbaa !974
  %sub81 = sub nsw i32 %85, 1, !dbg !1178
  %idxprom82 = sext i32 %sub81 to i64, !dbg !1179
  %arrayidx83 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 %idxprom82, !dbg !1179
  %86 = load i32, ptr %arrayidx83, align 4, !dbg !1179, !tbaa !974
  %cmp84 = icmp sgt i32 %84, %86, !dbg !1180
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond76
  %87 = phi i1 [ false, %for.cond76 ], [ %cmp84, %land.rhs ], !dbg !1181
  br i1 %87, label %for.body86, label %for.end98, !dbg !1182

for.body86:                                       ; preds = %land.end
  %88 = load i32, ptr %j, align 4, !dbg !1183, !tbaa !974
  %idxprom87 = sext i32 %88 to i64, !dbg !1184
  %arrayidx88 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 %idxprom87, !dbg !1184
  %89 = load i32, ptr %arrayidx88, align 4, !dbg !1184, !tbaa !974
  store i32 %89, ptr %tmp, align 4, !dbg !1185, !tbaa !974
  %90 = load i32, ptr %j, align 4, !dbg !1186, !tbaa !974
  %sub89 = sub nsw i32 %90, 1, !dbg !1187
  %idxprom90 = sext i32 %sub89 to i64, !dbg !1188
  %arrayidx91 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 %idxprom90, !dbg !1188
  %91 = load i32, ptr %arrayidx91, align 4, !dbg !1188, !tbaa !974
  %92 = load i32, ptr %j, align 4, !dbg !1189, !tbaa !974
  %idxprom92 = sext i32 %92 to i64, !dbg !1190
  %arrayidx93 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 %idxprom92, !dbg !1190
  store i32 %91, ptr %arrayidx93, align 4, !dbg !1191, !tbaa !974
  %93 = load i32, ptr %tmp, align 4, !dbg !1192, !tbaa !974
  %94 = load i32, ptr %j, align 4, !dbg !1193, !tbaa !974
  %sub94 = sub nsw i32 %94, 1, !dbg !1194
  %idxprom95 = sext i32 %sub94 to i64, !dbg !1195
  %arrayidx96 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 %idxprom95, !dbg !1195
  store i32 %93, ptr %arrayidx96, align 4, !dbg !1196, !tbaa !974
  br label %for.inc97, !dbg !1197

for.inc97:                                        ; preds = %for.body86
  %95 = load i32, ptr %j, align 4, !dbg !1198, !tbaa !974
  %dec = add nsw i32 %95, -1, !dbg !1198
  store i32 %dec, ptr %j, align 4, !dbg !1198, !tbaa !974
  br label %for.cond76, !dbg !1199, !llvm.loop !1200

for.end98:                                        ; preds = %land.end
  br label %for.inc99, !dbg !1201

for.inc99:                                        ; preds = %for.end98
  %96 = load i32, ptr %i, align 4, !dbg !1202, !tbaa !974
  %inc100 = add nsw i32 %96, 1, !dbg !1202
  store i32 %inc100, ptr %i, align 4, !dbg !1202, !tbaa !974
  br label %for.cond72, !dbg !1203, !llvm.loop !1204

for.end101:                                       ; preds = %for.cond72
  %arrayidx102 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 0, !dbg !1206
  %97 = load i32, ptr %arrayidx102, align 16, !dbg !1206, !tbaa !974
  %and = and i32 %97, 3, !dbg !1207
  store i32 %and, ptr %a1, align 4, !dbg !1208, !tbaa !974
  %arrayidx103 = getelementptr inbounds [4 x i32], ptr %qsum, i64 0, i64 1, !dbg !1209
  %98 = load i32, ptr %arrayidx103, align 4, !dbg !1209, !tbaa !974
  %and104 = and i32 %98, 3, !dbg !1210
  store i32 %and104, ptr %a2, align 4, !dbg !1211, !tbaa !974
  %p105 = getelementptr inbounds %struct.bcf_callret1_t, ptr %bcr, i32 0, i32 6, !dbg !1212
  %99 = load i32, ptr %a1, align 4, !dbg !1213, !tbaa !974
  %mul = mul nsw i32 %99, 5, !dbg !1214
  %100 = load i32, ptr %a1, align 4, !dbg !1215, !tbaa !974
  %add106 = add nsw i32 %mul, %100, !dbg !1216
  %idxprom107 = sext i32 %add106 to i64, !dbg !1217
  %arrayidx108 = getelementptr inbounds [25 x float], ptr %p105, i64 0, i64 %idxprom107, !dbg !1217
  %101 = load float, ptr %arrayidx108, align 4, !dbg !1217, !tbaa !1147
  %conv109 = fpext float %101 to double, !dbg !1217
  %arrayidx110 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1218
  store double %conv109, ptr %arrayidx110, align 16, !dbg !1219, !tbaa !1128
  %p111 = getelementptr inbounds %struct.bcf_callret1_t, ptr %bcr, i32 0, i32 6, !dbg !1220
  %102 = load i32, ptr %a1, align 4, !dbg !1221, !tbaa !974
  %mul112 = mul nsw i32 %102, 5, !dbg !1222
  %103 = load i32, ptr %a2, align 4, !dbg !1223, !tbaa !974
  %add113 = add nsw i32 %mul112, %103, !dbg !1224
  %idxprom114 = sext i32 %add113 to i64, !dbg !1225
  %arrayidx115 = getelementptr inbounds [25 x float], ptr %p111, i64 0, i64 %idxprom114, !dbg !1225
  %104 = load float, ptr %arrayidx115, align 4, !dbg !1225, !tbaa !1147
  %conv116 = fpext float %104 to double, !dbg !1225
  %105 = load double, ptr %prior, align 8, !dbg !1226, !tbaa !1128
  %add117 = fadd double %conv116, %105, !dbg !1227
  %arrayidx118 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1228
  store double %add117, ptr %arrayidx118, align 8, !dbg !1229, !tbaa !1128
  %p119 = getelementptr inbounds %struct.bcf_callret1_t, ptr %bcr, i32 0, i32 6, !dbg !1230
  %106 = load i32, ptr %a2, align 4, !dbg !1231, !tbaa !974
  %mul120 = mul nsw i32 %106, 5, !dbg !1232
  %107 = load i32, ptr %a2, align 4, !dbg !1233, !tbaa !974
  %add121 = add nsw i32 %mul120, %107, !dbg !1234
  %idxprom122 = sext i32 %add121 to i64, !dbg !1235
  %arrayidx123 = getelementptr inbounds [25 x float], ptr %p119, i64 0, i64 %idxprom122, !dbg !1235
  %108 = load float, ptr %arrayidx123, align 4, !dbg !1235, !tbaa !1147
  %conv124 = fpext float %108 to double, !dbg !1235
  %arrayidx125 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1236
  store double %conv124, ptr %arrayidx125, align 16, !dbg !1237, !tbaa !1128
  %109 = load i32, ptr %a1, align 4, !dbg !1238, !tbaa !974
  %idxprom126 = sext i32 %109 to i64, !dbg !1239
  %arrayidx127 = getelementptr inbounds [5 x i8], ptr @.str.11, i64 0, i64 %idxprom126, !dbg !1239
  %110 = load i8, ptr %arrayidx127, align 1, !dbg !1239, !tbaa !1032
  %conv128 = sext i8 %110 to i32, !dbg !1239
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #17, !dbg !1240
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !868, metadata !DIExpression()), !dbg !1240
  %111 = load i32, ptr %rb, align 4, !dbg !1241, !tbaa !974
  %112 = call i1 @llvm.is.constant.i32(i32 %111), !dbg !1241
  br i1 %112, label %if.then129, label %if.else, !dbg !1242

if.then129:                                       ; preds = %for.end101
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c) #17, !dbg !1243
  tail call void @llvm.dbg.declare(metadata ptr %__c, metadata !871, metadata !DIExpression()), !dbg !1243
  %113 = load i32, ptr %rb, align 4, !dbg !1243, !tbaa !974
  store i32 %113, ptr %__c, align 4, !dbg !1243, !tbaa !974
  %114 = load i32, ptr %__c, align 4, !dbg !1243, !tbaa !974
  %cmp130 = icmp slt i32 %114, -128, !dbg !1243
  br i1 %cmp130, label %cond.true135, label %lor.lhs.false132, !dbg !1243

lor.lhs.false132:                                 ; preds = %if.then129
  %115 = load i32, ptr %__c, align 4, !dbg !1243, !tbaa !974
  %cmp133 = icmp sgt i32 %115, 255, !dbg !1243
  br i1 %cmp133, label %cond.true135, label %cond.false136, !dbg !1243

cond.true135:                                     ; preds = %lor.lhs.false132, %if.then129
  %116 = load i32, ptr %__c, align 4, !dbg !1243, !tbaa !974
  br label %cond.end140, !dbg !1243

cond.false136:                                    ; preds = %lor.lhs.false132
  %call137 = call ptr @__ctype_toupper_loc() #18, !dbg !1243
  %117 = load ptr, ptr %call137, align 8, !dbg !1243, !tbaa !588
  %118 = load i32, ptr %__c, align 4, !dbg !1243, !tbaa !974
  %idxprom138 = sext i32 %118 to i64, !dbg !1243
  %arrayidx139 = getelementptr inbounds i32, ptr %117, i64 %idxprom138, !dbg !1243
  %119 = load i32, ptr %arrayidx139, align 4, !dbg !1243, !tbaa !974
  br label %cond.end140, !dbg !1243

cond.end140:                                      ; preds = %cond.false136, %cond.true135
  %cond141 = phi i32 [ %116, %cond.true135 ], [ %119, %cond.false136 ], !dbg !1243
  store i32 %cond141, ptr %__res, align 4, !dbg !1243, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #17, !dbg !1241
  br label %if.end143, !dbg !1243

if.else:                                          ; preds = %for.end101
  %120 = load i32, ptr %rb, align 4, !dbg !1241, !tbaa !974
  %call142 = call i32 @toupper(i32 noundef %120) #19, !dbg !1241
  store i32 %call142, ptr %__res, align 4, !dbg !1241, !tbaa !974
  br label %if.end143

if.end143:                                        ; preds = %if.else, %cond.end140
  %121 = load i32, ptr %__res, align 4, !dbg !1240, !tbaa !974
  store i32 %121, ptr %tmp144, align 4, !dbg !1244, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #17, !dbg !1245
  %122 = load i32, ptr %tmp144, align 4, !dbg !1240, !tbaa !974
  %cmp145 = icmp ne i32 %conv128, %122, !dbg !1246
  br i1 %cmp145, label %if.then147, label %if.end151, !dbg !1247

if.then147:                                       ; preds = %if.end143
  %123 = load double, ptr %prior, align 8, !dbg !1248, !tbaa !1128
  %add148 = fadd double %123, 3.000000e+00, !dbg !1249
  %arrayidx149 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1250
  %124 = load double, ptr %arrayidx149, align 16, !dbg !1251, !tbaa !1128
  %add150 = fadd double %124, %add148, !dbg !1251
  store double %add150, ptr %arrayidx149, align 16, !dbg !1251, !tbaa !1128
  br label %if.end151, !dbg !1250

if.end151:                                        ; preds = %if.then147, %if.end143
  %125 = load i32, ptr %a2, align 4, !dbg !1252, !tbaa !974
  %idxprom152 = sext i32 %125 to i64, !dbg !1253
  %arrayidx153 = getelementptr inbounds [5 x i8], ptr @.str.11, i64 0, i64 %idxprom152, !dbg !1253
  %126 = load i8, ptr %arrayidx153, align 1, !dbg !1253, !tbaa !1032
  %conv154 = sext i8 %126 to i32, !dbg !1253
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res155) #17, !dbg !1254
  tail call void @llvm.dbg.declare(metadata ptr %__res155, metadata !876, metadata !DIExpression()), !dbg !1254
  %127 = load i32, ptr %rb, align 4, !dbg !1255, !tbaa !974
  %128 = call i1 @llvm.is.constant.i32(i32 %127), !dbg !1255
  br i1 %128, label %if.then156, label %if.else170, !dbg !1256

if.then156:                                       ; preds = %if.end151
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c157) #17, !dbg !1257
  tail call void @llvm.dbg.declare(metadata ptr %__c157, metadata !879, metadata !DIExpression()), !dbg !1257
  %129 = load i32, ptr %rb, align 4, !dbg !1257, !tbaa !974
  store i32 %129, ptr %__c157, align 4, !dbg !1257, !tbaa !974
  %130 = load i32, ptr %__c157, align 4, !dbg !1257, !tbaa !974
  %cmp158 = icmp slt i32 %130, -128, !dbg !1257
  br i1 %cmp158, label %cond.true163, label %lor.lhs.false160, !dbg !1257

lor.lhs.false160:                                 ; preds = %if.then156
  %131 = load i32, ptr %__c157, align 4, !dbg !1257, !tbaa !974
  %cmp161 = icmp sgt i32 %131, 255, !dbg !1257
  br i1 %cmp161, label %cond.true163, label %cond.false164, !dbg !1257

cond.true163:                                     ; preds = %lor.lhs.false160, %if.then156
  %132 = load i32, ptr %__c157, align 4, !dbg !1257, !tbaa !974
  br label %cond.end168, !dbg !1257

cond.false164:                                    ; preds = %lor.lhs.false160
  %call165 = call ptr @__ctype_toupper_loc() #18, !dbg !1257
  %133 = load ptr, ptr %call165, align 8, !dbg !1257, !tbaa !588
  %134 = load i32, ptr %__c157, align 4, !dbg !1257, !tbaa !974
  %idxprom166 = sext i32 %134 to i64, !dbg !1257
  %arrayidx167 = getelementptr inbounds i32, ptr %133, i64 %idxprom166, !dbg !1257
  %135 = load i32, ptr %arrayidx167, align 4, !dbg !1257, !tbaa !974
  br label %cond.end168, !dbg !1257

cond.end168:                                      ; preds = %cond.false164, %cond.true163
  %cond169 = phi i32 [ %132, %cond.true163 ], [ %135, %cond.false164 ], !dbg !1257
  store i32 %cond169, ptr %__res155, align 4, !dbg !1257, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c157) #17, !dbg !1255
  br label %if.end172, !dbg !1257

if.else170:                                       ; preds = %if.end151
  %136 = load i32, ptr %rb, align 4, !dbg !1255, !tbaa !974
  %call171 = call i32 @toupper(i32 noundef %136) #19, !dbg !1255
  store i32 %call171, ptr %__res155, align 4, !dbg !1255, !tbaa !974
  br label %if.end172

if.end172:                                        ; preds = %if.else170, %cond.end168
  %137 = load i32, ptr %__res155, align 4, !dbg !1254, !tbaa !974
  store i32 %137, ptr %tmp173, align 4, !dbg !1258, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res155) #17, !dbg !1259
  %138 = load i32, ptr %tmp173, align 4, !dbg !1254, !tbaa !974
  %cmp174 = icmp ne i32 %conv154, %138, !dbg !1260
  br i1 %cmp174, label %if.then176, label %if.end180, !dbg !1261

if.then176:                                       ; preds = %if.end172
  %139 = load double, ptr %prior, align 8, !dbg !1262, !tbaa !1128
  %add177 = fadd double %139, 3.000000e+00, !dbg !1263
  %arrayidx178 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1264
  %140 = load double, ptr %arrayidx178, align 16, !dbg !1265, !tbaa !1128
  %add179 = fadd double %140, %add177, !dbg !1265
  store double %add179, ptr %arrayidx178, align 16, !dbg !1265, !tbaa !1128
  br label %if.end180, !dbg !1264

if.end180:                                        ; preds = %if.then176, %if.end172
  %arrayidx181 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1266
  %141 = load double, ptr %arrayidx181, align 16, !dbg !1266, !tbaa !1128
  %arrayidx182 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1268
  %142 = load double, ptr %arrayidx182, align 8, !dbg !1268, !tbaa !1128
  %cmp183 = fcmp olt double %141, %142, !dbg !1269
  br i1 %cmp183, label %land.lhs.true185, label %if.else208, !dbg !1270

land.lhs.true185:                                 ; preds = %if.end180
  %arrayidx186 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1271
  %143 = load double, ptr %arrayidx186, align 16, !dbg !1271, !tbaa !1128
  %arrayidx187 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1272
  %144 = load double, ptr %arrayidx187, align 16, !dbg !1272, !tbaa !1128
  %cmp188 = fcmp olt double %143, %144, !dbg !1273
  br i1 %cmp188, label %if.then190, label %if.else208, !dbg !1274

if.then190:                                       ; preds = %land.lhs.true185
  %145 = load i32, ptr %a1, align 4, !dbg !1275, !tbaa !974
  %shl191 = shl i32 1, %145, !dbg !1276
  %shl192 = shl i32 %shl191, 16, !dbg !1277
  %arrayidx193 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1278
  %146 = load double, ptr %arrayidx193, align 8, !dbg !1278, !tbaa !1128
  %arrayidx194 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1279
  %147 = load double, ptr %arrayidx194, align 16, !dbg !1279, !tbaa !1128
  %cmp195 = fcmp olt double %146, %147, !dbg !1280
  br i1 %cmp195, label %cond.true197, label %cond.false199, !dbg !1278

cond.true197:                                     ; preds = %if.then190
  %arrayidx198 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1281
  %148 = load double, ptr %arrayidx198, align 8, !dbg !1281, !tbaa !1128
  br label %cond.end201, !dbg !1278

cond.false199:                                    ; preds = %if.then190
  %arrayidx200 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1282
  %149 = load double, ptr %arrayidx200, align 16, !dbg !1282, !tbaa !1128
  br label %cond.end201, !dbg !1278

cond.end201:                                      ; preds = %cond.false199, %cond.true197
  %cond202 = phi double [ %148, %cond.true197 ], [ %149, %cond.false199 ], !dbg !1278
  %arrayidx203 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1283
  %150 = load double, ptr %arrayidx203, align 16, !dbg !1283, !tbaa !1128
  %sub204 = fsub double %cond202, %150, !dbg !1284
  %add205 = fadd double %sub204, 4.990000e-01, !dbg !1285
  %conv206 = fptosi double %add205 to i32, !dbg !1286
  %or207 = or i32 %shl192, %conv206, !dbg !1287
  store i32 %or207, ptr %call, align 4, !dbg !1288, !tbaa !974
  br label %if.end257, !dbg !1289

if.else208:                                       ; preds = %land.lhs.true185, %if.end180
  %arrayidx209 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1290
  %151 = load double, ptr %arrayidx209, align 16, !dbg !1290, !tbaa !1128
  %arrayidx210 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1292
  %152 = load double, ptr %arrayidx210, align 8, !dbg !1292, !tbaa !1128
  %cmp211 = fcmp olt double %151, %152, !dbg !1293
  br i1 %cmp211, label %land.lhs.true213, label %if.else236, !dbg !1294

land.lhs.true213:                                 ; preds = %if.else208
  %arrayidx214 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1295
  %153 = load double, ptr %arrayidx214, align 16, !dbg !1295, !tbaa !1128
  %arrayidx215 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1296
  %154 = load double, ptr %arrayidx215, align 16, !dbg !1296, !tbaa !1128
  %cmp216 = fcmp olt double %153, %154, !dbg !1297
  br i1 %cmp216, label %if.then218, label %if.else236, !dbg !1298

if.then218:                                       ; preds = %land.lhs.true213
  %155 = load i32, ptr %a2, align 4, !dbg !1299, !tbaa !974
  %shl219 = shl i32 1, %155, !dbg !1300
  %shl220 = shl i32 %shl219, 16, !dbg !1301
  %arrayidx221 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1302
  %156 = load double, ptr %arrayidx221, align 16, !dbg !1302, !tbaa !1128
  %arrayidx222 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1303
  %157 = load double, ptr %arrayidx222, align 8, !dbg !1303, !tbaa !1128
  %cmp223 = fcmp olt double %156, %157, !dbg !1304
  br i1 %cmp223, label %cond.true225, label %cond.false227, !dbg !1302

cond.true225:                                     ; preds = %if.then218
  %arrayidx226 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1305
  %158 = load double, ptr %arrayidx226, align 16, !dbg !1305, !tbaa !1128
  br label %cond.end229, !dbg !1302

cond.false227:                                    ; preds = %if.then218
  %arrayidx228 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1306
  %159 = load double, ptr %arrayidx228, align 8, !dbg !1306, !tbaa !1128
  br label %cond.end229, !dbg !1302

cond.end229:                                      ; preds = %cond.false227, %cond.true225
  %cond230 = phi double [ %158, %cond.true225 ], [ %159, %cond.false227 ], !dbg !1302
  %arrayidx231 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1307
  %160 = load double, ptr %arrayidx231, align 16, !dbg !1307, !tbaa !1128
  %sub232 = fsub double %cond230, %160, !dbg !1308
  %add233 = fadd double %sub232, 4.990000e-01, !dbg !1309
  %conv234 = fptosi double %add233 to i32, !dbg !1310
  %or235 = or i32 %shl220, %conv234, !dbg !1311
  store i32 %or235, ptr %call, align 4, !dbg !1312, !tbaa !974
  br label %if.end256, !dbg !1313

if.else236:                                       ; preds = %land.lhs.true213, %if.else208
  %161 = load i32, ptr %a1, align 4, !dbg !1314, !tbaa !974
  %shl237 = shl i32 1, %161, !dbg !1315
  %162 = load i32, ptr %a2, align 4, !dbg !1316, !tbaa !974
  %shl238 = shl i32 1, %162, !dbg !1317
  %or239 = or i32 %shl237, %shl238, !dbg !1318
  %shl240 = shl i32 %or239, 16, !dbg !1319
  %arrayidx241 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1320
  %163 = load double, ptr %arrayidx241, align 16, !dbg !1320, !tbaa !1128
  %arrayidx242 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1321
  %164 = load double, ptr %arrayidx242, align 16, !dbg !1321, !tbaa !1128
  %cmp243 = fcmp olt double %163, %164, !dbg !1322
  br i1 %cmp243, label %cond.true245, label %cond.false247, !dbg !1320

cond.true245:                                     ; preds = %if.else236
  %arrayidx246 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0, !dbg !1323
  %165 = load double, ptr %arrayidx246, align 16, !dbg !1323, !tbaa !1128
  br label %cond.end249, !dbg !1320

cond.false247:                                    ; preds = %if.else236
  %arrayidx248 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 2, !dbg !1324
  %166 = load double, ptr %arrayidx248, align 16, !dbg !1324, !tbaa !1128
  br label %cond.end249, !dbg !1320

cond.end249:                                      ; preds = %cond.false247, %cond.true245
  %cond250 = phi double [ %165, %cond.true245 ], [ %166, %cond.false247 ], !dbg !1320
  %arrayidx251 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 1, !dbg !1325
  %167 = load double, ptr %arrayidx251, align 8, !dbg !1325, !tbaa !1128
  %sub252 = fsub double %cond250, %167, !dbg !1326
  %add253 = fadd double %sub252, 4.990000e-01, !dbg !1327
  %conv254 = fptosi double %add253 to i32, !dbg !1328
  %or255 = or i32 %shl240, %conv254, !dbg !1329
  store i32 %or255, ptr %call, align 4, !dbg !1330, !tbaa !974
  br label %if.end256

if.end256:                                        ; preds = %cond.end249, %cond.end229
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %cond.end201
  call void @llvm.lifetime.end.p0(i64 8, ptr %prior) #17, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 24, ptr %p) #17, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #17, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 4, ptr %a2) #17, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 4, ptr %a1) #17, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 16, ptr %qsum) #17, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 272, ptr %bcr) #17, !dbg !1331
  %168 = load ptr, ptr %tv, align 8, !dbg !1332, !tbaa !588
  %my_underline = getelementptr inbounds %struct.AbstractTview, ptr %168, i32 0, i32 32, !dbg !1333
  %169 = load ptr, ptr %my_underline, align 8, !dbg !1333, !tbaa !1334
  %170 = load ptr, ptr %tv, align 8, !dbg !1335, !tbaa !588
  %call258 = call i32 %169(ptr noundef %170), !dbg !1332
  store i32 %call258, ptr %attr, align 4, !dbg !1336, !tbaa !974
  %171 = load i32, ptr %call, align 4, !dbg !1337, !tbaa !974
  %shr = lshr i32 %171, 16, !dbg !1338
  %and259 = and i32 %shr, 15, !dbg !1339
  %idxprom260 = zext i32 %and259 to i64, !dbg !1340
  %arrayidx261 = getelementptr inbounds [17 x i8], ptr @.str.12, i64 0, i64 %idxprom260, !dbg !1340
  %172 = load i8, ptr %arrayidx261, align 1, !dbg !1340, !tbaa !1032
  %conv262 = sext i8 %172 to i32, !dbg !1340
  store i32 %conv262, ptr %c, align 4, !dbg !1341, !tbaa !974
  %173 = load i32, ptr %call, align 4, !dbg !1342, !tbaa !974
  %and263 = and i32 %173, 65535, !dbg !1343
  %div = udiv i32 %and263, 10, !dbg !1344
  %add264 = add i32 %div, 1, !dbg !1345
  store i32 %add264, ptr %i, align 4, !dbg !1346, !tbaa !974
  %174 = load i32, ptr %i, align 4, !dbg !1347, !tbaa !974
  %cmp265 = icmp sgt i32 %174, 4, !dbg !1349
  br i1 %cmp265, label %if.then267, label %if.end268, !dbg !1350

if.then267:                                       ; preds = %if.end257
  store i32 4, ptr %i, align 4, !dbg !1351, !tbaa !974
  br label %if.end268, !dbg !1352

if.end268:                                        ; preds = %if.then267, %if.end257
  %175 = load ptr, ptr %tv, align 8, !dbg !1353, !tbaa !588
  %my_colorpair = getelementptr inbounds %struct.AbstractTview, ptr %175, i32 0, i32 29, !dbg !1354
  %176 = load ptr, ptr %my_colorpair, align 8, !dbg !1354, !tbaa !1355
  %177 = load ptr, ptr %tv, align 8, !dbg !1356, !tbaa !588
  %178 = load i32, ptr %i, align 4, !dbg !1357, !tbaa !974
  %call269 = call i32 %176(ptr noundef %177, i32 noundef %178), !dbg !1353
  %179 = load i32, ptr %attr, align 4, !dbg !1358, !tbaa !974
  %or270 = or i32 %179, %call269, !dbg !1358
  store i32 %or270, ptr %attr, align 4, !dbg !1358, !tbaa !974
  %180 = load i32, ptr %c, align 4, !dbg !1359, !tbaa !974
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res271) #17, !dbg !1360
  tail call void @llvm.dbg.declare(metadata ptr %__res271, metadata !884, metadata !DIExpression()), !dbg !1360
  %181 = load i32, ptr %rb, align 4, !dbg !1361, !tbaa !974
  %182 = call i1 @llvm.is.constant.i32(i32 %181), !dbg !1361
  br i1 %182, label %if.then272, label %if.else286, !dbg !1362

if.then272:                                       ; preds = %if.end268
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c273) #17, !dbg !1363
  tail call void @llvm.dbg.declare(metadata ptr %__c273, metadata !887, metadata !DIExpression()), !dbg !1363
  %183 = load i32, ptr %rb, align 4, !dbg !1363, !tbaa !974
  store i32 %183, ptr %__c273, align 4, !dbg !1363, !tbaa !974
  %184 = load i32, ptr %__c273, align 4, !dbg !1363, !tbaa !974
  %cmp274 = icmp slt i32 %184, -128, !dbg !1363
  br i1 %cmp274, label %cond.true279, label %lor.lhs.false276, !dbg !1363

lor.lhs.false276:                                 ; preds = %if.then272
  %185 = load i32, ptr %__c273, align 4, !dbg !1363, !tbaa !974
  %cmp277 = icmp sgt i32 %185, 255, !dbg !1363
  br i1 %cmp277, label %cond.true279, label %cond.false280, !dbg !1363

cond.true279:                                     ; preds = %lor.lhs.false276, %if.then272
  %186 = load i32, ptr %__c273, align 4, !dbg !1363, !tbaa !974
  br label %cond.end284, !dbg !1363

cond.false280:                                    ; preds = %lor.lhs.false276
  %call281 = call ptr @__ctype_toupper_loc() #18, !dbg !1363
  %187 = load ptr, ptr %call281, align 8, !dbg !1363, !tbaa !588
  %188 = load i32, ptr %__c273, align 4, !dbg !1363, !tbaa !974
  %idxprom282 = sext i32 %188 to i64, !dbg !1363
  %arrayidx283 = getelementptr inbounds i32, ptr %187, i64 %idxprom282, !dbg !1363
  %189 = load i32, ptr %arrayidx283, align 4, !dbg !1363, !tbaa !974
  br label %cond.end284, !dbg !1363

cond.end284:                                      ; preds = %cond.false280, %cond.true279
  %cond285 = phi i32 [ %186, %cond.true279 ], [ %189, %cond.false280 ], !dbg !1363
  store i32 %cond285, ptr %__res271, align 4, !dbg !1363, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c273) #17, !dbg !1361
  br label %if.end288, !dbg !1363

if.else286:                                       ; preds = %if.end268
  %190 = load i32, ptr %rb, align 4, !dbg !1361, !tbaa !974
  %call287 = call i32 @toupper(i32 noundef %190) #19, !dbg !1361
  store i32 %call287, ptr %__res271, align 4, !dbg !1361, !tbaa !974
  br label %if.end288

if.end288:                                        ; preds = %if.else286, %cond.end284
  %191 = load i32, ptr %__res271, align 4, !dbg !1360, !tbaa !974
  store i32 %191, ptr %tmp289, align 4, !dbg !1364, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res271) #17, !dbg !1365
  %192 = load i32, ptr %tmp289, align 4, !dbg !1360, !tbaa !974
  %cmp290 = icmp eq i32 %180, %192, !dbg !1366
  br i1 %cmp290, label %if.then292, label %if.end293, !dbg !1367

if.then292:                                       ; preds = %if.end288
  store i32 46, ptr %c, align 4, !dbg !1368, !tbaa !974
  br label %if.end293, !dbg !1369

if.end293:                                        ; preds = %if.then292, %if.end288
  %193 = load ptr, ptr %tv, align 8, !dbg !1370, !tbaa !588
  %my_attron = getelementptr inbounds %struct.AbstractTview, ptr %193, i32 0, i32 26, !dbg !1371
  %194 = load ptr, ptr %my_attron, align 8, !dbg !1371, !tbaa !1372
  %195 = load ptr, ptr %tv, align 8, !dbg !1373, !tbaa !588
  %196 = load i32, ptr %attr, align 4, !dbg !1374, !tbaa !974
  call void %194(ptr noundef %195, i32 noundef %196), !dbg !1370
  %197 = load ptr, ptr %tv, align 8, !dbg !1375, !tbaa !588
  %my_mvaddch294 = getelementptr inbounds %struct.AbstractTview, ptr %197, i32 0, i32 25, !dbg !1376
  %198 = load ptr, ptr %my_mvaddch294, align 8, !dbg !1376, !tbaa !1082
  %199 = load ptr, ptr %tv, align 8, !dbg !1377, !tbaa !588
  %200 = load ptr, ptr %tv, align 8, !dbg !1378, !tbaa !588
  %ccol295 = getelementptr inbounds %struct.AbstractTview, ptr %200, i32 0, i32 12, !dbg !1379
  %201 = load i32, ptr %ccol295, align 4, !dbg !1379, !tbaa !1007
  %202 = load i32, ptr %c, align 4, !dbg !1380, !tbaa !974
  call void %198(ptr noundef %199, i32 noundef 2, i32 noundef %201, i32 noundef %202), !dbg !1375
  %203 = load ptr, ptr %tv, align 8, !dbg !1381, !tbaa !588
  %my_attroff = getelementptr inbounds %struct.AbstractTview, ptr %203, i32 0, i32 27, !dbg !1382
  %204 = load ptr, ptr %my_attroff, align 8, !dbg !1382, !tbaa !1383
  %205 = load ptr, ptr %tv, align 8, !dbg !1384, !tbaa !588
  %206 = load i32, ptr %attr, align 4, !dbg !1385, !tbaa !974
  call void %204(ptr noundef %205, i32 noundef %206), !dbg !1381
  %207 = load ptr, ptr %tv, align 8, !dbg !1386, !tbaa !588
  %ins = getelementptr inbounds %struct.AbstractTview, ptr %207, i32 0, i32 17, !dbg !1387
  %208 = load i32, ptr %ins, align 8, !dbg !1387, !tbaa !714
  %tobool296 = icmp ne i32 %208, 0, !dbg !1386
  br i1 %tobool296, label %if.then297, label %if.end315, !dbg !1388

if.then297:                                       ; preds = %if.end293
  store i32 0, ptr %i, align 4, !dbg !1389, !tbaa !974
  br label %for.cond298, !dbg !1390

for.cond298:                                      ; preds = %for.inc312, %if.then297
  %209 = load i32, ptr %i, align 4, !dbg !1391, !tbaa !974
  %210 = load i32, ptr %n.addr, align 4, !dbg !1392, !tbaa !974
  %cmp299 = icmp slt i32 %209, %210, !dbg !1393
  br i1 %cmp299, label %for.body301, label %for.end314, !dbg !1394

for.body301:                                      ; preds = %for.cond298
  call void @llvm.lifetime.start.p0(i64 8, ptr %p302) #17, !dbg !1395
  tail call void @llvm.dbg.declare(metadata ptr %p302, metadata !892, metadata !DIExpression()), !dbg !1396
  %211 = load ptr, ptr %pl.addr, align 8, !dbg !1397, !tbaa !588
  %212 = load i32, ptr %i, align 4, !dbg !1398, !tbaa !974
  %idx.ext = sext i32 %212 to i64, !dbg !1399
  %add.ptr = getelementptr inbounds %struct.bam_pileup1_t, ptr %211, i64 %idx.ext, !dbg !1399
  store ptr %add.ptr, ptr %p302, align 8, !dbg !1396, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #17, !dbg !1400
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !898, metadata !DIExpression()), !dbg !1401
  %213 = load ptr, ptr %p302, align 8, !dbg !1402, !tbaa !588
  %call303 = call i32 @bam_plp_insertion(ptr noundef %213, ptr noundef %ks, ptr noundef null), !dbg !1403
  store i32 %call303, ptr %len, align 4, !dbg !1401, !tbaa !974
  %214 = load i32, ptr %len, align 4, !dbg !1404, !tbaa !974
  %cmp304 = icmp slt i32 %214, 0, !dbg !1406
  br i1 %cmp304, label %if.then306, label %if.end307, !dbg !1407

if.then306:                                       ; preds = %for.body301
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str.4, ptr noundef @.str.13), !dbg !1408
  call void @exit(i32 noundef 1) #16, !dbg !1410
  unreachable, !dbg !1410

if.end307:                                        ; preds = %for.body301
  %215 = load i32, ptr %max_ins, align 4, !dbg !1411, !tbaa !974
  %216 = load i32, ptr %len, align 4, !dbg !1413, !tbaa !974
  %cmp308 = icmp slt i32 %215, %216, !dbg !1414
  br i1 %cmp308, label %if.then310, label %if.end311, !dbg !1415

if.then310:                                       ; preds = %if.end307
  %217 = load i32, ptr %len, align 4, !dbg !1416, !tbaa !974
  store i32 %217, ptr %max_ins, align 4, !dbg !1417, !tbaa !974
  br label %if.end311, !dbg !1418

if.end311:                                        ; preds = %if.then310, %if.end307
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #17, !dbg !1419
  call void @llvm.lifetime.end.p0(i64 8, ptr %p302) #17, !dbg !1419
  br label %for.inc312, !dbg !1420

for.inc312:                                       ; preds = %if.end311
  %218 = load i32, ptr %i, align 4, !dbg !1421, !tbaa !974
  %inc313 = add nsw i32 %218, 1, !dbg !1421
  store i32 %inc313, ptr %i, align 4, !dbg !1421, !tbaa !974
  br label %for.cond298, !dbg !1422, !llvm.loop !1423

for.end314:                                       ; preds = %for.cond298
  br label %if.end315, !dbg !1425

if.end315:                                        ; preds = %for.end314, %if.end293
  store i32 0, ptr %j, align 4, !dbg !1426, !tbaa !974
  br label %for.cond316, !dbg !1427

for.cond316:                                      ; preds = %for.inc899, %if.end315
  %219 = load i32, ptr %j, align 4, !dbg !1428, !tbaa !974
  %220 = load i32, ptr %max_ins, align 4, !dbg !1429, !tbaa !974
  %cmp317 = icmp sle i32 %219, %220, !dbg !1430
  br i1 %cmp317, label %for.body319, label %for.end901, !dbg !1431

for.body319:                                      ; preds = %for.cond316
  store i32 0, ptr %i, align 4, !dbg !1432, !tbaa !974
  br label %for.cond320, !dbg !1433

for.cond320:                                      ; preds = %for.inc876, %for.body319
  %221 = load i32, ptr %i, align 4, !dbg !1434, !tbaa !974
  %222 = load i32, ptr %n.addr, align 4, !dbg !1435, !tbaa !974
  %cmp321 = icmp slt i32 %221, %222, !dbg !1436
  br i1 %cmp321, label %for.body323, label %for.end878, !dbg !1437

for.body323:                                      ; preds = %for.cond320
  call void @llvm.lifetime.start.p0(i64 8, ptr %p324) #17, !dbg !1438
  tail call void @llvm.dbg.declare(metadata ptr %p324, metadata !899, metadata !DIExpression()), !dbg !1439
  %223 = load ptr, ptr %pl.addr, align 8, !dbg !1440, !tbaa !588
  %224 = load i32, ptr %i, align 4, !dbg !1441, !tbaa !974
  %idx.ext325 = sext i32 %224 to i64, !dbg !1442
  %add.ptr326 = getelementptr inbounds %struct.bam_pileup1_t, ptr %223, i64 %idx.ext325, !dbg !1442
  store ptr %add.ptr326, ptr %p324, align 8, !dbg !1439, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #17, !dbg !1443
  tail call void @llvm.dbg.declare(metadata ptr %row, metadata !906, metadata !DIExpression()), !dbg !1444
  %225 = load ptr, ptr %p324, align 8, !dbg !1445, !tbaa !588
  %level = getelementptr inbounds %struct.bam_pileup1_t, ptr %225, i32 0, i32 3, !dbg !1446
  %226 = load i32, ptr %level, align 8, !dbg !1446, !tbaa !1447
  %add327 = add nsw i32 2, %226, !dbg !1449
  %227 = load ptr, ptr %tv, align 8, !dbg !1450, !tbaa !588
  %row_shift = getelementptr inbounds %struct.AbstractTview, ptr %227, i32 0, i32 13, !dbg !1451
  %228 = load i32, ptr %row_shift, align 8, !dbg !1451, !tbaa !1452
  %sub328 = sub nsw i32 %add327, %228, !dbg !1453
  store i32 %sub328, ptr %row, align 4, !dbg !1444, !tbaa !974
  %229 = load i32, ptr %j, align 4, !dbg !1454, !tbaa !974
  %cmp329 = icmp eq i32 %229, 0, !dbg !1455
  br i1 %cmp329, label %if.then331, label %if.else476, !dbg !1456

if.then331:                                       ; preds = %for.body323
  %230 = load ptr, ptr %p324, align 8, !dbg !1457, !tbaa !588
  %is_del = getelementptr inbounds %struct.bam_pileup1_t, ptr %230, i32 0, i32 4, !dbg !1458
  %bf.load = load i32, ptr %is_del, align 4, !dbg !1458
  %bf.clear = and i32 %bf.load, 1, !dbg !1458
  %tobool332 = icmp ne i32 %bf.clear, 0, !dbg !1457
  br i1 %tobool332, label %if.else459, label %if.then333, !dbg !1459

if.then333:                                       ; preds = %if.then331
  %231 = load ptr, ptr %tv, align 8, !dbg !1460, !tbaa !588
  %base_for = getelementptr inbounds %struct.AbstractTview, ptr %231, i32 0, i32 14, !dbg !1461
  %232 = load i32, ptr %base_for, align 4, !dbg !1461, !tbaa !1462
  %cmp334 = icmp eq i32 %232, 1, !dbg !1463
  br i1 %cmp334, label %land.lhs.true336, label %if.else357, !dbg !1464

land.lhs.true336:                                 ; preds = %if.then333
  %233 = load ptr, ptr %p324, align 8, !dbg !1465, !tbaa !588
  %b = getelementptr inbounds %struct.bam_pileup1_t, ptr %233, i32 0, i32 0, !dbg !1466
  %234 = load ptr, ptr %b, align 8, !dbg !1466, !tbaa !1467
  %235 = load ptr, ptr %p324, align 8, !dbg !1468, !tbaa !588
  %qpos = getelementptr inbounds %struct.bam_pileup1_t, ptr %235, i32 0, i32 1, !dbg !1469
  %236 = load i32, ptr %qpos, align 8, !dbg !1469, !tbaa !1470
  %call337 = call signext i8 @bam_aux_getCSi(ptr noundef %234, i32 noundef %236), !dbg !1471
  %conv338 = sext i8 %call337 to i32, !dbg !1471
  store i32 %conv338, ptr %c, align 4, !dbg !1472, !tbaa !974
  %tobool339 = icmp ne i32 %conv338, 0, !dbg !1472
  br i1 %tobool339, label %if.then340, label %if.else357, !dbg !1473

if.then340:                                       ; preds = %land.lhs.true336
  %237 = load ptr, ptr %tv, align 8, !dbg !1474, !tbaa !588
  %is_dot = getelementptr inbounds %struct.AbstractTview, ptr %237, i32 0, i32 16, !dbg !1477
  %238 = load i32, ptr %is_dot, align 4, !dbg !1477, !tbaa !624
  %tobool341 = icmp ne i32 %238, 0, !dbg !1474
  br i1 %tobool341, label %land.lhs.true342, label %if.end356, !dbg !1478

land.lhs.true342:                                 ; preds = %if.then340
  %239 = load ptr, ptr %p324, align 8, !dbg !1479, !tbaa !588
  %b343 = getelementptr inbounds %struct.bam_pileup1_t, ptr %239, i32 0, i32 0, !dbg !1480
  %240 = load ptr, ptr %b343, align 8, !dbg !1480, !tbaa !1467
  %241 = load ptr, ptr %p324, align 8, !dbg !1481, !tbaa !588
  %qpos344 = getelementptr inbounds %struct.bam_pileup1_t, ptr %241, i32 0, i32 1, !dbg !1482
  %242 = load i32, ptr %qpos344, align 8, !dbg !1482, !tbaa !1470
  %call345 = call signext i8 @bam_aux_getCEi(ptr noundef %240, i32 noundef %242), !dbg !1483
  %conv346 = sext i8 %call345 to i32, !dbg !1483
  %cmp347 = icmp eq i32 45, %conv346, !dbg !1484
  br i1 %cmp347, label %if.then349, label %if.end356, !dbg !1485

if.then349:                                       ; preds = %land.lhs.true342
  %243 = load ptr, ptr %p324, align 8, !dbg !1486, !tbaa !588
  %b350 = getelementptr inbounds %struct.bam_pileup1_t, ptr %243, i32 0, i32 0, !dbg !1486
  %244 = load ptr, ptr %b350, align 8, !dbg !1486, !tbaa !1467
  %core = getelementptr inbounds %struct.bam1_t, ptr %244, i32 0, i32 0, !dbg !1486
  %flag = getelementptr inbounds %struct.bam1_core_t, ptr %core, i32 0, i32 5, !dbg !1486
  %245 = load i16, ptr %flag, align 8, !dbg !1486, !tbaa !1487
  %conv351 = zext i16 %245 to i32, !dbg !1486
  %and352 = and i32 %conv351, 16, !dbg !1486
  %cmp353 = icmp ne i32 %and352, 0, !dbg !1486
  %246 = zext i1 %cmp353 to i64, !dbg !1486
  %cond355 = select i1 %cmp353, i32 44, i32 46, !dbg !1486
  store i32 %cond355, ptr %c, align 4, !dbg !1491, !tbaa !974
  br label %if.end356, !dbg !1492

if.end356:                                        ; preds = %if.then349, %land.lhs.true342, %if.then340
  br label %if.end458, !dbg !1493

if.else357:                                       ; preds = %land.lhs.true336, %if.then333
  %247 = load ptr, ptr %tv, align 8, !dbg !1494, !tbaa !588
  %show_name = getelementptr inbounds %struct.AbstractTview, ptr %247, i32 0, i32 19, !dbg !1495
  %248 = load i32, ptr %show_name, align 8, !dbg !1495, !tbaa !1496
  %tobool358 = icmp ne i32 %248, 0, !dbg !1494
  br i1 %tobool358, label %if.then359, label %if.else377, !dbg !1497

if.then359:                                       ; preds = %if.else357
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #17, !dbg !1498
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !907, metadata !DIExpression()), !dbg !1499
  %249 = load ptr, ptr %p324, align 8, !dbg !1500, !tbaa !588
  %b360 = getelementptr inbounds %struct.bam_pileup1_t, ptr %249, i32 0, i32 0, !dbg !1500
  %250 = load ptr, ptr %b360, align 8, !dbg !1500, !tbaa !1467
  %data361 = getelementptr inbounds %struct.bam1_t, ptr %250, i32 0, i32 2, !dbg !1500
  %251 = load ptr, ptr %data361, align 8, !dbg !1500, !tbaa !1501
  store ptr %251, ptr %name, align 8, !dbg !1499, !tbaa !588
  %252 = load ptr, ptr %p324, align 8, !dbg !1502, !tbaa !588
  %qpos362 = getelementptr inbounds %struct.bam_pileup1_t, ptr %252, i32 0, i32 1, !dbg !1503
  %253 = load i32, ptr %qpos362, align 8, !dbg !1503, !tbaa !1470
  %add363 = add nsw i32 %253, 1, !dbg !1504
  %254 = load ptr, ptr %p324, align 8, !dbg !1505, !tbaa !588
  %b364 = getelementptr inbounds %struct.bam_pileup1_t, ptr %254, i32 0, i32 0, !dbg !1506
  %255 = load ptr, ptr %b364, align 8, !dbg !1506, !tbaa !1467
  %core365 = getelementptr inbounds %struct.bam1_t, ptr %255, i32 0, i32 0, !dbg !1507
  %l_qname = getelementptr inbounds %struct.bam1_core_t, ptr %core365, i32 0, i32 6, !dbg !1508
  %256 = load i16, ptr %l_qname, align 2, !dbg !1508, !tbaa !1509
  %conv366 = zext i16 %256 to i32, !dbg !1505
  %cmp367 = icmp sge i32 %add363, %conv366, !dbg !1510
  br i1 %cmp367, label %cond.true369, label %cond.false370, !dbg !1511

cond.true369:                                     ; preds = %if.then359
  br label %cond.end375, !dbg !1511

cond.false370:                                    ; preds = %if.then359
  %257 = load ptr, ptr %name, align 8, !dbg !1512, !tbaa !588
  %258 = load ptr, ptr %p324, align 8, !dbg !1513, !tbaa !588
  %qpos371 = getelementptr inbounds %struct.bam_pileup1_t, ptr %258, i32 0, i32 1, !dbg !1514
  %259 = load i32, ptr %qpos371, align 8, !dbg !1514, !tbaa !1470
  %idxprom372 = sext i32 %259 to i64, !dbg !1512
  %arrayidx373 = getelementptr inbounds i8, ptr %257, i64 %idxprom372, !dbg !1512
  %260 = load i8, ptr %arrayidx373, align 1, !dbg !1512, !tbaa !1032
  %conv374 = sext i8 %260 to i32, !dbg !1512
  br label %cond.end375, !dbg !1511

cond.end375:                                      ; preds = %cond.false370, %cond.true369
  %cond376 = phi i32 [ 32, %cond.true369 ], [ %conv374, %cond.false370 ], !dbg !1511
  store i32 %cond376, ptr %c, align 4, !dbg !1515, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #17, !dbg !1516
  br label %if.end457, !dbg !1517

if.else377:                                       ; preds = %if.else357
  %261 = load ptr, ptr %p324, align 8, !dbg !1518, !tbaa !588
  %b378 = getelementptr inbounds %struct.bam_pileup1_t, ptr %261, i32 0, i32 0, !dbg !1518
  %262 = load ptr, ptr %b378, align 8, !dbg !1518, !tbaa !1467
  %data379 = getelementptr inbounds %struct.bam1_t, ptr %262, i32 0, i32 2, !dbg !1518
  %263 = load ptr, ptr %data379, align 8, !dbg !1518, !tbaa !1501
  %264 = load ptr, ptr %p324, align 8, !dbg !1518, !tbaa !588
  %b380 = getelementptr inbounds %struct.bam_pileup1_t, ptr %264, i32 0, i32 0, !dbg !1518
  %265 = load ptr, ptr %b380, align 8, !dbg !1518, !tbaa !1467
  %core381 = getelementptr inbounds %struct.bam1_t, ptr %265, i32 0, i32 0, !dbg !1518
  %n_cigar = getelementptr inbounds %struct.bam1_core_t, ptr %core381, i32 0, i32 7, !dbg !1518
  %266 = load i32, ptr %n_cigar, align 4, !dbg !1518, !tbaa !1519
  %shl382 = shl i32 %266, 2, !dbg !1518
  %idx.ext383 = zext i32 %shl382 to i64, !dbg !1518
  %add.ptr384 = getelementptr inbounds i8, ptr %263, i64 %idx.ext383, !dbg !1518
  %267 = load ptr, ptr %p324, align 8, !dbg !1518, !tbaa !588
  %b385 = getelementptr inbounds %struct.bam_pileup1_t, ptr %267, i32 0, i32 0, !dbg !1518
  %268 = load ptr, ptr %b385, align 8, !dbg !1518, !tbaa !1467
  %core386 = getelementptr inbounds %struct.bam1_t, ptr %268, i32 0, i32 0, !dbg !1518
  %l_qname387 = getelementptr inbounds %struct.bam1_core_t, ptr %core386, i32 0, i32 6, !dbg !1518
  %269 = load i16, ptr %l_qname387, align 2, !dbg !1518, !tbaa !1509
  %conv388 = zext i16 %269 to i32, !dbg !1518
  %idx.ext389 = sext i32 %conv388 to i64, !dbg !1518
  %add.ptr390 = getelementptr inbounds i8, ptr %add.ptr384, i64 %idx.ext389, !dbg !1518
  %270 = load ptr, ptr %p324, align 8, !dbg !1518, !tbaa !588
  %qpos391 = getelementptr inbounds %struct.bam_pileup1_t, ptr %270, i32 0, i32 1, !dbg !1518
  %271 = load i32, ptr %qpos391, align 8, !dbg !1518, !tbaa !1470
  %shr392 = ashr i32 %271, 1, !dbg !1518
  %idxprom393 = sext i32 %shr392 to i64, !dbg !1518
  %arrayidx394 = getelementptr inbounds i8, ptr %add.ptr390, i64 %idxprom393, !dbg !1518
  %272 = load i8, ptr %arrayidx394, align 1, !dbg !1518, !tbaa !1032
  %conv395 = zext i8 %272 to i32, !dbg !1518
  %273 = load ptr, ptr %p324, align 8, !dbg !1518, !tbaa !588
  %qpos396 = getelementptr inbounds %struct.bam_pileup1_t, ptr %273, i32 0, i32 1, !dbg !1518
  %274 = load i32, ptr %qpos396, align 8, !dbg !1518, !tbaa !1470
  %not = xor i32 %274, -1, !dbg !1518
  %and397 = and i32 %not, 1, !dbg !1518
  %shl398 = shl i32 %and397, 2, !dbg !1518
  %shr399 = ashr i32 %conv395, %shl398, !dbg !1518
  %and400 = and i32 %shr399, 15, !dbg !1518
  %idxprom401 = sext i32 %and400 to i64, !dbg !1520
  %arrayidx402 = getelementptr inbounds [0 x i8], ptr @seq_nt16_str, i64 0, i64 %idxprom401, !dbg !1520
  %275 = load i8, ptr %arrayidx402, align 1, !dbg !1520, !tbaa !1032
  %conv403 = sext i8 %275 to i32, !dbg !1520
  store i32 %conv403, ptr %c, align 4, !dbg !1521, !tbaa !974
  %276 = load ptr, ptr %tv, align 8, !dbg !1522, !tbaa !588
  %is_dot404 = getelementptr inbounds %struct.AbstractTview, ptr %276, i32 0, i32 16, !dbg !1523
  %277 = load i32, ptr %is_dot404, align 4, !dbg !1523, !tbaa !624
  %tobool405 = icmp ne i32 %277, 0, !dbg !1522
  br i1 %tobool405, label %land.lhs.true406, label %if.end456, !dbg !1524

land.lhs.true406:                                 ; preds = %if.else377
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res407) #17, !dbg !1525
  tail call void @llvm.dbg.declare(metadata ptr %__res407, metadata !916, metadata !DIExpression()), !dbg !1525
  %278 = load i32, ptr %c, align 4, !dbg !1526, !tbaa !974
  %279 = call i1 @llvm.is.constant.i32(i32 %278), !dbg !1526
  br i1 %279, label %if.then408, label %if.else422, !dbg !1527

if.then408:                                       ; preds = %land.lhs.true406
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c409) #17, !dbg !1528
  tail call void @llvm.dbg.declare(metadata ptr %__c409, metadata !920, metadata !DIExpression()), !dbg !1528
  %280 = load i32, ptr %c, align 4, !dbg !1528, !tbaa !974
  store i32 %280, ptr %__c409, align 4, !dbg !1528, !tbaa !974
  %281 = load i32, ptr %__c409, align 4, !dbg !1528, !tbaa !974
  %cmp410 = icmp slt i32 %281, -128, !dbg !1528
  br i1 %cmp410, label %cond.true415, label %lor.lhs.false412, !dbg !1528

lor.lhs.false412:                                 ; preds = %if.then408
  %282 = load i32, ptr %__c409, align 4, !dbg !1528, !tbaa !974
  %cmp413 = icmp sgt i32 %282, 255, !dbg !1528
  br i1 %cmp413, label %cond.true415, label %cond.false416, !dbg !1528

cond.true415:                                     ; preds = %lor.lhs.false412, %if.then408
  %283 = load i32, ptr %__c409, align 4, !dbg !1528, !tbaa !974
  br label %cond.end420, !dbg !1528

cond.false416:                                    ; preds = %lor.lhs.false412
  %call417 = call ptr @__ctype_toupper_loc() #18, !dbg !1528
  %284 = load ptr, ptr %call417, align 8, !dbg !1528, !tbaa !588
  %285 = load i32, ptr %__c409, align 4, !dbg !1528, !tbaa !974
  %idxprom418 = sext i32 %285 to i64, !dbg !1528
  %arrayidx419 = getelementptr inbounds i32, ptr %284, i64 %idxprom418, !dbg !1528
  %286 = load i32, ptr %arrayidx419, align 4, !dbg !1528, !tbaa !974
  br label %cond.end420, !dbg !1528

cond.end420:                                      ; preds = %cond.false416, %cond.true415
  %cond421 = phi i32 [ %283, %cond.true415 ], [ %286, %cond.false416 ], !dbg !1528
  store i32 %cond421, ptr %__res407, align 4, !dbg !1528, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c409) #17, !dbg !1526
  br label %if.end424, !dbg !1528

if.else422:                                       ; preds = %land.lhs.true406
  %287 = load i32, ptr %c, align 4, !dbg !1526, !tbaa !974
  %call423 = call i32 @toupper(i32 noundef %287) #19, !dbg !1526
  store i32 %call423, ptr %__res407, align 4, !dbg !1526, !tbaa !974
  br label %if.end424

if.end424:                                        ; preds = %if.else422, %cond.end420
  %288 = load i32, ptr %__res407, align 4, !dbg !1525, !tbaa !974
  store i32 %288, ptr %tmp425, align 4, !dbg !1529, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res407) #17, !dbg !1530
  %289 = load i32, ptr %tmp425, align 4, !dbg !1525, !tbaa !974
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res426) #17, !dbg !1531
  tail call void @llvm.dbg.declare(metadata ptr %__res426, metadata !925, metadata !DIExpression()), !dbg !1531
  %290 = load i32, ptr %rb, align 4, !dbg !1532, !tbaa !974
  %291 = call i1 @llvm.is.constant.i32(i32 %290), !dbg !1532
  br i1 %291, label %if.then427, label %if.else441, !dbg !1533

if.then427:                                       ; preds = %if.end424
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c428) #17, !dbg !1534
  tail call void @llvm.dbg.declare(metadata ptr %__c428, metadata !927, metadata !DIExpression()), !dbg !1534
  %292 = load i32, ptr %rb, align 4, !dbg !1534, !tbaa !974
  store i32 %292, ptr %__c428, align 4, !dbg !1534, !tbaa !974
  %293 = load i32, ptr %__c428, align 4, !dbg !1534, !tbaa !974
  %cmp429 = icmp slt i32 %293, -128, !dbg !1534
  br i1 %cmp429, label %cond.true434, label %lor.lhs.false431, !dbg !1534

lor.lhs.false431:                                 ; preds = %if.then427
  %294 = load i32, ptr %__c428, align 4, !dbg !1534, !tbaa !974
  %cmp432 = icmp sgt i32 %294, 255, !dbg !1534
  br i1 %cmp432, label %cond.true434, label %cond.false435, !dbg !1534

cond.true434:                                     ; preds = %lor.lhs.false431, %if.then427
  %295 = load i32, ptr %__c428, align 4, !dbg !1534, !tbaa !974
  br label %cond.end439, !dbg !1534

cond.false435:                                    ; preds = %lor.lhs.false431
  %call436 = call ptr @__ctype_toupper_loc() #18, !dbg !1534
  %296 = load ptr, ptr %call436, align 8, !dbg !1534, !tbaa !588
  %297 = load i32, ptr %__c428, align 4, !dbg !1534, !tbaa !974
  %idxprom437 = sext i32 %297 to i64, !dbg !1534
  %arrayidx438 = getelementptr inbounds i32, ptr %296, i64 %idxprom437, !dbg !1534
  %298 = load i32, ptr %arrayidx438, align 4, !dbg !1534, !tbaa !974
  br label %cond.end439, !dbg !1534

cond.end439:                                      ; preds = %cond.false435, %cond.true434
  %cond440 = phi i32 [ %295, %cond.true434 ], [ %298, %cond.false435 ], !dbg !1534
  store i32 %cond440, ptr %__res426, align 4, !dbg !1534, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c428) #17, !dbg !1532
  br label %if.end443, !dbg !1534

if.else441:                                       ; preds = %if.end424
  %299 = load i32, ptr %rb, align 4, !dbg !1532, !tbaa !974
  %call442 = call i32 @toupper(i32 noundef %299) #19, !dbg !1532
  store i32 %call442, ptr %__res426, align 4, !dbg !1532, !tbaa !974
  br label %if.end443

if.end443:                                        ; preds = %if.else441, %cond.end439
  %300 = load i32, ptr %__res426, align 4, !dbg !1531, !tbaa !974
  store i32 %300, ptr %tmp444, align 4, !dbg !1535, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res426) #17, !dbg !1536
  %301 = load i32, ptr %tmp444, align 4, !dbg !1531, !tbaa !974
  %cmp445 = icmp eq i32 %289, %301, !dbg !1537
  br i1 %cmp445, label %if.then447, label %if.end456, !dbg !1538

if.then447:                                       ; preds = %if.end443
  %302 = load ptr, ptr %p324, align 8, !dbg !1539, !tbaa !588
  %b448 = getelementptr inbounds %struct.bam_pileup1_t, ptr %302, i32 0, i32 0, !dbg !1539
  %303 = load ptr, ptr %b448, align 8, !dbg !1539, !tbaa !1467
  %core449 = getelementptr inbounds %struct.bam1_t, ptr %303, i32 0, i32 0, !dbg !1539
  %flag450 = getelementptr inbounds %struct.bam1_core_t, ptr %core449, i32 0, i32 5, !dbg !1539
  %304 = load i16, ptr %flag450, align 8, !dbg !1539, !tbaa !1487
  %conv451 = zext i16 %304 to i32, !dbg !1539
  %and452 = and i32 %conv451, 16, !dbg !1539
  %cmp453 = icmp ne i32 %and452, 0, !dbg !1539
  %305 = zext i1 %cmp453 to i64, !dbg !1539
  %cond455 = select i1 %cmp453, i32 44, i32 46, !dbg !1539
  store i32 %cond455, ptr %c, align 4, !dbg !1540, !tbaa !974
  br label %if.end456, !dbg !1541

if.end456:                                        ; preds = %if.then447, %if.end443, %if.else377
  br label %if.end457

if.end457:                                        ; preds = %if.end456, %cond.end375
  br label %if.end458

if.end458:                                        ; preds = %if.end457, %if.end356
  br label %if.end475, !dbg !1542

if.else459:                                       ; preds = %if.then331
  %306 = load ptr, ptr %p324, align 8, !dbg !1543, !tbaa !588
  %is_refskip = getelementptr inbounds %struct.bam_pileup1_t, ptr %306, i32 0, i32 4, !dbg !1544
  %bf.load460 = load i32, ptr %is_refskip, align 4, !dbg !1544
  %bf.lshr = lshr i32 %bf.load460, 3, !dbg !1544
  %bf.clear461 = and i32 %bf.lshr, 1, !dbg !1544
  %tobool462 = icmp ne i32 %bf.clear461, 0, !dbg !1543
  br i1 %tobool462, label %cond.true463, label %cond.false472, !dbg !1543

cond.true463:                                     ; preds = %if.else459
  %307 = load ptr, ptr %p324, align 8, !dbg !1545, !tbaa !588
  %b464 = getelementptr inbounds %struct.bam_pileup1_t, ptr %307, i32 0, i32 0, !dbg !1545
  %308 = load ptr, ptr %b464, align 8, !dbg !1545, !tbaa !1467
  %core465 = getelementptr inbounds %struct.bam1_t, ptr %308, i32 0, i32 0, !dbg !1545
  %flag466 = getelementptr inbounds %struct.bam1_core_t, ptr %core465, i32 0, i32 5, !dbg !1545
  %309 = load i16, ptr %flag466, align 8, !dbg !1545, !tbaa !1487
  %conv467 = zext i16 %309 to i32, !dbg !1545
  %and468 = and i32 %conv467, 16, !dbg !1545
  %cmp469 = icmp ne i32 %and468, 0, !dbg !1545
  %310 = zext i1 %cmp469 to i64, !dbg !1545
  %cond471 = select i1 %cmp469, i32 60, i32 62, !dbg !1545
  br label %cond.end473, !dbg !1543

cond.false472:                                    ; preds = %if.else459
  br label %cond.end473, !dbg !1543

cond.end473:                                      ; preds = %cond.false472, %cond.true463
  %cond474 = phi i32 [ %cond471, %cond.true463 ], [ 42, %cond.false472 ], !dbg !1543
  store i32 %cond474, ptr %c, align 4, !dbg !1546, !tbaa !974
  br label %if.end475

if.end475:                                        ; preds = %cond.end473, %if.end458
  br label %if.end605, !dbg !1547

if.else476:                                       ; preds = %for.body323
  call void @llvm.lifetime.start.p0(i64 4, ptr %len477) #17, !dbg !1548
  tail call void @llvm.dbg.declare(metadata ptr %len477, metadata !932, metadata !DIExpression()), !dbg !1549
  %311 = load ptr, ptr %p324, align 8, !dbg !1550, !tbaa !588
  %call478 = call i32 @bam_plp_insertion(ptr noundef %311, ptr noundef %ks, ptr noundef null), !dbg !1551
  store i32 %call478, ptr %len477, align 4, !dbg !1549, !tbaa !974
  %312 = load i32, ptr %len477, align 4, !dbg !1552, !tbaa !974
  %cmp479 = icmp slt i32 %312, 0, !dbg !1554
  br i1 %cmp479, label %if.then481, label %if.end482, !dbg !1555

if.then481:                                       ; preds = %if.else476
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str.4, ptr noundef @.str.13), !dbg !1556
  call void @exit(i32 noundef 1) #16, !dbg !1558
  unreachable, !dbg !1558

if.end482:                                        ; preds = %if.else476
  %313 = load i32, ptr %j, align 4, !dbg !1559, !tbaa !974
  %314 = load i32, ptr %len477, align 4, !dbg !1560, !tbaa !974
  %cmp483 = icmp sgt i32 %313, %314, !dbg !1561
  br i1 %cmp483, label %if.then485, label %if.else486, !dbg !1562

if.then485:                                       ; preds = %if.end482
  store i32 42, ptr %c, align 4, !dbg !1563, !tbaa !974
  br label %if.end604, !dbg !1564

if.else486:                                       ; preds = %if.end482
  %315 = load ptr, ptr %tv, align 8, !dbg !1565, !tbaa !588
  %base_for487 = getelementptr inbounds %struct.AbstractTview, ptr %315, i32 0, i32 14, !dbg !1566
  %316 = load i32, ptr %base_for487, align 4, !dbg !1566, !tbaa !1462
  %cmp488 = icmp eq i32 %316, 0, !dbg !1567
  br i1 %cmp488, label %if.then490, label %if.else577, !dbg !1568

if.then490:                                       ; preds = %if.else486
  %317 = load ptr, ptr %tv, align 8, !dbg !1569, !tbaa !588
  %show_name491 = getelementptr inbounds %struct.AbstractTview, ptr %317, i32 0, i32 19, !dbg !1570
  %318 = load i32, ptr %show_name491, align 8, !dbg !1570, !tbaa !1496
  %tobool492 = icmp ne i32 %318, 0, !dbg !1569
  br i1 %tobool492, label %if.then493, label %if.else515, !dbg !1571

if.then493:                                       ; preds = %if.then490
  call void @llvm.lifetime.start.p0(i64 8, ptr %name494) #17, !dbg !1572
  tail call void @llvm.dbg.declare(metadata ptr %name494, metadata !934, metadata !DIExpression()), !dbg !1573
  %319 = load ptr, ptr %p324, align 8, !dbg !1574, !tbaa !588
  %b495 = getelementptr inbounds %struct.bam_pileup1_t, ptr %319, i32 0, i32 0, !dbg !1574
  %320 = load ptr, ptr %b495, align 8, !dbg !1574, !tbaa !1467
  %data496 = getelementptr inbounds %struct.bam1_t, ptr %320, i32 0, i32 2, !dbg !1574
  %321 = load ptr, ptr %data496, align 8, !dbg !1574, !tbaa !1501
  store ptr %321, ptr %name494, align 8, !dbg !1573, !tbaa !588
  %322 = load ptr, ptr %p324, align 8, !dbg !1575, !tbaa !588
  %qpos497 = getelementptr inbounds %struct.bam_pileup1_t, ptr %322, i32 0, i32 1, !dbg !1576
  %323 = load i32, ptr %qpos497, align 8, !dbg !1576, !tbaa !1470
  %324 = load i32, ptr %j, align 4, !dbg !1577, !tbaa !974
  %add498 = add nsw i32 %323, %324, !dbg !1578
  %add499 = add nsw i32 %add498, 1, !dbg !1579
  %325 = load ptr, ptr %p324, align 8, !dbg !1580, !tbaa !588
  %b500 = getelementptr inbounds %struct.bam_pileup1_t, ptr %325, i32 0, i32 0, !dbg !1581
  %326 = load ptr, ptr %b500, align 8, !dbg !1581, !tbaa !1467
  %core501 = getelementptr inbounds %struct.bam1_t, ptr %326, i32 0, i32 0, !dbg !1582
  %l_qname502 = getelementptr inbounds %struct.bam1_core_t, ptr %core501, i32 0, i32 6, !dbg !1583
  %327 = load i16, ptr %l_qname502, align 2, !dbg !1583, !tbaa !1509
  %conv503 = zext i16 %327 to i32, !dbg !1580
  %cmp504 = icmp sge i32 %add499, %conv503, !dbg !1584
  br i1 %cmp504, label %cond.true506, label %cond.false507, !dbg !1585

cond.true506:                                     ; preds = %if.then493
  br label %cond.end513, !dbg !1585

cond.false507:                                    ; preds = %if.then493
  %328 = load ptr, ptr %name494, align 8, !dbg !1586, !tbaa !588
  %329 = load ptr, ptr %p324, align 8, !dbg !1587, !tbaa !588
  %qpos508 = getelementptr inbounds %struct.bam_pileup1_t, ptr %329, i32 0, i32 1, !dbg !1588
  %330 = load i32, ptr %qpos508, align 8, !dbg !1588, !tbaa !1470
  %331 = load i32, ptr %j, align 4, !dbg !1589, !tbaa !974
  %add509 = add nsw i32 %330, %331, !dbg !1590
  %idxprom510 = sext i32 %add509 to i64, !dbg !1586
  %arrayidx511 = getelementptr inbounds i8, ptr %328, i64 %idxprom510, !dbg !1586
  %332 = load i8, ptr %arrayidx511, align 1, !dbg !1586, !tbaa !1032
  %conv512 = sext i8 %332 to i32, !dbg !1586
  br label %cond.end513, !dbg !1585

cond.end513:                                      ; preds = %cond.false507, %cond.true506
  %cond514 = phi i32 [ 32, %cond.true506 ], [ %conv512, %cond.false507 ], !dbg !1585
  store i32 %cond514, ptr %c, align 4, !dbg !1591, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 8, ptr %name494) #17, !dbg !1592
  br label %if.end576, !dbg !1593

if.else515:                                       ; preds = %if.then490
  %s = getelementptr inbounds %struct.kstring_t, ptr %ks, i32 0, i32 2, !dbg !1594
  %333 = load ptr, ptr %s, align 8, !dbg !1594, !tbaa !1595
  %334 = load i32, ptr %j, align 4, !dbg !1597, !tbaa !974
  %sub516 = sub nsw i32 %334, 1, !dbg !1598
  %idxprom517 = sext i32 %sub516 to i64, !dbg !1599
  %arrayidx518 = getelementptr inbounds i8, ptr %333, i64 %idxprom517, !dbg !1599
  %335 = load i8, ptr %arrayidx518, align 1, !dbg !1599, !tbaa !1032
  %conv519 = sext i8 %335 to i32, !dbg !1599
  store i32 %conv519, ptr %c, align 4, !dbg !1600, !tbaa !974
  %336 = load i32, ptr %j, align 4, !dbg !1601, !tbaa !974
  %cmp520 = icmp eq i32 %336, 0, !dbg !1602
  br i1 %cmp520, label %land.lhs.true522, label %if.end575, !dbg !1603

land.lhs.true522:                                 ; preds = %if.else515
  %337 = load ptr, ptr %tv, align 8, !dbg !1604, !tbaa !588
  %is_dot523 = getelementptr inbounds %struct.AbstractTview, ptr %337, i32 0, i32 16, !dbg !1605
  %338 = load i32, ptr %is_dot523, align 4, !dbg !1605, !tbaa !624
  %tobool524 = icmp ne i32 %338, 0, !dbg !1604
  br i1 %tobool524, label %land.lhs.true525, label %if.end575, !dbg !1606

land.lhs.true525:                                 ; preds = %land.lhs.true522
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res526) #17, !dbg !1607
  tail call void @llvm.dbg.declare(metadata ptr %__res526, metadata !941, metadata !DIExpression()), !dbg !1607
  %339 = load i32, ptr %c, align 4, !dbg !1608, !tbaa !974
  %340 = call i1 @llvm.is.constant.i32(i32 %339), !dbg !1608
  br i1 %340, label %if.then527, label %if.else541, !dbg !1609

if.then527:                                       ; preds = %land.lhs.true525
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c528) #17, !dbg !1610
  tail call void @llvm.dbg.declare(metadata ptr %__c528, metadata !945, metadata !DIExpression()), !dbg !1610
  %341 = load i32, ptr %c, align 4, !dbg !1610, !tbaa !974
  store i32 %341, ptr %__c528, align 4, !dbg !1610, !tbaa !974
  %342 = load i32, ptr %__c528, align 4, !dbg !1610, !tbaa !974
  %cmp529 = icmp slt i32 %342, -128, !dbg !1610
  br i1 %cmp529, label %cond.true534, label %lor.lhs.false531, !dbg !1610

lor.lhs.false531:                                 ; preds = %if.then527
  %343 = load i32, ptr %__c528, align 4, !dbg !1610, !tbaa !974
  %cmp532 = icmp sgt i32 %343, 255, !dbg !1610
  br i1 %cmp532, label %cond.true534, label %cond.false535, !dbg !1610

cond.true534:                                     ; preds = %lor.lhs.false531, %if.then527
  %344 = load i32, ptr %__c528, align 4, !dbg !1610, !tbaa !974
  br label %cond.end539, !dbg !1610

cond.false535:                                    ; preds = %lor.lhs.false531
  %call536 = call ptr @__ctype_toupper_loc() #18, !dbg !1610
  %345 = load ptr, ptr %call536, align 8, !dbg !1610, !tbaa !588
  %346 = load i32, ptr %__c528, align 4, !dbg !1610, !tbaa !974
  %idxprom537 = sext i32 %346 to i64, !dbg !1610
  %arrayidx538 = getelementptr inbounds i32, ptr %345, i64 %idxprom537, !dbg !1610
  %347 = load i32, ptr %arrayidx538, align 4, !dbg !1610, !tbaa !974
  br label %cond.end539, !dbg !1610

cond.end539:                                      ; preds = %cond.false535, %cond.true534
  %cond540 = phi i32 [ %344, %cond.true534 ], [ %347, %cond.false535 ], !dbg !1610
  store i32 %cond540, ptr %__res526, align 4, !dbg !1610, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c528) #17, !dbg !1608
  br label %if.end543, !dbg !1610

if.else541:                                       ; preds = %land.lhs.true525
  %348 = load i32, ptr %c, align 4, !dbg !1608, !tbaa !974
  %call542 = call i32 @toupper(i32 noundef %348) #19, !dbg !1608
  store i32 %call542, ptr %__res526, align 4, !dbg !1608, !tbaa !974
  br label %if.end543

if.end543:                                        ; preds = %if.else541, %cond.end539
  %349 = load i32, ptr %__res526, align 4, !dbg !1607, !tbaa !974
  store i32 %349, ptr %tmp544, align 4, !dbg !1611, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res526) #17, !dbg !1612
  %350 = load i32, ptr %tmp544, align 4, !dbg !1607, !tbaa !974
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res545) #17, !dbg !1613
  tail call void @llvm.dbg.declare(metadata ptr %__res545, metadata !950, metadata !DIExpression()), !dbg !1613
  %351 = load i32, ptr %rb, align 4, !dbg !1614, !tbaa !974
  %352 = call i1 @llvm.is.constant.i32(i32 %351), !dbg !1614
  br i1 %352, label %if.then546, label %if.else560, !dbg !1615

if.then546:                                       ; preds = %if.end543
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c547) #17, !dbg !1616
  tail call void @llvm.dbg.declare(metadata ptr %__c547, metadata !952, metadata !DIExpression()), !dbg !1616
  %353 = load i32, ptr %rb, align 4, !dbg !1616, !tbaa !974
  store i32 %353, ptr %__c547, align 4, !dbg !1616, !tbaa !974
  %354 = load i32, ptr %__c547, align 4, !dbg !1616, !tbaa !974
  %cmp548 = icmp slt i32 %354, -128, !dbg !1616
  br i1 %cmp548, label %cond.true553, label %lor.lhs.false550, !dbg !1616

lor.lhs.false550:                                 ; preds = %if.then546
  %355 = load i32, ptr %__c547, align 4, !dbg !1616, !tbaa !974
  %cmp551 = icmp sgt i32 %355, 255, !dbg !1616
  br i1 %cmp551, label %cond.true553, label %cond.false554, !dbg !1616

cond.true553:                                     ; preds = %lor.lhs.false550, %if.then546
  %356 = load i32, ptr %__c547, align 4, !dbg !1616, !tbaa !974
  br label %cond.end558, !dbg !1616

cond.false554:                                    ; preds = %lor.lhs.false550
  %call555 = call ptr @__ctype_toupper_loc() #18, !dbg !1616
  %357 = load ptr, ptr %call555, align 8, !dbg !1616, !tbaa !588
  %358 = load i32, ptr %__c547, align 4, !dbg !1616, !tbaa !974
  %idxprom556 = sext i32 %358 to i64, !dbg !1616
  %arrayidx557 = getelementptr inbounds i32, ptr %357, i64 %idxprom556, !dbg !1616
  %359 = load i32, ptr %arrayidx557, align 4, !dbg !1616, !tbaa !974
  br label %cond.end558, !dbg !1616

cond.end558:                                      ; preds = %cond.false554, %cond.true553
  %cond559 = phi i32 [ %356, %cond.true553 ], [ %359, %cond.false554 ], !dbg !1616
  store i32 %cond559, ptr %__res545, align 4, !dbg !1616, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c547) #17, !dbg !1614
  br label %if.end562, !dbg !1616

if.else560:                                       ; preds = %if.end543
  %360 = load i32, ptr %rb, align 4, !dbg !1614, !tbaa !974
  %call561 = call i32 @toupper(i32 noundef %360) #19, !dbg !1614
  store i32 %call561, ptr %__res545, align 4, !dbg !1614, !tbaa !974
  br label %if.end562

if.end562:                                        ; preds = %if.else560, %cond.end558
  %361 = load i32, ptr %__res545, align 4, !dbg !1613, !tbaa !974
  store i32 %361, ptr %tmp563, align 4, !dbg !1617, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res545) #17, !dbg !1618
  %362 = load i32, ptr %tmp563, align 4, !dbg !1613, !tbaa !974
  %cmp564 = icmp eq i32 %350, %362, !dbg !1619
  br i1 %cmp564, label %if.then566, label %if.end575, !dbg !1620

if.then566:                                       ; preds = %if.end562
  %363 = load ptr, ptr %p324, align 8, !dbg !1621, !tbaa !588
  %b567 = getelementptr inbounds %struct.bam_pileup1_t, ptr %363, i32 0, i32 0, !dbg !1621
  %364 = load ptr, ptr %b567, align 8, !dbg !1621, !tbaa !1467
  %core568 = getelementptr inbounds %struct.bam1_t, ptr %364, i32 0, i32 0, !dbg !1621
  %flag569 = getelementptr inbounds %struct.bam1_core_t, ptr %core568, i32 0, i32 5, !dbg !1621
  %365 = load i16, ptr %flag569, align 8, !dbg !1621, !tbaa !1487
  %conv570 = zext i16 %365 to i32, !dbg !1621
  %and571 = and i32 %conv570, 16, !dbg !1621
  %cmp572 = icmp ne i32 %and571, 0, !dbg !1621
  %366 = zext i1 %cmp572 to i64, !dbg !1621
  %cond574 = select i1 %cmp572, i32 44, i32 46, !dbg !1621
  store i32 %cond574, ptr %c, align 4, !dbg !1622, !tbaa !974
  br label %if.end575, !dbg !1623

if.end575:                                        ; preds = %if.then566, %if.end562, %land.lhs.true522, %if.else515
  br label %if.end576

if.end576:                                        ; preds = %if.end575, %cond.end513
  br label %if.end603, !dbg !1624

if.else577:                                       ; preds = %if.else486
  %367 = load ptr, ptr %p324, align 8, !dbg !1625, !tbaa !588
  %b578 = getelementptr inbounds %struct.bam_pileup1_t, ptr %367, i32 0, i32 0, !dbg !1627
  %368 = load ptr, ptr %b578, align 8, !dbg !1627, !tbaa !1467
  %369 = load ptr, ptr %p324, align 8, !dbg !1628, !tbaa !588
  %qpos579 = getelementptr inbounds %struct.bam_pileup1_t, ptr %369, i32 0, i32 1, !dbg !1629
  %370 = load i32, ptr %qpos579, align 8, !dbg !1629, !tbaa !1470
  %371 = load i32, ptr %j, align 4, !dbg !1630, !tbaa !974
  %add580 = add nsw i32 %370, %371, !dbg !1631
  %call581 = call signext i8 @bam_aux_getCSi(ptr noundef %368, i32 noundef %add580), !dbg !1632
  %conv582 = sext i8 %call581 to i32, !dbg !1632
  store i32 %conv582, ptr %c, align 4, !dbg !1633, !tbaa !974
  %372 = load ptr, ptr %tv, align 8, !dbg !1634, !tbaa !588
  %is_dot583 = getelementptr inbounds %struct.AbstractTview, ptr %372, i32 0, i32 16, !dbg !1636
  %373 = load i32, ptr %is_dot583, align 4, !dbg !1636, !tbaa !624
  %tobool584 = icmp ne i32 %373, 0, !dbg !1634
  br i1 %tobool584, label %land.lhs.true585, label %if.end602, !dbg !1637

land.lhs.true585:                                 ; preds = %if.else577
  %374 = load ptr, ptr %p324, align 8, !dbg !1638, !tbaa !588
  %b586 = getelementptr inbounds %struct.bam_pileup1_t, ptr %374, i32 0, i32 0, !dbg !1639
  %375 = load ptr, ptr %b586, align 8, !dbg !1639, !tbaa !1467
  %376 = load ptr, ptr %p324, align 8, !dbg !1640, !tbaa !588
  %qpos587 = getelementptr inbounds %struct.bam_pileup1_t, ptr %376, i32 0, i32 1, !dbg !1641
  %377 = load i32, ptr %qpos587, align 8, !dbg !1641, !tbaa !1470
  %378 = load i32, ptr %j, align 4, !dbg !1642, !tbaa !974
  %add588 = add nsw i32 %377, %378, !dbg !1643
  %call589 = call signext i8 @bam_aux_getCEi(ptr noundef %375, i32 noundef %add588), !dbg !1644
  %conv590 = sext i8 %call589 to i32, !dbg !1644
  %cmp591 = icmp eq i32 45, %conv590, !dbg !1645
  br i1 %cmp591, label %if.then593, label %if.end602, !dbg !1646

if.then593:                                       ; preds = %land.lhs.true585
  %379 = load ptr, ptr %p324, align 8, !dbg !1647, !tbaa !588
  %b594 = getelementptr inbounds %struct.bam_pileup1_t, ptr %379, i32 0, i32 0, !dbg !1647
  %380 = load ptr, ptr %b594, align 8, !dbg !1647, !tbaa !1467
  %core595 = getelementptr inbounds %struct.bam1_t, ptr %380, i32 0, i32 0, !dbg !1647
  %flag596 = getelementptr inbounds %struct.bam1_core_t, ptr %core595, i32 0, i32 5, !dbg !1647
  %381 = load i16, ptr %flag596, align 8, !dbg !1647, !tbaa !1487
  %conv597 = zext i16 %381 to i32, !dbg !1647
  %and598 = and i32 %conv597, 16, !dbg !1647
  %cmp599 = icmp ne i32 %and598, 0, !dbg !1647
  %382 = zext i1 %cmp599 to i64, !dbg !1647
  %cond601 = select i1 %cmp599, i32 44, i32 46, !dbg !1647
  store i32 %cond601, ptr %c, align 4, !dbg !1648, !tbaa !974
  br label %if.end602, !dbg !1649

if.end602:                                        ; preds = %if.then593, %land.lhs.true585, %if.else577
  br label %if.end603

if.end603:                                        ; preds = %if.end602, %if.end576
  br label %if.end604

if.end604:                                        ; preds = %if.end603, %if.then485
  call void @llvm.lifetime.end.p0(i64 4, ptr %len477) #17, !dbg !1650
  br label %if.end605

if.end605:                                        ; preds = %if.end604, %if.end475
  %383 = load i32, ptr %row, align 4, !dbg !1651, !tbaa !974
  %cmp606 = icmp sgt i32 %383, 2, !dbg !1652
  br i1 %cmp606, label %land.lhs.true608, label %if.end875, !dbg !1653

land.lhs.true608:                                 ; preds = %if.end605
  %384 = load i32, ptr %row, align 4, !dbg !1654, !tbaa !974
  %385 = load ptr, ptr %tv, align 8, !dbg !1655, !tbaa !588
  %mrow = getelementptr inbounds %struct.AbstractTview, ptr %385, i32 0, i32 0, !dbg !1656
  %386 = load i32, ptr %mrow, align 8, !dbg !1656, !tbaa !609
  %cmp609 = icmp slt i32 %384, %386, !dbg !1657
  br i1 %cmp609, label %if.then611, label %if.end875, !dbg !1658

if.then611:                                       ; preds = %land.lhs.true608
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #17, !dbg !1659
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !957, metadata !DIExpression()), !dbg !1660
  store i32 0, ptr %attr, align 4, !dbg !1661, !tbaa !974
  %387 = load ptr, ptr %p324, align 8, !dbg !1662, !tbaa !588
  %b612 = getelementptr inbounds %struct.bam_pileup1_t, ptr %387, i32 0, i32 0, !dbg !1664
  %388 = load ptr, ptr %b612, align 8, !dbg !1664, !tbaa !1467
  %core613 = getelementptr inbounds %struct.bam1_t, ptr %388, i32 0, i32 0, !dbg !1665
  %flag614 = getelementptr inbounds %struct.bam1_core_t, ptr %core613, i32 0, i32 5, !dbg !1666
  %389 = load i16, ptr %flag614, align 8, !dbg !1666, !tbaa !1487
  %conv615 = zext i16 %389 to i32, !dbg !1662
  %and616 = and i32 %conv615, 1, !dbg !1667
  %tobool617 = icmp ne i32 %and616, 0, !dbg !1667
  br i1 %tobool617, label %land.lhs.true618, label %lor.lhs.false625, !dbg !1668

land.lhs.true618:                                 ; preds = %if.then611
  %390 = load ptr, ptr %p324, align 8, !dbg !1669, !tbaa !588
  %b619 = getelementptr inbounds %struct.bam_pileup1_t, ptr %390, i32 0, i32 0, !dbg !1670
  %391 = load ptr, ptr %b619, align 8, !dbg !1670, !tbaa !1467
  %core620 = getelementptr inbounds %struct.bam1_t, ptr %391, i32 0, i32 0, !dbg !1671
  %flag621 = getelementptr inbounds %struct.bam1_core_t, ptr %core620, i32 0, i32 5, !dbg !1672
  %392 = load i16, ptr %flag621, align 8, !dbg !1672, !tbaa !1487
  %conv622 = zext i16 %392 to i32, !dbg !1669
  %and623 = and i32 %conv622, 2, !dbg !1673
  %tobool624 = icmp ne i32 %and623, 0, !dbg !1673
  br i1 %tobool624, label %lor.lhs.false625, label %if.then632, !dbg !1674

lor.lhs.false625:                                 ; preds = %land.lhs.true618, %if.then611
  %393 = load ptr, ptr %p324, align 8, !dbg !1675, !tbaa !588
  %b626 = getelementptr inbounds %struct.bam_pileup1_t, ptr %393, i32 0, i32 0, !dbg !1676
  %394 = load ptr, ptr %b626, align 8, !dbg !1676, !tbaa !1467
  %core627 = getelementptr inbounds %struct.bam1_t, ptr %394, i32 0, i32 0, !dbg !1677
  %flag628 = getelementptr inbounds %struct.bam1_core_t, ptr %core627, i32 0, i32 5, !dbg !1678
  %395 = load i16, ptr %flag628, align 8, !dbg !1678, !tbaa !1487
  %conv629 = zext i16 %395 to i32, !dbg !1675
  %and630 = and i32 %conv629, 256, !dbg !1679
  %tobool631 = icmp ne i32 %and630, 0, !dbg !1679
  br i1 %tobool631, label %if.then632, label %if.end636, !dbg !1680

if.then632:                                       ; preds = %lor.lhs.false625, %land.lhs.true618
  %396 = load ptr, ptr %tv, align 8, !dbg !1681, !tbaa !588
  %my_underline633 = getelementptr inbounds %struct.AbstractTview, ptr %396, i32 0, i32 32, !dbg !1682
  %397 = load ptr, ptr %my_underline633, align 8, !dbg !1682, !tbaa !1334
  %398 = load ptr, ptr %tv, align 8, !dbg !1683, !tbaa !588
  %call634 = call i32 %397(ptr noundef %398), !dbg !1681
  %399 = load i32, ptr %attr, align 4, !dbg !1684, !tbaa !974
  %or635 = or i32 %399, %call634, !dbg !1684
  store i32 %or635, ptr %attr, align 4, !dbg !1684, !tbaa !974
  br label %if.end636, !dbg !1685

if.end636:                                        ; preds = %if.then632, %lor.lhs.false625
  %400 = load ptr, ptr %tv, align 8, !dbg !1686, !tbaa !588
  %color_for = getelementptr inbounds %struct.AbstractTview, ptr %400, i32 0, i32 15, !dbg !1688
  %401 = load i32, ptr %color_for, align 8, !dbg !1688, !tbaa !620
  %cmp637 = icmp eq i32 %401, 1, !dbg !1689
  br i1 %cmp637, label %if.then639, label %if.else673, !dbg !1690

if.then639:                                       ; preds = %if.end636
  %402 = load ptr, ptr %p324, align 8, !dbg !1691, !tbaa !588
  %b640 = getelementptr inbounds %struct.bam_pileup1_t, ptr %402, i32 0, i32 0, !dbg !1691
  %403 = load ptr, ptr %b640, align 8, !dbg !1691, !tbaa !1467
  %data641 = getelementptr inbounds %struct.bam1_t, ptr %403, i32 0, i32 2, !dbg !1691
  %404 = load ptr, ptr %data641, align 8, !dbg !1691, !tbaa !1501
  %405 = load ptr, ptr %p324, align 8, !dbg !1691, !tbaa !588
  %b642 = getelementptr inbounds %struct.bam_pileup1_t, ptr %405, i32 0, i32 0, !dbg !1691
  %406 = load ptr, ptr %b642, align 8, !dbg !1691, !tbaa !1467
  %core643 = getelementptr inbounds %struct.bam1_t, ptr %406, i32 0, i32 0, !dbg !1691
  %n_cigar644 = getelementptr inbounds %struct.bam1_core_t, ptr %core643, i32 0, i32 7, !dbg !1691
  %407 = load i32, ptr %n_cigar644, align 4, !dbg !1691, !tbaa !1519
  %shl645 = shl i32 %407, 2, !dbg !1691
  %idx.ext646 = zext i32 %shl645 to i64, !dbg !1691
  %add.ptr647 = getelementptr inbounds i8, ptr %404, i64 %idx.ext646, !dbg !1691
  %408 = load ptr, ptr %p324, align 8, !dbg !1691, !tbaa !588
  %b648 = getelementptr inbounds %struct.bam_pileup1_t, ptr %408, i32 0, i32 0, !dbg !1691
  %409 = load ptr, ptr %b648, align 8, !dbg !1691, !tbaa !1467
  %core649 = getelementptr inbounds %struct.bam1_t, ptr %409, i32 0, i32 0, !dbg !1691
  %l_qname650 = getelementptr inbounds %struct.bam1_core_t, ptr %core649, i32 0, i32 6, !dbg !1691
  %410 = load i16, ptr %l_qname650, align 2, !dbg !1691, !tbaa !1509
  %conv651 = zext i16 %410 to i32, !dbg !1691
  %idx.ext652 = sext i32 %conv651 to i64, !dbg !1691
  %add.ptr653 = getelementptr inbounds i8, ptr %add.ptr647, i64 %idx.ext652, !dbg !1691
  %411 = load ptr, ptr %p324, align 8, !dbg !1691, !tbaa !588
  %b654 = getelementptr inbounds %struct.bam_pileup1_t, ptr %411, i32 0, i32 0, !dbg !1691
  %412 = load ptr, ptr %b654, align 8, !dbg !1691, !tbaa !1467
  %core655 = getelementptr inbounds %struct.bam1_t, ptr %412, i32 0, i32 0, !dbg !1691
  %l_qseq = getelementptr inbounds %struct.bam1_core_t, ptr %core655, i32 0, i32 8, !dbg !1691
  %413 = load i32, ptr %l_qseq, align 8, !dbg !1691, !tbaa !1693
  %add656 = add nsw i32 %413, 1, !dbg !1691
  %shr657 = ashr i32 %add656, 1, !dbg !1691
  %idx.ext658 = sext i32 %shr657 to i64, !dbg !1691
  %add.ptr659 = getelementptr inbounds i8, ptr %add.ptr653, i64 %idx.ext658, !dbg !1691
  %414 = load ptr, ptr %p324, align 8, !dbg !1694, !tbaa !588
  %qpos660 = getelementptr inbounds %struct.bam_pileup1_t, ptr %414, i32 0, i32 1, !dbg !1695
  %415 = load i32, ptr %qpos660, align 8, !dbg !1695, !tbaa !1470
  %idxprom661 = sext i32 %415 to i64, !dbg !1691
  %arrayidx662 = getelementptr inbounds i8, ptr %add.ptr659, i64 %idxprom661, !dbg !1691
  %416 = load i8, ptr %arrayidx662, align 1, !dbg !1691, !tbaa !1032
  %conv663 = zext i8 %416 to i32, !dbg !1691
  %div664 = sdiv i32 %conv663, 10, !dbg !1696
  %add665 = add nsw i32 %div664, 1, !dbg !1697
  store i32 %add665, ptr %x, align 4, !dbg !1698, !tbaa !974
  %417 = load i32, ptr %x, align 4, !dbg !1699, !tbaa !974
  %cmp666 = icmp sgt i32 %417, 4, !dbg !1701
  br i1 %cmp666, label %if.then668, label %if.end669, !dbg !1702

if.then668:                                       ; preds = %if.then639
  store i32 4, ptr %x, align 4, !dbg !1703, !tbaa !974
  br label %if.end669, !dbg !1704

if.end669:                                        ; preds = %if.then668, %if.then639
  %418 = load ptr, ptr %tv, align 8, !dbg !1705, !tbaa !588
  %my_colorpair670 = getelementptr inbounds %struct.AbstractTview, ptr %418, i32 0, i32 29, !dbg !1706
  %419 = load ptr, ptr %my_colorpair670, align 8, !dbg !1706, !tbaa !1355
  %420 = load ptr, ptr %tv, align 8, !dbg !1707, !tbaa !588
  %421 = load i32, ptr %x, align 4, !dbg !1708, !tbaa !974
  %call671 = call i32 %419(ptr noundef %420, i32 noundef %421), !dbg !1705
  %422 = load i32, ptr %attr, align 4, !dbg !1709, !tbaa !974
  %or672 = or i32 %422, %call671, !dbg !1709
  store i32 %or672, ptr %attr, align 4, !dbg !1709, !tbaa !974
  br label %if.end821, !dbg !1710

if.else673:                                       ; preds = %if.end636
  %423 = load ptr, ptr %tv, align 8, !dbg !1711, !tbaa !588
  %color_for674 = getelementptr inbounds %struct.AbstractTview, ptr %423, i32 0, i32 15, !dbg !1713
  %424 = load i32, ptr %color_for674, align 8, !dbg !1713, !tbaa !620
  %cmp675 = icmp eq i32 %424, 0, !dbg !1714
  br i1 %cmp675, label %if.then677, label %if.else690, !dbg !1715

if.then677:                                       ; preds = %if.else673
  %425 = load ptr, ptr %p324, align 8, !dbg !1716, !tbaa !588
  %b678 = getelementptr inbounds %struct.bam_pileup1_t, ptr %425, i32 0, i32 0, !dbg !1718
  %426 = load ptr, ptr %b678, align 8, !dbg !1718, !tbaa !1467
  %core679 = getelementptr inbounds %struct.bam1_t, ptr %426, i32 0, i32 0, !dbg !1719
  %qual = getelementptr inbounds %struct.bam1_core_t, ptr %core679, i32 0, i32 3, !dbg !1720
  %427 = load i8, ptr %qual, align 2, !dbg !1720, !tbaa !1721
  %conv680 = zext i8 %427 to i32, !dbg !1716
  %div681 = sdiv i32 %conv680, 10, !dbg !1722
  %add682 = add nsw i32 %div681, 1, !dbg !1723
  store i32 %add682, ptr %x, align 4, !dbg !1724, !tbaa !974
  %428 = load i32, ptr %x, align 4, !dbg !1725, !tbaa !974
  %cmp683 = icmp sgt i32 %428, 4, !dbg !1727
  br i1 %cmp683, label %if.then685, label %if.end686, !dbg !1728

if.then685:                                       ; preds = %if.then677
  store i32 4, ptr %x, align 4, !dbg !1729, !tbaa !974
  br label %if.end686, !dbg !1730

if.end686:                                        ; preds = %if.then685, %if.then677
  %429 = load ptr, ptr %tv, align 8, !dbg !1731, !tbaa !588
  %my_colorpair687 = getelementptr inbounds %struct.AbstractTview, ptr %429, i32 0, i32 29, !dbg !1732
  %430 = load ptr, ptr %my_colorpair687, align 8, !dbg !1732, !tbaa !1355
  %431 = load ptr, ptr %tv, align 8, !dbg !1733, !tbaa !588
  %432 = load i32, ptr %x, align 4, !dbg !1734, !tbaa !974
  %call688 = call i32 %430(ptr noundef %431, i32 noundef %432), !dbg !1731
  %433 = load i32, ptr %attr, align 4, !dbg !1735, !tbaa !974
  %or689 = or i32 %433, %call688, !dbg !1735
  store i32 %or689, ptr %attr, align 4, !dbg !1735, !tbaa !974
  br label %if.end820, !dbg !1736

if.else690:                                       ; preds = %if.else673
  %434 = load ptr, ptr %tv, align 8, !dbg !1737, !tbaa !588
  %color_for691 = getelementptr inbounds %struct.AbstractTview, ptr %434, i32 0, i32 15, !dbg !1739
  %435 = load i32, ptr %color_for691, align 8, !dbg !1739, !tbaa !620
  %cmp692 = icmp eq i32 %435, 2, !dbg !1740
  br i1 %cmp692, label %if.then694, label %if.else726, !dbg !1741

if.then694:                                       ; preds = %if.else690
  %436 = load ptr, ptr %p324, align 8, !dbg !1742, !tbaa !588
  %b695 = getelementptr inbounds %struct.bam_pileup1_t, ptr %436, i32 0, i32 0, !dbg !1742
  %437 = load ptr, ptr %b695, align 8, !dbg !1742, !tbaa !1467
  %data696 = getelementptr inbounds %struct.bam1_t, ptr %437, i32 0, i32 2, !dbg !1742
  %438 = load ptr, ptr %data696, align 8, !dbg !1742, !tbaa !1501
  %439 = load ptr, ptr %p324, align 8, !dbg !1742, !tbaa !588
  %b697 = getelementptr inbounds %struct.bam_pileup1_t, ptr %439, i32 0, i32 0, !dbg !1742
  %440 = load ptr, ptr %b697, align 8, !dbg !1742, !tbaa !1467
  %core698 = getelementptr inbounds %struct.bam1_t, ptr %440, i32 0, i32 0, !dbg !1742
  %n_cigar699 = getelementptr inbounds %struct.bam1_core_t, ptr %core698, i32 0, i32 7, !dbg !1742
  %441 = load i32, ptr %n_cigar699, align 4, !dbg !1742, !tbaa !1519
  %shl700 = shl i32 %441, 2, !dbg !1742
  %idx.ext701 = zext i32 %shl700 to i64, !dbg !1742
  %add.ptr702 = getelementptr inbounds i8, ptr %438, i64 %idx.ext701, !dbg !1742
  %442 = load ptr, ptr %p324, align 8, !dbg !1742, !tbaa !588
  %b703 = getelementptr inbounds %struct.bam_pileup1_t, ptr %442, i32 0, i32 0, !dbg !1742
  %443 = load ptr, ptr %b703, align 8, !dbg !1742, !tbaa !1467
  %core704 = getelementptr inbounds %struct.bam1_t, ptr %443, i32 0, i32 0, !dbg !1742
  %l_qname705 = getelementptr inbounds %struct.bam1_core_t, ptr %core704, i32 0, i32 6, !dbg !1742
  %444 = load i16, ptr %l_qname705, align 2, !dbg !1742, !tbaa !1509
  %conv706 = zext i16 %444 to i32, !dbg !1742
  %idx.ext707 = sext i32 %conv706 to i64, !dbg !1742
  %add.ptr708 = getelementptr inbounds i8, ptr %add.ptr702, i64 %idx.ext707, !dbg !1742
  %445 = load ptr, ptr %p324, align 8, !dbg !1742, !tbaa !588
  %qpos709 = getelementptr inbounds %struct.bam_pileup1_t, ptr %445, i32 0, i32 1, !dbg !1742
  %446 = load i32, ptr %qpos709, align 8, !dbg !1742, !tbaa !1470
  %shr710 = ashr i32 %446, 1, !dbg !1742
  %idxprom711 = sext i32 %shr710 to i64, !dbg !1742
  %arrayidx712 = getelementptr inbounds i8, ptr %add.ptr708, i64 %idxprom711, !dbg !1742
  %447 = load i8, ptr %arrayidx712, align 1, !dbg !1742, !tbaa !1032
  %conv713 = zext i8 %447 to i32, !dbg !1742
  %448 = load ptr, ptr %p324, align 8, !dbg !1742, !tbaa !588
  %qpos714 = getelementptr inbounds %struct.bam_pileup1_t, ptr %448, i32 0, i32 1, !dbg !1742
  %449 = load i32, ptr %qpos714, align 8, !dbg !1742, !tbaa !1470
  %not715 = xor i32 %449, -1, !dbg !1742
  %and716 = and i32 %not715, 1, !dbg !1742
  %shl717 = shl i32 %and716, 2, !dbg !1742
  %shr718 = ashr i32 %conv713, %shl717, !dbg !1742
  %and719 = and i32 %shr718, 15, !dbg !1742
  %idxprom720 = sext i32 %and719 to i64, !dbg !1744
  %arrayidx721 = getelementptr inbounds [0 x i32], ptr @seq_nt16_int, i64 0, i64 %idxprom720, !dbg !1744
  %450 = load i32, ptr %arrayidx721, align 4, !dbg !1744, !tbaa !974
  %add722 = add nsw i32 %450, 5, !dbg !1745
  store i32 %add722, ptr %x, align 4, !dbg !1746, !tbaa !974
  %451 = load ptr, ptr %tv, align 8, !dbg !1747, !tbaa !588
  %my_colorpair723 = getelementptr inbounds %struct.AbstractTview, ptr %451, i32 0, i32 29, !dbg !1748
  %452 = load ptr, ptr %my_colorpair723, align 8, !dbg !1748, !tbaa !1355
  %453 = load ptr, ptr %tv, align 8, !dbg !1749, !tbaa !588
  %454 = load i32, ptr %x, align 4, !dbg !1750, !tbaa !974
  %call724 = call i32 %452(ptr noundef %453, i32 noundef %454), !dbg !1747
  %455 = load i32, ptr %attr, align 4, !dbg !1751, !tbaa !974
  %or725 = or i32 %455, %call724, !dbg !1751
  store i32 %or725, ptr %attr, align 4, !dbg !1751, !tbaa !974
  br label %if.end819, !dbg !1752

if.else726:                                       ; preds = %if.else690
  %456 = load ptr, ptr %tv, align 8, !dbg !1753, !tbaa !588
  %color_for727 = getelementptr inbounds %struct.AbstractTview, ptr %456, i32 0, i32 15, !dbg !1755
  %457 = load i32, ptr %color_for727, align 8, !dbg !1755, !tbaa !620
  %cmp728 = icmp eq i32 %457, 3, !dbg !1756
  br i1 %cmp728, label %if.then730, label %if.else770, !dbg !1757

if.then730:                                       ; preds = %if.else726
  store i32 0, ptr %x, align 4, !dbg !1758, !tbaa !974
  %458 = load ptr, ptr %p324, align 8, !dbg !1760, !tbaa !588
  %b731 = getelementptr inbounds %struct.bam_pileup1_t, ptr %458, i32 0, i32 0, !dbg !1761
  %459 = load ptr, ptr %b731, align 8, !dbg !1761, !tbaa !1467
  %460 = load ptr, ptr %p324, align 8, !dbg !1762, !tbaa !588
  %qpos732 = getelementptr inbounds %struct.bam_pileup1_t, ptr %460, i32 0, i32 1, !dbg !1763
  %461 = load i32, ptr %qpos732, align 8, !dbg !1763, !tbaa !1470
  %call733 = call signext i8 @bam_aux_getCSi(ptr noundef %459, i32 noundef %461), !dbg !1764
  %conv734 = sext i8 %call733 to i32, !dbg !1764
  switch i32 %conv734, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb735
    i32 50, label %sw.bb736
    i32 51, label %sw.bb737
    i32 52, label %sw.bb738
  ], !dbg !1765

sw.bb:                                            ; preds = %if.then730
  store i32 0, ptr %x, align 4, !dbg !1766, !tbaa !974
  br label %sw.epilog, !dbg !1768

sw.bb735:                                         ; preds = %if.then730
  store i32 1, ptr %x, align 4, !dbg !1769, !tbaa !974
  br label %sw.epilog, !dbg !1770

sw.bb736:                                         ; preds = %if.then730
  store i32 2, ptr %x, align 4, !dbg !1771, !tbaa !974
  br label %sw.epilog, !dbg !1772

sw.bb737:                                         ; preds = %if.then730
  store i32 3, ptr %x, align 4, !dbg !1773, !tbaa !974
  br label %sw.epilog, !dbg !1774

sw.bb738:                                         ; preds = %if.then730
  store i32 4, ptr %x, align 4, !dbg !1775, !tbaa !974
  br label %sw.epilog, !dbg !1776

sw.default:                                       ; preds = %if.then730
  %462 = load ptr, ptr %p324, align 8, !dbg !1777, !tbaa !588
  %b739 = getelementptr inbounds %struct.bam_pileup1_t, ptr %462, i32 0, i32 0, !dbg !1777
  %463 = load ptr, ptr %b739, align 8, !dbg !1777, !tbaa !1467
  %data740 = getelementptr inbounds %struct.bam1_t, ptr %463, i32 0, i32 2, !dbg !1777
  %464 = load ptr, ptr %data740, align 8, !dbg !1777, !tbaa !1501
  %465 = load ptr, ptr %p324, align 8, !dbg !1777, !tbaa !588
  %b741 = getelementptr inbounds %struct.bam_pileup1_t, ptr %465, i32 0, i32 0, !dbg !1777
  %466 = load ptr, ptr %b741, align 8, !dbg !1777, !tbaa !1467
  %core742 = getelementptr inbounds %struct.bam1_t, ptr %466, i32 0, i32 0, !dbg !1777
  %n_cigar743 = getelementptr inbounds %struct.bam1_core_t, ptr %core742, i32 0, i32 7, !dbg !1777
  %467 = load i32, ptr %n_cigar743, align 4, !dbg !1777, !tbaa !1519
  %shl744 = shl i32 %467, 2, !dbg !1777
  %idx.ext745 = zext i32 %shl744 to i64, !dbg !1777
  %add.ptr746 = getelementptr inbounds i8, ptr %464, i64 %idx.ext745, !dbg !1777
  %468 = load ptr, ptr %p324, align 8, !dbg !1777, !tbaa !588
  %b747 = getelementptr inbounds %struct.bam_pileup1_t, ptr %468, i32 0, i32 0, !dbg !1777
  %469 = load ptr, ptr %b747, align 8, !dbg !1777, !tbaa !1467
  %core748 = getelementptr inbounds %struct.bam1_t, ptr %469, i32 0, i32 0, !dbg !1777
  %l_qname749 = getelementptr inbounds %struct.bam1_core_t, ptr %core748, i32 0, i32 6, !dbg !1777
  %470 = load i16, ptr %l_qname749, align 2, !dbg !1777, !tbaa !1509
  %conv750 = zext i16 %470 to i32, !dbg !1777
  %idx.ext751 = sext i32 %conv750 to i64, !dbg !1777
  %add.ptr752 = getelementptr inbounds i8, ptr %add.ptr746, i64 %idx.ext751, !dbg !1777
  %471 = load ptr, ptr %p324, align 8, !dbg !1777, !tbaa !588
  %qpos753 = getelementptr inbounds %struct.bam_pileup1_t, ptr %471, i32 0, i32 1, !dbg !1777
  %472 = load i32, ptr %qpos753, align 8, !dbg !1777, !tbaa !1470
  %shr754 = ashr i32 %472, 1, !dbg !1777
  %idxprom755 = sext i32 %shr754 to i64, !dbg !1777
  %arrayidx756 = getelementptr inbounds i8, ptr %add.ptr752, i64 %idxprom755, !dbg !1777
  %473 = load i8, ptr %arrayidx756, align 1, !dbg !1777, !tbaa !1032
  %conv757 = zext i8 %473 to i32, !dbg !1777
  %474 = load ptr, ptr %p324, align 8, !dbg !1777, !tbaa !588
  %qpos758 = getelementptr inbounds %struct.bam_pileup1_t, ptr %474, i32 0, i32 1, !dbg !1777
  %475 = load i32, ptr %qpos758, align 8, !dbg !1777, !tbaa !1470
  %not759 = xor i32 %475, -1, !dbg !1777
  %and760 = and i32 %not759, 1, !dbg !1777
  %shl761 = shl i32 %and760, 2, !dbg !1777
  %shr762 = ashr i32 %conv757, %shl761, !dbg !1777
  %and763 = and i32 %shr762, 15, !dbg !1777
  %idxprom764 = sext i32 %and763 to i64, !dbg !1778
  %arrayidx765 = getelementptr inbounds [0 x i32], ptr @seq_nt16_int, i64 0, i64 %idxprom764, !dbg !1778
  %476 = load i32, ptr %arrayidx765, align 4, !dbg !1778, !tbaa !974
  store i32 %476, ptr %x, align 4, !dbg !1779, !tbaa !974
  br label %sw.epilog, !dbg !1780

sw.epilog:                                        ; preds = %sw.default, %sw.bb738, %sw.bb737, %sw.bb736, %sw.bb735, %sw.bb
  %477 = load i32, ptr %x, align 4, !dbg !1781, !tbaa !974
  %add766 = add nsw i32 %477, 5, !dbg !1781
  store i32 %add766, ptr %x, align 4, !dbg !1781, !tbaa !974
  %478 = load ptr, ptr %tv, align 8, !dbg !1782, !tbaa !588
  %my_colorpair767 = getelementptr inbounds %struct.AbstractTview, ptr %478, i32 0, i32 29, !dbg !1783
  %479 = load ptr, ptr %my_colorpair767, align 8, !dbg !1783, !tbaa !1355
  %480 = load ptr, ptr %tv, align 8, !dbg !1784, !tbaa !588
  %481 = load i32, ptr %x, align 4, !dbg !1785, !tbaa !974
  %call768 = call i32 %479(ptr noundef %480, i32 noundef %481), !dbg !1782
  %482 = load i32, ptr %attr, align 4, !dbg !1786, !tbaa !974
  %or769 = or i32 %482, %call768, !dbg !1786
  store i32 %or769, ptr %attr, align 4, !dbg !1786, !tbaa !974
  br label %if.end818, !dbg !1787

if.else770:                                       ; preds = %if.else726
  %483 = load ptr, ptr %tv, align 8, !dbg !1788, !tbaa !588
  %color_for771 = getelementptr inbounds %struct.AbstractTview, ptr %483, i32 0, i32 15, !dbg !1790
  %484 = load i32, ptr %color_for771, align 8, !dbg !1790, !tbaa !620
  %cmp772 = icmp eq i32 %484, 4, !dbg !1791
  br i1 %cmp772, label %if.then774, label %if.end817, !dbg !1792

if.then774:                                       ; preds = %if.else770
  %485 = load ptr, ptr %p324, align 8, !dbg !1793, !tbaa !588
  %b775 = getelementptr inbounds %struct.bam_pileup1_t, ptr %485, i32 0, i32 0, !dbg !1795
  %486 = load ptr, ptr %b775, align 8, !dbg !1795, !tbaa !1467
  %487 = load ptr, ptr %p324, align 8, !dbg !1796, !tbaa !588
  %qpos776 = getelementptr inbounds %struct.bam_pileup1_t, ptr %487, i32 0, i32 1, !dbg !1797
  %488 = load i32, ptr %qpos776, align 8, !dbg !1797, !tbaa !1470
  %call777 = call signext i8 @bam_aux_getCQi(ptr noundef %486, i32 noundef %488), !dbg !1798
  %conv778 = sext i8 %call777 to i32, !dbg !1798
  store i32 %conv778, ptr %x, align 4, !dbg !1799, !tbaa !974
  %489 = load i32, ptr %x, align 4, !dbg !1800, !tbaa !974
  %cmp779 = icmp eq i32 0, %489, !dbg !1802
  br i1 %cmp779, label %if.then781, label %if.end807, !dbg !1803

if.then781:                                       ; preds = %if.then774
  %490 = load ptr, ptr %p324, align 8, !dbg !1804, !tbaa !588
  %b782 = getelementptr inbounds %struct.bam_pileup1_t, ptr %490, i32 0, i32 0, !dbg !1804
  %491 = load ptr, ptr %b782, align 8, !dbg !1804, !tbaa !1467
  %data783 = getelementptr inbounds %struct.bam1_t, ptr %491, i32 0, i32 2, !dbg !1804
  %492 = load ptr, ptr %data783, align 8, !dbg !1804, !tbaa !1501
  %493 = load ptr, ptr %p324, align 8, !dbg !1804, !tbaa !588
  %b784 = getelementptr inbounds %struct.bam_pileup1_t, ptr %493, i32 0, i32 0, !dbg !1804
  %494 = load ptr, ptr %b784, align 8, !dbg !1804, !tbaa !1467
  %core785 = getelementptr inbounds %struct.bam1_t, ptr %494, i32 0, i32 0, !dbg !1804
  %n_cigar786 = getelementptr inbounds %struct.bam1_core_t, ptr %core785, i32 0, i32 7, !dbg !1804
  %495 = load i32, ptr %n_cigar786, align 4, !dbg !1804, !tbaa !1519
  %shl787 = shl i32 %495, 2, !dbg !1804
  %idx.ext788 = zext i32 %shl787 to i64, !dbg !1804
  %add.ptr789 = getelementptr inbounds i8, ptr %492, i64 %idx.ext788, !dbg !1804
  %496 = load ptr, ptr %p324, align 8, !dbg !1804, !tbaa !588
  %b790 = getelementptr inbounds %struct.bam_pileup1_t, ptr %496, i32 0, i32 0, !dbg !1804
  %497 = load ptr, ptr %b790, align 8, !dbg !1804, !tbaa !1467
  %core791 = getelementptr inbounds %struct.bam1_t, ptr %497, i32 0, i32 0, !dbg !1804
  %l_qname792 = getelementptr inbounds %struct.bam1_core_t, ptr %core791, i32 0, i32 6, !dbg !1804
  %498 = load i16, ptr %l_qname792, align 2, !dbg !1804, !tbaa !1509
  %conv793 = zext i16 %498 to i32, !dbg !1804
  %idx.ext794 = sext i32 %conv793 to i64, !dbg !1804
  %add.ptr795 = getelementptr inbounds i8, ptr %add.ptr789, i64 %idx.ext794, !dbg !1804
  %499 = load ptr, ptr %p324, align 8, !dbg !1804, !tbaa !588
  %b796 = getelementptr inbounds %struct.bam_pileup1_t, ptr %499, i32 0, i32 0, !dbg !1804
  %500 = load ptr, ptr %b796, align 8, !dbg !1804, !tbaa !1467
  %core797 = getelementptr inbounds %struct.bam1_t, ptr %500, i32 0, i32 0, !dbg !1804
  %l_qseq798 = getelementptr inbounds %struct.bam1_core_t, ptr %core797, i32 0, i32 8, !dbg !1804
  %501 = load i32, ptr %l_qseq798, align 8, !dbg !1804, !tbaa !1693
  %add799 = add nsw i32 %501, 1, !dbg !1804
  %shr800 = ashr i32 %add799, 1, !dbg !1804
  %idx.ext801 = sext i32 %shr800 to i64, !dbg !1804
  %add.ptr802 = getelementptr inbounds i8, ptr %add.ptr795, i64 %idx.ext801, !dbg !1804
  %502 = load ptr, ptr %p324, align 8, !dbg !1805, !tbaa !588
  %qpos803 = getelementptr inbounds %struct.bam_pileup1_t, ptr %502, i32 0, i32 1, !dbg !1806
  %503 = load i32, ptr %qpos803, align 8, !dbg !1806, !tbaa !1470
  %idxprom804 = sext i32 %503 to i64, !dbg !1804
  %arrayidx805 = getelementptr inbounds i8, ptr %add.ptr802, i64 %idxprom804, !dbg !1804
  %504 = load i8, ptr %arrayidx805, align 1, !dbg !1804, !tbaa !1032
  %conv806 = zext i8 %504 to i32, !dbg !1804
  store i32 %conv806, ptr %x, align 4, !dbg !1807, !tbaa !974
  br label %if.end807, !dbg !1808

if.end807:                                        ; preds = %if.then781, %if.then774
  %505 = load i32, ptr %x, align 4, !dbg !1809, !tbaa !974
  %div808 = sdiv i32 %505, 10, !dbg !1810
  %add809 = add nsw i32 %div808, 1, !dbg !1811
  store i32 %add809, ptr %x, align 4, !dbg !1812, !tbaa !974
  %506 = load i32, ptr %x, align 4, !dbg !1813, !tbaa !974
  %cmp810 = icmp sgt i32 %506, 4, !dbg !1815
  br i1 %cmp810, label %if.then812, label %if.end813, !dbg !1816

if.then812:                                       ; preds = %if.end807
  store i32 4, ptr %x, align 4, !dbg !1817, !tbaa !974
  br label %if.end813, !dbg !1818

if.end813:                                        ; preds = %if.then812, %if.end807
  %507 = load ptr, ptr %tv, align 8, !dbg !1819, !tbaa !588
  %my_colorpair814 = getelementptr inbounds %struct.AbstractTview, ptr %507, i32 0, i32 29, !dbg !1820
  %508 = load ptr, ptr %my_colorpair814, align 8, !dbg !1820, !tbaa !1355
  %509 = load ptr, ptr %tv, align 8, !dbg !1821, !tbaa !588
  %510 = load i32, ptr %x, align 4, !dbg !1822, !tbaa !974
  %call815 = call i32 %508(ptr noundef %509, i32 noundef %510), !dbg !1819
  %511 = load i32, ptr %attr, align 4, !dbg !1823, !tbaa !974
  %or816 = or i32 %511, %call815, !dbg !1823
  store i32 %or816, ptr %attr, align 4, !dbg !1823, !tbaa !974
  br label %if.end817, !dbg !1824

if.end817:                                        ; preds = %if.end813, %if.else770
  br label %if.end818

if.end818:                                        ; preds = %if.end817, %sw.epilog
  br label %if.end819

if.end819:                                        ; preds = %if.end818, %if.then694
  br label %if.end820

if.end820:                                        ; preds = %if.end819, %if.end686
  br label %if.end821

if.end821:                                        ; preds = %if.end820, %if.end669
  %512 = load ptr, ptr %tv, align 8, !dbg !1825, !tbaa !588
  %my_attron822 = getelementptr inbounds %struct.AbstractTview, ptr %512, i32 0, i32 26, !dbg !1826
  %513 = load ptr, ptr %my_attron822, align 8, !dbg !1826, !tbaa !1372
  %514 = load ptr, ptr %tv, align 8, !dbg !1827, !tbaa !588
  %515 = load i32, ptr %attr, align 4, !dbg !1828, !tbaa !974
  call void %513(ptr noundef %514, i32 noundef %515), !dbg !1825
  %516 = load ptr, ptr %tv, align 8, !dbg !1829, !tbaa !588
  %my_mvaddch823 = getelementptr inbounds %struct.AbstractTview, ptr %516, i32 0, i32 25, !dbg !1830
  %517 = load ptr, ptr %my_mvaddch823, align 8, !dbg !1830, !tbaa !1082
  %518 = load ptr, ptr %tv, align 8, !dbg !1831, !tbaa !588
  %519 = load i32, ptr %row, align 4, !dbg !1832, !tbaa !974
  %520 = load ptr, ptr %tv, align 8, !dbg !1833, !tbaa !588
  %ccol824 = getelementptr inbounds %struct.AbstractTview, ptr %520, i32 0, i32 12, !dbg !1834
  %521 = load i32, ptr %ccol824, align 4, !dbg !1834, !tbaa !1007
  %522 = load ptr, ptr %p324, align 8, !dbg !1835, !tbaa !588
  %b825 = getelementptr inbounds %struct.bam_pileup1_t, ptr %522, i32 0, i32 0, !dbg !1835
  %523 = load ptr, ptr %b825, align 8, !dbg !1835, !tbaa !1467
  %core826 = getelementptr inbounds %struct.bam1_t, ptr %523, i32 0, i32 0, !dbg !1835
  %flag827 = getelementptr inbounds %struct.bam1_core_t, ptr %core826, i32 0, i32 5, !dbg !1835
  %524 = load i16, ptr %flag827, align 8, !dbg !1835, !tbaa !1487
  %conv828 = zext i16 %524 to i32, !dbg !1835
  %and829 = and i32 %conv828, 16, !dbg !1835
  %cmp830 = icmp ne i32 %and829, 0, !dbg !1835
  br i1 %cmp830, label %cond.true832, label %cond.false852, !dbg !1835

cond.true832:                                     ; preds = %if.end821
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res833) #17, !dbg !1836
  tail call void @llvm.dbg.declare(metadata ptr %__res833, metadata !960, metadata !DIExpression()), !dbg !1836
  %525 = load i32, ptr %c, align 4, !dbg !1837, !tbaa !974
  %526 = call i1 @llvm.is.constant.i32(i32 %525), !dbg !1837
  br i1 %526, label %if.then834, label %if.else848, !dbg !1838

if.then834:                                       ; preds = %cond.true832
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c835) #17, !dbg !1839
  tail call void @llvm.dbg.declare(metadata ptr %__c835, metadata !962, metadata !DIExpression()), !dbg !1839
  %527 = load i32, ptr %c, align 4, !dbg !1839, !tbaa !974
  store i32 %527, ptr %__c835, align 4, !dbg !1839, !tbaa !974
  %528 = load i32, ptr %__c835, align 4, !dbg !1839, !tbaa !974
  %cmp836 = icmp slt i32 %528, -128, !dbg !1839
  br i1 %cmp836, label %cond.true841, label %lor.lhs.false838, !dbg !1839

lor.lhs.false838:                                 ; preds = %if.then834
  %529 = load i32, ptr %__c835, align 4, !dbg !1839, !tbaa !974
  %cmp839 = icmp sgt i32 %529, 255, !dbg !1839
  br i1 %cmp839, label %cond.true841, label %cond.false842, !dbg !1839

cond.true841:                                     ; preds = %lor.lhs.false838, %if.then834
  %530 = load i32, ptr %__c835, align 4, !dbg !1839, !tbaa !974
  br label %cond.end846, !dbg !1839

cond.false842:                                    ; preds = %lor.lhs.false838
  %call843 = call ptr @__ctype_tolower_loc() #18, !dbg !1839
  %531 = load ptr, ptr %call843, align 8, !dbg !1839, !tbaa !588
  %532 = load i32, ptr %__c835, align 4, !dbg !1839, !tbaa !974
  %idxprom844 = sext i32 %532 to i64, !dbg !1839
  %arrayidx845 = getelementptr inbounds i32, ptr %531, i64 %idxprom844, !dbg !1839
  %533 = load i32, ptr %arrayidx845, align 4, !dbg !1839, !tbaa !974
  br label %cond.end846, !dbg !1839

cond.end846:                                      ; preds = %cond.false842, %cond.true841
  %cond847 = phi i32 [ %530, %cond.true841 ], [ %533, %cond.false842 ], !dbg !1839
  store i32 %cond847, ptr %__res833, align 4, !dbg !1839, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c835) #17, !dbg !1837
  br label %if.end850, !dbg !1839

if.else848:                                       ; preds = %cond.true832
  %534 = load i32, ptr %c, align 4, !dbg !1837, !tbaa !974
  %call849 = call i32 @tolower(i32 noundef %534) #19, !dbg !1837
  store i32 %call849, ptr %__res833, align 4, !dbg !1837, !tbaa !974
  br label %if.end850

if.end850:                                        ; preds = %if.else848, %cond.end846
  %535 = load i32, ptr %__res833, align 4, !dbg !1836, !tbaa !974
  store i32 %535, ptr %tmp851, align 4, !dbg !1840, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res833) #17, !dbg !1841
  %536 = load i32, ptr %tmp851, align 4, !dbg !1836, !tbaa !974
  br label %cond.end872, !dbg !1835

cond.false852:                                    ; preds = %if.end821
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res853) #17, !dbg !1842
  tail call void @llvm.dbg.declare(metadata ptr %__res853, metadata !967, metadata !DIExpression()), !dbg !1842
  %537 = load i32, ptr %c, align 4, !dbg !1843, !tbaa !974
  %538 = call i1 @llvm.is.constant.i32(i32 %537), !dbg !1843
  br i1 %538, label %if.then854, label %if.else868, !dbg !1844

if.then854:                                       ; preds = %cond.false852
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c855) #17, !dbg !1845
  tail call void @llvm.dbg.declare(metadata ptr %__c855, metadata !969, metadata !DIExpression()), !dbg !1845
  %539 = load i32, ptr %c, align 4, !dbg !1845, !tbaa !974
  store i32 %539, ptr %__c855, align 4, !dbg !1845, !tbaa !974
  %540 = load i32, ptr %__c855, align 4, !dbg !1845, !tbaa !974
  %cmp856 = icmp slt i32 %540, -128, !dbg !1845
  br i1 %cmp856, label %cond.true861, label %lor.lhs.false858, !dbg !1845

lor.lhs.false858:                                 ; preds = %if.then854
  %541 = load i32, ptr %__c855, align 4, !dbg !1845, !tbaa !974
  %cmp859 = icmp sgt i32 %541, 255, !dbg !1845
  br i1 %cmp859, label %cond.true861, label %cond.false862, !dbg !1845

cond.true861:                                     ; preds = %lor.lhs.false858, %if.then854
  %542 = load i32, ptr %__c855, align 4, !dbg !1845, !tbaa !974
  br label %cond.end866, !dbg !1845

cond.false862:                                    ; preds = %lor.lhs.false858
  %call863 = call ptr @__ctype_toupper_loc() #18, !dbg !1845
  %543 = load ptr, ptr %call863, align 8, !dbg !1845, !tbaa !588
  %544 = load i32, ptr %__c855, align 4, !dbg !1845, !tbaa !974
  %idxprom864 = sext i32 %544 to i64, !dbg !1845
  %arrayidx865 = getelementptr inbounds i32, ptr %543, i64 %idxprom864, !dbg !1845
  %545 = load i32, ptr %arrayidx865, align 4, !dbg !1845, !tbaa !974
  br label %cond.end866, !dbg !1845

cond.end866:                                      ; preds = %cond.false862, %cond.true861
  %cond867 = phi i32 [ %542, %cond.true861 ], [ %545, %cond.false862 ], !dbg !1845
  store i32 %cond867, ptr %__res853, align 4, !dbg !1845, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c855) #17, !dbg !1843
  br label %if.end870, !dbg !1845

if.else868:                                       ; preds = %cond.false852
  %546 = load i32, ptr %c, align 4, !dbg !1843, !tbaa !974
  %call869 = call i32 @toupper(i32 noundef %546) #19, !dbg !1843
  store i32 %call869, ptr %__res853, align 4, !dbg !1843, !tbaa !974
  br label %if.end870

if.end870:                                        ; preds = %if.else868, %cond.end866
  %547 = load i32, ptr %__res853, align 4, !dbg !1842, !tbaa !974
  store i32 %547, ptr %tmp871, align 4, !dbg !1846, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res853) #17, !dbg !1847
  %548 = load i32, ptr %tmp871, align 4, !dbg !1842, !tbaa !974
  br label %cond.end872, !dbg !1835

cond.end872:                                      ; preds = %if.end870, %if.end850
  %cond873 = phi i32 [ %536, %if.end850 ], [ %548, %if.end870 ], !dbg !1835
  call void %517(ptr noundef %518, i32 noundef %519, i32 noundef %521, i32 noundef %cond873), !dbg !1829
  %549 = load ptr, ptr %tv, align 8, !dbg !1848, !tbaa !588
  %my_attroff874 = getelementptr inbounds %struct.AbstractTview, ptr %549, i32 0, i32 27, !dbg !1849
  %550 = load ptr, ptr %my_attroff874, align 8, !dbg !1849, !tbaa !1383
  %551 = load ptr, ptr %tv, align 8, !dbg !1850, !tbaa !588
  %552 = load i32, ptr %attr, align 4, !dbg !1851, !tbaa !974
  call void %550(ptr noundef %551, i32 noundef %552), !dbg !1848
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #17, !dbg !1852
  br label %if.end875, !dbg !1853

if.end875:                                        ; preds = %cond.end872, %land.lhs.true608, %if.end605
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #17, !dbg !1854
  call void @llvm.lifetime.end.p0(i64 8, ptr %p324) #17, !dbg !1854
  br label %for.inc876, !dbg !1855

for.inc876:                                       ; preds = %if.end875
  %553 = load i32, ptr %i, align 4, !dbg !1856, !tbaa !974
  %inc877 = add nsw i32 %553, 1, !dbg !1856
  store i32 %inc877, ptr %i, align 4, !dbg !1856, !tbaa !974
  br label %for.cond320, !dbg !1857, !llvm.loop !1858

for.end878:                                       ; preds = %for.cond320
  %554 = load i32, ptr %j, align 4, !dbg !1860, !tbaa !974
  %tobool879 = icmp ne i32 %554, 0, !dbg !1860
  br i1 %tobool879, label %cond.true880, label %cond.false881, !dbg !1860

cond.true880:                                     ; preds = %for.end878
  br label %cond.end882, !dbg !1860

cond.false881:                                    ; preds = %for.end878
  %555 = load i32, ptr %rb, align 4, !dbg !1861, !tbaa !974
  br label %cond.end882, !dbg !1860

cond.end882:                                      ; preds = %cond.false881, %cond.true880
  %cond883 = phi i32 [ 42, %cond.true880 ], [ %555, %cond.false881 ], !dbg !1860
  store i32 %cond883, ptr %c, align 4, !dbg !1862, !tbaa !974
  %556 = load i32, ptr %c, align 4, !dbg !1863, !tbaa !974
  %cmp884 = icmp eq i32 %556, 42, !dbg !1865
  br i1 %cmp884, label %if.then886, label %if.else894, !dbg !1866

if.then886:                                       ; preds = %cond.end882
  %557 = load ptr, ptr %tv, align 8, !dbg !1867, !tbaa !588
  %my_colorpair887 = getelementptr inbounds %struct.AbstractTview, ptr %557, i32 0, i32 29, !dbg !1869
  %558 = load ptr, ptr %my_colorpair887, align 8, !dbg !1869, !tbaa !1355
  %559 = load ptr, ptr %tv, align 8, !dbg !1870, !tbaa !588
  %call888 = call i32 %558(ptr noundef %559, i32 noundef 8), !dbg !1867
  store i32 %call888, ptr %attr, align 4, !dbg !1871, !tbaa !974
  %560 = load ptr, ptr %tv, align 8, !dbg !1872, !tbaa !588
  %my_attron889 = getelementptr inbounds %struct.AbstractTview, ptr %560, i32 0, i32 26, !dbg !1873
  %561 = load ptr, ptr %my_attron889, align 8, !dbg !1873, !tbaa !1372
  %562 = load ptr, ptr %tv, align 8, !dbg !1874, !tbaa !588
  %563 = load i32, ptr %attr, align 4, !dbg !1875, !tbaa !974
  call void %561(ptr noundef %562, i32 noundef %563), !dbg !1872
  %564 = load ptr, ptr %tv, align 8, !dbg !1876, !tbaa !588
  %my_mvaddch890 = getelementptr inbounds %struct.AbstractTview, ptr %564, i32 0, i32 25, !dbg !1877
  %565 = load ptr, ptr %my_mvaddch890, align 8, !dbg !1877, !tbaa !1082
  %566 = load ptr, ptr %tv, align 8, !dbg !1878, !tbaa !588
  %567 = load ptr, ptr %tv, align 8, !dbg !1879, !tbaa !588
  %ccol891 = getelementptr inbounds %struct.AbstractTview, ptr %567, i32 0, i32 12, !dbg !1880
  %568 = load i32, ptr %ccol891, align 4, !dbg !1881, !tbaa !1007
  %inc892 = add nsw i32 %568, 1, !dbg !1881
  store i32 %inc892, ptr %ccol891, align 4, !dbg !1881, !tbaa !1007
  %569 = load i32, ptr %c, align 4, !dbg !1882, !tbaa !974
  call void %565(ptr noundef %566, i32 noundef 1, i32 noundef %568, i32 noundef %569), !dbg !1876
  %570 = load ptr, ptr %tv, align 8, !dbg !1883, !tbaa !588
  %my_attroff893 = getelementptr inbounds %struct.AbstractTview, ptr %570, i32 0, i32 27, !dbg !1884
  %571 = load ptr, ptr %my_attroff893, align 8, !dbg !1884, !tbaa !1383
  %572 = load ptr, ptr %tv, align 8, !dbg !1885, !tbaa !588
  %573 = load i32, ptr %attr, align 4, !dbg !1886, !tbaa !974
  call void %571(ptr noundef %572, i32 noundef %573), !dbg !1883
  br label %if.end898, !dbg !1887

if.else894:                                       ; preds = %cond.end882
  %574 = load ptr, ptr %tv, align 8, !dbg !1888, !tbaa !588
  %my_mvaddch895 = getelementptr inbounds %struct.AbstractTview, ptr %574, i32 0, i32 25, !dbg !1889
  %575 = load ptr, ptr %my_mvaddch895, align 8, !dbg !1889, !tbaa !1082
  %576 = load ptr, ptr %tv, align 8, !dbg !1890, !tbaa !588
  %577 = load ptr, ptr %tv, align 8, !dbg !1891, !tbaa !588
  %ccol896 = getelementptr inbounds %struct.AbstractTview, ptr %577, i32 0, i32 12, !dbg !1892
  %578 = load i32, ptr %ccol896, align 4, !dbg !1893, !tbaa !1007
  %inc897 = add nsw i32 %578, 1, !dbg !1893
  store i32 %inc897, ptr %ccol896, align 4, !dbg !1893, !tbaa !1007
  %579 = load i32, ptr %c, align 4, !dbg !1894, !tbaa !974
  call void %575(ptr noundef %576, i32 noundef 1, i32 noundef %578, i32 noundef %579), !dbg !1888
  br label %if.end898

if.end898:                                        ; preds = %if.else894, %if.then886
  br label %for.inc899, !dbg !1895

for.inc899:                                       ; preds = %if.end898
  %580 = load i32, ptr %j, align 4, !dbg !1896, !tbaa !974
  %inc900 = add nsw i32 %580, 1, !dbg !1896
  store i32 %inc900, ptr %j, align 4, !dbg !1896, !tbaa !974
  br label %for.cond316, !dbg !1897, !llvm.loop !1898

for.end901:                                       ; preds = %for.cond316
  %581 = load i64, ptr %pos.addr, align 8, !dbg !1900, !tbaa !976
  %582 = load ptr, ptr %tv, align 8, !dbg !1901, !tbaa !588
  %last_pos902 = getelementptr inbounds %struct.AbstractTview, ptr %582, i32 0, i32 9, !dbg !1902
  store i64 %581, ptr %last_pos902, align 8, !dbg !1903, !tbaa !1037
  call void @ks_free(ptr noundef %ks), !dbg !1904
  store i32 0, ptr %retval, align 4, !dbg !1905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1905

cleanup:                                          ; preds = %for.end901, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %ks) #17, !dbg !1906
  call void @llvm.lifetime.end.p0(i64 4, ptr %call) #17, !dbg !1906
  call void @llvm.lifetime.end.p0(i64 4, ptr %interval) #17, !dbg !1906
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_ins) #17, !dbg !1906
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr) #17, !dbg !1906
  call void @llvm.lifetime.end.p0(i64 4, ptr %rb) #17, !dbg !1906
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #17, !dbg !1906
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #17, !dbg !1906
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !1906
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #17, !dbg !1906
  call void @llvm.lifetime.end.p0(i64 8, ptr %tv) #17, !dbg !1906
  %583 = load i32, ptr %retval, align 4, !dbg !1906
  ret i32 %583, !dbg !1906
}

declare !dbg !1907 ptr @fai_load(ptr noundef) #2

declare !dbg !1910 ptr @bcf_call_init(double noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @get_rg_sample(ptr noundef %header, ptr noundef %sample) #0 !dbg !1913 {
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
  store ptr %header, ptr %header.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !1917, metadata !DIExpression()), !dbg !1930
  store ptr %sample, ptr %sample.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %sample.addr, metadata !1918, metadata !DIExpression()), !dbg !1931
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_rg) #17, !dbg !1932
  tail call void @llvm.dbg.declare(metadata ptr %n_rg, metadata !1919, metadata !DIExpression()), !dbg !1933
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !1932
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1920, metadata !DIExpression()), !dbg !1934
  call void @llvm.lifetime.start.p0(i64 24, ptr %id_val) #17, !dbg !1935
  tail call void @llvm.dbg.declare(metadata ptr %id_val, metadata !1921, metadata !DIExpression()), !dbg !1936
  call void @llvm.memset.p0.i64(ptr align 8 %id_val, i8 0, i64 24, i1 false), !dbg !1936
  call void @llvm.lifetime.start.p0(i64 24, ptr %sm_val) #17, !dbg !1935
  tail call void @llvm.dbg.declare(metadata ptr %sm_val, metadata !1922, metadata !DIExpression()), !dbg !1937
  call void @llvm.memset.p0.i64(ptr align 8 %sm_val, i8 0, i64 24, i1 false), !dbg !1937
  call void @llvm.lifetime.start.p0(i64 8, ptr %rg_hash) #17, !dbg !1938
  tail call void @llvm.dbg.declare(metadata ptr %rg_hash, metadata !1923, metadata !DIExpression()), !dbg !1939
  %call = call ptr @kh_init_kh_rg(), !dbg !1940
  store ptr %call, ptr %rg_hash, align 8, !dbg !1939, !tbaa !588
  %0 = load ptr, ptr %rg_hash, align 8, !dbg !1941, !tbaa !588
  %tobool = icmp ne ptr %0, null, !dbg !1941
  br i1 %tobool, label %if.end, label %if.then, !dbg !1943

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1944

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %header.addr, align 8, !dbg !1945, !tbaa !588
  %call1 = call i32 @sam_hdr_count_lines(ptr noundef %1, ptr noundef @.str.34), !dbg !1946
  store i32 %call1, ptr %n_rg, align 4, !dbg !1947, !tbaa !974
  %2 = load i32, ptr %n_rg, align 4, !dbg !1948, !tbaa !974
  %cmp = icmp slt i32 %2, 0, !dbg !1950
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1951

if.then2:                                         ; preds = %if.end
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str.4, ptr noundef @.str.35), !dbg !1952
  br label %fail, !dbg !1954

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !1955, !tbaa !974
  br label %for.cond, !dbg !1956

for.cond:                                         ; preds = %for.inc, %if.end3
  %3 = load i32, ptr %i, align 4, !dbg !1957, !tbaa !974
  %4 = load i32, ptr %n_rg, align 4, !dbg !1958, !tbaa !974
  %cmp4 = icmp slt i32 %3, %4, !dbg !1959
  br i1 %cmp4, label %for.body, label %for.end, !dbg !1960

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #17, !dbg !1961
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1924, metadata !DIExpression()), !dbg !1962
  %5 = load ptr, ptr %header.addr, align 8, !dbg !1963, !tbaa !588
  %6 = load i32, ptr %i, align 4, !dbg !1964, !tbaa !974
  %call5 = call i32 @sam_hdr_find_tag_pos(ptr noundef %5, ptr noundef @.str.34, i32 noundef %6, ptr noundef @.str.36, ptr noundef %id_val), !dbg !1965
  store i32 %call5, ptr %r, align 4, !dbg !1962, !tbaa !974
  %7 = load i32, ptr %r, align 4, !dbg !1966, !tbaa !974
  %cmp6 = icmp slt i32 %7, -1, !dbg !1968
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1969

if.then7:                                         ; preds = %for.body
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1970

if.end8:                                          ; preds = %for.body
  %8 = load i32, ptr %r, align 4, !dbg !1971, !tbaa !974
  %cmp9 = icmp eq i32 %8, -1, !dbg !1973
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1974

if.then10:                                        ; preds = %if.end8
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1975

if.end11:                                         ; preds = %if.end8
  %9 = load ptr, ptr %sample.addr, align 8, !dbg !1976, !tbaa !588
  %s = getelementptr inbounds %struct.kstring_t, ptr %id_val, i32 0, i32 2, !dbg !1978
  %10 = load ptr, ptr %s, align 8, !dbg !1978, !tbaa !1595
  %call12 = call i32 @strcmp(ptr noundef %9, ptr noundef %10) #19, !dbg !1979
  %cmp13 = icmp ne i32 %call12, 0, !dbg !1980
  br i1 %cmp13, label %if.then14, label %if.end25, !dbg !1981

if.then14:                                        ; preds = %if.end11
  %11 = load ptr, ptr %header.addr, align 8, !dbg !1982, !tbaa !588
  %12 = load i32, ptr %i, align 4, !dbg !1984, !tbaa !974
  %call15 = call i32 @sam_hdr_find_tag_pos(ptr noundef %11, ptr noundef @.str.34, i32 noundef %12, ptr noundef @.str.37, ptr noundef %sm_val), !dbg !1985
  store i32 %call15, ptr %r, align 4, !dbg !1986, !tbaa !974
  %13 = load i32, ptr %r, align 4, !dbg !1987, !tbaa !974
  %cmp16 = icmp slt i32 %13, -1, !dbg !1989
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !1990

if.then17:                                        ; preds = %if.then14
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1991

if.end18:                                         ; preds = %if.then14
  %14 = load i32, ptr %r, align 4, !dbg !1992, !tbaa !974
  %cmp19 = icmp slt i32 %14, 0, !dbg !1994
  br i1 %cmp19, label %if.then23, label %lor.lhs.false, !dbg !1995

lor.lhs.false:                                    ; preds = %if.end18
  %15 = load ptr, ptr %sample.addr, align 8, !dbg !1996, !tbaa !588
  %s20 = getelementptr inbounds %struct.kstring_t, ptr %sm_val, i32 0, i32 2, !dbg !1997
  %16 = load ptr, ptr %s20, align 8, !dbg !1997, !tbaa !1595
  %call21 = call i32 @strcmp(ptr noundef %15, ptr noundef %16) #19, !dbg !1998
  %cmp22 = icmp ne i32 %call21, 0, !dbg !1999
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !2000

if.then23:                                        ; preds = %lor.lhs.false, %if.end18
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2001

if.end24:                                         ; preds = %lor.lhs.false
  br label %if.end25, !dbg !2002

if.end25:                                         ; preds = %if.end24, %if.end11
  %17 = load ptr, ptr %rg_hash, align 8, !dbg !2003, !tbaa !588
  %s26 = getelementptr inbounds %struct.kstring_t, ptr %id_val, i32 0, i32 2, !dbg !2003
  %18 = load ptr, ptr %s26, align 8, !dbg !2003, !tbaa !1595
  %call27 = call i32 @kh_put_kh_rg(ptr noundef %17, ptr noundef %18, ptr noundef %r), !dbg !2003
  %19 = load i32, ptr %r, align 4, !dbg !2004, !tbaa !974
  %cmp28 = icmp slt i32 %19, 0, !dbg !2006
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !2007

if.then29:                                        ; preds = %if.end25
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2008

if.end30:                                         ; preds = %if.end25
  %call31 = call ptr @ks_release(ptr noundef %id_val), !dbg !2009
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2010
  br label %cleanup, !dbg !2010

cleanup:                                          ; preds = %if.then29, %if.then17, %if.then7, %if.end30, %if.then23, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #17, !dbg !2010
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup32 [
    i32 0, label %cleanup.cont
    i32 5, label %for.inc
    i32 6, label %memfail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2011

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %20 = load i32, ptr %i, align 4, !dbg !2012, !tbaa !974
  %inc = add nsw i32 %20, 1, !dbg !2012
  store i32 %inc, ptr %i, align 4, !dbg !2012, !tbaa !974
  br label %for.cond, !dbg !2013, !llvm.loop !2014

for.end:                                          ; preds = %for.cond
  call void @ks_free(ptr noundef %id_val), !dbg !2016
  call void @ks_free(ptr noundef %sm_val), !dbg !2017
  %21 = load ptr, ptr %rg_hash, align 8, !dbg !2018, !tbaa !588
  store ptr %21, ptr %retval, align 8, !dbg !2019
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !2019

memfail:                                          ; preds = %cleanup
  tail call void @llvm.dbg.label(metadata !1928), !dbg !2020
  call void @perror(ptr noundef @.str.4), !dbg !2021
  br label %fail, !dbg !2021

fail:                                             ; preds = %memfail, %if.then2
  tail call void @llvm.dbg.label(metadata !1929), !dbg !2022
  call void @ks_free(ptr noundef %id_val), !dbg !2023
  call void @ks_free(ptr noundef %sm_val), !dbg !2024
  %22 = load ptr, ptr %rg_hash, align 8, !dbg !2025, !tbaa !588
  call void @destroy_rg_hash(ptr noundef %22), !dbg !2026
  store ptr null, ptr %retval, align 8, !dbg !2027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !2027

cleanup32:                                        ; preds = %fail, %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rg_hash) #17, !dbg !2028
  call void @llvm.lifetime.end.p0(i64 24, ptr %sm_val) #17, !dbg !2028
  call void @llvm.lifetime.end.p0(i64 24, ptr %id_val) #17, !dbg !2028
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !2028
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_rg) #17, !dbg !2028
  %23 = load ptr, ptr %retval, align 8, !dbg !2028
  ret ptr %23, !dbg !2028
}

; Function Attrs: nounwind uwtable
define dso_local void @base_tv_destroy(ptr noundef %tv) #0 !dbg !2029 {
entry:
  %tv.addr = alloca ptr, align 8
  store ptr %tv, ptr %tv.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %tv.addr, metadata !2033, metadata !DIExpression()), !dbg !2034
  %0 = load ptr, ptr %tv.addr, align 8, !dbg !2035, !tbaa !588
  %lplbuf = getelementptr inbounds %struct.AbstractTview, ptr %0, i32 0, i32 3, !dbg !2036
  %1 = load ptr, ptr %lplbuf, align 8, !dbg !2036, !tbaa !696
  call void @bam_lplbuf_destroy(ptr noundef %1), !dbg !2037
  %2 = load ptr, ptr %tv.addr, align 8, !dbg !2038, !tbaa !588
  %bca = getelementptr inbounds %struct.AbstractTview, ptr %2, i32 0, i32 7, !dbg !2039
  %3 = load ptr, ptr %bca, align 8, !dbg !2039, !tbaa !710
  call void @bcf_call_destroy(ptr noundef %3), !dbg !2040
  %4 = load ptr, ptr %tv.addr, align 8, !dbg !2041, !tbaa !588
  %idx = getelementptr inbounds %struct.AbstractTview, ptr %4, i32 0, i32 2, !dbg !2042
  %5 = load ptr, ptr %idx, align 8, !dbg !2042, !tbaa !672
  call void @hts_idx_destroy(ptr noundef %5), !dbg !2043
  %6 = load ptr, ptr %tv.addr, align 8, !dbg !2044, !tbaa !588
  %fai = getelementptr inbounds %struct.AbstractTview, ptr %6, i32 0, i32 6, !dbg !2046
  %7 = load ptr, ptr %fai, align 8, !dbg !2046, !tbaa !705
  %tobool = icmp ne ptr %7, null, !dbg !2044
  br i1 %tobool, label %if.then, label %if.end, !dbg !2047

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %tv.addr, align 8, !dbg !2048, !tbaa !588
  %fai1 = getelementptr inbounds %struct.AbstractTview, ptr %8, i32 0, i32 6, !dbg !2049
  %9 = load ptr, ptr %fai1, align 8, !dbg !2049, !tbaa !705
  call void @fai_destroy(ptr noundef %9), !dbg !2050
  br label %if.end, !dbg !2050

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %tv.addr, align 8, !dbg !2051, !tbaa !588
  %ref = getelementptr inbounds %struct.AbstractTview, ptr %10, i32 0, i32 21, !dbg !2052
  %11 = load ptr, ptr %ref, align 8, !dbg !2052, !tbaa !1015
  call void @free(ptr noundef %11) #17, !dbg !2053
  %12 = load ptr, ptr %tv.addr, align 8, !dbg !2054, !tbaa !588
  %header = getelementptr inbounds %struct.AbstractTview, ptr %12, i32 0, i32 4, !dbg !2055
  %13 = load ptr, ptr %header, align 8, !dbg !2055, !tbaa !649
  call void @sam_hdr_destroy(ptr noundef %13), !dbg !2056
  %14 = load ptr, ptr %tv.addr, align 8, !dbg !2057, !tbaa !588
  %rg_hash = getelementptr inbounds %struct.AbstractTview, ptr %14, i32 0, i32 22, !dbg !2058
  %15 = load ptr, ptr %rg_hash, align 8, !dbg !2058, !tbaa !726
  call void @destroy_rg_hash(ptr noundef %15), !dbg !2059
  %16 = load ptr, ptr %tv.addr, align 8, !dbg !2060, !tbaa !588
  %fp = getelementptr inbounds %struct.AbstractTview, ptr %16, i32 0, i32 5, !dbg !2060
  %17 = load ptr, ptr %fp, align 8, !dbg !2060, !tbaa !629
  %call = call i32 @hts_close(ptr noundef %17), !dbg !2060
  ret void, !dbg !2061
}

declare !dbg !2062 void @bam_lplbuf_destroy(ptr noundef) #2

declare !dbg !2065 void @bcf_call_destroy(ptr noundef) #2

declare !dbg !2068 void @hts_idx_destroy(ptr noundef) #2

declare !dbg !2071 void @fai_destroy(ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !2074 void @free(ptr noundef) #3

declare !dbg !2077 void @sam_hdr_destroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @destroy_rg_hash(ptr noundef %rg_hash) #0 !dbg !2080 {
entry:
  %rg_hash.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rg_hash, ptr %rg_hash.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %rg_hash.addr, metadata !2084, metadata !DIExpression()), !dbg !2087
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #17, !dbg !2088
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !2085, metadata !DIExpression()), !dbg !2089
  %0 = load ptr, ptr %rg_hash.addr, align 8, !dbg !2090, !tbaa !588
  %tobool = icmp ne ptr %0, null, !dbg !2090
  br i1 %tobool, label %if.end, label %if.then, !dbg !2092

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2093

if.end:                                           ; preds = %entry
  store i32 0, ptr %k, align 4, !dbg !2094, !tbaa !974
  br label %for.cond, !dbg !2096

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %k, align 4, !dbg !2097, !tbaa !974
  %2 = load ptr, ptr %rg_hash.addr, align 8, !dbg !2099, !tbaa !588
  %n_buckets = getelementptr inbounds %struct.kh_kh_rg_s, ptr %2, i32 0, i32 0, !dbg !2099
  %3 = load i32, ptr %n_buckets, align 8, !dbg !2099, !tbaa !2100
  %cmp = icmp ult i32 %1, %3, !dbg !2101
  br i1 %cmp, label %for.body, label %for.end, !dbg !2102

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %rg_hash.addr, align 8, !dbg !2103, !tbaa !588
  %flags = getelementptr inbounds %struct.kh_kh_rg_s, ptr %4, i32 0, i32 4, !dbg !2103
  %5 = load ptr, ptr %flags, align 8, !dbg !2103, !tbaa !2106
  %6 = load i32, ptr %k, align 4, !dbg !2103, !tbaa !974
  %shr = lshr i32 %6, 4, !dbg !2103
  %idxprom = zext i32 %shr to i64, !dbg !2103
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom, !dbg !2103
  %7 = load i32, ptr %arrayidx, align 4, !dbg !2103, !tbaa !974
  %8 = load i32, ptr %k, align 4, !dbg !2103, !tbaa !974
  %and = and i32 %8, 15, !dbg !2103
  %shl = shl i32 %and, 1, !dbg !2103
  %shr1 = lshr i32 %7, %shl, !dbg !2103
  %and2 = and i32 %shr1, 3, !dbg !2103
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2103
  br i1 %tobool3, label %if.end7, label %if.then4, !dbg !2107

if.then4:                                         ; preds = %for.body
  %9 = load ptr, ptr %rg_hash.addr, align 8, !dbg !2108, !tbaa !588
  %keys = getelementptr inbounds %struct.kh_kh_rg_s, ptr %9, i32 0, i32 5, !dbg !2108
  %10 = load ptr, ptr %keys, align 8, !dbg !2108, !tbaa !2109
  %11 = load i32, ptr %k, align 4, !dbg !2108, !tbaa !974
  %idxprom5 = zext i32 %11 to i64, !dbg !2108
  %arrayidx6 = getelementptr inbounds ptr, ptr %10, i64 %idxprom5, !dbg !2108
  %12 = load ptr, ptr %arrayidx6, align 8, !dbg !2108, !tbaa !588
  call void @free(ptr noundef %12) #17, !dbg !2110
  br label %if.end7, !dbg !2110

if.end7:                                          ; preds = %if.then4, %for.body
  br label %for.inc, !dbg !2111

for.inc:                                          ; preds = %if.end7
  %13 = load i32, ptr %k, align 4, !dbg !2112, !tbaa !974
  %inc = add i32 %13, 1, !dbg !2112
  store i32 %inc, ptr %k, align 4, !dbg !2112, !tbaa !974
  br label %for.cond, !dbg !2113, !llvm.loop !2114

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %rg_hash.addr, align 8, !dbg !2116, !tbaa !588
  call void @kh_destroy_kh_rg(ptr noundef %14), !dbg !2116
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2117
  br label %cleanup, !dbg !2117

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #17, !dbg !2117
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2117

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !2118 i32 @hts_close(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !2121 i32 @bcf_call_glfgen(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !2125 ptr @__ctype_toupper_loc() #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @toupper(i32 noundef %__c) #8 !dbg !2132 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4, !tbaa !974
  tail call void @llvm.dbg.declare(metadata ptr %__c.addr, metadata !2136, metadata !DIExpression()), !dbg !2137
  %0 = load i32, ptr %__c.addr, align 4, !dbg !2138, !tbaa !974
  %cmp = icmp sge i32 %0, -128, !dbg !2139
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !2140

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %__c.addr, align 4, !dbg !2141, !tbaa !974
  %cmp1 = icmp slt i32 %1, 256, !dbg !2142
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !2138

cond.true:                                        ; preds = %land.lhs.true
  %call = call ptr @__ctype_toupper_loc() #18, !dbg !2143
  %2 = load ptr, ptr %call, align 8, !dbg !2144, !tbaa !588
  %3 = load i32, ptr %__c.addr, align 4, !dbg !2145, !tbaa !974
  %idxprom = sext i32 %3 to i64, !dbg !2146
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom, !dbg !2146
  %4 = load i32, ptr %arrayidx, align 4, !dbg !2146, !tbaa !974
  br label %cond.end, !dbg !2138

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %__c.addr, align 4, !dbg !2147, !tbaa !974
  br label %cond.end, !dbg !2138

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !2138
  ret i32 %cond, !dbg !2148
}

declare !dbg !2149 i32 @bam_plp_insertion(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2153 signext i8 @bam_aux_getCSi(ptr noundef, i32 noundef) #2

declare !dbg !2156 signext i8 @bam_aux_getCEi(ptr noundef, i32 noundef) #2

declare !dbg !2157 signext i8 @bam_aux_getCQi(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !2158 ptr @__ctype_tolower_loc() #7

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @tolower(i32 noundef %__c) #8 !dbg !2159 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4, !tbaa !974
  tail call void @llvm.dbg.declare(metadata ptr %__c.addr, metadata !2161, metadata !DIExpression()), !dbg !2162
  %0 = load i32, ptr %__c.addr, align 4, !dbg !2163, !tbaa !974
  %cmp = icmp sge i32 %0, -128, !dbg !2164
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !2165

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %__c.addr, align 4, !dbg !2166, !tbaa !974
  %cmp1 = icmp slt i32 %1, 256, !dbg !2167
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !2163

cond.true:                                        ; preds = %land.lhs.true
  %call = call ptr @__ctype_tolower_loc() #18, !dbg !2168
  %2 = load ptr, ptr %call, align 8, !dbg !2169, !tbaa !588
  %3 = load i32, ptr %__c.addr, align 4, !dbg !2170, !tbaa !974
  %idxprom = sext i32 %3 to i64, !dbg !2171
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom, !dbg !2171
  %4 = load i32, ptr %arrayidx, align 4, !dbg !2171, !tbaa !974
  br label %cond.end, !dbg !2163

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %__c.addr, align 4, !dbg !2172, !tbaa !974
  br label %cond.end, !dbg !2163

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !2163
  ret i32 %cond, !dbg !2173
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ks_free(ptr noundef %s) #9 !dbg !2174 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2178, metadata !DIExpression()), !dbg !2179
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2180, !tbaa !588
  %tobool = icmp ne ptr %0, null, !dbg !2180
  br i1 %tobool, label %if.then, label %if.end, !dbg !2182

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !2183, !tbaa !588
  %s1 = getelementptr inbounds %struct.kstring_t, ptr %1, i32 0, i32 2, !dbg !2185
  %2 = load ptr, ptr %s1, align 8, !dbg !2185, !tbaa !1595
  call void @free(ptr noundef %2) #17, !dbg !2186
  %3 = load ptr, ptr %s.addr, align 8, !dbg !2187, !tbaa !588
  call void @ks_initialize(ptr noundef %3), !dbg !2188
  br label %if.end, !dbg !2189

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2190
}

; Function Attrs: nounwind uwtable
define dso_local i32 @base_draw_aln(ptr noundef %tv, i32 noundef %tid, i64 noundef %pos) #0 !dbg !2191 {
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
  store ptr %tv, ptr %tv.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %tv.addr, metadata !2195, metadata !DIExpression()), !dbg !2278
  store i32 %tid, ptr %tid.addr, align 4, !tbaa !974
  tail call void @llvm.dbg.declare(metadata ptr %tid.addr, metadata !2196, metadata !DIExpression()), !dbg !2279
  store i64 %pos, ptr %pos.addr, align 8, !tbaa !976
  tail call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !2197, metadata !DIExpression()), !dbg !2280
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !2281
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2198, metadata !DIExpression()), !dbg !2282
  %0 = load ptr, ptr %tv.addr, align 8, !dbg !2283, !tbaa !588
  %cmp = icmp ne ptr %0, null, !dbg !2283
  br i1 %cmp, label %if.then, label %if.else, !dbg !2286

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !2286

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 355, ptr noundef @__PRETTY_FUNCTION__.base_draw_aln) #16, !dbg !2283
  unreachable, !dbg !2283

if.end:                                           ; preds = %if.then
  %1 = load ptr, ptr %tv.addr, align 8, !dbg !2287, !tbaa !588
  %my_clear = getelementptr inbounds %struct.AbstractTview, ptr %1, i32 0, i32 28, !dbg !2288
  %2 = load ptr, ptr %my_clear, align 8, !dbg !2288, !tbaa !2289
  %3 = load ptr, ptr %tv.addr, align 8, !dbg !2290, !tbaa !588
  call void %2(ptr noundef %3), !dbg !2287
  %4 = load i32, ptr %tid.addr, align 4, !dbg !2291, !tbaa !974
  %5 = load ptr, ptr %tv.addr, align 8, !dbg !2292, !tbaa !588
  %curr_tid = getelementptr inbounds %struct.AbstractTview, ptr %5, i32 0, i32 11, !dbg !2293
  store i32 %4, ptr %curr_tid, align 8, !dbg !2294, !tbaa !2295
  %6 = load i64, ptr %pos.addr, align 8, !dbg !2296, !tbaa !976
  %7 = load ptr, ptr %tv.addr, align 8, !dbg !2297, !tbaa !588
  %left_pos = getelementptr inbounds %struct.AbstractTview, ptr %7, i32 0, i32 8, !dbg !2298
  store i64 %6, ptr %left_pos, align 8, !dbg !2299, !tbaa !1002
  %8 = load ptr, ptr %tv.addr, align 8, !dbg !2300, !tbaa !588
  %left_pos1 = getelementptr inbounds %struct.AbstractTview, ptr %8, i32 0, i32 8, !dbg !2301
  %9 = load i64, ptr %left_pos1, align 8, !dbg !2301, !tbaa !1002
  %sub = sub nsw i64 %9, 1, !dbg !2302
  %10 = load ptr, ptr %tv.addr, align 8, !dbg !2303, !tbaa !588
  %last_pos = getelementptr inbounds %struct.AbstractTview, ptr %10, i32 0, i32 9, !dbg !2304
  store i64 %sub, ptr %last_pos, align 8, !dbg !2305, !tbaa !1037
  %11 = load ptr, ptr %tv.addr, align 8, !dbg !2306, !tbaa !588
  %ccol = getelementptr inbounds %struct.AbstractTview, ptr %11, i32 0, i32 12, !dbg !2307
  store i32 0, ptr %ccol, align 4, !dbg !2308, !tbaa !1007
  %12 = load ptr, ptr %tv.addr, align 8, !dbg !2309, !tbaa !588
  %fai = getelementptr inbounds %struct.AbstractTview, ptr %12, i32 0, i32 6, !dbg !2310
  %13 = load ptr, ptr %fai, align 8, !dbg !2310, !tbaa !705
  %tobool = icmp ne ptr %13, null, !dbg !2309
  br i1 %tobool, label %if.then2, label %if.end32, !dbg !2311

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #17, !dbg !2312
  tail call void @llvm.dbg.declare(metadata ptr %str, metadata !2199, metadata !DIExpression()), !dbg !2313
  %14 = load ptr, ptr %tv.addr, align 8, !dbg !2314, !tbaa !588
  %ref = getelementptr inbounds %struct.AbstractTview, ptr %14, i32 0, i32 21, !dbg !2316
  %15 = load ptr, ptr %ref, align 8, !dbg !2316, !tbaa !1015
  %tobool3 = icmp ne ptr %15, null, !dbg !2314
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !2317

if.then4:                                         ; preds = %if.then2
  %16 = load ptr, ptr %tv.addr, align 8, !dbg !2318, !tbaa !588
  %ref5 = getelementptr inbounds %struct.AbstractTview, ptr %16, i32 0, i32 21, !dbg !2319
  %17 = load ptr, ptr %ref5, align 8, !dbg !2319, !tbaa !1015
  call void @free(ptr noundef %17) #17, !dbg !2320
  br label %if.end6, !dbg !2320

if.end6:                                          ; preds = %if.then4, %if.then2
  %18 = load ptr, ptr %tv.addr, align 8, !dbg !2321, !tbaa !588
  %curr_tid7 = getelementptr inbounds %struct.AbstractTview, ptr %18, i32 0, i32 11, !dbg !2321
  %19 = load i32, ptr %curr_tid7, align 8, !dbg !2321, !tbaa !2295
  %cmp8 = icmp sge i32 %19, 0, !dbg !2321
  br i1 %cmp8, label %if.then9, label %if.else10, !dbg !2324

if.then9:                                         ; preds = %if.end6
  br label %if.end11, !dbg !2324

if.else10:                                        ; preds = %if.end6
  call void @__assert_fail(ptr noundef @.str.14, ptr noundef @.str.1, i32 noundef 365, ptr noundef @__PRETTY_FUNCTION__.base_draw_aln) #16, !dbg !2321
  unreachable, !dbg !2321

if.end11:                                         ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref_name) #17, !dbg !2325
  tail call void @llvm.dbg.declare(metadata ptr %ref_name, metadata !2202, metadata !DIExpression()), !dbg !2326
  %20 = load ptr, ptr %tv.addr, align 8, !dbg !2327, !tbaa !588
  %header = getelementptr inbounds %struct.AbstractTview, ptr %20, i32 0, i32 4, !dbg !2328
  %21 = load ptr, ptr %header, align 8, !dbg !2328, !tbaa !649
  %22 = load ptr, ptr %tv.addr, align 8, !dbg !2329, !tbaa !588
  %curr_tid12 = getelementptr inbounds %struct.AbstractTview, ptr %22, i32 0, i32 11, !dbg !2330
  %23 = load i32, ptr %curr_tid12, align 8, !dbg !2330, !tbaa !2295
  %call = call ptr @sam_hdr_tid2name(ptr noundef %21, i32 noundef %23), !dbg !2331
  store ptr %call, ptr %ref_name, align 8, !dbg !2326, !tbaa !588
  %24 = load ptr, ptr %ref_name, align 8, !dbg !2332, !tbaa !588
  %call13 = call i64 @strlen(ptr noundef %24) #19, !dbg !2333
  %add = add i64 %call13, 30, !dbg !2334
  %call14 = call noalias ptr @calloc(i64 noundef %add, i64 noundef 1) #20, !dbg !2335
  store ptr %call14, ptr %str, align 8, !dbg !2336, !tbaa !588
  %25 = load ptr, ptr %str, align 8, !dbg !2337, !tbaa !588
  %cmp15 = icmp ne ptr %25, null, !dbg !2337
  br i1 %cmp15, label %if.then16, label %if.else17, !dbg !2340

if.then16:                                        ; preds = %if.end11
  br label %if.end18, !dbg !2340

if.else17:                                        ; preds = %if.end11
  call void @__assert_fail(ptr noundef @.str.15, ptr noundef @.str.1, i32 noundef 369, ptr noundef @__PRETTY_FUNCTION__.base_draw_aln) #16, !dbg !2337
  unreachable, !dbg !2337

if.end18:                                         ; preds = %if.then16
  %26 = load ptr, ptr %str, align 8, !dbg !2341, !tbaa !588
  %27 = load ptr, ptr %ref_name, align 8, !dbg !2342, !tbaa !588
  %28 = load ptr, ptr %tv.addr, align 8, !dbg !2343, !tbaa !588
  %left_pos19 = getelementptr inbounds %struct.AbstractTview, ptr %28, i32 0, i32 8, !dbg !2344
  %29 = load i64, ptr %left_pos19, align 8, !dbg !2344, !tbaa !1002
  %add20 = add nsw i64 %29, 1, !dbg !2345
  %30 = load ptr, ptr %tv.addr, align 8, !dbg !2346, !tbaa !588
  %left_pos21 = getelementptr inbounds %struct.AbstractTview, ptr %30, i32 0, i32 8, !dbg !2347
  %31 = load i64, ptr %left_pos21, align 8, !dbg !2347, !tbaa !1002
  %32 = load ptr, ptr %tv.addr, align 8, !dbg !2348, !tbaa !588
  %mcol = getelementptr inbounds %struct.AbstractTview, ptr %32, i32 0, i32 1, !dbg !2349
  %33 = load i32, ptr %mcol, align 4, !dbg !2349, !tbaa !616
  %conv = sext i32 %33 to i64, !dbg !2348
  %add22 = add nsw i64 %31, %conv, !dbg !2350
  %call23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %26, ptr noundef @.str.16, ptr noundef %27, i64 noundef %add20, i64 noundef %add22) #17, !dbg !2351
  %34 = load ptr, ptr %tv.addr, align 8, !dbg !2352, !tbaa !588
  %fai24 = getelementptr inbounds %struct.AbstractTview, ptr %34, i32 0, i32 6, !dbg !2353
  %35 = load ptr, ptr %fai24, align 8, !dbg !2353, !tbaa !705
  %36 = load ptr, ptr %str, align 8, !dbg !2354, !tbaa !588
  %37 = load ptr, ptr %tv.addr, align 8, !dbg !2355, !tbaa !588
  %l_ref = getelementptr inbounds %struct.AbstractTview, ptr %37, i32 0, i32 10, !dbg !2356
  %call25 = call ptr @fai_fetch64(ptr noundef %35, ptr noundef %36, ptr noundef %l_ref), !dbg !2357
  %38 = load ptr, ptr %tv.addr, align 8, !dbg !2358, !tbaa !588
  %ref26 = getelementptr inbounds %struct.AbstractTview, ptr %38, i32 0, i32 21, !dbg !2359
  store ptr %call25, ptr %ref26, align 8, !dbg !2360, !tbaa !1015
  %39 = load ptr, ptr %str, align 8, !dbg !2361, !tbaa !588
  call void @free(ptr noundef %39) #17, !dbg !2362
  %40 = load ptr, ptr %tv.addr, align 8, !dbg !2363, !tbaa !588
  %ref27 = getelementptr inbounds %struct.AbstractTview, ptr %40, i32 0, i32 21, !dbg !2365
  %41 = load ptr, ptr %ref27, align 8, !dbg !2365, !tbaa !1015
  %tobool28 = icmp ne ptr %41, null, !dbg !2363
  br i1 %tobool28, label %if.end31, label %if.then29, !dbg !2366

if.then29:                                        ; preds = %if.end18
  %42 = load ptr, ptr @stderr, align 8, !dbg !2367, !tbaa !588
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.17), !dbg !2369
  call void @exit(i32 noundef 1) #16, !dbg !2370
  unreachable, !dbg !2370

if.end31:                                         ; preds = %if.end18
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref_name) #17, !dbg !2371
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #17, !dbg !2371
  br label %if.end32, !dbg !2372

if.end32:                                         ; preds = %if.end31, %if.end
  %43 = load ptr, ptr %tv.addr, align 8, !dbg !2373, !tbaa !588
  %lplbuf = getelementptr inbounds %struct.AbstractTview, ptr %43, i32 0, i32 3, !dbg !2374
  %44 = load ptr, ptr %lplbuf, align 8, !dbg !2374, !tbaa !696
  call void @bam_lplbuf_reset(ptr noundef %44), !dbg !2375
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #17, !dbg !2376
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !2203, metadata !DIExpression()), !dbg !2377
  %45 = load ptr, ptr %tv.addr, align 8, !dbg !2378, !tbaa !588
  %idx = getelementptr inbounds %struct.AbstractTview, ptr %45, i32 0, i32 2, !dbg !2379
  %46 = load ptr, ptr %idx, align 8, !dbg !2379, !tbaa !672
  %47 = load ptr, ptr %tv.addr, align 8, !dbg !2380, !tbaa !588
  %curr_tid33 = getelementptr inbounds %struct.AbstractTview, ptr %47, i32 0, i32 11, !dbg !2381
  %48 = load i32, ptr %curr_tid33, align 8, !dbg !2381, !tbaa !2295
  %49 = load ptr, ptr %tv.addr, align 8, !dbg !2382, !tbaa !588
  %left_pos34 = getelementptr inbounds %struct.AbstractTview, ptr %49, i32 0, i32 8, !dbg !2383
  %50 = load i64, ptr %left_pos34, align 8, !dbg !2383, !tbaa !1002
  %51 = load ptr, ptr %tv.addr, align 8, !dbg !2384, !tbaa !588
  %left_pos35 = getelementptr inbounds %struct.AbstractTview, ptr %51, i32 0, i32 8, !dbg !2385
  %52 = load i64, ptr %left_pos35, align 8, !dbg !2385, !tbaa !1002
  %53 = load ptr, ptr %tv.addr, align 8, !dbg !2386, !tbaa !588
  %mcol36 = getelementptr inbounds %struct.AbstractTview, ptr %53, i32 0, i32 1, !dbg !2387
  %54 = load i32, ptr %mcol36, align 4, !dbg !2387, !tbaa !616
  %conv37 = sext i32 %54 to i64, !dbg !2386
  %add38 = add nsw i64 %52, %conv37, !dbg !2388
  %call39 = call ptr @sam_itr_queryi(ptr noundef %46, i32 noundef %48, i64 noundef %50, i64 noundef %add38), !dbg !2389
  store ptr %call39, ptr %iter, align 8, !dbg !2377, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #17, !dbg !2390
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !2274, metadata !DIExpression()), !dbg !2391
  %call40 = call ptr @bam_init1(), !dbg !2392
  store ptr %call40, ptr %b, align 8, !dbg !2391, !tbaa !588
  br label %while.cond, !dbg !2393

while.cond:                                       ; preds = %while.body, %if.end32
  %55 = load ptr, ptr %tv.addr, align 8, !dbg !2394, !tbaa !588
  %fp = getelementptr inbounds %struct.AbstractTview, ptr %55, i32 0, i32 5, !dbg !2395
  %56 = load ptr, ptr %fp, align 8, !dbg !2395, !tbaa !629
  %57 = load ptr, ptr %iter, align 8, !dbg !2396, !tbaa !588
  %58 = load ptr, ptr %b, align 8, !dbg !2397, !tbaa !588
  %call41 = call i32 @sam_itr_next(ptr noundef %56, ptr noundef %57, ptr noundef %58), !dbg !2398
  store i32 %call41, ptr %ret, align 4, !dbg !2399, !tbaa !974
  %cmp42 = icmp sge i32 %call41, 0, !dbg !2400
  br i1 %cmp42, label %while.body, label %while.end, !dbg !2393

while.body:                                       ; preds = %while.cond
  %59 = load ptr, ptr %b, align 8, !dbg !2401, !tbaa !588
  %60 = load ptr, ptr %tv.addr, align 8, !dbg !2402, !tbaa !588
  %call44 = call i32 @tv_push_aln(ptr noundef %59, ptr noundef %60), !dbg !2403
  br label %while.cond, !dbg !2393, !llvm.loop !2404

while.end:                                        ; preds = %while.cond
  %61 = load ptr, ptr %b, align 8, !dbg !2406, !tbaa !588
  call void @bam_destroy1(ptr noundef %61), !dbg !2407
  %62 = load ptr, ptr %iter, align 8, !dbg !2408, !tbaa !588
  call void @hts_itr_destroy(ptr noundef %62), !dbg !2409
  %63 = load i32, ptr %ret, align 4, !dbg !2410, !tbaa !974
  %cmp45 = icmp slt i32 %63, -1, !dbg !2412
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !2413

if.then47:                                        ; preds = %while.end
  call void (ptr, ptr, ...) @print_error(ptr noundef @.str.4, ptr noundef @.str.18), !dbg !2414
  call void @exit(i32 noundef 1) #16, !dbg !2416
  unreachable, !dbg !2416

if.end48:                                         ; preds = %while.end
  %64 = load ptr, ptr %tv.addr, align 8, !dbg !2417, !tbaa !588
  %lplbuf49 = getelementptr inbounds %struct.AbstractTview, ptr %64, i32 0, i32 3, !dbg !2418
  %65 = load ptr, ptr %lplbuf49, align 8, !dbg !2418, !tbaa !696
  %call50 = call i32 @bam_lplbuf_push(ptr noundef null, ptr noundef %65), !dbg !2419
  br label %while.cond51, !dbg !2420

while.cond51:                                     ; preds = %cond.end, %if.end48
  %66 = load ptr, ptr %tv.addr, align 8, !dbg !2421, !tbaa !588
  %ccol52 = getelementptr inbounds %struct.AbstractTview, ptr %66, i32 0, i32 12, !dbg !2422
  %67 = load i32, ptr %ccol52, align 4, !dbg !2422, !tbaa !1007
  %68 = load ptr, ptr %tv.addr, align 8, !dbg !2423, !tbaa !588
  %mcol53 = getelementptr inbounds %struct.AbstractTview, ptr %68, i32 0, i32 1, !dbg !2424
  %69 = load i32, ptr %mcol53, align 4, !dbg !2424, !tbaa !616
  %cmp54 = icmp slt i32 %67, %69, !dbg !2425
  br i1 %cmp54, label %while.body56, label %while.end88, !dbg !2420

while.body56:                                     ; preds = %while.cond51
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos57) #17, !dbg !2426
  tail call void @llvm.dbg.declare(metadata ptr %pos57, metadata !2275, metadata !DIExpression()), !dbg !2427
  %70 = load ptr, ptr %tv.addr, align 8, !dbg !2428, !tbaa !588
  %last_pos58 = getelementptr inbounds %struct.AbstractTview, ptr %70, i32 0, i32 9, !dbg !2429
  %71 = load i64, ptr %last_pos58, align 8, !dbg !2429, !tbaa !1037
  %add59 = add nsw i64 %71, 1, !dbg !2430
  store i64 %add59, ptr %pos57, align 8, !dbg !2427, !tbaa !976
  call void @llvm.lifetime.start.p0(i64 4, ptr %interval) #17, !dbg !2431
  tail call void @llvm.dbg.declare(metadata ptr %interval, metadata !2277, metadata !DIExpression()), !dbg !2432
  %72 = load i64, ptr %pos57, align 8, !dbg !2433, !tbaa !976
  %cmp60 = icmp slt i64 %72, 1000000000, !dbg !2434
  %73 = zext i1 %cmp60 to i64, !dbg !2433
  %cond = select i1 %cmp60, i32 10, i32 20, !dbg !2433
  store i32 %cond, ptr %interval, align 4, !dbg !2432, !tbaa !974
  %74 = load i64, ptr %pos57, align 8, !dbg !2435, !tbaa !976
  %75 = load i32, ptr %interval, align 4, !dbg !2437, !tbaa !974
  %conv62 = sext i32 %75 to i64, !dbg !2437
  %rem = srem i64 %74, %conv62, !dbg !2438
  %cmp63 = icmp eq i64 %rem, 0, !dbg !2439
  br i1 %cmp63, label %land.lhs.true, label %if.end73, !dbg !2440

land.lhs.true:                                    ; preds = %while.body56
  %76 = load ptr, ptr %tv.addr, align 8, !dbg !2441, !tbaa !588
  %mcol65 = getelementptr inbounds %struct.AbstractTview, ptr %76, i32 0, i32 1, !dbg !2442
  %77 = load i32, ptr %mcol65, align 4, !dbg !2442, !tbaa !616
  %78 = load ptr, ptr %tv.addr, align 8, !dbg !2443, !tbaa !588
  %ccol66 = getelementptr inbounds %struct.AbstractTview, ptr %78, i32 0, i32 12, !dbg !2444
  %79 = load i32, ptr %ccol66, align 4, !dbg !2444, !tbaa !1007
  %sub67 = sub nsw i32 %77, %79, !dbg !2445
  %cmp68 = icmp sge i32 %sub67, 10, !dbg !2446
  br i1 %cmp68, label %if.then70, label %if.end73, !dbg !2447

if.then70:                                        ; preds = %land.lhs.true
  %80 = load ptr, ptr %tv.addr, align 8, !dbg !2448, !tbaa !588
  %my_mvprintw = getelementptr inbounds %struct.AbstractTview, ptr %80, i32 0, i32 24, !dbg !2449
  %81 = load ptr, ptr %my_mvprintw, align 8, !dbg !2449, !tbaa !1065
  %82 = load ptr, ptr %tv.addr, align 8, !dbg !2450, !tbaa !588
  %83 = load ptr, ptr %tv.addr, align 8, !dbg !2451, !tbaa !588
  %ccol71 = getelementptr inbounds %struct.AbstractTview, ptr %83, i32 0, i32 12, !dbg !2452
  %84 = load i32, ptr %ccol71, align 4, !dbg !2452, !tbaa !1007
  %85 = load i64, ptr %pos57, align 8, !dbg !2453, !tbaa !976
  %add72 = add nsw i64 %85, 1, !dbg !2454
  call void (ptr, i32, i32, ptr, ...) %81(ptr noundef %82, i32 noundef 0, i32 noundef %84, ptr noundef @.str.10, i64 noundef %add72), !dbg !2448
  br label %if.end73, !dbg !2448

if.end73:                                         ; preds = %if.then70, %land.lhs.true, %while.body56
  %86 = load ptr, ptr %tv.addr, align 8, !dbg !2455, !tbaa !588
  %my_mvaddch = getelementptr inbounds %struct.AbstractTview, ptr %86, i32 0, i32 25, !dbg !2456
  %87 = load ptr, ptr %my_mvaddch, align 8, !dbg !2456, !tbaa !1082
  %88 = load ptr, ptr %tv.addr, align 8, !dbg !2457, !tbaa !588
  %89 = load ptr, ptr %tv.addr, align 8, !dbg !2458, !tbaa !588
  %ccol74 = getelementptr inbounds %struct.AbstractTview, ptr %89, i32 0, i32 12, !dbg !2459
  %90 = load i32, ptr %ccol74, align 4, !dbg !2460, !tbaa !1007
  %inc = add nsw i32 %90, 1, !dbg !2460
  store i32 %inc, ptr %ccol74, align 4, !dbg !2460, !tbaa !1007
  %91 = load ptr, ptr %tv.addr, align 8, !dbg !2461, !tbaa !588
  %ref75 = getelementptr inbounds %struct.AbstractTview, ptr %91, i32 0, i32 21, !dbg !2462
  %92 = load ptr, ptr %ref75, align 8, !dbg !2462, !tbaa !1015
  %tobool76 = icmp ne ptr %92, null, !dbg !2461
  br i1 %tobool76, label %land.lhs.true77, label %cond.false, !dbg !2463

land.lhs.true77:                                  ; preds = %if.end73
  %93 = load i64, ptr %pos57, align 8, !dbg !2464, !tbaa !976
  %94 = load ptr, ptr %tv.addr, align 8, !dbg !2465, !tbaa !588
  %l_ref78 = getelementptr inbounds %struct.AbstractTview, ptr %94, i32 0, i32 10, !dbg !2466
  %95 = load i64, ptr %l_ref78, align 8, !dbg !2466, !tbaa !1023
  %cmp79 = icmp slt i64 %93, %95, !dbg !2467
  br i1 %cmp79, label %cond.true, label %cond.false, !dbg !2468

cond.true:                                        ; preds = %land.lhs.true77
  %96 = load ptr, ptr %tv.addr, align 8, !dbg !2469, !tbaa !588
  %ref81 = getelementptr inbounds %struct.AbstractTview, ptr %96, i32 0, i32 21, !dbg !2470
  %97 = load ptr, ptr %ref81, align 8, !dbg !2470, !tbaa !1015
  %98 = load i64, ptr %pos57, align 8, !dbg !2471, !tbaa !976
  %99 = load ptr, ptr %tv.addr, align 8, !dbg !2472, !tbaa !588
  %left_pos82 = getelementptr inbounds %struct.AbstractTview, ptr %99, i32 0, i32 8, !dbg !2473
  %100 = load i64, ptr %left_pos82, align 8, !dbg !2473, !tbaa !1002
  %sub83 = sub nsw i64 %98, %100, !dbg !2474
  %arrayidx = getelementptr inbounds i8, ptr %97, i64 %sub83, !dbg !2469
  %101 = load i8, ptr %arrayidx, align 1, !dbg !2469, !tbaa !1032
  %conv84 = sext i8 %101 to i32, !dbg !2469
  br label %cond.end, !dbg !2468

cond.false:                                       ; preds = %land.lhs.true77, %if.end73
  br label %cond.end, !dbg !2468

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond85 = phi i32 [ %conv84, %cond.true ], [ 78, %cond.false ], !dbg !2468
  call void %87(ptr noundef %88, i32 noundef 1, i32 noundef %90, i32 noundef %cond85), !dbg !2455
  %102 = load ptr, ptr %tv.addr, align 8, !dbg !2475, !tbaa !588
  %last_pos86 = getelementptr inbounds %struct.AbstractTview, ptr %102, i32 0, i32 9, !dbg !2476
  %103 = load i64, ptr %last_pos86, align 8, !dbg !2477, !tbaa !1037
  %inc87 = add nsw i64 %103, 1, !dbg !2477
  store i64 %inc87, ptr %last_pos86, align 8, !dbg !2477, !tbaa !1037
  call void @llvm.lifetime.end.p0(i64 4, ptr %interval) #17, !dbg !2478
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos57) #17, !dbg !2478
  br label %while.cond51, !dbg !2420, !llvm.loop !2479

while.end88:                                      ; preds = %while.cond51
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #17, !dbg !2480
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #17, !dbg !2480
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !2480
  ret i32 0, !dbg !2481
}

declare !dbg !2482 ptr @sam_hdr_tid2name(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !2487 noalias ptr @calloc(i64 noundef, i64 noundef) #10

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2490 i64 @strlen(ptr noundef) #11

; Function Attrs: nounwind
declare !dbg !2494 i32 @sprintf(ptr noundef, ptr noundef, ...) #3

declare !dbg !2500 ptr @fai_fetch64(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2505 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !2561 void @bam_lplbuf_reset(ptr noundef) #2

declare !dbg !2562 ptr @sam_itr_queryi(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

declare !dbg !2567 ptr @bam_init1() #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sam_itr_next(ptr noundef %htsfp, ptr noundef %itr, ptr noundef %r) #9 !dbg !2570 {
entry:
  %retval = alloca i32, align 4
  %htsfp.addr = alloca ptr, align 8
  %itr.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  store ptr %htsfp, ptr %htsfp.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %htsfp.addr, metadata !2574, metadata !DIExpression()), !dbg !2577
  store ptr %itr, ptr %itr.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %itr.addr, metadata !2575, metadata !DIExpression()), !dbg !2578
  store ptr %r, ptr %r.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2576, metadata !DIExpression()), !dbg !2579
  %0 = load ptr, ptr %htsfp.addr, align 8, !dbg !2580, !tbaa !588
  %bf.load = load i32, ptr %0, align 8, !dbg !2582
  %bf.lshr = lshr i32 %bf.load, 4, !dbg !2582
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2582
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2580
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2583

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %htsfp.addr, align 8, !dbg !2584, !tbaa !588
  %bf.load1 = load i32, ptr %1, align 8, !dbg !2585
  %bf.lshr2 = lshr i32 %bf.load1, 3, !dbg !2585
  %bf.clear3 = and i32 %bf.lshr2, 1, !dbg !2585
  %tobool4 = icmp ne i32 %bf.clear3, 0, !dbg !2584
  br i1 %tobool4, label %if.end, label %if.then, !dbg !2586

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %htsfp.addr, align 8, !dbg !2587, !tbaa !588
  %fn = getelementptr inbounds %struct.htsFile, ptr %2, i32 0, i32 3, !dbg !2587
  %3 = load ptr, ptr %fn, align 8, !dbg !2587, !tbaa !2589
  %tobool5 = icmp ne ptr %3, null, !dbg !2587
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !2587

cond.true:                                        ; preds = %if.then
  %4 = load ptr, ptr %htsfp.addr, align 8, !dbg !2587, !tbaa !588
  %fn6 = getelementptr inbounds %struct.htsFile, ptr %4, i32 0, i32 3, !dbg !2587
  %5 = load ptr, ptr %fn6, align 8, !dbg !2587, !tbaa !2589
  br label %cond.end, !dbg !2587

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !2587

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ @.str.39, %cond.false ], !dbg !2587
  call void (i32, ptr, ptr, ...) @hts_log(i32 noundef 1, ptr noundef @__func__.sam_itr_next, ptr noundef @.str.38, ptr noundef %cond), !dbg !2587
  store i32 -2, ptr %retval, align 4, !dbg !2593
  br label %return, !dbg !2593

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %itr.addr, align 8, !dbg !2594, !tbaa !588
  %tobool7 = icmp ne ptr %6, null, !dbg !2594
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2596

if.then8:                                         ; preds = %if.end
  call void (i32, ptr, ptr, ...) @hts_log(i32 noundef 1, ptr noundef @__func__.sam_itr_next, ptr noundef @.str.40), !dbg !2597
  store i32 -2, ptr %retval, align 4, !dbg !2599
  br label %return, !dbg !2599

if.end9:                                          ; preds = %if.end
  %7 = load ptr, ptr %itr.addr, align 8, !dbg !2600, !tbaa !588
  %bf.load10 = load i32, ptr %7, align 8, !dbg !2602
  %bf.lshr11 = lshr i32 %bf.load10, 4, !dbg !2602
  %bf.clear12 = and i32 %bf.lshr11, 1, !dbg !2602
  %tobool13 = icmp ne i32 %bf.clear12, 0, !dbg !2600
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !2603

if.then14:                                        ; preds = %if.end9
  %8 = load ptr, ptr %htsfp.addr, align 8, !dbg !2604, !tbaa !588
  %9 = load ptr, ptr %itr.addr, align 8, !dbg !2605, !tbaa !588
  %10 = load ptr, ptr %r.addr, align 8, !dbg !2606, !tbaa !588
  %call = call i32 @hts_itr_multi_next(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !2607
  store i32 %call, ptr %retval, align 4, !dbg !2608
  br label %return, !dbg !2608

if.else:                                          ; preds = %if.end9
  %11 = load ptr, ptr %htsfp.addr, align 8, !dbg !2609, !tbaa !588
  %bf.load15 = load i32, ptr %11, align 8, !dbg !2610
  %bf.lshr16 = lshr i32 %bf.load15, 4, !dbg !2610
  %bf.clear17 = and i32 %bf.lshr16, 1, !dbg !2610
  %tobool18 = icmp ne i32 %bf.clear17, 0, !dbg !2609
  br i1 %tobool18, label %cond.true19, label %cond.false20, !dbg !2609

cond.true19:                                      ; preds = %if.else
  %12 = load ptr, ptr %htsfp.addr, align 8, !dbg !2611, !tbaa !588
  %fp = getelementptr inbounds %struct.htsFile, ptr %12, i32 0, i32 5, !dbg !2612
  %13 = load ptr, ptr %fp, align 8, !dbg !2613, !tbaa !1032
  br label %cond.end21, !dbg !2609

cond.false20:                                     ; preds = %if.else
  br label %cond.end21, !dbg !2609

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi ptr [ %13, %cond.true19 ], [ null, %cond.false20 ], !dbg !2609
  %14 = load ptr, ptr %itr.addr, align 8, !dbg !2614, !tbaa !588
  %15 = load ptr, ptr %r.addr, align 8, !dbg !2615, !tbaa !588
  %16 = load ptr, ptr %htsfp.addr, align 8, !dbg !2616, !tbaa !588
  %call23 = call i32 @hts_itr_next(ptr noundef %cond22, ptr noundef %14, ptr noundef %15, ptr noundef %16), !dbg !2617
  store i32 %call23, ptr %retval, align 4, !dbg !2618
  br label %return, !dbg !2618

return:                                           ; preds = %cond.end21, %if.then14, %if.then8, %cond.end
  %17 = load i32, ptr %retval, align 4, !dbg !2619
  ret i32 %17, !dbg !2619
}

; Function Attrs: nounwind uwtable
define internal i32 @tv_push_aln(ptr noundef %b, ptr noundef %tv) #0 !dbg !2620 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %tv.addr = alloca ptr, align 8
  %rg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  %cigar = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2626, metadata !DIExpression()), !dbg !2638
  store ptr %tv, ptr %tv.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %tv.addr, metadata !2627, metadata !DIExpression()), !dbg !2639
  %0 = load ptr, ptr %tv.addr, align 8, !dbg !2640, !tbaa !588
  %rg_hash = getelementptr inbounds %struct.AbstractTview, ptr %0, i32 0, i32 22, !dbg !2641
  %1 = load ptr, ptr %rg_hash, align 8, !dbg !2641, !tbaa !726
  %tobool = icmp ne ptr %1, null, !dbg !2640
  br i1 %tobool, label %if.then, label %if.end9, !dbg !2642

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %rg) #17, !dbg !2643
  tail call void @llvm.dbg.declare(metadata ptr %rg, metadata !2628, metadata !DIExpression()), !dbg !2644
  %2 = load ptr, ptr %b.addr, align 8, !dbg !2645, !tbaa !588
  %call = call ptr @bam_aux_get(ptr noundef %2, ptr noundef @.str.34), !dbg !2646
  store ptr %call, ptr %rg, align 8, !dbg !2644, !tbaa !588
  %3 = load ptr, ptr %rg, align 8, !dbg !2647, !tbaa !588
  %tobool1 = icmp ne ptr %3, null, !dbg !2647
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !2649

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !2650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !2650

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #17, !dbg !2651
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !2633, metadata !DIExpression()), !dbg !2652
  %4 = load ptr, ptr %tv.addr, align 8, !dbg !2653, !tbaa !588
  %rg_hash3 = getelementptr inbounds %struct.AbstractTview, ptr %4, i32 0, i32 22, !dbg !2653
  %5 = load ptr, ptr %rg_hash3, align 8, !dbg !2653, !tbaa !726
  %6 = load ptr, ptr %rg, align 8, !dbg !2653, !tbaa !588
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 1, !dbg !2653
  %call4 = call i32 @kh_get_kh_rg(ptr noundef %5, ptr noundef %add.ptr), !dbg !2653
  store i32 %call4, ptr %k, align 4, !dbg !2652, !tbaa !974
  %7 = load i32, ptr %k, align 4, !dbg !2654, !tbaa !974
  %8 = load ptr, ptr %tv.addr, align 8, !dbg !2656, !tbaa !588
  %rg_hash5 = getelementptr inbounds %struct.AbstractTview, ptr %8, i32 0, i32 22, !dbg !2656
  %9 = load ptr, ptr %rg_hash5, align 8, !dbg !2656, !tbaa !726
  %n_buckets = getelementptr inbounds %struct.kh_kh_rg_s, ptr %9, i32 0, i32 0, !dbg !2656
  %10 = load i32, ptr %n_buckets, align 8, !dbg !2656, !tbaa !2100
  %cmp = icmp eq i32 %7, %10, !dbg !2657
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2658

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2659

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2660
  br label %cleanup, !dbg !2660

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #17, !dbg !2660
  br label %cleanup8

cleanup8:                                         ; preds = %cleanup, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %rg) #17, !dbg !2660
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup8
  br label %if.end9, !dbg !2661

if.end9:                                          ; preds = %cleanup.cont, %entry
  %11 = load ptr, ptr %tv.addr, align 8, !dbg !2662, !tbaa !588
  %no_skip = getelementptr inbounds %struct.AbstractTview, ptr %11, i32 0, i32 18, !dbg !2663
  %12 = load i32, ptr %no_skip, align 4, !dbg !2663, !tbaa !2664
  %tobool10 = icmp ne i32 %12, 0, !dbg !2662
  br i1 %tobool10, label %if.then11, label %if.end24, !dbg !2665

if.then11:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %cigar) #17, !dbg !2666
  tail call void @llvm.dbg.declare(metadata ptr %cigar, metadata !2634, metadata !DIExpression()), !dbg !2667
  %13 = load ptr, ptr %b.addr, align 8, !dbg !2668, !tbaa !588
  %data = getelementptr inbounds %struct.bam1_t, ptr %13, i32 0, i32 2, !dbg !2668
  %14 = load ptr, ptr %data, align 8, !dbg !2668, !tbaa !1501
  %15 = load ptr, ptr %b.addr, align 8, !dbg !2668, !tbaa !588
  %core = getelementptr inbounds %struct.bam1_t, ptr %15, i32 0, i32 0, !dbg !2668
  %l_qname = getelementptr inbounds %struct.bam1_core_t, ptr %core, i32 0, i32 6, !dbg !2668
  %16 = load i16, ptr %l_qname, align 2, !dbg !2668, !tbaa !1509
  %conv = zext i16 %16 to i32, !dbg !2668
  %idx.ext = sext i32 %conv to i64, !dbg !2668
  %add.ptr12 = getelementptr inbounds i8, ptr %14, i64 %idx.ext, !dbg !2668
  store ptr %add.ptr12, ptr %cigar, align 8, !dbg !2667, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !2669
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2637, metadata !DIExpression()), !dbg !2670
  store i32 0, ptr %i, align 4, !dbg !2671, !tbaa !974
  br label %for.cond, !dbg !2673

for.cond:                                         ; preds = %for.inc, %if.then11
  %17 = load i32, ptr %i, align 4, !dbg !2674, !tbaa !974
  %18 = load ptr, ptr %b.addr, align 8, !dbg !2676, !tbaa !588
  %core13 = getelementptr inbounds %struct.bam1_t, ptr %18, i32 0, i32 0, !dbg !2677
  %n_cigar = getelementptr inbounds %struct.bam1_core_t, ptr %core13, i32 0, i32 7, !dbg !2678
  %19 = load i32, ptr %n_cigar, align 4, !dbg !2678, !tbaa !1519
  %cmp14 = icmp ult i32 %17, %19, !dbg !2679
  br i1 %cmp14, label %for.body, label %for.end, !dbg !2680

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %cigar, align 8, !dbg !2681, !tbaa !588
  %21 = load i32, ptr %i, align 4, !dbg !2684, !tbaa !974
  %idxprom = sext i32 %21 to i64, !dbg !2681
  %arrayidx = getelementptr inbounds i32, ptr %20, i64 %idxprom, !dbg !2681
  %22 = load i32, ptr %arrayidx, align 4, !dbg !2681, !tbaa !974
  %and = and i32 %22, 15, !dbg !2685
  %cmp16 = icmp eq i32 %and, 3, !dbg !2686
  br i1 %cmp16, label %if.then18, label %if.end23, !dbg !2687

if.then18:                                        ; preds = %for.body
  %23 = load ptr, ptr %cigar, align 8, !dbg !2688, !tbaa !588
  %24 = load i32, ptr %i, align 4, !dbg !2689, !tbaa !974
  %idxprom19 = sext i32 %24 to i64, !dbg !2688
  %arrayidx20 = getelementptr inbounds i32, ptr %23, i64 %idxprom19, !dbg !2688
  %25 = load i32, ptr %arrayidx20, align 4, !dbg !2688, !tbaa !974
  %shr = lshr i32 %25, 4, !dbg !2690
  %shl = shl i32 %shr, 4, !dbg !2691
  %or = or i32 %shl, 2, !dbg !2692
  %26 = load ptr, ptr %cigar, align 8, !dbg !2693, !tbaa !588
  %27 = load i32, ptr %i, align 4, !dbg !2694, !tbaa !974
  %idxprom21 = sext i32 %27 to i64, !dbg !2693
  %arrayidx22 = getelementptr inbounds i32, ptr %26, i64 %idxprom21, !dbg !2693
  store i32 %or, ptr %arrayidx22, align 4, !dbg !2695, !tbaa !974
  br label %if.end23, !dbg !2693

if.end23:                                         ; preds = %if.then18, %for.body
  br label %for.inc, !dbg !2696

for.inc:                                          ; preds = %if.end23
  %28 = load i32, ptr %i, align 4, !dbg !2697, !tbaa !974
  %inc = add nsw i32 %28, 1, !dbg !2697
  store i32 %inc, ptr %i, align 4, !dbg !2697, !tbaa !974
  br label %for.cond, !dbg !2698, !llvm.loop !2699

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !2701
  call void @llvm.lifetime.end.p0(i64 8, ptr %cigar) #17, !dbg !2701
  br label %if.end24, !dbg !2702

if.end24:                                         ; preds = %for.end, %if.end9
  %29 = load ptr, ptr %b.addr, align 8, !dbg !2703, !tbaa !588
  %30 = load ptr, ptr %tv.addr, align 8, !dbg !2704, !tbaa !588
  %lplbuf = getelementptr inbounds %struct.AbstractTview, ptr %30, i32 0, i32 3, !dbg !2705
  %31 = load ptr, ptr %lplbuf, align 8, !dbg !2705, !tbaa !696
  %call25 = call i32 @bam_lplbuf_push(ptr noundef %29, ptr noundef %31), !dbg !2706
  store i32 0, ptr %retval, align 4, !dbg !2707
  br label %return, !dbg !2707

return:                                           ; preds = %if.end24, %cleanup8
  %32 = load i32, ptr %retval, align 4, !dbg !2708
  ret i32 %32, !dbg !2708

unreachable:                                      ; preds = %cleanup8
  unreachable
}

declare !dbg !2709 void @bam_destroy1(ptr noundef) #2

declare !dbg !2712 void @hts_itr_destroy(ptr noundef) #2

declare !dbg !2715 i32 @bam_lplbuf_push(ptr noundef, ptr noundef) #2

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
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !974
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !529, metadata !DIExpression()), !dbg !2718
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !530, metadata !DIExpression()), !dbg !2719
  call void @llvm.lifetime.start.p0(i64 4, ptr %view_mode) #17, !dbg !2720
  tail call void @llvm.dbg.declare(metadata ptr %view_mode, metadata !531, metadata !DIExpression()), !dbg !2721
  store i32 0, ptr %view_mode, align 4, !dbg !2721, !tbaa !974
  call void @llvm.lifetime.start.p0(i64 4, ptr %display_width) #17, !dbg !2720
  tail call void @llvm.dbg.declare(metadata ptr %display_width, metadata !532, metadata !DIExpression()), !dbg !2722
  store i32 0, ptr %display_width, align 4, !dbg !2722, !tbaa !974
  call void @llvm.lifetime.start.p0(i64 8, ptr %tv) #17, !dbg !2723
  tail call void @llvm.dbg.declare(metadata ptr %tv, metadata !533, metadata !DIExpression()), !dbg !2724
  store ptr null, ptr %tv, align 8, !dbg !2724, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %samples) #17, !dbg !2725
  tail call void @llvm.dbg.declare(metadata ptr %samples, metadata !534, metadata !DIExpression()), !dbg !2726
  store ptr null, ptr %samples, align 8, !dbg !2726, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %position) #17, !dbg !2725
  tail call void @llvm.dbg.declare(metadata ptr %position, metadata !535, metadata !DIExpression()), !dbg !2727
  store ptr null, ptr %position, align 8, !dbg !2727, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref) #17, !dbg !2725
  tail call void @llvm.dbg.declare(metadata ptr %ref, metadata !536, metadata !DIExpression()), !dbg !2728
  call void @llvm.lifetime.start.p0(i64 8, ptr %fn_idx) #17, !dbg !2725
  tail call void @llvm.dbg.declare(metadata ptr %fn_idx, metadata !537, metadata !DIExpression()), !dbg !2729
  store ptr null, ptr %fn_idx, align 8, !dbg !2729, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #17, !dbg !2730
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !538, metadata !DIExpression()), !dbg !2731
  call void @llvm.lifetime.start.p0(i64 4, ptr %has_index_file) #17, !dbg !2730
  tail call void @llvm.dbg.declare(metadata ptr %has_index_file, metadata !539, metadata !DIExpression()), !dbg !2732
  store i32 0, ptr %has_index_file, align 4, !dbg !2732, !tbaa !974
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_index) #17, !dbg !2730
  tail call void @llvm.dbg.declare(metadata ptr %ref_index, metadata !540, metadata !DIExpression()), !dbg !2733
  store i32 0, ptr %ref_index, align 4, !dbg !2733, !tbaa !974
  call void @llvm.lifetime.start.p0(i64 80, ptr %ga) #17, !dbg !2734
  tail call void @llvm.dbg.declare(metadata ptr %ga, metadata !541, metadata !DIExpression()), !dbg !2735
  call void @llvm.memset.p0.i64(ptr align 8 %ga, i8 0, i64 80, i1 false), !dbg !2735
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !2736
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !551, metadata !DIExpression()), !dbg !2737
  br label %while.cond, !dbg !2738

while.cond:                                       ; preds = %sw.epilog23, %entry
  %0 = load i32, ptr %argc.addr, align 4, !dbg !2739, !tbaa !974
  %1 = load ptr, ptr %argv.addr, align 8, !dbg !2740, !tbaa !588
  %call = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.27, ptr noundef @bam_tview_main.lopts, ptr noundef null) #17, !dbg !2741
  store i32 %call, ptr %c, align 4, !dbg !2742, !tbaa !974
  %cmp = icmp sge i32 %call, 0, !dbg !2743
  br i1 %cmp, label %while.body, label %while.end, !dbg !2738

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %c, align 4, !dbg !2744, !tbaa !974
  switch i32 %2, label %sw.default16 [
    i32 119, label %sw.bb
    i32 115, label %sw.bb8
    i32 112, label %sw.bb9
    i32 88, label %sw.bb10
    i32 100, label %sw.bb11
    i32 63, label %sw.bb22
  ], !dbg !2746

sw.bb:                                            ; preds = %while.body
  %3 = load ptr, ptr @optarg, align 8, !dbg !2747, !tbaa !588
  %call1 = call i64 @strtol(ptr noundef %3, ptr noundef %tmp, i32 noundef 10) #17, !dbg !2749
  %conv = trunc i64 %call1 to i32, !dbg !2749
  store i32 %conv, ptr %display_width, align 4, !dbg !2750, !tbaa !974
  %4 = load ptr, ptr %tmp, align 8, !dbg !2751, !tbaa !588
  %5 = load ptr, ptr @optarg, align 8, !dbg !2753, !tbaa !588
  %cmp2 = icmp eq ptr %4, %5, !dbg !2754
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !2755

lor.lhs.false:                                    ; preds = %sw.bb
  %6 = load ptr, ptr %tmp, align 8, !dbg !2756, !tbaa !588
  %7 = load i8, ptr %6, align 1, !dbg !2757, !tbaa !1032
  %conv4 = sext i8 %7 to i32, !dbg !2757
  %tobool = icmp ne i32 %conv4, 0, !dbg !2757
  br i1 %tobool, label %if.then, label %lor.lhs.false5, !dbg !2758

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %8 = load i32, ptr %display_width, align 4, !dbg !2759, !tbaa !974
  %cmp6 = icmp slt i32 %8, 1, !dbg !2760
  br i1 %cmp6, label %if.then, label %if.end, !dbg !2761

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %sw.bb
  %9 = load ptr, ptr @optarg, align 8, !dbg !2762, !tbaa !588
  call void (ptr, ...) @error(ptr noundef @.str.28, ptr noundef %9), !dbg !2763
  br label %if.end, !dbg !2763

if.end:                                           ; preds = %if.then, %lor.lhs.false5
  br label %sw.epilog23, !dbg !2764

sw.bb8:                                           ; preds = %while.body
  %10 = load ptr, ptr @optarg, align 8, !dbg !2765, !tbaa !588
  store ptr %10, ptr %samples, align 8, !dbg !2766, !tbaa !588
  br label %sw.epilog23, !dbg !2767

sw.bb9:                                           ; preds = %while.body
  %11 = load ptr, ptr @optarg, align 8, !dbg !2768, !tbaa !588
  store ptr %11, ptr %position, align 8, !dbg !2769, !tbaa !588
  br label %sw.epilog23, !dbg !2770

sw.bb10:                                          ; preds = %while.body
  store i32 1, ptr %has_index_file, align 4, !dbg !2771, !tbaa !974
  br label %sw.epilog23, !dbg !2772

sw.bb11:                                          ; preds = %while.body
  %12 = load ptr, ptr @optarg, align 8, !dbg !2773, !tbaa !588
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 0, !dbg !2773
  %13 = load i8, ptr %arrayidx, align 1, !dbg !2773, !tbaa !1032
  %conv12 = sext i8 %13 to i32, !dbg !2773
  switch i32 %conv12, label %sw.default [
    i32 72, label %sw.bb13
    i32 104, label %sw.bb13
    i32 84, label %sw.bb14
    i32 116, label %sw.bb14
    i32 67, label %sw.bb15
    i32 99, label %sw.bb15
  ], !dbg !2775

sw.bb13:                                          ; preds = %sw.bb11, %sw.bb11
  store i32 1, ptr %view_mode, align 4, !dbg !2776, !tbaa !974
  br label %sw.epilog, !dbg !2778

sw.bb14:                                          ; preds = %sw.bb11, %sw.bb11
  store i32 2, ptr %view_mode, align 4, !dbg !2779, !tbaa !974
  br label %sw.epilog, !dbg !2780

sw.bb15:                                          ; preds = %sw.bb11, %sw.bb11
  store i32 0, ptr %view_mode, align 4, !dbg !2781, !tbaa !974
  br label %sw.epilog, !dbg !2782

sw.default:                                       ; preds = %sw.bb11
  store i32 0, ptr %view_mode, align 4, !dbg !2783, !tbaa !974
  br label %sw.epilog, !dbg !2784

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb14, %sw.bb13
  br label %sw.epilog23, !dbg !2785

sw.default16:                                     ; preds = %while.body
  %14 = load i32, ptr %c, align 4, !dbg !2786, !tbaa !974
  %15 = load ptr, ptr @optarg, align 8, !dbg !2788, !tbaa !588
  %call17 = call i32 @parse_sam_global_opt(i32 noundef %14, ptr noundef %15, ptr noundef @bam_tview_main.lopts, ptr noundef %ga), !dbg !2789
  %cmp18 = icmp eq i32 %call17, 0, !dbg !2790
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !2791

if.then20:                                        ; preds = %sw.default16
  br label %sw.epilog23, !dbg !2792

if.end21:                                         ; preds = %sw.default16
  br label %sw.bb22, !dbg !2793

sw.bb22:                                          ; preds = %while.body, %if.end21
  call void (ptr, ...) @error(ptr noundef null), !dbg !2794
  br label %sw.epilog23, !dbg !2795

sw.epilog23:                                      ; preds = %sw.bb22, %if.then20, %sw.epilog, %sw.bb10, %sw.bb9, %sw.bb8, %if.end
  br label %while.cond, !dbg !2738, !llvm.loop !2796

while.end:                                        ; preds = %while.cond
  %16 = load i32, ptr %argc.addr, align 4, !dbg !2798, !tbaa !974
  %17 = load i32, ptr @optind, align 4, !dbg !2800, !tbaa !974
  %cmp24 = icmp eq i32 %16, %17, !dbg !2801
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !2802

if.then26:                                        ; preds = %while.end
  call void (ptr, ...) @error(ptr noundef null), !dbg !2803
  br label %if.end27, !dbg !2803

if.end27:                                         ; preds = %if.then26, %while.end
  %18 = load i32, ptr %display_width, align 4, !dbg !2804, !tbaa !974
  %tobool28 = icmp ne i32 %18, 0, !dbg !2804
  br i1 %tobool28, label %land.lhs.true, label %if.end32, !dbg !2806

land.lhs.true:                                    ; preds = %if.end27
  %19 = load i32, ptr %view_mode, align 4, !dbg !2807, !tbaa !974
  %cmp29 = icmp eq i32 %19, 0, !dbg !2808
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !2809

if.then31:                                        ; preds = %land.lhs.true
  call void (ptr, ...) @error(ptr noundef @.str.29), !dbg !2810
  br label %if.end32, !dbg !2810

if.end32:                                         ; preds = %if.then31, %land.lhs.true, %if.end27
  store ptr null, ptr %ref, align 8, !dbg !2811, !tbaa !588
  %20 = load i32, ptr @optind, align 4, !dbg !2812, !tbaa !974
  store i32 %20, ptr %ref_index, align 4, !dbg !2813, !tbaa !974
  %21 = load i32, ptr %has_index_file, align 4, !dbg !2814, !tbaa !974
  %tobool33 = icmp ne i32 %21, 0, !dbg !2814
  br i1 %tobool33, label %if.else, label %if.then34, !dbg !2816

if.then34:                                        ; preds = %if.end32
  %22 = load i32, ptr @optind, align 4, !dbg !2817, !tbaa !974
  %add = add nsw i32 %22, 1, !dbg !2819
  %23 = load i32, ptr %argc.addr, align 4, !dbg !2820, !tbaa !974
  %cmp35 = icmp sge i32 %add, %23, !dbg !2821
  br i1 %cmp35, label %cond.true, label %cond.false, !dbg !2822

cond.true:                                        ; preds = %if.then34
  %reference = getelementptr inbounds %struct.sam_global_args, ptr %ga, i32 0, i32 2, !dbg !2823
  %24 = load ptr, ptr %reference, align 8, !dbg !2823, !tbaa !2824
  br label %cond.end, !dbg !2822

cond.false:                                       ; preds = %if.then34
  %25 = load ptr, ptr %argv.addr, align 8, !dbg !2826, !tbaa !588
  %26 = load i32, ptr @optind, align 4, !dbg !2827, !tbaa !974
  %add37 = add nsw i32 %26, 1, !dbg !2828
  %idxprom = sext i32 %add37 to i64, !dbg !2826
  %arrayidx38 = getelementptr inbounds ptr, ptr %25, i64 %idxprom, !dbg !2826
  %27 = load ptr, ptr %arrayidx38, align 8, !dbg !2826, !tbaa !588
  br label %cond.end, !dbg !2822

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %24, %cond.true ], [ %27, %cond.false ], !dbg !2822
  store ptr %cond, ptr %ref, align 8, !dbg !2829, !tbaa !588
  br label %if.end60, !dbg !2830

if.else:                                          ; preds = %if.end32
  %28 = load i32, ptr @optind, align 4, !dbg !2831, !tbaa !974
  %add39 = add nsw i32 %28, 2, !dbg !2833
  %29 = load i32, ptr %argc.addr, align 4, !dbg !2834, !tbaa !974
  %cmp40 = icmp sge i32 %add39, %29, !dbg !2835
  br i1 %cmp40, label %cond.true42, label %cond.false44, !dbg !2836

cond.true42:                                      ; preds = %if.else
  %reference43 = getelementptr inbounds %struct.sam_global_args, ptr %ga, i32 0, i32 2, !dbg !2837
  %30 = load ptr, ptr %reference43, align 8, !dbg !2837, !tbaa !2824
  br label %cond.end48, !dbg !2836

cond.false44:                                     ; preds = %if.else
  %31 = load ptr, ptr %argv.addr, align 8, !dbg !2838, !tbaa !588
  %32 = load i32, ptr @optind, align 4, !dbg !2839, !tbaa !974
  %add45 = add nsw i32 %32, 2, !dbg !2840
  %idxprom46 = sext i32 %add45 to i64, !dbg !2838
  %arrayidx47 = getelementptr inbounds ptr, ptr %31, i64 %idxprom46, !dbg !2838
  %33 = load ptr, ptr %arrayidx47, align 8, !dbg !2838, !tbaa !588
  br label %cond.end48, !dbg !2836

cond.end48:                                       ; preds = %cond.false44, %cond.true42
  %cond49 = phi ptr [ %30, %cond.true42 ], [ %33, %cond.false44 ], !dbg !2836
  store ptr %cond49, ptr %ref, align 8, !dbg !2841, !tbaa !588
  %34 = load i32, ptr @optind, align 4, !dbg !2842, !tbaa !974
  %add50 = add nsw i32 %34, 1, !dbg !2844
  %35 = load i32, ptr %argc.addr, align 4, !dbg !2845, !tbaa !974
  %cmp51 = icmp sge i32 %add50, %35, !dbg !2846
  br i1 %cmp51, label %if.then53, label %if.end55, !dbg !2847

if.then53:                                        ; preds = %cond.end48
  %36 = load ptr, ptr @stderr, align 8, !dbg !2848, !tbaa !588
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.30), !dbg !2850
  store i32 1, ptr %retval, align 4, !dbg !2851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2851

if.end55:                                         ; preds = %cond.end48
  %37 = load ptr, ptr %argv.addr, align 8, !dbg !2852, !tbaa !588
  %38 = load i32, ptr @optind, align 4, !dbg !2853, !tbaa !974
  %add56 = add nsw i32 %38, 1, !dbg !2854
  %idxprom57 = sext i32 %add56 to i64, !dbg !2852
  %arrayidx58 = getelementptr inbounds ptr, ptr %37, i64 %idxprom57, !dbg !2852
  %39 = load ptr, ptr %arrayidx58, align 8, !dbg !2852, !tbaa !588
  store ptr %39, ptr %fn_idx, align 8, !dbg !2855, !tbaa !588
  %40 = load i32, ptr @optind, align 4, !dbg !2856, !tbaa !974
  %add59 = add nsw i32 %40, 1, !dbg !2857
  store i32 %add59, ptr %ref_index, align 4, !dbg !2858, !tbaa !974
  br label %if.end60

if.end60:                                         ; preds = %if.end55, %cond.end
  %41 = load i32, ptr %view_mode, align 4, !dbg !2859, !tbaa !974
  switch i32 %41, label %sw.epilog82 [
    i32 0, label %sw.bb61
    i32 2, label %sw.bb65
    i32 1, label %sw.bb73
  ], !dbg !2860

sw.bb61:                                          ; preds = %if.end60
  %42 = load ptr, ptr %argv.addr, align 8, !dbg !2861, !tbaa !588
  %43 = load i32, ptr %ref_index, align 4, !dbg !2863, !tbaa !974
  %idxprom62 = sext i32 %43 to i64, !dbg !2861
  %arrayidx63 = getelementptr inbounds ptr, ptr %42, i64 %idxprom62, !dbg !2861
  %44 = load ptr, ptr %arrayidx63, align 8, !dbg !2861, !tbaa !588
  %45 = load ptr, ptr %ref, align 8, !dbg !2864, !tbaa !588
  %46 = load ptr, ptr %samples, align 8, !dbg !2865, !tbaa !588
  %in = getelementptr inbounds %struct.sam_global_args, ptr %ga, i32 0, i32 0, !dbg !2866
  %call64 = call ptr @curses_tv_init(ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %in), !dbg !2867
  store ptr %call64, ptr %tv, align 8, !dbg !2868, !tbaa !588
  br label %sw.epilog82, !dbg !2869

sw.bb65:                                          ; preds = %if.end60
  %47 = load ptr, ptr %argv.addr, align 8, !dbg !2870, !tbaa !588
  %48 = load i32, ptr %ref_index, align 4, !dbg !2871, !tbaa !974
  %idxprom66 = sext i32 %48 to i64, !dbg !2870
  %arrayidx67 = getelementptr inbounds ptr, ptr %47, i64 %idxprom66, !dbg !2870
  %49 = load ptr, ptr %arrayidx67, align 8, !dbg !2870, !tbaa !588
  %50 = load ptr, ptr %ref, align 8, !dbg !2872, !tbaa !588
  %51 = load ptr, ptr %fn_idx, align 8, !dbg !2873, !tbaa !588
  %52 = load ptr, ptr %samples, align 8, !dbg !2874, !tbaa !588
  %in68 = getelementptr inbounds %struct.sam_global_args, ptr %ga, i32 0, i32 0, !dbg !2875
  %call69 = call ptr @text_tv_init(ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %in68), !dbg !2876
  store ptr %call69, ptr %tv, align 8, !dbg !2877, !tbaa !588
  %53 = load i32, ptr %display_width, align 4, !dbg !2878, !tbaa !974
  %tobool70 = icmp ne i32 %53, 0, !dbg !2878
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !2880

if.then71:                                        ; preds = %sw.bb65
  %54 = load i32, ptr %display_width, align 4, !dbg !2881, !tbaa !974
  %55 = load ptr, ptr %tv, align 8, !dbg !2882, !tbaa !588
  %mcol = getelementptr inbounds %struct.AbstractTview, ptr %55, i32 0, i32 1, !dbg !2883
  store i32 %54, ptr %mcol, align 4, !dbg !2884, !tbaa !616
  br label %if.end72, !dbg !2882

if.end72:                                         ; preds = %if.then71, %sw.bb65
  br label %sw.epilog82, !dbg !2885

sw.bb73:                                          ; preds = %if.end60
  %56 = load ptr, ptr %argv.addr, align 8, !dbg !2886, !tbaa !588
  %57 = load i32, ptr %ref_index, align 4, !dbg !2887, !tbaa !974
  %idxprom74 = sext i32 %57 to i64, !dbg !2886
  %arrayidx75 = getelementptr inbounds ptr, ptr %56, i64 %idxprom74, !dbg !2886
  %58 = load ptr, ptr %arrayidx75, align 8, !dbg !2886, !tbaa !588
  %59 = load ptr, ptr %ref, align 8, !dbg !2888, !tbaa !588
  %60 = load ptr, ptr %fn_idx, align 8, !dbg !2889, !tbaa !588
  %61 = load ptr, ptr %samples, align 8, !dbg !2890, !tbaa !588
  %in76 = getelementptr inbounds %struct.sam_global_args, ptr %ga, i32 0, i32 0, !dbg !2891
  %call77 = call ptr @html_tv_init(ptr noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %61, ptr noundef %in76), !dbg !2892
  store ptr %call77, ptr %tv, align 8, !dbg !2893, !tbaa !588
  %62 = load i32, ptr %display_width, align 4, !dbg !2894, !tbaa !974
  %tobool78 = icmp ne i32 %62, 0, !dbg !2894
  br i1 %tobool78, label %if.then79, label %if.end81, !dbg !2896

if.then79:                                        ; preds = %sw.bb73
  %63 = load i32, ptr %display_width, align 4, !dbg !2897, !tbaa !974
  %64 = load ptr, ptr %tv, align 8, !dbg !2898, !tbaa !588
  %mcol80 = getelementptr inbounds %struct.AbstractTview, ptr %64, i32 0, i32 1, !dbg !2899
  store i32 %63, ptr %mcol80, align 4, !dbg !2900, !tbaa !616
  br label %if.end81, !dbg !2898

if.end81:                                         ; preds = %if.then79, %sw.bb73
  br label %sw.epilog82, !dbg !2901

sw.epilog82:                                      ; preds = %if.end60, %if.end81, %if.end72, %sw.bb61
  %65 = load ptr, ptr %tv, align 8, !dbg !2902, !tbaa !588
  %cmp83 = icmp eq ptr %65, null, !dbg !2904
  br i1 %cmp83, label %if.then85, label %if.end86, !dbg !2905

if.then85:                                        ; preds = %sw.epilog82
  call void (ptr, ...) @error(ptr noundef @.str.31), !dbg !2906
  store i32 1, ptr %retval, align 4, !dbg !2908
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2908

if.end86:                                         ; preds = %sw.epilog82
  %66 = load ptr, ptr %position, align 8, !dbg !2909, !tbaa !588
  %tobool87 = icmp ne ptr %66, null, !dbg !2909
  br i1 %tobool87, label %if.then88, label %if.else94, !dbg !2910

if.then88:                                        ; preds = %if.end86
  call void @llvm.lifetime.start.p0(i64 4, ptr %tid) #17, !dbg !2911
  tail call void @llvm.dbg.declare(metadata ptr %tid, metadata !552, metadata !DIExpression()), !dbg !2912
  call void @llvm.lifetime.start.p0(i64 8, ptr %beg) #17, !dbg !2913
  tail call void @llvm.dbg.declare(metadata ptr %beg, metadata !555, metadata !DIExpression()), !dbg !2914
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #17, !dbg !2913
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !556, metadata !DIExpression()), !dbg !2915
  %67 = load ptr, ptr %tv, align 8, !dbg !2916, !tbaa !588
  %header = getelementptr inbounds %struct.AbstractTview, ptr %67, i32 0, i32 4, !dbg !2918
  %68 = load ptr, ptr %header, align 8, !dbg !2918, !tbaa !649
  %69 = load ptr, ptr %position, align 8, !dbg !2919, !tbaa !588
  %call89 = call ptr @sam_parse_region(ptr noundef %68, ptr noundef %69, ptr noundef %tid, ptr noundef %beg, ptr noundef %end, i32 noundef 0), !dbg !2920
  %tobool90 = icmp ne ptr %call89, null, !dbg !2920
  br i1 %tobool90, label %if.end93, label %if.then91, !dbg !2921

if.then91:                                        ; preds = %if.then88
  %70 = load ptr, ptr %tv, align 8, !dbg !2922, !tbaa !588
  %my_destroy = getelementptr inbounds %struct.AbstractTview, ptr %70, i32 0, i32 23, !dbg !2924
  %71 = load ptr, ptr %my_destroy, align 8, !dbg !2924, !tbaa !2925
  %72 = load ptr, ptr %tv, align 8, !dbg !2926, !tbaa !588
  call void %71(ptr noundef %72), !dbg !2922
  %73 = load ptr, ptr @stderr, align 8, !dbg !2927, !tbaa !588
  %call92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str.32), !dbg !2928
  call void @exit(i32 noundef 1) #16, !dbg !2929
  unreachable, !dbg !2929

if.end93:                                         ; preds = %if.then88
  %74 = load i32, ptr %tid, align 4, !dbg !2930, !tbaa !974
  %75 = load ptr, ptr %tv, align 8, !dbg !2931, !tbaa !588
  %curr_tid = getelementptr inbounds %struct.AbstractTview, ptr %75, i32 0, i32 11, !dbg !2932
  store i32 %74, ptr %curr_tid, align 8, !dbg !2933, !tbaa !2295
  %76 = load i64, ptr %beg, align 8, !dbg !2934, !tbaa !976
  %77 = load ptr, ptr %tv, align 8, !dbg !2935, !tbaa !588
  %left_pos = getelementptr inbounds %struct.AbstractTview, ptr %77, i32 0, i32 8, !dbg !2936
  store i64 %76, ptr %left_pos, align 8, !dbg !2937, !tbaa !1002
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #17, !dbg !2938
  call void @llvm.lifetime.end.p0(i64 8, ptr %beg) #17, !dbg !2938
  call void @llvm.lifetime.end.p0(i64 4, ptr %tid) #17, !dbg !2938
  br label %if.end118, !dbg !2939

if.else94:                                        ; preds = %if.end86
  %78 = load ptr, ptr %tv, align 8, !dbg !2940, !tbaa !588
  %fai = getelementptr inbounds %struct.AbstractTview, ptr %78, i32 0, i32 6, !dbg !2941
  %79 = load ptr, ptr %fai, align 8, !dbg !2941, !tbaa !705
  %tobool95 = icmp ne ptr %79, null, !dbg !2940
  br i1 %tobool95, label %if.then96, label %if.end117, !dbg !2942

if.then96:                                        ; preds = %if.else94
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !2943
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !557, metadata !DIExpression()), !dbg !2944
  store i32 0, ptr %i, align 4, !dbg !2945, !tbaa !974
  br label %for.cond, !dbg !2947

for.cond:                                         ; preds = %for.inc, %if.then96
  %80 = load i32, ptr %i, align 4, !dbg !2948, !tbaa !974
  %81 = load ptr, ptr %tv, align 8, !dbg !2950, !tbaa !588
  %header97 = getelementptr inbounds %struct.AbstractTview, ptr %81, i32 0, i32 4, !dbg !2951
  %82 = load ptr, ptr %header97, align 8, !dbg !2951, !tbaa !649
  %call98 = call i32 @sam_hdr_nref(ptr noundef %82), !dbg !2952
  %cmp99 = icmp slt i32 %80, %call98, !dbg !2953
  br i1 %cmp99, label %for.body, label %for.end, !dbg !2954

for.body:                                         ; preds = %for.cond
  %83 = load ptr, ptr %tv, align 8, !dbg !2955, !tbaa !588
  %fai101 = getelementptr inbounds %struct.AbstractTview, ptr %83, i32 0, i32 6, !dbg !2958
  %84 = load ptr, ptr %fai101, align 8, !dbg !2958, !tbaa !705
  %85 = load ptr, ptr %tv, align 8, !dbg !2959, !tbaa !588
  %header102 = getelementptr inbounds %struct.AbstractTview, ptr %85, i32 0, i32 4, !dbg !2960
  %86 = load ptr, ptr %header102, align 8, !dbg !2960, !tbaa !649
  %87 = load i32, ptr %i, align 4, !dbg !2961, !tbaa !974
  %call103 = call ptr @sam_hdr_tid2name(ptr noundef %86, i32 noundef %87), !dbg !2962
  %call104 = call i32 @faidx_has_seq(ptr noundef %84, ptr noundef %call103), !dbg !2963
  %tobool105 = icmp ne i32 %call104, 0, !dbg !2963
  br i1 %tobool105, label %if.then106, label %if.end107, !dbg !2964

if.then106:                                       ; preds = %for.body
  br label %for.end, !dbg !2965

if.end107:                                        ; preds = %for.body
  br label %for.inc, !dbg !2966

for.inc:                                          ; preds = %if.end107
  %88 = load i32, ptr %i, align 4, !dbg !2967, !tbaa !974
  %inc = add nsw i32 %88, 1, !dbg !2967
  store i32 %inc, ptr %i, align 4, !dbg !2967, !tbaa !974
  br label %for.cond, !dbg !2968, !llvm.loop !2969

for.end:                                          ; preds = %if.then106, %for.cond
  %89 = load i32, ptr %i, align 4, !dbg !2971, !tbaa !974
  %90 = load ptr, ptr %tv, align 8, !dbg !2973, !tbaa !588
  %header108 = getelementptr inbounds %struct.AbstractTview, ptr %90, i32 0, i32 4, !dbg !2974
  %91 = load ptr, ptr %header108, align 8, !dbg !2974, !tbaa !649
  %call109 = call i32 @sam_hdr_nref(ptr noundef %91), !dbg !2975
  %cmp110 = icmp eq i32 %89, %call109, !dbg !2976
  br i1 %cmp110, label %if.then112, label %if.end115, !dbg !2977

if.then112:                                       ; preds = %for.end
  %92 = load ptr, ptr %tv, align 8, !dbg !2978, !tbaa !588
  %my_destroy113 = getelementptr inbounds %struct.AbstractTview, ptr %92, i32 0, i32 23, !dbg !2980
  %93 = load ptr, ptr %my_destroy113, align 8, !dbg !2980, !tbaa !2925
  %94 = load ptr, ptr %tv, align 8, !dbg !2981, !tbaa !588
  call void %93(ptr noundef %94), !dbg !2978
  %95 = load ptr, ptr @stderr, align 8, !dbg !2982, !tbaa !588
  %call114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.33), !dbg !2983
  call void @exit(i32 noundef 1) #16, !dbg !2984
  unreachable, !dbg !2984

if.end115:                                        ; preds = %for.end
  %96 = load i32, ptr %i, align 4, !dbg !2985, !tbaa !974
  %97 = load ptr, ptr %tv, align 8, !dbg !2986, !tbaa !588
  %curr_tid116 = getelementptr inbounds %struct.AbstractTview, ptr %97, i32 0, i32 11, !dbg !2987
  store i32 %96, ptr %curr_tid116, align 8, !dbg !2988, !tbaa !2295
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !2989
  br label %if.end117, !dbg !2990

if.end117:                                        ; preds = %if.end115, %if.else94
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end93
  %98 = load ptr, ptr %tv, align 8, !dbg !2991, !tbaa !588
  %my_drawaln = getelementptr inbounds %struct.AbstractTview, ptr %98, i32 0, i32 30, !dbg !2992
  %99 = load ptr, ptr %my_drawaln, align 8, !dbg !2992, !tbaa !2993
  %100 = load ptr, ptr %tv, align 8, !dbg !2994, !tbaa !588
  %101 = load ptr, ptr %tv, align 8, !dbg !2995, !tbaa !588
  %curr_tid119 = getelementptr inbounds %struct.AbstractTview, ptr %101, i32 0, i32 11, !dbg !2996
  %102 = load i32, ptr %curr_tid119, align 8, !dbg !2996, !tbaa !2295
  %103 = load ptr, ptr %tv, align 8, !dbg !2997, !tbaa !588
  %left_pos120 = getelementptr inbounds %struct.AbstractTview, ptr %103, i32 0, i32 8, !dbg !2998
  %104 = load i64, ptr %left_pos120, align 8, !dbg !2998, !tbaa !1002
  %call121 = call i32 %99(ptr noundef %100, i32 noundef %102, i64 noundef %104), !dbg !2991
  %105 = load ptr, ptr %tv, align 8, !dbg !2999, !tbaa !588
  %my_loop = getelementptr inbounds %struct.AbstractTview, ptr %105, i32 0, i32 31, !dbg !3000
  %106 = load ptr, ptr %my_loop, align 8, !dbg !3000, !tbaa !3001
  %107 = load ptr, ptr %tv, align 8, !dbg !3002, !tbaa !588
  %call122 = call i32 %106(ptr noundef %107), !dbg !2999
  %108 = load ptr, ptr %tv, align 8, !dbg !3003, !tbaa !588
  %my_destroy123 = getelementptr inbounds %struct.AbstractTview, ptr %108, i32 0, i32 23, !dbg !3004
  %109 = load ptr, ptr %my_destroy123, align 8, !dbg !3004, !tbaa !2925
  %110 = load ptr, ptr %tv, align 8, !dbg !3005, !tbaa !588
  call void %109(ptr noundef %110), !dbg !3003
  store i32 0, ptr %retval, align 4, !dbg !3006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3006

cleanup:                                          ; preds = %if.end118, %if.then85, %if.then53
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !3007
  call void @llvm.lifetime.end.p0(i64 80, ptr %ga) #17, !dbg !3007
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_index) #17, !dbg !3007
  call void @llvm.lifetime.end.p0(i64 4, ptr %has_index_file) #17, !dbg !3007
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #17, !dbg !3007
  call void @llvm.lifetime.end.p0(i64 8, ptr %fn_idx) #17, !dbg !3007
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref) #17, !dbg !3007
  call void @llvm.lifetime.end.p0(i64 8, ptr %position) #17, !dbg !3007
  call void @llvm.lifetime.end.p0(i64 8, ptr %samples) #17, !dbg !3007
  call void @llvm.lifetime.end.p0(i64 8, ptr %tv) #17, !dbg !3007
  call void @llvm.lifetime.end.p0(i64 4, ptr %display_width) #17, !dbg !3007
  call void @llvm.lifetime.end.p0(i64 4, ptr %view_mode) #17, !dbg !3007
  %111 = load i32, ptr %retval, align 4, !dbg !3007
  ret i32 %111, !dbg !3007
}

; Function Attrs: nounwind
declare !dbg !3008 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !3014 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal void @error(ptr noundef %format, ...) #0 !dbg !3018 {
entry:
  %format.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !3022, metadata !DIExpression()), !dbg !3037
  %0 = load ptr, ptr %format.addr, align 8, !dbg !3038, !tbaa !588
  %tobool = icmp ne ptr %0, null, !dbg !3038
  br i1 %tobool, label %if.else, label %if.then, !dbg !3039

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !3040, !tbaa !588
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.41), !dbg !3042
  %2 = load ptr, ptr @stderr, align 8, !dbg !3043, !tbaa !588
  call void @sam_global_opt_help(ptr noundef %2, ptr noundef @.str.42), !dbg !3044
  br label %if.end, !dbg !3045

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #17, !dbg !3046
  tail call void @llvm.dbg.declare(metadata ptr %ap, metadata !3023, metadata !DIExpression()), !dbg !3047
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !3048
  call void @llvm.va_start.p0(ptr %arraydecay), !dbg !3048
  %3 = load ptr, ptr @stderr, align 8, !dbg !3049, !tbaa !588
  %4 = load ptr, ptr %format.addr, align 8, !dbg !3050, !tbaa !588
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !3051
  %call2 = call i32 @vfprintf(ptr noundef %3, ptr noundef %4, ptr noundef %arraydecay1), !dbg !3052
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !3053
  call void @llvm.va_end.p0(ptr %arraydecay3), !dbg !3053
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #17, !dbg !3054
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @exit(i32 noundef -1) #16, !dbg !3055
  unreachable, !dbg !3055
}

declare !dbg !3056 i32 @parse_sam_global_opt(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3060 ptr @curses_tv_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3063 ptr @text_tv_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3066 ptr @html_tv_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3067 ptr @sam_parse_region(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !3070 i32 @sam_hdr_nref(ptr noundef) #2

declare !dbg !3073 i32 @faidx_has_seq(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @kh_init_kh_rg() #9 !dbg !3076 {
entry:
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 40) #20, !dbg !3079
  ret ptr %call, !dbg !3079
}

declare !dbg !3080 i32 @sam_hdr_count_lines(ptr noundef, ptr noundef) #2

declare !dbg !3083 i32 @sam_hdr_find_tag_pos(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !3086 i32 @strcmp(ptr noundef, ptr noundef) #11

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_put_kh_rg(ptr noundef %h, ptr noundef %key, ptr noundef %ret) #9 !dbg !3089 {
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
  store ptr %h, ptr %h.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !3093, metadata !DIExpression()), !dbg !3104
  store ptr %key, ptr %key.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3094, metadata !DIExpression()), !dbg !3104
  store ptr %ret, ptr %ret.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !3095, metadata !DIExpression()), !dbg !3104
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #17, !dbg !3104
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !3096, metadata !DIExpression()), !dbg !3104
  %0 = load ptr, ptr %h.addr, align 8, !dbg !3105, !tbaa !588
  %n_occupied = getelementptr inbounds %struct.kh_kh_rg_s, ptr %0, i32 0, i32 2, !dbg !3105
  %1 = load i32, ptr %n_occupied, align 8, !dbg !3105, !tbaa !3107
  %2 = load ptr, ptr %h.addr, align 8, !dbg !3105, !tbaa !588
  %upper_bound = getelementptr inbounds %struct.kh_kh_rg_s, ptr %2, i32 0, i32 3, !dbg !3105
  %3 = load i32, ptr %upper_bound, align 4, !dbg !3105, !tbaa !3108
  %cmp = icmp uge i32 %1, %3, !dbg !3105
  br i1 %cmp, label %if.then, label %if.end14, !dbg !3104

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %h.addr, align 8, !dbg !3109, !tbaa !588
  %n_buckets = getelementptr inbounds %struct.kh_kh_rg_s, ptr %4, i32 0, i32 0, !dbg !3109
  %5 = load i32, ptr %n_buckets, align 8, !dbg !3109, !tbaa !2100
  %6 = load ptr, ptr %h.addr, align 8, !dbg !3109, !tbaa !588
  %size = getelementptr inbounds %struct.kh_kh_rg_s, ptr %6, i32 0, i32 1, !dbg !3109
  %7 = load i32, ptr %size, align 4, !dbg !3109, !tbaa !729
  %shl = shl i32 %7, 1, !dbg !3109
  %cmp1 = icmp ugt i32 %5, %shl, !dbg !3109
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !3112

if.then2:                                         ; preds = %if.then
  %8 = load ptr, ptr %h.addr, align 8, !dbg !3113, !tbaa !588
  %9 = load ptr, ptr %h.addr, align 8, !dbg !3113, !tbaa !588
  %n_buckets3 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %9, i32 0, i32 0, !dbg !3113
  %10 = load i32, ptr %n_buckets3, align 8, !dbg !3113, !tbaa !2100
  %sub = sub i32 %10, 1, !dbg !3113
  %call = call i32 @kh_resize_kh_rg(ptr noundef %8, i32 noundef %sub), !dbg !3113
  %cmp4 = icmp slt i32 %call, 0, !dbg !3113
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !3116

if.then5:                                         ; preds = %if.then2
  %11 = load ptr, ptr %ret.addr, align 8, !dbg !3117, !tbaa !588
  store i32 -1, ptr %11, align 4, !dbg !3117, !tbaa !974
  %12 = load ptr, ptr %h.addr, align 8, !dbg !3117, !tbaa !588
  %n_buckets6 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %12, i32 0, i32 0, !dbg !3117
  %13 = load i32, ptr %n_buckets6, align 8, !dbg !3117, !tbaa !2100
  store i32 %13, ptr %retval, align 4, !dbg !3117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3117

if.end:                                           ; preds = %if.then2
  br label %if.end13, !dbg !3116

if.else:                                          ; preds = %if.then
  %14 = load ptr, ptr %h.addr, align 8, !dbg !3119, !tbaa !588
  %15 = load ptr, ptr %h.addr, align 8, !dbg !3119, !tbaa !588
  %n_buckets7 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %15, i32 0, i32 0, !dbg !3119
  %16 = load i32, ptr %n_buckets7, align 8, !dbg !3119, !tbaa !2100
  %add = add i32 %16, 1, !dbg !3119
  %call8 = call i32 @kh_resize_kh_rg(ptr noundef %14, i32 noundef %add), !dbg !3119
  %cmp9 = icmp slt i32 %call8, 0, !dbg !3119
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !3109

if.then10:                                        ; preds = %if.else
  %17 = load ptr, ptr %ret.addr, align 8, !dbg !3121, !tbaa !588
  store i32 -1, ptr %17, align 4, !dbg !3121, !tbaa !974
  %18 = load ptr, ptr %h.addr, align 8, !dbg !3121, !tbaa !588
  %n_buckets11 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %18, i32 0, i32 0, !dbg !3121
  %19 = load i32, ptr %n_buckets11, align 8, !dbg !3121, !tbaa !2100
  store i32 %19, ptr %retval, align 4, !dbg !3121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3121

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  br label %if.end14, !dbg !3112

if.end14:                                         ; preds = %if.end13, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #17, !dbg !3123
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !3097, metadata !DIExpression()), !dbg !3123
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !3123
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3099, metadata !DIExpression()), !dbg !3123
  call void @llvm.lifetime.start.p0(i64 4, ptr %site) #17, !dbg !3123
  tail call void @llvm.dbg.declare(metadata ptr %site, metadata !3100, metadata !DIExpression()), !dbg !3123
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #17, !dbg !3123
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !3101, metadata !DIExpression()), !dbg !3123
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #17, !dbg !3123
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !3102, metadata !DIExpression()), !dbg !3123
  %20 = load ptr, ptr %h.addr, align 8, !dbg !3123, !tbaa !588
  %n_buckets15 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %20, i32 0, i32 0, !dbg !3123
  %21 = load i32, ptr %n_buckets15, align 8, !dbg !3123, !tbaa !2100
  %sub16 = sub i32 %21, 1, !dbg !3123
  store i32 %sub16, ptr %mask, align 4, !dbg !3123, !tbaa !974
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #17, !dbg !3123
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !3103, metadata !DIExpression()), !dbg !3123
  store i32 0, ptr %step, align 4, !dbg !3123, !tbaa !974
  %22 = load ptr, ptr %h.addr, align 8, !dbg !3123, !tbaa !588
  %n_buckets17 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %22, i32 0, i32 0, !dbg !3123
  %23 = load i32, ptr %n_buckets17, align 8, !dbg !3123, !tbaa !2100
  store i32 %23, ptr %site, align 4, !dbg !3123, !tbaa !974
  store i32 %23, ptr %x, align 4, !dbg !3123, !tbaa !974
  %24 = load ptr, ptr %key.addr, align 8, !dbg !3123, !tbaa !588
  %call18 = call i32 @__ac_X31_hash_string(ptr noundef %24), !dbg !3123
  store i32 %call18, ptr %k, align 4, !dbg !3123, !tbaa !974
  %25 = load i32, ptr %k, align 4, !dbg !3123, !tbaa !974
  %26 = load i32, ptr %mask, align 4, !dbg !3123, !tbaa !974
  %and = and i32 %25, %26, !dbg !3123
  store i32 %and, ptr %i, align 4, !dbg !3123, !tbaa !974
  %27 = load ptr, ptr %h.addr, align 8, !dbg !3124, !tbaa !588
  %flags = getelementptr inbounds %struct.kh_kh_rg_s, ptr %27, i32 0, i32 4, !dbg !3124
  %28 = load ptr, ptr %flags, align 8, !dbg !3124, !tbaa !2106
  %29 = load i32, ptr %i, align 4, !dbg !3124, !tbaa !974
  %shr = lshr i32 %29, 4, !dbg !3124
  %idxprom = zext i32 %shr to i64, !dbg !3124
  %arrayidx = getelementptr inbounds i32, ptr %28, i64 %idxprom, !dbg !3124
  %30 = load i32, ptr %arrayidx, align 4, !dbg !3124, !tbaa !974
  %31 = load i32, ptr %i, align 4, !dbg !3124, !tbaa !974
  %and19 = and i32 %31, 15, !dbg !3124
  %shl20 = shl i32 %and19, 1, !dbg !3124
  %shr21 = lshr i32 %30, %shl20, !dbg !3124
  %and22 = and i32 %shr21, 2, !dbg !3124
  %tobool = icmp ne i32 %and22, 0, !dbg !3124
  br i1 %tobool, label %if.then23, label %if.else24, !dbg !3123

if.then23:                                        ; preds = %if.end14
  %32 = load i32, ptr %i, align 4, !dbg !3124, !tbaa !974
  store i32 %32, ptr %x, align 4, !dbg !3124, !tbaa !974
  br label %if.end81, !dbg !3124

if.else24:                                        ; preds = %if.end14
  %33 = load i32, ptr %i, align 4, !dbg !3126, !tbaa !974
  store i32 %33, ptr %last, align 4, !dbg !3126, !tbaa !974
  br label %while.cond, !dbg !3126

while.cond:                                       ; preds = %if.end62, %if.else24
  %34 = load ptr, ptr %h.addr, align 8, !dbg !3126, !tbaa !588
  %flags25 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %34, i32 0, i32 4, !dbg !3126
  %35 = load ptr, ptr %flags25, align 8, !dbg !3126, !tbaa !2106
  %36 = load i32, ptr %i, align 4, !dbg !3126, !tbaa !974
  %shr26 = lshr i32 %36, 4, !dbg !3126
  %idxprom27 = zext i32 %shr26 to i64, !dbg !3126
  %arrayidx28 = getelementptr inbounds i32, ptr %35, i64 %idxprom27, !dbg !3126
  %37 = load i32, ptr %arrayidx28, align 4, !dbg !3126, !tbaa !974
  %38 = load i32, ptr %i, align 4, !dbg !3126, !tbaa !974
  %and29 = and i32 %38, 15, !dbg !3126
  %shl30 = shl i32 %and29, 1, !dbg !3126
  %shr31 = lshr i32 %37, %shl30, !dbg !3126
  %and32 = and i32 %shr31, 2, !dbg !3126
  %tobool33 = icmp ne i32 %and32, 0, !dbg !3126
  br i1 %tobool33, label %land.end, label %land.rhs, !dbg !3126

land.rhs:                                         ; preds = %while.cond
  %39 = load ptr, ptr %h.addr, align 8, !dbg !3126, !tbaa !588
  %flags34 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %39, i32 0, i32 4, !dbg !3126
  %40 = load ptr, ptr %flags34, align 8, !dbg !3126, !tbaa !2106
  %41 = load i32, ptr %i, align 4, !dbg !3126, !tbaa !974
  %shr35 = lshr i32 %41, 4, !dbg !3126
  %idxprom36 = zext i32 %shr35 to i64, !dbg !3126
  %arrayidx37 = getelementptr inbounds i32, ptr %40, i64 %idxprom36, !dbg !3126
  %42 = load i32, ptr %arrayidx37, align 4, !dbg !3126, !tbaa !974
  %43 = load i32, ptr %i, align 4, !dbg !3126, !tbaa !974
  %and38 = and i32 %43, 15, !dbg !3126
  %shl39 = shl i32 %and38, 1, !dbg !3126
  %shr40 = lshr i32 %42, %shl39, !dbg !3126
  %and41 = and i32 %shr40, 1, !dbg !3126
  %tobool42 = icmp ne i32 %and41, 0, !dbg !3126
  br i1 %tobool42, label %lor.end, label %lor.rhs, !dbg !3126

lor.rhs:                                          ; preds = %land.rhs
  %44 = load ptr, ptr %h.addr, align 8, !dbg !3126, !tbaa !588
  %keys = getelementptr inbounds %struct.kh_kh_rg_s, ptr %44, i32 0, i32 5, !dbg !3126
  %45 = load ptr, ptr %keys, align 8, !dbg !3126, !tbaa !2109
  %46 = load i32, ptr %i, align 4, !dbg !3126, !tbaa !974
  %idxprom43 = zext i32 %46 to i64, !dbg !3126
  %arrayidx44 = getelementptr inbounds ptr, ptr %45, i64 %idxprom43, !dbg !3126
  %47 = load ptr, ptr %arrayidx44, align 8, !dbg !3126, !tbaa !588
  %48 = load ptr, ptr %key.addr, align 8, !dbg !3126, !tbaa !588
  %call45 = call i32 @strcmp(ptr noundef %47, ptr noundef %48) #19, !dbg !3126
  %cmp46 = icmp eq i32 %call45, 0, !dbg !3126
  %lnot = xor i1 %cmp46, true, !dbg !3126
  br label %lor.end, !dbg !3126

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %49 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %50 = phi i1 [ false, %while.cond ], [ %49, %lor.end ], !dbg !3128
  br i1 %50, label %while.body, label %while.end, !dbg !3126

while.body:                                       ; preds = %land.end
  %51 = load ptr, ptr %h.addr, align 8, !dbg !3129, !tbaa !588
  %flags47 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %51, i32 0, i32 4, !dbg !3129
  %52 = load ptr, ptr %flags47, align 8, !dbg !3129, !tbaa !2106
  %53 = load i32, ptr %i, align 4, !dbg !3129, !tbaa !974
  %shr48 = lshr i32 %53, 4, !dbg !3129
  %idxprom49 = zext i32 %shr48 to i64, !dbg !3129
  %arrayidx50 = getelementptr inbounds i32, ptr %52, i64 %idxprom49, !dbg !3129
  %54 = load i32, ptr %arrayidx50, align 4, !dbg !3129, !tbaa !974
  %55 = load i32, ptr %i, align 4, !dbg !3129, !tbaa !974
  %and51 = and i32 %55, 15, !dbg !3129
  %shl52 = shl i32 %and51, 1, !dbg !3129
  %shr53 = lshr i32 %54, %shl52, !dbg !3129
  %and54 = and i32 %shr53, 1, !dbg !3129
  %tobool55 = icmp ne i32 %and54, 0, !dbg !3129
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !3132

if.then56:                                        ; preds = %while.body
  %56 = load i32, ptr %i, align 4, !dbg !3129, !tbaa !974
  store i32 %56, ptr %site, align 4, !dbg !3129, !tbaa !974
  br label %if.end57, !dbg !3129

if.end57:                                         ; preds = %if.then56, %while.body
  %57 = load i32, ptr %i, align 4, !dbg !3132, !tbaa !974
  %58 = load i32, ptr %step, align 4, !dbg !3132, !tbaa !974
  %inc = add i32 %58, 1, !dbg !3132
  store i32 %inc, ptr %step, align 4, !dbg !3132, !tbaa !974
  %add58 = add i32 %57, %inc, !dbg !3132
  %59 = load i32, ptr %mask, align 4, !dbg !3132, !tbaa !974
  %and59 = and i32 %add58, %59, !dbg !3132
  store i32 %and59, ptr %i, align 4, !dbg !3132, !tbaa !974
  %60 = load i32, ptr %i, align 4, !dbg !3133, !tbaa !974
  %61 = load i32, ptr %last, align 4, !dbg !3133, !tbaa !974
  %cmp60 = icmp eq i32 %60, %61, !dbg !3133
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3132

if.then61:                                        ; preds = %if.end57
  %62 = load i32, ptr %site, align 4, !dbg !3135, !tbaa !974
  store i32 %62, ptr %x, align 4, !dbg !3135, !tbaa !974
  br label %while.end, !dbg !3135

if.end62:                                         ; preds = %if.end57
  br label %while.cond, !dbg !3126, !llvm.loop !3137

while.end:                                        ; preds = %if.then61, %land.end
  %63 = load i32, ptr %x, align 4, !dbg !3138, !tbaa !974
  %64 = load ptr, ptr %h.addr, align 8, !dbg !3138, !tbaa !588
  %n_buckets63 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %64, i32 0, i32 0, !dbg !3138
  %65 = load i32, ptr %n_buckets63, align 8, !dbg !3138, !tbaa !2100
  %cmp64 = icmp eq i32 %63, %65, !dbg !3138
  br i1 %cmp64, label %if.then65, label %if.end80, !dbg !3126

if.then65:                                        ; preds = %while.end
  %66 = load ptr, ptr %h.addr, align 8, !dbg !3140, !tbaa !588
  %flags66 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %66, i32 0, i32 4, !dbg !3140
  %67 = load ptr, ptr %flags66, align 8, !dbg !3140, !tbaa !2106
  %68 = load i32, ptr %i, align 4, !dbg !3140, !tbaa !974
  %shr67 = lshr i32 %68, 4, !dbg !3140
  %idxprom68 = zext i32 %shr67 to i64, !dbg !3140
  %arrayidx69 = getelementptr inbounds i32, ptr %67, i64 %idxprom68, !dbg !3140
  %69 = load i32, ptr %arrayidx69, align 4, !dbg !3140, !tbaa !974
  %70 = load i32, ptr %i, align 4, !dbg !3140, !tbaa !974
  %and70 = and i32 %70, 15, !dbg !3140
  %shl71 = shl i32 %and70, 1, !dbg !3140
  %shr72 = lshr i32 %69, %shl71, !dbg !3140
  %and73 = and i32 %shr72, 2, !dbg !3140
  %tobool74 = icmp ne i32 %and73, 0, !dbg !3140
  br i1 %tobool74, label %land.lhs.true, label %if.else78, !dbg !3140

land.lhs.true:                                    ; preds = %if.then65
  %71 = load i32, ptr %site, align 4, !dbg !3140, !tbaa !974
  %72 = load ptr, ptr %h.addr, align 8, !dbg !3140, !tbaa !588
  %n_buckets75 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %72, i32 0, i32 0, !dbg !3140
  %73 = load i32, ptr %n_buckets75, align 8, !dbg !3140, !tbaa !2100
  %cmp76 = icmp ne i32 %71, %73, !dbg !3140
  br i1 %cmp76, label %if.then77, label %if.else78, !dbg !3143

if.then77:                                        ; preds = %land.lhs.true
  %74 = load i32, ptr %site, align 4, !dbg !3140, !tbaa !974
  store i32 %74, ptr %x, align 4, !dbg !3140, !tbaa !974
  br label %if.end79, !dbg !3140

if.else78:                                        ; preds = %land.lhs.true, %if.then65
  %75 = load i32, ptr %i, align 4, !dbg !3140, !tbaa !974
  store i32 %75, ptr %x, align 4, !dbg !3140, !tbaa !974
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %if.then77
  br label %if.end80, !dbg !3143

if.end80:                                         ; preds = %if.end79, %while.end
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then23
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #17, !dbg !3104
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #17, !dbg !3104
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #17, !dbg !3104
  call void @llvm.lifetime.end.p0(i64 4, ptr %site) #17, !dbg !3104
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !3104
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #17, !dbg !3104
  %76 = load ptr, ptr %h.addr, align 8, !dbg !3144, !tbaa !588
  %flags82 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %76, i32 0, i32 4, !dbg !3144
  %77 = load ptr, ptr %flags82, align 8, !dbg !3144, !tbaa !2106
  %78 = load i32, ptr %x, align 4, !dbg !3144, !tbaa !974
  %shr83 = lshr i32 %78, 4, !dbg !3144
  %idxprom84 = zext i32 %shr83 to i64, !dbg !3144
  %arrayidx85 = getelementptr inbounds i32, ptr %77, i64 %idxprom84, !dbg !3144
  %79 = load i32, ptr %arrayidx85, align 4, !dbg !3144, !tbaa !974
  %80 = load i32, ptr %x, align 4, !dbg !3144, !tbaa !974
  %and86 = and i32 %80, 15, !dbg !3144
  %shl87 = shl i32 %and86, 1, !dbg !3144
  %shr88 = lshr i32 %79, %shl87, !dbg !3144
  %and89 = and i32 %shr88, 2, !dbg !3144
  %tobool90 = icmp ne i32 %and89, 0, !dbg !3144
  br i1 %tobool90, label %if.then91, label %if.else108, !dbg !3104

if.then91:                                        ; preds = %if.end81
  %81 = load ptr, ptr %key.addr, align 8, !dbg !3146, !tbaa !588
  %82 = load ptr, ptr %h.addr, align 8, !dbg !3146, !tbaa !588
  %keys92 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %82, i32 0, i32 5, !dbg !3146
  %83 = load ptr, ptr %keys92, align 8, !dbg !3146, !tbaa !2109
  %84 = load i32, ptr %x, align 4, !dbg !3146, !tbaa !974
  %idxprom93 = zext i32 %84 to i64, !dbg !3146
  %arrayidx94 = getelementptr inbounds ptr, ptr %83, i64 %idxprom93, !dbg !3146
  store ptr %81, ptr %arrayidx94, align 8, !dbg !3146, !tbaa !588
  %85 = load i32, ptr %x, align 4, !dbg !3146, !tbaa !974
  %and95 = and i32 %85, 15, !dbg !3146
  %shl96 = shl i32 %and95, 1, !dbg !3146
  %sh_prom = zext i32 %shl96 to i64, !dbg !3146
  %shl97 = shl i64 3, %sh_prom, !dbg !3146
  %not = xor i64 %shl97, -1, !dbg !3146
  %86 = load ptr, ptr %h.addr, align 8, !dbg !3146, !tbaa !588
  %flags98 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %86, i32 0, i32 4, !dbg !3146
  %87 = load ptr, ptr %flags98, align 8, !dbg !3146, !tbaa !2106
  %88 = load i32, ptr %x, align 4, !dbg !3146, !tbaa !974
  %shr99 = lshr i32 %88, 4, !dbg !3146
  %idxprom100 = zext i32 %shr99 to i64, !dbg !3146
  %arrayidx101 = getelementptr inbounds i32, ptr %87, i64 %idxprom100, !dbg !3146
  %89 = load i32, ptr %arrayidx101, align 4, !dbg !3146, !tbaa !974
  %conv = zext i32 %89 to i64, !dbg !3146
  %and102 = and i64 %conv, %not, !dbg !3146
  %conv103 = trunc i64 %and102 to i32, !dbg !3146
  store i32 %conv103, ptr %arrayidx101, align 4, !dbg !3146, !tbaa !974
  %90 = load ptr, ptr %h.addr, align 8, !dbg !3146, !tbaa !588
  %size104 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %90, i32 0, i32 1, !dbg !3146
  %91 = load i32, ptr %size104, align 4, !dbg !3146, !tbaa !729
  %inc105 = add i32 %91, 1, !dbg !3146
  store i32 %inc105, ptr %size104, align 4, !dbg !3146, !tbaa !729
  %92 = load ptr, ptr %h.addr, align 8, !dbg !3146, !tbaa !588
  %n_occupied106 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %92, i32 0, i32 2, !dbg !3146
  %93 = load i32, ptr %n_occupied106, align 8, !dbg !3146, !tbaa !3107
  %inc107 = add i32 %93, 1, !dbg !3146
  store i32 %inc107, ptr %n_occupied106, align 8, !dbg !3146, !tbaa !3107
  %94 = load ptr, ptr %ret.addr, align 8, !dbg !3146, !tbaa !588
  store i32 1, ptr %94, align 4, !dbg !3146, !tbaa !974
  br label %if.end138, !dbg !3146

if.else108:                                       ; preds = %if.end81
  %95 = load ptr, ptr %h.addr, align 8, !dbg !3148, !tbaa !588
  %flags109 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %95, i32 0, i32 4, !dbg !3148
  %96 = load ptr, ptr %flags109, align 8, !dbg !3148, !tbaa !2106
  %97 = load i32, ptr %x, align 4, !dbg !3148, !tbaa !974
  %shr110 = lshr i32 %97, 4, !dbg !3148
  %idxprom111 = zext i32 %shr110 to i64, !dbg !3148
  %arrayidx112 = getelementptr inbounds i32, ptr %96, i64 %idxprom111, !dbg !3148
  %98 = load i32, ptr %arrayidx112, align 4, !dbg !3148, !tbaa !974
  %99 = load i32, ptr %x, align 4, !dbg !3148, !tbaa !974
  %and113 = and i32 %99, 15, !dbg !3148
  %shl114 = shl i32 %and113, 1, !dbg !3148
  %shr115 = lshr i32 %98, %shl114, !dbg !3148
  %and116 = and i32 %shr115, 1, !dbg !3148
  %tobool117 = icmp ne i32 %and116, 0, !dbg !3148
  br i1 %tobool117, label %if.then118, label %if.else136, !dbg !3144

if.then118:                                       ; preds = %if.else108
  %100 = load ptr, ptr %key.addr, align 8, !dbg !3150, !tbaa !588
  %101 = load ptr, ptr %h.addr, align 8, !dbg !3150, !tbaa !588
  %keys119 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %101, i32 0, i32 5, !dbg !3150
  %102 = load ptr, ptr %keys119, align 8, !dbg !3150, !tbaa !2109
  %103 = load i32, ptr %x, align 4, !dbg !3150, !tbaa !974
  %idxprom120 = zext i32 %103 to i64, !dbg !3150
  %arrayidx121 = getelementptr inbounds ptr, ptr %102, i64 %idxprom120, !dbg !3150
  store ptr %100, ptr %arrayidx121, align 8, !dbg !3150, !tbaa !588
  %104 = load i32, ptr %x, align 4, !dbg !3150, !tbaa !974
  %and122 = and i32 %104, 15, !dbg !3150
  %shl123 = shl i32 %and122, 1, !dbg !3150
  %sh_prom124 = zext i32 %shl123 to i64, !dbg !3150
  %shl125 = shl i64 3, %sh_prom124, !dbg !3150
  %not126 = xor i64 %shl125, -1, !dbg !3150
  %105 = load ptr, ptr %h.addr, align 8, !dbg !3150, !tbaa !588
  %flags127 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %105, i32 0, i32 4, !dbg !3150
  %106 = load ptr, ptr %flags127, align 8, !dbg !3150, !tbaa !2106
  %107 = load i32, ptr %x, align 4, !dbg !3150, !tbaa !974
  %shr128 = lshr i32 %107, 4, !dbg !3150
  %idxprom129 = zext i32 %shr128 to i64, !dbg !3150
  %arrayidx130 = getelementptr inbounds i32, ptr %106, i64 %idxprom129, !dbg !3150
  %108 = load i32, ptr %arrayidx130, align 4, !dbg !3150, !tbaa !974
  %conv131 = zext i32 %108 to i64, !dbg !3150
  %and132 = and i64 %conv131, %not126, !dbg !3150
  %conv133 = trunc i64 %and132 to i32, !dbg !3150
  store i32 %conv133, ptr %arrayidx130, align 4, !dbg !3150, !tbaa !974
  %109 = load ptr, ptr %h.addr, align 8, !dbg !3150, !tbaa !588
  %size134 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %109, i32 0, i32 1, !dbg !3150
  %110 = load i32, ptr %size134, align 4, !dbg !3150, !tbaa !729
  %inc135 = add i32 %110, 1, !dbg !3150
  store i32 %inc135, ptr %size134, align 4, !dbg !3150, !tbaa !729
  %111 = load ptr, ptr %ret.addr, align 8, !dbg !3150, !tbaa !588
  store i32 2, ptr %111, align 4, !dbg !3150, !tbaa !974
  br label %if.end137, !dbg !3150

if.else136:                                       ; preds = %if.else108
  %112 = load ptr, ptr %ret.addr, align 8, !dbg !3148, !tbaa !588
  store i32 0, ptr %112, align 4, !dbg !3148, !tbaa !974
  br label %if.end137

if.end137:                                        ; preds = %if.else136, %if.then118
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.then91
  %113 = load i32, ptr %x, align 4, !dbg !3104, !tbaa !974
  store i32 %113, ptr %retval, align 4, !dbg !3104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3104

cleanup:                                          ; preds = %if.end138, %if.then10, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #17, !dbg !3104
  %114 = load i32, ptr %retval, align 4, !dbg !3104
  ret i32 %114, !dbg !3104
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ks_release(ptr noundef %s) #9 !dbg !3152 {
entry:
  %s.addr = alloca ptr, align 8
  %ss = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3156, metadata !DIExpression()), !dbg !3158
  call void @llvm.lifetime.start.p0(i64 8, ptr %ss) #17, !dbg !3159
  tail call void @llvm.dbg.declare(metadata ptr %ss, metadata !3157, metadata !DIExpression()), !dbg !3160
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3161, !tbaa !588
  %s1 = getelementptr inbounds %struct.kstring_t, ptr %0, i32 0, i32 2, !dbg !3162
  %1 = load ptr, ptr %s1, align 8, !dbg !3162, !tbaa !1595
  store ptr %1, ptr %ss, align 8, !dbg !3160, !tbaa !588
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3163, !tbaa !588
  %m = getelementptr inbounds %struct.kstring_t, ptr %2, i32 0, i32 1, !dbg !3164
  store i64 0, ptr %m, align 8, !dbg !3165, !tbaa !3166
  %3 = load ptr, ptr %s.addr, align 8, !dbg !3167, !tbaa !588
  %l = getelementptr inbounds %struct.kstring_t, ptr %3, i32 0, i32 0, !dbg !3168
  store i64 0, ptr %l, align 8, !dbg !3169, !tbaa !3170
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3171, !tbaa !588
  %s2 = getelementptr inbounds %struct.kstring_t, ptr %4, i32 0, i32 2, !dbg !3172
  store ptr null, ptr %s2, align 8, !dbg !3173, !tbaa !1595
  %5 = load ptr, ptr %ss, align 8, !dbg !3174, !tbaa !588
  call void @llvm.lifetime.end.p0(i64 8, ptr %ss) #17, !dbg !3175
  ret ptr %5, !dbg !3176
}

declare !dbg !3177 void @perror(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_resize_kh_rg(ptr noundef %h, i32 noundef %new_n_buckets) #9 !dbg !3180 {
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
  store ptr %h, ptr %h.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !3184, metadata !DIExpression()), !dbg !3218
  store i32 %new_n_buckets, ptr %new_n_buckets.addr, align 4, !tbaa !974
  tail call void @llvm.dbg.declare(metadata ptr %new_n_buckets.addr, metadata !3185, metadata !DIExpression()), !dbg !3218
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_flags) #17, !dbg !3218
  tail call void @llvm.dbg.declare(metadata ptr %new_flags, metadata !3186, metadata !DIExpression()), !dbg !3218
  store ptr null, ptr %new_flags, align 8, !dbg !3218, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #17, !dbg !3218
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !3187, metadata !DIExpression()), !dbg !3218
  store i32 1, ptr %j, align 4, !dbg !3218, !tbaa !974
  %0 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %cmp = icmp ugt i32 %0, 0, !dbg !3219
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3219

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %dec = add i32 %1, -1, !dbg !3219
  store i32 %dec, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %2 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %shr = lshr i32 %2, 0, !dbg !3219
  %3 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %or = or i32 %3, %shr, !dbg !3219
  store i32 %or, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %4 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %shr1 = lshr i32 %4, 1, !dbg !3219
  %5 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %or2 = or i32 %5, %shr1, !dbg !3219
  store i32 %or2, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %6 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %shr3 = lshr i32 %6, 2, !dbg !3219
  %7 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %or4 = or i32 %7, %shr3, !dbg !3219
  store i32 %or4, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %8 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %shr5 = lshr i32 %8, 4, !dbg !3219
  %9 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %or6 = or i32 %9, %shr5, !dbg !3219
  store i32 %or6, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %10 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %shr7 = lshr i32 %10, 8, !dbg !3219
  %11 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %or8 = or i32 %11, %shr7, !dbg !3219
  store i32 %or8, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %12 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %shr9 = lshr i32 %12, 16, !dbg !3219
  %13 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %or10 = or i32 %13, %shr9, !dbg !3219
  store i32 %or10, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %14 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %15 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %mul = mul i32 %15, 0, !dbg !3219
  %add = add i32 %mul, 1, !dbg !3219
  %sub = sub i32 0, %add, !dbg !3219
  %cmp11 = icmp ugt i32 %sub, 0, !dbg !3219
  %lnot = xor i1 %cmp11, true, !dbg !3219
  %lnot.ext = zext i1 %lnot to i32, !dbg !3219
  %conv = sext i32 %lnot.ext to i64, !dbg !3219
  %sub12 = sub i64 31, %conv, !dbg !3219
  %sh_prom = trunc i64 %sub12 to i32, !dbg !3219
  %shr13 = lshr i32 %14, %sh_prom, !dbg !3219
  %and = and i32 %shr13, 1, !dbg !3219
  %tobool = icmp ne i32 %and, 0, !dbg !3219
  %lnot14 = xor i1 %tobool, true, !dbg !3219
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !3219
  %16 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %add16 = add i32 %16, %lnot.ext15, !dbg !3219
  store i32 %add16, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  %17 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3219, !tbaa !974
  br label %cond.end, !dbg !3219

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3219

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 0, %cond.false ], !dbg !3219
  %18 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3220, !tbaa !974
  %cmp17 = icmp ult i32 %18, 4, !dbg !3220
  br i1 %cmp17, label %if.then, label %if.end, !dbg !3219

if.then:                                          ; preds = %cond.end
  store i32 4, ptr %new_n_buckets.addr, align 4, !dbg !3220, !tbaa !974
  br label %if.end, !dbg !3220

if.end:                                           ; preds = %if.then, %cond.end
  %19 = load ptr, ptr %h.addr, align 8, !dbg !3222, !tbaa !588
  %size = getelementptr inbounds %struct.kh_kh_rg_s, ptr %19, i32 0, i32 1, !dbg !3222
  %20 = load i32, ptr %size, align 4, !dbg !3222, !tbaa !729
  %21 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3222, !tbaa !974
  %conv19 = uitofp i32 %21 to double, !dbg !3222
  %22 = call double @llvm.fmuladd.f64(double %conv19, double 7.700000e-01, double 5.000000e-01), !dbg !3222
  %conv21 = fptoui double %22 to i32, !dbg !3222
  %cmp22 = icmp uge i32 %20, %conv21, !dbg !3222
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !3219

if.then24:                                        ; preds = %if.end
  store i32 0, ptr %j, align 4, !dbg !3222, !tbaa !974
  br label %if.end67, !dbg !3222

if.else:                                          ; preds = %if.end
  %23 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3223, !tbaa !974
  %cmp25 = icmp ult i32 %23, 16, !dbg !3223
  br i1 %cmp25, label %cond.true27, label %cond.false28, !dbg !3223

cond.true27:                                      ; preds = %if.else
  br label %cond.end30, !dbg !3223

cond.false28:                                     ; preds = %if.else
  %24 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3223, !tbaa !974
  %shr29 = lshr i32 %24, 4, !dbg !3223
  br label %cond.end30, !dbg !3223

cond.end30:                                       ; preds = %cond.false28, %cond.true27
  %cond31 = phi i32 [ 1, %cond.true27 ], [ %shr29, %cond.false28 ], !dbg !3223
  %conv32 = zext i32 %cond31 to i64, !dbg !3223
  %mul33 = mul i64 %conv32, 4, !dbg !3223
  %call = call noalias ptr @malloc(i64 noundef %mul33) #21, !dbg !3223
  store ptr %call, ptr %new_flags, align 8, !dbg !3223, !tbaa !588
  %25 = load ptr, ptr %new_flags, align 8, !dbg !3224, !tbaa !588
  %tobool34 = icmp ne ptr %25, null, !dbg !3224
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !3223

if.then35:                                        ; preds = %cond.end30
  store i32 -1, ptr %retval, align 4, !dbg !3224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !3224

if.end36:                                         ; preds = %cond.end30
  %26 = load ptr, ptr %new_flags, align 8, !dbg !3223, !tbaa !588
  %27 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3223, !tbaa !974
  %cmp37 = icmp ult i32 %27, 16, !dbg !3223
  br i1 %cmp37, label %cond.true39, label %cond.false40, !dbg !3223

cond.true39:                                      ; preds = %if.end36
  br label %cond.end42, !dbg !3223

cond.false40:                                     ; preds = %if.end36
  %28 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3223, !tbaa !974
  %shr41 = lshr i32 %28, 4, !dbg !3223
  br label %cond.end42, !dbg !3223

cond.end42:                                       ; preds = %cond.false40, %cond.true39
  %cond43 = phi i32 [ 1, %cond.true39 ], [ %shr41, %cond.false40 ], !dbg !3223
  %conv44 = zext i32 %cond43 to i64, !dbg !3223
  %mul45 = mul i64 %conv44, 4, !dbg !3223
  call void @llvm.memset.p0.i64(ptr align 4 %26, i8 -86, i64 %mul45, i1 false), !dbg !3223
  %29 = load ptr, ptr %h.addr, align 8, !dbg !3226, !tbaa !588
  %n_buckets = getelementptr inbounds %struct.kh_kh_rg_s, ptr %29, i32 0, i32 0, !dbg !3226
  %30 = load i32, ptr %n_buckets, align 8, !dbg !3226, !tbaa !2100
  %31 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3226, !tbaa !974
  %cmp46 = icmp ult i32 %30, %31, !dbg !3226
  br i1 %cmp46, label %if.then48, label %if.end66, !dbg !3223

if.then48:                                        ; preds = %cond.end42
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_keys) #17, !dbg !3227
  tail call void @llvm.dbg.declare(metadata ptr %new_keys, metadata !3188, metadata !DIExpression()), !dbg !3227
  %32 = load ptr, ptr %h.addr, align 8, !dbg !3227, !tbaa !588
  %keys = getelementptr inbounds %struct.kh_kh_rg_s, ptr %32, i32 0, i32 5, !dbg !3227
  %33 = load ptr, ptr %keys, align 8, !dbg !3227, !tbaa !2109
  %34 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3227, !tbaa !974
  %conv49 = zext i32 %34 to i64, !dbg !3227
  %mul50 = mul i64 %conv49, 8, !dbg !3227
  %call51 = call ptr @realloc(ptr noundef %33, i64 noundef %mul50) #22, !dbg !3227
  store ptr %call51, ptr %new_keys, align 8, !dbg !3227, !tbaa !588
  %35 = load ptr, ptr %new_keys, align 8, !dbg !3228, !tbaa !588
  %tobool52 = icmp ne ptr %35, null, !dbg !3228
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !3227

if.then53:                                        ; preds = %if.then48
  %36 = load ptr, ptr %new_flags, align 8, !dbg !3230, !tbaa !588
  call void @free(ptr noundef %36) #17, !dbg !3230
  store i32 -1, ptr %retval, align 4, !dbg !3230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !3230

if.end54:                                         ; preds = %if.then48
  %37 = load ptr, ptr %new_keys, align 8, !dbg !3227, !tbaa !588
  %38 = load ptr, ptr %h.addr, align 8, !dbg !3227, !tbaa !588
  %keys55 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %38, i32 0, i32 5, !dbg !3227
  store ptr %37, ptr %keys55, align 8, !dbg !3227, !tbaa !2109
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_vals) #17, !dbg !3232
  tail call void @llvm.dbg.declare(metadata ptr %new_vals, metadata !3194, metadata !DIExpression()), !dbg !3232
  %39 = load ptr, ptr %h.addr, align 8, !dbg !3232, !tbaa !588
  %vals = getelementptr inbounds %struct.kh_kh_rg_s, ptr %39, i32 0, i32 6, !dbg !3232
  %40 = load ptr, ptr %vals, align 8, !dbg !3232, !tbaa !3233
  %41 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3232, !tbaa !974
  %conv56 = zext i32 %41 to i64, !dbg !3232
  %mul57 = mul i64 %conv56, 8, !dbg !3232
  %call58 = call ptr @realloc(ptr noundef %40, i64 noundef %mul57) #22, !dbg !3232
  store ptr %call58, ptr %new_vals, align 8, !dbg !3232, !tbaa !588
  %42 = load ptr, ptr %new_vals, align 8, !dbg !3234, !tbaa !588
  %tobool59 = icmp ne ptr %42, null, !dbg !3234
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !3232

if.then60:                                        ; preds = %if.end54
  %43 = load ptr, ptr %new_flags, align 8, !dbg !3236, !tbaa !588
  call void @free(ptr noundef %43) #17, !dbg !3236
  store i32 -1, ptr %retval, align 4, !dbg !3236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3236

if.end61:                                         ; preds = %if.end54
  %44 = load ptr, ptr %new_vals, align 8, !dbg !3232, !tbaa !588
  %45 = load ptr, ptr %h.addr, align 8, !dbg !3232, !tbaa !588
  %vals62 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %45, i32 0, i32 6, !dbg !3232
  store ptr %44, ptr %vals62, align 8, !dbg !3232, !tbaa !3233
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3238
  br label %cleanup, !dbg !3238

cleanup:                                          ; preds = %if.end61, %if.then60
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_vals) #17, !dbg !3238
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup63 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3226
  br label %cleanup63, !dbg !3226

cleanup63:                                        ; preds = %cleanup.cont, %cleanup, %if.then53
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_keys) #17, !dbg !3226
  %cleanup.dest64 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest64, label %cleanup202 [
    i32 0, label %cleanup.cont65
  ]

cleanup.cont65:                                   ; preds = %cleanup63
  br label %if.end66, !dbg !3227

if.end66:                                         ; preds = %cleanup.cont65, %cond.end42
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then24
  %46 = load i32, ptr %j, align 4, !dbg !3239, !tbaa !974
  %tobool68 = icmp ne i32 %46, 0, !dbg !3239
  br i1 %tobool68, label %if.then69, label %if.end201, !dbg !3218

if.then69:                                        ; preds = %if.end67
  store i32 0, ptr %j, align 4, !dbg !3240, !tbaa !974
  br label %for.cond, !dbg !3240

for.cond:                                         ; preds = %for.inc, %if.then69
  %47 = load i32, ptr %j, align 4, !dbg !3241, !tbaa !974
  %48 = load ptr, ptr %h.addr, align 8, !dbg !3241, !tbaa !588
  %n_buckets70 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %48, i32 0, i32 0, !dbg !3241
  %49 = load i32, ptr %n_buckets70, align 8, !dbg !3241, !tbaa !2100
  %cmp71 = icmp ne i32 %47, %49, !dbg !3241
  br i1 %cmp71, label %for.body, label %for.end, !dbg !3240

for.body:                                         ; preds = %for.cond
  %50 = load ptr, ptr %h.addr, align 8, !dbg !3242, !tbaa !588
  %flags = getelementptr inbounds %struct.kh_kh_rg_s, ptr %50, i32 0, i32 4, !dbg !3242
  %51 = load ptr, ptr %flags, align 8, !dbg !3242, !tbaa !2106
  %52 = load i32, ptr %j, align 4, !dbg !3242, !tbaa !974
  %shr73 = lshr i32 %52, 4, !dbg !3242
  %idxprom = zext i32 %shr73 to i64, !dbg !3242
  %arrayidx = getelementptr inbounds i32, ptr %51, i64 %idxprom, !dbg !3242
  %53 = load i32, ptr %arrayidx, align 4, !dbg !3242, !tbaa !974
  %54 = load i32, ptr %j, align 4, !dbg !3242, !tbaa !974
  %and74 = and i32 %54, 15, !dbg !3242
  %shl = shl i32 %and74, 1, !dbg !3242
  %shr75 = lshr i32 %53, %shl, !dbg !3242
  %and76 = and i32 %shr75, 3, !dbg !3242
  %cmp77 = icmp eq i32 %and76, 0, !dbg !3242
  br i1 %cmp77, label %if.then79, label %if.end176, !dbg !3243

if.then79:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #17, !dbg !3244
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !3197, metadata !DIExpression()), !dbg !3244
  %55 = load ptr, ptr %h.addr, align 8, !dbg !3244, !tbaa !588
  %keys80 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %55, i32 0, i32 5, !dbg !3244
  %56 = load ptr, ptr %keys80, align 8, !dbg !3244, !tbaa !2109
  %57 = load i32, ptr %j, align 4, !dbg !3244, !tbaa !974
  %idxprom81 = zext i32 %57 to i64, !dbg !3244
  %arrayidx82 = getelementptr inbounds ptr, ptr %56, i64 %idxprom81, !dbg !3244
  %58 = load ptr, ptr %arrayidx82, align 8, !dbg !3244, !tbaa !588
  store ptr %58, ptr %key, align 8, !dbg !3244, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !3244
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !3205, metadata !DIExpression()), !dbg !3244
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_mask) #17, !dbg !3244
  tail call void @llvm.dbg.declare(metadata ptr %new_mask, metadata !3206, metadata !DIExpression()), !dbg !3244
  %59 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3244, !tbaa !974
  %sub83 = sub i32 %59, 1, !dbg !3244
  store i32 %sub83, ptr %new_mask, align 4, !dbg !3244, !tbaa !974
  %60 = load ptr, ptr %h.addr, align 8, !dbg !3245, !tbaa !588
  %vals84 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %60, i32 0, i32 6, !dbg !3245
  %61 = load ptr, ptr %vals84, align 8, !dbg !3245, !tbaa !3233
  %62 = load i32, ptr %j, align 4, !dbg !3245, !tbaa !974
  %idxprom85 = zext i32 %62 to i64, !dbg !3245
  %arrayidx86 = getelementptr inbounds ptr, ptr %61, i64 %idxprom85, !dbg !3245
  %63 = load ptr, ptr %arrayidx86, align 8, !dbg !3245, !tbaa !588
  store ptr %63, ptr %val, align 8, !dbg !3245, !tbaa !588
  %64 = load i32, ptr %j, align 4, !dbg !3244, !tbaa !974
  %and87 = and i32 %64, 15, !dbg !3244
  %shl88 = shl i32 %and87, 1, !dbg !3244
  %sh_prom89 = zext i32 %shl88 to i64, !dbg !3244
  %shl90 = shl i64 1, %sh_prom89, !dbg !3244
  %65 = load ptr, ptr %h.addr, align 8, !dbg !3244, !tbaa !588
  %flags91 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %65, i32 0, i32 4, !dbg !3244
  %66 = load ptr, ptr %flags91, align 8, !dbg !3244, !tbaa !2106
  %67 = load i32, ptr %j, align 4, !dbg !3244, !tbaa !974
  %shr92 = lshr i32 %67, 4, !dbg !3244
  %idxprom93 = zext i32 %shr92 to i64, !dbg !3244
  %arrayidx94 = getelementptr inbounds i32, ptr %66, i64 %idxprom93, !dbg !3244
  %68 = load i32, ptr %arrayidx94, align 4, !dbg !3244, !tbaa !974
  %conv95 = zext i32 %68 to i64, !dbg !3244
  %or96 = or i64 %conv95, %shl90, !dbg !3244
  %conv97 = trunc i64 %or96 to i32, !dbg !3244
  store i32 %conv97, ptr %arrayidx94, align 4, !dbg !3244, !tbaa !974
  br label %while.cond, !dbg !3244

while.cond:                                       ; preds = %cleanup.cont174, %if.then79
  br label %while.body, !dbg !3244

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #17, !dbg !3247
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !3207, metadata !DIExpression()), !dbg !3247
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !3247
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3209, metadata !DIExpression()), !dbg !3247
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #17, !dbg !3247
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !3210, metadata !DIExpression()), !dbg !3247
  store i32 0, ptr %step, align 4, !dbg !3247, !tbaa !974
  %69 = load ptr, ptr %key, align 8, !dbg !3247, !tbaa !588
  %call98 = call i32 @__ac_X31_hash_string(ptr noundef %69), !dbg !3247
  store i32 %call98, ptr %k, align 4, !dbg !3247, !tbaa !974
  %70 = load i32, ptr %k, align 4, !dbg !3247, !tbaa !974
  %71 = load i32, ptr %new_mask, align 4, !dbg !3247, !tbaa !974
  %and99 = and i32 %70, %71, !dbg !3247
  store i32 %and99, ptr %i, align 4, !dbg !3247, !tbaa !974
  br label %while.cond100, !dbg !3247

while.cond100:                                    ; preds = %while.body111, %while.body
  %72 = load ptr, ptr %new_flags, align 8, !dbg !3247, !tbaa !588
  %73 = load i32, ptr %i, align 4, !dbg !3247, !tbaa !974
  %shr101 = lshr i32 %73, 4, !dbg !3247
  %idxprom102 = zext i32 %shr101 to i64, !dbg !3247
  %arrayidx103 = getelementptr inbounds i32, ptr %72, i64 %idxprom102, !dbg !3247
  %74 = load i32, ptr %arrayidx103, align 4, !dbg !3247, !tbaa !974
  %75 = load i32, ptr %i, align 4, !dbg !3247, !tbaa !974
  %and104 = and i32 %75, 15, !dbg !3247
  %shl105 = shl i32 %and104, 1, !dbg !3247
  %shr106 = lshr i32 %74, %shl105, !dbg !3247
  %and107 = and i32 %shr106, 2, !dbg !3247
  %tobool108 = icmp ne i32 %and107, 0, !dbg !3247
  %lnot109 = xor i1 %tobool108, true, !dbg !3247
  br i1 %lnot109, label %while.body111, label %while.end, !dbg !3247

while.body111:                                    ; preds = %while.cond100
  %76 = load i32, ptr %i, align 4, !dbg !3247, !tbaa !974
  %77 = load i32, ptr %step, align 4, !dbg !3247, !tbaa !974
  %inc = add i32 %77, 1, !dbg !3247
  store i32 %inc, ptr %step, align 4, !dbg !3247, !tbaa !974
  %add112 = add i32 %76, %inc, !dbg !3247
  %78 = load i32, ptr %new_mask, align 4, !dbg !3247, !tbaa !974
  %and113 = and i32 %add112, %78, !dbg !3247
  store i32 %and113, ptr %i, align 4, !dbg !3247, !tbaa !974
  br label %while.cond100, !dbg !3247, !llvm.loop !3248

while.end:                                        ; preds = %while.cond100
  %79 = load i32, ptr %i, align 4, !dbg !3247, !tbaa !974
  %and114 = and i32 %79, 15, !dbg !3247
  %shl115 = shl i32 %and114, 1, !dbg !3247
  %sh_prom116 = zext i32 %shl115 to i64, !dbg !3247
  %shl117 = shl i64 2, %sh_prom116, !dbg !3247
  %not = xor i64 %shl117, -1, !dbg !3247
  %80 = load ptr, ptr %new_flags, align 8, !dbg !3247, !tbaa !588
  %81 = load i32, ptr %i, align 4, !dbg !3247, !tbaa !974
  %shr118 = lshr i32 %81, 4, !dbg !3247
  %idxprom119 = zext i32 %shr118 to i64, !dbg !3247
  %arrayidx120 = getelementptr inbounds i32, ptr %80, i64 %idxprom119, !dbg !3247
  %82 = load i32, ptr %arrayidx120, align 4, !dbg !3247, !tbaa !974
  %conv121 = zext i32 %82 to i64, !dbg !3247
  %and122 = and i64 %conv121, %not, !dbg !3247
  %conv123 = trunc i64 %and122 to i32, !dbg !3247
  store i32 %conv123, ptr %arrayidx120, align 4, !dbg !3247, !tbaa !974
  %83 = load i32, ptr %i, align 4, !dbg !3249, !tbaa !974
  %84 = load ptr, ptr %h.addr, align 8, !dbg !3249, !tbaa !588
  %n_buckets124 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %84, i32 0, i32 0, !dbg !3249
  %85 = load i32, ptr %n_buckets124, align 8, !dbg !3249, !tbaa !2100
  %cmp125 = icmp ult i32 %83, %85, !dbg !3249
  br i1 %cmp125, label %land.lhs.true, label %if.else162, !dbg !3249

land.lhs.true:                                    ; preds = %while.end
  %86 = load ptr, ptr %h.addr, align 8, !dbg !3249, !tbaa !588
  %flags127 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %86, i32 0, i32 4, !dbg !3249
  %87 = load ptr, ptr %flags127, align 8, !dbg !3249, !tbaa !2106
  %88 = load i32, ptr %i, align 4, !dbg !3249, !tbaa !974
  %shr128 = lshr i32 %88, 4, !dbg !3249
  %idxprom129 = zext i32 %shr128 to i64, !dbg !3249
  %arrayidx130 = getelementptr inbounds i32, ptr %87, i64 %idxprom129, !dbg !3249
  %89 = load i32, ptr %arrayidx130, align 4, !dbg !3249, !tbaa !974
  %90 = load i32, ptr %i, align 4, !dbg !3249, !tbaa !974
  %and131 = and i32 %90, 15, !dbg !3249
  %shl132 = shl i32 %and131, 1, !dbg !3249
  %shr133 = lshr i32 %89, %shl132, !dbg !3249
  %and134 = and i32 %shr133, 3, !dbg !3249
  %cmp135 = icmp eq i32 %and134, 0, !dbg !3249
  br i1 %cmp135, label %if.then137, label %if.else162, !dbg !3247

if.then137:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !3250
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3211, metadata !DIExpression()), !dbg !3250
  %91 = load ptr, ptr %h.addr, align 8, !dbg !3250, !tbaa !588
  %keys138 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %91, i32 0, i32 5, !dbg !3250
  %92 = load ptr, ptr %keys138, align 8, !dbg !3250, !tbaa !2109
  %93 = load i32, ptr %i, align 4, !dbg !3250, !tbaa !974
  %idxprom139 = zext i32 %93 to i64, !dbg !3250
  %arrayidx140 = getelementptr inbounds ptr, ptr %92, i64 %idxprom139, !dbg !3250
  %94 = load ptr, ptr %arrayidx140, align 8, !dbg !3250, !tbaa !588
  store ptr %94, ptr %tmp, align 8, !dbg !3250, !tbaa !588
  %95 = load ptr, ptr %key, align 8, !dbg !3250, !tbaa !588
  %96 = load ptr, ptr %h.addr, align 8, !dbg !3250, !tbaa !588
  %keys141 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %96, i32 0, i32 5, !dbg !3250
  %97 = load ptr, ptr %keys141, align 8, !dbg !3250, !tbaa !2109
  %98 = load i32, ptr %i, align 4, !dbg !3250, !tbaa !974
  %idxprom142 = zext i32 %98 to i64, !dbg !3250
  %arrayidx143 = getelementptr inbounds ptr, ptr %97, i64 %idxprom142, !dbg !3250
  store ptr %95, ptr %arrayidx143, align 8, !dbg !3250, !tbaa !588
  %99 = load ptr, ptr %tmp, align 8, !dbg !3250, !tbaa !588
  store ptr %99, ptr %key, align 8, !dbg !3250, !tbaa !588
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !3251
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp144) #17, !dbg !3252
  tail call void @llvm.dbg.declare(metadata ptr %tmp144, metadata !3215, metadata !DIExpression()), !dbg !3252
  %100 = load ptr, ptr %h.addr, align 8, !dbg !3252, !tbaa !588
  %vals145 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %100, i32 0, i32 6, !dbg !3252
  %101 = load ptr, ptr %vals145, align 8, !dbg !3252, !tbaa !3233
  %102 = load i32, ptr %i, align 4, !dbg !3252, !tbaa !974
  %idxprom146 = zext i32 %102 to i64, !dbg !3252
  %arrayidx147 = getelementptr inbounds ptr, ptr %101, i64 %idxprom146, !dbg !3252
  %103 = load ptr, ptr %arrayidx147, align 8, !dbg !3252, !tbaa !588
  store ptr %103, ptr %tmp144, align 8, !dbg !3252, !tbaa !588
  %104 = load ptr, ptr %val, align 8, !dbg !3252, !tbaa !588
  %105 = load ptr, ptr %h.addr, align 8, !dbg !3252, !tbaa !588
  %vals148 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %105, i32 0, i32 6, !dbg !3252
  %106 = load ptr, ptr %vals148, align 8, !dbg !3252, !tbaa !3233
  %107 = load i32, ptr %i, align 4, !dbg !3252, !tbaa !974
  %idxprom149 = zext i32 %107 to i64, !dbg !3252
  %arrayidx150 = getelementptr inbounds ptr, ptr %106, i64 %idxprom149, !dbg !3252
  store ptr %104, ptr %arrayidx150, align 8, !dbg !3252, !tbaa !588
  %108 = load ptr, ptr %tmp144, align 8, !dbg !3252, !tbaa !588
  store ptr %108, ptr %val, align 8, !dbg !3252, !tbaa !588
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp144) #17, !dbg !3253
  %109 = load i32, ptr %i, align 4, !dbg !3251, !tbaa !974
  %and151 = and i32 %109, 15, !dbg !3251
  %shl152 = shl i32 %and151, 1, !dbg !3251
  %sh_prom153 = zext i32 %shl152 to i64, !dbg !3251
  %shl154 = shl i64 1, %sh_prom153, !dbg !3251
  %110 = load ptr, ptr %h.addr, align 8, !dbg !3251, !tbaa !588
  %flags155 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %110, i32 0, i32 4, !dbg !3251
  %111 = load ptr, ptr %flags155, align 8, !dbg !3251, !tbaa !2106
  %112 = load i32, ptr %i, align 4, !dbg !3251, !tbaa !974
  %shr156 = lshr i32 %112, 4, !dbg !3251
  %idxprom157 = zext i32 %shr156 to i64, !dbg !3251
  %arrayidx158 = getelementptr inbounds i32, ptr %111, i64 %idxprom157, !dbg !3251
  %113 = load i32, ptr %arrayidx158, align 4, !dbg !3251, !tbaa !974
  %conv159 = zext i32 %113 to i64, !dbg !3251
  %or160 = or i64 %conv159, %shl154, !dbg !3251
  %conv161 = trunc i64 %or160 to i32, !dbg !3251
  store i32 %conv161, ptr %arrayidx158, align 4, !dbg !3251, !tbaa !974
  br label %if.end169, !dbg !3251

if.else162:                                       ; preds = %land.lhs.true, %while.end
  %114 = load ptr, ptr %key, align 8, !dbg !3254, !tbaa !588
  %115 = load ptr, ptr %h.addr, align 8, !dbg !3254, !tbaa !588
  %keys163 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %115, i32 0, i32 5, !dbg !3254
  %116 = load ptr, ptr %keys163, align 8, !dbg !3254, !tbaa !2109
  %117 = load i32, ptr %i, align 4, !dbg !3254, !tbaa !974
  %idxprom164 = zext i32 %117 to i64, !dbg !3254
  %arrayidx165 = getelementptr inbounds ptr, ptr %116, i64 %idxprom164, !dbg !3254
  store ptr %114, ptr %arrayidx165, align 8, !dbg !3254, !tbaa !588
  %118 = load ptr, ptr %val, align 8, !dbg !3256, !tbaa !588
  %119 = load ptr, ptr %h.addr, align 8, !dbg !3256, !tbaa !588
  %vals166 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %119, i32 0, i32 6, !dbg !3256
  %120 = load ptr, ptr %vals166, align 8, !dbg !3256, !tbaa !3233
  %121 = load i32, ptr %i, align 4, !dbg !3256, !tbaa !974
  %idxprom167 = zext i32 %121 to i64, !dbg !3256
  %arrayidx168 = getelementptr inbounds ptr, ptr %120, i64 %idxprom167, !dbg !3256
  store ptr %118, ptr %arrayidx168, align 8, !dbg !3256, !tbaa !588
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup170, !dbg !3254

if.end169:                                        ; preds = %if.then137
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3244
  br label %cleanup170, !dbg !3244

cleanup170:                                       ; preds = %if.end169, %if.else162
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #17, !dbg !3244
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !3244
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #17, !dbg !3244
  %cleanup.dest173 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest173, label %unreachable [
    i32 0, label %cleanup.cont174
    i32 6, label %while.end175
  ]

cleanup.cont174:                                  ; preds = %cleanup170
  br label %while.cond, !dbg !3244, !llvm.loop !3258

while.end175:                                     ; preds = %cleanup170
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_mask) #17, !dbg !3242
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !3242
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #17, !dbg !3242
  br label %if.end176, !dbg !3244

if.end176:                                        ; preds = %while.end175, %for.body
  br label %for.inc, !dbg !3243

for.inc:                                          ; preds = %if.end176
  %122 = load i32, ptr %j, align 4, !dbg !3241, !tbaa !974
  %inc177 = add i32 %122, 1, !dbg !3241
  store i32 %inc177, ptr %j, align 4, !dbg !3241, !tbaa !974
  br label %for.cond, !dbg !3241, !llvm.loop !3259

for.end:                                          ; preds = %for.cond
  %123 = load ptr, ptr %h.addr, align 8, !dbg !3260, !tbaa !588
  %n_buckets178 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %123, i32 0, i32 0, !dbg !3260
  %124 = load i32, ptr %n_buckets178, align 8, !dbg !3260, !tbaa !2100
  %125 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3260, !tbaa !974
  %cmp179 = icmp ugt i32 %124, %125, !dbg !3260
  br i1 %cmp179, label %if.then181, label %if.end192, !dbg !3262

if.then181:                                       ; preds = %for.end
  %126 = load ptr, ptr %h.addr, align 8, !dbg !3263, !tbaa !588
  %keys182 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %126, i32 0, i32 5, !dbg !3263
  %127 = load ptr, ptr %keys182, align 8, !dbg !3263, !tbaa !2109
  %128 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3263, !tbaa !974
  %conv183 = zext i32 %128 to i64, !dbg !3263
  %mul184 = mul i64 %conv183, 8, !dbg !3263
  %call185 = call ptr @realloc(ptr noundef %127, i64 noundef %mul184) #22, !dbg !3263
  %129 = load ptr, ptr %h.addr, align 8, !dbg !3263, !tbaa !588
  %keys186 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %129, i32 0, i32 5, !dbg !3263
  store ptr %call185, ptr %keys186, align 8, !dbg !3263, !tbaa !2109
  %130 = load ptr, ptr %h.addr, align 8, !dbg !3265, !tbaa !588
  %vals187 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %130, i32 0, i32 6, !dbg !3265
  %131 = load ptr, ptr %vals187, align 8, !dbg !3265, !tbaa !3233
  %132 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3265, !tbaa !974
  %conv188 = zext i32 %132 to i64, !dbg !3265
  %mul189 = mul i64 %conv188, 8, !dbg !3265
  %call190 = call ptr @realloc(ptr noundef %131, i64 noundef %mul189) #22, !dbg !3265
  %133 = load ptr, ptr %h.addr, align 8, !dbg !3265, !tbaa !588
  %vals191 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %133, i32 0, i32 6, !dbg !3265
  store ptr %call190, ptr %vals191, align 8, !dbg !3265, !tbaa !3233
  br label %if.end192, !dbg !3263

if.end192:                                        ; preds = %if.then181, %for.end
  %134 = load ptr, ptr %h.addr, align 8, !dbg !3262, !tbaa !588
  %flags193 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %134, i32 0, i32 4, !dbg !3262
  %135 = load ptr, ptr %flags193, align 8, !dbg !3262, !tbaa !2106
  call void @free(ptr noundef %135) #17, !dbg !3262
  %136 = load ptr, ptr %new_flags, align 8, !dbg !3262, !tbaa !588
  %137 = load ptr, ptr %h.addr, align 8, !dbg !3262, !tbaa !588
  %flags194 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %137, i32 0, i32 4, !dbg !3262
  store ptr %136, ptr %flags194, align 8, !dbg !3262, !tbaa !2106
  %138 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !3262, !tbaa !974
  %139 = load ptr, ptr %h.addr, align 8, !dbg !3262, !tbaa !588
  %n_buckets195 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %139, i32 0, i32 0, !dbg !3262
  store i32 %138, ptr %n_buckets195, align 8, !dbg !3262, !tbaa !2100
  %140 = load ptr, ptr %h.addr, align 8, !dbg !3262, !tbaa !588
  %size196 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %140, i32 0, i32 1, !dbg !3262
  %141 = load i32, ptr %size196, align 4, !dbg !3262, !tbaa !729
  %142 = load ptr, ptr %h.addr, align 8, !dbg !3262, !tbaa !588
  %n_occupied = getelementptr inbounds %struct.kh_kh_rg_s, ptr %142, i32 0, i32 2, !dbg !3262
  store i32 %141, ptr %n_occupied, align 8, !dbg !3262, !tbaa !3107
  %143 = load ptr, ptr %h.addr, align 8, !dbg !3262, !tbaa !588
  %n_buckets197 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %143, i32 0, i32 0, !dbg !3262
  %144 = load i32, ptr %n_buckets197, align 8, !dbg !3262, !tbaa !2100
  %conv198 = uitofp i32 %144 to double, !dbg !3262
  %145 = call double @llvm.fmuladd.f64(double %conv198, double 7.700000e-01, double 5.000000e-01), !dbg !3262
  %conv200 = fptoui double %145 to i32, !dbg !3262
  %146 = load ptr, ptr %h.addr, align 8, !dbg !3262, !tbaa !588
  %upper_bound = getelementptr inbounds %struct.kh_kh_rg_s, ptr %146, i32 0, i32 3, !dbg !3262
  store i32 %conv200, ptr %upper_bound, align 4, !dbg !3262, !tbaa !3108
  br label %if.end201, !dbg !3262

if.end201:                                        ; preds = %if.end192, %if.end67
  store i32 0, ptr %retval, align 4, !dbg !3218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !3218

cleanup202:                                       ; preds = %if.end201, %cleanup63, %if.then35
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #17, !dbg !3218
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_flags) #17, !dbg !3218
  %147 = load i32, ptr %retval, align 4, !dbg !3218
  ret i32 %147, !dbg !3218

unreachable:                                      ; preds = %cleanup170
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__ac_X31_hash_string(ptr noundef %s) #9 !dbg !3267 {
entry:
  %s.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3271, metadata !DIExpression()), !dbg !3273
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #17, !dbg !3274
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !3272, metadata !DIExpression()), !dbg !3275
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3276, !tbaa !588
  %1 = load i8, ptr %0, align 1, !dbg !3277, !tbaa !1032
  %conv = sext i8 %1 to i32, !dbg !3278
  store i32 %conv, ptr %h, align 4, !dbg !3275, !tbaa !974
  %2 = load i32, ptr %h, align 4, !dbg !3279, !tbaa !974
  %tobool = icmp ne i32 %2, 0, !dbg !3279
  br i1 %tobool, label %if.then, label %if.end, !dbg !3281

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !3282, !tbaa !588
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1, !dbg !3282
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !3282, !tbaa !588
  br label %for.cond, !dbg !3282

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3284, !tbaa !588
  %5 = load i8, ptr %4, align 1, !dbg !3286, !tbaa !1032
  %tobool1 = icmp ne i8 %5, 0, !dbg !3287
  br i1 %tobool1, label %for.body, label %for.end, !dbg !3287

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %h, align 4, !dbg !3288, !tbaa !974
  %shl = shl i32 %6, 5, !dbg !3289
  %7 = load i32, ptr %h, align 4, !dbg !3290, !tbaa !974
  %sub = sub i32 %shl, %7, !dbg !3291
  %8 = load ptr, ptr %s.addr, align 8, !dbg !3292, !tbaa !588
  %9 = load i8, ptr %8, align 1, !dbg !3293, !tbaa !1032
  %conv2 = sext i8 %9 to i32, !dbg !3294
  %add = add i32 %sub, %conv2, !dbg !3295
  store i32 %add, ptr %h, align 4, !dbg !3296, !tbaa !974
  br label %for.inc, !dbg !3297

for.inc:                                          ; preds = %for.body
  %10 = load ptr, ptr %s.addr, align 8, !dbg !3298, !tbaa !588
  %incdec.ptr3 = getelementptr inbounds i8, ptr %10, i32 1, !dbg !3298
  store ptr %incdec.ptr3, ptr %s.addr, align 8, !dbg !3298, !tbaa !588
  br label %for.cond, !dbg !3299, !llvm.loop !3300

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !3301

if.end:                                           ; preds = %for.end, %entry
  %11 = load i32, ptr %h, align 4, !dbg !3302, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #17, !dbg !3303
  ret i32 %11, !dbg !3304
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: nounwind allocsize(0)
declare !dbg !3305 noalias ptr @malloc(i64 noundef) #13

; Function Attrs: nounwind allocsize(1)
declare !dbg !3308 ptr @realloc(ptr noundef, i64 noundef) #14

; Function Attrs: inlinehint nounwind uwtable
define internal void @kh_destroy_kh_rg(ptr noundef %h) #9 !dbg !3311 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !3313, metadata !DIExpression()), !dbg !3314
  %0 = load ptr, ptr %h.addr, align 8, !dbg !3315, !tbaa !588
  %tobool = icmp ne ptr %0, null, !dbg !3315
  br i1 %tobool, label %if.then, label %if.end, !dbg !3314

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %h.addr, align 8, !dbg !3317, !tbaa !588
  %keys = getelementptr inbounds %struct.kh_kh_rg_s, ptr %1, i32 0, i32 5, !dbg !3317
  %2 = load ptr, ptr %keys, align 8, !dbg !3317, !tbaa !2109
  call void @free(ptr noundef %2) #17, !dbg !3317
  %3 = load ptr, ptr %h.addr, align 8, !dbg !3317, !tbaa !588
  %flags = getelementptr inbounds %struct.kh_kh_rg_s, ptr %3, i32 0, i32 4, !dbg !3317
  %4 = load ptr, ptr %flags, align 8, !dbg !3317, !tbaa !2106
  call void @free(ptr noundef %4) #17, !dbg !3317
  %5 = load ptr, ptr %h.addr, align 8, !dbg !3317, !tbaa !588
  %vals = getelementptr inbounds %struct.kh_kh_rg_s, ptr %5, i32 0, i32 6, !dbg !3317
  %6 = load ptr, ptr %vals, align 8, !dbg !3317, !tbaa !3233
  call void @free(ptr noundef %6) #17, !dbg !3317
  %7 = load ptr, ptr %h.addr, align 8, !dbg !3317, !tbaa !588
  call void @free(ptr noundef %7) #17, !dbg !3317
  br label %if.end, !dbg !3317

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3314
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ks_initialize(ptr noundef %s) #9 !dbg !3319 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3321, metadata !DIExpression()), !dbg !3322
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3323, !tbaa !588
  %m = getelementptr inbounds %struct.kstring_t, ptr %0, i32 0, i32 1, !dbg !3324
  store i64 0, ptr %m, align 8, !dbg !3325, !tbaa !3166
  %1 = load ptr, ptr %s.addr, align 8, !dbg !3326, !tbaa !588
  %l = getelementptr inbounds %struct.kstring_t, ptr %1, i32 0, i32 0, !dbg !3327
  store i64 0, ptr %l, align 8, !dbg !3328, !tbaa !3170
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3329, !tbaa !588
  %s1 = getelementptr inbounds %struct.kstring_t, ptr %2, i32 0, i32 2, !dbg !3330
  store ptr null, ptr %s1, align 8, !dbg !3331, !tbaa !1595
  ret void, !dbg !3332
}

declare !dbg !3333 void @hts_log(i32 noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !3336 i32 @hts_itr_multi_next(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3339 i32 @hts_itr_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3342 ptr @bam_aux_get(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_get_kh_rg(ptr noundef %h, ptr noundef %key) #9 !dbg !3345 {
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
  store ptr %h, ptr %h.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !3351, metadata !DIExpression()), !dbg !3360
  store ptr %key, ptr %key.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3352, metadata !DIExpression()), !dbg !3360
  %0 = load ptr, ptr %h.addr, align 8, !dbg !3361, !tbaa !588
  %n_buckets = getelementptr inbounds %struct.kh_kh_rg_s, ptr %0, i32 0, i32 0, !dbg !3361
  %1 = load i32, ptr %n_buckets, align 8, !dbg !3361, !tbaa !2100
  %tobool = icmp ne i32 %1, 0, !dbg !3361
  br i1 %tobool, label %if.then, label %if.else, !dbg !3360

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #17, !dbg !3362
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !3353, metadata !DIExpression()), !dbg !3362
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !3362
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3356, metadata !DIExpression()), !dbg !3362
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #17, !dbg !3362
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !3357, metadata !DIExpression()), !dbg !3362
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #17, !dbg !3362
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !3358, metadata !DIExpression()), !dbg !3362
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #17, !dbg !3362
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !3359, metadata !DIExpression()), !dbg !3362
  store i32 0, ptr %step, align 4, !dbg !3362, !tbaa !974
  %2 = load ptr, ptr %h.addr, align 8, !dbg !3362, !tbaa !588
  %n_buckets1 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %2, i32 0, i32 0, !dbg !3362
  %3 = load i32, ptr %n_buckets1, align 8, !dbg !3362, !tbaa !2100
  %sub = sub i32 %3, 1, !dbg !3362
  store i32 %sub, ptr %mask, align 4, !dbg !3362, !tbaa !974
  %4 = load ptr, ptr %key.addr, align 8, !dbg !3362, !tbaa !588
  %call = call i32 @__ac_X31_hash_string(ptr noundef %4), !dbg !3362
  store i32 %call, ptr %k, align 4, !dbg !3362, !tbaa !974
  %5 = load i32, ptr %k, align 4, !dbg !3362, !tbaa !974
  %6 = load i32, ptr %mask, align 4, !dbg !3362, !tbaa !974
  %and = and i32 %5, %6, !dbg !3362
  store i32 %and, ptr %i, align 4, !dbg !3362, !tbaa !974
  %7 = load i32, ptr %i, align 4, !dbg !3362, !tbaa !974
  store i32 %7, ptr %last, align 4, !dbg !3362, !tbaa !974
  br label %while.cond, !dbg !3362

while.cond:                                       ; preds = %if.end, %if.then
  %8 = load ptr, ptr %h.addr, align 8, !dbg !3362, !tbaa !588
  %flags = getelementptr inbounds %struct.kh_kh_rg_s, ptr %8, i32 0, i32 4, !dbg !3362
  %9 = load ptr, ptr %flags, align 8, !dbg !3362, !tbaa !2106
  %10 = load i32, ptr %i, align 4, !dbg !3362, !tbaa !974
  %shr = lshr i32 %10, 4, !dbg !3362
  %idxprom = zext i32 %shr to i64, !dbg !3362
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %idxprom, !dbg !3362
  %11 = load i32, ptr %arrayidx, align 4, !dbg !3362, !tbaa !974
  %12 = load i32, ptr %i, align 4, !dbg !3362, !tbaa !974
  %and2 = and i32 %12, 15, !dbg !3362
  %shl = shl i32 %and2, 1, !dbg !3362
  %shr3 = lshr i32 %11, %shl, !dbg !3362
  %and4 = and i32 %shr3, 2, !dbg !3362
  %tobool5 = icmp ne i32 %and4, 0, !dbg !3362
  br i1 %tobool5, label %land.end, label %land.rhs, !dbg !3362

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %h.addr, align 8, !dbg !3362, !tbaa !588
  %flags6 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %13, i32 0, i32 4, !dbg !3362
  %14 = load ptr, ptr %flags6, align 8, !dbg !3362, !tbaa !2106
  %15 = load i32, ptr %i, align 4, !dbg !3362, !tbaa !974
  %shr7 = lshr i32 %15, 4, !dbg !3362
  %idxprom8 = zext i32 %shr7 to i64, !dbg !3362
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 %idxprom8, !dbg !3362
  %16 = load i32, ptr %arrayidx9, align 4, !dbg !3362, !tbaa !974
  %17 = load i32, ptr %i, align 4, !dbg !3362, !tbaa !974
  %and10 = and i32 %17, 15, !dbg !3362
  %shl11 = shl i32 %and10, 1, !dbg !3362
  %shr12 = lshr i32 %16, %shl11, !dbg !3362
  %and13 = and i32 %shr12, 1, !dbg !3362
  %tobool14 = icmp ne i32 %and13, 0, !dbg !3362
  br i1 %tobool14, label %lor.end, label %lor.rhs, !dbg !3362

lor.rhs:                                          ; preds = %land.rhs
  %18 = load ptr, ptr %h.addr, align 8, !dbg !3362, !tbaa !588
  %keys = getelementptr inbounds %struct.kh_kh_rg_s, ptr %18, i32 0, i32 5, !dbg !3362
  %19 = load ptr, ptr %keys, align 8, !dbg !3362, !tbaa !2109
  %20 = load i32, ptr %i, align 4, !dbg !3362, !tbaa !974
  %idxprom15 = zext i32 %20 to i64, !dbg !3362
  %arrayidx16 = getelementptr inbounds ptr, ptr %19, i64 %idxprom15, !dbg !3362
  %21 = load ptr, ptr %arrayidx16, align 8, !dbg !3362, !tbaa !588
  %22 = load ptr, ptr %key.addr, align 8, !dbg !3362, !tbaa !588
  %call17 = call i32 @strcmp(ptr noundef %21, ptr noundef %22) #19, !dbg !3362
  %cmp = icmp eq i32 %call17, 0, !dbg !3362
  %lnot = xor i1 %cmp, true, !dbg !3362
  br label %lor.end, !dbg !3362

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %23 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %23, %lor.end ], !dbg !3363
  br i1 %24, label %while.body, label %while.end, !dbg !3362

while.body:                                       ; preds = %land.end
  %25 = load i32, ptr %i, align 4, !dbg !3364, !tbaa !974
  %26 = load i32, ptr %step, align 4, !dbg !3364, !tbaa !974
  %inc = add i32 %26, 1, !dbg !3364
  store i32 %inc, ptr %step, align 4, !dbg !3364, !tbaa !974
  %add = add i32 %25, %inc, !dbg !3364
  %27 = load i32, ptr %mask, align 4, !dbg !3364, !tbaa !974
  %and18 = and i32 %add, %27, !dbg !3364
  store i32 %and18, ptr %i, align 4, !dbg !3364, !tbaa !974
  %28 = load i32, ptr %i, align 4, !dbg !3366, !tbaa !974
  %29 = load i32, ptr %last, align 4, !dbg !3366, !tbaa !974
  %cmp19 = icmp eq i32 %28, %29, !dbg !3366
  br i1 %cmp19, label %if.then20, label %if.end, !dbg !3364

if.then20:                                        ; preds = %while.body
  %30 = load ptr, ptr %h.addr, align 8, !dbg !3366, !tbaa !588
  %n_buckets21 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %30, i32 0, i32 0, !dbg !3366
  %31 = load i32, ptr %n_buckets21, align 8, !dbg !3366, !tbaa !2100
  store i32 %31, ptr %retval, align 4, !dbg !3366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3366

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !3362, !llvm.loop !3368

while.end:                                        ; preds = %land.end
  %32 = load ptr, ptr %h.addr, align 8, !dbg !3362, !tbaa !588
  %flags22 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %32, i32 0, i32 4, !dbg !3362
  %33 = load ptr, ptr %flags22, align 8, !dbg !3362, !tbaa !2106
  %34 = load i32, ptr %i, align 4, !dbg !3362, !tbaa !974
  %shr23 = lshr i32 %34, 4, !dbg !3362
  %idxprom24 = zext i32 %shr23 to i64, !dbg !3362
  %arrayidx25 = getelementptr inbounds i32, ptr %33, i64 %idxprom24, !dbg !3362
  %35 = load i32, ptr %arrayidx25, align 4, !dbg !3362, !tbaa !974
  %36 = load i32, ptr %i, align 4, !dbg !3362, !tbaa !974
  %and26 = and i32 %36, 15, !dbg !3362
  %shl27 = shl i32 %and26, 1, !dbg !3362
  %shr28 = lshr i32 %35, %shl27, !dbg !3362
  %and29 = and i32 %shr28, 3, !dbg !3362
  %tobool30 = icmp ne i32 %and29, 0, !dbg !3362
  br i1 %tobool30, label %cond.true, label %cond.false, !dbg !3362

cond.true:                                        ; preds = %while.end
  %37 = load ptr, ptr %h.addr, align 8, !dbg !3362, !tbaa !588
  %n_buckets31 = getelementptr inbounds %struct.kh_kh_rg_s, ptr %37, i32 0, i32 0, !dbg !3362
  %38 = load i32, ptr %n_buckets31, align 8, !dbg !3362, !tbaa !2100
  br label %cond.end, !dbg !3362

cond.false:                                       ; preds = %while.end
  %39 = load i32, ptr %i, align 4, !dbg !3362, !tbaa !974
  br label %cond.end, !dbg !3362

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %38, %cond.true ], [ %39, %cond.false ], !dbg !3362
  store i32 %cond, ptr %retval, align 4, !dbg !3362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3362

cleanup:                                          ; preds = %cond.end, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #17, !dbg !3361
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #17, !dbg !3361
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #17, !dbg !3361
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !3361
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #17, !dbg !3361
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3361
  br label %return, !dbg !3361

return:                                           ; preds = %if.else, %cleanup
  %40 = load i32, ptr %retval, align 4, !dbg !3360
  ret i32 %40, !dbg !3360
}

declare !dbg !3369 void @sam_global_opt_help(ptr noundef, ptr noundef) #2

declare !dbg !3372 i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

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
!llvm.module.flags = !{!569, !570, !571, !572, !573, !574}
!llvm.ident = !{!575}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bam_tview.c", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build/aidengro/spack-stage-samtools-1.13-i7lpfd7rznpn2jrnaklwe67pg7qot4ru/spack-src", checksumkind: CSK_MD5, checksum: "6dc6e7fe68ee7482fbeab342da55aa4c")
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
!94 = distinct !DIGlobalVariable(name: "lopts", scope: !95, file: !2, line: 446, type: !560, isLocal: true, isDefinition: true)
!95 = distinct !DISubprogram(name: "bam_tview_main", scope: !2, file: !2, line: 438, type: !96, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !528)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !98, !99}
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!101 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102, retainedTypes: !161, globals: !432, splitDebugInlining: false, nameTableKind: None)
!102 = !{!103, !113, !138, !147, !152}
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "htsFormatCategory", file: !104, line: 190, baseType: !105, size: 32, elements: !106)
!104 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/hts.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "ae37cf66fde41139f9a837bd3fe09912")
!105 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!106 = !{!107, !108, !109, !110, !111, !112}
!107 = !DIEnumerator(name: "unknown_category", value: 0)
!108 = !DIEnumerator(name: "sequence_data", value: 1)
!109 = !DIEnumerator(name: "variant_data", value: 2)
!110 = !DIEnumerator(name: "index_file", value: 3)
!111 = !DIEnumerator(name: "region_list", value: 4)
!112 = !DIEnumerator(name: "category_maximum", value: 32767)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "htsExactFormat", file: !104, line: 199, baseType: !105, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
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
!137 = !DIEnumerator(name: "format_maximum", value: 32767)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "htsCompression", file: !104, line: 211, baseType: !105, size: 32, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146}
!140 = !DIEnumerator(name: "no_compression", value: 0)
!141 = !DIEnumerator(name: "gzip", value: 1)
!142 = !DIEnumerator(name: "bgzf", value: 2)
!143 = !DIEnumerator(name: "custom", value: 3)
!144 = !DIEnumerator(name: "bzip2_compression", value: 4)
!145 = !DIEnumerator(name: "razf_compression", value: 5)
!146 = !DIEnumerator(name: "compression_maximum", value: 32767)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dipsay_mode", file: !2, line: 430, baseType: !105, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "display_ncurses", value: 0)
!150 = !DIEnumerator(name: "display_html", value: 1)
!151 = !DIEnumerator(name: "display_text", value: 2)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "htsLogLevel", file: !153, line: 39, baseType: !105, size: 32, elements: !154)
!153 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/hts_log.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "c74398e06324514c8cd966a158ec1741")
!154 = !{!155, !156, !157, !158, !159, !160}
!155 = !DIEnumerator(name: "HTS_LOG_OFF", value: 0)
!156 = !DIEnumerator(name: "HTS_LOG_ERROR", value: 1)
!157 = !DIEnumerator(name: "HTS_LOG_WARNING", value: 3)
!158 = !DIEnumerator(name: "HTS_LOG_INFO", value: 4)
!159 = !DIEnumerator(name: "HTS_LOG_DEBUG", value: 5)
!160 = !DIEnumerator(name: "HTS_LOG_TRACE", value: 6)
!161 = !{!162, !163, !98, !100, !382, !387, !394, !396, !399, !307, !196}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "tview_t", file: !165, line: 72, baseType: !166)
!165 = !DIFile(filename: "./bam_tview.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build/aidengro/spack-stage-samtools-1.13-i7lpfd7rznpn2jrnaklwe67pg7qot4ru/spack-src", checksumkind: CSK_MD5, checksum: "874ae437390170c25fe2a1173e759eee")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AbstractTview", file: !165, line: 45, size: 1728, elements: !167)
!167 = !{!168, !169, !170, !174, !179, !214, !313, !318, !366, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !400, !405, !409, !413, !417, !418, !419, !423, !427, !431}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mrow", scope: !166, file: !165, line: 46, baseType: !98, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "mcol", scope: !166, file: !165, line: 46, baseType: !98, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !166, file: !165, line: 48, baseType: !171, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_idx_t", file: !104, line: 226, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, name: "hts_idx_t", file: !104, line: 225, flags: DIFlagFwdDecl)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "lplbuf", scope: !166, file: !165, line: 49, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam_lplbuf_t", file: !177, line: 32, baseType: !178)
!177 = !DIFile(filename: "./bam_lpileup.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build/aidengro/spack-stage-samtools-1.13-i7lpfd7rznpn2jrnaklwe67pg7qot4ru/spack-src", checksumkind: CSK_MD5, checksum: "98ac72b286274d61c34b7f6168f2e580")
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "__bam_lplbuf_t", file: !177, line: 31, flags: DIFlagFwdDecl)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !166, file: !165, line: 50, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "sam_hdr_t", file: !182, line: 83, baseType: !183)
!182 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/sam.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "b64ad94d97c3b81ccf06052d1de39653")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sam_hdr_t", file: !182, line: 73, size: 576, elements: !184)
!184 = !{!185, !190, !191, !195, !200, !206, !207, !208, !209, !213}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "n_targets", scope: !183, file: !182, line: 74, baseType: !186, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !187, line: 26, baseType: !188)
!187 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !189, line: 41, baseType: !98)
!189 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_sam_err", scope: !183, file: !182, line: 74, baseType: !186, size: 32, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "l_text", scope: !183, file: !182, line: 75, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 70, baseType: !194)
!193 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!194 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "target_len", scope: !183, file: !182, line: 76, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !198, line: 26, baseType: !199)
!198 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !189, line: 42, baseType: !105)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "cigar_tab", scope: !183, file: !182, line: 77, baseType: !201, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !187, line: 24, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !189, line: 37, baseType: !205)
!205 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "target_name", scope: !183, file: !182, line: 78, baseType: !99, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !183, file: !182, line: 79, baseType: !100, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sdict", scope: !183, file: !182, line: 80, baseType: !162, size: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "hrecs", scope: !183, file: !182, line: 81, baseType: !210, size: 64, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "sam_hrecs_t", file: !182, line: 52, baseType: !212)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "sam_hrecs_t", file: !182, line: 52, flags: DIFlagFwdDecl)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !183, file: !182, line: 82, baseType: !197, size: 32, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !166, file: !165, line: 51, baseType: !215, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "samFile", file: !182, line: 396, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsFile", file: !104, line: 261, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsFile", file: !104, line: 245, size: 1088, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !230, !238, !239, !240, !289, !290, !305, !306, !308, !310}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin", scope: !218, file: !104, line: 246, baseType: !197, size: 1, flags: DIFlagBitField, extraData: i64 0)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "is_write", scope: !218, file: !104, line: 246, baseType: !197, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "is_be", scope: !218, file: !104, line: 246, baseType: !197, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "is_cram", scope: !218, file: !104, line: 246, baseType: !197, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "is_bgzf", scope: !218, file: !104, line: 246, baseType: !197, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !218, file: !104, line: 246, baseType: !197, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !218, file: !104, line: 247, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !187, line: 27, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !189, line: 44, baseType: !229)
!229 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !218, file: !104, line: 248, baseType: !231, size: 192, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "kstring_t", file: !232, line: 71, baseType: !233)
!232 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/kstring.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "532459e2e5dea934e82fd1dc844130c8")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstring_t", file: !232, line: 68, size: 192, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !233, file: !232, line: 69, baseType: !192, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !233, file: !232, line: 69, baseType: !192, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !233, file: !232, line: 70, baseType: !100, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !218, file: !104, line: 249, baseType: !100, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "fn_aux", scope: !218, file: !104, line: 249, baseType: !100, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !218, file: !104, line: 254, baseType: !241, size: 64, offset: 448)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !104, line: 250, size: 64, elements: !242)
!242 = !{!243, !285, !288}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "bgzf", scope: !241, file: !104, line: 251, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "BGZF", file: !104, line: 54, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BGZF", file: !247, line: 60, size: 896, elements: !248)
!247 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/bgzf.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "0eb8ea58e56c136b50432ec3ab49c4e1")
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !270, !273, !276, !280, !281, !284}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "errcode", scope: !246, file: !247, line: 62, baseType: !105, size: 16, flags: DIFlagBitField, extraData: i64 0)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !246, file: !247, line: 62, baseType: !105, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "is_write", scope: !246, file: !247, line: 62, baseType: !105, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "no_eof_block", scope: !246, file: !247, line: 62, baseType: !105, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "is_be", scope: !246, file: !247, line: 62, baseType: !105, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "compress_level", scope: !246, file: !247, line: 63, baseType: !98, size: 9, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "last_block_eof", scope: !246, file: !247, line: 64, baseType: !105, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "is_compressed", scope: !246, file: !247, line: 64, baseType: !105, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "is_gzip", scope: !246, file: !247, line: 64, baseType: !105, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size", scope: !246, file: !247, line: 65, baseType: !98, size: 32, offset: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "block_length", scope: !246, file: !247, line: 66, baseType: !98, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "block_clength", scope: !246, file: !247, line: 66, baseType: !98, size: 32, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "block_offset", scope: !246, file: !247, line: 66, baseType: !98, size: 32, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "block_address", scope: !246, file: !247, line: 67, baseType: !227, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_address", scope: !246, file: !247, line: 67, baseType: !227, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_block", scope: !246, file: !247, line: 68, baseType: !162, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_block", scope: !246, file: !247, line: 68, baseType: !162, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !246, file: !247, line: 69, baseType: !267, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "bgzf_cache_t", file: !247, line: 57, baseType: !269)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "bgzf_cache_t", file: !247, line: 57, flags: DIFlagFwdDecl)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !246, file: !247, line: 70, baseType: !271, size: 64, offset: 512)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "hFILE", file: !104, line: 58, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !246, file: !247, line: 71, baseType: !274, size: 64, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "bgzf_mtaux_t", file: !247, line: 55, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !246, file: !247, line: 72, baseType: !277, size: 64, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "bgzidx_t", file: !247, line: 56, baseType: !279)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "bgzidx_t", file: !247, line: 56, flags: DIFlagFwdDecl)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "idx_build_otf", scope: !246, file: !247, line: 73, baseType: !98, size: 32, offset: 704)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "gz_stream", scope: !246, file: !247, line: 74, baseType: !282, size: 64, offset: 768)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !247, line: 58, flags: DIFlagFwdDecl)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "seeked", scope: !246, file: !247, line: 75, baseType: !227, size: 64, offset: 832)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "cram", scope: !241, file: !104, line: 252, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "cram_fd", file: !104, line: 57, flags: DIFlagFwdDecl)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "hfile", scope: !241, file: !104, line: 253, baseType: !271, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !218, file: !104, line: 255, baseType: !162, size: 64, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !218, file: !104, line: 256, baseType: !291, size: 256, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "htsFormat", file: !104, line: 223, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htsFormat", file: !104, line: 216, size: 256, elements: !293)
!293 = !{!294, !295, !296, !302, !303, !304}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !292, file: !104, line: 217, baseType: !103, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !292, file: !104, line: 218, baseType: !113, size: 32, offset: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !292, file: !104, line: 219, baseType: !297, size: 32, offset: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !292, file: !104, line: 219, size: 32, elements: !298)
!298 = !{!299, !301}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !297, file: !104, line: 219, baseType: !300, size: 16)
!300 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !297, file: !104, line: 219, baseType: !300, size: 16, offset: 16)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !292, file: !104, line: 220, baseType: !138, size: 32, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "compression_level", scope: !292, file: !104, line: 221, baseType: !300, size: 16, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "specific", scope: !292, file: !104, line: 222, baseType: !162, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !218, file: !104, line: 257, baseType: !171, size: 64, offset: 832)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "fnidx", scope: !218, file: !104, line: 258, baseType: !307, size: 64, offset: 896)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "bam_header", scope: !218, file: !104, line: 259, baseType: !309, size: 64, offset: 960)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !218, file: !104, line: 260, baseType: !311, size: 64, offset: 1024)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "hts_filter_t", file: !104, line: 227, flags: DIFlagFwdDecl)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "fai", scope: !166, file: !165, line: 52, baseType: !314, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "faidx_t", file: !316, line: 71, baseType: !317)
!316 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/faidx.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "858bc49c28731a428b501e9a007eb69a")
!317 = !DICompositeType(tag: DW_TAG_structure_type, name: "faidx_t", file: !316, line: 69, flags: DIFlagFwdDecl)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "bca", scope: !166, file: !165, line: 53, baseType: !319, size: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "bcf_callaux_t", file: !321, line: 78, baseType: !322)
!321 = !DIFile(filename: "./bam2bcf.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build/aidengro/spack-stage-samtools-1.13-i7lpfd7rznpn2jrnaklwe67pg7qot4ru/spack-src", checksumkind: CSK_MD5, checksum: "45a114ee73d72734e0f163df74f437d2")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__bcf_callaux_t", file: !321, line: 61, size: 1536, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !333, !335, !336, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !352, !353, !354, !355, !356, !361, !365}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "capQ", scope: !322, file: !321, line: 62, baseType: !98, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "min_baseQ", scope: !322, file: !321, line: 62, baseType: !98, size: 32, offset: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "openQ", scope: !322, file: !321, line: 63, baseType: !98, size: 32, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "extQ", scope: !322, file: !321, line: 63, baseType: !98, size: 32, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tandemQ", scope: !322, file: !321, line: 63, baseType: !98, size: 32, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "min_support", scope: !322, file: !321, line: 64, baseType: !197, size: 32, offset: 160)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "max_support", scope: !322, file: !321, line: 64, baseType: !197, size: 32, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "min_frac", scope: !322, file: !321, line: 65, baseType: !332, size: 64, offset: 256)
!332 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "max_frac", scope: !322, file: !321, line: 66, baseType: !334, size: 32, offset: 320)
!334 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "per_sample_flt", scope: !322, file: !321, line: 67, baseType: !98, size: 32, offset: 352)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pos", scope: !322, file: !321, line: 68, baseType: !337, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "alt_pos", scope: !322, file: !321, line: 68, baseType: !337, size: 64, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "npos", scope: !322, file: !321, line: 68, baseType: !98, size: 32, offset: 512)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ref_mq", scope: !322, file: !321, line: 68, baseType: !337, size: 64, offset: 576)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "alt_mq", scope: !322, file: !321, line: 68, baseType: !337, size: 64, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ref_bq", scope: !322, file: !321, line: 68, baseType: !337, size: 64, offset: 704)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "alt_bq", scope: !322, file: !321, line: 68, baseType: !337, size: 64, offset: 768)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "fwd_mqs", scope: !322, file: !321, line: 68, baseType: !337, size: 64, offset: 832)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "rev_mqs", scope: !322, file: !321, line: 68, baseType: !337, size: 64, offset: 896)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "nqual", scope: !322, file: !321, line: 68, baseType: !98, size: 32, offset: 960)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "max_bases", scope: !322, file: !321, line: 70, baseType: !98, size: 32, offset: 992)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "indel_types", scope: !322, file: !321, line: 71, baseType: !349, size: 128, offset: 1024)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 4)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "maxins", scope: !322, file: !321, line: 72, baseType: !98, size: 32, offset: 1152)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "indelreg", scope: !322, file: !321, line: 72, baseType: !98, size: 32, offset: 1184)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !322, file: !321, line: 73, baseType: !98, size: 32, offset: 1216)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "inscns", scope: !322, file: !321, line: 74, baseType: !100, size: 64, offset: 1280)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !322, file: !321, line: 75, baseType: !357, size: 64, offset: 1344)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !198, line: 25, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !189, line: 40, baseType: !360)
!360 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !322, file: !321, line: 76, baseType: !362, size: 64, offset: 1408)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "errmod_t", file: !104, line: 1348, baseType: !364)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "errmod_t", file: !104, line: 1347, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "rghash", scope: !322, file: !321, line: 77, baseType: !162, size: 64, offset: 1472)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "left_pos", scope: !166, file: !165, line: 55, baseType: !367, size: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_pos_t", file: !104, line: 753, baseType: !227)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "last_pos", scope: !166, file: !165, line: 55, baseType: !367, size: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "l_ref", scope: !166, file: !165, line: 55, baseType: !367, size: 64, offset: 576)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "curr_tid", scope: !166, file: !165, line: 56, baseType: !98, size: 32, offset: 640)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ccol", scope: !166, file: !165, line: 56, baseType: !98, size: 32, offset: 672)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "row_shift", scope: !166, file: !165, line: 56, baseType: !98, size: 32, offset: 704)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "base_for", scope: !166, file: !165, line: 56, baseType: !98, size: 32, offset: 736)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "color_for", scope: !166, file: !165, line: 56, baseType: !98, size: 32, offset: 768)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "is_dot", scope: !166, file: !165, line: 56, baseType: !98, size: 32, offset: 800)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ins", scope: !166, file: !165, line: 56, baseType: !98, size: 32, offset: 832)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "no_skip", scope: !166, file: !165, line: 57, baseType: !98, size: 32, offset: 864)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "show_name", scope: !166, file: !165, line: 57, baseType: !98, size: 32, offset: 896)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "inverse", scope: !166, file: !165, line: 57, baseType: !98, size: 32, offset: 928)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !166, file: !165, line: 58, baseType: !100, size: 64, offset: 960)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rg_hash", scope: !166, file: !165, line: 60, baseType: !382, size: 64, offset: 1024)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_kh_rg_t", file: !165, line: 42, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kh_kh_rg_s", file: !165, line: 42, size: 320, elements: !385)
!385 = !{!386, !390, !391, !392, !393, !395, !398}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !384, file: !165, line: 42, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint_t", file: !388, line: 166, baseType: !389)
!388 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/htslib-1.13-3cptg6go643q7k5o3lqa333klizp6eek/include/htslib/khash.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build", checksumkind: CSK_MD5, checksum: "65a22945a6b0dd8c7e4297e6fc0b7826")
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint32_t", file: !388, line: 139, baseType: !105)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !384, file: !165, line: 42, baseType: !387, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !384, file: !165, line: 42, baseType: !387, size: 32, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !384, file: !165, line: 42, baseType: !387, size: 32, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !165, line: 42, baseType: !394, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !384, file: !165, line: 42, baseType: !396, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_cstr_t", file: !388, line: 639, baseType: !307)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !384, file: !165, line: 42, baseType: !399, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "my_destroy", scope: !166, file: !165, line: 62, baseType: !401, size: 64, offset: 1088)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !404}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "my_mvprintw", scope: !166, file: !165, line: 63, baseType: !406, size: 64, offset: 1152)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !404, !98, !98, !307, null}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "my_mvaddch", scope: !166, file: !165, line: 64, baseType: !410, size: 64, offset: 1216)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !404, !98, !98, !98}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "my_attron", scope: !166, file: !165, line: 65, baseType: !414, size: 64, offset: 1280)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !404, !98}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "my_attroff", scope: !166, file: !165, line: 66, baseType: !414, size: 64, offset: 1344)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "my_clear", scope: !166, file: !165, line: 67, baseType: !401, size: 64, offset: 1408)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "my_colorpair", scope: !166, file: !165, line: 68, baseType: !420, size: 64, offset: 1472)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!98, !404, !98}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "my_drawaln", scope: !166, file: !165, line: 69, baseType: !424, size: 64, offset: 1536)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!98, !404, !98, !367}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "my_loop", scope: !166, file: !165, line: 70, baseType: !428, size: 64, offset: 1600)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!98, !404}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "my_underline", scope: !166, file: !165, line: 71, baseType: !428, size: 64, offset: 1664)
!432 = !{!0, !7, !12, !18, !20, !25, !30, !35, !40, !45, !50, !55, !60, !62, !64, !66, !71, !73, !78, !83, !88, !433, !435, !437, !439, !444, !446, !451, !453, !93, !455, !457, !462, !467, !472, !477, !482, !487, !492, !497, !499, !501, !504, !509, !514, !516, !521, !526}
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !75, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !42, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !80, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !441, isLocal: true, isDefinition: true)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 18)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !75, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !448, isLocal: true, isDefinition: true)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 8)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !9, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !75, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !2, line: 452, type: !75, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !2, line: 456, type: !459, isLocal: true, isDefinition: true)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 24)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !2, line: 479, type: !464, isLocal: true, isDefinition: true)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 62)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !2, line: 489, type: !469, isLocal: true, isDefinition: true)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 53)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !2, line: 514, type: !474, isLocal: true, isDefinition: true)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 19)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !2, line: 524, type: !479, isLocal: true, isDefinition: true)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 39)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !484, isLocal: true, isDefinition: true)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 58)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !489, isLocal: true, isDefinition: true)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !490)
!490 = !{!491}
!491 = !DISubrange(count: 3)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !494, isLocal: true, isDefinition: true)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 22)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !489, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !489, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression(DW_OP_constu, 4605110762971426980, DW_OP_stack_value))
!502 = distinct !DIGlobalVariable(name: "__ac_HASH_UPPER", scope: !101, file: !388, line: 196, type: !503, isLocal: true, isDefinition: true)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !182, line: 1341, type: !506, isLocal: true, isDefinition: true)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 104, elements: !507)
!507 = !{!508}
!508 = !DISubrange(count: 13)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !182, line: 1341, type: !511, isLocal: true, isDefinition: true)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 23)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !182, line: 1341, type: !57, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !182, line: 1345, type: !518, isLocal: true, isDefinition: true)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 14)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !2, line: 411, type: !523, isLocal: true, isDefinition: true)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2672, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 334)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !2, line: 418, type: !3, isLocal: true, isDefinition: true)
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !551, !552, !555, !556, !557}
!529 = !DILocalVariable(name: "argc", arg: 1, scope: !95, file: !2, line: 438, type: !98)
!530 = !DILocalVariable(name: "argv", arg: 2, scope: !95, file: !2, line: 438, type: !99)
!531 = !DILocalVariable(name: "view_mode", scope: !95, file: !2, line: 440, type: !98)
!532 = !DILocalVariable(name: "display_width", scope: !95, file: !2, line: 440, type: !98)
!533 = !DILocalVariable(name: "tv", scope: !95, file: !2, line: 441, type: !163)
!534 = !DILocalVariable(name: "samples", scope: !95, file: !2, line: 442, type: !100)
!535 = !DILocalVariable(name: "position", scope: !95, file: !2, line: 442, type: !100)
!536 = !DILocalVariable(name: "ref", scope: !95, file: !2, line: 442, type: !100)
!537 = !DILocalVariable(name: "fn_idx", scope: !95, file: !2, line: 442, type: !100)
!538 = !DILocalVariable(name: "c", scope: !95, file: !2, line: 443, type: !98)
!539 = !DILocalVariable(name: "has_index_file", scope: !95, file: !2, line: 443, type: !98)
!540 = !DILocalVariable(name: "ref_index", scope: !95, file: !2, line: 443, type: !98)
!541 = !DILocalVariable(name: "ga", scope: !95, file: !2, line: 445, type: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "sam_global_args", file: !543, line: 39, baseType: !544)
!543 = !DIFile(filename: "./sam_opts.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build/aidengro/spack-stage-samtools-1.13-i7lpfd7rznpn2jrnaklwe67pg7qot4ru/spack-src", checksumkind: CSK_MD5, checksum: "2b38086da37a54b3b8875492f0298c0e")
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sam_global_args", file: !543, line: 33, size: 640, elements: !545)
!545 = !{!546, !547, !548, !549, !550}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !544, file: !543, line: 34, baseType: !291, size: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !544, file: !543, line: 35, baseType: !291, size: 256, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !544, file: !543, line: 36, baseType: !100, size: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !544, file: !543, line: 37, baseType: !98, size: 32, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "write_index", scope: !544, file: !543, line: 38, baseType: !98, size: 32, offset: 608)
!551 = !DILocalVariable(name: "tmp", scope: !95, file: !2, line: 451, type: !100)
!552 = !DILocalVariable(name: "tid", scope: !553, file: !2, line: 520, type: !98)
!553 = distinct !DILexicalBlock(scope: !554, file: !2, line: 519, column: 5)
!554 = distinct !DILexicalBlock(scope: !95, file: !2, line: 518, column: 10)
!555 = !DILocalVariable(name: "beg", scope: !553, file: !2, line: 521, type: !367)
!556 = !DILocalVariable(name: "end", scope: !553, file: !2, line: 521, type: !367)
!557 = !DILocalVariable(name: "i", scope: !558, file: !2, line: 533, type: !98)
!558 = distinct !DILexicalBlock(scope: !559, file: !2, line: 531, column: 5)
!559 = distinct !DILexicalBlock(scope: !554, file: !2, line: 530, column: 15)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 2304, elements: !5)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !563, line: 50, size: 256, elements: !564)
!563 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!564 = !{!565, !566, !567, !568}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !562, file: !563, line: 52, baseType: !307, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !562, file: !563, line: 55, baseType: !98, size: 32, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !562, file: !563, line: 56, baseType: !337, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !562, file: !563, line: 57, baseType: !98, size: 32, offset: 192)
!569 = !{i32 7, !"Dwarf Version", i32 5}
!570 = !{i32 2, !"Debug Info Version", i32 3}
!571 = !{i32 1, !"wchar_size", i32 4}
!572 = !{i32 8, !"PIC Level", i32 2}
!573 = !{i32 7, !"PIE Level", i32 2}
!574 = !{i32 7, !"uwtable", i32 2}
!575 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!576 = distinct !DISubprogram(name: "base_tv_init", scope: !2, file: !2, line: 103, type: !577, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !581)
!577 = !DISubroutineType(types: !578)
!578 = !{!98, !163, !307, !307, !307, !307, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!581 = !{!582, !583, !584, !585, !586, !587}
!582 = !DILocalVariable(name: "tv", arg: 1, scope: !576, file: !2, line: 103, type: !163)
!583 = !DILocalVariable(name: "fn", arg: 2, scope: !576, file: !2, line: 103, type: !307)
!584 = !DILocalVariable(name: "fn_fa", arg: 3, scope: !576, file: !2, line: 103, type: !307)
!585 = !DILocalVariable(name: "fn_idx", arg: 4, scope: !576, file: !2, line: 103, type: !307)
!586 = !DILocalVariable(name: "samples", arg: 5, scope: !576, file: !2, line: 104, type: !307)
!587 = !DILocalVariable(name: "fmt", arg: 6, scope: !576, file: !2, line: 104, type: !579)
!588 = !{!589, !589, i64 0}
!589 = !{!"any pointer", !590, i64 0}
!590 = !{!"omnipotent char", !591, i64 0}
!591 = !{!"Simple C/C++ TBAA"}
!592 = !DILocation(line: 103, column: 27, scope: !576)
!593 = !DILocation(line: 103, column: 43, scope: !576)
!594 = !DILocation(line: 103, column: 59, scope: !576)
!595 = !DILocation(line: 103, column: 78, scope: !576)
!596 = !DILocation(line: 104, column: 30, scope: !576)
!597 = !DILocation(line: 104, column: 56, scope: !576)
!598 = !DILocation(line: 106, column: 5, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !2, line: 106, column: 5)
!600 = distinct !DILexicalBlock(scope: !576, file: !2, line: 106, column: 5)
!601 = !DILocation(line: 106, column: 5, scope: !600)
!602 = !DILocation(line: 107, column: 5, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !2, line: 107, column: 5)
!604 = distinct !DILexicalBlock(scope: !576, file: !2, line: 107, column: 5)
!605 = !DILocation(line: 107, column: 5, scope: !604)
!606 = !DILocation(line: 108, column: 5, scope: !576)
!607 = !DILocation(line: 108, column: 9, scope: !576)
!608 = !DILocation(line: 108, column: 14, scope: !576)
!609 = !{!610, !611, i64 0}
!610 = !{!"AbstractTview", !611, i64 0, !611, i64 4, !589, i64 8, !589, i64 16, !589, i64 24, !589, i64 32, !589, i64 40, !589, i64 48, !612, i64 56, !612, i64 64, !612, i64 72, !611, i64 80, !611, i64 84, !611, i64 88, !611, i64 92, !611, i64 96, !611, i64 100, !611, i64 104, !611, i64 108, !611, i64 112, !611, i64 116, !589, i64 120, !589, i64 128, !589, i64 136, !589, i64 144, !589, i64 152, !589, i64 160, !589, i64 168, !589, i64 176, !589, i64 184, !589, i64 192, !589, i64 200, !589, i64 208}
!611 = !{!"int", !590, i64 0}
!612 = !{!"long", !590, i64 0}
!613 = !DILocation(line: 108, column: 20, scope: !576)
!614 = !DILocation(line: 108, column: 24, scope: !576)
!615 = !DILocation(line: 108, column: 29, scope: !576)
!616 = !{!610, !611, i64 4}
!617 = !DILocation(line: 109, column: 5, scope: !576)
!618 = !DILocation(line: 109, column: 9, scope: !576)
!619 = !DILocation(line: 109, column: 19, scope: !576)
!620 = !{!610, !611, i64 96}
!621 = !DILocation(line: 110, column: 5, scope: !576)
!622 = !DILocation(line: 110, column: 9, scope: !576)
!623 = !DILocation(line: 110, column: 16, scope: !576)
!624 = !{!610, !611, i64 100}
!625 = !DILocation(line: 112, column: 14, scope: !576)
!626 = !DILocation(line: 112, column: 5, scope: !576)
!627 = !DILocation(line: 112, column: 9, scope: !576)
!628 = !DILocation(line: 112, column: 12, scope: !576)
!629 = !{!610, !589, i64 32}
!630 = !DILocation(line: 113, column: 8, scope: !631)
!631 = distinct !DILexicalBlock(scope: !576, file: !2, line: 113, column: 8)
!632 = !DILocation(line: 113, column: 12, scope: !631)
!633 = !DILocation(line: 113, column: 15, scope: !631)
!634 = !DILocation(line: 113, column: 8, scope: !576)
!635 = !DILocation(line: 115, column: 57, scope: !636)
!636 = distinct !DILexicalBlock(scope: !631, file: !2, line: 114, column: 5)
!637 = !DILocation(line: 115, column: 9, scope: !636)
!638 = !DILocation(line: 116, column: 9, scope: !636)
!639 = !DILocation(line: 119, column: 5, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !2, line: 119, column: 5)
!641 = distinct !DILexicalBlock(scope: !576, file: !2, line: 119, column: 5)
!642 = !DILocation(line: 119, column: 5, scope: !641)
!643 = !DILocation(line: 121, column: 31, scope: !576)
!644 = !DILocation(line: 121, column: 35, scope: !576)
!645 = !DILocation(line: 121, column: 18, scope: !576)
!646 = !DILocation(line: 121, column: 5, scope: !576)
!647 = !DILocation(line: 121, column: 9, scope: !576)
!648 = !DILocation(line: 121, column: 16, scope: !576)
!649 = !{!610, !589, i64 24}
!650 = !DILocation(line: 122, column: 8, scope: !651)
!651 = distinct !DILexicalBlock(scope: !576, file: !2, line: 122, column: 8)
!652 = !DILocation(line: 122, column: 12, scope: !651)
!653 = !DILocation(line: 122, column: 19, scope: !651)
!654 = !DILocation(line: 122, column: 8, scope: !576)
!655 = !DILocation(line: 124, column: 52, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !2, line: 123, column: 5)
!657 = !DILocation(line: 124, column: 9, scope: !656)
!658 = !DILocation(line: 125, column: 9, scope: !656)
!659 = !DILocation(line: 128, column: 9, scope: !660)
!660 = distinct !DILexicalBlock(scope: !576, file: !2, line: 128, column: 9)
!661 = !DILocation(line: 128, column: 16, scope: !660)
!662 = !DILocation(line: 128, column: 9, scope: !576)
!663 = !DILocation(line: 129, column: 35, scope: !664)
!664 = distinct !DILexicalBlock(scope: !660, file: !2, line: 128, column: 25)
!665 = !DILocation(line: 129, column: 39, scope: !664)
!666 = !DILocation(line: 129, column: 43, scope: !664)
!667 = !DILocation(line: 129, column: 47, scope: !664)
!668 = !DILocation(line: 129, column: 19, scope: !664)
!669 = !DILocation(line: 129, column: 9, scope: !664)
!670 = !DILocation(line: 129, column: 13, scope: !664)
!671 = !DILocation(line: 129, column: 17, scope: !664)
!672 = !{!610, !589, i64 8}
!673 = !DILocation(line: 130, column: 5, scope: !664)
!674 = !DILocation(line: 131, column: 34, scope: !675)
!675 = distinct !DILexicalBlock(scope: !660, file: !2, line: 130, column: 12)
!676 = !DILocation(line: 131, column: 38, scope: !675)
!677 = !DILocation(line: 131, column: 42, scope: !675)
!678 = !DILocation(line: 131, column: 19, scope: !675)
!679 = !DILocation(line: 131, column: 9, scope: !675)
!680 = !DILocation(line: 131, column: 13, scope: !675)
!681 = !DILocation(line: 131, column: 17, scope: !675)
!682 = !DILocation(line: 134, column: 9, scope: !683)
!683 = distinct !DILexicalBlock(scope: !576, file: !2, line: 134, column: 9)
!684 = !DILocation(line: 134, column: 13, scope: !683)
!685 = !DILocation(line: 134, column: 17, scope: !683)
!686 = !DILocation(line: 134, column: 9, scope: !576)
!687 = !DILocation(line: 136, column: 62, scope: !688)
!688 = distinct !DILexicalBlock(scope: !683, file: !2, line: 135, column: 5)
!689 = !DILocation(line: 136, column: 9, scope: !688)
!690 = !DILocation(line: 137, column: 9, scope: !688)
!691 = !DILocation(line: 139, column: 46, scope: !576)
!692 = !DILocation(line: 139, column: 18, scope: !576)
!693 = !DILocation(line: 139, column: 5, scope: !576)
!694 = !DILocation(line: 139, column: 9, scope: !576)
!695 = !DILocation(line: 139, column: 16, scope: !576)
!696 = !{!610, !589, i64 16}
!697 = !DILocation(line: 140, column: 9, scope: !698)
!698 = distinct !DILexicalBlock(scope: !576, file: !2, line: 140, column: 9)
!699 = !DILocation(line: 140, column: 9, scope: !576)
!700 = !DILocation(line: 140, column: 35, scope: !698)
!701 = !DILocation(line: 140, column: 26, scope: !698)
!702 = !DILocation(line: 140, column: 16, scope: !698)
!703 = !DILocation(line: 140, column: 20, scope: !698)
!704 = !DILocation(line: 140, column: 24, scope: !698)
!705 = !{!610, !589, i64 40}
!706 = !DILocation(line: 141, column: 15, scope: !576)
!707 = !DILocation(line: 141, column: 5, scope: !576)
!708 = !DILocation(line: 141, column: 9, scope: !576)
!709 = !DILocation(line: 141, column: 13, scope: !576)
!710 = !{!610, !589, i64 48}
!711 = !DILocation(line: 142, column: 5, scope: !576)
!712 = !DILocation(line: 142, column: 9, scope: !576)
!713 = !DILocation(line: 142, column: 13, scope: !576)
!714 = !{!610, !611, i64 104}
!715 = !DILocation(line: 145, column: 10, scope: !716)
!716 = distinct !DILexicalBlock(scope: !576, file: !2, line: 145, column: 10)
!717 = !DILocation(line: 145, column: 10, scope: !576)
!718 = !DILocation(line: 147, column: 37, scope: !719)
!719 = distinct !DILexicalBlock(scope: !716, file: !2, line: 146, column: 5)
!720 = !DILocation(line: 147, column: 41, scope: !719)
!721 = !DILocation(line: 147, column: 49, scope: !719)
!722 = !DILocation(line: 147, column: 23, scope: !719)
!723 = !DILocation(line: 147, column: 9, scope: !719)
!724 = !DILocation(line: 147, column: 13, scope: !719)
!725 = !DILocation(line: 147, column: 21, scope: !719)
!726 = !{!610, !589, i64 128}
!727 = !DILocation(line: 148, column: 13, scope: !728)
!728 = distinct !DILexicalBlock(scope: !719, file: !2, line: 148, column: 13)
!729 = !{!730, !611, i64 4}
!730 = !{!"kh_kh_rg_s", !611, i64 0, !611, i64 4, !611, i64 8, !611, i64 12, !589, i64 16, !589, i64 24, !589, i64 32}
!731 = !DILocation(line: 148, column: 34, scope: !728)
!732 = !DILocation(line: 148, column: 13, scope: !719)
!733 = !DILocation(line: 151, column: 25, scope: !734)
!734 = distinct !DILexicalBlock(scope: !728, file: !2, line: 148, column: 40)
!735 = !DILocation(line: 149, column: 13, scope: !734)
!736 = !DILocation(line: 152, column: 13, scope: !734)
!737 = !DILocation(line: 154, column: 5, scope: !719)
!738 = !DILocation(line: 156, column: 5, scope: !576)
!739 = !DISubprogram(name: "__assert_fail", scope: !740, file: !740, line: 69, type: !741, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!740 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!741 = !DISubroutineType(types: !742)
!742 = !{null, !307, !307, !105, !307}
!743 = !DISubprogram(name: "hts_open_format", scope: !104, file: !104, line: 592, type: !744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!744 = !DISubroutineType(types: !745)
!745 = !{!746, !307, !307, !579}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!747 = !DISubprogram(name: "print_error_errno", scope: !748, file: !748, line: 36, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!748 = !DIFile(filename: "./samtools.h", directory: "/local-ssd/samtools-i7lpfd7rznpn2jrnaklwe67pg7qot4ru-build/aidengro/spack-stage-samtools-1.13-i7lpfd7rznpn2jrnaklwe67pg7qot4ru/spack-src", checksumkind: CSK_MD5, checksum: "a779e61124e956dfb3b0bc9d6698083d")
!749 = !DISubroutineType(types: !750)
!750 = !{null, !307, !307, null}
!751 = !DISubprogram(name: "exit", scope: !752, file: !752, line: 624, type: !753, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!752 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!753 = !DISubroutineType(types: !754)
!754 = !{null, !98}
!755 = !DISubprogram(name: "sam_hdr_read", scope: !182, file: !182, line: 421, type: !756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!756 = !DISubroutineType(types: !757)
!757 = !{!180, !215}
!758 = !DISubprogram(name: "print_error", scope: !748, file: !748, line: 35, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!759 = !DISubprogram(name: "sam_index_load2", scope: !182, file: !182, line: 1186, type: !760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!760 = !DISubroutineType(types: !761)
!761 = !{!171, !746, !307, !307}
!762 = !DISubprogram(name: "sam_index_load", scope: !182, file: !182, line: 1175, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!763 = !DISubroutineType(types: !764)
!764 = !{!171, !746, !307}
!765 = !DISubprogram(name: "bam_lplbuf_init", scope: !177, file: !177, line: 46, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!766 = !DISubroutineType(types: !767)
!767 = !{!175, !768, !162}
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam_pileup_f", file: !177, line: 36, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!98, !197, !367, !98, !772, !162}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam_pileup1_t", file: !182, line: 1902, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bam_pileup1_t", file: !182, line: 1895, size: 320, elements: !776)
!776 = !{!777, !809, !810, !811, !812, !813, !814, !815, !816, !817, !824}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !775, file: !182, line: 1896, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam1_t", file: !182, line: 252, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bam1_t", file: !182, line: 245, size: 640, elements: !781)
!781 = !{!782, !801, !804, !806, !807, !808}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !780, file: !182, line: 246, baseType: !783, size: 384)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam1_core_t", file: !182, line: 219, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bam1_core_t", file: !182, line: 206, size: 384, elements: !785)
!785 = !{!786, !787, !788, !789, !793, !794, !795, !796, !797, !798, !799, !800}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !784, file: !182, line: 207, baseType: !367, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !784, file: !182, line: 208, baseType: !186, size: 32, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "bin", scope: !784, file: !182, line: 209, baseType: !358, size: 16, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "qual", scope: !784, file: !182, line: 210, baseType: !790, size: 8, offset: 112)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !198, line: 24, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !189, line: 38, baseType: !792)
!792 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "l_extranul", scope: !784, file: !182, line: 211, baseType: !790, size: 8, offset: 120)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !784, file: !182, line: 212, baseType: !358, size: 16, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "l_qname", scope: !784, file: !182, line: 213, baseType: !358, size: 16, offset: 144)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "n_cigar", scope: !784, file: !182, line: 214, baseType: !197, size: 32, offset: 160)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "l_qseq", scope: !784, file: !182, line: 215, baseType: !186, size: 32, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mtid", scope: !784, file: !182, line: 216, baseType: !186, size: 32, offset: 224)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mpos", scope: !784, file: !182, line: 217, baseType: !367, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "isize", scope: !784, file: !182, line: 218, baseType: !367, size: 64, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !780, file: !182, line: 247, baseType: !802, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !198, line: 27, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !189, line: 45, baseType: !194)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !780, file: !182, line: 248, baseType: !805, size: 64, offset: 448)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "l_data", scope: !780, file: !182, line: 249, baseType: !98, size: 32, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "m_data", scope: !780, file: !182, line: 250, baseType: !197, size: 32, offset: 544)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !780, file: !182, line: 251, baseType: !197, size: 2, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "qpos", scope: !775, file: !182, line: 1897, baseType: !186, size: 32, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "indel", scope: !775, file: !182, line: 1898, baseType: !98, size: 32, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !775, file: !182, line: 1898, baseType: !98, size: 32, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "is_del", scope: !775, file: !182, line: 1899, baseType: !197, size: 1, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "is_head", scope: !775, file: !182, line: 1899, baseType: !197, size: 1, offset: 161, flags: DIFlagBitField, extraData: i64 160)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "is_tail", scope: !775, file: !182, line: 1899, baseType: !197, size: 1, offset: 162, flags: DIFlagBitField, extraData: i64 160)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "is_refskip", scope: !775, file: !182, line: 1899, baseType: !197, size: 1, offset: 163, flags: DIFlagBitField, extraData: i64 160)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !775, file: !182, line: 1899, baseType: !197, size: 27, offset: 165, flags: DIFlagBitField, extraData: i64 160)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !775, file: !182, line: 1900, baseType: !818, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam_pileup_cd", file: !182, line: 1874, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !182, line: 1870, size: 64, elements: !820)
!820 = !{!821, !822, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !819, file: !182, line: 1871, baseType: !162, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !819, file: !182, line: 1872, baseType: !227, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !819, file: !182, line: 1873, baseType: !332, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "cigar_ind", scope: !775, file: !182, line: 1901, baseType: !98, size: 32, offset: 256)
!825 = distinct !DISubprogram(name: "tv_pl_func", scope: !2, file: !2, line: 173, type: !770, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !826)
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !861, !862, !863, !864, !865, !867, !868, !871, !876, !879, !884, !887, !892, !898, !899, !906, !907, !916, !920, !925, !927, !932, !934, !941, !945, !950, !952, !957, !960, !962, !967, !969}
!827 = !DILocalVariable(name: "tid", arg: 1, scope: !825, file: !2, line: 173, type: !197)
!828 = !DILocalVariable(name: "pos", arg: 2, scope: !825, file: !2, line: 173, type: !367)
!829 = !DILocalVariable(name: "n", arg: 3, scope: !825, file: !2, line: 173, type: !98)
!830 = !DILocalVariable(name: "pl", arg: 4, scope: !825, file: !2, line: 173, type: !772)
!831 = !DILocalVariable(name: "data", arg: 5, scope: !825, file: !2, line: 173, type: !162)
!832 = !DILocalVariable(name: "tv", scope: !825, file: !2, line: 175, type: !163)
!833 = !DILocalVariable(name: "cp", scope: !825, file: !2, line: 176, type: !367)
!834 = !DILocalVariable(name: "i", scope: !825, file: !2, line: 177, type: !98)
!835 = !DILocalVariable(name: "j", scope: !825, file: !2, line: 177, type: !98)
!836 = !DILocalVariable(name: "c", scope: !825, file: !2, line: 177, type: !98)
!837 = !DILocalVariable(name: "rb", scope: !825, file: !2, line: 177, type: !98)
!838 = !DILocalVariable(name: "attr", scope: !825, file: !2, line: 177, type: !98)
!839 = !DILocalVariable(name: "max_ins", scope: !825, file: !2, line: 177, type: !98)
!840 = !DILocalVariable(name: "interval", scope: !825, file: !2, line: 177, type: !98)
!841 = !DILocalVariable(name: "call", scope: !825, file: !2, line: 178, type: !197)
!842 = !DILocalVariable(name: "ks", scope: !825, file: !2, line: 179, type: !231)
!843 = !DILocalVariable(name: "bcr", scope: !844, file: !2, line: 192, type: !845)
!844 = distinct !DILexicalBlock(scope: !825, file: !2, line: 191, column: 5)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "bcf_callret1_t", file: !321, line: 99, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 80, size: 2176, elements: !847)
!847 = !{!848, !849, !850, !852, !853, !855, !857}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ori_depth", scope: !846, file: !321, line: 81, baseType: !197, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "mq0", scope: !846, file: !321, line: 82, baseType: !105, size: 32, offset: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ADF", scope: !846, file: !321, line: 83, baseType: !851, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !846, file: !321, line: 83, baseType: !851, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "qsum", scope: !846, file: !321, line: 84, baseType: !854, size: 128, offset: 192)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 128, elements: !350)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "anno", scope: !846, file: !321, line: 97, baseType: !856, size: 1024, offset: 320)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 1024, elements: !33)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !846, file: !321, line: 98, baseType: !858, size: 800, offset: 1344)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 800, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 25)
!861 = !DILocalVariable(name: "qsum", scope: !844, file: !2, line: 194, type: !349)
!862 = !DILocalVariable(name: "a1", scope: !844, file: !2, line: 194, type: !98)
!863 = !DILocalVariable(name: "a2", scope: !844, file: !2, line: 194, type: !98)
!864 = !DILocalVariable(name: "tmp", scope: !844, file: !2, line: 194, type: !98)
!865 = !DILocalVariable(name: "p", scope: !844, file: !2, line: 195, type: !866)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 192, elements: !490)
!867 = !DILocalVariable(name: "prior", scope: !844, file: !2, line: 195, type: !332)
!868 = !DILocalVariable(name: "__res", scope: !869, file: !2, line: 203, type: !98)
!869 = distinct !DILexicalBlock(scope: !870, file: !2, line: 203, column: 27)
!870 = distinct !DILexicalBlock(scope: !844, file: !2, line: 203, column: 13)
!871 = !DILocalVariable(name: "__c", scope: !872, file: !2, line: 203, type: !98)
!872 = distinct !DILexicalBlock(scope: !873, file: !2, line: 203, column: 27)
!873 = distinct !DILexicalBlock(scope: !874, file: !2, line: 203, column: 27)
!874 = distinct !DILexicalBlock(scope: !875, file: !2, line: 203, column: 27)
!875 = distinct !DILexicalBlock(scope: !869, file: !2, line: 203, column: 27)
!876 = !DILocalVariable(name: "__res", scope: !877, file: !2, line: 204, type: !98)
!877 = distinct !DILexicalBlock(scope: !878, file: !2, line: 204, column: 27)
!878 = distinct !DILexicalBlock(scope: !844, file: !2, line: 204, column: 13)
!879 = !DILocalVariable(name: "__c", scope: !880, file: !2, line: 204, type: !98)
!880 = distinct !DILexicalBlock(scope: !881, file: !2, line: 204, column: 27)
!881 = distinct !DILexicalBlock(scope: !882, file: !2, line: 204, column: 27)
!882 = distinct !DILexicalBlock(scope: !883, file: !2, line: 204, column: 27)
!883 = distinct !DILexicalBlock(scope: !877, file: !2, line: 204, column: 27)
!884 = !DILocalVariable(name: "__res", scope: !885, file: !2, line: 214, type: !98)
!885 = distinct !DILexicalBlock(scope: !886, file: !2, line: 214, column: 14)
!886 = distinct !DILexicalBlock(scope: !825, file: !2, line: 214, column: 9)
!887 = !DILocalVariable(name: "__c", scope: !888, file: !2, line: 214, type: !98)
!888 = distinct !DILexicalBlock(scope: !889, file: !2, line: 214, column: 14)
!889 = distinct !DILexicalBlock(scope: !890, file: !2, line: 214, column: 14)
!890 = distinct !DILexicalBlock(scope: !891, file: !2, line: 214, column: 14)
!891 = distinct !DILexicalBlock(scope: !885, file: !2, line: 214, column: 14)
!892 = !DILocalVariable(name: "p", scope: !893, file: !2, line: 221, type: !772)
!893 = distinct !DILexicalBlock(scope: !894, file: !2, line: 220, column: 33)
!894 = distinct !DILexicalBlock(scope: !895, file: !2, line: 220, column: 9)
!895 = distinct !DILexicalBlock(scope: !896, file: !2, line: 220, column: 9)
!896 = distinct !DILexicalBlock(scope: !897, file: !2, line: 218, column: 17)
!897 = distinct !DILexicalBlock(scope: !825, file: !2, line: 218, column: 8)
!898 = !DILocalVariable(name: "len", scope: !893, file: !2, line: 222, type: !98)
!899 = !DILocalVariable(name: "p", scope: !900, file: !2, line: 233, type: !772)
!900 = distinct !DILexicalBlock(scope: !901, file: !2, line: 232, column: 33)
!901 = distinct !DILexicalBlock(scope: !902, file: !2, line: 232, column: 9)
!902 = distinct !DILexicalBlock(scope: !903, file: !2, line: 232, column: 9)
!903 = distinct !DILexicalBlock(scope: !904, file: !2, line: 231, column: 36)
!904 = distinct !DILexicalBlock(scope: !905, file: !2, line: 231, column: 5)
!905 = distinct !DILexicalBlock(scope: !825, file: !2, line: 231, column: 5)
!906 = !DILocalVariable(name: "row", scope: !900, file: !2, line: 234, type: !98)
!907 = !DILocalVariable(name: "name", scope: !908, file: !2, line: 243, type: !100)
!908 = distinct !DILexicalBlock(scope: !909, file: !2, line: 242, column: 44)
!909 = distinct !DILexicalBlock(scope: !910, file: !2, line: 242, column: 29)
!910 = distinct !DILexicalBlock(scope: !911, file: !2, line: 241, column: 28)
!911 = distinct !DILexicalBlock(scope: !912, file: !2, line: 237, column: 25)
!912 = distinct !DILexicalBlock(scope: !913, file: !2, line: 236, column: 33)
!913 = distinct !DILexicalBlock(scope: !914, file: !2, line: 236, column: 21)
!914 = distinct !DILexicalBlock(scope: !915, file: !2, line: 235, column: 25)
!915 = distinct !DILexicalBlock(scope: !900, file: !2, line: 235, column: 17)
!916 = !DILocalVariable(name: "__res", scope: !917, file: !2, line: 247, type: !98)
!917 = distinct !DILexicalBlock(scope: !918, file: !2, line: 247, column: 47)
!918 = distinct !DILexicalBlock(scope: !919, file: !2, line: 247, column: 33)
!919 = distinct !DILexicalBlock(scope: !909, file: !2, line: 245, column: 32)
!920 = !DILocalVariable(name: "__c", scope: !921, file: !2, line: 247, type: !98)
!921 = distinct !DILexicalBlock(scope: !922, file: !2, line: 247, column: 47)
!922 = distinct !DILexicalBlock(scope: !923, file: !2, line: 247, column: 47)
!923 = distinct !DILexicalBlock(scope: !924, file: !2, line: 247, column: 47)
!924 = distinct !DILexicalBlock(scope: !917, file: !2, line: 247, column: 47)
!925 = !DILocalVariable(name: "__res", scope: !926, file: !2, line: 247, type: !98)
!926 = distinct !DILexicalBlock(scope: !918, file: !2, line: 247, column: 61)
!927 = !DILocalVariable(name: "__c", scope: !928, file: !2, line: 247, type: !98)
!928 = distinct !DILexicalBlock(scope: !929, file: !2, line: 247, column: 61)
!929 = distinct !DILexicalBlock(scope: !930, file: !2, line: 247, column: 61)
!930 = distinct !DILexicalBlock(scope: !931, file: !2, line: 247, column: 61)
!931 = distinct !DILexicalBlock(scope: !926, file: !2, line: 247, column: 61)
!932 = !DILocalVariable(name: "len", scope: !933, file: !2, line: 252, type: !98)
!933 = distinct !DILexicalBlock(scope: !915, file: !2, line: 251, column: 20)
!934 = !DILocalVariable(name: "name", scope: !935, file: !2, line: 262, type: !100)
!935 = distinct !DILexicalBlock(scope: !936, file: !2, line: 261, column: 44)
!936 = distinct !DILexicalBlock(scope: !937, file: !2, line: 261, column: 29)
!937 = distinct !DILexicalBlock(scope: !938, file: !2, line: 260, column: 56)
!938 = distinct !DILexicalBlock(scope: !939, file: !2, line: 260, column: 25)
!939 = distinct !DILexicalBlock(scope: !940, file: !2, line: 259, column: 22)
!940 = distinct !DILexicalBlock(scope: !933, file: !2, line: 258, column: 21)
!941 = !DILocalVariable(name: "__res", scope: !942, file: !2, line: 266, type: !98)
!942 = distinct !DILexicalBlock(scope: !943, file: !2, line: 266, column: 57)
!943 = distinct !DILexicalBlock(scope: !944, file: !2, line: 266, column: 33)
!944 = distinct !DILexicalBlock(scope: !936, file: !2, line: 264, column: 32)
!945 = !DILocalVariable(name: "__c", scope: !946, file: !2, line: 266, type: !98)
!946 = distinct !DILexicalBlock(scope: !947, file: !2, line: 266, column: 57)
!947 = distinct !DILexicalBlock(scope: !948, file: !2, line: 266, column: 57)
!948 = distinct !DILexicalBlock(scope: !949, file: !2, line: 266, column: 57)
!949 = distinct !DILexicalBlock(scope: !942, file: !2, line: 266, column: 57)
!950 = !DILocalVariable(name: "__res", scope: !951, file: !2, line: 266, type: !98)
!951 = distinct !DILexicalBlock(scope: !943, file: !2, line: 266, column: 71)
!952 = !DILocalVariable(name: "__c", scope: !953, file: !2, line: 266, type: !98)
!953 = distinct !DILexicalBlock(scope: !954, file: !2, line: 266, column: 71)
!954 = distinct !DILexicalBlock(scope: !955, file: !2, line: 266, column: 71)
!955 = distinct !DILexicalBlock(scope: !956, file: !2, line: 266, column: 71)
!956 = distinct !DILexicalBlock(scope: !951, file: !2, line: 266, column: 71)
!957 = !DILocalVariable(name: "x", scope: !958, file: !2, line: 275, type: !98)
!958 = distinct !DILexicalBlock(scope: !959, file: !2, line: 274, column: 56)
!959 = distinct !DILexicalBlock(scope: !900, file: !2, line: 274, column: 17)
!960 = !DILocalVariable(name: "__res", scope: !961, file: !2, line: 310, type: !98)
!961 = distinct !DILexicalBlock(scope: !958, file: !2, line: 310, column: 68)
!962 = !DILocalVariable(name: "__c", scope: !963, file: !2, line: 310, type: !98)
!963 = distinct !DILexicalBlock(scope: !964, file: !2, line: 310, column: 68)
!964 = distinct !DILexicalBlock(scope: !965, file: !2, line: 310, column: 68)
!965 = distinct !DILexicalBlock(scope: !966, file: !2, line: 310, column: 68)
!966 = distinct !DILexicalBlock(scope: !961, file: !2, line: 310, column: 68)
!967 = !DILocalVariable(name: "__res", scope: !968, file: !2, line: 310, type: !98)
!968 = distinct !DILexicalBlock(scope: !958, file: !2, line: 310, column: 81)
!969 = !DILocalVariable(name: "__c", scope: !970, file: !2, line: 310, type: !98)
!970 = distinct !DILexicalBlock(scope: !971, file: !2, line: 310, column: 81)
!971 = distinct !DILexicalBlock(scope: !972, file: !2, line: 310, column: 81)
!972 = distinct !DILexicalBlock(scope: !973, file: !2, line: 310, column: 81)
!973 = distinct !DILexicalBlock(scope: !968, file: !2, line: 310, column: 81)
!974 = !{!611, !611, i64 0}
!975 = !DILocation(line: 173, column: 25, scope: !825)
!976 = !{!612, !612, i64 0}
!977 = !DILocation(line: 173, column: 40, scope: !825)
!978 = !DILocation(line: 173, column: 49, scope: !825)
!979 = !DILocation(line: 173, column: 73, scope: !825)
!980 = !DILocation(line: 173, column: 83, scope: !825)
!981 = !DILocation(line: 175, column: 5, scope: !825)
!982 = !DILocation(line: 175, column: 14, scope: !825)
!983 = !DILocation(line: 175, column: 29, scope: !825)
!984 = !DILocation(line: 176, column: 5, scope: !825)
!985 = !DILocation(line: 176, column: 15, scope: !825)
!986 = !DILocation(line: 177, column: 5, scope: !825)
!987 = !DILocation(line: 177, column: 9, scope: !825)
!988 = !DILocation(line: 177, column: 12, scope: !825)
!989 = !DILocation(line: 177, column: 15, scope: !825)
!990 = !DILocation(line: 177, column: 18, scope: !825)
!991 = !DILocation(line: 177, column: 22, scope: !825)
!992 = !DILocation(line: 177, column: 28, scope: !825)
!993 = !DILocation(line: 177, column: 41, scope: !825)
!994 = !DILocation(line: 178, column: 5, scope: !825)
!995 = !DILocation(line: 178, column: 14, scope: !825)
!996 = !DILocation(line: 179, column: 5, scope: !825)
!997 = !DILocation(line: 179, column: 15, scope: !825)
!998 = !DILocation(line: 180, column: 9, scope: !999)
!999 = distinct !DILexicalBlock(scope: !825, file: !2, line: 180, column: 9)
!1000 = !DILocation(line: 180, column: 15, scope: !999)
!1001 = !DILocation(line: 180, column: 19, scope: !999)
!1002 = !{!610, !612, i64 56}
!1003 = !DILocation(line: 180, column: 13, scope: !999)
!1004 = !DILocation(line: 180, column: 28, scope: !999)
!1005 = !DILocation(line: 180, column: 31, scope: !999)
!1006 = !DILocation(line: 180, column: 35, scope: !999)
!1007 = !{!610, !611, i64 84}
!1008 = !DILocation(line: 180, column: 42, scope: !999)
!1009 = !DILocation(line: 180, column: 46, scope: !999)
!1010 = !DILocation(line: 180, column: 40, scope: !999)
!1011 = !DILocation(line: 180, column: 9, scope: !825)
!1012 = !DILocation(line: 180, column: 52, scope: !999)
!1013 = !DILocation(line: 182, column: 11, scope: !825)
!1014 = !DILocation(line: 182, column: 15, scope: !825)
!1015 = !{!610, !589, i64 120}
!1016 = !DILocation(line: 182, column: 19, scope: !825)
!1017 = !DILocation(line: 182, column: 22, scope: !825)
!1018 = !DILocation(line: 182, column: 28, scope: !825)
!1019 = !DILocation(line: 182, column: 32, scope: !825)
!1020 = !DILocation(line: 182, column: 26, scope: !825)
!1021 = !DILocation(line: 182, column: 43, scope: !825)
!1022 = !DILocation(line: 182, column: 47, scope: !825)
!1023 = !{!610, !612, i64 72}
!1024 = !DILocation(line: 182, column: 41, scope: !825)
!1025 = !DILocation(line: 182, column: 10, scope: !825)
!1026 = !DILocation(line: 182, column: 55, scope: !825)
!1027 = !DILocation(line: 182, column: 59, scope: !825)
!1028 = !DILocation(line: 182, column: 63, scope: !825)
!1029 = !DILocation(line: 182, column: 69, scope: !825)
!1030 = !DILocation(line: 182, column: 73, scope: !825)
!1031 = !DILocation(line: 182, column: 67, scope: !825)
!1032 = !{!590, !590, i64 0}
!1033 = !DILocation(line: 182, column: 8, scope: !825)
!1034 = !DILocation(line: 183, column: 15, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !825, file: !2, line: 183, column: 5)
!1036 = !DILocation(line: 183, column: 19, scope: !1035)
!1037 = !{!610, !612, i64 64}
!1038 = !DILocation(line: 183, column: 28, scope: !1035)
!1039 = !DILocation(line: 183, column: 13, scope: !1035)
!1040 = !DILocation(line: 183, column: 10, scope: !1035)
!1041 = !DILocation(line: 183, column: 33, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 183, column: 5)
!1043 = !DILocation(line: 183, column: 38, scope: !1042)
!1044 = !DILocation(line: 183, column: 36, scope: !1042)
!1045 = !DILocation(line: 183, column: 5, scope: !1035)
!1046 = !DILocation(line: 184, column: 20, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 183, column: 49)
!1048 = !DILocation(line: 184, column: 23, scope: !1047)
!1049 = !DILocation(line: 184, column: 18, scope: !1047)
!1050 = !DILocation(line: 185, column: 13, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 185, column: 13)
!1052 = !DILocation(line: 185, column: 16, scope: !1051)
!1053 = !DILocation(line: 185, column: 15, scope: !1051)
!1054 = !DILocation(line: 185, column: 25, scope: !1051)
!1055 = !DILocation(line: 185, column: 30, scope: !1051)
!1056 = !DILocation(line: 185, column: 33, scope: !1051)
!1057 = !DILocation(line: 185, column: 37, scope: !1051)
!1058 = !DILocation(line: 185, column: 44, scope: !1051)
!1059 = !DILocation(line: 185, column: 48, scope: !1051)
!1060 = !DILocation(line: 185, column: 42, scope: !1051)
!1061 = !DILocation(line: 185, column: 53, scope: !1051)
!1062 = !DILocation(line: 185, column: 13, scope: !1047)
!1063 = !DILocation(line: 185, column: 60, scope: !1051)
!1064 = !DILocation(line: 185, column: 64, scope: !1051)
!1065 = !{!610, !589, i64 144}
!1066 = !DILocation(line: 185, column: 76, scope: !1051)
!1067 = !DILocation(line: 185, column: 82, scope: !1051)
!1068 = !DILocation(line: 185, column: 86, scope: !1051)
!1069 = !DILocation(line: 185, column: 108, scope: !1051)
!1070 = !DILocation(line: 185, column: 110, scope: !1051)
!1071 = !DILocation(line: 186, column: 13, scope: !1047)
!1072 = !DILocation(line: 186, column: 17, scope: !1047)
!1073 = !DILocation(line: 186, column: 22, scope: !1047)
!1074 = !DILocation(line: 186, column: 26, scope: !1047)
!1075 = !DILocation(line: 186, column: 30, scope: !1047)
!1076 = !DILocation(line: 186, column: 35, scope: !1047)
!1077 = !DILocation(line: 186, column: 39, scope: !1047)
!1078 = !DILocation(line: 186, column: 33, scope: !1047)
!1079 = !DILocation(line: 186, column: 11, scope: !1047)
!1080 = !DILocation(line: 187, column: 9, scope: !1047)
!1081 = !DILocation(line: 187, column: 13, scope: !1047)
!1082 = !{!610, !589, i64 152}
!1083 = !DILocation(line: 187, column: 24, scope: !1047)
!1084 = !DILocation(line: 187, column: 30, scope: !1047)
!1085 = !DILocation(line: 187, column: 34, scope: !1047)
!1086 = !DILocation(line: 187, column: 38, scope: !1047)
!1087 = !DILocation(line: 187, column: 42, scope: !1047)
!1088 = !DILocation(line: 188, column: 5, scope: !1047)
!1089 = !DILocation(line: 183, column: 43, scope: !1042)
!1090 = !DILocation(line: 183, column: 5, scope: !1042)
!1091 = distinct !{!1091, !1045, !1092, !1093}
!1092 = !DILocation(line: 188, column: 5, scope: !1035)
!1093 = !{!"llvm.loop.mustprogress"}
!1094 = !DILocation(line: 189, column: 16, scope: !825)
!1095 = !DILocation(line: 189, column: 20, scope: !825)
!1096 = !DILocation(line: 189, column: 14, scope: !825)
!1097 = !DILocation(line: 190, column: 9, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !825, file: !2, line: 190, column: 9)
!1099 = !DILocation(line: 190, column: 13, scope: !1098)
!1100 = !DILocation(line: 190, column: 12, scope: !1098)
!1101 = !DILocation(line: 190, column: 22, scope: !1098)
!1102 = !DILocation(line: 190, column: 27, scope: !1098)
!1103 = !DILocation(line: 190, column: 30, scope: !1098)
!1104 = !DILocation(line: 190, column: 34, scope: !1098)
!1105 = !DILocation(line: 190, column: 41, scope: !1098)
!1106 = !DILocation(line: 190, column: 45, scope: !1098)
!1107 = !DILocation(line: 190, column: 39, scope: !1098)
!1108 = !DILocation(line: 190, column: 50, scope: !1098)
!1109 = !DILocation(line: 190, column: 9, scope: !825)
!1110 = !DILocation(line: 190, column: 57, scope: !1098)
!1111 = !DILocation(line: 190, column: 61, scope: !1098)
!1112 = !DILocation(line: 190, column: 73, scope: !1098)
!1113 = !DILocation(line: 190, column: 79, scope: !1098)
!1114 = !DILocation(line: 190, column: 83, scope: !1098)
!1115 = !DILocation(line: 190, column: 105, scope: !1098)
!1116 = !DILocation(line: 190, column: 108, scope: !1098)
!1117 = !DILocation(line: 192, column: 9, scope: !844)
!1118 = !DILocation(line: 192, column: 24, scope: !844)
!1119 = !DILocation(line: 193, column: 9, scope: !844)
!1120 = !DILocation(line: 194, column: 9, scope: !844)
!1121 = !DILocation(line: 194, column: 13, scope: !844)
!1122 = !DILocation(line: 194, column: 22, scope: !844)
!1123 = !DILocation(line: 194, column: 26, scope: !844)
!1124 = !DILocation(line: 194, column: 30, scope: !844)
!1125 = !DILocation(line: 195, column: 9, scope: !844)
!1126 = !DILocation(line: 195, column: 16, scope: !844)
!1127 = !DILocation(line: 195, column: 22, scope: !844)
!1128 = !{!1129, !1129, i64 0}
!1129 = !{!"double", !590, i64 0}
!1130 = !DILocation(line: 196, column: 25, scope: !844)
!1131 = !DILocation(line: 196, column: 28, scope: !844)
!1132 = !DILocation(line: 196, column: 47, scope: !844)
!1133 = !DILocation(line: 196, column: 32, scope: !844)
!1134 = !DILocation(line: 196, column: 52, scope: !844)
!1135 = !DILocation(line: 196, column: 56, scope: !844)
!1136 = !DILocation(line: 196, column: 9, scope: !844)
!1137 = !DILocation(line: 197, column: 16, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !844, file: !2, line: 197, column: 9)
!1139 = !DILocation(line: 197, column: 14, scope: !1138)
!1140 = !DILocation(line: 197, column: 21, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 197, column: 9)
!1142 = !DILocation(line: 197, column: 23, scope: !1141)
!1143 = !DILocation(line: 197, column: 9, scope: !1138)
!1144 = !DILocation(line: 197, column: 53, scope: !1141)
!1145 = !DILocation(line: 197, column: 58, scope: !1141)
!1146 = !DILocation(line: 197, column: 49, scope: !1141)
!1147 = !{!1148, !1148, i64 0}
!1148 = !{!"float", !590, i64 0}
!1149 = !DILocation(line: 197, column: 44, scope: !1141)
!1150 = !DILocation(line: 197, column: 61, scope: !1141)
!1151 = !DILocation(line: 197, column: 67, scope: !1141)
!1152 = !DILocation(line: 197, column: 65, scope: !1141)
!1153 = !DILocation(line: 197, column: 38, scope: !1141)
!1154 = !DILocation(line: 197, column: 33, scope: !1141)
!1155 = !DILocation(line: 197, column: 41, scope: !1141)
!1156 = !DILocation(line: 197, column: 28, scope: !1141)
!1157 = !DILocation(line: 197, column: 9, scope: !1141)
!1158 = distinct !{!1158, !1143, !1159, !1093}
!1159 = !DILocation(line: 197, column: 67, scope: !1138)
!1160 = !DILocation(line: 198, column: 16, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !844, file: !2, line: 198, column: 9)
!1162 = !DILocation(line: 198, column: 14, scope: !1161)
!1163 = !DILocation(line: 198, column: 21, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 198, column: 9)
!1165 = !DILocation(line: 198, column: 23, scope: !1164)
!1166 = !DILocation(line: 198, column: 9, scope: !1161)
!1167 = !DILocation(line: 199, column: 22, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 199, column: 13)
!1169 = !DILocation(line: 199, column: 20, scope: !1168)
!1170 = !DILocation(line: 199, column: 18, scope: !1168)
!1171 = !DILocation(line: 199, column: 25, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 199, column: 13)
!1173 = !DILocation(line: 199, column: 27, scope: !1172)
!1174 = !DILocation(line: 199, column: 31, scope: !1172)
!1175 = !DILocation(line: 199, column: 39, scope: !1172)
!1176 = !DILocation(line: 199, column: 34, scope: !1172)
!1177 = !DILocation(line: 199, column: 49, scope: !1172)
!1178 = !DILocation(line: 199, column: 50, scope: !1172)
!1179 = !DILocation(line: 199, column: 44, scope: !1172)
!1180 = !DILocation(line: 199, column: 42, scope: !1172)
!1181 = !DILocation(line: 0, scope: !1172)
!1182 = !DILocation(line: 199, column: 13, scope: !1168)
!1183 = !DILocation(line: 200, column: 28, scope: !1172)
!1184 = !DILocation(line: 200, column: 23, scope: !1172)
!1185 = !DILocation(line: 200, column: 21, scope: !1172)
!1186 = !DILocation(line: 200, column: 47, scope: !1172)
!1187 = !DILocation(line: 200, column: 48, scope: !1172)
!1188 = !DILocation(line: 200, column: 42, scope: !1172)
!1189 = !DILocation(line: 200, column: 37, scope: !1172)
!1190 = !DILocation(line: 200, column: 32, scope: !1172)
!1191 = !DILocation(line: 200, column: 40, scope: !1172)
!1192 = !DILocation(line: 200, column: 65, scope: !1172)
!1193 = !DILocation(line: 200, column: 58, scope: !1172)
!1194 = !DILocation(line: 200, column: 59, scope: !1172)
!1195 = !DILocation(line: 200, column: 53, scope: !1172)
!1196 = !DILocation(line: 200, column: 63, scope: !1172)
!1197 = !DILocation(line: 200, column: 17, scope: !1172)
!1198 = !DILocation(line: 199, column: 55, scope: !1172)
!1199 = !DILocation(line: 199, column: 13, scope: !1172)
!1200 = distinct !{!1200, !1182, !1201, !1093}
!1201 = !DILocation(line: 200, column: 65, scope: !1168)
!1202 = !DILocation(line: 198, column: 28, scope: !1164)
!1203 = !DILocation(line: 198, column: 9, scope: !1164)
!1204 = distinct !{!1204, !1166, !1205, !1093}
!1205 = !DILocation(line: 200, column: 65, scope: !1161)
!1206 = !DILocation(line: 201, column: 14, scope: !844)
!1207 = !DILocation(line: 201, column: 21, scope: !844)
!1208 = !DILocation(line: 201, column: 12, scope: !844)
!1209 = !DILocation(line: 201, column: 30, scope: !844)
!1210 = !DILocation(line: 201, column: 37, scope: !844)
!1211 = !DILocation(line: 201, column: 28, scope: !844)
!1212 = !DILocation(line: 202, column: 20, scope: !844)
!1213 = !DILocation(line: 202, column: 22, scope: !844)
!1214 = !DILocation(line: 202, column: 24, scope: !844)
!1215 = !DILocation(line: 202, column: 27, scope: !844)
!1216 = !DILocation(line: 202, column: 26, scope: !844)
!1217 = !DILocation(line: 202, column: 16, scope: !844)
!1218 = !DILocation(line: 202, column: 9, scope: !844)
!1219 = !DILocation(line: 202, column: 14, scope: !844)
!1220 = !DILocation(line: 202, column: 43, scope: !844)
!1221 = !DILocation(line: 202, column: 45, scope: !844)
!1222 = !DILocation(line: 202, column: 47, scope: !844)
!1223 = !DILocation(line: 202, column: 50, scope: !844)
!1224 = !DILocation(line: 202, column: 49, scope: !844)
!1225 = !DILocation(line: 202, column: 39, scope: !844)
!1226 = !DILocation(line: 202, column: 56, scope: !844)
!1227 = !DILocation(line: 202, column: 54, scope: !844)
!1228 = !DILocation(line: 202, column: 32, scope: !844)
!1229 = !DILocation(line: 202, column: 37, scope: !844)
!1230 = !DILocation(line: 202, column: 74, scope: !844)
!1231 = !DILocation(line: 202, column: 76, scope: !844)
!1232 = !DILocation(line: 202, column: 78, scope: !844)
!1233 = !DILocation(line: 202, column: 81, scope: !844)
!1234 = !DILocation(line: 202, column: 80, scope: !844)
!1235 = !DILocation(line: 202, column: 70, scope: !844)
!1236 = !DILocation(line: 202, column: 63, scope: !844)
!1237 = !DILocation(line: 202, column: 68, scope: !844)
!1238 = !DILocation(line: 203, column: 20, scope: !870)
!1239 = !DILocation(line: 203, column: 13, scope: !870)
!1240 = !DILocation(line: 203, column: 27, scope: !869)
!1241 = !DILocation(line: 203, column: 27, scope: !873)
!1242 = !DILocation(line: 203, column: 27, scope: !874)
!1243 = !DILocation(line: 203, column: 27, scope: !872)
!1244 = !DILocation(line: 203, column: 27, scope: !875)
!1245 = !DILocation(line: 203, column: 27, scope: !870)
!1246 = !DILocation(line: 203, column: 24, scope: !870)
!1247 = !DILocation(line: 203, column: 13, scope: !844)
!1248 = !DILocation(line: 203, column: 48, scope: !870)
!1249 = !DILocation(line: 203, column: 54, scope: !870)
!1250 = !DILocation(line: 203, column: 40, scope: !870)
!1251 = !DILocation(line: 203, column: 45, scope: !870)
!1252 = !DILocation(line: 204, column: 20, scope: !878)
!1253 = !DILocation(line: 204, column: 13, scope: !878)
!1254 = !DILocation(line: 204, column: 27, scope: !877)
!1255 = !DILocation(line: 204, column: 27, scope: !881)
!1256 = !DILocation(line: 204, column: 27, scope: !882)
!1257 = !DILocation(line: 204, column: 27, scope: !880)
!1258 = !DILocation(line: 204, column: 27, scope: !883)
!1259 = !DILocation(line: 204, column: 27, scope: !878)
!1260 = !DILocation(line: 204, column: 24, scope: !878)
!1261 = !DILocation(line: 204, column: 13, scope: !844)
!1262 = !DILocation(line: 204, column: 48, scope: !878)
!1263 = !DILocation(line: 204, column: 54, scope: !878)
!1264 = !DILocation(line: 204, column: 40, scope: !878)
!1265 = !DILocation(line: 204, column: 45, scope: !878)
!1266 = !DILocation(line: 205, column: 13, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !844, file: !2, line: 205, column: 13)
!1268 = !DILocation(line: 205, column: 20, scope: !1267)
!1269 = !DILocation(line: 205, column: 18, scope: !1267)
!1270 = !DILocation(line: 205, column: 25, scope: !1267)
!1271 = !DILocation(line: 205, column: 28, scope: !1267)
!1272 = !DILocation(line: 205, column: 35, scope: !1267)
!1273 = !DILocation(line: 205, column: 33, scope: !1267)
!1274 = !DILocation(line: 205, column: 13, scope: !844)
!1275 = !DILocation(line: 205, column: 52, scope: !1267)
!1276 = !DILocation(line: 205, column: 50, scope: !1267)
!1277 = !DILocation(line: 205, column: 55, scope: !1267)
!1278 = !DILocation(line: 205, column: 69, scope: !1267)
!1279 = !DILocation(line: 205, column: 74, scope: !1267)
!1280 = !DILocation(line: 205, column: 73, scope: !1267)
!1281 = !DILocation(line: 205, column: 79, scope: !1267)
!1282 = !DILocation(line: 205, column: 84, scope: !1267)
!1283 = !DILocation(line: 205, column: 92, scope: !1267)
!1284 = !DILocation(line: 205, column: 90, scope: !1267)
!1285 = !DILocation(line: 205, column: 97, scope: !1267)
!1286 = !DILocation(line: 205, column: 62, scope: !1267)
!1287 = !DILocation(line: 205, column: 60, scope: !1267)
!1288 = !DILocation(line: 205, column: 46, scope: !1267)
!1289 = !DILocation(line: 205, column: 41, scope: !1267)
!1290 = !DILocation(line: 206, column: 18, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 206, column: 18)
!1292 = !DILocation(line: 206, column: 25, scope: !1291)
!1293 = !DILocation(line: 206, column: 23, scope: !1291)
!1294 = !DILocation(line: 206, column: 30, scope: !1291)
!1295 = !DILocation(line: 206, column: 33, scope: !1291)
!1296 = !DILocation(line: 206, column: 40, scope: !1291)
!1297 = !DILocation(line: 206, column: 38, scope: !1291)
!1298 = !DILocation(line: 206, column: 18, scope: !1267)
!1299 = !DILocation(line: 206, column: 57, scope: !1291)
!1300 = !DILocation(line: 206, column: 55, scope: !1291)
!1301 = !DILocation(line: 206, column: 60, scope: !1291)
!1302 = !DILocation(line: 206, column: 74, scope: !1291)
!1303 = !DILocation(line: 206, column: 79, scope: !1291)
!1304 = !DILocation(line: 206, column: 78, scope: !1291)
!1305 = !DILocation(line: 206, column: 84, scope: !1291)
!1306 = !DILocation(line: 206, column: 89, scope: !1291)
!1307 = !DILocation(line: 206, column: 97, scope: !1291)
!1308 = !DILocation(line: 206, column: 95, scope: !1291)
!1309 = !DILocation(line: 206, column: 102, scope: !1291)
!1310 = !DILocation(line: 206, column: 67, scope: !1291)
!1311 = !DILocation(line: 206, column: 65, scope: !1291)
!1312 = !DILocation(line: 206, column: 51, scope: !1291)
!1313 = !DILocation(line: 206, column: 46, scope: !1291)
!1314 = !DILocation(line: 207, column: 25, scope: !1291)
!1315 = !DILocation(line: 207, column: 23, scope: !1291)
!1316 = !DILocation(line: 207, column: 31, scope: !1291)
!1317 = !DILocation(line: 207, column: 29, scope: !1291)
!1318 = !DILocation(line: 207, column: 27, scope: !1291)
!1319 = !DILocation(line: 207, column: 34, scope: !1291)
!1320 = !DILocation(line: 207, column: 48, scope: !1291)
!1321 = !DILocation(line: 207, column: 53, scope: !1291)
!1322 = !DILocation(line: 207, column: 52, scope: !1291)
!1323 = !DILocation(line: 207, column: 58, scope: !1291)
!1324 = !DILocation(line: 207, column: 63, scope: !1291)
!1325 = !DILocation(line: 207, column: 71, scope: !1291)
!1326 = !DILocation(line: 207, column: 69, scope: !1291)
!1327 = !DILocation(line: 207, column: 76, scope: !1291)
!1328 = !DILocation(line: 207, column: 41, scope: !1291)
!1329 = !DILocation(line: 207, column: 39, scope: !1291)
!1330 = !DILocation(line: 207, column: 19, scope: !1291)
!1331 = !DILocation(line: 208, column: 5, scope: !825)
!1332 = !DILocation(line: 209, column: 12, scope: !825)
!1333 = !DILocation(line: 209, column: 16, scope: !825)
!1334 = !{!610, !589, i64 208}
!1335 = !DILocation(line: 209, column: 29, scope: !825)
!1336 = !DILocation(line: 209, column: 10, scope: !825)
!1337 = !DILocation(line: 210, column: 28, scope: !825)
!1338 = !DILocation(line: 210, column: 32, scope: !825)
!1339 = !DILocation(line: 210, column: 36, scope: !825)
!1340 = !DILocation(line: 210, column: 9, scope: !825)
!1341 = !DILocation(line: 210, column: 7, scope: !825)
!1342 = !DILocation(line: 211, column: 10, scope: !825)
!1343 = !DILocation(line: 211, column: 14, scope: !825)
!1344 = !DILocation(line: 211, column: 22, scope: !825)
!1345 = !DILocation(line: 211, column: 25, scope: !825)
!1346 = !DILocation(line: 211, column: 7, scope: !825)
!1347 = !DILocation(line: 212, column: 9, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !825, file: !2, line: 212, column: 9)
!1349 = !DILocation(line: 212, column: 11, scope: !1348)
!1350 = !DILocation(line: 212, column: 9, scope: !825)
!1351 = !DILocation(line: 212, column: 18, scope: !1348)
!1352 = !DILocation(line: 212, column: 16, scope: !1348)
!1353 = !DILocation(line: 213, column: 13, scope: !825)
!1354 = !DILocation(line: 213, column: 17, scope: !825)
!1355 = !{!610, !589, i64 184}
!1356 = !DILocation(line: 213, column: 30, scope: !825)
!1357 = !DILocation(line: 213, column: 33, scope: !825)
!1358 = !DILocation(line: 213, column: 10, scope: !825)
!1359 = !DILocation(line: 214, column: 9, scope: !886)
!1360 = !DILocation(line: 214, column: 14, scope: !885)
!1361 = !DILocation(line: 214, column: 14, scope: !889)
!1362 = !DILocation(line: 214, column: 14, scope: !890)
!1363 = !DILocation(line: 214, column: 14, scope: !888)
!1364 = !DILocation(line: 214, column: 14, scope: !891)
!1365 = !DILocation(line: 214, column: 14, scope: !886)
!1366 = !DILocation(line: 214, column: 11, scope: !886)
!1367 = !DILocation(line: 214, column: 9, scope: !825)
!1368 = !DILocation(line: 214, column: 29, scope: !886)
!1369 = !DILocation(line: 214, column: 27, scope: !886)
!1370 = !DILocation(line: 215, column: 5, scope: !825)
!1371 = !DILocation(line: 215, column: 9, scope: !825)
!1372 = !{!610, !589, i64 160}
!1373 = !DILocation(line: 215, column: 19, scope: !825)
!1374 = !DILocation(line: 215, column: 22, scope: !825)
!1375 = !DILocation(line: 216, column: 5, scope: !825)
!1376 = !DILocation(line: 216, column: 9, scope: !825)
!1377 = !DILocation(line: 216, column: 20, scope: !825)
!1378 = !DILocation(line: 216, column: 26, scope: !825)
!1379 = !DILocation(line: 216, column: 30, scope: !825)
!1380 = !DILocation(line: 216, column: 36, scope: !825)
!1381 = !DILocation(line: 217, column: 5, scope: !825)
!1382 = !DILocation(line: 217, column: 9, scope: !825)
!1383 = !{!610, !589, i64 168}
!1384 = !DILocation(line: 217, column: 20, scope: !825)
!1385 = !DILocation(line: 217, column: 23, scope: !825)
!1386 = !DILocation(line: 218, column: 8, scope: !897)
!1387 = !DILocation(line: 218, column: 12, scope: !897)
!1388 = !DILocation(line: 218, column: 8, scope: !825)
!1389 = !DILocation(line: 220, column: 16, scope: !895)
!1390 = !DILocation(line: 220, column: 14, scope: !895)
!1391 = !DILocation(line: 220, column: 21, scope: !894)
!1392 = !DILocation(line: 220, column: 25, scope: !894)
!1393 = !DILocation(line: 220, column: 23, scope: !894)
!1394 = !DILocation(line: 220, column: 9, scope: !895)
!1395 = !DILocation(line: 221, column: 13, scope: !893)
!1396 = !DILocation(line: 221, column: 34, scope: !893)
!1397 = !DILocation(line: 221, column: 38, scope: !893)
!1398 = !DILocation(line: 221, column: 43, scope: !893)
!1399 = !DILocation(line: 221, column: 41, scope: !893)
!1400 = !DILocation(line: 222, column: 13, scope: !893)
!1401 = !DILocation(line: 222, column: 17, scope: !893)
!1402 = !DILocation(line: 222, column: 41, scope: !893)
!1403 = !DILocation(line: 222, column: 23, scope: !893)
!1404 = !DILocation(line: 223, column: 17, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !893, file: !2, line: 223, column: 17)
!1406 = !DILocation(line: 223, column: 21, scope: !1405)
!1407 = !DILocation(line: 223, column: 17, scope: !893)
!1408 = !DILocation(line: 224, column: 17, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 223, column: 26)
!1410 = !DILocation(line: 225, column: 17, scope: !1409)
!1411 = !DILocation(line: 227, column: 17, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !893, file: !2, line: 227, column: 17)
!1413 = !DILocation(line: 227, column: 27, scope: !1412)
!1414 = !DILocation(line: 227, column: 25, scope: !1412)
!1415 = !DILocation(line: 227, column: 17, scope: !893)
!1416 = !DILocation(line: 227, column: 42, scope: !1412)
!1417 = !DILocation(line: 227, column: 40, scope: !1412)
!1418 = !DILocation(line: 227, column: 32, scope: !1412)
!1419 = !DILocation(line: 228, column: 9, scope: !894)
!1420 = !DILocation(line: 228, column: 9, scope: !893)
!1421 = !DILocation(line: 220, column: 28, scope: !894)
!1422 = !DILocation(line: 220, column: 9, scope: !894)
!1423 = distinct !{!1423, !1394, !1424, !1093}
!1424 = !DILocation(line: 228, column: 9, scope: !895)
!1425 = !DILocation(line: 229, column: 5, scope: !896)
!1426 = !DILocation(line: 231, column: 12, scope: !905)
!1427 = !DILocation(line: 231, column: 10, scope: !905)
!1428 = !DILocation(line: 231, column: 17, scope: !904)
!1429 = !DILocation(line: 231, column: 22, scope: !904)
!1430 = !DILocation(line: 231, column: 19, scope: !904)
!1431 = !DILocation(line: 231, column: 5, scope: !905)
!1432 = !DILocation(line: 232, column: 16, scope: !902)
!1433 = !DILocation(line: 232, column: 14, scope: !902)
!1434 = !DILocation(line: 232, column: 21, scope: !901)
!1435 = !DILocation(line: 232, column: 25, scope: !901)
!1436 = !DILocation(line: 232, column: 23, scope: !901)
!1437 = !DILocation(line: 232, column: 9, scope: !902)
!1438 = !DILocation(line: 233, column: 13, scope: !900)
!1439 = !DILocation(line: 233, column: 34, scope: !900)
!1440 = !DILocation(line: 233, column: 38, scope: !900)
!1441 = !DILocation(line: 233, column: 43, scope: !900)
!1442 = !DILocation(line: 233, column: 41, scope: !900)
!1443 = !DILocation(line: 234, column: 13, scope: !900)
!1444 = !DILocation(line: 234, column: 17, scope: !900)
!1445 = !DILocation(line: 234, column: 39, scope: !900)
!1446 = !DILocation(line: 234, column: 42, scope: !900)
!1447 = !{!1448, !611, i64 16}
!1448 = !{!"bam_pileup1_t", !589, i64 0, !611, i64 8, !611, i64 12, !611, i64 16, !611, i64 20, !611, i64 20, !611, i64 20, !611, i64 20, !611, i64 20, !590, i64 24, !611, i64 32}
!1449 = !DILocation(line: 234, column: 37, scope: !900)
!1450 = !DILocation(line: 234, column: 50, scope: !900)
!1451 = !DILocation(line: 234, column: 54, scope: !900)
!1452 = !{!610, !611, i64 88}
!1453 = !DILocation(line: 234, column: 48, scope: !900)
!1454 = !DILocation(line: 235, column: 17, scope: !915)
!1455 = !DILocation(line: 235, column: 19, scope: !915)
!1456 = !DILocation(line: 235, column: 17, scope: !900)
!1457 = !DILocation(line: 236, column: 22, scope: !913)
!1458 = !DILocation(line: 236, column: 25, scope: !913)
!1459 = !DILocation(line: 236, column: 21, scope: !914)
!1460 = !DILocation(line: 237, column: 25, scope: !911)
!1461 = !DILocation(line: 237, column: 29, scope: !911)
!1462 = !{!610, !611, i64 92}
!1463 = !DILocation(line: 237, column: 38, scope: !911)
!1464 = !DILocation(line: 237, column: 61, scope: !911)
!1465 = !DILocation(line: 238, column: 49, scope: !911)
!1466 = !DILocation(line: 238, column: 52, scope: !911)
!1467 = !{!1448, !589, i64 0}
!1468 = !DILocation(line: 238, column: 55, scope: !911)
!1469 = !DILocation(line: 238, column: 58, scope: !911)
!1470 = !{!1448, !611, i64 8}
!1471 = !DILocation(line: 238, column: 34, scope: !911)
!1472 = !DILocation(line: 238, column: 32, scope: !911)
!1473 = !DILocation(line: 237, column: 25, scope: !912)
!1474 = !DILocation(line: 240, column: 29, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 240, column: 29)
!1476 = distinct !DILexicalBlock(scope: !911, file: !2, line: 238, column: 66)
!1477 = !DILocation(line: 240, column: 33, scope: !1475)
!1478 = !DILocation(line: 240, column: 40, scope: !1475)
!1479 = !DILocation(line: 240, column: 65, scope: !1475)
!1480 = !DILocation(line: 240, column: 68, scope: !1475)
!1481 = !DILocation(line: 240, column: 71, scope: !1475)
!1482 = !DILocation(line: 240, column: 74, scope: !1475)
!1483 = !DILocation(line: 240, column: 50, scope: !1475)
!1484 = !DILocation(line: 240, column: 47, scope: !1475)
!1485 = !DILocation(line: 240, column: 29, scope: !1476)
!1486 = !DILocation(line: 240, column: 85, scope: !1475)
!1487 = !{!1488, !1490, i64 16}
!1488 = !{!"bam1_t", !1489, i64 0, !612, i64 48, !589, i64 56, !611, i64 64, !611, i64 68, !611, i64 72}
!1489 = !{!"bam1_core_t", !612, i64 0, !611, i64 8, !1490, i64 12, !590, i64 14, !590, i64 15, !1490, i64 16, !1490, i64 18, !611, i64 20, !611, i64 24, !611, i64 28, !612, i64 32, !612, i64 40}
!1490 = !{!"short", !590, i64 0}
!1491 = !DILocation(line: 240, column: 83, scope: !1475)
!1492 = !DILocation(line: 240, column: 81, scope: !1475)
!1493 = !DILocation(line: 241, column: 21, scope: !1476)
!1494 = !DILocation(line: 242, column: 29, scope: !909)
!1495 = !DILocation(line: 242, column: 33, scope: !909)
!1496 = !{!610, !611, i64 112}
!1497 = !DILocation(line: 242, column: 29, scope: !910)
!1498 = !DILocation(line: 243, column: 29, scope: !908)
!1499 = !DILocation(line: 243, column: 35, scope: !908)
!1500 = !DILocation(line: 243, column: 42, scope: !908)
!1501 = !{!1488, !589, i64 56}
!1502 = !DILocation(line: 244, column: 34, scope: !908)
!1503 = !DILocation(line: 244, column: 37, scope: !908)
!1504 = !DILocation(line: 244, column: 42, scope: !908)
!1505 = !DILocation(line: 244, column: 49, scope: !908)
!1506 = !DILocation(line: 244, column: 52, scope: !908)
!1507 = !DILocation(line: 244, column: 55, scope: !908)
!1508 = !DILocation(line: 244, column: 60, scope: !908)
!1509 = !{!1488, !1490, i64 18}
!1510 = !DILocation(line: 244, column: 46, scope: !908)
!1511 = !DILocation(line: 244, column: 33, scope: !908)
!1512 = !DILocation(line: 244, column: 76, scope: !908)
!1513 = !DILocation(line: 244, column: 81, scope: !908)
!1514 = !DILocation(line: 244, column: 84, scope: !908)
!1515 = !DILocation(line: 244, column: 31, scope: !908)
!1516 = !DILocation(line: 245, column: 25, scope: !909)
!1517 = !DILocation(line: 245, column: 25, scope: !908)
!1518 = !DILocation(line: 246, column: 46, scope: !919)
!1519 = !{!1488, !611, i64 20}
!1520 = !DILocation(line: 246, column: 33, scope: !919)
!1521 = !DILocation(line: 246, column: 31, scope: !919)
!1522 = !DILocation(line: 247, column: 33, scope: !918)
!1523 = !DILocation(line: 247, column: 37, scope: !918)
!1524 = !DILocation(line: 247, column: 44, scope: !918)
!1525 = !DILocation(line: 247, column: 47, scope: !917)
!1526 = !DILocation(line: 247, column: 47, scope: !922)
!1527 = !DILocation(line: 247, column: 47, scope: !923)
!1528 = !DILocation(line: 247, column: 47, scope: !921)
!1529 = !DILocation(line: 247, column: 47, scope: !924)
!1530 = !DILocation(line: 247, column: 47, scope: !918)
!1531 = !DILocation(line: 247, column: 61, scope: !926)
!1532 = !DILocation(line: 247, column: 61, scope: !929)
!1533 = !DILocation(line: 247, column: 61, scope: !930)
!1534 = !DILocation(line: 247, column: 61, scope: !928)
!1535 = !DILocation(line: 247, column: 61, scope: !931)
!1536 = !DILocation(line: 247, column: 61, scope: !918)
!1537 = !DILocation(line: 247, column: 58, scope: !918)
!1538 = !DILocation(line: 247, column: 33, scope: !919)
!1539 = !DILocation(line: 247, column: 78, scope: !918)
!1540 = !DILocation(line: 247, column: 76, scope: !918)
!1541 = !DILocation(line: 247, column: 74, scope: !918)
!1542 = !DILocation(line: 250, column: 17, scope: !912)
!1543 = !DILocation(line: 250, column: 28, scope: !913)
!1544 = !DILocation(line: 250, column: 31, scope: !913)
!1545 = !DILocation(line: 250, column: 44, scope: !913)
!1546 = !DILocation(line: 250, column: 26, scope: !913)
!1547 = !DILocation(line: 251, column: 13, scope: !914)
!1548 = !DILocation(line: 252, column: 17, scope: !933)
!1549 = !DILocation(line: 252, column: 21, scope: !933)
!1550 = !DILocation(line: 252, column: 45, scope: !933)
!1551 = !DILocation(line: 252, column: 27, scope: !933)
!1552 = !DILocation(line: 253, column: 21, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !933, file: !2, line: 253, column: 21)
!1554 = !DILocation(line: 253, column: 25, scope: !1553)
!1555 = !DILocation(line: 253, column: 21, scope: !933)
!1556 = !DILocation(line: 254, column: 21, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 253, column: 30)
!1558 = !DILocation(line: 255, column: 21, scope: !1557)
!1559 = !DILocation(line: 258, column: 21, scope: !940)
!1560 = !DILocation(line: 258, column: 25, scope: !940)
!1561 = !DILocation(line: 258, column: 23, scope: !940)
!1562 = !DILocation(line: 258, column: 21, scope: !933)
!1563 = !DILocation(line: 258, column: 32, scope: !940)
!1564 = !DILocation(line: 258, column: 30, scope: !940)
!1565 = !DILocation(line: 260, column: 25, scope: !938)
!1566 = !DILocation(line: 260, column: 29, scope: !938)
!1567 = !DILocation(line: 260, column: 38, scope: !938)
!1568 = !DILocation(line: 260, column: 25, scope: !939)
!1569 = !DILocation(line: 261, column: 29, scope: !936)
!1570 = !DILocation(line: 261, column: 33, scope: !936)
!1571 = !DILocation(line: 261, column: 29, scope: !937)
!1572 = !DILocation(line: 262, column: 29, scope: !935)
!1573 = !DILocation(line: 262, column: 35, scope: !935)
!1574 = !DILocation(line: 262, column: 42, scope: !935)
!1575 = !DILocation(line: 263, column: 34, scope: !935)
!1576 = !DILocation(line: 263, column: 37, scope: !935)
!1577 = !DILocation(line: 263, column: 44, scope: !935)
!1578 = !DILocation(line: 263, column: 42, scope: !935)
!1579 = !DILocation(line: 263, column: 46, scope: !935)
!1580 = !DILocation(line: 263, column: 53, scope: !935)
!1581 = !DILocation(line: 263, column: 56, scope: !935)
!1582 = !DILocation(line: 263, column: 59, scope: !935)
!1583 = !DILocation(line: 263, column: 64, scope: !935)
!1584 = !DILocation(line: 263, column: 50, scope: !935)
!1585 = !DILocation(line: 263, column: 33, scope: !935)
!1586 = !DILocation(line: 263, column: 80, scope: !935)
!1587 = !DILocation(line: 263, column: 85, scope: !935)
!1588 = !DILocation(line: 263, column: 88, scope: !935)
!1589 = !DILocation(line: 263, column: 95, scope: !935)
!1590 = !DILocation(line: 263, column: 93, scope: !935)
!1591 = !DILocation(line: 263, column: 31, scope: !935)
!1592 = !DILocation(line: 264, column: 25, scope: !936)
!1593 = !DILocation(line: 264, column: 25, scope: !935)
!1594 = !DILocation(line: 265, column: 36, scope: !944)
!1595 = !{!1596, !589, i64 16}
!1596 = !{!"kstring_t", !612, i64 0, !612, i64 8, !589, i64 16}
!1597 = !DILocation(line: 265, column: 38, scope: !944)
!1598 = !DILocation(line: 265, column: 39, scope: !944)
!1599 = !DILocation(line: 265, column: 33, scope: !944)
!1600 = !DILocation(line: 265, column: 31, scope: !944)
!1601 = !DILocation(line: 266, column: 33, scope: !943)
!1602 = !DILocation(line: 266, column: 35, scope: !943)
!1603 = !DILocation(line: 266, column: 40, scope: !943)
!1604 = !DILocation(line: 266, column: 43, scope: !943)
!1605 = !DILocation(line: 266, column: 47, scope: !943)
!1606 = !DILocation(line: 266, column: 54, scope: !943)
!1607 = !DILocation(line: 266, column: 57, scope: !942)
!1608 = !DILocation(line: 266, column: 57, scope: !947)
!1609 = !DILocation(line: 266, column: 57, scope: !948)
!1610 = !DILocation(line: 266, column: 57, scope: !946)
!1611 = !DILocation(line: 266, column: 57, scope: !949)
!1612 = !DILocation(line: 266, column: 57, scope: !943)
!1613 = !DILocation(line: 266, column: 71, scope: !951)
!1614 = !DILocation(line: 266, column: 71, scope: !954)
!1615 = !DILocation(line: 266, column: 71, scope: !955)
!1616 = !DILocation(line: 266, column: 71, scope: !953)
!1617 = !DILocation(line: 266, column: 71, scope: !956)
!1618 = !DILocation(line: 266, column: 71, scope: !943)
!1619 = !DILocation(line: 266, column: 68, scope: !943)
!1620 = !DILocation(line: 266, column: 33, scope: !944)
!1621 = !DILocation(line: 266, column: 88, scope: !943)
!1622 = !DILocation(line: 266, column: 86, scope: !943)
!1623 = !DILocation(line: 266, column: 84, scope: !943)
!1624 = !DILocation(line: 268, column: 21, scope: !937)
!1625 = !DILocation(line: 269, column: 44, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !938, file: !2, line: 268, column: 28)
!1627 = !DILocation(line: 269, column: 47, scope: !1626)
!1628 = !DILocation(line: 269, column: 50, scope: !1626)
!1629 = !DILocation(line: 269, column: 53, scope: !1626)
!1630 = !DILocation(line: 269, column: 60, scope: !1626)
!1631 = !DILocation(line: 269, column: 58, scope: !1626)
!1632 = !DILocation(line: 269, column: 29, scope: !1626)
!1633 = !DILocation(line: 269, column: 27, scope: !1626)
!1634 = !DILocation(line: 270, column: 29, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 270, column: 29)
!1636 = !DILocation(line: 270, column: 33, scope: !1635)
!1637 = !DILocation(line: 270, column: 40, scope: !1635)
!1638 = !DILocation(line: 270, column: 65, scope: !1635)
!1639 = !DILocation(line: 270, column: 68, scope: !1635)
!1640 = !DILocation(line: 270, column: 71, scope: !1635)
!1641 = !DILocation(line: 270, column: 74, scope: !1635)
!1642 = !DILocation(line: 270, column: 81, scope: !1635)
!1643 = !DILocation(line: 270, column: 79, scope: !1635)
!1644 = !DILocation(line: 270, column: 50, scope: !1635)
!1645 = !DILocation(line: 270, column: 47, scope: !1635)
!1646 = !DILocation(line: 270, column: 29, scope: !1626)
!1647 = !DILocation(line: 270, column: 89, scope: !1635)
!1648 = !DILocation(line: 270, column: 87, scope: !1635)
!1649 = !DILocation(line: 270, column: 85, scope: !1635)
!1650 = !DILocation(line: 273, column: 13, scope: !915)
!1651 = !DILocation(line: 274, column: 17, scope: !959)
!1652 = !DILocation(line: 274, column: 21, scope: !959)
!1653 = !DILocation(line: 274, column: 37, scope: !959)
!1654 = !DILocation(line: 274, column: 40, scope: !959)
!1655 = !DILocation(line: 274, column: 46, scope: !959)
!1656 = !DILocation(line: 274, column: 50, scope: !959)
!1657 = !DILocation(line: 274, column: 44, scope: !959)
!1658 = !DILocation(line: 274, column: 17, scope: !900)
!1659 = !DILocation(line: 275, column: 17, scope: !958)
!1660 = !DILocation(line: 275, column: 21, scope: !958)
!1661 = !DILocation(line: 276, column: 22, scope: !958)
!1662 = !DILocation(line: 277, column: 23, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !958, file: !2, line: 277, column: 21)
!1664 = !DILocation(line: 277, column: 26, scope: !1663)
!1665 = !DILocation(line: 277, column: 29, scope: !1663)
!1666 = !DILocation(line: 277, column: 34, scope: !1663)
!1667 = !DILocation(line: 277, column: 38, scope: !1663)
!1668 = !DILocation(line: 277, column: 52, scope: !1663)
!1669 = !DILocation(line: 277, column: 57, scope: !1663)
!1670 = !DILocation(line: 277, column: 60, scope: !1663)
!1671 = !DILocation(line: 277, column: 63, scope: !1663)
!1672 = !DILocation(line: 277, column: 68, scope: !1663)
!1673 = !DILocation(line: 277, column: 72, scope: !1663)
!1674 = !DILocation(line: 278, column: 25, scope: !1663)
!1675 = !DILocation(line: 278, column: 29, scope: !1663)
!1676 = !DILocation(line: 278, column: 32, scope: !1663)
!1677 = !DILocation(line: 278, column: 35, scope: !1663)
!1678 = !DILocation(line: 278, column: 40, scope: !1663)
!1679 = !DILocation(line: 278, column: 45, scope: !1663)
!1680 = !DILocation(line: 277, column: 21, scope: !958)
!1681 = !DILocation(line: 278, column: 72, scope: !1663)
!1682 = !DILocation(line: 278, column: 76, scope: !1663)
!1683 = !DILocation(line: 278, column: 89, scope: !1663)
!1684 = !DILocation(line: 278, column: 69, scope: !1663)
!1685 = !DILocation(line: 278, column: 64, scope: !1663)
!1686 = !DILocation(line: 279, column: 21, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !958, file: !2, line: 279, column: 21)
!1688 = !DILocation(line: 279, column: 25, scope: !1687)
!1689 = !DILocation(line: 279, column: 35, scope: !1687)
!1690 = !DILocation(line: 279, column: 21, scope: !958)
!1691 = !DILocation(line: 280, column: 25, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 279, column: 54)
!1693 = !{!1488, !611, i64 24}
!1694 = !DILocation(line: 280, column: 44, scope: !1692)
!1695 = !DILocation(line: 280, column: 47, scope: !1692)
!1696 = !DILocation(line: 280, column: 52, scope: !1692)
!1697 = !DILocation(line: 280, column: 56, scope: !1692)
!1698 = !DILocation(line: 280, column: 23, scope: !1692)
!1699 = !DILocation(line: 281, column: 25, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 281, column: 25)
!1701 = !DILocation(line: 281, column: 27, scope: !1700)
!1702 = !DILocation(line: 281, column: 25, scope: !1692)
!1703 = !DILocation(line: 281, column: 34, scope: !1700)
!1704 = !DILocation(line: 281, column: 32, scope: !1700)
!1705 = !DILocation(line: 282, column: 29, scope: !1692)
!1706 = !DILocation(line: 282, column: 33, scope: !1692)
!1707 = !DILocation(line: 282, column: 46, scope: !1692)
!1708 = !DILocation(line: 282, column: 49, scope: !1692)
!1709 = !DILocation(line: 282, column: 26, scope: !1692)
!1710 = !DILocation(line: 283, column: 17, scope: !1692)
!1711 = !DILocation(line: 283, column: 28, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 283, column: 28)
!1713 = !DILocation(line: 283, column: 32, scope: !1712)
!1714 = !DILocation(line: 283, column: 42, scope: !1712)
!1715 = !DILocation(line: 283, column: 28, scope: !1687)
!1716 = !DILocation(line: 284, column: 25, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 283, column: 60)
!1718 = !DILocation(line: 284, column: 28, scope: !1717)
!1719 = !DILocation(line: 284, column: 31, scope: !1717)
!1720 = !DILocation(line: 284, column: 36, scope: !1717)
!1721 = !{!1488, !590, i64 14}
!1722 = !DILocation(line: 284, column: 40, scope: !1717)
!1723 = !DILocation(line: 284, column: 44, scope: !1717)
!1724 = !DILocation(line: 284, column: 23, scope: !1717)
!1725 = !DILocation(line: 285, column: 25, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 285, column: 25)
!1727 = !DILocation(line: 285, column: 27, scope: !1726)
!1728 = !DILocation(line: 285, column: 25, scope: !1717)
!1729 = !DILocation(line: 285, column: 34, scope: !1726)
!1730 = !DILocation(line: 285, column: 32, scope: !1726)
!1731 = !DILocation(line: 286, column: 29, scope: !1717)
!1732 = !DILocation(line: 286, column: 33, scope: !1717)
!1733 = !DILocation(line: 286, column: 46, scope: !1717)
!1734 = !DILocation(line: 286, column: 49, scope: !1717)
!1735 = !DILocation(line: 286, column: 26, scope: !1717)
!1736 = !DILocation(line: 287, column: 17, scope: !1717)
!1737 = !DILocation(line: 287, column: 28, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 287, column: 28)
!1739 = !DILocation(line: 287, column: 32, scope: !1738)
!1740 = !DILocation(line: 287, column: 42, scope: !1738)
!1741 = !DILocation(line: 287, column: 28, scope: !1712)
!1742 = !DILocation(line: 288, column: 38, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 287, column: 60)
!1744 = !DILocation(line: 288, column: 25, scope: !1743)
!1745 = !DILocation(line: 288, column: 76, scope: !1743)
!1746 = !DILocation(line: 288, column: 23, scope: !1743)
!1747 = !DILocation(line: 289, column: 29, scope: !1743)
!1748 = !DILocation(line: 289, column: 33, scope: !1743)
!1749 = !DILocation(line: 289, column: 46, scope: !1743)
!1750 = !DILocation(line: 289, column: 49, scope: !1743)
!1751 = !DILocation(line: 289, column: 26, scope: !1743)
!1752 = !DILocation(line: 290, column: 17, scope: !1743)
!1753 = !DILocation(line: 290, column: 27, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 290, column: 27)
!1755 = !DILocation(line: 290, column: 31, scope: !1754)
!1756 = !DILocation(line: 290, column: 41, scope: !1754)
!1757 = !DILocation(line: 290, column: 27, scope: !1738)
!1758 = !DILocation(line: 291, column: 23, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 290, column: 58)
!1760 = !DILocation(line: 292, column: 43, scope: !1759)
!1761 = !DILocation(line: 292, column: 46, scope: !1759)
!1762 = !DILocation(line: 292, column: 49, scope: !1759)
!1763 = !DILocation(line: 292, column: 52, scope: !1759)
!1764 = !DILocation(line: 292, column: 28, scope: !1759)
!1765 = !DILocation(line: 292, column: 21, scope: !1759)
!1766 = !DILocation(line: 293, column: 37, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1759, file: !2, line: 292, column: 59)
!1768 = !DILocation(line: 293, column: 42, scope: !1767)
!1769 = !DILocation(line: 294, column: 37, scope: !1767)
!1770 = !DILocation(line: 294, column: 42, scope: !1767)
!1771 = !DILocation(line: 295, column: 37, scope: !1767)
!1772 = !DILocation(line: 295, column: 42, scope: !1767)
!1773 = !DILocation(line: 296, column: 37, scope: !1767)
!1774 = !DILocation(line: 296, column: 42, scope: !1767)
!1775 = !DILocation(line: 297, column: 37, scope: !1767)
!1776 = !DILocation(line: 297, column: 42, scope: !1767)
!1777 = !DILocation(line: 298, column: 51, scope: !1767)
!1778 = !DILocation(line: 298, column: 38, scope: !1767)
!1779 = !DILocation(line: 298, column: 36, scope: !1767)
!1780 = !DILocation(line: 298, column: 90, scope: !1767)
!1781 = !DILocation(line: 300, column: 22, scope: !1759)
!1782 = !DILocation(line: 301, column: 29, scope: !1759)
!1783 = !DILocation(line: 301, column: 33, scope: !1759)
!1784 = !DILocation(line: 301, column: 46, scope: !1759)
!1785 = !DILocation(line: 301, column: 49, scope: !1759)
!1786 = !DILocation(line: 301, column: 26, scope: !1759)
!1787 = !DILocation(line: 302, column: 17, scope: !1759)
!1788 = !DILocation(line: 302, column: 27, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 302, column: 27)
!1790 = !DILocation(line: 302, column: 31, scope: !1789)
!1791 = !DILocation(line: 302, column: 41, scope: !1789)
!1792 = !DILocation(line: 302, column: 27, scope: !1754)
!1793 = !DILocation(line: 303, column: 40, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 302, column: 59)
!1795 = !DILocation(line: 303, column: 43, scope: !1794)
!1796 = !DILocation(line: 303, column: 46, scope: !1794)
!1797 = !DILocation(line: 303, column: 49, scope: !1794)
!1798 = !DILocation(line: 303, column: 25, scope: !1794)
!1799 = !DILocation(line: 303, column: 23, scope: !1794)
!1800 = !DILocation(line: 304, column: 29, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1794, file: !2, line: 304, column: 24)
!1802 = !DILocation(line: 304, column: 26, scope: !1801)
!1803 = !DILocation(line: 304, column: 24, scope: !1794)
!1804 = !DILocation(line: 304, column: 36, scope: !1801)
!1805 = !DILocation(line: 304, column: 55, scope: !1801)
!1806 = !DILocation(line: 304, column: 58, scope: !1801)
!1807 = !DILocation(line: 304, column: 34, scope: !1801)
!1808 = !DILocation(line: 304, column: 32, scope: !1801)
!1809 = !DILocation(line: 305, column: 25, scope: !1794)
!1810 = !DILocation(line: 305, column: 26, scope: !1794)
!1811 = !DILocation(line: 305, column: 30, scope: !1794)
!1812 = !DILocation(line: 305, column: 23, scope: !1794)
!1813 = !DILocation(line: 306, column: 25, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1794, file: !2, line: 306, column: 25)
!1815 = !DILocation(line: 306, column: 27, scope: !1814)
!1816 = !DILocation(line: 306, column: 25, scope: !1794)
!1817 = !DILocation(line: 306, column: 34, scope: !1814)
!1818 = !DILocation(line: 306, column: 32, scope: !1814)
!1819 = !DILocation(line: 307, column: 29, scope: !1794)
!1820 = !DILocation(line: 307, column: 33, scope: !1794)
!1821 = !DILocation(line: 307, column: 46, scope: !1794)
!1822 = !DILocation(line: 307, column: 49, scope: !1794)
!1823 = !DILocation(line: 307, column: 26, scope: !1794)
!1824 = !DILocation(line: 308, column: 17, scope: !1794)
!1825 = !DILocation(line: 309, column: 17, scope: !958)
!1826 = !DILocation(line: 309, column: 21, scope: !958)
!1827 = !DILocation(line: 309, column: 31, scope: !958)
!1828 = !DILocation(line: 309, column: 34, scope: !958)
!1829 = !DILocation(line: 310, column: 17, scope: !958)
!1830 = !DILocation(line: 310, column: 21, scope: !958)
!1831 = !DILocation(line: 310, column: 32, scope: !958)
!1832 = !DILocation(line: 310, column: 35, scope: !958)
!1833 = !DILocation(line: 310, column: 40, scope: !958)
!1834 = !DILocation(line: 310, column: 44, scope: !958)
!1835 = !DILocation(line: 310, column: 50, scope: !958)
!1836 = !DILocation(line: 310, column: 68, scope: !961)
!1837 = !DILocation(line: 310, column: 68, scope: !964)
!1838 = !DILocation(line: 310, column: 68, scope: !965)
!1839 = !DILocation(line: 310, column: 68, scope: !963)
!1840 = !DILocation(line: 310, column: 68, scope: !966)
!1841 = !DILocation(line: 310, column: 68, scope: !958)
!1842 = !DILocation(line: 310, column: 81, scope: !968)
!1843 = !DILocation(line: 310, column: 81, scope: !971)
!1844 = !DILocation(line: 310, column: 81, scope: !972)
!1845 = !DILocation(line: 310, column: 81, scope: !970)
!1846 = !DILocation(line: 310, column: 81, scope: !973)
!1847 = !DILocation(line: 310, column: 81, scope: !958)
!1848 = !DILocation(line: 311, column: 17, scope: !958)
!1849 = !DILocation(line: 311, column: 21, scope: !958)
!1850 = !DILocation(line: 311, column: 32, scope: !958)
!1851 = !DILocation(line: 311, column: 35, scope: !958)
!1852 = !DILocation(line: 312, column: 13, scope: !959)
!1853 = !DILocation(line: 312, column: 13, scope: !958)
!1854 = !DILocation(line: 313, column: 9, scope: !901)
!1855 = !DILocation(line: 313, column: 9, scope: !900)
!1856 = !DILocation(line: 232, column: 28, scope: !901)
!1857 = !DILocation(line: 232, column: 9, scope: !901)
!1858 = distinct !{!1858, !1437, !1859, !1093}
!1859 = !DILocation(line: 313, column: 9, scope: !902)
!1860 = !DILocation(line: 314, column: 13, scope: !903)
!1861 = !DILocation(line: 314, column: 22, scope: !903)
!1862 = !DILocation(line: 314, column: 11, scope: !903)
!1863 = !DILocation(line: 315, column: 13, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !903, file: !2, line: 315, column: 13)
!1865 = !DILocation(line: 315, column: 15, scope: !1864)
!1866 = !DILocation(line: 315, column: 13, scope: !903)
!1867 = !DILocation(line: 316, column: 20, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1864, file: !2, line: 315, column: 23)
!1869 = !DILocation(line: 316, column: 24, scope: !1868)
!1870 = !DILocation(line: 316, column: 37, scope: !1868)
!1871 = !DILocation(line: 316, column: 18, scope: !1868)
!1872 = !DILocation(line: 317, column: 13, scope: !1868)
!1873 = !DILocation(line: 317, column: 17, scope: !1868)
!1874 = !DILocation(line: 317, column: 27, scope: !1868)
!1875 = !DILocation(line: 317, column: 30, scope: !1868)
!1876 = !DILocation(line: 318, column: 13, scope: !1868)
!1877 = !DILocation(line: 318, column: 17, scope: !1868)
!1878 = !DILocation(line: 318, column: 28, scope: !1868)
!1879 = !DILocation(line: 318, column: 34, scope: !1868)
!1880 = !DILocation(line: 318, column: 38, scope: !1868)
!1881 = !DILocation(line: 318, column: 42, scope: !1868)
!1882 = !DILocation(line: 318, column: 46, scope: !1868)
!1883 = !DILocation(line: 319, column: 13, scope: !1868)
!1884 = !DILocation(line: 319, column: 17, scope: !1868)
!1885 = !DILocation(line: 319, column: 28, scope: !1868)
!1886 = !DILocation(line: 319, column: 31, scope: !1868)
!1887 = !DILocation(line: 320, column: 9, scope: !1868)
!1888 = !DILocation(line: 320, column: 16, scope: !1864)
!1889 = !DILocation(line: 320, column: 20, scope: !1864)
!1890 = !DILocation(line: 320, column: 31, scope: !1864)
!1891 = !DILocation(line: 320, column: 37, scope: !1864)
!1892 = !DILocation(line: 320, column: 41, scope: !1864)
!1893 = !DILocation(line: 320, column: 45, scope: !1864)
!1894 = !DILocation(line: 320, column: 49, scope: !1864)
!1895 = !DILocation(line: 321, column: 5, scope: !903)
!1896 = !DILocation(line: 231, column: 31, scope: !904)
!1897 = !DILocation(line: 231, column: 5, scope: !904)
!1898 = distinct !{!1898, !1431, !1899, !1093}
!1899 = !DILocation(line: 321, column: 5, scope: !905)
!1900 = !DILocation(line: 322, column: 20, scope: !825)
!1901 = !DILocation(line: 322, column: 5, scope: !825)
!1902 = !DILocation(line: 322, column: 9, scope: !825)
!1903 = !DILocation(line: 322, column: 18, scope: !825)
!1904 = !DILocation(line: 323, column: 5, scope: !825)
!1905 = !DILocation(line: 324, column: 5, scope: !825)
!1906 = !DILocation(line: 325, column: 1, scope: !825)
!1907 = !DISubprogram(name: "fai_load", scope: !316, file: !316, line: 139, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!314, !307}
!1910 = !DISubprogram(name: "bcf_call_init", scope: !321, file: !321, line: 126, type: !1911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!319, !332, !98}
!1913 = distinct !DISubprogram(name: "get_rg_sample", scope: !2, file: !2, line: 56, type: !1914, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1916)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!382, !180, !307}
!1916 = !{!1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1928, !1929}
!1917 = !DILocalVariable(name: "header", arg: 1, scope: !1913, file: !2, line: 56, type: !180)
!1918 = !DILocalVariable(name: "sample", arg: 2, scope: !1913, file: !2, line: 56, type: !307)
!1919 = !DILocalVariable(name: "n_rg", scope: !1913, file: !2, line: 58, type: !98)
!1920 = !DILocalVariable(name: "i", scope: !1913, file: !2, line: 58, type: !98)
!1921 = !DILocalVariable(name: "id_val", scope: !1913, file: !2, line: 59, type: !231)
!1922 = !DILocalVariable(name: "sm_val", scope: !1913, file: !2, line: 59, type: !231)
!1923 = !DILocalVariable(name: "rg_hash", scope: !1913, file: !2, line: 60, type: !382)
!1924 = !DILocalVariable(name: "r", scope: !1925, file: !2, line: 72, type: !98)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !2, line: 70, column: 32)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !2, line: 70, column: 5)
!1927 = distinct !DILexicalBlock(scope: !1913, file: !2, line: 70, column: 5)
!1928 = !DILabel(scope: !1913, name: "memfail", file: !2, line: 94)
!1929 = !DILabel(scope: !1913, name: "fail", file: !2, line: 96)
!1930 = !DILocation(line: 56, column: 42, scope: !1913)
!1931 = !DILocation(line: 56, column: 62, scope: !1913)
!1932 = !DILocation(line: 58, column: 5, scope: !1913)
!1933 = !DILocation(line: 58, column: 9, scope: !1913)
!1934 = !DILocation(line: 58, column: 15, scope: !1913)
!1935 = !DILocation(line: 59, column: 5, scope: !1913)
!1936 = !DILocation(line: 59, column: 15, scope: !1913)
!1937 = !DILocation(line: 59, column: 39, scope: !1913)
!1938 = !DILocation(line: 60, column: 5, scope: !1913)
!1939 = !DILocation(line: 60, column: 21, scope: !1913)
!1940 = !DILocation(line: 60, column: 31, scope: !1913)
!1941 = !DILocation(line: 61, column: 10, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1913, file: !2, line: 61, column: 9)
!1943 = !DILocation(line: 61, column: 9, scope: !1913)
!1944 = !DILocation(line: 61, column: 19, scope: !1942)
!1945 = !DILocation(line: 64, column: 32, scope: !1913)
!1946 = !DILocation(line: 64, column: 12, scope: !1913)
!1947 = !DILocation(line: 64, column: 10, scope: !1913)
!1948 = !DILocation(line: 65, column: 9, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1913, file: !2, line: 65, column: 9)
!1950 = !DILocation(line: 65, column: 14, scope: !1949)
!1951 = !DILocation(line: 65, column: 9, scope: !1913)
!1952 = !DILocation(line: 66, column: 9, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 65, column: 19)
!1954 = !DILocation(line: 67, column: 9, scope: !1953)
!1955 = !DILocation(line: 70, column: 12, scope: !1927)
!1956 = !DILocation(line: 70, column: 10, scope: !1927)
!1957 = !DILocation(line: 70, column: 17, scope: !1926)
!1958 = !DILocation(line: 70, column: 21, scope: !1926)
!1959 = !DILocation(line: 70, column: 19, scope: !1926)
!1960 = !DILocation(line: 70, column: 5, scope: !1927)
!1961 = !DILocation(line: 72, column: 9, scope: !1925)
!1962 = !DILocation(line: 72, column: 13, scope: !1925)
!1963 = !DILocation(line: 72, column: 38, scope: !1925)
!1964 = !DILocation(line: 72, column: 52, scope: !1925)
!1965 = !DILocation(line: 72, column: 17, scope: !1925)
!1966 = !DILocation(line: 73, column: 13, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1925, file: !2, line: 73, column: 13)
!1968 = !DILocation(line: 73, column: 15, scope: !1967)
!1969 = !DILocation(line: 73, column: 13, scope: !1925)
!1970 = !DILocation(line: 73, column: 21, scope: !1967)
!1971 = !DILocation(line: 74, column: 13, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1925, file: !2, line: 74, column: 13)
!1973 = !DILocation(line: 74, column: 15, scope: !1972)
!1974 = !DILocation(line: 74, column: 13, scope: !1925)
!1975 = !DILocation(line: 74, column: 22, scope: !1972)
!1976 = !DILocation(line: 76, column: 20, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1925, file: !2, line: 76, column: 13)
!1978 = !DILocation(line: 76, column: 35, scope: !1977)
!1979 = !DILocation(line: 76, column: 13, scope: !1977)
!1980 = !DILocation(line: 76, column: 38, scope: !1977)
!1981 = !DILocation(line: 76, column: 13, scope: !1925)
!1982 = !DILocation(line: 78, column: 38, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 76, column: 44)
!1984 = !DILocation(line: 78, column: 52, scope: !1983)
!1985 = !DILocation(line: 78, column: 17, scope: !1983)
!1986 = !DILocation(line: 78, column: 15, scope: !1983)
!1987 = !DILocation(line: 79, column: 17, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1983, file: !2, line: 79, column: 17)
!1989 = !DILocation(line: 79, column: 19, scope: !1988)
!1990 = !DILocation(line: 79, column: 17, scope: !1983)
!1991 = !DILocation(line: 79, column: 25, scope: !1988)
!1992 = !DILocation(line: 80, column: 17, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1983, file: !2, line: 80, column: 17)
!1994 = !DILocation(line: 80, column: 19, scope: !1993)
!1995 = !DILocation(line: 80, column: 23, scope: !1993)
!1996 = !DILocation(line: 80, column: 33, scope: !1993)
!1997 = !DILocation(line: 80, column: 48, scope: !1993)
!1998 = !DILocation(line: 80, column: 26, scope: !1993)
!1999 = !DILocation(line: 80, column: 51, scope: !1993)
!2000 = !DILocation(line: 80, column: 17, scope: !1983)
!2001 = !DILocation(line: 81, column: 17, scope: !1993)
!2002 = !DILocation(line: 82, column: 9, scope: !1983)
!2003 = !DILocation(line: 85, column: 9, scope: !1925)
!2004 = !DILocation(line: 86, column: 13, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1925, file: !2, line: 86, column: 13)
!2006 = !DILocation(line: 86, column: 15, scope: !2005)
!2007 = !DILocation(line: 86, column: 13, scope: !1925)
!2008 = !DILocation(line: 86, column: 20, scope: !2005)
!2009 = !DILocation(line: 87, column: 9, scope: !1925)
!2010 = !DILocation(line: 88, column: 5, scope: !1926)
!2011 = !DILocation(line: 88, column: 5, scope: !1925)
!2012 = !DILocation(line: 70, column: 28, scope: !1926)
!2013 = !DILocation(line: 70, column: 5, scope: !1926)
!2014 = distinct !{!2014, !1960, !2015, !1093}
!2015 = !DILocation(line: 88, column: 5, scope: !1927)
!2016 = !DILocation(line: 90, column: 5, scope: !1913)
!2017 = !DILocation(line: 91, column: 5, scope: !1913)
!2018 = !DILocation(line: 92, column: 12, scope: !1913)
!2019 = !DILocation(line: 92, column: 5, scope: !1913)
!2020 = !DILocation(line: 94, column: 2, scope: !1913)
!2021 = !DILocation(line: 95, column: 5, scope: !1913)
!2022 = !DILocation(line: 96, column: 2, scope: !1913)
!2023 = !DILocation(line: 97, column: 5, scope: !1913)
!2024 = !DILocation(line: 98, column: 5, scope: !1913)
!2025 = !DILocation(line: 99, column: 21, scope: !1913)
!2026 = !DILocation(line: 99, column: 5, scope: !1913)
!2027 = !DILocation(line: 100, column: 5, scope: !1913)
!2028 = !DILocation(line: 101, column: 1, scope: !1913)
!2029 = distinct !DISubprogram(name: "base_tv_destroy", scope: !2, file: !2, line: 160, type: !2030, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2032)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !163}
!2032 = !{!2033}
!2033 = !DILocalVariable(name: "tv", arg: 1, scope: !2029, file: !2, line: 160, type: !163)
!2034 = !DILocation(line: 160, column: 31, scope: !2029)
!2035 = !DILocation(line: 162, column: 24, scope: !2029)
!2036 = !DILocation(line: 162, column: 28, scope: !2029)
!2037 = !DILocation(line: 162, column: 5, scope: !2029)
!2038 = !DILocation(line: 163, column: 22, scope: !2029)
!2039 = !DILocation(line: 163, column: 26, scope: !2029)
!2040 = !DILocation(line: 163, column: 5, scope: !2029)
!2041 = !DILocation(line: 164, column: 21, scope: !2029)
!2042 = !DILocation(line: 164, column: 25, scope: !2029)
!2043 = !DILocation(line: 164, column: 5, scope: !2029)
!2044 = !DILocation(line: 165, column: 9, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2029, file: !2, line: 165, column: 9)
!2046 = !DILocation(line: 165, column: 13, scope: !2045)
!2047 = !DILocation(line: 165, column: 9, scope: !2029)
!2048 = !DILocation(line: 165, column: 30, scope: !2045)
!2049 = !DILocation(line: 165, column: 34, scope: !2045)
!2050 = !DILocation(line: 165, column: 18, scope: !2045)
!2051 = !DILocation(line: 166, column: 10, scope: !2029)
!2052 = !DILocation(line: 166, column: 14, scope: !2029)
!2053 = !DILocation(line: 166, column: 5, scope: !2029)
!2054 = !DILocation(line: 167, column: 21, scope: !2029)
!2055 = !DILocation(line: 167, column: 25, scope: !2029)
!2056 = !DILocation(line: 167, column: 5, scope: !2029)
!2057 = !DILocation(line: 168, column: 21, scope: !2029)
!2058 = !DILocation(line: 168, column: 25, scope: !2029)
!2059 = !DILocation(line: 168, column: 5, scope: !2029)
!2060 = !DILocation(line: 169, column: 5, scope: !2029)
!2061 = !DILocation(line: 170, column: 1, scope: !2029)
!2062 = !DISubprogram(name: "bam_lplbuf_destroy", scope: !177, file: !177, line: 49, type: !2063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{null, !175}
!2065 = !DISubprogram(name: "bcf_call_destroy", scope: !321, file: !321, line: 127, type: !2066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !319}
!2068 = !DISubprogram(name: "hts_idx_destroy", scope: !104, file: !104, line: 874, type: !2069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null, !171}
!2071 = !DISubprogram(name: "fai_destroy", scope: !316, file: !316, line: 105, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{null, !314}
!2074 = !DISubprogram(name: "free", scope: !752, file: !752, line: 555, type: !2075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !162}
!2077 = !DISubprogram(name: "sam_hdr_destroy", scope: !182, file: !182, line: 377, type: !2078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !180}
!2080 = distinct !DISubprogram(name: "destroy_rg_hash", scope: !2, file: !2, line: 41, type: !2081, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{null, !382}
!2083 = !{!2084, !2085}
!2084 = !DILocalVariable(name: "rg_hash", arg: 1, scope: !2080, file: !2, line: 41, type: !382)
!2085 = !DILocalVariable(name: "k", scope: !2080, file: !2, line: 43, type: !2086)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "khiter_t", file: !388, line: 167, baseType: !387)
!2087 = !DILocation(line: 41, column: 45, scope: !2080)
!2088 = !DILocation(line: 43, column: 5, scope: !2080)
!2089 = !DILocation(line: 43, column: 14, scope: !2080)
!2090 = !DILocation(line: 45, column: 10, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 45, column: 9)
!2092 = !DILocation(line: 45, column: 9, scope: !2080)
!2093 = !DILocation(line: 46, column: 9, scope: !2091)
!2094 = !DILocation(line: 48, column: 12, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 48, column: 5)
!2096 = !DILocation(line: 48, column: 10, scope: !2095)
!2097 = !DILocation(line: 48, column: 17, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 48, column: 5)
!2099 = !DILocation(line: 48, column: 21, scope: !2098)
!2100 = !{!730, !611, i64 0}
!2101 = !DILocation(line: 48, column: 19, scope: !2098)
!2102 = !DILocation(line: 48, column: 5, scope: !2095)
!2103 = !DILocation(line: 49, column: 13, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 49, column: 13)
!2105 = distinct !DILexicalBlock(scope: !2098, file: !2, line: 48, column: 43)
!2106 = !{!730, !589, i64 16}
!2107 = !DILocation(line: 49, column: 13, scope: !2105)
!2108 = !DILocation(line: 50, column: 27, scope: !2104)
!2109 = !{!730, !589, i64 24}
!2110 = !DILocation(line: 50, column: 13, scope: !2104)
!2111 = !DILocation(line: 51, column: 5, scope: !2105)
!2112 = !DILocation(line: 48, column: 39, scope: !2098)
!2113 = !DILocation(line: 48, column: 5, scope: !2098)
!2114 = distinct !{!2114, !2102, !2115, !1093}
!2115 = !DILocation(line: 51, column: 5, scope: !2095)
!2116 = !DILocation(line: 52, column: 5, scope: !2080)
!2117 = !DILocation(line: 53, column: 1, scope: !2080)
!2118 = !DISubprogram(name: "hts_close", scope: !104, file: !104, line: 608, type: !2119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!98, !746}
!2121 = !DISubprogram(name: "bcf_call_glfgen", scope: !321, file: !321, line: 128, type: !2122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!98, !98, !772, !98, !319, !2124}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!2125 = !DISubprogram(name: "__ctype_toupper_loc", scope: !2126, file: !2126, line: 83, type: !2127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2126 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!2129}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!2132 = distinct !DISubprogram(name: "toupper", scope: !2126, file: !2126, line: 213, type: !2133, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!98, !98}
!2135 = !{!2136}
!2136 = !DILocalVariable(name: "__c", arg: 1, scope: !2132, file: !2126, line: 213, type: !98)
!2137 = !DILocation(line: 213, column: 1, scope: !2132)
!2138 = !DILocation(line: 215, column: 10, scope: !2132)
!2139 = !DILocation(line: 215, column: 14, scope: !2132)
!2140 = !DILocation(line: 215, column: 22, scope: !2132)
!2141 = !DILocation(line: 215, column: 25, scope: !2132)
!2142 = !DILocation(line: 215, column: 29, scope: !2132)
!2143 = !DILocation(line: 215, column: 39, scope: !2132)
!2144 = !DILocation(line: 215, column: 38, scope: !2132)
!2145 = !DILocation(line: 215, column: 63, scope: !2132)
!2146 = !DILocation(line: 215, column: 37, scope: !2132)
!2147 = !DILocation(line: 215, column: 70, scope: !2132)
!2148 = !DILocation(line: 215, column: 3, scope: !2132)
!2149 = !DISubprogram(name: "bam_plp_insertion", scope: !182, file: !182, line: 1977, type: !2150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!98, !772, !2152, !337}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!2153 = !DISubprogram(name: "bam_aux_getCSi", scope: !165, file: !165, line: 76, type: !2154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!4, !778, !98}
!2156 = !DISubprogram(name: "bam_aux_getCEi", scope: !165, file: !165, line: 75, type: !2154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2157 = !DISubprogram(name: "bam_aux_getCQi", scope: !165, file: !165, line: 77, type: !2154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2158 = !DISubprogram(name: "__ctype_tolower_loc", scope: !2126, file: !2126, line: 81, type: !2127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2159 = distinct !DISubprogram(name: "tolower", scope: !2126, file: !2126, line: 207, type: !2133, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2160)
!2160 = !{!2161}
!2161 = !DILocalVariable(name: "__c", arg: 1, scope: !2159, file: !2126, line: 207, type: !98)
!2162 = !DILocation(line: 207, column: 1, scope: !2159)
!2163 = !DILocation(line: 209, column: 10, scope: !2159)
!2164 = !DILocation(line: 209, column: 14, scope: !2159)
!2165 = !DILocation(line: 209, column: 22, scope: !2159)
!2166 = !DILocation(line: 209, column: 25, scope: !2159)
!2167 = !DILocation(line: 209, column: 29, scope: !2159)
!2168 = !DILocation(line: 209, column: 39, scope: !2159)
!2169 = !DILocation(line: 209, column: 38, scope: !2159)
!2170 = !DILocation(line: 209, column: 63, scope: !2159)
!2171 = !DILocation(line: 209, column: 37, scope: !2159)
!2172 = !DILocation(line: 209, column: 70, scope: !2159)
!2173 = !DILocation(line: 209, column: 3, scope: !2159)
!2174 = distinct !DISubprogram(name: "ks_free", scope: !232, file: !232, line: 219, type: !2175, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !2152}
!2177 = !{!2178}
!2178 = !DILocalVariable(name: "s", arg: 1, scope: !2174, file: !232, line: 219, type: !2152)
!2179 = !DILocation(line: 219, column: 39, scope: !2174)
!2180 = !DILocation(line: 221, column: 9, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2174, file: !232, line: 221, column: 9)
!2182 = !DILocation(line: 221, column: 9, scope: !2174)
!2183 = !DILocation(line: 222, column: 14, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2181, file: !232, line: 221, column: 12)
!2185 = !DILocation(line: 222, column: 17, scope: !2184)
!2186 = !DILocation(line: 222, column: 9, scope: !2184)
!2187 = !DILocation(line: 223, column: 23, scope: !2184)
!2188 = !DILocation(line: 223, column: 9, scope: !2184)
!2189 = !DILocation(line: 224, column: 5, scope: !2184)
!2190 = !DILocation(line: 225, column: 1, scope: !2174)
!2191 = distinct !DISubprogram(name: "base_draw_aln", scope: !2, file: !2, line: 352, type: !2192, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2194)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!98, !163, !98, !367}
!2194 = !{!2195, !2196, !2197, !2198, !2199, !2202, !2203, !2274, !2275, !2277}
!2195 = !DILocalVariable(name: "tv", arg: 1, scope: !2191, file: !2, line: 352, type: !163)
!2196 = !DILocalVariable(name: "tid", arg: 2, scope: !2191, file: !2, line: 352, type: !98)
!2197 = !DILocalVariable(name: "pos", arg: 3, scope: !2191, file: !2, line: 352, type: !367)
!2198 = !DILocalVariable(name: "ret", scope: !2191, file: !2, line: 354, type: !98)
!2199 = !DILocalVariable(name: "str", scope: !2200, file: !2, line: 363, type: !100)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !2, line: 362, column: 18)
!2201 = distinct !DILexicalBlock(scope: !2191, file: !2, line: 362, column: 9)
!2202 = !DILocalVariable(name: "ref_name", scope: !2200, file: !2, line: 367, type: !307)
!2203 = !DILocalVariable(name: "iter", scope: !2191, file: !2, line: 381, type: !2204)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_itr_t", file: !104, line: 844, baseType: !2206)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hts_itr_t", file: !104, line: 828, size: 1152, elements: !2207)
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2252, !2258, !2263, !2268}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "read_rest", scope: !2206, file: !104, line: 829, baseType: !197, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "finished", scope: !2206, file: !104, line: 829, baseType: !197, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "is_cram", scope: !2206, file: !104, line: 829, baseType: !197, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "nocoor", scope: !2206, file: !104, line: 829, baseType: !197, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !2206, file: !104, line: 829, baseType: !197, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !2206, file: !104, line: 829, baseType: !197, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !2206, file: !104, line: 830, baseType: !98, size: 32, offset: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "n_off", scope: !2206, file: !104, line: 830, baseType: !98, size: 32, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !2206, file: !104, line: 830, baseType: !98, size: 32, offset: 96)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "n_reg", scope: !2206, file: !104, line: 830, baseType: !98, size: 32, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "beg", scope: !2206, file: !104, line: 831, baseType: !367, size: 64, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2206, file: !104, line: 831, baseType: !367, size: 64, offset: 256)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "reg_list", scope: !2206, file: !104, line: 832, baseType: !2221, size: 64, offset: 320)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_reglist_t", file: !104, line: 783, baseType: !2223)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hts_reglist_t", file: !104, line: 777, size: 320, elements: !2224)
!2224 = !{!2225, !2226, !2233, !2234, !2235, !2236}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2223, file: !104, line: 778, baseType: !307, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "intervals", scope: !2223, file: !104, line: 779, baseType: !2227, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_pair_pos_t", file: !104, line: 764, baseType: !2229)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hts_pair_pos_t", file: !104, line: 762, size: 128, elements: !2230)
!2230 = !{!2231, !2232}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "beg", scope: !2229, file: !104, line: 763, baseType: !367, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2229, file: !104, line: 763, baseType: !367, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !2223, file: !104, line: 780, baseType: !98, size: 32, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2223, file: !104, line: 781, baseType: !197, size: 32, offset: 160)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "min_beg", scope: !2223, file: !104, line: 782, baseType: !367, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "max_end", scope: !2223, file: !104, line: 782, baseType: !367, size: 64, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "curr_tid", scope: !2206, file: !104, line: 833, baseType: !98, size: 32, offset: 384)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "curr_reg", scope: !2206, file: !104, line: 833, baseType: !98, size: 32, offset: 416)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "curr_intv", scope: !2206, file: !104, line: 833, baseType: !98, size: 32, offset: 448)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "curr_beg", scope: !2206, file: !104, line: 834, baseType: !367, size: 64, offset: 512)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "curr_end", scope: !2206, file: !104, line: 834, baseType: !367, size: 64, offset: 576)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "curr_off", scope: !2206, file: !104, line: 835, baseType: !802, size: 64, offset: 640)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "nocoor_off", scope: !2206, file: !104, line: 835, baseType: !802, size: 64, offset: 704)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !2206, file: !104, line: 836, baseType: !2245, size: 64, offset: 768)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_pair64_max_t", file: !104, line: 775, baseType: !2247)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hts_pair64_max_t", file: !104, line: 772, size: 192, elements: !2248)
!2248 = !{!2249, !2250, !2251}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !2247, file: !104, line: 773, baseType: !802, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !2247, file: !104, line: 773, baseType: !802, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2247, file: !104, line: 774, baseType: !802, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "readrec", scope: !2206, file: !104, line: 837, baseType: !2253, size: 64, offset: 832)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_readrec_func", file: !104, line: 785, baseType: !2255)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!98, !244, !162, !162, !337, !2257, !2257}
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !2206, file: !104, line: 838, baseType: !2259, size: 64, offset: 896)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_seek_func", file: !104, line: 786, baseType: !2261)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!98, !162, !227, !98}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !2206, file: !104, line: 839, baseType: !2264, size: 64, offset: 960)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "hts_tell_func", file: !104, line: 787, baseType: !2266)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!227, !162}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "bins", scope: !2206, file: !104, line: 843, baseType: !2269, size: 128, offset: 1024)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !104, line: 840, size: 128, elements: !2270)
!2270 = !{!2271, !2272, !2273}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2269, file: !104, line: 841, baseType: !98, size: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2269, file: !104, line: 841, baseType: !98, size: 32, offset: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2269, file: !104, line: 842, baseType: !337, size: 64, offset: 64)
!2274 = !DILocalVariable(name: "b", scope: !2191, file: !2, line: 382, type: !778)
!2275 = !DILocalVariable(name: "pos", scope: !2276, file: !2, line: 394, type: !367)
!2276 = distinct !DILexicalBlock(scope: !2191, file: !2, line: 393, column: 33)
!2277 = !DILocalVariable(name: "interval", scope: !2276, file: !2, line: 395, type: !98)
!2278 = !DILocation(line: 352, column: 28, scope: !2191)
!2279 = !DILocation(line: 352, column: 36, scope: !2191)
!2280 = !DILocation(line: 352, column: 51, scope: !2191)
!2281 = !DILocation(line: 354, column: 5, scope: !2191)
!2282 = !DILocation(line: 354, column: 9, scope: !2191)
!2283 = !DILocation(line: 355, column: 5, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !2, line: 355, column: 5)
!2285 = distinct !DILexicalBlock(scope: !2191, file: !2, line: 355, column: 5)
!2286 = !DILocation(line: 355, column: 5, scope: !2285)
!2287 = !DILocation(line: 357, column: 5, scope: !2191)
!2288 = !DILocation(line: 357, column: 9, scope: !2191)
!2289 = !{!610, !589, i64 176}
!2290 = !DILocation(line: 357, column: 18, scope: !2191)
!2291 = !DILocation(line: 358, column: 20, scope: !2191)
!2292 = !DILocation(line: 358, column: 5, scope: !2191)
!2293 = !DILocation(line: 358, column: 9, scope: !2191)
!2294 = !DILocation(line: 358, column: 18, scope: !2191)
!2295 = !{!610, !611, i64 80}
!2296 = !DILocation(line: 358, column: 40, scope: !2191)
!2297 = !DILocation(line: 358, column: 25, scope: !2191)
!2298 = !DILocation(line: 358, column: 29, scope: !2191)
!2299 = !DILocation(line: 358, column: 38, scope: !2191)
!2300 = !DILocation(line: 359, column: 20, scope: !2191)
!2301 = !DILocation(line: 359, column: 24, scope: !2191)
!2302 = !DILocation(line: 359, column: 33, scope: !2191)
!2303 = !DILocation(line: 359, column: 5, scope: !2191)
!2304 = !DILocation(line: 359, column: 9, scope: !2191)
!2305 = !DILocation(line: 359, column: 18, scope: !2191)
!2306 = !DILocation(line: 360, column: 5, scope: !2191)
!2307 = !DILocation(line: 360, column: 9, scope: !2191)
!2308 = !DILocation(line: 360, column: 14, scope: !2191)
!2309 = !DILocation(line: 362, column: 9, scope: !2201)
!2310 = !DILocation(line: 362, column: 13, scope: !2201)
!2311 = !DILocation(line: 362, column: 9, scope: !2191)
!2312 = !DILocation(line: 363, column: 9, scope: !2200)
!2313 = !DILocation(line: 363, column: 15, scope: !2200)
!2314 = !DILocation(line: 364, column: 13, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 364, column: 13)
!2316 = !DILocation(line: 364, column: 17, scope: !2315)
!2317 = !DILocation(line: 364, column: 13, scope: !2200)
!2318 = !DILocation(line: 364, column: 27, scope: !2315)
!2319 = !DILocation(line: 364, column: 31, scope: !2315)
!2320 = !DILocation(line: 364, column: 22, scope: !2315)
!2321 = !DILocation(line: 365, column: 9, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 365, column: 9)
!2323 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 365, column: 9)
!2324 = !DILocation(line: 365, column: 9, scope: !2323)
!2325 = !DILocation(line: 367, column: 9, scope: !2200)
!2326 = !DILocation(line: 367, column: 21, scope: !2200)
!2327 = !DILocation(line: 367, column: 49, scope: !2200)
!2328 = !DILocation(line: 367, column: 53, scope: !2200)
!2329 = !DILocation(line: 367, column: 61, scope: !2200)
!2330 = !DILocation(line: 367, column: 65, scope: !2200)
!2331 = !DILocation(line: 367, column: 32, scope: !2200)
!2332 = !DILocation(line: 368, column: 36, scope: !2200)
!2333 = !DILocation(line: 368, column: 29, scope: !2200)
!2334 = !DILocation(line: 368, column: 46, scope: !2200)
!2335 = !DILocation(line: 368, column: 22, scope: !2200)
!2336 = !DILocation(line: 368, column: 13, scope: !2200)
!2337 = !DILocation(line: 369, column: 9, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !2, line: 369, column: 9)
!2339 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 369, column: 9)
!2340 = !DILocation(line: 369, column: 9, scope: !2339)
!2341 = !DILocation(line: 370, column: 17, scope: !2200)
!2342 = !DILocation(line: 370, column: 54, scope: !2200)
!2343 = !DILocation(line: 370, column: 64, scope: !2200)
!2344 = !DILocation(line: 370, column: 68, scope: !2200)
!2345 = !DILocation(line: 370, column: 77, scope: !2200)
!2346 = !DILocation(line: 370, column: 82, scope: !2200)
!2347 = !DILocation(line: 370, column: 86, scope: !2200)
!2348 = !DILocation(line: 370, column: 97, scope: !2200)
!2349 = !DILocation(line: 370, column: 101, scope: !2200)
!2350 = !DILocation(line: 370, column: 95, scope: !2200)
!2351 = !DILocation(line: 370, column: 9, scope: !2200)
!2352 = !DILocation(line: 371, column: 31, scope: !2200)
!2353 = !DILocation(line: 371, column: 35, scope: !2200)
!2354 = !DILocation(line: 371, column: 40, scope: !2200)
!2355 = !DILocation(line: 371, column: 46, scope: !2200)
!2356 = !DILocation(line: 371, column: 50, scope: !2200)
!2357 = !DILocation(line: 371, column: 19, scope: !2200)
!2358 = !DILocation(line: 371, column: 9, scope: !2200)
!2359 = !DILocation(line: 371, column: 13, scope: !2200)
!2360 = !DILocation(line: 371, column: 17, scope: !2200)
!2361 = !DILocation(line: 372, column: 14, scope: !2200)
!2362 = !DILocation(line: 372, column: 9, scope: !2200)
!2363 = !DILocation(line: 373, column: 15, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 373, column: 14)
!2365 = !DILocation(line: 373, column: 19, scope: !2364)
!2366 = !DILocation(line: 373, column: 14, scope: !2200)
!2367 = !DILocation(line: 375, column: 21, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2364, file: !2, line: 374, column: 9)
!2369 = !DILocation(line: 375, column: 13, scope: !2368)
!2370 = !DILocation(line: 376, column: 13, scope: !2368)
!2371 = !DILocation(line: 378, column: 5, scope: !2201)
!2372 = !DILocation(line: 378, column: 5, scope: !2200)
!2373 = !DILocation(line: 380, column: 22, scope: !2191)
!2374 = !DILocation(line: 380, column: 26, scope: !2191)
!2375 = !DILocation(line: 380, column: 5, scope: !2191)
!2376 = !DILocation(line: 381, column: 5, scope: !2191)
!2377 = !DILocation(line: 381, column: 16, scope: !2191)
!2378 = !DILocation(line: 381, column: 38, scope: !2191)
!2379 = !DILocation(line: 381, column: 42, scope: !2191)
!2380 = !DILocation(line: 381, column: 47, scope: !2191)
!2381 = !DILocation(line: 381, column: 51, scope: !2191)
!2382 = !DILocation(line: 381, column: 61, scope: !2191)
!2383 = !DILocation(line: 381, column: 65, scope: !2191)
!2384 = !DILocation(line: 381, column: 75, scope: !2191)
!2385 = !DILocation(line: 381, column: 79, scope: !2191)
!2386 = !DILocation(line: 381, column: 90, scope: !2191)
!2387 = !DILocation(line: 381, column: 94, scope: !2191)
!2388 = !DILocation(line: 381, column: 88, scope: !2191)
!2389 = !DILocation(line: 381, column: 23, scope: !2191)
!2390 = !DILocation(line: 382, column: 5, scope: !2191)
!2391 = !DILocation(line: 382, column: 13, scope: !2191)
!2392 = !DILocation(line: 382, column: 17, scope: !2191)
!2393 = !DILocation(line: 383, column: 5, scope: !2191)
!2394 = !DILocation(line: 383, column: 32, scope: !2191)
!2395 = !DILocation(line: 383, column: 36, scope: !2191)
!2396 = !DILocation(line: 383, column: 40, scope: !2191)
!2397 = !DILocation(line: 383, column: 46, scope: !2191)
!2398 = !DILocation(line: 383, column: 19, scope: !2191)
!2399 = !DILocation(line: 383, column: 17, scope: !2191)
!2400 = !DILocation(line: 383, column: 50, scope: !2191)
!2401 = !DILocation(line: 383, column: 68, scope: !2191)
!2402 = !DILocation(line: 383, column: 71, scope: !2191)
!2403 = !DILocation(line: 383, column: 56, scope: !2191)
!2404 = distinct !{!2404, !2393, !2405, !1093}
!2405 = !DILocation(line: 383, column: 73, scope: !2191)
!2406 = !DILocation(line: 384, column: 18, scope: !2191)
!2407 = !DILocation(line: 384, column: 5, scope: !2191)
!2408 = !DILocation(line: 385, column: 21, scope: !2191)
!2409 = !DILocation(line: 385, column: 5, scope: !2191)
!2410 = !DILocation(line: 386, column: 9, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2191, file: !2, line: 386, column: 9)
!2412 = !DILocation(line: 386, column: 13, scope: !2411)
!2413 = !DILocation(line: 386, column: 9, scope: !2191)
!2414 = !DILocation(line: 387, column: 9, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !2, line: 386, column: 19)
!2416 = !DILocation(line: 388, column: 9, scope: !2415)
!2417 = !DILocation(line: 391, column: 24, scope: !2191)
!2418 = !DILocation(line: 391, column: 28, scope: !2191)
!2419 = !DILocation(line: 391, column: 5, scope: !2191)
!2420 = !DILocation(line: 393, column: 5, scope: !2191)
!2421 = !DILocation(line: 393, column: 12, scope: !2191)
!2422 = !DILocation(line: 393, column: 16, scope: !2191)
!2423 = !DILocation(line: 393, column: 23, scope: !2191)
!2424 = !DILocation(line: 393, column: 27, scope: !2191)
!2425 = !DILocation(line: 393, column: 21, scope: !2191)
!2426 = !DILocation(line: 394, column: 9, scope: !2276)
!2427 = !DILocation(line: 394, column: 19, scope: !2276)
!2428 = !DILocation(line: 394, column: 25, scope: !2276)
!2429 = !DILocation(line: 394, column: 29, scope: !2276)
!2430 = !DILocation(line: 394, column: 38, scope: !2276)
!2431 = !DILocation(line: 395, column: 9, scope: !2276)
!2432 = !DILocation(line: 395, column: 13, scope: !2276)
!2433 = !DILocation(line: 395, column: 24, scope: !2276)
!2434 = !DILocation(line: 395, column: 28, scope: !2276)
!2435 = !DILocation(line: 396, column: 13, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2276, file: !2, line: 396, column: 13)
!2437 = !DILocation(line: 396, column: 17, scope: !2436)
!2438 = !DILocation(line: 396, column: 16, scope: !2436)
!2439 = !DILocation(line: 396, column: 26, scope: !2436)
!2440 = !DILocation(line: 396, column: 31, scope: !2436)
!2441 = !DILocation(line: 396, column: 34, scope: !2436)
!2442 = !DILocation(line: 396, column: 38, scope: !2436)
!2443 = !DILocation(line: 396, column: 45, scope: !2436)
!2444 = !DILocation(line: 396, column: 49, scope: !2436)
!2445 = !DILocation(line: 396, column: 43, scope: !2436)
!2446 = !DILocation(line: 396, column: 54, scope: !2436)
!2447 = !DILocation(line: 396, column: 13, scope: !2276)
!2448 = !DILocation(line: 396, column: 61, scope: !2436)
!2449 = !DILocation(line: 396, column: 65, scope: !2436)
!2450 = !DILocation(line: 396, column: 77, scope: !2436)
!2451 = !DILocation(line: 396, column: 83, scope: !2436)
!2452 = !DILocation(line: 396, column: 87, scope: !2436)
!2453 = !DILocation(line: 396, column: 109, scope: !2436)
!2454 = !DILocation(line: 396, column: 112, scope: !2436)
!2455 = !DILocation(line: 397, column: 9, scope: !2276)
!2456 = !DILocation(line: 397, column: 13, scope: !2276)
!2457 = !DILocation(line: 397, column: 24, scope: !2276)
!2458 = !DILocation(line: 397, column: 30, scope: !2276)
!2459 = !DILocation(line: 397, column: 34, scope: !2276)
!2460 = !DILocation(line: 397, column: 38, scope: !2276)
!2461 = !DILocation(line: 397, column: 43, scope: !2276)
!2462 = !DILocation(line: 397, column: 47, scope: !2276)
!2463 = !DILocation(line: 397, column: 51, scope: !2276)
!2464 = !DILocation(line: 397, column: 54, scope: !2276)
!2465 = !DILocation(line: 397, column: 60, scope: !2276)
!2466 = !DILocation(line: 397, column: 64, scope: !2276)
!2467 = !DILocation(line: 397, column: 58, scope: !2276)
!2468 = !DILocation(line: 397, column: 42, scope: !2276)
!2469 = !DILocation(line: 397, column: 72, scope: !2276)
!2470 = !DILocation(line: 397, column: 76, scope: !2276)
!2471 = !DILocation(line: 397, column: 80, scope: !2276)
!2472 = !DILocation(line: 397, column: 86, scope: !2276)
!2473 = !DILocation(line: 397, column: 90, scope: !2276)
!2474 = !DILocation(line: 397, column: 84, scope: !2276)
!2475 = !DILocation(line: 398, column: 11, scope: !2276)
!2476 = !DILocation(line: 398, column: 15, scope: !2276)
!2477 = !DILocation(line: 398, column: 9, scope: !2276)
!2478 = !DILocation(line: 399, column: 5, scope: !2191)
!2479 = distinct !{!2479, !2420, !2478, !1093}
!2480 = !DILocation(line: 401, column: 1, scope: !2191)
!2481 = !DILocation(line: 400, column: 5, scope: !2191)
!2482 = !DISubprogram(name: "sam_hdr_tid2name", scope: !182, file: !182, line: 752, type: !2483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!307, !2485, !98}
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!2487 = !DISubprogram(name: "calloc", scope: !752, file: !752, line: 543, type: !2488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!162, !192, !192}
!2490 = !DISubprogram(name: "strlen", scope: !2491, file: !2491, line: 407, type: !2492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2491 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!194, !307}
!2494 = !DISubprogram(name: "sprintf", scope: !2495, file: !2495, line: 358, type: !2496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2495 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!98, !2498, !2499, null}
!2498 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!2499 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !307)
!2500 = !DISubprogram(name: "fai_fetch64", scope: !316, file: !316, line: 189, type: !2501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!100, !2503, !307, !2257}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!2505 = !DISubprogram(name: "fprintf", scope: !2495, file: !2495, line: 350, type: !2506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!98, !2508, !2499, null}
!2508 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2509)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2511, line: 7, baseType: !2512)
!2511 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2513, line: 49, size: 1728, elements: !2514)
!2513 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2514 = !{!2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2530, !2532, !2533, !2534, !2536, !2537, !2538, !2542, !2545, !2547, !2550, !2553, !2554, !2555, !2556, !2557}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2512, file: !2513, line: 51, baseType: !98, size: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2512, file: !2513, line: 54, baseType: !100, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2512, file: !2513, line: 55, baseType: !100, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2512, file: !2513, line: 56, baseType: !100, size: 64, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2512, file: !2513, line: 57, baseType: !100, size: 64, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2512, file: !2513, line: 58, baseType: !100, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2512, file: !2513, line: 59, baseType: !100, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2512, file: !2513, line: 60, baseType: !100, size: 64, offset: 448)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2512, file: !2513, line: 61, baseType: !100, size: 64, offset: 512)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2512, file: !2513, line: 64, baseType: !100, size: 64, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2512, file: !2513, line: 65, baseType: !100, size: 64, offset: 640)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2512, file: !2513, line: 66, baseType: !100, size: 64, offset: 704)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2512, file: !2513, line: 68, baseType: !2528, size: 64, offset: 768)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2513, line: 36, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2512, file: !2513, line: 70, baseType: !2531, size: 64, offset: 832)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2512, file: !2513, line: 72, baseType: !98, size: 32, offset: 896)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2512, file: !2513, line: 73, baseType: !98, size: 32, offset: 928)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2512, file: !2513, line: 74, baseType: !2535, size: 64, offset: 960)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !189, line: 152, baseType: !229)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2512, file: !2513, line: 77, baseType: !360, size: 16, offset: 1024)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2512, file: !2513, line: 78, baseType: !205, size: 8, offset: 1040)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2512, file: !2513, line: 79, baseType: !2539, size: 8, offset: 1048)
!2539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !2540)
!2540 = !{!2541}
!2541 = !DISubrange(count: 1)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2512, file: !2513, line: 81, baseType: !2543, size: 64, offset: 1088)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2513, line: 43, baseType: null)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2512, file: !2513, line: 89, baseType: !2546, size: 64, offset: 1152)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !189, line: 153, baseType: !229)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2512, file: !2513, line: 91, baseType: !2548, size: 64, offset: 1216)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2513, line: 37, flags: DIFlagFwdDecl)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2512, file: !2513, line: 92, baseType: !2551, size: 64, offset: 1280)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2513, line: 38, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2512, file: !2513, line: 93, baseType: !2531, size: 64, offset: 1344)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2512, file: !2513, line: 94, baseType: !162, size: 64, offset: 1408)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2512, file: !2513, line: 95, baseType: !192, size: 64, offset: 1472)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2512, file: !2513, line: 96, baseType: !98, size: 32, offset: 1536)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2512, file: !2513, line: 98, baseType: !2558, size: 160, offset: 1568)
!2558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !2559)
!2559 = !{!2560}
!2560 = !DISubrange(count: 20)
!2561 = !DISubprogram(name: "bam_lplbuf_reset", scope: !177, file: !177, line: 43, type: !2063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2562 = !DISubprogram(name: "sam_itr_queryi", scope: !182, file: !182, line: 1262, type: !2563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!2204, !2565, !98, !367, !367}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!2567 = !DISubprogram(name: "bam_init1", scope: !182, file: !182, line: 847, type: !2568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!778}
!2570 = distinct !DISubprogram(name: "sam_itr_next", scope: !182, file: !182, line: 1339, type: !2571, scopeLine: 1339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2573)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!98, !746, !2204, !778}
!2573 = !{!2574, !2575, !2576}
!2574 = !DILocalVariable(name: "htsfp", arg: 1, scope: !2570, file: !182, line: 1339, type: !746)
!2575 = !DILocalVariable(name: "itr", arg: 2, scope: !2570, file: !182, line: 1339, type: !2204)
!2576 = !DILocalVariable(name: "r", arg: 3, scope: !2570, file: !182, line: 1339, type: !778)
!2577 = !DILocation(line: 1339, column: 41, scope: !2570)
!2578 = !DILocation(line: 1339, column: 59, scope: !2570)
!2579 = !DILocation(line: 1339, column: 72, scope: !2570)
!2580 = !DILocation(line: 1340, column: 10, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2570, file: !182, line: 1340, column: 9)
!2582 = !DILocation(line: 1340, column: 17, scope: !2581)
!2583 = !DILocation(line: 1340, column: 25, scope: !2581)
!2584 = !DILocation(line: 1340, column: 29, scope: !2581)
!2585 = !DILocation(line: 1340, column: 36, scope: !2581)
!2586 = !DILocation(line: 1340, column: 9, scope: !2570)
!2587 = !DILocation(line: 1341, column: 9, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2581, file: !182, line: 1340, column: 45)
!2589 = !{!2590, !589, i64 40}
!2590 = !{!"htsFile", !611, i64 0, !611, i64 0, !611, i64 0, !611, i64 0, !611, i64 0, !611, i64 0, !612, i64 8, !1596, i64 16, !589, i64 40, !589, i64 48, !590, i64 56, !589, i64 64, !2591, i64 72, !589, i64 104, !589, i64 112, !589, i64 120, !589, i64 128}
!2591 = !{!"htsFormat", !590, i64 0, !590, i64 4, !2592, i64 8, !590, i64 12, !1490, i64 16, !589, i64 24}
!2592 = !{!"", !1490, i64 0, !1490, i64 2}
!2593 = !DILocation(line: 1342, column: 9, scope: !2588)
!2594 = !DILocation(line: 1344, column: 10, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2570, file: !182, line: 1344, column: 9)
!2596 = !DILocation(line: 1344, column: 9, scope: !2570)
!2597 = !DILocation(line: 1345, column: 9, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2595, file: !182, line: 1344, column: 15)
!2599 = !DILocation(line: 1346, column: 9, scope: !2598)
!2600 = !DILocation(line: 1349, column: 9, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2570, file: !182, line: 1349, column: 9)
!2602 = !DILocation(line: 1349, column: 14, scope: !2601)
!2603 = !DILocation(line: 1349, column: 9, scope: !2570)
!2604 = !DILocation(line: 1350, column: 35, scope: !2601)
!2605 = !DILocation(line: 1350, column: 42, scope: !2601)
!2606 = !DILocation(line: 1350, column: 47, scope: !2601)
!2607 = !DILocation(line: 1350, column: 16, scope: !2601)
!2608 = !DILocation(line: 1350, column: 9, scope: !2601)
!2609 = !DILocation(line: 1352, column: 29, scope: !2601)
!2610 = !DILocation(line: 1352, column: 36, scope: !2601)
!2611 = !DILocation(line: 1352, column: 46, scope: !2601)
!2612 = !DILocation(line: 1352, column: 53, scope: !2601)
!2613 = !DILocation(line: 1352, column: 56, scope: !2601)
!2614 = !DILocation(line: 1352, column: 69, scope: !2601)
!2615 = !DILocation(line: 1352, column: 74, scope: !2601)
!2616 = !DILocation(line: 1352, column: 77, scope: !2601)
!2617 = !DILocation(line: 1352, column: 16, scope: !2601)
!2618 = !DILocation(line: 1352, column: 9, scope: !2601)
!2619 = !DILocation(line: 1353, column: 1, scope: !2570)
!2620 = distinct !DISubprogram(name: "tv_push_aln", scope: !2, file: !2, line: 330, type: !2621, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !2625)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!98, !2623, !163}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!2625 = !{!2626, !2627, !2628, !2633, !2634, !2637}
!2626 = !DILocalVariable(name: "b", arg: 1, scope: !2620, file: !2, line: 330, type: !2623)
!2627 = !DILocalVariable(name: "tv", arg: 2, scope: !2620, file: !2, line: 330, type: !163)
!2628 = !DILocalVariable(name: "rg", scope: !2629, file: !2, line: 335, type: !2631)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !2, line: 334, column: 5)
!2630 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 333, column: 10)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!2633 = !DILocalVariable(name: "k", scope: !2629, file: !2, line: 337, type: !2086)
!2634 = !DILocalVariable(name: "cigar", scope: !2635, file: !2, line: 341, type: !196)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !2, line: 340, column: 22)
!2636 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 340, column: 9)
!2637 = !DILocalVariable(name: "i", scope: !2635, file: !2, line: 342, type: !98)
!2638 = !DILocation(line: 330, column: 38, scope: !2620)
!2639 = !DILocation(line: 330, column: 50, scope: !2620)
!2640 = !DILocation(line: 333, column: 10, scope: !2630)
!2641 = !DILocation(line: 333, column: 14, scope: !2630)
!2642 = !DILocation(line: 333, column: 10, scope: !2620)
!2643 = !DILocation(line: 335, column: 9, scope: !2629)
!2644 = !DILocation(line: 335, column: 24, scope: !2629)
!2645 = !DILocation(line: 335, column: 41, scope: !2629)
!2646 = !DILocation(line: 335, column: 29, scope: !2629)
!2647 = !DILocation(line: 336, column: 15, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2629, file: !2, line: 336, column: 14)
!2649 = !DILocation(line: 336, column: 14, scope: !2629)
!2650 = !DILocation(line: 336, column: 20, scope: !2648)
!2651 = !DILocation(line: 337, column: 9, scope: !2629)
!2652 = !DILocation(line: 337, column: 18, scope: !2629)
!2653 = !DILocation(line: 337, column: 22, scope: !2629)
!2654 = !DILocation(line: 338, column: 14, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2629, file: !2, line: 338, column: 14)
!2656 = !DILocation(line: 338, column: 19, scope: !2655)
!2657 = !DILocation(line: 338, column: 16, scope: !2655)
!2658 = !DILocation(line: 338, column: 14, scope: !2629)
!2659 = !DILocation(line: 338, column: 41, scope: !2655)
!2660 = !DILocation(line: 339, column: 5, scope: !2630)
!2661 = !DILocation(line: 339, column: 5, scope: !2629)
!2662 = !DILocation(line: 340, column: 9, scope: !2636)
!2663 = !DILocation(line: 340, column: 13, scope: !2636)
!2664 = !{!610, !611, i64 108}
!2665 = !DILocation(line: 340, column: 9, scope: !2620)
!2666 = !DILocation(line: 341, column: 9, scope: !2635)
!2667 = !DILocation(line: 341, column: 19, scope: !2635)
!2668 = !DILocation(line: 341, column: 27, scope: !2635)
!2669 = !DILocation(line: 342, column: 9, scope: !2635)
!2670 = !DILocation(line: 342, column: 13, scope: !2635)
!2671 = !DILocation(line: 343, column: 16, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2635, file: !2, line: 343, column: 9)
!2673 = !DILocation(line: 343, column: 14, scope: !2672)
!2674 = !DILocation(line: 343, column: 21, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2672, file: !2, line: 343, column: 9)
!2676 = !DILocation(line: 343, column: 24, scope: !2675)
!2677 = !DILocation(line: 343, column: 27, scope: !2675)
!2678 = !DILocation(line: 343, column: 32, scope: !2675)
!2679 = !DILocation(line: 343, column: 23, scope: !2675)
!2680 = !DILocation(line: 343, column: 9, scope: !2672)
!2681 = !DILocation(line: 344, column: 18, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !2, line: 344, column: 17)
!2683 = distinct !DILexicalBlock(scope: !2675, file: !2, line: 343, column: 46)
!2684 = !DILocation(line: 344, column: 24, scope: !2682)
!2685 = !DILocation(line: 344, column: 26, scope: !2682)
!2686 = !DILocation(line: 344, column: 32, scope: !2682)
!2687 = !DILocation(line: 344, column: 17, scope: !2683)
!2688 = !DILocation(line: 345, column: 28, scope: !2682)
!2689 = !DILocation(line: 345, column: 34, scope: !2682)
!2690 = !DILocation(line: 345, column: 36, scope: !2682)
!2691 = !DILocation(line: 345, column: 39, scope: !2682)
!2692 = !DILocation(line: 345, column: 43, scope: !2682)
!2693 = !DILocation(line: 345, column: 17, scope: !2682)
!2694 = !DILocation(line: 345, column: 23, scope: !2682)
!2695 = !DILocation(line: 345, column: 26, scope: !2682)
!2696 = !DILocation(line: 346, column: 9, scope: !2683)
!2697 = !DILocation(line: 343, column: 41, scope: !2675)
!2698 = !DILocation(line: 343, column: 9, scope: !2675)
!2699 = distinct !{!2699, !2680, !2700, !1093}
!2700 = !DILocation(line: 346, column: 9, scope: !2672)
!2701 = !DILocation(line: 347, column: 5, scope: !2636)
!2702 = !DILocation(line: 347, column: 5, scope: !2635)
!2703 = !DILocation(line: 348, column: 21, scope: !2620)
!2704 = !DILocation(line: 348, column: 24, scope: !2620)
!2705 = !DILocation(line: 348, column: 28, scope: !2620)
!2706 = !DILocation(line: 348, column: 5, scope: !2620)
!2707 = !DILocation(line: 349, column: 5, scope: !2620)
!2708 = !DILocation(line: 350, column: 1, scope: !2620)
!2709 = !DISubprogram(name: "bam_destroy1", scope: !182, file: !182, line: 858, type: !2710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{null, !778}
!2712 = !DISubprogram(name: "hts_itr_destroy", scope: !104, file: !104, line: 1233, type: !2713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !2204}
!2715 = !DISubprogram(name: "bam_lplbuf_push", scope: !177, file: !177, line: 52, type: !2716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!98, !2623, !175}
!2718 = !DILocation(line: 438, column: 24, scope: !95)
!2719 = !DILocation(line: 438, column: 36, scope: !95)
!2720 = !DILocation(line: 440, column: 5, scope: !95)
!2721 = !DILocation(line: 440, column: 9, scope: !95)
!2722 = !DILocation(line: 440, column: 36, scope: !95)
!2723 = !DILocation(line: 441, column: 5, scope: !95)
!2724 = !DILocation(line: 441, column: 14, scope: !95)
!2725 = !DILocation(line: 442, column: 5, scope: !95)
!2726 = !DILocation(line: 442, column: 11, scope: !95)
!2727 = !DILocation(line: 442, column: 26, scope: !95)
!2728 = !DILocation(line: 442, column: 42, scope: !95)
!2729 = !DILocation(line: 442, column: 48, scope: !95)
!2730 = !DILocation(line: 443, column: 5, scope: !95)
!2731 = !DILocation(line: 443, column: 9, scope: !95)
!2732 = !DILocation(line: 443, column: 12, scope: !95)
!2733 = !DILocation(line: 443, column: 32, scope: !95)
!2734 = !DILocation(line: 445, column: 5, scope: !95)
!2735 = !DILocation(line: 445, column: 21, scope: !95)
!2736 = !DILocation(line: 451, column: 5, scope: !95)
!2737 = !DILocation(line: 451, column: 11, scope: !95)
!2738 = !DILocation(line: 452, column: 5, scope: !95)
!2739 = !DILocation(line: 452, column: 29, scope: !95)
!2740 = !DILocation(line: 452, column: 35, scope: !95)
!2741 = !DILocation(line: 452, column: 17, scope: !95)
!2742 = !DILocation(line: 452, column: 15, scope: !95)
!2743 = !DILocation(line: 452, column: 68, scope: !95)
!2744 = !DILocation(line: 453, column: 17, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !95, file: !2, line: 452, column: 74)
!2746 = !DILocation(line: 453, column: 9, scope: !2745)
!2747 = !DILocation(line: 455, column: 40, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2745, file: !2, line: 453, column: 20)
!2749 = !DILocation(line: 455, column: 33, scope: !2748)
!2750 = !DILocation(line: 455, column: 31, scope: !2748)
!2751 = !DILocation(line: 456, column: 22, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2748, file: !2, line: 456, column: 22)
!2753 = !DILocation(line: 456, column: 27, scope: !2752)
!2754 = !DILocation(line: 456, column: 25, scope: !2752)
!2755 = !DILocation(line: 456, column: 34, scope: !2752)
!2756 = !DILocation(line: 456, column: 38, scope: !2752)
!2757 = !DILocation(line: 456, column: 37, scope: !2752)
!2758 = !DILocation(line: 456, column: 42, scope: !2752)
!2759 = !DILocation(line: 456, column: 45, scope: !2752)
!2760 = !DILocation(line: 456, column: 58, scope: !2752)
!2761 = !DILocation(line: 456, column: 22, scope: !2748)
!2762 = !DILocation(line: 456, column: 96, scope: !2752)
!2763 = !DILocation(line: 456, column: 63, scope: !2752)
!2764 = !DILocation(line: 457, column: 17, scope: !2748)
!2765 = !DILocation(line: 458, column: 31, scope: !2748)
!2766 = !DILocation(line: 458, column: 30, scope: !2748)
!2767 = !DILocation(line: 458, column: 39, scope: !2748)
!2768 = !DILocation(line: 459, column: 32, scope: !2748)
!2769 = !DILocation(line: 459, column: 31, scope: !2748)
!2770 = !DILocation(line: 459, column: 40, scope: !2748)
!2771 = !DILocation(line: 460, column: 37, scope: !2748)
!2772 = !DILocation(line: 460, column: 41, scope: !2748)
!2773 = !DILocation(line: 463, column: 24, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2748, file: !2, line: 462, column: 13)
!2775 = !DILocation(line: 463, column: 17, scope: !2774)
!2776 = !DILocation(line: 465, column: 50, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2774, file: !2, line: 464, column: 17)
!2778 = !DILocation(line: 465, column: 64, scope: !2777)
!2779 = !DILocation(line: 466, column: 50, scope: !2777)
!2780 = !DILocation(line: 466, column: 64, scope: !2777)
!2781 = !DILocation(line: 467, column: 50, scope: !2777)
!2782 = !DILocation(line: 467, column: 67, scope: !2777)
!2783 = !DILocation(line: 468, column: 39, scope: !2777)
!2784 = !DILocation(line: 468, column: 56, scope: !2777)
!2785 = !DILocation(line: 470, column: 17, scope: !2774)
!2786 = !DILocation(line: 472, column: 48, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2748, file: !2, line: 472, column: 27)
!2788 = !DILocation(line: 472, column: 51, scope: !2787)
!2789 = !DILocation(line: 472, column: 27, scope: !2787)
!2790 = !DILocation(line: 472, column: 71, scope: !2787)
!2791 = !DILocation(line: 472, column: 27, scope: !2748)
!2792 = !DILocation(line: 472, column: 77, scope: !2787)
!2793 = !DILocation(line: 472, column: 74, scope: !2787)
!2794 = !DILocation(line: 474, column: 23, scope: !2748)
!2795 = !DILocation(line: 475, column: 9, scope: !2748)
!2796 = distinct !{!2796, !2738, !2797, !1093}
!2797 = !DILocation(line: 476, column: 5, scope: !95)
!2798 = !DILocation(line: 477, column: 9, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !95, file: !2, line: 477, column: 9)
!2800 = !DILocation(line: 477, column: 15, scope: !2799)
!2801 = !DILocation(line: 477, column: 13, scope: !2799)
!2802 = !DILocation(line: 477, column: 9, scope: !95)
!2803 = !DILocation(line: 477, column: 23, scope: !2799)
!2804 = !DILocation(line: 478, column: 9, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !95, file: !2, line: 478, column: 9)
!2806 = !DILocation(line: 478, column: 23, scope: !2805)
!2807 = !DILocation(line: 478, column: 26, scope: !2805)
!2808 = !DILocation(line: 478, column: 36, scope: !2805)
!2809 = !DILocation(line: 478, column: 9, scope: !95)
!2810 = !DILocation(line: 479, column: 9, scope: !2805)
!2811 = !DILocation(line: 481, column: 9, scope: !95)
!2812 = !DILocation(line: 482, column: 17, scope: !95)
!2813 = !DILocation(line: 482, column: 15, scope: !95)
!2814 = !DILocation(line: 483, column: 10, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !95, file: !2, line: 483, column: 9)
!2816 = !DILocation(line: 483, column: 9, scope: !95)
!2817 = !DILocation(line: 484, column: 16, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2815, file: !2, line: 483, column: 26)
!2819 = !DILocation(line: 484, column: 22, scope: !2818)
!2820 = !DILocation(line: 484, column: 26, scope: !2818)
!2821 = !DILocation(line: 484, column: 24, scope: !2818)
!2822 = !DILocation(line: 484, column: 15, scope: !2818)
!2823 = !DILocation(line: 484, column: 36, scope: !2818)
!2824 = !{!2825, !589, i64 64}
!2825 = !{!"sam_global_args", !2591, i64 0, !2591, i64 32, !589, i64 64, !611, i64 72, !611, i64 76}
!2826 = !DILocation(line: 484, column: 48, scope: !2818)
!2827 = !DILocation(line: 484, column: 53, scope: !2818)
!2828 = !DILocation(line: 484, column: 59, scope: !2818)
!2829 = !DILocation(line: 484, column: 13, scope: !2818)
!2830 = !DILocation(line: 485, column: 5, scope: !2818)
!2831 = !DILocation(line: 487, column: 16, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2815, file: !2, line: 486, column: 10)
!2833 = !DILocation(line: 487, column: 22, scope: !2832)
!2834 = !DILocation(line: 487, column: 26, scope: !2832)
!2835 = !DILocation(line: 487, column: 24, scope: !2832)
!2836 = !DILocation(line: 487, column: 15, scope: !2832)
!2837 = !DILocation(line: 487, column: 36, scope: !2832)
!2838 = !DILocation(line: 487, column: 48, scope: !2832)
!2839 = !DILocation(line: 487, column: 53, scope: !2832)
!2840 = !DILocation(line: 487, column: 59, scope: !2832)
!2841 = !DILocation(line: 487, column: 13, scope: !2832)
!2842 = !DILocation(line: 488, column: 13, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2832, file: !2, line: 488, column: 13)
!2844 = !DILocation(line: 488, column: 19, scope: !2843)
!2845 = !DILocation(line: 488, column: 25, scope: !2843)
!2846 = !DILocation(line: 488, column: 22, scope: !2843)
!2847 = !DILocation(line: 488, column: 13, scope: !2832)
!2848 = !DILocation(line: 489, column: 21, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2843, file: !2, line: 488, column: 31)
!2850 = !DILocation(line: 489, column: 13, scope: !2849)
!2851 = !DILocation(line: 490, column: 13, scope: !2849)
!2852 = !DILocation(line: 492, column: 18, scope: !2832)
!2853 = !DILocation(line: 492, column: 23, scope: !2832)
!2854 = !DILocation(line: 492, column: 29, scope: !2832)
!2855 = !DILocation(line: 492, column: 16, scope: !2832)
!2856 = !DILocation(line: 493, column: 21, scope: !2832)
!2857 = !DILocation(line: 493, column: 27, scope: !2832)
!2858 = !DILocation(line: 493, column: 19, scope: !2832)
!2859 = !DILocation(line: 496, column: 12, scope: !95)
!2860 = !DILocation(line: 496, column: 5, scope: !95)
!2861 = !DILocation(line: 499, column: 33, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !95, file: !2, line: 497, column: 5)
!2863 = !DILocation(line: 499, column: 38, scope: !2862)
!2864 = !DILocation(line: 499, column: 50, scope: !2862)
!2865 = !DILocation(line: 499, column: 55, scope: !2862)
!2866 = !DILocation(line: 499, column: 68, scope: !2862)
!2867 = !DILocation(line: 499, column: 18, scope: !2862)
!2868 = !DILocation(line: 499, column: 16, scope: !2862)
!2869 = !DILocation(line: 500, column: 13, scope: !2862)
!2870 = !DILocation(line: 503, column: 31, scope: !2862)
!2871 = !DILocation(line: 503, column: 36, scope: !2862)
!2872 = !DILocation(line: 503, column: 48, scope: !2862)
!2873 = !DILocation(line: 503, column: 53, scope: !2862)
!2874 = !DILocation(line: 503, column: 61, scope: !2862)
!2875 = !DILocation(line: 503, column: 74, scope: !2862)
!2876 = !DILocation(line: 503, column: 18, scope: !2862)
!2877 = !DILocation(line: 503, column: 16, scope: !2862)
!2878 = !DILocation(line: 504, column: 18, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2862, file: !2, line: 504, column: 18)
!2880 = !DILocation(line: 504, column: 18, scope: !2862)
!2881 = !DILocation(line: 504, column: 45, scope: !2879)
!2882 = !DILocation(line: 504, column: 34, scope: !2879)
!2883 = !DILocation(line: 504, column: 38, scope: !2879)
!2884 = !DILocation(line: 504, column: 43, scope: !2879)
!2885 = !DILocation(line: 505, column: 13, scope: !2862)
!2886 = !DILocation(line: 508, column: 31, scope: !2862)
!2887 = !DILocation(line: 508, column: 36, scope: !2862)
!2888 = !DILocation(line: 508, column: 48, scope: !2862)
!2889 = !DILocation(line: 508, column: 53, scope: !2862)
!2890 = !DILocation(line: 508, column: 61, scope: !2862)
!2891 = !DILocation(line: 508, column: 74, scope: !2862)
!2892 = !DILocation(line: 508, column: 18, scope: !2862)
!2893 = !DILocation(line: 508, column: 16, scope: !2862)
!2894 = !DILocation(line: 509, column: 18, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2862, file: !2, line: 509, column: 18)
!2896 = !DILocation(line: 509, column: 18, scope: !2862)
!2897 = !DILocation(line: 509, column: 45, scope: !2895)
!2898 = !DILocation(line: 509, column: 34, scope: !2895)
!2899 = !DILocation(line: 509, column: 38, scope: !2895)
!2900 = !DILocation(line: 509, column: 43, scope: !2895)
!2901 = !DILocation(line: 510, column: 13, scope: !2862)
!2902 = !DILocation(line: 512, column: 9, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !95, file: !2, line: 512, column: 9)
!2904 = !DILocation(line: 512, column: 11, scope: !2903)
!2905 = !DILocation(line: 512, column: 9, scope: !95)
!2906 = !DILocation(line: 514, column: 9, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2903, file: !2, line: 513, column: 5)
!2908 = !DILocation(line: 515, column: 9, scope: !2907)
!2909 = !DILocation(line: 518, column: 10, scope: !554)
!2910 = !DILocation(line: 518, column: 10, scope: !95)
!2911 = !DILocation(line: 520, column: 9, scope: !553)
!2912 = !DILocation(line: 520, column: 13, scope: !553)
!2913 = !DILocation(line: 521, column: 9, scope: !553)
!2914 = !DILocation(line: 521, column: 19, scope: !553)
!2915 = !DILocation(line: 521, column: 24, scope: !553)
!2916 = !DILocation(line: 522, column: 31, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !553, file: !2, line: 522, column: 13)
!2918 = !DILocation(line: 522, column: 35, scope: !2917)
!2919 = !DILocation(line: 522, column: 43, scope: !2917)
!2920 = !DILocation(line: 522, column: 14, scope: !2917)
!2921 = !DILocation(line: 522, column: 13, scope: !553)
!2922 = !DILocation(line: 523, column: 13, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2917, file: !2, line: 522, column: 75)
!2924 = !DILocation(line: 523, column: 17, scope: !2923)
!2925 = !{!610, !589, i64 136}
!2926 = !DILocation(line: 523, column: 28, scope: !2923)
!2927 = !DILocation(line: 524, column: 21, scope: !2923)
!2928 = !DILocation(line: 524, column: 13, scope: !2923)
!2929 = !DILocation(line: 525, column: 13, scope: !2923)
!2930 = !DILocation(line: 527, column: 24, scope: !553)
!2931 = !DILocation(line: 527, column: 9, scope: !553)
!2932 = !DILocation(line: 527, column: 13, scope: !553)
!2933 = !DILocation(line: 527, column: 22, scope: !553)
!2934 = !DILocation(line: 528, column: 24, scope: !553)
!2935 = !DILocation(line: 528, column: 9, scope: !553)
!2936 = !DILocation(line: 528, column: 13, scope: !553)
!2937 = !DILocation(line: 528, column: 22, scope: !553)
!2938 = !DILocation(line: 529, column: 5, scope: !554)
!2939 = !DILocation(line: 529, column: 5, scope: !553)
!2940 = !DILocation(line: 530, column: 15, scope: !559)
!2941 = !DILocation(line: 530, column: 19, scope: !559)
!2942 = !DILocation(line: 530, column: 15, scope: !554)
!2943 = !DILocation(line: 533, column: 9, scope: !558)
!2944 = !DILocation(line: 533, column: 13, scope: !558)
!2945 = !DILocation(line: 534, column: 15, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !558, file: !2, line: 534, column: 9)
!2947 = !DILocation(line: 534, column: 14, scope: !2946)
!2948 = !DILocation(line: 534, column: 19, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 534, column: 9)
!2950 = !DILocation(line: 534, column: 36, scope: !2949)
!2951 = !DILocation(line: 534, column: 40, scope: !2949)
!2952 = !DILocation(line: 534, column: 23, scope: !2949)
!2953 = !DILocation(line: 534, column: 21, scope: !2949)
!2954 = !DILocation(line: 534, column: 9, scope: !2946)
!2955 = !DILocation(line: 536, column: 32, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !2, line: 536, column: 18)
!2957 = distinct !DILexicalBlock(scope: !2949, file: !2, line: 535, column: 9)
!2958 = !DILocation(line: 536, column: 36, scope: !2956)
!2959 = !DILocation(line: 536, column: 58, scope: !2956)
!2960 = !DILocation(line: 536, column: 62, scope: !2956)
!2961 = !DILocation(line: 536, column: 70, scope: !2956)
!2962 = !DILocation(line: 536, column: 41, scope: !2956)
!2963 = !DILocation(line: 536, column: 18, scope: !2956)
!2964 = !DILocation(line: 536, column: 18, scope: !2957)
!2965 = !DILocation(line: 536, column: 76, scope: !2956)
!2966 = !DILocation(line: 537, column: 9, scope: !2957)
!2967 = !DILocation(line: 534, column: 50, scope: !2949)
!2968 = !DILocation(line: 534, column: 9, scope: !2949)
!2969 = distinct !{!2969, !2954, !2970, !1093}
!2970 = !DILocation(line: 537, column: 9, scope: !2946)
!2971 = !DILocation(line: 538, column: 14, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !558, file: !2, line: 538, column: 14)
!2973 = !DILocation(line: 538, column: 30, scope: !2972)
!2974 = !DILocation(line: 538, column: 34, scope: !2972)
!2975 = !DILocation(line: 538, column: 17, scope: !2972)
!2976 = !DILocation(line: 538, column: 15, scope: !2972)
!2977 = !DILocation(line: 538, column: 14, scope: !558)
!2978 = !DILocation(line: 540, column: 13, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2972, file: !2, line: 539, column: 9)
!2980 = !DILocation(line: 540, column: 17, scope: !2979)
!2981 = !DILocation(line: 540, column: 28, scope: !2979)
!2982 = !DILocation(line: 541, column: 21, scope: !2979)
!2983 = !DILocation(line: 541, column: 13, scope: !2979)
!2984 = !DILocation(line: 542, column: 13, scope: !2979)
!2985 = !DILocation(line: 544, column: 24, scope: !558)
!2986 = !DILocation(line: 544, column: 9, scope: !558)
!2987 = !DILocation(line: 544, column: 13, scope: !558)
!2988 = !DILocation(line: 544, column: 22, scope: !558)
!2989 = !DILocation(line: 545, column: 5, scope: !559)
!2990 = !DILocation(line: 545, column: 5, scope: !558)
!2991 = !DILocation(line: 546, column: 5, scope: !95)
!2992 = !DILocation(line: 546, column: 9, scope: !95)
!2993 = !{!610, !589, i64 192}
!2994 = !DILocation(line: 546, column: 20, scope: !95)
!2995 = !DILocation(line: 546, column: 24, scope: !95)
!2996 = !DILocation(line: 546, column: 28, scope: !95)
!2997 = !DILocation(line: 546, column: 38, scope: !95)
!2998 = !DILocation(line: 546, column: 42, scope: !95)
!2999 = !DILocation(line: 547, column: 5, scope: !95)
!3000 = !DILocation(line: 547, column: 9, scope: !95)
!3001 = !{!610, !589, i64 200}
!3002 = !DILocation(line: 547, column: 17, scope: !95)
!3003 = !DILocation(line: 548, column: 5, scope: !95)
!3004 = !DILocation(line: 548, column: 9, scope: !95)
!3005 = !DILocation(line: 548, column: 20, scope: !95)
!3006 = !DILocation(line: 550, column: 5, scope: !95)
!3007 = !DILocation(line: 551, column: 1, scope: !95)
!3008 = !DISubprogram(name: "getopt_long", scope: !563, file: !563, line: 66, type: !3009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!98, !98, !3011, !307, !3013, !337}
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!3014 = !DISubprogram(name: "strtol", scope: !752, file: !752, line: 177, type: !3015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!229, !2499, !3017, !98}
!3017 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!3018 = distinct !DISubprogram(name: "error", scope: !2, file: !2, line: 406, type: !3019, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3021)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !307, null}
!3021 = !{!3022, !3023}
!3022 = !DILocalVariable(name: "format", arg: 1, scope: !3018, file: !2, line: 406, type: !307)
!3023 = !DILocalVariable(name: "ap", scope: !3024, file: !2, line: 422, type: !3026)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !2, line: 421, column: 5)
!3025 = distinct !DILexicalBlock(scope: !3018, file: !2, line: 408, column: 10)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2495, line: 52, baseType: !3027)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3028, line: 35, baseType: !3029)
!3028 = !DIFile(filename: "/usr/lib/clang/18/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "95ff2da58c2c75d7c246cff7935ff18b")
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !3030)
!3030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3031, size: 192, elements: !2540)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3036}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3031, file: !2, line: 422, baseType: !105, size: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3031, file: !2, line: 422, baseType: !105, size: 32, offset: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3031, file: !2, line: 422, baseType: !162, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3031, file: !2, line: 422, baseType: !162, size: 64, offset: 128)
!3037 = !DILocation(line: 406, column: 31, scope: !3018)
!3038 = !DILocation(line: 408, column: 11, scope: !3025)
!3039 = !DILocation(line: 408, column: 10, scope: !3018)
!3040 = !DILocation(line: 410, column: 17, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3025, file: !2, line: 409, column: 5)
!3042 = !DILocation(line: 410, column: 9, scope: !3041)
!3043 = !DILocation(line: 418, column: 29, scope: !3041)
!3044 = !DILocation(line: 418, column: 9, scope: !3041)
!3045 = !DILocation(line: 419, column: 5, scope: !3041)
!3046 = !DILocation(line: 422, column: 9, scope: !3024)
!3047 = !DILocation(line: 422, column: 17, scope: !3024)
!3048 = !DILocation(line: 423, column: 9, scope: !3024)
!3049 = !DILocation(line: 424, column: 18, scope: !3024)
!3050 = !DILocation(line: 424, column: 26, scope: !3024)
!3051 = !DILocation(line: 424, column: 34, scope: !3024)
!3052 = !DILocation(line: 424, column: 9, scope: !3024)
!3053 = !DILocation(line: 425, column: 9, scope: !3024)
!3054 = !DILocation(line: 426, column: 5, scope: !3025)
!3055 = !DILocation(line: 427, column: 5, scope: !3018)
!3056 = !DISubprogram(name: "parse_sam_global_opt", scope: !543, file: !543, line: 85, type: !3057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!98, !98, !307, !3013, !3059}
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!3060 = !DISubprogram(name: "curses_tv_init", scope: !2, file: !2, line: 431, type: !3061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!163, !307, !307, !307, !579}
!3063 = !DISubprogram(name: "text_tv_init", scope: !2, file: !2, line: 435, type: !3064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!163, !307, !307, !307, !307, !579}
!3066 = !DISubprogram(name: "html_tv_init", scope: !2, file: !2, line: 433, type: !3064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3067 = !DISubprogram(name: "sam_parse_region", scope: !182, file: !182, line: 1364, type: !3068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!307, !180, !307, !337, !2257, !2257, !98}
!3070 = !DISubprogram(name: "sam_hdr_nref", scope: !182, file: !182, line: 457, type: !3071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!98, !2485}
!3073 = !DISubprogram(name: "faidx_has_seq", scope: !316, file: !316, line: 276, type: !3074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!98, !2503, !307}
!3076 = distinct !DISubprogram(name: "kh_init_kh_rg", scope: !165, file: !165, line: 42, type: !3077, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!382}
!3079 = !DILocation(line: 42, column: 1, scope: !3076)
!3080 = !DISubprogram(name: "sam_hdr_count_lines", scope: !182, file: !182, line: 658, type: !3081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!98, !180, !307}
!3083 = !DISubprogram(name: "sam_hdr_find_tag_pos", scope: !182, file: !182, line: 717, type: !3084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!98, !180, !307, !98, !307, !2152}
!3086 = !DISubprogram(name: "strcmp", scope: !2491, file: !2491, line: 156, type: !3087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!98, !307, !307}
!3089 = distinct !DISubprogram(name: "kh_put_kh_rg", scope: !165, file: !165, line: 42, type: !3090, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!387, !382, !397, !337}
!3092 = !{!3093, !3094, !3095, !3096, !3097, !3099, !3100, !3101, !3102, !3103}
!3093 = !DILocalVariable(name: "h", arg: 1, scope: !3089, file: !165, line: 42, type: !382)
!3094 = !DILocalVariable(name: "key", arg: 2, scope: !3089, file: !165, line: 42, type: !397)
!3095 = !DILocalVariable(name: "ret", arg: 3, scope: !3089, file: !165, line: 42, type: !337)
!3096 = !DILocalVariable(name: "x", scope: !3089, file: !165, line: 42, type: !387)
!3097 = !DILocalVariable(name: "k", scope: !3098, file: !165, line: 42, type: !387)
!3098 = distinct !DILexicalBlock(scope: !3089, file: !165, line: 42, column: 1)
!3099 = !DILocalVariable(name: "i", scope: !3098, file: !165, line: 42, type: !387)
!3100 = !DILocalVariable(name: "site", scope: !3098, file: !165, line: 42, type: !387)
!3101 = !DILocalVariable(name: "last", scope: !3098, file: !165, line: 42, type: !387)
!3102 = !DILocalVariable(name: "mask", scope: !3098, file: !165, line: 42, type: !387)
!3103 = !DILocalVariable(name: "step", scope: !3098, file: !165, line: 42, type: !387)
!3104 = !DILocation(line: 42, column: 1, scope: !3089)
!3105 = !DILocation(line: 42, column: 1, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3089, file: !165, line: 42, column: 1)
!3107 = !{!730, !611, i64 8}
!3108 = !{!730, !611, i64 12}
!3109 = !DILocation(line: 42, column: 1, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !165, line: 42, column: 1)
!3111 = distinct !DILexicalBlock(scope: !3106, file: !165, line: 42, column: 1)
!3112 = !DILocation(line: 42, column: 1, scope: !3111)
!3113 = !DILocation(line: 42, column: 1, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !165, line: 42, column: 1)
!3115 = distinct !DILexicalBlock(scope: !3110, file: !165, line: 42, column: 1)
!3116 = !DILocation(line: 42, column: 1, scope: !3115)
!3117 = !DILocation(line: 42, column: 1, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3114, file: !165, line: 42, column: 1)
!3119 = !DILocation(line: 42, column: 1, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3110, file: !165, line: 42, column: 1)
!3121 = !DILocation(line: 42, column: 1, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3120, file: !165, line: 42, column: 1)
!3123 = !DILocation(line: 42, column: 1, scope: !3098)
!3124 = !DILocation(line: 42, column: 1, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3098, file: !165, line: 42, column: 1)
!3126 = !DILocation(line: 42, column: 1, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3125, file: !165, line: 42, column: 1)
!3128 = !DILocation(line: 0, scope: !3127)
!3129 = !DILocation(line: 42, column: 1, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !165, line: 42, column: 1)
!3131 = distinct !DILexicalBlock(scope: !3127, file: !165, line: 42, column: 1)
!3132 = !DILocation(line: 42, column: 1, scope: !3131)
!3133 = !DILocation(line: 42, column: 1, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3131, file: !165, line: 42, column: 1)
!3135 = !DILocation(line: 42, column: 1, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3134, file: !165, line: 42, column: 1)
!3137 = distinct !{!3137, !3126, !3126, !1093}
!3138 = !DILocation(line: 42, column: 1, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3127, file: !165, line: 42, column: 1)
!3140 = !DILocation(line: 42, column: 1, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !165, line: 42, column: 1)
!3142 = distinct !DILexicalBlock(scope: !3139, file: !165, line: 42, column: 1)
!3143 = !DILocation(line: 42, column: 1, scope: !3142)
!3144 = !DILocation(line: 42, column: 1, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3089, file: !165, line: 42, column: 1)
!3146 = !DILocation(line: 42, column: 1, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3145, file: !165, line: 42, column: 1)
!3148 = !DILocation(line: 42, column: 1, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !165, line: 42, column: 1)
!3150 = !DILocation(line: 42, column: 1, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3149, file: !165, line: 42, column: 1)
!3152 = distinct !DISubprogram(name: "ks_release", scope: !232, file: !232, line: 210, type: !3153, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!100, !2152}
!3155 = !{!3156, !3157}
!3156 = !DILocalVariable(name: "s", arg: 1, scope: !3152, file: !232, line: 210, type: !2152)
!3157 = !DILocalVariable(name: "ss", scope: !3152, file: !232, line: 212, type: !100)
!3158 = !DILocation(line: 210, column: 43, scope: !3152)
!3159 = !DILocation(line: 212, column: 2, scope: !3152)
!3160 = !DILocation(line: 212, column: 8, scope: !3152)
!3161 = !DILocation(line: 212, column: 13, scope: !3152)
!3162 = !DILocation(line: 212, column: 16, scope: !3152)
!3163 = !DILocation(line: 213, column: 9, scope: !3152)
!3164 = !DILocation(line: 213, column: 12, scope: !3152)
!3165 = !DILocation(line: 213, column: 14, scope: !3152)
!3166 = !{!1596, !612, i64 8}
!3167 = !DILocation(line: 213, column: 2, scope: !3152)
!3168 = !DILocation(line: 213, column: 5, scope: !3152)
!3169 = !DILocation(line: 213, column: 7, scope: !3152)
!3170 = !{!1596, !612, i64 0}
!3171 = !DILocation(line: 214, column: 2, scope: !3152)
!3172 = !DILocation(line: 214, column: 5, scope: !3152)
!3173 = !DILocation(line: 214, column: 7, scope: !3152)
!3174 = !DILocation(line: 215, column: 9, scope: !3152)
!3175 = !DILocation(line: 216, column: 1, scope: !3152)
!3176 = !DILocation(line: 215, column: 2, scope: !3152)
!3177 = !DISubprogram(name: "perror", scope: !2495, file: !2495, line: 804, type: !3178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{null, !307}
!3180 = distinct !DISubprogram(name: "kh_resize_kh_rg", scope: !165, file: !165, line: 42, type: !3181, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3183)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!98, !382, !387}
!3183 = !{!3184, !3185, !3186, !3187, !3188, !3194, !3197, !3205, !3206, !3207, !3209, !3210, !3211, !3215}
!3184 = !DILocalVariable(name: "h", arg: 1, scope: !3180, file: !165, line: 42, type: !382)
!3185 = !DILocalVariable(name: "new_n_buckets", arg: 2, scope: !3180, file: !165, line: 42, type: !387)
!3186 = !DILocalVariable(name: "new_flags", scope: !3180, file: !165, line: 42, type: !394)
!3187 = !DILocalVariable(name: "j", scope: !3180, file: !165, line: 42, type: !387)
!3188 = !DILocalVariable(name: "new_keys", scope: !3189, file: !165, line: 42, type: !396)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !165, line: 42, column: 1)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !165, line: 42, column: 1)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !165, line: 42, column: 1)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !165, line: 42, column: 1)
!3193 = distinct !DILexicalBlock(scope: !3180, file: !165, line: 42, column: 1)
!3194 = !DILocalVariable(name: "new_vals", scope: !3195, file: !165, line: 42, type: !399)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !165, line: 42, column: 1)
!3196 = distinct !DILexicalBlock(scope: !3189, file: !165, line: 42, column: 1)
!3197 = !DILocalVariable(name: "key", scope: !3198, file: !165, line: 42, type: !397)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !165, line: 42, column: 1)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !165, line: 42, column: 1)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !165, line: 42, column: 1)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !165, line: 42, column: 1)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !165, line: 42, column: 1)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !165, line: 42, column: 1)
!3204 = distinct !DILexicalBlock(scope: !3180, file: !165, line: 42, column: 1)
!3205 = !DILocalVariable(name: "val", scope: !3198, file: !165, line: 42, type: !307)
!3206 = !DILocalVariable(name: "new_mask", scope: !3198, file: !165, line: 42, type: !387)
!3207 = !DILocalVariable(name: "k", scope: !3208, file: !165, line: 42, type: !387)
!3208 = distinct !DILexicalBlock(scope: !3198, file: !165, line: 42, column: 1)
!3209 = !DILocalVariable(name: "i", scope: !3208, file: !165, line: 42, type: !387)
!3210 = !DILocalVariable(name: "step", scope: !3208, file: !165, line: 42, type: !387)
!3211 = !DILocalVariable(name: "tmp", scope: !3212, file: !165, line: 42, type: !397)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !165, line: 42, column: 1)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !165, line: 42, column: 1)
!3214 = distinct !DILexicalBlock(scope: !3208, file: !165, line: 42, column: 1)
!3215 = !DILocalVariable(name: "tmp", scope: !3216, file: !165, line: 42, type: !307)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !165, line: 42, column: 1)
!3217 = distinct !DILexicalBlock(scope: !3213, file: !165, line: 42, column: 1)
!3218 = !DILocation(line: 42, column: 1, scope: !3180)
!3219 = !DILocation(line: 42, column: 1, scope: !3193)
!3220 = !DILocation(line: 42, column: 1, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3193, file: !165, line: 42, column: 1)
!3222 = !DILocation(line: 42, column: 1, scope: !3192)
!3223 = !DILocation(line: 42, column: 1, scope: !3191)
!3224 = !DILocation(line: 42, column: 1, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3191, file: !165, line: 42, column: 1)
!3226 = !DILocation(line: 42, column: 1, scope: !3190)
!3227 = !DILocation(line: 42, column: 1, scope: !3189)
!3228 = !DILocation(line: 42, column: 1, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3189, file: !165, line: 42, column: 1)
!3230 = !DILocation(line: 42, column: 1, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3229, file: !165, line: 42, column: 1)
!3232 = !DILocation(line: 42, column: 1, scope: !3195)
!3233 = !{!730, !589, i64 32}
!3234 = !DILocation(line: 42, column: 1, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3195, file: !165, line: 42, column: 1)
!3236 = !DILocation(line: 42, column: 1, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3235, file: !165, line: 42, column: 1)
!3238 = !DILocation(line: 42, column: 1, scope: !3196)
!3239 = !DILocation(line: 42, column: 1, scope: !3204)
!3240 = !DILocation(line: 42, column: 1, scope: !3202)
!3241 = !DILocation(line: 42, column: 1, scope: !3201)
!3242 = !DILocation(line: 42, column: 1, scope: !3199)
!3243 = !DILocation(line: 42, column: 1, scope: !3200)
!3244 = !DILocation(line: 42, column: 1, scope: !3198)
!3245 = !DILocation(line: 42, column: 1, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3198, file: !165, line: 42, column: 1)
!3247 = !DILocation(line: 42, column: 1, scope: !3208)
!3248 = distinct !{!3248, !3247, !3247, !1093}
!3249 = !DILocation(line: 42, column: 1, scope: !3214)
!3250 = !DILocation(line: 42, column: 1, scope: !3212)
!3251 = !DILocation(line: 42, column: 1, scope: !3213)
!3252 = !DILocation(line: 42, column: 1, scope: !3216)
!3253 = !DILocation(line: 42, column: 1, scope: !3217)
!3254 = !DILocation(line: 42, column: 1, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3214, file: !165, line: 42, column: 1)
!3256 = !DILocation(line: 42, column: 1, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3255, file: !165, line: 42, column: 1)
!3258 = distinct !{!3258, !3244, !3244}
!3259 = distinct !{!3259, !3240, !3240, !1093}
!3260 = !DILocation(line: 42, column: 1, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3203, file: !165, line: 42, column: 1)
!3262 = !DILocation(line: 42, column: 1, scope: !3203)
!3263 = !DILocation(line: 42, column: 1, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3261, file: !165, line: 42, column: 1)
!3265 = !DILocation(line: 42, column: 1, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3264, file: !165, line: 42, column: 1)
!3267 = distinct !DISubprogram(name: "__ac_X31_hash_string", scope: !388, file: !388, line: 399, type: !3268, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!387, !307}
!3270 = !{!3271, !3272}
!3271 = !DILocalVariable(name: "s", arg: 1, scope: !3267, file: !388, line: 399, type: !307)
!3272 = !DILocalVariable(name: "h", scope: !3267, file: !388, line: 401, type: !387)
!3273 = !DILocation(line: 399, column: 59, scope: !3267)
!3274 = !DILocation(line: 401, column: 2, scope: !3267)
!3275 = !DILocation(line: 401, column: 10, scope: !3267)
!3276 = !DILocation(line: 401, column: 24, scope: !3267)
!3277 = !DILocation(line: 401, column: 23, scope: !3267)
!3278 = !DILocation(line: 401, column: 14, scope: !3267)
!3279 = !DILocation(line: 402, column: 6, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3267, file: !388, line: 402, column: 6)
!3281 = !DILocation(line: 402, column: 6, scope: !3267)
!3282 = !DILocation(line: 402, column: 14, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3280, file: !388, line: 402, column: 9)
!3284 = !DILocation(line: 402, column: 21, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3283, file: !388, line: 402, column: 9)
!3286 = !DILocation(line: 402, column: 20, scope: !3285)
!3287 = !DILocation(line: 402, column: 9, scope: !3283)
!3288 = !DILocation(line: 402, column: 34, scope: !3285)
!3289 = !DILocation(line: 402, column: 36, scope: !3285)
!3290 = !DILocation(line: 402, column: 44, scope: !3285)
!3291 = !DILocation(line: 402, column: 42, scope: !3285)
!3292 = !DILocation(line: 402, column: 58, scope: !3285)
!3293 = !DILocation(line: 402, column: 57, scope: !3285)
!3294 = !DILocation(line: 402, column: 48, scope: !3285)
!3295 = !DILocation(line: 402, column: 46, scope: !3285)
!3296 = !DILocation(line: 402, column: 31, scope: !3285)
!3297 = !DILocation(line: 402, column: 29, scope: !3285)
!3298 = !DILocation(line: 402, column: 24, scope: !3285)
!3299 = !DILocation(line: 402, column: 9, scope: !3285)
!3300 = distinct !{!3300, !3287, !3301, !1093}
!3301 = !DILocation(line: 402, column: 58, scope: !3283)
!3302 = !DILocation(line: 403, column: 9, scope: !3267)
!3303 = !DILocation(line: 404, column: 1, scope: !3267)
!3304 = !DILocation(line: 403, column: 2, scope: !3267)
!3305 = !DISubprogram(name: "malloc", scope: !752, file: !752, line: 540, type: !3306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!162, !192}
!3308 = !DISubprogram(name: "realloc", scope: !752, file: !752, line: 551, type: !3309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!162, !162, !192}
!3311 = distinct !DISubprogram(name: "kh_destroy_kh_rg", scope: !165, file: !165, line: 42, type: !2081, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3312)
!3312 = !{!3313}
!3313 = !DILocalVariable(name: "h", arg: 1, scope: !3311, file: !165, line: 42, type: !382)
!3314 = !DILocation(line: 42, column: 1, scope: !3311)
!3315 = !DILocation(line: 42, column: 1, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3311, file: !165, line: 42, column: 1)
!3317 = !DILocation(line: 42, column: 1, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3316, file: !165, line: 42, column: 1)
!3319 = distinct !DISubprogram(name: "ks_initialize", scope: !232, file: !232, line: 141, type: !2175, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3320)
!3320 = !{!3321}
!3321 = !DILocalVariable(name: "s", arg: 1, scope: !3319, file: !232, line: 141, type: !2152)
!3322 = !DILocation(line: 141, column: 45, scope: !3319)
!3323 = !DILocation(line: 143, column: 12, scope: !3319)
!3324 = !DILocation(line: 143, column: 15, scope: !3319)
!3325 = !DILocation(line: 143, column: 17, scope: !3319)
!3326 = !DILocation(line: 143, column: 5, scope: !3319)
!3327 = !DILocation(line: 143, column: 8, scope: !3319)
!3328 = !DILocation(line: 143, column: 10, scope: !3319)
!3329 = !DILocation(line: 144, column: 5, scope: !3319)
!3330 = !DILocation(line: 144, column: 8, scope: !3319)
!3331 = !DILocation(line: 144, column: 10, scope: !3319)
!3332 = !DILocation(line: 145, column: 1, scope: !3319)
!3333 = !DISubprogram(name: "hts_log", scope: !153, file: !153, line: 74, type: !3334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{null, !152, !307, !307, null}
!3336 = !DISubprogram(name: "hts_itr_multi_next", scope: !104, file: !104, line: 1298, type: !3337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!98, !746, !2204, !162}
!3339 = !DISubprogram(name: "hts_itr_next", scope: !104, file: !104, line: 1261, type: !3340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!98, !244, !2204, !162, !162}
!3342 = !DISubprogram(name: "bam_aux_get", scope: !182, file: !182, line: 1628, type: !3343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!805, !2623, !307}
!3345 = distinct !DISubprogram(name: "kh_get_kh_rg", scope: !165, file: !165, line: 42, type: !3346, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !3350)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!387, !3348, !397}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!3350 = !{!3351, !3352, !3353, !3356, !3357, !3358, !3359}
!3351 = !DILocalVariable(name: "h", arg: 1, scope: !3345, file: !165, line: 42, type: !3348)
!3352 = !DILocalVariable(name: "key", arg: 2, scope: !3345, file: !165, line: 42, type: !397)
!3353 = !DILocalVariable(name: "k", scope: !3354, file: !165, line: 42, type: !387)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !165, line: 42, column: 1)
!3355 = distinct !DILexicalBlock(scope: !3345, file: !165, line: 42, column: 1)
!3356 = !DILocalVariable(name: "i", scope: !3354, file: !165, line: 42, type: !387)
!3357 = !DILocalVariable(name: "last", scope: !3354, file: !165, line: 42, type: !387)
!3358 = !DILocalVariable(name: "mask", scope: !3354, file: !165, line: 42, type: !387)
!3359 = !DILocalVariable(name: "step", scope: !3354, file: !165, line: 42, type: !387)
!3360 = !DILocation(line: 42, column: 1, scope: !3345)
!3361 = !DILocation(line: 42, column: 1, scope: !3355)
!3362 = !DILocation(line: 42, column: 1, scope: !3354)
!3363 = !DILocation(line: 0, scope: !3354)
!3364 = !DILocation(line: 42, column: 1, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3354, file: !165, line: 42, column: 1)
!3366 = !DILocation(line: 42, column: 1, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3365, file: !165, line: 42, column: 1)
!3368 = distinct !{!3368, !3362, !3362, !1093}
!3369 = !DISubprogram(name: "sam_global_opt_help", scope: !543, file: !543, line: 98, type: !3370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{null, !2509, !307}
!3372 = !DISubprogram(name: "vfprintf", scope: !2495, file: !2495, line: 365, type: !3373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!98, !2508, !2499, !3375}
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)

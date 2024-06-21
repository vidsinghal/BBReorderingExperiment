; ModuleID = 'samples/439.bc'
source_filename = "ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_opt = type { ptr, i64, i32 }
%struct.fuse_args = type { i32, ptr, i32 }
%struct.sqfs_opts = type { ptr, ptr, i32, i64, i32 }
%struct.fuse_cmdline_opts = type { i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.fuse_lowlevel_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqfs_ll_chan = type { i32, ptr }
%struct.sqfs_ll_i = type { ptr, %struct.sqfs_inode }
%struct.sqfs_inode = type { %struct.squashfs_base_inode, i32, i32, %struct.sqfs_md_cursor, %union.anon }
%struct.squashfs_base_inode = type { i16, i16, i16, i16, i32, i32 }
%struct.sqfs_md_cursor = type { i64, i64 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i64, i64, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.sqfs_ll = type { %struct.sqfs, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqfs = type { i32, i64, %struct.squashfs_super_block, %struct.sqfs_table, %struct.sqfs_table, %struct.sqfs_table, %struct.sqfs_cache, %struct.sqfs_cache, %struct.sqfs_cache, %struct.sqfs_cache, ptr, %struct.squashfs_xattr_id_table, %struct.sqfs_table }
%struct.squashfs_super_block = type { i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sqfs_cache = type { ptr, ptr, ptr, i64, i64, i64 }
%struct.squashfs_xattr_id_table = type { i64, i32, i32 }
%struct.sqfs_table = type { i64, ptr }
%struct.fuse_file_info = type <{ i32, i64, [4 x i8], i64, i64, i32, [4 x i8] }>
%struct.sqfs_dir = type { %struct.sqfs_md_cursor, i64, i64, %struct.squashfs_dir_header }
%struct.squashfs_dir_header = type { i32, i32, i32 }
%struct.sqfs_dir_entry = type { i64, i32, i32, ptr, i64, i64, i64 }
%struct.fuse_entry_param = type { i64, i64, %struct.stat, double, double }
%struct.statvfs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [6 x i32] }
%struct.sigaction = type { %union.anon.2, %struct.__sigset_t, i32, ptr }
%union.anon.2 = type { ptr }
%struct.__sigset_t = type { [16 x i64] }

@.str = private unnamed_addr constant [11 x i8] c"offset=%zu\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"timeout=%u\00", align 1, !dbg !7
@__const.main.fuse_opts = private unnamed_addr constant [3 x %struct.fuse_opt] [%struct.fuse_opt { ptr @.str, i64 24, i32 0 }, %struct.fuse_opt { ptr @.str.1, i64 32, i32 0 }, %struct.fuse_opt zeroinitializer], align 16
@last_access = internal global i64 0, align 8, !dbg !9
@open_refcount = internal global i32 0, align 4, !dbg !241
@.str.2 = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1, !dbg !246
@stderr = external global ptr, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Can't initialize this filesystem!\0A\00", align 1, !dbg !251
@idle_timeout_secs = internal global i32 0, align 4, !dbg !261
@fuse_instance = internal global ptr null, align 8, !dbg !263
@.str.4 = private unnamed_addr constant [36 x i8] c"fuse: cannot get old signal handler\00", align 1, !dbg !256

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !277 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %args = alloca %struct.fuse_args, align 8
  %opts = alloca %struct.sqfs_opts, align 8
  %fuse_cmdline_opts = alloca %struct.fuse_cmdline_opts, align 8
  %err = alloca i32, align 4
  %ll = alloca ptr, align 8
  %fuse_opts = alloca [3 x %struct.fuse_opt], align 16
  %sqfs_ll_ops = alloca %struct.fuse_lowlevel_ops, align 8
  %ch = alloca %struct.sqfs_ll_chan, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !583
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !282, metadata !DIExpression()), !dbg !587
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !283, metadata !DIExpression()), !dbg !590
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #9, !dbg !591
  tail call void @llvm.dbg.declare(metadata ptr %args, metadata !284, metadata !DIExpression()), !dbg !592
  call void @llvm.lifetime.start.p0(i64 40, ptr %opts) #9, !dbg !593
  tail call void @llvm.dbg.declare(metadata ptr %opts, metadata !291, metadata !DIExpression()), !dbg !594
  call void @llvm.lifetime.start.p0(i64 48, ptr %fuse_cmdline_opts) #9, !dbg !595
  tail call void @llvm.dbg.declare(metadata ptr %fuse_cmdline_opts, metadata !303, metadata !DIExpression()), !dbg !596
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !597
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !316, metadata !DIExpression()), !dbg !598
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #9, !dbg !599
  tail call void @llvm.dbg.declare(metadata ptr %ll, metadata !317, metadata !DIExpression()), !dbg !600
  call void @llvm.lifetime.start.p0(i64 72, ptr %fuse_opts) #9, !dbg !601
  tail call void @llvm.dbg.declare(metadata ptr %fuse_opts, metadata !318, metadata !DIExpression()), !dbg !602
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %fuse_opts, ptr align 16 @__const.main.fuse_opts, i64 72, i1 false), !dbg !602
  call void @llvm.lifetime.start.p0(i64 352, ptr %sqfs_ll_ops) #9, !dbg !603
  tail call void @llvm.dbg.declare(metadata ptr %sqfs_ll_ops, metadata !327, metadata !DIExpression()), !dbg !604
  call void @llvm.memset.p0.i64(ptr align 8 %sqfs_ll_ops, i8 0, i64 352, i1 false), !dbg !605
  %getattr = getelementptr inbounds %struct.fuse_lowlevel_ops, ptr %sqfs_ll_ops, i32 0, i32 4, !dbg !606
  store ptr @sqfs_ll_op_getattr, ptr %getattr, align 8, !dbg !607, !tbaa !608
  %opendir = getelementptr inbounds %struct.fuse_lowlevel_ops, ptr %sqfs_ll_ops, i32 0, i32 20, !dbg !610
  store ptr @sqfs_ll_op_opendir, ptr %opendir, align 8, !dbg !611, !tbaa !612
  %releasedir = getelementptr inbounds %struct.fuse_lowlevel_ops, ptr %sqfs_ll_ops, i32 0, i32 22, !dbg !613
  store ptr @sqfs_ll_op_releasedir, ptr %releasedir, align 8, !dbg !614, !tbaa !615
  %readdir = getelementptr inbounds %struct.fuse_lowlevel_ops, ptr %sqfs_ll_ops, i32 0, i32 21, !dbg !616
  store ptr @sqfs_ll_op_readdir, ptr %readdir, align 8, !dbg !617, !tbaa !618
  %lookup = getelementptr inbounds %struct.fuse_lowlevel_ops, ptr %sqfs_ll_ops, i32 0, i32 2, !dbg !619
  store ptr @sqfs_ll_op_lookup, ptr %lookup, align 8, !dbg !620, !tbaa !621
  %open = getelementptr inbounds %struct.fuse_lowlevel_ops, ptr %sqfs_ll_ops, i32 0, i32 14, !dbg !622
  store ptr @sqfs_ll_op_open, ptr %open, align 8, !dbg !623, !tbaa !624
  %create = getelementptr inbounds %struct.fuse_lowlevel_ops, ptr %sqfs_ll_ops, i32 0, i32 30, !dbg !625
  store ptr @sqfs_ll_op_create, ptr %create, align 8, !dbg !626, !tbaa !627
  %release = getelementptr inbounds %struct.fuse_lowlevel_ops, ptr %sqfs_ll_ops, i32 0, i32 18, !dbg !628
  store ptr @sqfs_ll_op_release, ptr %release, align 8, !dbg !629, !tbaa !630
  %read = getelementptr inbounds %struct.fuse_lowlevel_ops, ptr %sqfs_ll_ops, i32 0, i32 15, !dbg !631
  store ptr @sqfs_ll_op_read, ptr %read, align 8, !dbg !632, !tbaa !633
  %readlink = getelementptr inbounds %struct.fuse_lowlevel_ops, ptr %sqfs_ll_ops, i32 0, i32 6, !dbg !634
  store ptr @sqfs_ll_op_readlink, ptr %readlink, align 8, !dbg !635, !tbaa !636
  %listxattr = getelementptr inbounds %struct.fuse_lowlevel_ops, ptr %sqfs_ll_ops, i32 0, i32 27, !dbg !637
  store ptr @sqfs_ll_op_listxattr, ptr %listxattr, align 8, !dbg !638, !tbaa !639
  %getxattr = getelementptr inbounds %struct.fuse_lowlevel_ops, ptr %sqfs_ll_ops, i32 0, i32 26, !dbg !640
  store ptr @sqfs_ll_op_getxattr, ptr %getxattr, align 8, !dbg !641, !tbaa !642
  %forget = getelementptr inbounds %struct.fuse_lowlevel_ops, ptr %sqfs_ll_ops, i32 0, i32 3, !dbg !643
  store ptr @sqfs_ll_op_forget, ptr %forget, align 8, !dbg !644, !tbaa !645
  %statfs = getelementptr inbounds %struct.fuse_lowlevel_ops, ptr %sqfs_ll_ops, i32 0, i32 24, !dbg !646
  store ptr @stfs_ll_op_statfs, ptr %statfs, align 8, !dbg !647, !tbaa !648
  %0 = load i32, ptr %argc.addr, align 4, !dbg !649, !tbaa !583
  %argc1 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 0, !dbg !650
  store i32 %0, ptr %argc1, align 8, !dbg !651, !tbaa !652
  %1 = load ptr, ptr %argv.addr, align 8, !dbg !654, !tbaa !588
  %argv2 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1, !dbg !655
  store ptr %1, ptr %argv2, align 8, !dbg !656, !tbaa !657
  %allocated = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2, !dbg !658
  store i32 0, ptr %allocated, align 8, !dbg !659, !tbaa !660
  %2 = load ptr, ptr %argv.addr, align 8, !dbg !661, !tbaa !588
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0, !dbg !661
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !661, !tbaa !588
  %progname = getelementptr inbounds %struct.sqfs_opts, ptr %opts, i32 0, i32 0, !dbg !662
  store ptr %3, ptr %progname, align 8, !dbg !663, !tbaa !664
  %image = getelementptr inbounds %struct.sqfs_opts, ptr %opts, i32 0, i32 1, !dbg !667
  store ptr null, ptr %image, align 8, !dbg !668, !tbaa !669
  %mountpoint = getelementptr inbounds %struct.sqfs_opts, ptr %opts, i32 0, i32 2, !dbg !670
  store i32 0, ptr %mountpoint, align 8, !dbg !671, !tbaa !672
  %offset = getelementptr inbounds %struct.sqfs_opts, ptr %opts, i32 0, i32 3, !dbg !673
  store i64 0, ptr %offset, align 8, !dbg !674, !tbaa !675
  %idle_timeout_secs = getelementptr inbounds %struct.sqfs_opts, ptr %opts, i32 0, i32 4, !dbg !676
  store i32 0, ptr %idle_timeout_secs, align 8, !dbg !677, !tbaa !678
  %arraydecay = getelementptr inbounds [3 x %struct.fuse_opt], ptr %fuse_opts, i64 0, i64 0, !dbg !679
  %call = call i32 @fuse_opt_parse(ptr noundef %args, ptr noundef %opts, ptr noundef %arraydecay, ptr noundef @sqfs_opt_proc), !dbg !681
  %cmp = icmp eq i32 %call, -1, !dbg !682
  br i1 %cmp, label %if.then, label %if.end, !dbg !683

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %argv.addr, align 8, !dbg !684, !tbaa !588
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 0, !dbg !684
  %5 = load ptr, ptr %arrayidx3, align 8, !dbg !684, !tbaa !588
  call void @sqfs_usage(ptr noundef %5, i1 noundef zeroext true), !dbg !685
  br label %if.end, !dbg !685

if.end:                                           ; preds = %if.then, %entry
  %call4 = call i32 @fuse_parse_cmdline(ptr noundef %args, ptr noundef %fuse_cmdline_opts), !dbg !686
  %cmp5 = icmp ne i32 %call4, 0, !dbg !688
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !689

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr %argv.addr, align 8, !dbg !690, !tbaa !588
  %arrayidx7 = getelementptr inbounds ptr, ptr %6, i64 0, !dbg !690
  %7 = load ptr, ptr %arrayidx7, align 8, !dbg !690, !tbaa !588
  call void @sqfs_usage(ptr noundef %7, i1 noundef zeroext true), !dbg !691
  br label %if.end8, !dbg !691

if.end8:                                          ; preds = %if.then6, %if.end
  %mountpoint9 = getelementptr inbounds %struct.fuse_cmdline_opts, ptr %fuse_cmdline_opts, i32 0, i32 4, !dbg !692
  %8 = load ptr, ptr %mountpoint9, align 8, !dbg !692, !tbaa !694
  %cmp10 = icmp eq ptr %8, null, !dbg !696
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !697

if.then11:                                        ; preds = %if.end8
  %9 = load ptr, ptr %argv.addr, align 8, !dbg !698, !tbaa !588
  %arrayidx12 = getelementptr inbounds ptr, ptr %9, i64 0, !dbg !698
  %10 = load ptr, ptr %arrayidx12, align 8, !dbg !698, !tbaa !588
  call void @sqfs_usage(ptr noundef %10, i1 noundef zeroext true), !dbg !699
  br label %if.end13, !dbg !699

if.end13:                                         ; preds = %if.then11, %if.end8
  %image14 = getelementptr inbounds %struct.sqfs_opts, ptr %opts, i32 0, i32 1, !dbg !700
  %11 = load ptr, ptr %image14, align 8, !dbg !700, !tbaa !669
  %offset15 = getelementptr inbounds %struct.sqfs_opts, ptr %opts, i32 0, i32 3, !dbg !701
  %12 = load i64, ptr %offset15, align 8, !dbg !701, !tbaa !675
  %call16 = call ptr @sqfs_ll_open(ptr noundef %11, i64 noundef %12), !dbg !702
  store ptr %call16, ptr %ll, align 8, !dbg !703, !tbaa !588
  %tobool = icmp ne ptr %call16, null, !dbg !704
  %lnot = xor i1 %tobool, true, !dbg !704
  %lnot.ext = zext i1 %lnot to i32, !dbg !704
  store i32 %lnot.ext, ptr %err, align 4, !dbg !705, !tbaa !583
  %13 = load i32, ptr %err, align 4, !dbg !706, !tbaa !583
  %tobool17 = icmp ne i32 %13, 0, !dbg !706
  br i1 %tobool17, label %if.end42, label %if.then18, !dbg !707

if.then18:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 16, ptr %ch) #9, !dbg !708
  tail call void @llvm.dbg.declare(metadata ptr %ch, metadata !575, metadata !DIExpression()), !dbg !709
  store i32 -1, ptr %err, align 4, !dbg !710, !tbaa !583
  %mountpoint19 = getelementptr inbounds %struct.fuse_cmdline_opts, ptr %fuse_cmdline_opts, i32 0, i32 4, !dbg !711
  %14 = load ptr, ptr %mountpoint19, align 8, !dbg !711, !tbaa !694
  %15 = load ptr, ptr %ll, align 8, !dbg !713, !tbaa !588
  %call20 = call i32 @sqfs_ll_mount(ptr noundef %ch, ptr noundef %14, ptr noundef %args, ptr noundef %sqfs_ll_ops, i64 noundef 352, ptr noundef %15), !dbg !714
  %cmp21 = icmp eq i32 %call20, 0, !dbg !715
  br i1 %cmp21, label %if.then22, label %if.end41, !dbg !716

if.then22:                                        ; preds = %if.then18
  %foreground = getelementptr inbounds %struct.fuse_cmdline_opts, ptr %fuse_cmdline_opts, i32 0, i32 1, !dbg !717
  %16 = load i32, ptr %foreground, align 4, !dbg !717, !tbaa !720
  %call23 = call i32 @sqfs_ll_daemonize(i32 noundef %16), !dbg !721
  %cmp24 = icmp ne i32 %call23, -1, !dbg !722
  br i1 %cmp24, label %if.then25, label %if.end39, !dbg !723

if.then25:                                        ; preds = %if.then22
  %session = getelementptr inbounds %struct.sqfs_ll_chan, ptr %ch, i32 0, i32 1, !dbg !724
  %17 = load ptr, ptr %session, align 8, !dbg !724, !tbaa !727
  %call26 = call i32 @fuse_set_signal_handlers(ptr noundef %17), !dbg !729
  %cmp27 = icmp ne i32 %call26, -1, !dbg !730
  br i1 %cmp27, label %if.then28, label %if.end38, !dbg !731

if.then28:                                        ; preds = %if.then25
  %idle_timeout_secs29 = getelementptr inbounds %struct.sqfs_opts, ptr %opts, i32 0, i32 4, !dbg !732
  %18 = load i32, ptr %idle_timeout_secs29, align 8, !dbg !732, !tbaa !678
  %tobool30 = icmp ne i32 %18, 0, !dbg !735
  br i1 %tobool30, label %if.then31, label %if.end34, !dbg !736

if.then31:                                        ; preds = %if.then28
  %session32 = getelementptr inbounds %struct.sqfs_ll_chan, ptr %ch, i32 0, i32 1, !dbg !737
  %19 = load ptr, ptr %session32, align 8, !dbg !737, !tbaa !727
  %idle_timeout_secs33 = getelementptr inbounds %struct.sqfs_opts, ptr %opts, i32 0, i32 4, !dbg !739
  %20 = load i32, ptr %idle_timeout_secs33, align 8, !dbg !739, !tbaa !678
  call void @setup_idle_timeout(ptr noundef %19, i32 noundef %20), !dbg !740
  br label %if.end34, !dbg !741

if.end34:                                         ; preds = %if.then31, %if.then28
  %session35 = getelementptr inbounds %struct.sqfs_ll_chan, ptr %ch, i32 0, i32 1, !dbg !742
  %21 = load ptr, ptr %session35, align 8, !dbg !742, !tbaa !727
  %call36 = call i32 @fuse_session_loop(ptr noundef %21), !dbg !743
  store i32 %call36, ptr %err, align 4, !dbg !744, !tbaa !583
  call void @teardown_idle_timeout(), !dbg !745
  %session37 = getelementptr inbounds %struct.sqfs_ll_chan, ptr %ch, i32 0, i32 1, !dbg !746
  %22 = load ptr, ptr %session37, align 8, !dbg !746, !tbaa !727
  call void @fuse_remove_signal_handlers(ptr noundef %22), !dbg !747
  br label %if.end38, !dbg !748

if.end38:                                         ; preds = %if.end34, %if.then25
  br label %if.end39, !dbg !749

if.end39:                                         ; preds = %if.end38, %if.then22
  %23 = load ptr, ptr %ll, align 8, !dbg !750, !tbaa !588
  call void @sqfs_ll_destroy(ptr noundef %23), !dbg !751
  %mountpoint40 = getelementptr inbounds %struct.fuse_cmdline_opts, ptr %fuse_cmdline_opts, i32 0, i32 4, !dbg !752
  %24 = load ptr, ptr %mountpoint40, align 8, !dbg !752, !tbaa !694
  call void @sqfs_ll_unmount(ptr noundef %ch, ptr noundef %24), !dbg !753
  br label %if.end41, !dbg !754

if.end41:                                         ; preds = %if.end39, %if.then18
  call void @llvm.lifetime.end.p0(i64 16, ptr %ch) #9, !dbg !755
  br label %if.end42, !dbg !756

if.end42:                                         ; preds = %if.end41, %if.end13
  call void @fuse_opt_free_args(ptr noundef %args), !dbg !757
  %25 = load ptr, ptr %ll, align 8, !dbg !758, !tbaa !588
  call void @free(ptr noundef %25) #9, !dbg !759
  %mountpoint43 = getelementptr inbounds %struct.fuse_cmdline_opts, ptr %fuse_cmdline_opts, i32 0, i32 4, !dbg !760
  %26 = load ptr, ptr %mountpoint43, align 8, !dbg !760, !tbaa !694
  call void @free(ptr noundef %26) #9, !dbg !761
  %27 = load i32, ptr %err, align 4, !dbg !762, !tbaa !583
  %sub = sub nsw i32 0, %27, !dbg !763
  call void @llvm.lifetime.end.p0(i64 352, ptr %sqfs_ll_ops) #9, !dbg !764
  call void @llvm.lifetime.end.p0(i64 72, ptr %fuse_opts) #9, !dbg !764
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #9, !dbg !764
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !764
  call void @llvm.lifetime.end.p0(i64 48, ptr %fuse_cmdline_opts) #9, !dbg !764
  call void @llvm.lifetime.end.p0(i64 40, ptr %opts) #9, !dbg !764
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #9, !dbg !764
  ret i32 %sub, !dbg !765
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal void @sqfs_ll_op_getattr(ptr noundef %req, i64 noundef %ino, ptr noundef %fi) #0 !dbg !766 {
entry:
  %req.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %fi.addr = alloca ptr, align 8
  %lli = alloca %struct.sqfs_ll_i, align 8
  %st = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !768, metadata !DIExpression()), !dbg !773
  store i64 %ino, ptr %ino.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !769, metadata !DIExpression()), !dbg !775
  store ptr %fi, ptr %fi.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %fi.addr, metadata !770, metadata !DIExpression()), !dbg !776
  call void @llvm.lifetime.start.p0(i64 72, ptr %lli) #9, !dbg !777
  tail call void @llvm.dbg.declare(metadata ptr %lli, metadata !771, metadata !DIExpression()), !dbg !778
  call void @llvm.lifetime.start.p0(i64 144, ptr %st) #9, !dbg !779
  tail call void @llvm.dbg.declare(metadata ptr %st, metadata !772, metadata !DIExpression()), !dbg !780
  %call = call i64 @time(ptr noundef null) #9, !dbg !781
  store i64 %call, ptr @last_access, align 8, !dbg !782, !tbaa !774
  %0 = load ptr, ptr %req.addr, align 8, !dbg !783, !tbaa !588
  %1 = load i64, ptr %ino.addr, align 8, !dbg !785, !tbaa !774
  %call1 = call i32 @sqfs_ll_iget(ptr noundef %0, ptr noundef %lli, i64 noundef %1), !dbg !786
  %tobool = icmp ne i32 %call1, 0, !dbg !786
  br i1 %tobool, label %if.then, label %if.end, !dbg !787

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !788

if.end:                                           ; preds = %entry
  %ll = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 0, !dbg !789
  %2 = load ptr, ptr %ll, align 8, !dbg !789, !tbaa !791
  %fs = getelementptr inbounds %struct.sqfs_ll, ptr %2, i32 0, i32 0, !dbg !797
  %inode = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 1, !dbg !798
  %call2 = call i32 @sqfs_stat(ptr noundef %fs, ptr noundef %inode, ptr noundef %st), !dbg !799
  %tobool3 = icmp ne i32 %call2, 0, !dbg !799
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !800

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr %req.addr, align 8, !dbg !801, !tbaa !588
  %call5 = call i32 @fuse_reply_err(ptr noundef %3, i32 noundef 2), !dbg !803
  br label %if.end7, !dbg !804

if.else:                                          ; preds = %if.end
  %4 = load i64, ptr %ino.addr, align 8, !dbg !805, !tbaa !774
  %st_ino = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 1, !dbg !807
  store i64 %4, ptr %st_ino, align 8, !dbg !808, !tbaa !809
  %5 = load ptr, ptr %req.addr, align 8, !dbg !811, !tbaa !588
  %call6 = call i32 @fuse_reply_attr(ptr noundef %5, ptr noundef %st, double noundef 0x7FEFFFFFFFFFFFFF), !dbg !812
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !813
  br label %cleanup, !dbg !813

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 144, ptr %st) #9, !dbg !813
  call void @llvm.lifetime.end.p0(i64 72, ptr %lli) #9, !dbg !813
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !813

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @sqfs_ll_op_opendir(ptr noundef %req, i64 noundef %ino, ptr noundef %fi) #0 !dbg !814 {
entry:
  %req.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %fi.addr = alloca ptr, align 8
  %lli = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !816, metadata !DIExpression()), !dbg !820
  store i64 %ino, ptr %ino.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !817, metadata !DIExpression()), !dbg !821
  store ptr %fi, ptr %fi.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %fi.addr, metadata !818, metadata !DIExpression()), !dbg !822
  call void @llvm.lifetime.start.p0(i64 8, ptr %lli) #9, !dbg !823
  tail call void @llvm.dbg.declare(metadata ptr %lli, metadata !819, metadata !DIExpression()), !dbg !824
  %call = call i64 @time(ptr noundef null) #9, !dbg !825
  store i64 %call, ptr @last_access, align 8, !dbg !826, !tbaa !774
  %0 = load ptr, ptr %fi.addr, align 8, !dbg !827, !tbaa !588
  %fh = getelementptr inbounds %struct.fuse_file_info, ptr %0, i32 0, i32 3, !dbg !828
  store i64 0, ptr %fh, align 8, !dbg !829, !tbaa !830
  %call1 = call noalias ptr @malloc(i64 noundef 72) #10, !dbg !832
  store ptr %call1, ptr %lli, align 8, !dbg !833, !tbaa !588
  %1 = load ptr, ptr %lli, align 8, !dbg !834, !tbaa !588
  %tobool = icmp ne ptr %1, null, !dbg !834
  br i1 %tobool, label %if.end, label %if.then, !dbg !836

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %req.addr, align 8, !dbg !837, !tbaa !588
  %call2 = call i32 @fuse_reply_err(ptr noundef %2, i32 noundef 12), !dbg !839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !840

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %req.addr, align 8, !dbg !841, !tbaa !588
  %4 = load ptr, ptr %lli, align 8, !dbg !843, !tbaa !588
  %5 = load i64, ptr %ino.addr, align 8, !dbg !844, !tbaa !774
  %call3 = call i32 @sqfs_ll_iget(ptr noundef %3, ptr noundef %4, i64 noundef %5), !dbg !845
  %cmp = icmp eq i32 %call3, 0, !dbg !846
  br i1 %cmp, label %if.then4, label %if.end12, !dbg !847

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %lli, align 8, !dbg !848, !tbaa !588
  %inode = getelementptr inbounds %struct.sqfs_ll_i, ptr %6, i32 0, i32 1, !dbg !848
  %base = getelementptr inbounds %struct.sqfs_inode, ptr %inode, i32 0, i32 0, !dbg !848
  %mode = getelementptr inbounds %struct.squashfs_base_inode, ptr %base, i32 0, i32 1, !dbg !848
  %7 = load i16, ptr %mode, align 2, !dbg !848, !tbaa !851
  %conv = zext i16 %7 to i32, !dbg !848
  %and = and i32 %conv, 61440, !dbg !848
  %cmp5 = icmp eq i32 %and, 16384, !dbg !848
  br i1 %cmp5, label %if.else, label %if.then7, !dbg !852

if.then7:                                         ; preds = %if.then4
  %8 = load ptr, ptr %req.addr, align 8, !dbg !853, !tbaa !588
  %call8 = call i32 @fuse_reply_err(ptr noundef %8, i32 noundef 20), !dbg !855
  br label %if.end11, !dbg !856

if.else:                                          ; preds = %if.then4
  %9 = load ptr, ptr %lli, align 8, !dbg !857, !tbaa !588
  %10 = ptrtoint ptr %9 to i64, !dbg !859
  %11 = load ptr, ptr %fi.addr, align 8, !dbg !860, !tbaa !588
  %fh9 = getelementptr inbounds %struct.fuse_file_info, ptr %11, i32 0, i32 3, !dbg !861
  store i64 %10, ptr %fh9, align 8, !dbg !862, !tbaa !830
  %12 = load i32, ptr @open_refcount, align 4, !dbg !863, !tbaa !583
  %inc = add nsw i32 %12, 1, !dbg !863
  store i32 %inc, ptr @open_refcount, align 4, !dbg !863, !tbaa !583
  %13 = load ptr, ptr %req.addr, align 8, !dbg !864, !tbaa !588
  %14 = load ptr, ptr %fi.addr, align 8, !dbg !865, !tbaa !588
  %call10 = call i32 @fuse_reply_open(ptr noundef %13, ptr noundef %14), !dbg !866
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !867

if.end11:                                         ; preds = %if.then7
  br label %if.end12, !dbg !868

if.end12:                                         ; preds = %if.end11, %if.end
  %15 = load ptr, ptr %lli, align 8, !dbg !869, !tbaa !588
  call void @free(ptr noundef %15) #9, !dbg !870
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !871
  br label %cleanup, !dbg !871

cleanup:                                          ; preds = %if.end12, %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lli) #9, !dbg !871
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !871

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @sqfs_ll_op_releasedir(ptr noundef %req, i64 noundef %ino, ptr noundef %fi) #0 !dbg !872 {
entry:
  %req.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %fi.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !874, metadata !DIExpression()), !dbg !877
  store i64 %ino, ptr %ino.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !875, metadata !DIExpression()), !dbg !878
  store ptr %fi, ptr %fi.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %fi.addr, metadata !876, metadata !DIExpression()), !dbg !879
  %call = call i64 @time(ptr noundef null) #9, !dbg !880
  store i64 %call, ptr @last_access, align 8, !dbg !881, !tbaa !774
  %0 = load i32, ptr @open_refcount, align 4, !dbg !882, !tbaa !583
  %dec = add nsw i32 %0, -1, !dbg !882
  store i32 %dec, ptr @open_refcount, align 4, !dbg !882, !tbaa !583
  %1 = load ptr, ptr %fi.addr, align 8, !dbg !883, !tbaa !588
  %fh = getelementptr inbounds %struct.fuse_file_info, ptr %1, i32 0, i32 3, !dbg !884
  %2 = load i64, ptr %fh, align 8, !dbg !884, !tbaa !830
  %3 = inttoptr i64 %2 to ptr, !dbg !885
  call void @free(ptr noundef %3) #9, !dbg !886
  %4 = load ptr, ptr %req.addr, align 8, !dbg !887, !tbaa !588
  %call1 = call i32 @fuse_reply_err(ptr noundef %4, i32 noundef 0), !dbg !888
  ret void, !dbg !889
}

; Function Attrs: nounwind uwtable
define internal void @sqfs_ll_op_readdir(ptr noundef %req, i64 noundef %ino, i64 noundef %size, i64 noundef %off, ptr noundef %fi) #0 !dbg !890 {
entry:
  %req.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %off.addr = alloca i64, align 8
  %fi.addr = alloca ptr, align 8
  %sqerr = alloca i32, align 4
  %dir = alloca %struct.sqfs_dir, align 8
  %namebuf = alloca [257 x i8], align 16
  %entry1 = alloca %struct.sqfs_dir_entry, align 8
  %esize = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  %buf = alloca ptr, align 8
  %bufpos = alloca ptr, align 8
  %lli = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !892, metadata !DIExpression()), !dbg !923
  store i64 %ino, ptr %ino.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !893, metadata !DIExpression()), !dbg !924
  store i64 %size, ptr %size.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !894, metadata !DIExpression()), !dbg !925
  store i64 %off, ptr %off.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !895, metadata !DIExpression()), !dbg !926
  store ptr %fi, ptr %fi.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %fi.addr, metadata !896, metadata !DIExpression()), !dbg !927
  call void @llvm.lifetime.start.p0(i64 4, ptr %sqerr) #9, !dbg !928
  tail call void @llvm.dbg.declare(metadata ptr %sqerr, metadata !897, metadata !DIExpression()), !dbg !929
  call void @llvm.lifetime.start.p0(i64 48, ptr %dir) #9, !dbg !930
  tail call void @llvm.dbg.declare(metadata ptr %dir, metadata !898, metadata !DIExpression()), !dbg !931
  call void @llvm.lifetime.start.p0(i64 257, ptr %namebuf) #9, !dbg !932
  tail call void @llvm.dbg.declare(metadata ptr %namebuf, metadata !911, metadata !DIExpression()), !dbg !933
  call void @llvm.lifetime.start.p0(i64 48, ptr %entry1) #9, !dbg !934
  tail call void @llvm.dbg.declare(metadata ptr %entry1, metadata !916, metadata !DIExpression()), !dbg !935
  call void @llvm.lifetime.start.p0(i64 8, ptr %esize) #9, !dbg !936
  tail call void @llvm.dbg.declare(metadata ptr %esize, metadata !917, metadata !DIExpression()), !dbg !937
  call void @llvm.lifetime.start.p0(i64 144, ptr %st) #9, !dbg !938
  tail call void @llvm.dbg.declare(metadata ptr %st, metadata !918, metadata !DIExpression()), !dbg !939
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #9, !dbg !940
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !919, metadata !DIExpression()), !dbg !941
  store ptr null, ptr %buf, align 8, !dbg !941, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufpos) #9, !dbg !940
  tail call void @llvm.dbg.declare(metadata ptr %bufpos, metadata !920, metadata !DIExpression()), !dbg !942
  store ptr null, ptr %bufpos, align 8, !dbg !942, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %lli) #9, !dbg !943
  tail call void @llvm.dbg.declare(metadata ptr %lli, metadata !921, metadata !DIExpression()), !dbg !944
  %0 = load ptr, ptr %fi.addr, align 8, !dbg !945, !tbaa !588
  %fh = getelementptr inbounds %struct.fuse_file_info, ptr %0, i32 0, i32 3, !dbg !946
  %1 = load i64, ptr %fh, align 8, !dbg !946, !tbaa !830
  %2 = inttoptr i64 %1 to ptr, !dbg !947
  store ptr %2, ptr %lli, align 8, !dbg !944, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !948
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !922, metadata !DIExpression()), !dbg !949
  store i32 0, ptr %err, align 4, !dbg !949, !tbaa !583
  %call = call i64 @time(ptr noundef null) #9, !dbg !950
  store i64 %call, ptr @last_access, align 8, !dbg !951, !tbaa !774
  %3 = load ptr, ptr %lli, align 8, !dbg !952, !tbaa !588
  %ll = getelementptr inbounds %struct.sqfs_ll_i, ptr %3, i32 0, i32 0, !dbg !954
  %4 = load ptr, ptr %ll, align 8, !dbg !954, !tbaa !791
  %fs = getelementptr inbounds %struct.sqfs_ll, ptr %4, i32 0, i32 0, !dbg !955
  %5 = load ptr, ptr %lli, align 8, !dbg !956, !tbaa !588
  %inode = getelementptr inbounds %struct.sqfs_ll_i, ptr %5, i32 0, i32 1, !dbg !957
  %6 = load i64, ptr %off.addr, align 8, !dbg !958, !tbaa !774
  %call2 = call i32 @sqfs_dir_open(ptr noundef %fs, ptr noundef %inode, ptr noundef %dir, i64 noundef %6), !dbg !959
  %tobool = icmp ne i32 %call2, 0, !dbg !959
  br i1 %tobool, label %if.then, label %if.end, !dbg !960

if.then:                                          ; preds = %entry
  store i32 22, ptr %err, align 4, !dbg !961, !tbaa !583
  br label %if.end, !dbg !962

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %err, align 4, !dbg !963, !tbaa !583
  %tobool3 = icmp ne i32 %7, 0, !dbg !963
  br i1 %tobool3, label %if.end7, label %land.lhs.true, !dbg !965

land.lhs.true:                                    ; preds = %if.end
  %8 = load i64, ptr %size.addr, align 8, !dbg !966, !tbaa !774
  %call4 = call noalias ptr @malloc(i64 noundef %8) #10, !dbg !967
  store ptr %call4, ptr %buf, align 8, !dbg !968, !tbaa !588
  store ptr %call4, ptr %bufpos, align 8, !dbg !969, !tbaa !588
  %tobool5 = icmp ne ptr %call4, null, !dbg !969
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !970

if.then6:                                         ; preds = %land.lhs.true
  store i32 12, ptr %err, align 4, !dbg !971, !tbaa !583
  br label %if.end7, !dbg !972

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %if.end
  %9 = load i32, ptr %err, align 4, !dbg !973, !tbaa !583
  %tobool8 = icmp ne i32 %9, 0, !dbg !973
  br i1 %tobool8, label %if.end25, label %if.then9, !dbg !975

if.then9:                                         ; preds = %if.end7
  call void @llvm.memset.p0.i64(ptr align 8 %st, i8 0, i64 144, i1 false), !dbg !976
  %arraydecay = getelementptr inbounds [257 x i8], ptr %namebuf, i64 0, i64 0, !dbg !978
  call void @sqfs_dentry_init(ptr noundef %entry1, ptr noundef %arraydecay), !dbg !979
  br label %while.cond, !dbg !980

while.cond:                                       ; preds = %if.end21, %if.then9
  %10 = load ptr, ptr %lli, align 8, !dbg !981, !tbaa !588
  %ll10 = getelementptr inbounds %struct.sqfs_ll_i, ptr %10, i32 0, i32 0, !dbg !982
  %11 = load ptr, ptr %ll10, align 8, !dbg !982, !tbaa !791
  %fs11 = getelementptr inbounds %struct.sqfs_ll, ptr %11, i32 0, i32 0, !dbg !983
  %call12 = call zeroext i1 @sqfs_dir_next(ptr noundef %fs11, ptr noundef %dir, ptr noundef %entry1, ptr noundef %sqerr), !dbg !984
  br i1 %call12, label %while.body, label %while.end, !dbg !980

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %lli, align 8, !dbg !985, !tbaa !588
  %ll13 = getelementptr inbounds %struct.sqfs_ll_i, ptr %12, i32 0, i32 0, !dbg !987
  %13 = load ptr, ptr %ll13, align 8, !dbg !987, !tbaa !791
  %ino_fuse_num = getelementptr inbounds %struct.sqfs_ll, ptr %13, i32 0, i32 5, !dbg !988
  %14 = load ptr, ptr %ino_fuse_num, align 8, !dbg !988, !tbaa !989
  %15 = load ptr, ptr %lli, align 8, !dbg !997, !tbaa !588
  %ll14 = getelementptr inbounds %struct.sqfs_ll_i, ptr %15, i32 0, i32 0, !dbg !998
  %16 = load ptr, ptr %ll14, align 8, !dbg !998, !tbaa !791
  %call15 = call i64 %14(ptr noundef %16, ptr noundef %entry1), !dbg !985
  %st_ino = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 1, !dbg !999
  store i64 %call15, ptr %st_ino, align 8, !dbg !1000, !tbaa !809
  %call16 = call i32 @sqfs_dentry_mode(ptr noundef %entry1), !dbg !1001
  %st_mode = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 3, !dbg !1002
  store i32 %call16, ptr %st_mode, align 8, !dbg !1003, !tbaa !1004
  %17 = load ptr, ptr %req.addr, align 8, !dbg !1005, !tbaa !588
  %18 = load ptr, ptr %bufpos, align 8, !dbg !1006, !tbaa !588
  %19 = load i64, ptr %size.addr, align 8, !dbg !1007, !tbaa !774
  %call17 = call ptr @sqfs_dentry_name(ptr noundef %entry1), !dbg !1008
  %call18 = call i64 @sqfs_dentry_next_offset(ptr noundef %entry1), !dbg !1009
  %call19 = call i64 @sqfs_ll_add_direntry(ptr noundef %17, ptr noundef %18, i64 noundef %19, ptr noundef %call17, ptr noundef %st, i64 noundef %call18), !dbg !1010
  store i64 %call19, ptr %esize, align 8, !dbg !1011, !tbaa !774
  %20 = load i64, ptr %esize, align 8, !dbg !1012, !tbaa !774
  %21 = load i64, ptr %size.addr, align 8, !dbg !1014, !tbaa !774
  %cmp = icmp ugt i64 %20, %21, !dbg !1015
  br i1 %cmp, label %if.then20, label %if.end21, !dbg !1016

if.then20:                                        ; preds = %while.body
  br label %while.end, !dbg !1017

if.end21:                                         ; preds = %while.body
  %22 = load i64, ptr %esize, align 8, !dbg !1018, !tbaa !774
  %23 = load ptr, ptr %bufpos, align 8, !dbg !1019, !tbaa !588
  %add.ptr = getelementptr inbounds i8, ptr %23, i64 %22, !dbg !1019
  store ptr %add.ptr, ptr %bufpos, align 8, !dbg !1019, !tbaa !588
  %24 = load i64, ptr %esize, align 8, !dbg !1020, !tbaa !774
  %25 = load i64, ptr %size.addr, align 8, !dbg !1021, !tbaa !774
  %sub = sub i64 %25, %24, !dbg !1021
  store i64 %sub, ptr %size.addr, align 8, !dbg !1021, !tbaa !774
  br label %while.cond, !dbg !980, !llvm.loop !1022

while.end:                                        ; preds = %if.then20, %while.cond
  %26 = load i32, ptr %sqerr, align 4, !dbg !1025, !tbaa !1027
  %tobool22 = icmp ne i32 %26, 0, !dbg !1025
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !1028

if.then23:                                        ; preds = %while.end
  store i32 5, ptr %err, align 4, !dbg !1029, !tbaa !583
  br label %if.end24, !dbg !1030

if.end24:                                         ; preds = %if.then23, %while.end
  br label %if.end25, !dbg !1031

if.end25:                                         ; preds = %if.end24, %if.end7
  %27 = load i32, ptr %err, align 4, !dbg !1032, !tbaa !583
  %tobool26 = icmp ne i32 %27, 0, !dbg !1032
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !1034

if.then27:                                        ; preds = %if.end25
  %28 = load ptr, ptr %req.addr, align 8, !dbg !1035, !tbaa !588
  %29 = load i32, ptr %err, align 4, !dbg !1036, !tbaa !583
  %call28 = call i32 @fuse_reply_err(ptr noundef %28, i32 noundef %29), !dbg !1037
  br label %if.end30, !dbg !1037

if.else:                                          ; preds = %if.end25
  %30 = load ptr, ptr %req.addr, align 8, !dbg !1038, !tbaa !588
  %31 = load ptr, ptr %buf, align 8, !dbg !1039, !tbaa !588
  %32 = load ptr, ptr %bufpos, align 8, !dbg !1040, !tbaa !588
  %33 = load ptr, ptr %buf, align 8, !dbg !1041, !tbaa !588
  %sub.ptr.lhs.cast = ptrtoint ptr %32 to i64, !dbg !1042
  %sub.ptr.rhs.cast = ptrtoint ptr %33 to i64, !dbg !1042
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1042
  %call29 = call i32 @fuse_reply_buf(ptr noundef %30, ptr noundef %31, i64 noundef %sub.ptr.sub), !dbg !1043
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then27
  %34 = load ptr, ptr %buf, align 8, !dbg !1044, !tbaa !588
  call void @free(ptr noundef %34) #9, !dbg !1045
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 8, ptr %lli) #9, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufpos) #9, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #9, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 144, ptr %st) #9, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 8, ptr %esize) #9, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 48, ptr %entry1) #9, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 257, ptr %namebuf) #9, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 48, ptr %dir) #9, !dbg !1046
  call void @llvm.lifetime.end.p0(i64 4, ptr %sqerr) #9, !dbg !1046
  ret void, !dbg !1046
}

; Function Attrs: nounwind uwtable
define internal void @sqfs_ll_op_lookup(ptr noundef %req, i64 noundef %parent, ptr noundef %name) #0 !dbg !1047 {
entry:
  %req.addr = alloca ptr, align 8
  %parent.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %lli = alloca %struct.sqfs_ll_i, align 8
  %sqerr = alloca i32, align 4
  %namebuf = alloca [257 x i8], align 16
  %entry1 = alloca %struct.sqfs_dir_entry, align 8
  %found = alloca i8, align 1
  %inode = alloca %struct.sqfs_inode, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %fentry = alloca %struct.fuse_entry_param, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !1049, metadata !DIExpression()), !dbg !1069
  store i64 %parent, ptr %parent.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1050, metadata !DIExpression()), !dbg !1070
  store ptr %name, ptr %name.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1051, metadata !DIExpression()), !dbg !1071
  call void @llvm.lifetime.start.p0(i64 72, ptr %lli) #9, !dbg !1072
  tail call void @llvm.dbg.declare(metadata ptr %lli, metadata !1052, metadata !DIExpression()), !dbg !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr %sqerr) #9, !dbg !1074
  tail call void @llvm.dbg.declare(metadata ptr %sqerr, metadata !1053, metadata !DIExpression()), !dbg !1075
  call void @llvm.lifetime.start.p0(i64 257, ptr %namebuf) #9, !dbg !1076
  tail call void @llvm.dbg.declare(metadata ptr %namebuf, metadata !1054, metadata !DIExpression()), !dbg !1077
  call void @llvm.lifetime.start.p0(i64 48, ptr %entry1) #9, !dbg !1078
  tail call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1055, metadata !DIExpression()), !dbg !1079
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #9, !dbg !1080
  tail call void @llvm.dbg.declare(metadata ptr %found, metadata !1056, metadata !DIExpression()), !dbg !1081
  call void @llvm.lifetime.start.p0(i64 64, ptr %inode) #9, !dbg !1082
  tail call void @llvm.dbg.declare(metadata ptr %inode, metadata !1058, metadata !DIExpression()), !dbg !1083
  %call = call i64 @time(ptr noundef null) #9, !dbg !1084
  store i64 %call, ptr @last_access, align 8, !dbg !1085, !tbaa !774
  %0 = load ptr, ptr %req.addr, align 8, !dbg !1086, !tbaa !588
  %1 = load i64, ptr %parent.addr, align 8, !dbg !1088, !tbaa !774
  %call2 = call i32 @sqfs_ll_iget(ptr noundef %0, ptr noundef %lli, i64 noundef %1), !dbg !1089
  %tobool = icmp ne i32 %call2, 0, !dbg !1089
  br i1 %tobool, label %if.then, label %if.end, !dbg !1090

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1091

if.end:                                           ; preds = %entry
  %inode3 = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 1, !dbg !1092
  %base = getelementptr inbounds %struct.sqfs_inode, ptr %inode3, i32 0, i32 0, !dbg !1092
  %mode = getelementptr inbounds %struct.squashfs_base_inode, ptr %base, i32 0, i32 1, !dbg !1092
  %2 = load i16, ptr %mode, align 2, !dbg !1092, !tbaa !851
  %conv = zext i16 %2 to i32, !dbg !1092
  %and = and i32 %conv, 61440, !dbg !1092
  %cmp = icmp eq i32 %and, 16384, !dbg !1092
  br i1 %cmp, label %if.end7, label %if.then5, !dbg !1094

if.then5:                                         ; preds = %if.end
  %3 = load ptr, ptr %req.addr, align 8, !dbg !1095, !tbaa !588
  %call6 = call i32 @fuse_reply_err(ptr noundef %3, i32 noundef 20), !dbg !1097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1098

if.end7:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [257 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1099
  call void @sqfs_dentry_init(ptr noundef %entry1, ptr noundef %arraydecay), !dbg !1100
  %ll = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 0, !dbg !1101
  %4 = load ptr, ptr %ll, align 8, !dbg !1101, !tbaa !791
  %fs = getelementptr inbounds %struct.sqfs_ll, ptr %4, i32 0, i32 0, !dbg !1102
  %inode8 = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 1, !dbg !1103
  %5 = load ptr, ptr %name.addr, align 8, !dbg !1104, !tbaa !588
  %6 = load ptr, ptr %name.addr, align 8, !dbg !1105, !tbaa !588
  %call9 = call i64 @strlen(ptr noundef %6) #11, !dbg !1106
  %call10 = call i32 @sqfs_dir_lookup(ptr noundef %fs, ptr noundef %inode8, ptr noundef %5, i64 noundef %call9, ptr noundef %entry1, ptr noundef %found), !dbg !1107
  store i32 %call10, ptr %sqerr, align 4, !dbg !1108, !tbaa !1027
  %7 = load i32, ptr %sqerr, align 4, !dbg !1109, !tbaa !1027
  %tobool11 = icmp ne i32 %7, 0, !dbg !1109
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !1111

if.then12:                                        ; preds = %if.end7
  %8 = load ptr, ptr %req.addr, align 8, !dbg !1112, !tbaa !588
  %call13 = call i32 @fuse_reply_err(ptr noundef %8, i32 noundef 5), !dbg !1114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1115

if.end14:                                         ; preds = %if.end7
  %9 = load i8, ptr %found, align 1, !dbg !1116, !tbaa !1118, !range !1120, !noundef !1121
  %tobool15 = trunc i8 %9 to i1, !dbg !1116
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !1122

if.then16:                                        ; preds = %if.end14
  %10 = load ptr, ptr %req.addr, align 8, !dbg !1123, !tbaa !588
  %call17 = call i32 @fuse_reply_err(ptr noundef %10, i32 noundef 2), !dbg !1125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1126

if.end18:                                         ; preds = %if.end14
  %ll19 = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 0, !dbg !1127
  %11 = load ptr, ptr %ll19, align 8, !dbg !1127, !tbaa !791
  %fs20 = getelementptr inbounds %struct.sqfs_ll, ptr %11, i32 0, i32 0, !dbg !1128
  %call21 = call i64 @sqfs_dentry_inode(ptr noundef %entry1), !dbg !1129
  %call22 = call i32 @sqfs_inode_get(ptr noundef %fs20, ptr noundef %inode, i64 noundef %call21), !dbg !1130
  %tobool23 = icmp ne i32 %call22, 0, !dbg !1130
  br i1 %tobool23, label %if.then24, label %if.else, !dbg !1131

if.then24:                                        ; preds = %if.end18
  %12 = load ptr, ptr %req.addr, align 8, !dbg !1132, !tbaa !588
  %call25 = call i32 @fuse_reply_err(ptr noundef %12, i32 noundef 2), !dbg !1134
  br label %if.end40, !dbg !1135

if.else:                                          ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 176, ptr %fentry) #9, !dbg !1136
  tail call void @llvm.dbg.declare(metadata ptr %fentry, metadata !1059, metadata !DIExpression()), !dbg !1137
  call void @llvm.memset.p0.i64(ptr align 8 %fentry, i8 0, i64 176, i1 false), !dbg !1138
  %ll26 = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 0, !dbg !1139
  %13 = load ptr, ptr %ll26, align 8, !dbg !1139, !tbaa !791
  %fs27 = getelementptr inbounds %struct.sqfs_ll, ptr %13, i32 0, i32 0, !dbg !1141
  %attr = getelementptr inbounds %struct.fuse_entry_param, ptr %fentry, i32 0, i32 2, !dbg !1142
  %call28 = call i32 @sqfs_stat(ptr noundef %fs27, ptr noundef %inode, ptr noundef %attr), !dbg !1143
  %tobool29 = icmp ne i32 %call28, 0, !dbg !1143
  br i1 %tobool29, label %if.then30, label %if.else32, !dbg !1144

if.then30:                                        ; preds = %if.else
  %14 = load ptr, ptr %req.addr, align 8, !dbg !1145, !tbaa !588
  %call31 = call i32 @fuse_reply_err(ptr noundef %14, i32 noundef 5), !dbg !1147
  br label %if.end39, !dbg !1148

if.else32:                                        ; preds = %if.else
  %entry_timeout = getelementptr inbounds %struct.fuse_entry_param, ptr %fentry, i32 0, i32 4, !dbg !1149
  store double 0x7FEFFFFFFFFFFFFF, ptr %entry_timeout, align 8, !dbg !1151, !tbaa !1152
  %attr_timeout = getelementptr inbounds %struct.fuse_entry_param, ptr %fentry, i32 0, i32 3, !dbg !1155
  store double 0x7FEFFFFFFFFFFFFF, ptr %attr_timeout, align 8, !dbg !1156, !tbaa !1157
  %ll33 = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 0, !dbg !1158
  %15 = load ptr, ptr %ll33, align 8, !dbg !1158, !tbaa !791
  %ino_register = getelementptr inbounds %struct.sqfs_ll, ptr %15, i32 0, i32 3, !dbg !1159
  %16 = load ptr, ptr %ino_register, align 8, !dbg !1159, !tbaa !1160
  %ll34 = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 0, !dbg !1161
  %17 = load ptr, ptr %ll34, align 8, !dbg !1161, !tbaa !791
  %call35 = call i64 %16(ptr noundef %17, ptr noundef %entry1), !dbg !1162
  %ino = getelementptr inbounds %struct.fuse_entry_param, ptr %fentry, i32 0, i32 0, !dbg !1163
  store i64 %call35, ptr %ino, align 8, !dbg !1164, !tbaa !1165
  %ino36 = getelementptr inbounds %struct.fuse_entry_param, ptr %fentry, i32 0, i32 0, !dbg !1166
  %18 = load i64, ptr %ino36, align 8, !dbg !1166, !tbaa !1165
  %attr37 = getelementptr inbounds %struct.fuse_entry_param, ptr %fentry, i32 0, i32 2, !dbg !1167
  %st_ino = getelementptr inbounds %struct.stat, ptr %attr37, i32 0, i32 1, !dbg !1168
  store i64 %18, ptr %st_ino, align 8, !dbg !1169, !tbaa !1170
  %19 = load ptr, ptr %req.addr, align 8, !dbg !1171, !tbaa !588
  %call38 = call i32 @fuse_reply_entry(ptr noundef %19, ptr noundef %fentry), !dbg !1172
  br label %if.end39

if.end39:                                         ; preds = %if.else32, %if.then30
  call void @llvm.lifetime.end.p0(i64 176, ptr %fentry) #9, !dbg !1173
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then24
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1174
  br label %cleanup, !dbg !1174

cleanup:                                          ; preds = %if.end40, %if.then16, %if.then12, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %inode) #9, !dbg !1174
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #9, !dbg !1174
  call void @llvm.lifetime.end.p0(i64 48, ptr %entry1) #9, !dbg !1174
  call void @llvm.lifetime.end.p0(i64 257, ptr %namebuf) #9, !dbg !1174
  call void @llvm.lifetime.end.p0(i64 4, ptr %sqerr) #9, !dbg !1174
  call void @llvm.lifetime.end.p0(i64 72, ptr %lli) #9, !dbg !1174
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1174

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @sqfs_ll_op_open(ptr noundef %req, i64 noundef %ino, ptr noundef %fi) #0 !dbg !1175 {
entry:
  %req.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %fi.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %ll = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !1177, metadata !DIExpression()), !dbg !1182
  store i64 %ino, ptr %ino.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !1178, metadata !DIExpression()), !dbg !1183
  store ptr %fi, ptr %fi.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %fi.addr, metadata !1179, metadata !DIExpression()), !dbg !1184
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #9, !dbg !1185
  tail call void @llvm.dbg.declare(metadata ptr %inode, metadata !1180, metadata !DIExpression()), !dbg !1186
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #9, !dbg !1187
  tail call void @llvm.dbg.declare(metadata ptr %ll, metadata !1181, metadata !DIExpression()), !dbg !1188
  %call = call i64 @time(ptr noundef null) #9, !dbg !1189
  store i64 %call, ptr @last_access, align 8, !dbg !1190, !tbaa !774
  %0 = load ptr, ptr %fi.addr, align 8, !dbg !1191, !tbaa !588
  %flags = getelementptr inbounds %struct.fuse_file_info, ptr %0, i32 0, i32 0, !dbg !1193
  %1 = load i32, ptr %flags, align 8, !dbg !1193, !tbaa !1194
  %and = and i32 %1, 3, !dbg !1195
  %tobool = icmp ne i32 %and, 0, !dbg !1195
  br i1 %tobool, label %if.then, label %if.end, !dbg !1196

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %req.addr, align 8, !dbg !1197, !tbaa !588
  %call1 = call i32 @fuse_reply_err(ptr noundef %2, i32 noundef 30), !dbg !1199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1200

if.end:                                           ; preds = %entry
  %call2 = call noalias ptr @malloc(i64 noundef 64) #10, !dbg !1201
  store ptr %call2, ptr %inode, align 8, !dbg !1202, !tbaa !588
  %3 = load ptr, ptr %inode, align 8, !dbg !1203, !tbaa !588
  %tobool3 = icmp ne ptr %3, null, !dbg !1203
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !1205

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %req.addr, align 8, !dbg !1206, !tbaa !588
  %call5 = call i32 @fuse_reply_err(ptr noundef %4, i32 noundef 12), !dbg !1208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1209

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %req.addr, align 8, !dbg !1210, !tbaa !588
  %call7 = call ptr @fuse_req_userdata(ptr noundef %5), !dbg !1211
  store ptr %call7, ptr %ll, align 8, !dbg !1212, !tbaa !588
  %6 = load ptr, ptr %ll, align 8, !dbg !1213, !tbaa !588
  %7 = load ptr, ptr %inode, align 8, !dbg !1215, !tbaa !588
  %8 = load i64, ptr %ino.addr, align 8, !dbg !1216, !tbaa !774
  %call8 = call i32 @sqfs_ll_inode(ptr noundef %6, ptr noundef %7, i64 noundef %8), !dbg !1217
  %tobool9 = icmp ne i32 %call8, 0, !dbg !1217
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !1218

if.then10:                                        ; preds = %if.end6
  %9 = load ptr, ptr %req.addr, align 8, !dbg !1219, !tbaa !588
  %call11 = call i32 @fuse_reply_err(ptr noundef %9, i32 noundef 2), !dbg !1221
  br label %if.end19, !dbg !1222

if.else:                                          ; preds = %if.end6
  %10 = load ptr, ptr %inode, align 8, !dbg !1223, !tbaa !588
  %base = getelementptr inbounds %struct.sqfs_inode, ptr %10, i32 0, i32 0, !dbg !1223
  %mode = getelementptr inbounds %struct.squashfs_base_inode, ptr %base, i32 0, i32 1, !dbg !1223
  %11 = load i16, ptr %mode, align 2, !dbg !1223, !tbaa !1225
  %conv = zext i16 %11 to i32, !dbg !1223
  %and12 = and i32 %conv, 61440, !dbg !1223
  %cmp = icmp eq i32 %and12, 32768, !dbg !1223
  br i1 %cmp, label %if.else16, label %if.then14, !dbg !1226

if.then14:                                        ; preds = %if.else
  %12 = load ptr, ptr %req.addr, align 8, !dbg !1227, !tbaa !588
  %call15 = call i32 @fuse_reply_err(ptr noundef %12, i32 noundef 21), !dbg !1229
  br label %if.end18, !dbg !1230

if.else16:                                        ; preds = %if.else
  %13 = load ptr, ptr %inode, align 8, !dbg !1231, !tbaa !588
  %14 = ptrtoint ptr %13 to i64, !dbg !1233
  %15 = load ptr, ptr %fi.addr, align 8, !dbg !1234, !tbaa !588
  %fh = getelementptr inbounds %struct.fuse_file_info, ptr %15, i32 0, i32 3, !dbg !1235
  store i64 %14, ptr %fh, align 8, !dbg !1236, !tbaa !830
  %16 = load ptr, ptr %fi.addr, align 8, !dbg !1237, !tbaa !588
  %keep_cache = getelementptr inbounds %struct.fuse_file_info, ptr %16, i32 0, i32 1, !dbg !1238
  %bf.load = load i64, ptr %keep_cache, align 4, !dbg !1239
  %bf.clear = and i64 %bf.load, -5, !dbg !1239
  %bf.set = or i64 %bf.clear, 4, !dbg !1239
  store i64 %bf.set, ptr %keep_cache, align 4, !dbg !1239
  %17 = load i32, ptr @open_refcount, align 4, !dbg !1240, !tbaa !583
  %inc = add nsw i32 %17, 1, !dbg !1240
  store i32 %inc, ptr @open_refcount, align 4, !dbg !1240, !tbaa !583
  %18 = load ptr, ptr %req.addr, align 8, !dbg !1241, !tbaa !588
  %19 = load ptr, ptr %fi.addr, align 8, !dbg !1242, !tbaa !588
  %call17 = call i32 @fuse_reply_open(ptr noundef %18, ptr noundef %19), !dbg !1243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1244

if.end18:                                         ; preds = %if.then14
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then10
  %20 = load ptr, ptr %inode, align 8, !dbg !1245, !tbaa !588
  call void @free(ptr noundef %20) #9, !dbg !1246
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1247
  br label %cleanup, !dbg !1247

cleanup:                                          ; preds = %if.end19, %if.else16, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #9, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #9, !dbg !1247
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1247

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @sqfs_ll_op_create(ptr noundef %req, i64 noundef %parent, ptr noundef %name, i32 noundef %mode, ptr noundef %fi) #0 !dbg !1248 {
entry:
  %req.addr = alloca ptr, align 8
  %parent.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %fi.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !1250, metadata !DIExpression()), !dbg !1255
  store i64 %parent, ptr %parent.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1251, metadata !DIExpression()), !dbg !1256
  store ptr %name, ptr %name.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1252, metadata !DIExpression()), !dbg !1257
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !583
  tail call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !1253, metadata !DIExpression()), !dbg !1258
  store ptr %fi, ptr %fi.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %fi.addr, metadata !1254, metadata !DIExpression()), !dbg !1259
  %call = call i64 @time(ptr noundef null) #9, !dbg !1260
  store i64 %call, ptr @last_access, align 8, !dbg !1261, !tbaa !774
  %0 = load ptr, ptr %req.addr, align 8, !dbg !1262, !tbaa !588
  %call1 = call i32 @fuse_reply_err(ptr noundef %0, i32 noundef 30), !dbg !1263
  ret void, !dbg !1264
}

; Function Attrs: nounwind uwtable
define internal void @sqfs_ll_op_release(ptr noundef %req, i64 noundef %ino, ptr noundef %fi) #0 !dbg !1265 {
entry:
  %req.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %fi.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !1267, metadata !DIExpression()), !dbg !1270
  store i64 %ino, ptr %ino.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !1268, metadata !DIExpression()), !dbg !1271
  store ptr %fi, ptr %fi.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %fi.addr, metadata !1269, metadata !DIExpression()), !dbg !1272
  %0 = load ptr, ptr %fi.addr, align 8, !dbg !1273, !tbaa !588
  %fh = getelementptr inbounds %struct.fuse_file_info, ptr %0, i32 0, i32 3, !dbg !1274
  %1 = load i64, ptr %fh, align 8, !dbg !1274, !tbaa !830
  %2 = inttoptr i64 %1 to ptr, !dbg !1275
  call void @free(ptr noundef %2) #9, !dbg !1276
  %3 = load ptr, ptr %fi.addr, align 8, !dbg !1277, !tbaa !588
  %fh1 = getelementptr inbounds %struct.fuse_file_info, ptr %3, i32 0, i32 3, !dbg !1278
  store i64 0, ptr %fh1, align 8, !dbg !1279, !tbaa !830
  %call = call i64 @time(ptr noundef null) #9, !dbg !1280
  store i64 %call, ptr @last_access, align 8, !dbg !1281, !tbaa !774
  %4 = load i32, ptr @open_refcount, align 4, !dbg !1282, !tbaa !583
  %dec = add nsw i32 %4, -1, !dbg !1282
  store i32 %dec, ptr @open_refcount, align 4, !dbg !1282, !tbaa !583
  %5 = load ptr, ptr %req.addr, align 8, !dbg !1283, !tbaa !588
  %call2 = call i32 @fuse_reply_err(ptr noundef %5, i32 noundef 0), !dbg !1284
  ret void, !dbg !1285
}

; Function Attrs: nounwind uwtable
define internal void @sqfs_ll_op_read(ptr noundef %req, i64 noundef %ino, i64 noundef %size, i64 noundef %off, ptr noundef %fi) #0 !dbg !1286 {
entry:
  %req.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %off.addr = alloca i64, align 8
  %fi.addr = alloca ptr, align 8
  %ll = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %err = alloca i32, align 4
  %osize = alloca i64, align 8
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !1288, metadata !DIExpression()), !dbg !1298
  store i64 %ino, ptr %ino.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !1289, metadata !DIExpression()), !dbg !1299
  store i64 %size, ptr %size.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1290, metadata !DIExpression()), !dbg !1300
  store i64 %off, ptr %off.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !1291, metadata !DIExpression()), !dbg !1301
  store ptr %fi, ptr %fi.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %fi.addr, metadata !1292, metadata !DIExpression()), !dbg !1302
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #9, !dbg !1303
  tail call void @llvm.dbg.declare(metadata ptr %ll, metadata !1293, metadata !DIExpression()), !dbg !1304
  %0 = load ptr, ptr %req.addr, align 8, !dbg !1305, !tbaa !588
  %call = call ptr @fuse_req_userdata(ptr noundef %0), !dbg !1306
  store ptr %call, ptr %ll, align 8, !dbg !1304, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #9, !dbg !1307
  tail call void @llvm.dbg.declare(metadata ptr %inode, metadata !1294, metadata !DIExpression()), !dbg !1308
  %1 = load ptr, ptr %fi.addr, align 8, !dbg !1309, !tbaa !588
  %fh = getelementptr inbounds %struct.fuse_file_info, ptr %1, i32 0, i32 3, !dbg !1310
  %2 = load i64, ptr %fh, align 8, !dbg !1310, !tbaa !830
  %3 = inttoptr i64 %2 to ptr, !dbg !1311
  store ptr %3, ptr %inode, align 8, !dbg !1308, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !1312
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1295, metadata !DIExpression()), !dbg !1313
  store i32 0, ptr %err, align 4, !dbg !1313, !tbaa !1027
  call void @llvm.lifetime.start.p0(i64 8, ptr %osize) #9, !dbg !1314
  tail call void @llvm.dbg.declare(metadata ptr %osize, metadata !1296, metadata !DIExpression()), !dbg !1315
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #9, !dbg !1316
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1297, metadata !DIExpression()), !dbg !1317
  %4 = load i64, ptr %size.addr, align 8, !dbg !1318, !tbaa !774
  %call1 = call noalias ptr @malloc(i64 noundef %4) #10, !dbg !1319
  store ptr %call1, ptr %buf, align 8, !dbg !1317, !tbaa !588
  %5 = load ptr, ptr %buf, align 8, !dbg !1320, !tbaa !588
  %tobool = icmp ne ptr %5, null, !dbg !1320
  br i1 %tobool, label %if.end, label %if.then, !dbg !1322

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %req.addr, align 8, !dbg !1323, !tbaa !588
  %call2 = call i32 @fuse_reply_err(ptr noundef %6, i32 noundef 12), !dbg !1325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1326

if.end:                                           ; preds = %entry
  %call3 = call i64 @time(ptr noundef null) #9, !dbg !1327
  store i64 %call3, ptr @last_access, align 8, !dbg !1328, !tbaa !774
  %7 = load i64, ptr %size.addr, align 8, !dbg !1329, !tbaa !774
  store i64 %7, ptr %osize, align 8, !dbg !1330, !tbaa !774
  %8 = load ptr, ptr %ll, align 8, !dbg !1331, !tbaa !588
  %fs = getelementptr inbounds %struct.sqfs_ll, ptr %8, i32 0, i32 0, !dbg !1332
  %9 = load ptr, ptr %inode, align 8, !dbg !1333, !tbaa !588
  %10 = load i64, ptr %off.addr, align 8, !dbg !1334, !tbaa !774
  %11 = load ptr, ptr %buf, align 8, !dbg !1335, !tbaa !588
  %call4 = call i32 @sqfs_read_range(ptr noundef %fs, ptr noundef %9, i64 noundef %10, ptr noundef %osize, ptr noundef %11), !dbg !1336
  store i32 %call4, ptr %err, align 4, !dbg !1337, !tbaa !1027
  %12 = load i32, ptr %err, align 4, !dbg !1338, !tbaa !1027
  %tobool5 = icmp ne i32 %12, 0, !dbg !1338
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1340

if.then6:                                         ; preds = %if.end
  %13 = load ptr, ptr %req.addr, align 8, !dbg !1341, !tbaa !588
  %call7 = call i32 @fuse_reply_err(ptr noundef %13, i32 noundef 5), !dbg !1343
  br label %if.end13, !dbg !1344

if.else:                                          ; preds = %if.end
  %14 = load i64, ptr %osize, align 8, !dbg !1345, !tbaa !774
  %cmp = icmp eq i64 %14, 0, !dbg !1347
  br i1 %cmp, label %if.then8, label %if.else10, !dbg !1348

if.then8:                                         ; preds = %if.else
  %15 = load ptr, ptr %req.addr, align 8, !dbg !1349, !tbaa !588
  %call9 = call i32 @fuse_reply_buf(ptr noundef %15, ptr noundef null, i64 noundef 0), !dbg !1351
  br label %if.end12, !dbg !1352

if.else10:                                        ; preds = %if.else
  %16 = load ptr, ptr %req.addr, align 8, !dbg !1353, !tbaa !588
  %17 = load ptr, ptr %buf, align 8, !dbg !1355, !tbaa !588
  %18 = load i64, ptr %osize, align 8, !dbg !1356, !tbaa !774
  %call11 = call i32 @fuse_reply_buf(ptr noundef %16, ptr noundef %17, i64 noundef %18), !dbg !1357
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then6
  %19 = load ptr, ptr %buf, align 8, !dbg !1358, !tbaa !588
  call void @free(ptr noundef %19) #9, !dbg !1359
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1360
  br label %cleanup, !dbg !1360

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #9, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 8, ptr %osize) #9, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #9, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #9, !dbg !1360
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1360

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @sqfs_ll_op_readlink(ptr noundef %req, i64 noundef %ino) #0 !dbg !1361 {
entry:
  %req.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %dst = alloca ptr, align 8
  %size = alloca i64, align 8
  %lli = alloca %struct.sqfs_ll_i, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !1363, metadata !DIExpression()), !dbg !1368
  store i64 %ino, ptr %ino.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !1364, metadata !DIExpression()), !dbg !1369
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #9, !dbg !1370
  tail call void @llvm.dbg.declare(metadata ptr %dst, metadata !1365, metadata !DIExpression()), !dbg !1371
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #9, !dbg !1372
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !1366, metadata !DIExpression()), !dbg !1373
  call void @llvm.lifetime.start.p0(i64 72, ptr %lli) #9, !dbg !1374
  tail call void @llvm.dbg.declare(metadata ptr %lli, metadata !1367, metadata !DIExpression()), !dbg !1375
  %call = call i64 @time(ptr noundef null) #9, !dbg !1376
  store i64 %call, ptr @last_access, align 8, !dbg !1377, !tbaa !774
  %0 = load ptr, ptr %req.addr, align 8, !dbg !1378, !tbaa !588
  %1 = load i64, ptr %ino.addr, align 8, !dbg !1380, !tbaa !774
  %call1 = call i32 @sqfs_ll_iget(ptr noundef %0, ptr noundef %lli, i64 noundef %1), !dbg !1381
  %tobool = icmp ne i32 %call1, 0, !dbg !1381
  br i1 %tobool, label %if.then, label %if.end, !dbg !1382

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1383

if.end:                                           ; preds = %entry
  %inode = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 1, !dbg !1384
  %base = getelementptr inbounds %struct.sqfs_inode, ptr %inode, i32 0, i32 0, !dbg !1384
  %mode = getelementptr inbounds %struct.squashfs_base_inode, ptr %base, i32 0, i32 1, !dbg !1384
  %2 = load i16, ptr %mode, align 2, !dbg !1384, !tbaa !851
  %conv = zext i16 %2 to i32, !dbg !1384
  %and = and i32 %conv, 61440, !dbg !1384
  %cmp = icmp eq i32 %and, 40960, !dbg !1384
  br i1 %cmp, label %if.else, label %if.then3, !dbg !1386

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %req.addr, align 8, !dbg !1387, !tbaa !588
  %call4 = call i32 @fuse_reply_err(ptr noundef %3, i32 noundef 22), !dbg !1389
  br label %if.end28, !dbg !1390

if.else:                                          ; preds = %if.end
  %ll = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 0, !dbg !1391
  %4 = load ptr, ptr %ll, align 8, !dbg !1391, !tbaa !791
  %fs = getelementptr inbounds %struct.sqfs_ll, ptr %4, i32 0, i32 0, !dbg !1393
  %inode5 = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 1, !dbg !1394
  %call6 = call i32 @sqfs_readlink(ptr noundef %fs, ptr noundef %inode5, ptr noundef null, ptr noundef %size), !dbg !1395
  %tobool7 = icmp ne i32 %call6, 0, !dbg !1395
  br i1 %tobool7, label %if.then8, label %if.else10, !dbg !1396

if.then8:                                         ; preds = %if.else
  %5 = load ptr, ptr %req.addr, align 8, !dbg !1397, !tbaa !588
  %call9 = call i32 @fuse_reply_err(ptr noundef %5, i32 noundef 5), !dbg !1399
  br label %if.end27, !dbg !1400

if.else10:                                        ; preds = %if.else
  %6 = load i64, ptr %size, align 8, !dbg !1401, !tbaa !774
  %add = add i64 %6, 1, !dbg !1403
  %call11 = call noalias ptr @malloc(i64 noundef %add) #10, !dbg !1404
  store ptr %call11, ptr %dst, align 8, !dbg !1405, !tbaa !588
  %tobool12 = icmp ne ptr %call11, null, !dbg !1405
  br i1 %tobool12, label %if.else15, label %if.then13, !dbg !1406

if.then13:                                        ; preds = %if.else10
  %7 = load ptr, ptr %req.addr, align 8, !dbg !1407, !tbaa !588
  %call14 = call i32 @fuse_reply_err(ptr noundef %7, i32 noundef 12), !dbg !1409
  br label %if.end26, !dbg !1410

if.else15:                                        ; preds = %if.else10
  %ll16 = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 0, !dbg !1411
  %8 = load ptr, ptr %ll16, align 8, !dbg !1411, !tbaa !791
  %fs17 = getelementptr inbounds %struct.sqfs_ll, ptr %8, i32 0, i32 0, !dbg !1413
  %inode18 = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 1, !dbg !1414
  %9 = load ptr, ptr %dst, align 8, !dbg !1415, !tbaa !588
  %call19 = call i32 @sqfs_readlink(ptr noundef %fs17, ptr noundef %inode18, ptr noundef %9, ptr noundef %size), !dbg !1416
  %tobool20 = icmp ne i32 %call19, 0, !dbg !1416
  br i1 %tobool20, label %if.then21, label %if.else23, !dbg !1417

if.then21:                                        ; preds = %if.else15
  %10 = load ptr, ptr %req.addr, align 8, !dbg !1418, !tbaa !588
  %call22 = call i32 @fuse_reply_err(ptr noundef %10, i32 noundef 5), !dbg !1420
  %11 = load ptr, ptr %dst, align 8, !dbg !1421, !tbaa !588
  call void @free(ptr noundef %11) #9, !dbg !1422
  br label %if.end25, !dbg !1423

if.else23:                                        ; preds = %if.else15
  %12 = load ptr, ptr %req.addr, align 8, !dbg !1424, !tbaa !588
  %13 = load ptr, ptr %dst, align 8, !dbg !1426, !tbaa !588
  %call24 = call i32 @fuse_reply_readlink(ptr noundef %12, ptr noundef %13), !dbg !1427
  %14 = load ptr, ptr %dst, align 8, !dbg !1428, !tbaa !588
  call void @free(ptr noundef %14) #9, !dbg !1429
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then21
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then13
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then8
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then3
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1430
  br label %cleanup, !dbg !1430

cleanup:                                          ; preds = %if.end28, %if.then
  call void @llvm.lifetime.end.p0(i64 72, ptr %lli) #9, !dbg !1430
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #9, !dbg !1430
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #9, !dbg !1430
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1430

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @sqfs_ll_op_listxattr(ptr noundef %req, i64 noundef %ino, i64 noundef %size) #0 !dbg !1431 {
entry:
  %req.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %lli = alloca %struct.sqfs_ll_i, align 8
  %buf = alloca ptr, align 8
  %ferr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !1433, metadata !DIExpression()), !dbg !1439
  store i64 %ino, ptr %ino.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !1434, metadata !DIExpression()), !dbg !1440
  store i64 %size, ptr %size.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1435, metadata !DIExpression()), !dbg !1441
  call void @llvm.lifetime.start.p0(i64 72, ptr %lli) #9, !dbg !1442
  tail call void @llvm.dbg.declare(metadata ptr %lli, metadata !1436, metadata !DIExpression()), !dbg !1443
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #9, !dbg !1444
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1437, metadata !DIExpression()), !dbg !1445
  call void @llvm.lifetime.start.p0(i64 4, ptr %ferr) #9, !dbg !1446
  tail call void @llvm.dbg.declare(metadata ptr %ferr, metadata !1438, metadata !DIExpression()), !dbg !1447
  %call = call i64 @time(ptr noundef null) #9, !dbg !1448
  store i64 %call, ptr @last_access, align 8, !dbg !1449, !tbaa !774
  %0 = load ptr, ptr %req.addr, align 8, !dbg !1450, !tbaa !588
  %1 = load i64, ptr %ino.addr, align 8, !dbg !1452, !tbaa !774
  %call1 = call i32 @sqfs_ll_iget(ptr noundef %0, ptr noundef %lli, i64 noundef %1), !dbg !1453
  %tobool = icmp ne i32 %call1, 0, !dbg !1453
  br i1 %tobool, label %if.then, label %if.end, !dbg !1454

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1455

if.end:                                           ; preds = %entry
  store ptr null, ptr %buf, align 8, !dbg !1456, !tbaa !588
  %2 = load i64, ptr %size.addr, align 8, !dbg !1457, !tbaa !774
  %tobool2 = icmp ne i64 %2, 0, !dbg !1457
  br i1 %tobool2, label %land.lhs.true, label %if.end7, !dbg !1459

land.lhs.true:                                    ; preds = %if.end
  %3 = load i64, ptr %size.addr, align 8, !dbg !1460, !tbaa !774
  %call3 = call noalias ptr @malloc(i64 noundef %3) #10, !dbg !1461
  store ptr %call3, ptr %buf, align 8, !dbg !1462, !tbaa !588
  %tobool4 = icmp ne ptr %call3, null, !dbg !1462
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !1463

if.then5:                                         ; preds = %land.lhs.true
  %4 = load ptr, ptr %req.addr, align 8, !dbg !1464, !tbaa !588
  %call6 = call i32 @fuse_reply_err(ptr noundef %4, i32 noundef 12), !dbg !1466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1467

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %ll = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 0, !dbg !1468
  %5 = load ptr, ptr %ll, align 8, !dbg !1468, !tbaa !791
  %fs = getelementptr inbounds %struct.sqfs_ll, ptr %5, i32 0, i32 0, !dbg !1469
  %inode = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 1, !dbg !1470
  %6 = load ptr, ptr %buf, align 8, !dbg !1471, !tbaa !588
  %call8 = call i32 @sqfs_listxattr(ptr noundef %fs, ptr noundef %inode, ptr noundef %6, ptr noundef %size.addr), !dbg !1472
  store i32 %call8, ptr %ferr, align 4, !dbg !1473, !tbaa !583
  %7 = load i32, ptr %ferr, align 4, !dbg !1474, !tbaa !583
  %tobool9 = icmp ne i32 %7, 0, !dbg !1474
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !1476

if.then10:                                        ; preds = %if.end7
  %8 = load ptr, ptr %req.addr, align 8, !dbg !1477, !tbaa !588
  %9 = load i32, ptr %ferr, align 4, !dbg !1479, !tbaa !583
  %call11 = call i32 @fuse_reply_err(ptr noundef %8, i32 noundef %9), !dbg !1480
  br label %if.end18, !dbg !1481

if.else:                                          ; preds = %if.end7
  %10 = load ptr, ptr %buf, align 8, !dbg !1482, !tbaa !588
  %tobool12 = icmp ne ptr %10, null, !dbg !1482
  br i1 %tobool12, label %if.then13, label %if.else15, !dbg !1484

if.then13:                                        ; preds = %if.else
  %11 = load ptr, ptr %req.addr, align 8, !dbg !1485, !tbaa !588
  %12 = load ptr, ptr %buf, align 8, !dbg !1487, !tbaa !588
  %13 = load i64, ptr %size.addr, align 8, !dbg !1488, !tbaa !774
  %call14 = call i32 @fuse_reply_buf(ptr noundef %11, ptr noundef %12, i64 noundef %13), !dbg !1489
  br label %if.end17, !dbg !1490

if.else15:                                        ; preds = %if.else
  %14 = load ptr, ptr %req.addr, align 8, !dbg !1491, !tbaa !588
  %15 = load i64, ptr %size.addr, align 8, !dbg !1493, !tbaa !774
  %call16 = call i32 @fuse_reply_xattr(ptr noundef %14, i64 noundef %15), !dbg !1494
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then10
  %16 = load ptr, ptr %buf, align 8, !dbg !1495, !tbaa !588
  call void @free(ptr noundef %16) #9, !dbg !1496
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1497
  br label %cleanup, !dbg !1497

cleanup:                                          ; preds = %if.end18, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ferr) #9, !dbg !1497
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #9, !dbg !1497
  call void @llvm.lifetime.end.p0(i64 72, ptr %lli) #9, !dbg !1497
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1497

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @sqfs_ll_op_getxattr(ptr noundef %req, i64 noundef %ino, ptr noundef %name, i64 noundef %size) #0 !dbg !1498 {
entry:
  %req.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %lli = alloca %struct.sqfs_ll_i, align 8
  %buf = alloca ptr, align 8
  %real = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !1500, metadata !DIExpression()), !dbg !1507
  store i64 %ino, ptr %ino.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !1501, metadata !DIExpression()), !dbg !1508
  store ptr %name, ptr %name.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1502, metadata !DIExpression()), !dbg !1509
  store i64 %size, ptr %size.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1503, metadata !DIExpression()), !dbg !1510
  call void @llvm.lifetime.start.p0(i64 72, ptr %lli) #9, !dbg !1511
  tail call void @llvm.dbg.declare(metadata ptr %lli, metadata !1504, metadata !DIExpression()), !dbg !1512
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #9, !dbg !1513
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1505, metadata !DIExpression()), !dbg !1514
  store ptr null, ptr %buf, align 8, !dbg !1514, !tbaa !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %real) #9, !dbg !1515
  tail call void @llvm.dbg.declare(metadata ptr %real, metadata !1506, metadata !DIExpression()), !dbg !1516
  %0 = load i64, ptr %size.addr, align 8, !dbg !1517, !tbaa !774
  store i64 %0, ptr %real, align 8, !dbg !1516, !tbaa !774
  %call = call i64 @time(ptr noundef null) #9, !dbg !1518
  store i64 %call, ptr @last_access, align 8, !dbg !1519, !tbaa !774
  %1 = load ptr, ptr %req.addr, align 8, !dbg !1520, !tbaa !588
  %2 = load i64, ptr %ino.addr, align 8, !dbg !1522, !tbaa !774
  %call1 = call i32 @sqfs_ll_iget(ptr noundef %1, ptr noundef %lli, i64 noundef %2), !dbg !1523
  %tobool = icmp ne i32 %call1, 0, !dbg !1523
  br i1 %tobool, label %if.then, label %if.end, !dbg !1524

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1525

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %size.addr, align 8, !dbg !1526, !tbaa !774
  %call2 = call noalias ptr @malloc(i64 noundef %3) #10, !dbg !1528
  store ptr %call2, ptr %buf, align 8, !dbg !1529, !tbaa !588
  %tobool3 = icmp ne ptr %call2, null, !dbg !1529
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !1530

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %req.addr, align 8, !dbg !1531, !tbaa !588
  %call5 = call i32 @fuse_reply_err(ptr noundef %4, i32 noundef 12), !dbg !1532
  br label %if.end28, !dbg !1532

if.else:                                          ; preds = %if.end
  %ll = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 0, !dbg !1533
  %5 = load ptr, ptr %ll, align 8, !dbg !1533, !tbaa !791
  %fs = getelementptr inbounds %struct.sqfs_ll, ptr %5, i32 0, i32 0, !dbg !1535
  %inode = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 1, !dbg !1536
  %6 = load ptr, ptr %name.addr, align 8, !dbg !1537, !tbaa !588
  %7 = load ptr, ptr %buf, align 8, !dbg !1538, !tbaa !588
  %call6 = call i32 @sqfs_xattr_lookup(ptr noundef %fs, ptr noundef %inode, ptr noundef %6, ptr noundef %7, ptr noundef %real), !dbg !1539
  %tobool7 = icmp ne i32 %call6, 0, !dbg !1539
  br i1 %tobool7, label %if.then8, label %if.else10, !dbg !1540

if.then8:                                         ; preds = %if.else
  %8 = load ptr, ptr %req.addr, align 8, !dbg !1541, !tbaa !588
  %call9 = call i32 @fuse_reply_err(ptr noundef %8, i32 noundef 5), !dbg !1542
  br label %if.end27, !dbg !1542

if.else10:                                        ; preds = %if.else
  %9 = load i64, ptr %real, align 8, !dbg !1543, !tbaa !774
  %cmp = icmp eq i64 %9, 0, !dbg !1545
  br i1 %cmp, label %if.then11, label %if.else14, !dbg !1546

if.then11:                                        ; preds = %if.else10
  %10 = load ptr, ptr %req.addr, align 8, !dbg !1547, !tbaa !588
  %call12 = call i32 (...) @sqfs_enoattr(), !dbg !1548
  %call13 = call i32 @fuse_reply_err(ptr noundef %10, i32 noundef %call12), !dbg !1549
  br label %if.end26, !dbg !1549

if.else14:                                        ; preds = %if.else10
  %11 = load i64, ptr %size.addr, align 8, !dbg !1550, !tbaa !774
  %cmp15 = icmp eq i64 %11, 0, !dbg !1552
  br i1 %cmp15, label %if.then16, label %if.else18, !dbg !1553

if.then16:                                        ; preds = %if.else14
  %12 = load ptr, ptr %req.addr, align 8, !dbg !1554, !tbaa !588
  %13 = load i64, ptr %real, align 8, !dbg !1555, !tbaa !774
  %call17 = call i32 @fuse_reply_xattr(ptr noundef %12, i64 noundef %13), !dbg !1556
  br label %if.end25, !dbg !1556

if.else18:                                        ; preds = %if.else14
  %14 = load i64, ptr %size.addr, align 8, !dbg !1557, !tbaa !774
  %15 = load i64, ptr %real, align 8, !dbg !1559, !tbaa !774
  %cmp19 = icmp ult i64 %14, %15, !dbg !1560
  br i1 %cmp19, label %if.then20, label %if.else22, !dbg !1561

if.then20:                                        ; preds = %if.else18
  %16 = load ptr, ptr %req.addr, align 8, !dbg !1562, !tbaa !588
  %call21 = call i32 @fuse_reply_err(ptr noundef %16, i32 noundef 34), !dbg !1563
  br label %if.end24, !dbg !1563

if.else22:                                        ; preds = %if.else18
  %17 = load ptr, ptr %req.addr, align 8, !dbg !1564, !tbaa !588
  %18 = load ptr, ptr %buf, align 8, !dbg !1565, !tbaa !588
  %19 = load i64, ptr %real, align 8, !dbg !1566, !tbaa !774
  %call23 = call i32 @fuse_reply_buf(ptr noundef %17, ptr noundef %18, i64 noundef %19), !dbg !1567
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then20
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then16
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then11
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then8
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then4
  %20 = load ptr, ptr %buf, align 8, !dbg !1568, !tbaa !588
  call void @free(ptr noundef %20) #9, !dbg !1569
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1570
  br label %cleanup, !dbg !1570

cleanup:                                          ; preds = %if.end28, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %real) #9, !dbg !1570
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #9, !dbg !1570
  call void @llvm.lifetime.end.p0(i64 72, ptr %lli) #9, !dbg !1570
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1570

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @sqfs_ll_op_forget(ptr noundef %req, i64 noundef %ino, i64 noundef %nlookup) #0 !dbg !1571 {
entry:
  %req.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %nlookup.addr = alloca i64, align 8
  %lli = alloca %struct.sqfs_ll_i, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !1575, metadata !DIExpression()), !dbg !1579
  store i64 %ino, ptr %ino.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !1576, metadata !DIExpression()), !dbg !1580
  store i64 %nlookup, ptr %nlookup.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %nlookup.addr, metadata !1577, metadata !DIExpression()), !dbg !1581
  call void @llvm.lifetime.start.p0(i64 72, ptr %lli) #9, !dbg !1582
  tail call void @llvm.dbg.declare(metadata ptr %lli, metadata !1578, metadata !DIExpression()), !dbg !1583
  %call = call i64 @time(ptr noundef null) #9, !dbg !1584
  store i64 %call, ptr @last_access, align 8, !dbg !1585, !tbaa !774
  %0 = load ptr, ptr %req.addr, align 8, !dbg !1586, !tbaa !588
  %call1 = call i32 @sqfs_ll_iget(ptr noundef %0, ptr noundef %lli, i64 noundef 0), !dbg !1587
  %ll = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 0, !dbg !1588
  %1 = load ptr, ptr %ll, align 8, !dbg !1588, !tbaa !791
  %ino_forget = getelementptr inbounds %struct.sqfs_ll, ptr %1, i32 0, i32 4, !dbg !1589
  %2 = load ptr, ptr %ino_forget, align 8, !dbg !1589, !tbaa !1590
  %ll2 = getelementptr inbounds %struct.sqfs_ll_i, ptr %lli, i32 0, i32 0, !dbg !1591
  %3 = load ptr, ptr %ll2, align 8, !dbg !1591, !tbaa !791
  %4 = load i64, ptr %ino.addr, align 8, !dbg !1592, !tbaa !774
  %5 = load i64, ptr %nlookup.addr, align 8, !dbg !1593, !tbaa !774
  call void %2(ptr noundef %3, i64 noundef %4, i64 noundef %5), !dbg !1594
  %6 = load ptr, ptr %req.addr, align 8, !dbg !1595, !tbaa !588
  call void @fuse_reply_none(ptr noundef %6), !dbg !1596
  call void @llvm.lifetime.end.p0(i64 72, ptr %lli) #9, !dbg !1597
  ret void, !dbg !1597
}

; Function Attrs: nounwind uwtable
define internal void @stfs_ll_op_statfs(ptr noundef %req, i64 noundef %ino) #0 !dbg !1598 {
entry:
  %req.addr = alloca ptr, align 8
  %ino.addr = alloca i64, align 8
  %ll = alloca ptr, align 8
  %st = alloca %struct.statvfs, align 8
  %err = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !1600, metadata !DIExpression()), !dbg !1625
  store i64 %ino, ptr %ino.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %ino.addr, metadata !1601, metadata !DIExpression()), !dbg !1626
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #9, !dbg !1627
  tail call void @llvm.dbg.declare(metadata ptr %ll, metadata !1602, metadata !DIExpression()), !dbg !1628
  call void @llvm.lifetime.start.p0(i64 112, ptr %st) #9, !dbg !1629
  tail call void @llvm.dbg.declare(metadata ptr %st, metadata !1603, metadata !DIExpression()), !dbg !1630
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !1631
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1624, metadata !DIExpression()), !dbg !1632
  %0 = load ptr, ptr %req.addr, align 8, !dbg !1633, !tbaa !588
  %call = call ptr @fuse_req_userdata(ptr noundef %0), !dbg !1634
  store ptr %call, ptr %ll, align 8, !dbg !1635, !tbaa !588
  %1 = load ptr, ptr %ll, align 8, !dbg !1636, !tbaa !588
  %fs = getelementptr inbounds %struct.sqfs_ll, ptr %1, i32 0, i32 0, !dbg !1637
  %call1 = call i32 @sqfs_statfs(ptr noundef %fs, ptr noundef %st), !dbg !1638
  store i32 %call1, ptr %err, align 4, !dbg !1639, !tbaa !583
  %2 = load i32, ptr %err, align 4, !dbg !1640, !tbaa !583
  %cmp = icmp eq i32 %2, 0, !dbg !1642
  br i1 %cmp, label %if.then, label %if.else, !dbg !1643

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %req.addr, align 8, !dbg !1644, !tbaa !588
  %call2 = call i32 @fuse_reply_statfs(ptr noundef %3, ptr noundef %st), !dbg !1646
  br label %if.end, !dbg !1647

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %req.addr, align 8, !dbg !1648, !tbaa !588
  %5 = load i32, ptr %err, align 4, !dbg !1650, !tbaa !583
  %call3 = call i32 @fuse_reply_err(ptr noundef %4, i32 noundef %5), !dbg !1651
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !1652
  call void @llvm.lifetime.end.p0(i64 112, ptr %st) #9, !dbg !1652
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #9, !dbg !1652
  ret void, !dbg !1652
}

declare !dbg !1653 i32 @fuse_opt_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @sqfs_opt_proc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

declare !dbg !1663 void @sqfs_usage(ptr noundef, i1 noundef zeroext) #4

declare !dbg !1666 i32 @fuse_parse_cmdline(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @sqfs_ll_open(ptr noundef %path, i64 noundef %offset) #0 !dbg !1670 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %ll = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !1674, metadata !DIExpression()), !dbg !1677
  store i64 %offset, ptr %offset.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1675, metadata !DIExpression()), !dbg !1678
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #9, !dbg !1679
  tail call void @llvm.dbg.declare(metadata ptr %ll, metadata !1676, metadata !DIExpression()), !dbg !1680
  %call = call noalias ptr @malloc(i64 noundef 448) #10, !dbg !1681
  store ptr %call, ptr %ll, align 8, !dbg !1682, !tbaa !588
  %0 = load ptr, ptr %ll, align 8, !dbg !1683, !tbaa !588
  %tobool = icmp ne ptr %0, null, !dbg !1683
  br i1 %tobool, label %if.else, label %if.then, !dbg !1685

if.then:                                          ; preds = %entry
  call void @perror(ptr noundef @.str.2), !dbg !1686
  br label %if.end12, !dbg !1688

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %ll, align 8, !dbg !1689, !tbaa !588
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 448, i1 false), !dbg !1691
  %2 = load i64, ptr %offset.addr, align 8, !dbg !1692, !tbaa !774
  %3 = load ptr, ptr %ll, align 8, !dbg !1693, !tbaa !588
  %fs = getelementptr inbounds %struct.sqfs_ll, ptr %3, i32 0, i32 0, !dbg !1694
  %offset1 = getelementptr inbounds %struct.sqfs, ptr %fs, i32 0, i32 1, !dbg !1695
  store i64 %2, ptr %offset1, align 8, !dbg !1696, !tbaa !1697
  %4 = load ptr, ptr %ll, align 8, !dbg !1698, !tbaa !588
  %fs2 = getelementptr inbounds %struct.sqfs_ll, ptr %4, i32 0, i32 0, !dbg !1700
  %5 = load ptr, ptr %path.addr, align 8, !dbg !1701, !tbaa !588
  %6 = load i64, ptr %offset.addr, align 8, !dbg !1702, !tbaa !774
  %call3 = call i32 @sqfs_open_image(ptr noundef %fs2, ptr noundef %5, i64 noundef %6), !dbg !1703
  %cmp = icmp eq i32 %call3, 0, !dbg !1704
  br i1 %cmp, label %if.then4, label %if.end11, !dbg !1705

if.then4:                                         ; preds = %if.else
  %7 = load ptr, ptr %ll, align 8, !dbg !1706, !tbaa !588
  %call5 = call i32 @sqfs_ll_init(ptr noundef %7), !dbg !1709
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1709
  br i1 %tobool6, label %if.then7, label %if.else9, !dbg !1710

if.then7:                                         ; preds = %if.then4
  %8 = load ptr, ptr @stderr, align 8, !dbg !1711, !tbaa !588
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.3), !dbg !1712
  br label %if.end, !dbg !1712

if.else9:                                         ; preds = %if.then4
  %9 = load ptr, ptr %ll, align 8, !dbg !1713, !tbaa !588
  store ptr %9, ptr %retval, align 8, !dbg !1714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1714

if.end:                                           ; preds = %if.then7
  %10 = load ptr, ptr %ll, align 8, !dbg !1715, !tbaa !588
  %fs10 = getelementptr inbounds %struct.sqfs_ll, ptr %10, i32 0, i32 0, !dbg !1716
  call void @sqfs_destroy(ptr noundef %fs10), !dbg !1717
  br label %if.end11, !dbg !1718

if.end11:                                         ; preds = %if.end, %if.else
  %11 = load ptr, ptr %ll, align 8, !dbg !1719, !tbaa !588
  call void @free(ptr noundef %11) #9, !dbg !1720
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  store ptr null, ptr %retval, align 8, !dbg !1721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1721

cleanup:                                          ; preds = %if.end12, %if.else9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #9, !dbg !1722
  %12 = load ptr, ptr %retval, align 8, !dbg !1722
  ret ptr %12, !dbg !1722
}

; Function Attrs: nounwind uwtable
define internal i32 @sqfs_ll_mount(ptr noundef %ch, ptr noundef %mountpoint, ptr noundef %args, ptr noundef %ops, i64 noundef %ops_size, ptr noundef %userdata) #0 !dbg !1723 {
entry:
  %retval = alloca i32, align 4
  %ch.addr = alloca ptr, align 8
  %mountpoint.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %ops_size.addr = alloca i64, align 8
  %userdata.addr = alloca ptr, align 8
  store ptr %ch, ptr %ch.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !1729, metadata !DIExpression()), !dbg !1735
  store ptr %mountpoint, ptr %mountpoint.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %mountpoint.addr, metadata !1730, metadata !DIExpression()), !dbg !1736
  store ptr %args, ptr %args.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !1731, metadata !DIExpression()), !dbg !1737
  store ptr %ops, ptr %ops.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !1732, metadata !DIExpression()), !dbg !1738
  store i64 %ops_size, ptr %ops_size.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %ops_size.addr, metadata !1733, metadata !DIExpression()), !dbg !1739
  store ptr %userdata, ptr %userdata.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %userdata.addr, metadata !1734, metadata !DIExpression()), !dbg !1740
  %0 = load ptr, ptr %args.addr, align 8, !dbg !1741, !tbaa !588
  %1 = load ptr, ptr %ops.addr, align 8, !dbg !1742, !tbaa !588
  %2 = load i64, ptr %ops_size.addr, align 8, !dbg !1743, !tbaa !774
  %3 = load ptr, ptr %userdata.addr, align 8, !dbg !1744, !tbaa !588
  %call = call ptr @fuse_session_new(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3), !dbg !1745
  %4 = load ptr, ptr %ch.addr, align 8, !dbg !1746, !tbaa !588
  %session = getelementptr inbounds %struct.sqfs_ll_chan, ptr %4, i32 0, i32 1, !dbg !1747
  store ptr %call, ptr %session, align 8, !dbg !1748, !tbaa !727
  %5 = load ptr, ptr %ch.addr, align 8, !dbg !1749, !tbaa !588
  %session1 = getelementptr inbounds %struct.sqfs_ll_chan, ptr %5, i32 0, i32 1, !dbg !1751
  %6 = load ptr, ptr %session1, align 8, !dbg !1751, !tbaa !727
  %tobool = icmp ne ptr %6, null, !dbg !1749
  br i1 %tobool, label %if.end, label %if.then, !dbg !1752

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1753
  br label %return, !dbg !1753

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %ch.addr, align 8, !dbg !1755, !tbaa !588
  %session2 = getelementptr inbounds %struct.sqfs_ll_chan, ptr %7, i32 0, i32 1, !dbg !1757
  %8 = load ptr, ptr %session2, align 8, !dbg !1757, !tbaa !727
  %9 = load ptr, ptr %mountpoint.addr, align 8, !dbg !1758, !tbaa !588
  %call3 = call i32 @fuse_session_mount(ptr noundef %8, ptr noundef %9), !dbg !1759
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1759
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !1760

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %ch.addr, align 8, !dbg !1761, !tbaa !588
  %session6 = getelementptr inbounds %struct.sqfs_ll_chan, ptr %10, i32 0, i32 1, !dbg !1763
  %11 = load ptr, ptr %session6, align 8, !dbg !1763, !tbaa !727
  call void @fuse_session_destroy(ptr noundef %11), !dbg !1764
  %12 = load ptr, ptr %ch.addr, align 8, !dbg !1765, !tbaa !588
  %session7 = getelementptr inbounds %struct.sqfs_ll_chan, ptr %12, i32 0, i32 1, !dbg !1766
  store ptr null, ptr %session7, align 8, !dbg !1767, !tbaa !727
  store i32 1, ptr %retval, align 4, !dbg !1768
  br label %return, !dbg !1768

if.end8:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1769
  br label %return, !dbg !1769

return:                                           ; preds = %if.end8, %if.then5, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !1770
  ret i32 %13, !dbg !1770
}

declare !dbg !1771 i32 @sqfs_ll_daemonize(i32 noundef) #4

declare !dbg !1774 i32 @fuse_set_signal_handlers(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @setup_idle_timeout(ptr noundef %se, i32 noundef %timeout_secs) #0 !dbg !1777 {
entry:
  %se.addr = alloca ptr, align 8
  %timeout_secs.addr = alloca i32, align 4
  %sa = alloca %struct.sigaction, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %se, ptr %se.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %se.addr, metadata !1781, metadata !DIExpression()), !dbg !1887
  store i32 %timeout_secs, ptr %timeout_secs.addr, align 4, !tbaa !583
  tail call void @llvm.dbg.declare(metadata ptr %timeout_secs.addr, metadata !1782, metadata !DIExpression()), !dbg !1888
  %call = call i64 @time(ptr noundef null) #9, !dbg !1889
  store i64 %call, ptr @last_access, align 8, !dbg !1890, !tbaa !774
  %0 = load i32, ptr %timeout_secs.addr, align 4, !dbg !1891, !tbaa !583
  store i32 %0, ptr @idle_timeout_secs, align 4, !dbg !1892, !tbaa !583
  call void @llvm.lifetime.start.p0(i64 152, ptr %sa) #9, !dbg !1893
  tail call void @llvm.dbg.declare(metadata ptr %sa, metadata !1783, metadata !DIExpression()), !dbg !1894
  call void @llvm.memset.p0.i64(ptr align 8 %sa, i8 0, i64 152, i1 false), !dbg !1895
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, ptr %sa, i32 0, i32 0, !dbg !1896
  store ptr @alarm_tick, ptr %__sigaction_handler, align 8, !dbg !1897, !tbaa !1027
  %sa_mask = getelementptr inbounds %struct.sigaction, ptr %sa, i32 0, i32 1, !dbg !1898
  %call1 = call i32 @sigemptyset(ptr noundef %sa_mask) #9, !dbg !1899
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %sa, i32 0, i32 2, !dbg !1900
  store i32 0, ptr %sa_flags, align 8, !dbg !1901, !tbaa !1902
  %1 = load ptr, ptr %se.addr, align 8, !dbg !1905, !tbaa !588
  store ptr %1, ptr @fuse_instance, align 8, !dbg !1906, !tbaa !588
  %call2 = call i32 @sigaction(i32 noundef 14, ptr noundef %sa, ptr noundef null) #9, !dbg !1907
  %cmp = icmp eq i32 %call2, -1, !dbg !1909
  br i1 %cmp, label %if.then, label %if.end, !dbg !1910

if.then:                                          ; preds = %entry
  call void @perror(ptr noundef @.str.4), !dbg !1911
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1913

if.end:                                           ; preds = %entry
  %call3 = call i32 @alarm(i32 noundef 1) #9, !dbg !1914
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1915
  br label %cleanup, !dbg !1915

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 152, ptr %sa) #9, !dbg !1915
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1915

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !1916 i32 @fuse_session_loop(ptr noundef) #4

declare !dbg !1917 void @fuse_remove_signal_handlers(ptr noundef) #4

declare !dbg !1920 void @sqfs_ll_destroy(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @sqfs_ll_unmount(ptr noundef %ch, ptr noundef %mountpoint) #0 !dbg !1921 {
entry:
  %ch.addr = alloca ptr, align 8
  %mountpoint.addr = alloca ptr, align 8
  store ptr %ch, ptr %ch.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !1925, metadata !DIExpression()), !dbg !1927
  store ptr %mountpoint, ptr %mountpoint.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %mountpoint.addr, metadata !1926, metadata !DIExpression()), !dbg !1928
  %0 = load ptr, ptr %ch.addr, align 8, !dbg !1929, !tbaa !588
  %session = getelementptr inbounds %struct.sqfs_ll_chan, ptr %0, i32 0, i32 1, !dbg !1930
  %1 = load ptr, ptr %session, align 8, !dbg !1930, !tbaa !727
  call void @fuse_session_unmount(ptr noundef %1), !dbg !1931
  %2 = load ptr, ptr %ch.addr, align 8, !dbg !1932, !tbaa !588
  %session1 = getelementptr inbounds %struct.sqfs_ll_chan, ptr %2, i32 0, i32 1, !dbg !1933
  %3 = load ptr, ptr %session1, align 8, !dbg !1933, !tbaa !727
  call void @fuse_session_destroy(ptr noundef %3), !dbg !1934
  %4 = load ptr, ptr %ch.addr, align 8, !dbg !1935, !tbaa !588
  %session2 = getelementptr inbounds %struct.sqfs_ll_chan, ptr %4, i32 0, i32 1, !dbg !1936
  store ptr null, ptr %session2, align 8, !dbg !1937, !tbaa !727
  ret void, !dbg !1938
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !1939 void @fuse_opt_free_args(ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !1942 void @free(ptr noundef) #5

; Function Attrs: nounwind
declare !dbg !1944 i64 @time(ptr noundef) #5

declare !dbg !1949 i32 @sqfs_ll_iget(ptr noundef, ptr noundef, i64 noundef) #4

declare !dbg !1952 i32 @sqfs_stat(ptr noundef, ptr noundef, ptr noundef) #4

declare !dbg !1957 i32 @fuse_reply_err(ptr noundef, i32 noundef) #4

declare !dbg !1960 i32 @fuse_reply_attr(ptr noundef, ptr noundef, double noundef) #4

; Function Attrs: nounwind allocsize(0)
declare !dbg !1965 noalias ptr @malloc(i64 noundef) #6

declare !dbg !1968 i32 @fuse_reply_open(ptr noundef, ptr noundef) #4

declare !dbg !1973 i32 @sqfs_dir_open(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #4

declare !dbg !1977 void @sqfs_dentry_init(ptr noundef, ptr noundef) #4

declare !dbg !1980 zeroext i1 @sqfs_dir_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare !dbg !1984 i32 @sqfs_dentry_mode(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i64 @sqfs_ll_add_direntry(ptr noundef %req, ptr noundef %buf, i64 noundef %bufsize, ptr noundef %name, ptr noundef %st, i64 noundef %off) #0 !dbg !1988 {
entry:
  %req.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %bufsize.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %st.addr = alloca ptr, align 8
  %off.addr = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !1992, metadata !DIExpression()), !dbg !1998
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1993, metadata !DIExpression()), !dbg !1999
  store i64 %bufsize, ptr %bufsize.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %bufsize.addr, metadata !1994, metadata !DIExpression()), !dbg !2000
  store ptr %name, ptr %name.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1995, metadata !DIExpression()), !dbg !2001
  store ptr %st, ptr %st.addr, align 8, !tbaa !588
  tail call void @llvm.dbg.declare(metadata ptr %st.addr, metadata !1996, metadata !DIExpression()), !dbg !2002
  store i64 %off, ptr %off.addr, align 8, !tbaa !774
  tail call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !1997, metadata !DIExpression()), !dbg !2003
  %0 = load ptr, ptr %req.addr, align 8, !dbg !2004, !tbaa !588
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2005, !tbaa !588
  %2 = load i64, ptr %bufsize.addr, align 8, !dbg !2006, !tbaa !774
  %3 = load ptr, ptr %name.addr, align 8, !dbg !2007, !tbaa !588
  %4 = load ptr, ptr %st.addr, align 8, !dbg !2008, !tbaa !588
  %5 = load i64, ptr %off.addr, align 8, !dbg !2009, !tbaa !774
  %call = call i64 @fuse_add_direntry(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5), !dbg !2010
  ret i64 %call, !dbg !2011
}

declare !dbg !2012 ptr @sqfs_dentry_name(ptr noundef) #4

declare !dbg !2015 i64 @sqfs_dentry_next_offset(ptr noundef) #4

declare !dbg !2018 i32 @fuse_reply_buf(ptr noundef, ptr noundef, i64 noundef) #4

declare !dbg !2021 i64 @fuse_add_direntry(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #4

declare !dbg !2022 i32 @sqfs_dir_lookup(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2026 i64 @strlen(ptr noundef) #7

declare !dbg !2030 i32 @sqfs_inode_get(ptr noundef, ptr noundef, i64 noundef) #4

declare !dbg !2033 i64 @sqfs_dentry_inode(ptr noundef) #4

declare !dbg !2036 i32 @fuse_reply_entry(ptr noundef, ptr noundef) #4

declare !dbg !2041 ptr @fuse_req_userdata(ptr noundef) #4

declare !dbg !2044 i32 @sqfs_ll_inode(ptr noundef, ptr noundef, i64 noundef) #4

declare !dbg !2047 i32 @sqfs_read_range(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

declare !dbg !2052 i32 @sqfs_readlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare !dbg !2055 i32 @fuse_reply_readlink(ptr noundef, ptr noundef) #4

declare !dbg !2058 i32 @sqfs_listxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare !dbg !2061 i32 @fuse_reply_xattr(ptr noundef, i64 noundef) #4

declare !dbg !2064 i32 @sqfs_xattr_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare !dbg !2068 i32 @sqfs_enoattr(...) #4

declare !dbg !2072 void @fuse_reply_none(ptr noundef) #4

declare !dbg !2075 i32 @sqfs_statfs(ptr noundef, ptr noundef) #4

declare !dbg !2079 i32 @fuse_reply_statfs(ptr noundef, ptr noundef) #4

declare !dbg !2084 void @perror(ptr noundef) #4

declare !dbg !2088 i32 @sqfs_open_image(ptr noundef, ptr noundef, i64 noundef) #4

declare !dbg !2092 i32 @sqfs_ll_init(ptr noundef) #4

declare !dbg !2095 i32 @fprintf(ptr noundef, ptr noundef, ...) #4

declare !dbg !2150 void @sqfs_destroy(ptr noundef) #4

declare !dbg !2153 ptr @fuse_session_new(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

declare !dbg !2158 i32 @fuse_session_mount(ptr noundef, ptr noundef) #4

declare !dbg !2161 void @fuse_session_destroy(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @alarm_tick(i32 noundef %sig) #0 !dbg !2162 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, ptr %sig.addr, align 4, !tbaa !583
  tail call void @llvm.dbg.declare(metadata ptr %sig.addr, metadata !2164, metadata !DIExpression()), !dbg !2165
  %0 = load ptr, ptr @fuse_instance, align 8, !dbg !2166, !tbaa !588
  %tobool = icmp ne ptr %0, null, !dbg !2166
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2168

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @idle_timeout_secs, align 4, !dbg !2169, !tbaa !583
  %cmp = icmp eq i32 %1, 0, !dbg !2170
  br i1 %cmp, label %if.then, label %if.end, !dbg !2171

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !2172

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr @open_refcount, align 4, !dbg !2174, !tbaa !583
  %cmp1 = icmp eq i32 %2, 0, !dbg !2176
  br i1 %cmp1, label %land.lhs.true, label %if.end7, !dbg !2177

land.lhs.true:                                    ; preds = %if.end
  %call = call i64 @time(ptr noundef null) #9, !dbg !2178
  %3 = load i64, ptr @last_access, align 8, !dbg !2179, !tbaa !774
  %sub = sub nsw i64 %call, %3, !dbg !2180
  %4 = load i32, ptr @idle_timeout_secs, align 4, !dbg !2181, !tbaa !583
  %conv = zext i32 %4 to i64, !dbg !2181
  %cmp2 = icmp sgt i64 %sub, %conv, !dbg !2182
  br i1 %cmp2, label %if.then4, label %if.end7, !dbg !2183

if.then4:                                         ; preds = %land.lhs.true
  %call5 = call i32 @getpid() #9, !dbg !2184
  %call6 = call i32 @kill(i32 noundef %call5, i32 noundef 2) #9, !dbg !2186
  br label %return, !dbg !2187

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %call8 = call i32 @alarm(i32 noundef 1) #9, !dbg !2188
  br label %return, !dbg !2189

return:                                           ; preds = %if.end7, %if.then4, %if.then
  ret void, !dbg !2189
}

; Function Attrs: nounwind
declare !dbg !2190 i32 @sigemptyset(ptr noundef) #5

; Function Attrs: nounwind
declare !dbg !2196 i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare !dbg !2204 i32 @alarm(i32 noundef) #5

; Function Attrs: nounwind
declare !dbg !2208 i32 @kill(i32 noundef, i32 noundef) #5

; Function Attrs: nounwind
declare !dbg !2211 i32 @getpid() #5

; Function Attrs: nounwind uwtable
define internal void @teardown_idle_timeout() #0 !dbg !2214 {
entry:
  %call = call i32 @alarm(i32 noundef 0) #9, !dbg !2215
  store ptr null, ptr @fuse_instance, align 8, !dbg !2216, !tbaa !588
  ret void, !dbg !2217
}

declare !dbg !2218 void @fuse_session_unmount(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!11}
!llvm.module.flags = !{!270, !271, !272, !273, !274, !275}
!llvm.ident = !{!276}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 563, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ll.c", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "28d7adaaf20a986652e4043a03fcb3c0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 11)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 564, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "last_access", scope: !11, file: !2, line: 48, type: !267, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !12, retainedTypes: !29, globals: !236, splitDebugInlining: false, nameTableKind: None)
!12 = !{!13, !23}
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 43, baseType: !15, size: 32, elements: !16)
!14 = !DIFile(filename: "./common.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "14d63e8b50564c475a5631ac35c0a2da")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18, !19, !20, !21, !22}
!17 = !DIEnumerator(name: "SQFS_OK", value: 0)
!18 = !DIEnumerator(name: "SQFS_ERR", value: 1)
!19 = !DIEnumerator(name: "SQFS_BADFORMAT", value: 2)
!20 = !DIEnumerator(name: "SQFS_BADVERSION", value: 3)
!21 = !DIEnumerator(name: "SQFS_BADCOMP", value: 4)
!22 = !DIEnumerator(name: "SQFS_UNSUP", value: 5)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fuse_buf_flags", file: !24, line: 672, baseType: !15, size: 32, elements: !25)
!24 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/libfuse-3.16.2-ific6yhvc57qgq74coytjkk7cvkqpuxo/include/fuse3/fuse_common.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build", checksumkind: CSK_MD5, checksum: "5b719e9d4bd964477c4bc265bdeb150a")
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "FUSE_BUF_IS_FD", value: 2)
!27 = !DIEnumerator(name: "FUSE_BUF_FD_SEEK", value: 4)
!28 = !DIEnumerator(name: "FUSE_BUF_FD_RETRY", value: 8)
!29 = !{!30, !31, !34, !235}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !32, line: 87, baseType: !33)
!32 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!33 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_ll_i", file: !36, line: 68, baseType: !37)
!36 = !DIFile(filename: "./ll.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "03f3af6a9ff44813261808b4136dd06b")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 65, size: 576, elements: !38)
!38 = !{!39, !187}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ll", scope: !37, file: !36, line: 66, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_ll", file: !36, line: 36, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sqfs_ll", file: !36, line: 37, size: 3584, elements: !43)
!43 = !{!44, !142, !149, !153, !177, !181, !182, !183}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !42, file: !36, line: 38, baseType: !45, size: 3136)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs", file: !14, line: 56, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sqfs", file: !47, line: 36, size: 3136, elements: !48)
!47 = !DIFile(filename: "./fs.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "14795cff48dbbc35c1633ef4bdefc24f")
!48 = !{!49, !52, !56, !89, !101, !102, !103, !124, !125, !126, !127, !135, !141}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !46, file: !47, line: 37, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_fd_t", file: !14, line: 40, baseType: !51)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !46, file: !47, line: 38, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 70, baseType: !55)
!54 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!55 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !46, file: !47, line: 39, baseType: !57, size: 768, offset: 128)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "squashfs_super_block", file: !58, line: 131, size: 768, elements: !59)
!58 = !DIFile(filename: "./squashfs_fs.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "de4ce044a84b303a67f933f76b20ea89")
!59 = !{!60, !65, !66, !67, !68, !69, !73, !74, !75, !76, !77, !78, !82, !83, !84, !85, !86, !87, !88}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !57, file: !58, line: 132, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !62, line: 26, baseType: !63)
!62 = !DIFile(filename: "/usr/include/linux/types.h", directory: "", checksumkind: CSK_MD5, checksum: "52ec79a38e49ac7d1dc9e146ba88a7b1")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !64, line: 27, baseType: !15)
!64 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "", checksumkind: CSK_MD5, checksum: "b810f270733e106319b67ef512c6246e")
!65 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !57, file: !58, line: 133, baseType: !61, size: 32, offset: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "mkfs_time", scope: !57, file: !58, line: 134, baseType: !61, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !57, file: !58, line: 135, baseType: !61, size: 32, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fragments", scope: !57, file: !58, line: 136, baseType: !61, size: 32, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !57, file: !58, line: 137, baseType: !70, size: 16, offset: 160)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !62, line: 24, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !64, line: 24, baseType: !72)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "block_log", scope: !57, file: !58, line: 138, baseType: !70, size: 16, offset: 176)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !57, file: !58, line: 139, baseType: !70, size: 16, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "no_ids", scope: !57, file: !58, line: 140, baseType: !70, size: 16, offset: 208)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "s_major", scope: !57, file: !58, line: 141, baseType: !70, size: 16, offset: 224)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "s_minor", scope: !57, file: !58, line: 142, baseType: !70, size: 16, offset: 240)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "root_inode", scope: !57, file: !58, line: 143, baseType: !79, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !62, line: 28, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !64, line: 31, baseType: !81)
!81 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_used", scope: !57, file: !58, line: 144, baseType: !79, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "id_table_start", scope: !57, file: !58, line: 145, baseType: !79, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "xattr_id_table_start", scope: !57, file: !58, line: 146, baseType: !79, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "inode_table_start", scope: !57, file: !58, line: 147, baseType: !79, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "directory_table_start", scope: !57, file: !58, line: 148, baseType: !79, size: 64, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_table_start", scope: !57, file: !58, line: 149, baseType: !79, size: 64, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_table_start", scope: !57, file: !58, line: 150, baseType: !79, size: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !46, file: !47, line: 40, baseType: !90, size: 128, offset: 896)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_table", file: !91, line: 33, baseType: !92)
!91 = !DIFile(filename: "./table.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "b2c4c22f00f23376ded02b576dc08a28")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 30, size: 128, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "each", scope: !92, file: !91, line: 31, baseType: !53, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !92, file: !91, line: 32, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !98, line: 27, baseType: !99)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !100, line: 45, baseType: !55)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!101 = !DIDerivedType(tag: DW_TAG_member, name: "frag_table", scope: !46, file: !47, line: 41, baseType: !90, size: 128, offset: 1024)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "export_table", scope: !46, file: !47, line: 42, baseType: !90, size: 128, offset: 1152)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "md_cache", scope: !46, file: !47, line: 43, baseType: !104, size: 384, offset: 1280)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_cache", file: !105, line: 49, baseType: !106)
!105 = !DIFile(filename: "./cache.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "e4dede871e626f8ee6015d9a1116626c")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 41, size: 384, elements: !107)
!107 = !{!108, !111, !116, !121, !122, !123}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "idxs", scope: !106, file: !105, line: 42, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_cache_idx", file: !105, line: 38, baseType: !97)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !106, file: !105, line: 43, baseType: !112, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !98, line: 24, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !100, line: 38, baseType: !115)
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !106, file: !105, line: 45, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_cache_dispose", file: !105, line: 39, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !30}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !106, file: !105, line: 47, baseType: !53, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !106, file: !105, line: 47, baseType: !53, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !105, line: 48, baseType: !53, size: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "data_cache", scope: !46, file: !47, line: 44, baseType: !104, size: 384, offset: 1664)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "frag_cache", scope: !46, file: !47, line: 45, baseType: !104, size: 384, offset: 2048)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "blockidx", scope: !46, file: !47, line: 46, baseType: !104, size: 384, offset: 2432)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "decompressor", scope: !46, file: !47, line: 47, baseType: !128, size: 64, offset: 2816)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_decompressor", file: !129, line: 41, baseType: !130)
!129 = !DIFile(filename: "./decompress.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "b4aad19a6341104c5ca278f89d286aeb")
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !30, !53, !30, !134}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_err", file: !14, line: 50, baseType: !13)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "xattr_info", scope: !46, file: !47, line: 49, baseType: !136, size: 128, offset: 2880)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "squashfs_xattr_id_table", file: !58, line: 316, size: 128, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "xattr_table_start", scope: !136, file: !58, line: 317, baseType: !79, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "xattr_ids", scope: !136, file: !58, line: 318, baseType: !61, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !136, file: !58, line: 319, baseType: !61, size: 32, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "xattr_table", scope: !46, file: !47, line: 50, baseType: !90, size: 128, offset: 3008)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ino_fuse", scope: !42, file: !36, line: 41, baseType: !143, size: 64, offset: 3136)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !40, !148}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "fuse_ino_t", file: !147, line: 46, baseType: !97)
!147 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/libfuse-3.16.2-ific6yhvc57qgq74coytjkk7cvkqpuxo/include/fuse3/fuse_lowlevel.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build", checksumkind: CSK_MD5, checksum: "7ca39013e5c64e3065e2a0624d3e78df")
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_inode_id", file: !14, line: 53, baseType: !97)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ino_sqfs", scope: !42, file: !36, line: 42, baseType: !150, size: 64, offset: 3200)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!148, !40, !146}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ino_register", scope: !42, file: !36, line: 45, baseType: !154, size: 64, offset: 3264)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!146, !40, !157}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_dir_entry", file: !159, line: 45, baseType: !160)
!159 = !DIFile(filename: "./dir.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "18fe41c55b727999f58eea5c5dcb7e40")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 38, size: 384, elements: !161)
!161 = !{!162, !163, !167, !168, !170, !171, !176}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !160, file: !159, line: 39, baseType: !148, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "inode_number", scope: !160, file: !159, line: 40, baseType: !164, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_inode_num", file: !14, line: 54, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !98, line: 26, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !100, line: 42, baseType: !15)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !160, file: !159, line: 41, baseType: !51, size: 32, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !159, line: 42, baseType: !169, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "name_size", scope: !160, file: !159, line: 43, baseType: !53, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !160, file: !159, line: 44, baseType: !172, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_off_t", file: !14, line: 39, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !174, line: 85, baseType: !175)
!174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !100, line: 152, baseType: !33)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !160, file: !159, line: 44, baseType: !172, size: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ino_forget", scope: !42, file: !36, line: 46, baseType: !178, size: 64, offset: 3328)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !40, !146, !53}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ino_fuse_num", scope: !42, file: !36, line: 49, baseType: !154, size: 64, offset: 3392)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ino_data", scope: !42, file: !36, line: 52, baseType: !30, size: 64, offset: 3456)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ino_destroy", scope: !42, file: !36, line: 53, baseType: !184, size: 64, offset: 3520)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !40}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !37, file: !36, line: 67, baseType: !188, size: 512, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_inode", file: !14, line: 57, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sqfs_inode", file: !47, line: 54, size: 512, elements: !190)
!190 = !{!191, !200, !201, !203, !209}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !189, file: !47, line: 55, baseType: !192, size: 128)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "squashfs_base_inode", file: !58, line: 159, size: 128, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "inode_type", scope: !192, file: !58, line: 160, baseType: !70, size: 16)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !192, file: !58, line: 161, baseType: !70, size: 16, offset: 16)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !192, file: !58, line: 162, baseType: !70, size: 16, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !192, file: !58, line: 163, baseType: !70, size: 16, offset: 48)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !192, file: !58, line: 164, baseType: !61, size: 32, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "inode_number", scope: !192, file: !58, line: 165, baseType: !61, size: 32, offset: 96)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !189, file: !47, line: 56, baseType: !51, size: 32, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "xattr", scope: !189, file: !47, line: 57, baseType: !202, size: 32, offset: 160)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_xattr_idx", file: !47, line: 53, baseType: !165)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !47, line: 59, baseType: !204, size: 128, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_md_cursor", file: !14, line: 67, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 64, size: 128, elements: !206)
!206 = !{!207, !208}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !205, file: !14, line: 65, baseType: !172, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !205, file: !14, line: 66, baseType: !53, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "xtra", scope: !189, file: !47, line: 79, baseType: !210, size: 192, offset: 320)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !189, file: !47, line: 61, size: 192, elements: !211)
!211 = !{!212, !217, !218, !225}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !210, file: !47, line: 64, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !47, line: 62, size: 64, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !213, file: !47, line: 63, baseType: !51, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !213, file: !47, line: 63, baseType: !51, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "symlink_size", scope: !210, file: !47, line: 65, baseType: !53, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !210, file: !47, line: 71, baseType: !219, size: 192)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !47, line: 66, size: 192, elements: !220)
!220 = !{!221, !222, !223, !224}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "start_block", scope: !219, file: !47, line: 67, baseType: !97, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "file_size", scope: !219, file: !47, line: 68, baseType: !97, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "frag_idx", scope: !219, file: !47, line: 69, baseType: !165, size: 32, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "frag_off", scope: !219, file: !47, line: 70, baseType: !165, size: 32, offset: 160)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !210, file: !47, line: 78, baseType: !226, size: 160)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !47, line: 72, size: 160, elements: !227)
!227 = !{!228, !229, !232, !233, !234}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "start_block", scope: !226, file: !47, line: 73, baseType: !165, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !226, file: !47, line: 74, baseType: !230, size: 16, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !98, line: 25, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !100, line: 40, baseType: !72)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "dir_size", scope: !226, file: !47, line: 75, baseType: !165, size: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "idx_count", scope: !226, file: !47, line: 76, baseType: !230, size: 16, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent_inode", scope: !226, file: !47, line: 77, baseType: !165, size: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!236 = !{!0, !7, !237, !9, !241, !246, !251, !256, !261, !263}
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression(DW_OP_constu, 9218868437227405311, DW_OP_stack_value))
!238 = distinct !DIGlobalVariable(name: "SQFS_TIMEOUT", scope: !11, file: !2, line: 40, type: !239, isLocal: true, isDefinition: true)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "open_refcount", scope: !11, file: !2, line: 51, type: !243, isLocal: true, isDefinition: true)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "sig_atomic_t", file: !244, line: 8, baseType: !245)
!244 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h", directory: "", checksumkind: CSK_MD5, checksum: "d9236f7e3e7f10f53aa9d4cd97f503cf")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sig_atomic_t", file: !100, line: 215, baseType: !51)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 530, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 22)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !2, line: 536, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 35)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !2, line: 513, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 36)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "idle_timeout_secs", scope: !11, file: !2, line: 46, type: !15, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "fuse_instance", scope: !11, file: !2, line: 53, type: !265, isLocal: true, isDefinition: true)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DICompositeType(tag: DW_TAG_structure_type, name: "fuse_session", file: !24, line: 578, flags: DIFlagFwdDecl)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !268, line: 10, baseType: !269)
!268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !100, line: 160, baseType: !33)
!270 = !{i32 7, !"Dwarf Version", i32 5}
!271 = !{i32 2, !"Debug Info Version", i32 3}
!272 = !{i32 1, !"wchar_size", i32 4}
!273 = !{i32 8, !"PIC Level", i32 2}
!274 = !{i32 7, !"PIE Level", i32 2}
!275 = !{i32 7, !"uwtable", i32 2}
!276 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!277 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 547, type: !278, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !281)
!278 = !DISubroutineType(types: !279)
!279 = !{!51, !51, !280}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!281 = !{!282, !283, !284, !291, !303, !316, !317, !318, !327, !575}
!282 = !DILocalVariable(name: "argc", arg: 1, scope: !277, file: !2, line: 547, type: !51)
!283 = !DILocalVariable(name: "argv", arg: 2, scope: !277, file: !2, line: 547, type: !280)
!284 = !DILocalVariable(name: "args", scope: !277, file: !2, line: 548, type: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fuse_args", file: !286, line: 109, size: 192, elements: !287)
!286 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/libfuse-3.16.2-ific6yhvc57qgq74coytjkk7cvkqpuxo/include/fuse3/fuse_opt.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build", checksumkind: CSK_MD5, checksum: "6ace7fc31e8f6e294875806e9271bf5b")
!287 = !{!288, !289, !290}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !285, file: !286, line: 111, baseType: !51, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !285, file: !286, line: 114, baseType: !280, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !285, file: !286, line: 117, baseType: !51, size: 32, offset: 128)
!291 = !DILocalVariable(name: "opts", scope: !277, file: !2, line: 549, type: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_opts", file: !293, line: 52, baseType: !294)
!293 = !DIFile(filename: "./fuseprivate.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "5fb46e4cb1b6658d6b2922e06439a7e7")
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 46, size: 320, elements: !295)
!295 = !{!296, !297, !300, !301, !302}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "progname", scope: !294, file: !293, line: 47, baseType: !169, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !294, file: !293, line: 48, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "mountpoint", scope: !294, file: !293, line: 49, baseType: !51, size: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !294, file: !293, line: 50, baseType: !53, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "idle_timeout_secs", scope: !294, file: !293, line: 51, baseType: !15, size: 32, offset: 256)
!303 = !DILocalVariable(name: "fuse_cmdline_opts", scope: !277, file: !2, line: 552, type: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fuse_cmdline_opts", file: !147, line: 1941, size: 384, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "singlethread", scope: !304, file: !147, line: 1942, baseType: !51, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "foreground", scope: !304, file: !147, line: 1943, baseType: !51, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !304, file: !147, line: 1944, baseType: !51, size: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "nodefault_subtype", scope: !304, file: !147, line: 1945, baseType: !51, size: 32, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mountpoint", scope: !304, file: !147, line: 1946, baseType: !169, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "show_version", scope: !304, file: !147, line: 1947, baseType: !51, size: 32, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "show_help", scope: !304, file: !147, line: 1948, baseType: !51, size: 32, offset: 224)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "clone_fd", scope: !304, file: !147, line: 1949, baseType: !51, size: 32, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "max_idle_threads", scope: !304, file: !147, line: 1950, baseType: !15, size: 32, offset: 288)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "max_threads", scope: !304, file: !147, line: 1954, baseType: !15, size: 32, offset: 320)
!316 = !DILocalVariable(name: "err", scope: !277, file: !2, line: 560, type: !51)
!317 = !DILocalVariable(name: "ll", scope: !277, file: !2, line: 561, type: !40)
!318 = !DILocalVariable(name: "fuse_opts", scope: !277, file: !2, line: 562, type: !319)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 576, elements: !325)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fuse_opt", file: !286, line: 77, size: 192, elements: !321)
!321 = !{!322, !323, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "templ", scope: !320, file: !286, line: 79, baseType: !298, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !320, file: !286, line: 85, baseType: !55, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !320, file: !286, line: 91, baseType: !51, size: 32, offset: 128)
!325 = !{!326}
!326 = !DISubrange(count: 3)
!327 = !DILocalVariable(name: "sqfs_ll_ops", scope: !277, file: !2, line: 568, type: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fuse_lowlevel_ops", file: !147, line: 201, size: 2816, elements: !329)
!329 = !{!330, !349, !350, !357, !361, !383, !420, !424, !430, !434, !435, !436, !440, !444, !448, !449, !453, !457, !458, !459, !463, !464, !465, !466, !467, !468, !472, !476, !480, !481, !485, !489, !504, !508, !512, !518, !524, !545, !549, !558, !562, !566, !567, !571}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !328, file: !147, line: 218, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !30, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fuse_conn_info", file: !24, line: 467, size: 1024, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "proto_major", scope: !335, file: !24, line: 471, baseType: !15, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "proto_minor", scope: !335, file: !24, line: 476, baseType: !15, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "max_write", scope: !335, file: !24, line: 481, baseType: !15, size: 32, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "max_read", scope: !335, file: !24, line: 495, baseType: !15, size: 32, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "max_readahead", scope: !335, file: !24, line: 500, baseType: !15, size: 32, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "capable", scope: !335, file: !24, line: 505, baseType: !15, size: 32, offset: 160)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !335, file: !24, line: 513, baseType: !15, size: 32, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "max_background", scope: !335, file: !24, line: 543, baseType: !15, size: 32, offset: 224)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_threshold", scope: !335, file: !24, line: 553, baseType: !15, size: 32, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "time_gran", scope: !335, file: !24, line: 570, baseType: !15, size: 32, offset: 288)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !335, file: !24, line: 575, baseType: !348, size: 704, offset: 320)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 704, elements: !249)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !328, file: !147, line: 231, baseType: !118, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !328, file: !147, line: 244, baseType: !351, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !354, !146, !298}
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "fuse_req_t", file: !147, line: 49, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "fuse_req", file: !147, line: 49, flags: DIFlagFwdDecl)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "forget", scope: !328, file: !147, line: 282, baseType: !358, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !354, !146, !97}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !328, file: !147, line: 303, baseType: !362, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !354, !146, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fuse_file_info", file: !24, line: 50, size: 320, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !24, line: 52, baseType: !51, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !366, file: !24, line: 60, baseType: !15, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "direct_io", scope: !366, file: !24, line: 63, baseType: !15, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "keep_cache", scope: !366, file: !24, line: 69, baseType: !15, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "parallel_direct_writes", scope: !366, file: !24, line: 73, baseType: !15, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !366, file: !24, line: 78, baseType: !15, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "nonseekable", scope: !366, file: !24, line: 82, baseType: !15, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flock_release", scope: !366, file: !24, line: 87, baseType: !15, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "cache_readdir", scope: !366, file: !24, line: 93, baseType: !15, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "noflush", scope: !366, file: !24, line: 97, baseType: !15, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !366, file: !24, line: 100, baseType: !15, size: 23, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !366, file: !24, line: 101, baseType: !15, size: 32, offset: 64, flags: DIFlagBitField, extraData: i64 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "fh", scope: !366, file: !24, line: 106, baseType: !97, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lock_owner", scope: !366, file: !24, line: 109, baseType: !97, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "poll_events", scope: !366, file: !24, line: 113, baseType: !165, size: 32, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !328, file: !147, line: 340, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !354, !146, !387, !51, !365}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !389, line: 26, size: 1152, elements: !390)
!389 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!390 = !{!391, !393, !395, !397, !399, !401, !403, !404, !405, !406, !408, !410, !411, !413, !414, !415, !416, !417}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !388, file: !389, line: 31, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !100, line: 145, baseType: !55)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !388, file: !389, line: 36, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !100, line: 148, baseType: !55)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !388, file: !389, line: 44, baseType: !396, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !100, line: 151, baseType: !55)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !388, file: !389, line: 45, baseType: !398, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !100, line: 150, baseType: !15)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !388, file: !389, line: 47, baseType: !400, size: 32, offset: 224)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !100, line: 146, baseType: !15)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !388, file: !389, line: 48, baseType: !402, size: 32, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !100, line: 147, baseType: !15)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !388, file: !389, line: 50, baseType: !51, size: 32, offset: 288)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !388, file: !389, line: 52, baseType: !392, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !388, file: !389, line: 57, baseType: !175, size: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !388, file: !389, line: 61, baseType: !407, size: 64, offset: 448)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !100, line: 175, baseType: !33)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !388, file: !389, line: 63, baseType: !409, size: 64, offset: 512)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !100, line: 180, baseType: !33)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "st_atime", scope: !388, file: !389, line: 81, baseType: !269, size: 64, offset: 576)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimensec", scope: !388, file: !389, line: 82, baseType: !412, size: 64, offset: 640)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_ulong_t", file: !100, line: 199, baseType: !55)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtime", scope: !388, file: !389, line: 83, baseType: !269, size: 64, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimensec", scope: !388, file: !389, line: 84, baseType: !412, size: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctime", scope: !388, file: !389, line: 85, baseType: !269, size: 64, offset: 832)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimensec", scope: !388, file: !389, line: 86, baseType: !412, size: 64, offset: 896)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !388, file: !389, line: 89, baseType: !418, size: 192, offset: 960)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 192, elements: !325)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !100, line: 197, baseType: !33)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !328, file: !147, line: 353, baseType: !421, size: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !354, !146}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !328, file: !147, line: 371, baseType: !425, size: 64, offset: 448)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !354, !146, !298, !428, !429}
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !174, line: 69, baseType: !398)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !174, line: 59, baseType: !392)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !328, file: !147, line: 386, baseType: !431, size: 64, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !354, !146, !298, !428}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !328, file: !147, line: 404, baseType: !351, size: 64, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !328, file: !147, line: 421, baseType: !351, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !328, file: !147, line: 435, baseType: !437, size: 64, offset: 704)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !354, !298, !146, !298}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !328, file: !147, line: 467, baseType: !441, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !354, !146, !298, !146, !298, !15}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !328, file: !147, line: 483, baseType: !445, size: 64, offset: 832)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !354, !146, !146, !298}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !328, file: !147, line: 542, baseType: !362, size: 64, offset: 896)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !328, file: !147, line: 570, baseType: !450, size: 64, offset: 960)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !354, !146, !53, !173, !365}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !328, file: !147, line: 599, baseType: !454, size: 64, offset: 1024)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !354, !146, !298, !53, !173, !365}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !328, file: !147, line: 640, baseType: !362, size: 64, offset: 1088)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !328, file: !147, line: 668, baseType: !362, size: 64, offset: 1152)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !328, file: !147, line: 690, baseType: !460, size: 64, offset: 1216)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !354, !146, !51, !365}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "opendir", scope: !328, file: !147, line: 715, baseType: !362, size: 64, offset: 1280)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "readdir", scope: !328, file: !147, line: 761, baseType: !450, size: 64, offset: 1344)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "releasedir", scope: !328, file: !147, line: 780, baseType: !362, size: 64, offset: 1408)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "fsyncdir", scope: !328, file: !147, line: 805, baseType: !460, size: 64, offset: 1472)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !328, file: !147, line: 818, baseType: !421, size: 64, offset: 1536)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "setxattr", scope: !328, file: !147, line: 831, baseType: !469, size: 64, offset: 1600)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !354, !146, !298, !298, !53, !51}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "getxattr", scope: !328, file: !147, line: 862, baseType: !473, size: 64, offset: 1664)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !354, !146, !298, !53}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !328, file: !147, line: 893, baseType: !477, size: 64, offset: 1728)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !354, !146, !53}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "removexattr", scope: !328, file: !147, line: 910, baseType: !351, size: 64, offset: 1792)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !328, file: !147, line: 932, baseType: !482, size: 64, offset: 1856)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !354, !146, !51}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !328, file: !147, line: 961, baseType: !486, size: 64, offset: 1920)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !354, !146, !298, !428, !365}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "getlk", scope: !328, file: !147, line: 976, baseType: !490, size: 64, offset: 1984)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !354, !146, !365, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flock", file: !495, line: 35, size: 256, elements: !496)
!495 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "3ed8466d7581e54a3f782dda83e77be7")
!496 = !{!497, !499, !500, !501, !502}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "l_type", scope: !494, file: !495, line: 37, baseType: !498, size: 16)
!498 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "l_whence", scope: !494, file: !495, line: 38, baseType: !498, size: 16, offset: 16)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "l_start", scope: !494, file: !495, line: 40, baseType: !175, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "l_len", scope: !494, file: !495, line: 41, baseType: !175, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "l_pid", scope: !494, file: !495, line: 46, baseType: !503, size: 32, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !100, line: 154, baseType: !51)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "setlk", scope: !328, file: !147, line: 1001, baseType: !505, size: 64, offset: 2048)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !354, !146, !365, !493, !51}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !328, file: !147, line: 1025, baseType: !509, size: 64, offset: 2112)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !354, !146, !53, !97}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !328, file: !147, line: 1029, baseType: !513, size: 64, offset: 2176)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !354, !146, !51, !30, !365, !15, !516, !53, !53}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !328, file: !147, line: 1095, baseType: !519, size: 64, offset: 2240)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !354, !146, !365, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "fuse_pollhandle", file: !24, line: 579, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !328, file: !147, line: 1125, baseType: !525, size: 64, offset: 2304)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !354, !146, !528, !173, !365}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fuse_bufvec", file: !24, line: 789, size: 512, elements: !530)
!530 = !{!531, !532, !533, !534}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !529, file: !24, line: 793, baseType: !53, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !529, file: !24, line: 798, baseType: !53, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !529, file: !24, line: 803, baseType: !53, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !529, file: !24, line: 808, baseType: !535, size: 320, offset: 192)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 320, elements: !543)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fuse_buf", file: !24, line: 748, size: 320, elements: !537)
!537 = !{!538, !539, !540, !541, !542}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !536, file: !24, line: 752, baseType: !53, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !536, file: !24, line: 757, baseType: !23, size: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !536, file: !24, line: 764, baseType: !30, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !536, file: !24, line: 771, baseType: !51, size: 32, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !536, file: !24, line: 778, baseType: !173, size: 64, offset: 256)
!543 = !{!544}
!544 = !DISubrange(count: 1)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "retrieve_reply", scope: !328, file: !147, line: 1141, baseType: !546, size: 64, offset: 2368)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !354, !30, !146, !173, !528}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "forget_multi", scope: !328, file: !147, line: 1155, baseType: !550, size: 64, offset: 2432)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !354, !53, !553}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fuse_forget_data", file: !147, line: 125, size: 128, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !554, file: !147, line: 126, baseType: !146, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nlookup", scope: !554, file: !147, line: 127, baseType: !97, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !328, file: !147, line: 1173, baseType: !559, size: 64, offset: 2496)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !354, !146, !365, !51}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !328, file: !147, line: 1196, baseType: !563, size: 64, offset: 2560)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !354, !146, !51, !173, !173, !365}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "readdirplus", scope: !328, file: !147, line: 1224, baseType: !450, size: 64, offset: 2624)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !328, file: !147, line: 1257, baseType: !568, size: 64, offset: 2688)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !354, !146, !173, !365, !146, !173, !365, !53, !51}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lseek", scope: !328, file: !147, line: 1281, baseType: !572, size: 64, offset: 2752)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !354, !146, !173, !51, !365}
!575 = !DILocalVariable(name: "ch", scope: !576, file: !2, line: 615, type: !578)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 614, column: 12)
!577 = distinct !DILexicalBlock(scope: !277, file: !2, line: 614, column: 6)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_ll_chan", file: !2, line: 396, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 390, size: 128, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !579, file: !2, line: 391, baseType: !51, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !579, file: !2, line: 392, baseType: !265, size: 64, offset: 64)
!583 = !{!584, !584, i64 0}
!584 = !{!"int", !585, i64 0}
!585 = !{!"omnipotent char", !586, i64 0}
!586 = !{!"Simple C/C++ TBAA"}
!587 = !DILocation(line: 547, column: 14, scope: !277)
!588 = !{!589, !589, i64 0}
!589 = !{!"any pointer", !585, i64 0}
!590 = !DILocation(line: 547, column: 26, scope: !277)
!591 = !DILocation(line: 548, column: 2, scope: !277)
!592 = !DILocation(line: 548, column: 19, scope: !277)
!593 = !DILocation(line: 549, column: 2, scope: !277)
!594 = !DILocation(line: 549, column: 12, scope: !277)
!595 = !DILocation(line: 552, column: 2, scope: !277)
!596 = !DILocation(line: 552, column: 27, scope: !277)
!597 = !DILocation(line: 560, column: 2, scope: !277)
!598 = !DILocation(line: 560, column: 6, scope: !277)
!599 = !DILocation(line: 561, column: 2, scope: !277)
!600 = !DILocation(line: 561, column: 11, scope: !277)
!601 = !DILocation(line: 562, column: 2, scope: !277)
!602 = !DILocation(line: 562, column: 18, scope: !277)
!603 = !DILocation(line: 568, column: 2, scope: !277)
!604 = !DILocation(line: 568, column: 27, scope: !277)
!605 = !DILocation(line: 569, column: 2, scope: !277)
!606 = !DILocation(line: 570, column: 14, scope: !277)
!607 = !DILocation(line: 570, column: 23, scope: !277)
!608 = !{!609, !589, i64 32}
!609 = !{!"fuse_lowlevel_ops", !589, i64 0, !589, i64 8, !589, i64 16, !589, i64 24, !589, i64 32, !589, i64 40, !589, i64 48, !589, i64 56, !589, i64 64, !589, i64 72, !589, i64 80, !589, i64 88, !589, i64 96, !589, i64 104, !589, i64 112, !589, i64 120, !589, i64 128, !589, i64 136, !589, i64 144, !589, i64 152, !589, i64 160, !589, i64 168, !589, i64 176, !589, i64 184, !589, i64 192, !589, i64 200, !589, i64 208, !589, i64 216, !589, i64 224, !589, i64 232, !589, i64 240, !589, i64 248, !589, i64 256, !589, i64 264, !589, i64 272, !589, i64 280, !589, i64 288, !589, i64 296, !589, i64 304, !589, i64 312, !589, i64 320, !589, i64 328, !589, i64 336, !589, i64 344}
!610 = !DILocation(line: 571, column: 14, scope: !277)
!611 = !DILocation(line: 571, column: 23, scope: !277)
!612 = !{!609, !589, i64 160}
!613 = !DILocation(line: 572, column: 14, scope: !277)
!614 = !DILocation(line: 572, column: 25, scope: !277)
!615 = !{!609, !589, i64 176}
!616 = !DILocation(line: 573, column: 14, scope: !277)
!617 = !DILocation(line: 573, column: 23, scope: !277)
!618 = !{!609, !589, i64 168}
!619 = !DILocation(line: 574, column: 14, scope: !277)
!620 = !DILocation(line: 574, column: 22, scope: !277)
!621 = !{!609, !589, i64 16}
!622 = !DILocation(line: 575, column: 14, scope: !277)
!623 = !DILocation(line: 575, column: 20, scope: !277)
!624 = !{!609, !589, i64 112}
!625 = !DILocation(line: 576, column: 14, scope: !277)
!626 = !DILocation(line: 576, column: 22, scope: !277)
!627 = !{!609, !589, i64 240}
!628 = !DILocation(line: 577, column: 14, scope: !277)
!629 = !DILocation(line: 577, column: 23, scope: !277)
!630 = !{!609, !589, i64 144}
!631 = !DILocation(line: 578, column: 14, scope: !277)
!632 = !DILocation(line: 578, column: 20, scope: !277)
!633 = !{!609, !589, i64 120}
!634 = !DILocation(line: 579, column: 14, scope: !277)
!635 = !DILocation(line: 579, column: 23, scope: !277)
!636 = !{!609, !589, i64 48}
!637 = !DILocation(line: 580, column: 14, scope: !277)
!638 = !DILocation(line: 580, column: 24, scope: !277)
!639 = !{!609, !589, i64 216}
!640 = !DILocation(line: 581, column: 14, scope: !277)
!641 = !DILocation(line: 581, column: 23, scope: !277)
!642 = !{!609, !589, i64 208}
!643 = !DILocation(line: 582, column: 14, scope: !277)
!644 = !DILocation(line: 582, column: 22, scope: !277)
!645 = !{!609, !589, i64 24}
!646 = !DILocation(line: 583, column: 14, scope: !277)
!647 = !DILocation(line: 583, column: 24, scope: !277)
!648 = !{!609, !589, i64 192}
!649 = !DILocation(line: 586, column: 14, scope: !277)
!650 = !DILocation(line: 586, column: 7, scope: !277)
!651 = !DILocation(line: 586, column: 12, scope: !277)
!652 = !{!653, !584, i64 0}
!653 = !{!"fuse_args", !584, i64 0, !589, i64 8, !584, i64 16}
!654 = !DILocation(line: 587, column: 14, scope: !277)
!655 = !DILocation(line: 587, column: 7, scope: !277)
!656 = !DILocation(line: 587, column: 12, scope: !277)
!657 = !{!653, !589, i64 8}
!658 = !DILocation(line: 588, column: 7, scope: !277)
!659 = !DILocation(line: 588, column: 17, scope: !277)
!660 = !{!653, !584, i64 16}
!661 = !DILocation(line: 590, column: 18, scope: !277)
!662 = !DILocation(line: 590, column: 7, scope: !277)
!663 = !DILocation(line: 590, column: 16, scope: !277)
!664 = !{!665, !589, i64 0}
!665 = !{!"", !589, i64 0, !589, i64 8, !584, i64 16, !666, i64 24, !584, i64 32}
!666 = !{!"long", !585, i64 0}
!667 = !DILocation(line: 591, column: 7, scope: !277)
!668 = !DILocation(line: 591, column: 13, scope: !277)
!669 = !{!665, !589, i64 8}
!670 = !DILocation(line: 592, column: 7, scope: !277)
!671 = !DILocation(line: 592, column: 18, scope: !277)
!672 = !{!665, !584, i64 16}
!673 = !DILocation(line: 593, column: 7, scope: !277)
!674 = !DILocation(line: 593, column: 14, scope: !277)
!675 = !{!665, !666, i64 24}
!676 = !DILocation(line: 594, column: 7, scope: !277)
!677 = !DILocation(line: 594, column: 25, scope: !277)
!678 = !{!665, !584, i64 32}
!679 = !DILocation(line: 595, column: 35, scope: !680)
!680 = distinct !DILexicalBlock(scope: !277, file: !2, line: 595, column: 6)
!681 = !DILocation(line: 595, column: 6, scope: !680)
!682 = !DILocation(line: 595, column: 61, scope: !680)
!683 = !DILocation(line: 595, column: 6, scope: !277)
!684 = !DILocation(line: 596, column: 14, scope: !680)
!685 = !DILocation(line: 596, column: 3, scope: !680)
!686 = !DILocation(line: 599, column: 6, scope: !687)
!687 = distinct !DILexicalBlock(scope: !277, file: !2, line: 599, column: 6)
!688 = !DILocation(line: 599, column: 52, scope: !687)
!689 = !DILocation(line: 599, column: 6, scope: !277)
!690 = !DILocation(line: 606, column: 14, scope: !687)
!691 = !DILocation(line: 606, column: 3, scope: !687)
!692 = !DILocation(line: 607, column: 24, scope: !693)
!693 = distinct !DILexicalBlock(scope: !277, file: !2, line: 607, column: 6)
!694 = !{!695, !589, i64 16}
!695 = !{!"fuse_cmdline_opts", !584, i64 0, !584, i64 4, !584, i64 8, !584, i64 12, !589, i64 16, !584, i64 24, !584, i64 28, !584, i64 32, !584, i64 36, !584, i64 40}
!696 = !DILocation(line: 607, column: 35, scope: !693)
!697 = !DILocation(line: 607, column: 6, scope: !277)
!698 = !DILocation(line: 608, column: 14, scope: !693)
!699 = !DILocation(line: 608, column: 3, scope: !693)
!700 = !DILocation(line: 611, column: 33, scope: !277)
!701 = !DILocation(line: 611, column: 45, scope: !277)
!702 = !DILocation(line: 611, column: 15, scope: !277)
!703 = !DILocation(line: 611, column: 13, scope: !277)
!704 = !DILocation(line: 611, column: 8, scope: !277)
!705 = !DILocation(line: 611, column: 6, scope: !277)
!706 = !DILocation(line: 614, column: 7, scope: !577)
!707 = !DILocation(line: 614, column: 6, scope: !277)
!708 = !DILocation(line: 615, column: 3, scope: !576)
!709 = !DILocation(line: 615, column: 16, scope: !576)
!710 = !DILocation(line: 616, column: 7, scope: !576)
!711 = !DILocation(line: 619, column: 43, scope: !712)
!712 = distinct !DILexicalBlock(scope: !576, file: !2, line: 617, column: 7)
!713 = !DILocation(line: 623, column: 25, scope: !712)
!714 = !DILocation(line: 617, column: 7, scope: !712)
!715 = !DILocation(line: 623, column: 29, scope: !712)
!716 = !DILocation(line: 617, column: 7, scope: !576)
!717 = !DILocation(line: 624, column: 44, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !2, line: 624, column: 8)
!719 = distinct !DILexicalBlock(scope: !712, file: !2, line: 623, column: 41)
!720 = !{!695, !584, i64 4}
!721 = !DILocation(line: 624, column: 8, scope: !718)
!722 = !DILocation(line: 624, column: 56, scope: !718)
!723 = !DILocation(line: 624, column: 8, scope: !719)
!724 = !DILocation(line: 625, column: 37, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !2, line: 625, column: 9)
!726 = distinct !DILexicalBlock(scope: !718, file: !2, line: 624, column: 63)
!727 = !{!728, !589, i64 8}
!728 = !{!"", !584, i64 0, !589, i64 8}
!729 = !DILocation(line: 625, column: 9, scope: !725)
!730 = !DILocation(line: 625, column: 46, scope: !725)
!731 = !DILocation(line: 625, column: 9, scope: !726)
!732 = !DILocation(line: 626, column: 15, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !2, line: 626, column: 10)
!734 = distinct !DILexicalBlock(scope: !725, file: !2, line: 625, column: 53)
!735 = !DILocation(line: 626, column: 10, scope: !733)
!736 = !DILocation(line: 626, column: 10, scope: !734)
!737 = !DILocation(line: 627, column: 29, scope: !738)
!738 = distinct !DILexicalBlock(scope: !733, file: !2, line: 626, column: 34)
!739 = !DILocation(line: 627, column: 43, scope: !738)
!740 = !DILocation(line: 627, column: 7, scope: !738)
!741 = !DILocation(line: 628, column: 6, scope: !738)
!742 = !DILocation(line: 630, column: 33, scope: !734)
!743 = !DILocation(line: 630, column: 12, scope: !734)
!744 = !DILocation(line: 630, column: 10, scope: !734)
!745 = !DILocation(line: 631, column: 6, scope: !734)
!746 = !DILocation(line: 632, column: 37, scope: !734)
!747 = !DILocation(line: 632, column: 6, scope: !734)
!748 = !DILocation(line: 633, column: 5, scope: !734)
!749 = !DILocation(line: 634, column: 4, scope: !726)
!750 = !DILocation(line: 635, column: 20, scope: !719)
!751 = !DILocation(line: 635, column: 4, scope: !719)
!752 = !DILocation(line: 636, column: 43, scope: !719)
!753 = !DILocation(line: 636, column: 4, scope: !719)
!754 = !DILocation(line: 637, column: 3, scope: !719)
!755 = !DILocation(line: 638, column: 2, scope: !577)
!756 = !DILocation(line: 638, column: 2, scope: !576)
!757 = !DILocation(line: 639, column: 2, scope: !277)
!758 = !DILocation(line: 640, column: 7, scope: !277)
!759 = !DILocation(line: 640, column: 2, scope: !277)
!760 = !DILocation(line: 641, column: 25, scope: !277)
!761 = !DILocation(line: 641, column: 2, scope: !277)
!762 = !DILocation(line: 643, column: 10, scope: !277)
!763 = !DILocation(line: 643, column: 9, scope: !277)
!764 = !DILocation(line: 644, column: 1, scope: !277)
!765 = !DILocation(line: 643, column: 2, scope: !277)
!766 = distinct !DISubprogram(name: "sqfs_ll_op_getattr", scope: !2, file: !2, line: 55, type: !363, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !767)
!767 = !{!768, !769, !770, !771, !772}
!768 = !DILocalVariable(name: "req", arg: 1, scope: !766, file: !2, line: 55, type: !354)
!769 = !DILocalVariable(name: "ino", arg: 2, scope: !766, file: !2, line: 55, type: !146)
!770 = !DILocalVariable(name: "fi", arg: 3, scope: !766, file: !2, line: 56, type: !365)
!771 = !DILocalVariable(name: "lli", scope: !766, file: !2, line: 57, type: !35)
!772 = !DILocalVariable(name: "st", scope: !766, file: !2, line: 58, type: !388)
!773 = !DILocation(line: 55, column: 43, scope: !766)
!774 = !{!666, !666, i64 0}
!775 = !DILocation(line: 55, column: 59, scope: !766)
!776 = !DILocation(line: 56, column: 26, scope: !766)
!777 = !DILocation(line: 57, column: 2, scope: !766)
!778 = !DILocation(line: 57, column: 12, scope: !766)
!779 = !DILocation(line: 58, column: 2, scope: !766)
!780 = !DILocation(line: 58, column: 14, scope: !766)
!781 = !DILocation(line: 59, column: 16, scope: !766)
!782 = !DILocation(line: 59, column: 14, scope: !766)
!783 = !DILocation(line: 60, column: 19, scope: !784)
!784 = distinct !DILexicalBlock(scope: !766, file: !2, line: 60, column: 6)
!785 = !DILocation(line: 60, column: 30, scope: !784)
!786 = !DILocation(line: 60, column: 6, scope: !784)
!787 = !DILocation(line: 60, column: 6, scope: !766)
!788 = !DILocation(line: 61, column: 3, scope: !784)
!789 = !DILocation(line: 63, column: 21, scope: !790)
!790 = distinct !DILexicalBlock(scope: !766, file: !2, line: 63, column: 6)
!791 = !{!792, !589, i64 0}
!792 = !{!"", !589, i64 0, !793, i64 8}
!793 = !{!"sqfs_inode", !794, i64 0, !584, i64 16, !584, i64 20, !796, i64 24, !585, i64 40}
!794 = !{!"squashfs_base_inode", !795, i64 0, !795, i64 2, !795, i64 4, !795, i64 6, !584, i64 8, !584, i64 12}
!795 = !{!"short", !585, i64 0}
!796 = !{!"", !666, i64 0, !666, i64 8}
!797 = !DILocation(line: 63, column: 25, scope: !790)
!798 = !DILocation(line: 63, column: 34, scope: !790)
!799 = !DILocation(line: 63, column: 6, scope: !790)
!800 = !DILocation(line: 63, column: 6, scope: !766)
!801 = !DILocation(line: 64, column: 18, scope: !802)
!802 = distinct !DILexicalBlock(scope: !790, file: !2, line: 63, column: 47)
!803 = !DILocation(line: 64, column: 3, scope: !802)
!804 = !DILocation(line: 65, column: 2, scope: !802)
!805 = !DILocation(line: 66, column: 15, scope: !806)
!806 = distinct !DILexicalBlock(scope: !790, file: !2, line: 65, column: 9)
!807 = !DILocation(line: 66, column: 6, scope: !806)
!808 = !DILocation(line: 66, column: 13, scope: !806)
!809 = !{!810, !666, i64 8}
!810 = !{!"stat", !666, i64 0, !666, i64 8, !666, i64 16, !584, i64 24, !584, i64 28, !584, i64 32, !584, i64 36, !666, i64 40, !666, i64 48, !666, i64 56, !666, i64 64, !666, i64 72, !666, i64 80, !666, i64 88, !666, i64 96, !666, i64 104, !666, i64 112, !585, i64 120}
!811 = !DILocation(line: 67, column: 19, scope: !806)
!812 = !DILocation(line: 67, column: 3, scope: !806)
!813 = !DILocation(line: 69, column: 1, scope: !766)
!814 = distinct !DISubprogram(name: "sqfs_ll_op_opendir", scope: !2, file: !2, line: 71, type: !363, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !815)
!815 = !{!816, !817, !818, !819}
!816 = !DILocalVariable(name: "req", arg: 1, scope: !814, file: !2, line: 71, type: !354)
!817 = !DILocalVariable(name: "ino", arg: 2, scope: !814, file: !2, line: 71, type: !146)
!818 = !DILocalVariable(name: "fi", arg: 3, scope: !814, file: !2, line: 72, type: !365)
!819 = !DILocalVariable(name: "lli", scope: !814, file: !2, line: 73, type: !34)
!820 = !DILocation(line: 71, column: 43, scope: !814)
!821 = !DILocation(line: 71, column: 59, scope: !814)
!822 = !DILocation(line: 72, column: 26, scope: !814)
!823 = !DILocation(line: 73, column: 2, scope: !814)
!824 = !DILocation(line: 73, column: 13, scope: !814)
!825 = !DILocation(line: 74, column: 16, scope: !814)
!826 = !DILocation(line: 74, column: 14, scope: !814)
!827 = !DILocation(line: 76, column: 2, scope: !814)
!828 = !DILocation(line: 76, column: 6, scope: !814)
!829 = !DILocation(line: 76, column: 9, scope: !814)
!830 = !{!831, !666, i64 16}
!831 = !{!"fuse_file_info", !584, i64 0, !584, i64 4, !584, i64 4, !584, i64 4, !584, i64 4, !584, i64 4, !584, i64 4, !584, i64 4, !584, i64 4, !584, i64 5, !584, i64 5, !584, i64 8, !666, i64 16, !666, i64 24, !584, i64 32}
!832 = !DILocation(line: 78, column: 8, scope: !814)
!833 = !DILocation(line: 78, column: 6, scope: !814)
!834 = !DILocation(line: 79, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !814, file: !2, line: 79, column: 6)
!836 = !DILocation(line: 79, column: 6, scope: !814)
!837 = !DILocation(line: 80, column: 18, scope: !838)
!838 = distinct !DILexicalBlock(scope: !835, file: !2, line: 79, column: 12)
!839 = !DILocation(line: 80, column: 3, scope: !838)
!840 = !DILocation(line: 81, column: 3, scope: !838)
!841 = !DILocation(line: 84, column: 19, scope: !842)
!842 = distinct !DILexicalBlock(scope: !814, file: !2, line: 84, column: 6)
!843 = !DILocation(line: 84, column: 24, scope: !842)
!844 = !DILocation(line: 84, column: 29, scope: !842)
!845 = !DILocation(line: 84, column: 6, scope: !842)
!846 = !DILocation(line: 84, column: 34, scope: !842)
!847 = !DILocation(line: 84, column: 6, scope: !814)
!848 = !DILocation(line: 85, column: 8, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !2, line: 85, column: 7)
!850 = distinct !DILexicalBlock(scope: !842, file: !2, line: 84, column: 46)
!851 = !{!792, !795, i64 10}
!852 = !DILocation(line: 85, column: 7, scope: !850)
!853 = !DILocation(line: 86, column: 19, scope: !854)
!854 = distinct !DILexicalBlock(scope: !849, file: !2, line: 85, column: 39)
!855 = !DILocation(line: 86, column: 4, scope: !854)
!856 = !DILocation(line: 87, column: 3, scope: !854)
!857 = !DILocation(line: 88, column: 23, scope: !858)
!858 = distinct !DILexicalBlock(scope: !849, file: !2, line: 87, column: 10)
!859 = !DILocation(line: 88, column: 13, scope: !858)
!860 = !DILocation(line: 88, column: 4, scope: !858)
!861 = !DILocation(line: 88, column: 8, scope: !858)
!862 = !DILocation(line: 88, column: 11, scope: !858)
!863 = !DILocation(line: 89, column: 4, scope: !858)
!864 = !DILocation(line: 90, column: 20, scope: !858)
!865 = !DILocation(line: 90, column: 25, scope: !858)
!866 = !DILocation(line: 90, column: 4, scope: !858)
!867 = !DILocation(line: 91, column: 4, scope: !858)
!868 = !DILocation(line: 93, column: 2, scope: !850)
!869 = !DILocation(line: 94, column: 7, scope: !814)
!870 = !DILocation(line: 94, column: 2, scope: !814)
!871 = !DILocation(line: 95, column: 1, scope: !814)
!872 = distinct !DISubprogram(name: "sqfs_ll_op_releasedir", scope: !2, file: !2, line: 103, type: !363, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !873)
!873 = !{!874, !875, !876}
!874 = !DILocalVariable(name: "req", arg: 1, scope: !872, file: !2, line: 103, type: !354)
!875 = !DILocalVariable(name: "ino", arg: 2, scope: !872, file: !2, line: 103, type: !146)
!876 = !DILocalVariable(name: "fi", arg: 3, scope: !872, file: !2, line: 104, type: !365)
!877 = !DILocation(line: 103, column: 46, scope: !872)
!878 = !DILocation(line: 103, column: 62, scope: !872)
!879 = !DILocation(line: 104, column: 26, scope: !872)
!880 = !DILocation(line: 105, column: 16, scope: !872)
!881 = !DILocation(line: 105, column: 14, scope: !872)
!882 = !DILocation(line: 106, column: 2, scope: !872)
!883 = !DILocation(line: 107, column: 29, scope: !872)
!884 = !DILocation(line: 107, column: 33, scope: !872)
!885 = !DILocation(line: 107, column: 7, scope: !872)
!886 = !DILocation(line: 107, column: 2, scope: !872)
!887 = !DILocation(line: 108, column: 17, scope: !872)
!888 = !DILocation(line: 108, column: 2, scope: !872)
!889 = !DILocation(line: 109, column: 1, scope: !872)
!890 = distinct !DISubprogram(name: "sqfs_ll_op_readdir", scope: !2, file: !2, line: 122, type: !451, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !891)
!891 = !{!892, !893, !894, !895, !896, !897, !898, !911, !916, !917, !918, !919, !920, !921, !922}
!892 = !DILocalVariable(name: "req", arg: 1, scope: !890, file: !2, line: 122, type: !354)
!893 = !DILocalVariable(name: "ino", arg: 2, scope: !890, file: !2, line: 122, type: !146)
!894 = !DILocalVariable(name: "size", arg: 3, scope: !890, file: !2, line: 122, type: !53)
!895 = !DILocalVariable(name: "off", arg: 4, scope: !890, file: !2, line: 123, type: !173)
!896 = !DILocalVariable(name: "fi", arg: 5, scope: !890, file: !2, line: 123, type: !365)
!897 = !DILocalVariable(name: "sqerr", scope: !890, file: !2, line: 124, type: !133)
!898 = !DILocalVariable(name: "dir", scope: !890, file: !2, line: 125, type: !899)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_dir", file: !159, line: 36, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 32, size: 384, elements: !901)
!901 = !{!902, !903, !904, !905}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !900, file: !159, line: 33, baseType: !204, size: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !900, file: !159, line: 34, baseType: !172, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !900, file: !159, line: 34, baseType: !172, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !900, file: !159, line: 35, baseType: !906, size: 96, offset: 256)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "squashfs_dir_header", file: !58, line: 289, size: 96, elements: !907)
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !906, file: !58, line: 290, baseType: !61, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "start_block", scope: !906, file: !58, line: 291, baseType: !61, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "inode_number", scope: !906, file: !58, line: 292, baseType: !61, size: 32, offset: 64)
!911 = !DILocalVariable(name: "namebuf", scope: !890, file: !2, line: 126, type: !912)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_name", file: !159, line: 47, baseType: !913)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 257)
!916 = !DILocalVariable(name: "entry", scope: !890, file: !2, line: 127, type: !158)
!917 = !DILocalVariable(name: "esize", scope: !890, file: !2, line: 128, type: !53)
!918 = !DILocalVariable(name: "st", scope: !890, file: !2, line: 129, type: !388)
!919 = !DILocalVariable(name: "buf", scope: !890, file: !2, line: 131, type: !169)
!920 = !DILocalVariable(name: "bufpos", scope: !890, file: !2, line: 131, type: !169)
!921 = !DILocalVariable(name: "lli", scope: !890, file: !2, line: 132, type: !34)
!922 = !DILocalVariable(name: "err", scope: !890, file: !2, line: 133, type: !51)
!923 = !DILocation(line: 122, column: 43, scope: !890)
!924 = !DILocation(line: 122, column: 59, scope: !890)
!925 = !DILocation(line: 122, column: 71, scope: !890)
!926 = !DILocation(line: 123, column: 9, scope: !890)
!927 = !DILocation(line: 123, column: 37, scope: !890)
!928 = !DILocation(line: 124, column: 2, scope: !890)
!929 = !DILocation(line: 124, column: 11, scope: !890)
!930 = !DILocation(line: 125, column: 2, scope: !890)
!931 = !DILocation(line: 125, column: 11, scope: !890)
!932 = !DILocation(line: 126, column: 2, scope: !890)
!933 = !DILocation(line: 126, column: 12, scope: !890)
!934 = !DILocation(line: 127, column: 2, scope: !890)
!935 = !DILocation(line: 127, column: 17, scope: !890)
!936 = !DILocation(line: 128, column: 2, scope: !890)
!937 = !DILocation(line: 128, column: 9, scope: !890)
!938 = !DILocation(line: 129, column: 2, scope: !890)
!939 = !DILocation(line: 129, column: 14, scope: !890)
!940 = !DILocation(line: 131, column: 2, scope: !890)
!941 = !DILocation(line: 131, column: 8, scope: !890)
!942 = !DILocation(line: 131, column: 21, scope: !890)
!943 = !DILocation(line: 132, column: 2, scope: !890)
!944 = !DILocation(line: 132, column: 13, scope: !890)
!945 = !DILocation(line: 132, column: 41, scope: !890)
!946 = !DILocation(line: 132, column: 45, scope: !890)
!947 = !DILocation(line: 132, column: 19, scope: !890)
!948 = !DILocation(line: 133, column: 2, scope: !890)
!949 = !DILocation(line: 133, column: 6, scope: !890)
!950 = !DILocation(line: 135, column: 16, scope: !890)
!951 = !DILocation(line: 135, column: 14, scope: !890)
!952 = !DILocation(line: 136, column: 21, scope: !953)
!953 = distinct !DILexicalBlock(scope: !890, file: !2, line: 136, column: 6)
!954 = !DILocation(line: 136, column: 26, scope: !953)
!955 = !DILocation(line: 136, column: 30, scope: !953)
!956 = !DILocation(line: 136, column: 35, scope: !953)
!957 = !DILocation(line: 136, column: 40, scope: !953)
!958 = !DILocation(line: 136, column: 53, scope: !953)
!959 = !DILocation(line: 136, column: 6, scope: !953)
!960 = !DILocation(line: 136, column: 6, scope: !890)
!961 = !DILocation(line: 137, column: 7, scope: !953)
!962 = !DILocation(line: 137, column: 3, scope: !953)
!963 = !DILocation(line: 138, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !890, file: !2, line: 138, column: 6)
!965 = !DILocation(line: 138, column: 11, scope: !964)
!966 = !DILocation(line: 138, column: 38, scope: !964)
!967 = !DILocation(line: 138, column: 31, scope: !964)
!968 = !DILocation(line: 138, column: 29, scope: !964)
!969 = !DILocation(line: 138, column: 23, scope: !964)
!970 = !DILocation(line: 138, column: 6, scope: !890)
!971 = !DILocation(line: 139, column: 7, scope: !964)
!972 = !DILocation(line: 139, column: 3, scope: !964)
!973 = !DILocation(line: 141, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !890, file: !2, line: 141, column: 6)
!975 = !DILocation(line: 141, column: 6, scope: !890)
!976 = !DILocation(line: 142, column: 3, scope: !977)
!977 = distinct !DILexicalBlock(scope: !974, file: !2, line: 141, column: 12)
!978 = !DILocation(line: 143, column: 28, scope: !977)
!979 = !DILocation(line: 143, column: 3, scope: !977)
!980 = !DILocation(line: 144, column: 3, scope: !977)
!981 = !DILocation(line: 144, column: 25, scope: !977)
!982 = !DILocation(line: 144, column: 30, scope: !977)
!983 = !DILocation(line: 144, column: 34, scope: !977)
!984 = !DILocation(line: 144, column: 10, scope: !977)
!985 = !DILocation(line: 145, column: 16, scope: !986)
!986 = distinct !DILexicalBlock(scope: !977, file: !2, line: 144, column: 61)
!987 = !DILocation(line: 145, column: 21, scope: !986)
!988 = !DILocation(line: 145, column: 25, scope: !986)
!989 = !{!990, !589, i64 424}
!990 = !{!"sqfs_ll", !991, i64 0, !589, i64 392, !589, i64 400, !589, i64 408, !589, i64 416, !589, i64 424, !589, i64 432, !589, i64 440}
!991 = !{!"sqfs", !584, i64 0, !666, i64 8, !992, i64 16, !994, i64 112, !994, i64 128, !994, i64 144, !995, i64 160, !995, i64 208, !995, i64 256, !995, i64 304, !589, i64 352, !996, i64 360, !994, i64 376}
!992 = !{!"squashfs_super_block", !584, i64 0, !584, i64 4, !584, i64 8, !584, i64 12, !584, i64 16, !795, i64 20, !795, i64 22, !795, i64 24, !795, i64 26, !795, i64 28, !795, i64 30, !993, i64 32, !993, i64 40, !993, i64 48, !993, i64 56, !993, i64 64, !993, i64 72, !993, i64 80, !993, i64 88}
!993 = !{!"long long", !585, i64 0}
!994 = !{!"", !666, i64 0, !589, i64 8}
!995 = !{!"", !589, i64 0, !589, i64 8, !589, i64 16, !666, i64 24, !666, i64 32, !666, i64 40}
!996 = !{!"squashfs_xattr_id_table", !993, i64 0, !584, i64 8, !584, i64 12}
!997 = !DILocation(line: 145, column: 38, scope: !986)
!998 = !DILocation(line: 145, column: 43, scope: !986)
!999 = !DILocation(line: 145, column: 7, scope: !986)
!1000 = !DILocation(line: 145, column: 14, scope: !986)
!1001 = !DILocation(line: 146, column: 17, scope: !986)
!1002 = !DILocation(line: 146, column: 7, scope: !986)
!1003 = !DILocation(line: 146, column: 15, scope: !986)
!1004 = !{!810, !584, i64 24}
!1005 = !DILocation(line: 148, column: 33, scope: !986)
!1006 = !DILocation(line: 148, column: 38, scope: !986)
!1007 = !DILocation(line: 148, column: 46, scope: !986)
!1008 = !DILocation(line: 148, column: 52, scope: !986)
!1009 = !DILocation(line: 149, column: 10, scope: !986)
!1010 = !DILocation(line: 148, column: 12, scope: !986)
!1011 = !DILocation(line: 148, column: 10, scope: !986)
!1012 = !DILocation(line: 150, column: 8, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !986, file: !2, line: 150, column: 8)
!1014 = !DILocation(line: 150, column: 16, scope: !1013)
!1015 = !DILocation(line: 150, column: 14, scope: !1013)
!1016 = !DILocation(line: 150, column: 8, scope: !986)
!1017 = !DILocation(line: 151, column: 5, scope: !1013)
!1018 = !DILocation(line: 153, column: 14, scope: !986)
!1019 = !DILocation(line: 153, column: 11, scope: !986)
!1020 = !DILocation(line: 154, column: 12, scope: !986)
!1021 = !DILocation(line: 154, column: 9, scope: !986)
!1022 = distinct !{!1022, !980, !1023, !1024}
!1023 = !DILocation(line: 155, column: 3, scope: !977)
!1024 = !{!"llvm.loop.mustprogress"}
!1025 = !DILocation(line: 156, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !977, file: !2, line: 156, column: 7)
!1027 = !{!585, !585, i64 0}
!1028 = !DILocation(line: 156, column: 7, scope: !977)
!1029 = !DILocation(line: 157, column: 8, scope: !1026)
!1030 = !DILocation(line: 157, column: 4, scope: !1026)
!1031 = !DILocation(line: 158, column: 2, scope: !977)
!1032 = !DILocation(line: 160, column: 6, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !890, file: !2, line: 160, column: 6)
!1034 = !DILocation(line: 160, column: 6, scope: !890)
!1035 = !DILocation(line: 161, column: 18, scope: !1033)
!1036 = !DILocation(line: 161, column: 23, scope: !1033)
!1037 = !DILocation(line: 161, column: 3, scope: !1033)
!1038 = !DILocation(line: 163, column: 18, scope: !1033)
!1039 = !DILocation(line: 163, column: 23, scope: !1033)
!1040 = !DILocation(line: 163, column: 28, scope: !1033)
!1041 = !DILocation(line: 163, column: 37, scope: !1033)
!1042 = !DILocation(line: 163, column: 35, scope: !1033)
!1043 = !DILocation(line: 163, column: 3, scope: !1033)
!1044 = !DILocation(line: 164, column: 7, scope: !890)
!1045 = !DILocation(line: 164, column: 2, scope: !890)
!1046 = !DILocation(line: 165, column: 1, scope: !890)
!1047 = distinct !DISubprogram(name: "sqfs_ll_op_lookup", scope: !2, file: !2, line: 167, type: !352, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1058, !1059}
!1049 = !DILocalVariable(name: "req", arg: 1, scope: !1047, file: !2, line: 167, type: !354)
!1050 = !DILocalVariable(name: "parent", arg: 2, scope: !1047, file: !2, line: 167, type: !146)
!1051 = !DILocalVariable(name: "name", arg: 3, scope: !1047, file: !2, line: 168, type: !298)
!1052 = !DILocalVariable(name: "lli", scope: !1047, file: !2, line: 169, type: !35)
!1053 = !DILocalVariable(name: "sqerr", scope: !1047, file: !2, line: 170, type: !133)
!1054 = !DILocalVariable(name: "namebuf", scope: !1047, file: !2, line: 171, type: !912)
!1055 = !DILocalVariable(name: "entry", scope: !1047, file: !2, line: 172, type: !158)
!1056 = !DILocalVariable(name: "found", scope: !1047, file: !2, line: 173, type: !1057)
!1057 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1058 = !DILocalVariable(name: "inode", scope: !1047, file: !2, line: 174, type: !188)
!1059 = !DILocalVariable(name: "fentry", scope: !1060, file: !2, line: 200, type: !1062)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 199, column: 9)
!1061 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 197, column: 6)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fuse_entry_param", file: !147, line: 59, size: 1408, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1068}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1062, file: !147, line: 67, baseType: !146, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !1062, file: !147, line: 79, baseType: !97, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1062, file: !147, line: 88, baseType: !388, size: 1152, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "attr_timeout", scope: !1062, file: !147, line: 94, baseType: !240, size: 64, offset: 1280)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "entry_timeout", scope: !1062, file: !147, line: 100, baseType: !240, size: 64, offset: 1344)
!1069 = !DILocation(line: 167, column: 42, scope: !1047)
!1070 = !DILocation(line: 167, column: 58, scope: !1047)
!1071 = !DILocation(line: 168, column: 15, scope: !1047)
!1072 = !DILocation(line: 169, column: 2, scope: !1047)
!1073 = !DILocation(line: 169, column: 12, scope: !1047)
!1074 = !DILocation(line: 170, column: 2, scope: !1047)
!1075 = !DILocation(line: 170, column: 11, scope: !1047)
!1076 = !DILocation(line: 171, column: 2, scope: !1047)
!1077 = !DILocation(line: 171, column: 12, scope: !1047)
!1078 = !DILocation(line: 172, column: 2, scope: !1047)
!1079 = !DILocation(line: 172, column: 17, scope: !1047)
!1080 = !DILocation(line: 173, column: 2, scope: !1047)
!1081 = !DILocation(line: 173, column: 7, scope: !1047)
!1082 = !DILocation(line: 174, column: 2, scope: !1047)
!1083 = !DILocation(line: 174, column: 13, scope: !1047)
!1084 = !DILocation(line: 176, column: 16, scope: !1047)
!1085 = !DILocation(line: 176, column: 14, scope: !1047)
!1086 = !DILocation(line: 177, column: 19, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 177, column: 6)
!1088 = !DILocation(line: 177, column: 30, scope: !1087)
!1089 = !DILocation(line: 177, column: 6, scope: !1087)
!1090 = !DILocation(line: 177, column: 6, scope: !1047)
!1091 = !DILocation(line: 178, column: 3, scope: !1087)
!1092 = !DILocation(line: 180, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 180, column: 6)
!1094 = !DILocation(line: 180, column: 6, scope: !1047)
!1095 = !DILocation(line: 181, column: 18, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 180, column: 37)
!1097 = !DILocation(line: 181, column: 3, scope: !1096)
!1098 = !DILocation(line: 182, column: 3, scope: !1096)
!1099 = !DILocation(line: 185, column: 27, scope: !1047)
!1100 = !DILocation(line: 185, column: 2, scope: !1047)
!1101 = !DILocation(line: 186, column: 31, scope: !1047)
!1102 = !DILocation(line: 186, column: 35, scope: !1047)
!1103 = !DILocation(line: 186, column: 44, scope: !1047)
!1104 = !DILocation(line: 186, column: 51, scope: !1047)
!1105 = !DILocation(line: 186, column: 64, scope: !1047)
!1106 = !DILocation(line: 186, column: 57, scope: !1047)
!1107 = !DILocation(line: 186, column: 10, scope: !1047)
!1108 = !DILocation(line: 186, column: 8, scope: !1047)
!1109 = !DILocation(line: 188, column: 6, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 188, column: 6)
!1111 = !DILocation(line: 188, column: 6, scope: !1047)
!1112 = !DILocation(line: 189, column: 18, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 188, column: 13)
!1114 = !DILocation(line: 189, column: 3, scope: !1113)
!1115 = !DILocation(line: 190, column: 3, scope: !1113)
!1116 = !DILocation(line: 192, column: 7, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 192, column: 6)
!1118 = !{!1119, !1119, i64 0}
!1119 = !{!"_Bool", !585, i64 0}
!1120 = !{i8 0, i8 2}
!1121 = !{}
!1122 = !DILocation(line: 192, column: 6, scope: !1047)
!1123 = !DILocation(line: 193, column: 18, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 192, column: 14)
!1125 = !DILocation(line: 193, column: 3, scope: !1124)
!1126 = !DILocation(line: 194, column: 3, scope: !1124)
!1127 = !DILocation(line: 197, column: 26, scope: !1061)
!1128 = !DILocation(line: 197, column: 30, scope: !1061)
!1129 = !DILocation(line: 197, column: 42, scope: !1061)
!1130 = !DILocation(line: 197, column: 6, scope: !1061)
!1131 = !DILocation(line: 197, column: 6, scope: !1047)
!1132 = !DILocation(line: 198, column: 18, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 197, column: 70)
!1134 = !DILocation(line: 198, column: 3, scope: !1133)
!1135 = !DILocation(line: 199, column: 2, scope: !1133)
!1136 = !DILocation(line: 200, column: 3, scope: !1060)
!1137 = !DILocation(line: 200, column: 27, scope: !1060)
!1138 = !DILocation(line: 201, column: 3, scope: !1060)
!1139 = !DILocation(line: 202, column: 22, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 202, column: 7)
!1141 = !DILocation(line: 202, column: 26, scope: !1140)
!1142 = !DILocation(line: 202, column: 46, scope: !1140)
!1143 = !DILocation(line: 202, column: 7, scope: !1140)
!1144 = !DILocation(line: 202, column: 7, scope: !1060)
!1145 = !DILocation(line: 203, column: 19, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 202, column: 53)
!1147 = !DILocation(line: 203, column: 4, scope: !1146)
!1148 = !DILocation(line: 204, column: 3, scope: !1146)
!1149 = !DILocation(line: 205, column: 33, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 204, column: 10)
!1151 = !DILocation(line: 205, column: 47, scope: !1150)
!1152 = !{!1153, !1154, i64 168}
!1153 = !{!"fuse_entry_param", !666, i64 0, !666, i64 8, !810, i64 16, !1154, i64 160, !1154, i64 168}
!1154 = !{!"double", !585, i64 0}
!1155 = !DILocation(line: 205, column: 11, scope: !1150)
!1156 = !DILocation(line: 205, column: 24, scope: !1150)
!1157 = !{!1153, !1154, i64 160}
!1158 = !DILocation(line: 206, column: 21, scope: !1150)
!1159 = !DILocation(line: 206, column: 25, scope: !1150)
!1160 = !{!990, !589, i64 408}
!1161 = !DILocation(line: 206, column: 42, scope: !1150)
!1162 = !DILocation(line: 206, column: 17, scope: !1150)
!1163 = !DILocation(line: 206, column: 11, scope: !1150)
!1164 = !DILocation(line: 206, column: 15, scope: !1150)
!1165 = !{!1153, !666, i64 0}
!1166 = !DILocation(line: 207, column: 32, scope: !1150)
!1167 = !DILocation(line: 207, column: 11, scope: !1150)
!1168 = !DILocation(line: 207, column: 16, scope: !1150)
!1169 = !DILocation(line: 207, column: 23, scope: !1150)
!1170 = !{!1153, !666, i64 24}
!1171 = !DILocation(line: 208, column: 21, scope: !1150)
!1172 = !DILocation(line: 208, column: 4, scope: !1150)
!1173 = !DILocation(line: 210, column: 2, scope: !1061)
!1174 = !DILocation(line: 211, column: 1, scope: !1047)
!1175 = distinct !DISubprogram(name: "sqfs_ll_op_open", scope: !2, file: !2, line: 213, type: !363, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181}
!1177 = !DILocalVariable(name: "req", arg: 1, scope: !1175, file: !2, line: 213, type: !354)
!1178 = !DILocalVariable(name: "ino", arg: 2, scope: !1175, file: !2, line: 213, type: !146)
!1179 = !DILocalVariable(name: "fi", arg: 3, scope: !1175, file: !2, line: 214, type: !365)
!1180 = !DILocalVariable(name: "inode", scope: !1175, file: !2, line: 215, type: !235)
!1181 = !DILocalVariable(name: "ll", scope: !1175, file: !2, line: 216, type: !40)
!1182 = !DILocation(line: 213, column: 40, scope: !1175)
!1183 = !DILocation(line: 213, column: 56, scope: !1175)
!1184 = !DILocation(line: 214, column: 26, scope: !1175)
!1185 = !DILocation(line: 215, column: 2, scope: !1175)
!1186 = !DILocation(line: 215, column: 14, scope: !1175)
!1187 = !DILocation(line: 216, column: 2, scope: !1175)
!1188 = !DILocation(line: 216, column: 11, scope: !1175)
!1189 = !DILocation(line: 218, column: 16, scope: !1175)
!1190 = !DILocation(line: 218, column: 14, scope: !1175)
!1191 = !DILocation(line: 219, column: 6, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 219, column: 6)
!1193 = !DILocation(line: 219, column: 10, scope: !1192)
!1194 = !{!831, !584, i64 0}
!1195 = !DILocation(line: 219, column: 16, scope: !1192)
!1196 = !DILocation(line: 219, column: 6, scope: !1175)
!1197 = !DILocation(line: 220, column: 18, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 219, column: 39)
!1199 = !DILocation(line: 220, column: 3, scope: !1198)
!1200 = !DILocation(line: 221, column: 3, scope: !1198)
!1201 = !DILocation(line: 224, column: 10, scope: !1175)
!1202 = !DILocation(line: 224, column: 8, scope: !1175)
!1203 = !DILocation(line: 225, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 225, column: 6)
!1205 = !DILocation(line: 225, column: 6, scope: !1175)
!1206 = !DILocation(line: 226, column: 18, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 225, column: 14)
!1208 = !DILocation(line: 226, column: 3, scope: !1207)
!1209 = !DILocation(line: 227, column: 3, scope: !1207)
!1210 = !DILocation(line: 230, column: 25, scope: !1175)
!1211 = !DILocation(line: 230, column: 7, scope: !1175)
!1212 = !DILocation(line: 230, column: 5, scope: !1175)
!1213 = !DILocation(line: 231, column: 20, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 231, column: 6)
!1215 = !DILocation(line: 231, column: 24, scope: !1214)
!1216 = !DILocation(line: 231, column: 31, scope: !1214)
!1217 = !DILocation(line: 231, column: 6, scope: !1214)
!1218 = !DILocation(line: 231, column: 6, scope: !1175)
!1219 = !DILocation(line: 232, column: 18, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 231, column: 37)
!1221 = !DILocation(line: 232, column: 3, scope: !1220)
!1222 = !DILocation(line: 233, column: 2, scope: !1220)
!1223 = !DILocation(line: 233, column: 14, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 233, column: 13)
!1225 = !{!793, !795, i64 2}
!1226 = !DILocation(line: 233, column: 13, scope: !1214)
!1227 = !DILocation(line: 234, column: 18, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 233, column: 41)
!1229 = !DILocation(line: 234, column: 3, scope: !1228)
!1230 = !DILocation(line: 235, column: 2, scope: !1228)
!1231 = !DILocation(line: 236, column: 22, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 235, column: 9)
!1233 = !DILocation(line: 236, column: 12, scope: !1232)
!1234 = !DILocation(line: 236, column: 3, scope: !1232)
!1235 = !DILocation(line: 236, column: 7, scope: !1232)
!1236 = !DILocation(line: 236, column: 10, scope: !1232)
!1237 = !DILocation(line: 237, column: 3, scope: !1232)
!1238 = !DILocation(line: 237, column: 7, scope: !1232)
!1239 = !DILocation(line: 237, column: 18, scope: !1232)
!1240 = !DILocation(line: 238, column: 3, scope: !1232)
!1241 = !DILocation(line: 239, column: 19, scope: !1232)
!1242 = !DILocation(line: 239, column: 24, scope: !1232)
!1243 = !DILocation(line: 239, column: 3, scope: !1232)
!1244 = !DILocation(line: 240, column: 3, scope: !1232)
!1245 = !DILocation(line: 242, column: 7, scope: !1175)
!1246 = !DILocation(line: 242, column: 2, scope: !1175)
!1247 = !DILocation(line: 243, column: 1, scope: !1175)
!1248 = distinct !DISubprogram(name: "sqfs_ll_op_create", scope: !2, file: !2, line: 97, type: !487, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254}
!1250 = !DILocalVariable(name: "req", arg: 1, scope: !1248, file: !2, line: 97, type: !354)
!1251 = !DILocalVariable(name: "parent", arg: 2, scope: !1248, file: !2, line: 97, type: !146)
!1252 = !DILocalVariable(name: "name", arg: 3, scope: !1248, file: !2, line: 97, type: !298)
!1253 = !DILocalVariable(name: "mode", arg: 4, scope: !1248, file: !2, line: 98, type: !428)
!1254 = !DILocalVariable(name: "fi", arg: 5, scope: !1248, file: !2, line: 98, type: !365)
!1255 = !DILocation(line: 97, column: 42, scope: !1248)
!1256 = !DILocation(line: 97, column: 58, scope: !1248)
!1257 = !DILocation(line: 97, column: 78, scope: !1248)
!1258 = !DILocation(line: 98, column: 17, scope: !1248)
!1259 = !DILocation(line: 98, column: 46, scope: !1248)
!1260 = !DILocation(line: 99, column: 16, scope: !1248)
!1261 = !DILocation(line: 99, column: 14, scope: !1248)
!1262 = !DILocation(line: 100, column: 17, scope: !1248)
!1263 = !DILocation(line: 100, column: 2, scope: !1248)
!1264 = !DILocation(line: 101, column: 1, scope: !1248)
!1265 = distinct !DISubprogram(name: "sqfs_ll_op_release", scope: !2, file: !2, line: 245, type: !363, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1266)
!1266 = !{!1267, !1268, !1269}
!1267 = !DILocalVariable(name: "req", arg: 1, scope: !1265, file: !2, line: 245, type: !354)
!1268 = !DILocalVariable(name: "ino", arg: 2, scope: !1265, file: !2, line: 245, type: !146)
!1269 = !DILocalVariable(name: "fi", arg: 3, scope: !1265, file: !2, line: 246, type: !365)
!1270 = !DILocation(line: 245, column: 43, scope: !1265)
!1271 = !DILocation(line: 245, column: 59, scope: !1265)
!1272 = !DILocation(line: 246, column: 26, scope: !1265)
!1273 = !DILocation(line: 247, column: 30, scope: !1265)
!1274 = !DILocation(line: 247, column: 34, scope: !1265)
!1275 = !DILocation(line: 247, column: 7, scope: !1265)
!1276 = !DILocation(line: 247, column: 2, scope: !1265)
!1277 = !DILocation(line: 248, column: 2, scope: !1265)
!1278 = !DILocation(line: 248, column: 6, scope: !1265)
!1279 = !DILocation(line: 248, column: 9, scope: !1265)
!1280 = !DILocation(line: 249, column: 16, scope: !1265)
!1281 = !DILocation(line: 249, column: 14, scope: !1265)
!1282 = !DILocation(line: 250, column: 2, scope: !1265)
!1283 = !DILocation(line: 251, column: 17, scope: !1265)
!1284 = !DILocation(line: 251, column: 2, scope: !1265)
!1285 = !DILocation(line: 252, column: 1, scope: !1265)
!1286 = distinct !DISubprogram(name: "sqfs_ll_op_read", scope: !2, file: !2, line: 254, type: !451, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1287)
!1287 = !{!1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297}
!1288 = !DILocalVariable(name: "req", arg: 1, scope: !1286, file: !2, line: 254, type: !354)
!1289 = !DILocalVariable(name: "ino", arg: 2, scope: !1286, file: !2, line: 254, type: !146)
!1290 = !DILocalVariable(name: "size", arg: 3, scope: !1286, file: !2, line: 255, type: !53)
!1291 = !DILocalVariable(name: "off", arg: 4, scope: !1286, file: !2, line: 255, type: !173)
!1292 = !DILocalVariable(name: "fi", arg: 5, scope: !1286, file: !2, line: 255, type: !365)
!1293 = !DILocalVariable(name: "ll", scope: !1286, file: !2, line: 256, type: !40)
!1294 = !DILocalVariable(name: "inode", scope: !1286, file: !2, line: 257, type: !235)
!1295 = !DILocalVariable(name: "err", scope: !1286, file: !2, line: 258, type: !133)
!1296 = !DILocalVariable(name: "osize", scope: !1286, file: !2, line: 260, type: !173)
!1297 = !DILocalVariable(name: "buf", scope: !1286, file: !2, line: 261, type: !169)
!1298 = !DILocation(line: 254, column: 40, scope: !1286)
!1299 = !DILocation(line: 254, column: 56, scope: !1286)
!1300 = !DILocation(line: 255, column: 10, scope: !1286)
!1301 = !DILocation(line: 255, column: 22, scope: !1286)
!1302 = !DILocation(line: 255, column: 50, scope: !1286)
!1303 = !DILocation(line: 256, column: 2, scope: !1286)
!1304 = !DILocation(line: 256, column: 11, scope: !1286)
!1305 = !DILocation(line: 256, column: 34, scope: !1286)
!1306 = !DILocation(line: 256, column: 16, scope: !1286)
!1307 = !DILocation(line: 257, column: 2, scope: !1286)
!1308 = !DILocation(line: 257, column: 14, scope: !1286)
!1309 = !DILocation(line: 257, column: 45, scope: !1286)
!1310 = !DILocation(line: 257, column: 49, scope: !1286)
!1311 = !DILocation(line: 257, column: 22, scope: !1286)
!1312 = !DILocation(line: 258, column: 2, scope: !1286)
!1313 = !DILocation(line: 258, column: 11, scope: !1286)
!1314 = !DILocation(line: 260, column: 2, scope: !1286)
!1315 = !DILocation(line: 260, column: 8, scope: !1286)
!1316 = !DILocation(line: 261, column: 2, scope: !1286)
!1317 = !DILocation(line: 261, column: 8, scope: !1286)
!1318 = !DILocation(line: 261, column: 21, scope: !1286)
!1319 = !DILocation(line: 261, column: 14, scope: !1286)
!1320 = !DILocation(line: 262, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 262, column: 6)
!1322 = !DILocation(line: 262, column: 6, scope: !1286)
!1323 = !DILocation(line: 263, column: 18, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 262, column: 12)
!1325 = !DILocation(line: 263, column: 3, scope: !1324)
!1326 = !DILocation(line: 264, column: 3, scope: !1324)
!1327 = !DILocation(line: 267, column: 16, scope: !1286)
!1328 = !DILocation(line: 267, column: 14, scope: !1286)
!1329 = !DILocation(line: 268, column: 10, scope: !1286)
!1330 = !DILocation(line: 268, column: 8, scope: !1286)
!1331 = !DILocation(line: 269, column: 25, scope: !1286)
!1332 = !DILocation(line: 269, column: 29, scope: !1286)
!1333 = !DILocation(line: 269, column: 33, scope: !1286)
!1334 = !DILocation(line: 269, column: 40, scope: !1286)
!1335 = !DILocation(line: 269, column: 53, scope: !1286)
!1336 = !DILocation(line: 269, column: 8, scope: !1286)
!1337 = !DILocation(line: 269, column: 6, scope: !1286)
!1338 = !DILocation(line: 270, column: 6, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 270, column: 6)
!1340 = !DILocation(line: 270, column: 6, scope: !1286)
!1341 = !DILocation(line: 271, column: 18, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 270, column: 11)
!1343 = !DILocation(line: 271, column: 3, scope: !1342)
!1344 = !DILocation(line: 272, column: 2, scope: !1342)
!1345 = !DILocation(line: 272, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 272, column: 13)
!1347 = !DILocation(line: 272, column: 19, scope: !1346)
!1348 = !DILocation(line: 272, column: 13, scope: !1339)
!1349 = !DILocation(line: 273, column: 18, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 272, column: 25)
!1351 = !DILocation(line: 273, column: 3, scope: !1350)
!1352 = !DILocation(line: 274, column: 2, scope: !1350)
!1353 = !DILocation(line: 275, column: 18, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 274, column: 9)
!1355 = !DILocation(line: 275, column: 23, scope: !1354)
!1356 = !DILocation(line: 275, column: 28, scope: !1354)
!1357 = !DILocation(line: 275, column: 3, scope: !1354)
!1358 = !DILocation(line: 277, column: 7, scope: !1286)
!1359 = !DILocation(line: 277, column: 2, scope: !1286)
!1360 = !DILocation(line: 278, column: 1, scope: !1286)
!1361 = distinct !DISubprogram(name: "sqfs_ll_op_readlink", scope: !2, file: !2, line: 280, type: !422, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367}
!1363 = !DILocalVariable(name: "req", arg: 1, scope: !1361, file: !2, line: 280, type: !354)
!1364 = !DILocalVariable(name: "ino", arg: 2, scope: !1361, file: !2, line: 280, type: !146)
!1365 = !DILocalVariable(name: "dst", scope: !1361, file: !2, line: 281, type: !169)
!1366 = !DILocalVariable(name: "size", scope: !1361, file: !2, line: 282, type: !53)
!1367 = !DILocalVariable(name: "lli", scope: !1361, file: !2, line: 283, type: !35)
!1368 = !DILocation(line: 280, column: 44, scope: !1361)
!1369 = !DILocation(line: 280, column: 60, scope: !1361)
!1370 = !DILocation(line: 281, column: 2, scope: !1361)
!1371 = !DILocation(line: 281, column: 8, scope: !1361)
!1372 = !DILocation(line: 282, column: 2, scope: !1361)
!1373 = !DILocation(line: 282, column: 9, scope: !1361)
!1374 = !DILocation(line: 283, column: 2, scope: !1361)
!1375 = !DILocation(line: 283, column: 12, scope: !1361)
!1376 = !DILocation(line: 284, column: 16, scope: !1361)
!1377 = !DILocation(line: 284, column: 14, scope: !1361)
!1378 = !DILocation(line: 285, column: 19, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 285, column: 6)
!1380 = !DILocation(line: 285, column: 30, scope: !1379)
!1381 = !DILocation(line: 285, column: 6, scope: !1379)
!1382 = !DILocation(line: 285, column: 6, scope: !1361)
!1383 = !DILocation(line: 286, column: 3, scope: !1379)
!1384 = !DILocation(line: 288, column: 7, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 288, column: 6)
!1386 = !DILocation(line: 288, column: 6, scope: !1361)
!1387 = !DILocation(line: 289, column: 18, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 288, column: 37)
!1389 = !DILocation(line: 289, column: 3, scope: !1388)
!1390 = !DILocation(line: 290, column: 2, scope: !1388)
!1391 = !DILocation(line: 290, column: 32, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 290, column: 13)
!1393 = !DILocation(line: 290, column: 36, scope: !1392)
!1394 = !DILocation(line: 290, column: 45, scope: !1392)
!1395 = !DILocation(line: 290, column: 13, scope: !1392)
!1396 = !DILocation(line: 290, column: 13, scope: !1385)
!1397 = !DILocation(line: 291, column: 18, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 290, column: 66)
!1399 = !DILocation(line: 291, column: 3, scope: !1398)
!1400 = !DILocation(line: 292, column: 2, scope: !1398)
!1401 = !DILocation(line: 292, column: 28, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 292, column: 13)
!1403 = !DILocation(line: 292, column: 33, scope: !1402)
!1404 = !DILocation(line: 292, column: 21, scope: !1402)
!1405 = !DILocation(line: 292, column: 19, scope: !1402)
!1406 = !DILocation(line: 292, column: 13, scope: !1392)
!1407 = !DILocation(line: 293, column: 18, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 292, column: 40)
!1409 = !DILocation(line: 293, column: 3, scope: !1408)
!1410 = !DILocation(line: 294, column: 2, scope: !1408)
!1411 = !DILocation(line: 294, column: 32, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 294, column: 13)
!1413 = !DILocation(line: 294, column: 36, scope: !1412)
!1414 = !DILocation(line: 294, column: 45, scope: !1412)
!1415 = !DILocation(line: 294, column: 52, scope: !1412)
!1416 = !DILocation(line: 294, column: 13, scope: !1412)
!1417 = !DILocation(line: 294, column: 13, scope: !1402)
!1418 = !DILocation(line: 295, column: 18, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 294, column: 65)
!1420 = !DILocation(line: 295, column: 3, scope: !1419)
!1421 = !DILocation(line: 296, column: 8, scope: !1419)
!1422 = !DILocation(line: 296, column: 3, scope: !1419)
!1423 = !DILocation(line: 297, column: 2, scope: !1419)
!1424 = !DILocation(line: 298, column: 23, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 297, column: 9)
!1426 = !DILocation(line: 298, column: 28, scope: !1425)
!1427 = !DILocation(line: 298, column: 3, scope: !1425)
!1428 = !DILocation(line: 299, column: 8, scope: !1425)
!1429 = !DILocation(line: 299, column: 3, scope: !1425)
!1430 = !DILocation(line: 301, column: 1, scope: !1361)
!1431 = distinct !DISubprogram(name: "sqfs_ll_op_listxattr", scope: !2, file: !2, line: 303, type: !478, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1432)
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1438}
!1433 = !DILocalVariable(name: "req", arg: 1, scope: !1431, file: !2, line: 303, type: !354)
!1434 = !DILocalVariable(name: "ino", arg: 2, scope: !1431, file: !2, line: 303, type: !146)
!1435 = !DILocalVariable(name: "size", arg: 3, scope: !1431, file: !2, line: 303, type: !53)
!1436 = !DILocalVariable(name: "lli", scope: !1431, file: !2, line: 304, type: !35)
!1437 = !DILocalVariable(name: "buf", scope: !1431, file: !2, line: 305, type: !169)
!1438 = !DILocalVariable(name: "ferr", scope: !1431, file: !2, line: 306, type: !51)
!1439 = !DILocation(line: 303, column: 45, scope: !1431)
!1440 = !DILocation(line: 303, column: 61, scope: !1431)
!1441 = !DILocation(line: 303, column: 73, scope: !1431)
!1442 = !DILocation(line: 304, column: 2, scope: !1431)
!1443 = !DILocation(line: 304, column: 12, scope: !1431)
!1444 = !DILocation(line: 305, column: 2, scope: !1431)
!1445 = !DILocation(line: 305, column: 8, scope: !1431)
!1446 = !DILocation(line: 306, column: 2, scope: !1431)
!1447 = !DILocation(line: 306, column: 6, scope: !1431)
!1448 = !DILocation(line: 308, column: 16, scope: !1431)
!1449 = !DILocation(line: 308, column: 14, scope: !1431)
!1450 = !DILocation(line: 309, column: 19, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 309, column: 6)
!1452 = !DILocation(line: 309, column: 30, scope: !1451)
!1453 = !DILocation(line: 309, column: 6, scope: !1451)
!1454 = !DILocation(line: 309, column: 6, scope: !1431)
!1455 = !DILocation(line: 310, column: 3, scope: !1451)
!1456 = !DILocation(line: 312, column: 6, scope: !1431)
!1457 = !DILocation(line: 313, column: 6, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 313, column: 6)
!1459 = !DILocation(line: 313, column: 11, scope: !1458)
!1460 = !DILocation(line: 313, column: 29, scope: !1458)
!1461 = !DILocation(line: 313, column: 22, scope: !1458)
!1462 = !DILocation(line: 313, column: 20, scope: !1458)
!1463 = !DILocation(line: 313, column: 6, scope: !1431)
!1464 = !DILocation(line: 314, column: 18, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 313, column: 37)
!1466 = !DILocation(line: 314, column: 3, scope: !1465)
!1467 = !DILocation(line: 315, column: 3, scope: !1465)
!1468 = !DILocation(line: 318, column: 29, scope: !1431)
!1469 = !DILocation(line: 318, column: 33, scope: !1431)
!1470 = !DILocation(line: 318, column: 42, scope: !1431)
!1471 = !DILocation(line: 318, column: 49, scope: !1431)
!1472 = !DILocation(line: 318, column: 9, scope: !1431)
!1473 = !DILocation(line: 318, column: 7, scope: !1431)
!1474 = !DILocation(line: 319, column: 6, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 319, column: 6)
!1476 = !DILocation(line: 319, column: 6, scope: !1431)
!1477 = !DILocation(line: 320, column: 18, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 319, column: 12)
!1479 = !DILocation(line: 320, column: 23, scope: !1478)
!1480 = !DILocation(line: 320, column: 3, scope: !1478)
!1481 = !DILocation(line: 321, column: 2, scope: !1478)
!1482 = !DILocation(line: 321, column: 13, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 321, column: 13)
!1484 = !DILocation(line: 321, column: 13, scope: !1475)
!1485 = !DILocation(line: 322, column: 18, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 321, column: 18)
!1487 = !DILocation(line: 322, column: 23, scope: !1486)
!1488 = !DILocation(line: 322, column: 28, scope: !1486)
!1489 = !DILocation(line: 322, column: 3, scope: !1486)
!1490 = !DILocation(line: 323, column: 2, scope: !1486)
!1491 = !DILocation(line: 324, column: 20, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 323, column: 9)
!1493 = !DILocation(line: 324, column: 25, scope: !1492)
!1494 = !DILocation(line: 324, column: 3, scope: !1492)
!1495 = !DILocation(line: 326, column: 7, scope: !1431)
!1496 = !DILocation(line: 326, column: 2, scope: !1431)
!1497 = !DILocation(line: 327, column: 1, scope: !1431)
!1498 = distinct !DISubprogram(name: "sqfs_ll_op_getxattr", scope: !2, file: !2, line: 329, type: !474, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1499)
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1505, !1506}
!1500 = !DILocalVariable(name: "req", arg: 1, scope: !1498, file: !2, line: 329, type: !354)
!1501 = !DILocalVariable(name: "ino", arg: 2, scope: !1498, file: !2, line: 329, type: !146)
!1502 = !DILocalVariable(name: "name", arg: 3, scope: !1498, file: !2, line: 330, type: !298)
!1503 = !DILocalVariable(name: "size", arg: 4, scope: !1498, file: !2, line: 330, type: !53)
!1504 = !DILocalVariable(name: "lli", scope: !1498, file: !2, line: 335, type: !35)
!1505 = !DILocalVariable(name: "buf", scope: !1498, file: !2, line: 336, type: !169)
!1506 = !DILocalVariable(name: "real", scope: !1498, file: !2, line: 337, type: !53)
!1507 = !DILocation(line: 329, column: 44, scope: !1498)
!1508 = !DILocation(line: 329, column: 60, scope: !1498)
!1509 = !DILocation(line: 330, column: 15, scope: !1498)
!1510 = !DILocation(line: 330, column: 28, scope: !1498)
!1511 = !DILocation(line: 335, column: 2, scope: !1498)
!1512 = !DILocation(line: 335, column: 12, scope: !1498)
!1513 = !DILocation(line: 336, column: 2, scope: !1498)
!1514 = !DILocation(line: 336, column: 8, scope: !1498)
!1515 = !DILocation(line: 337, column: 2, scope: !1498)
!1516 = !DILocation(line: 337, column: 9, scope: !1498)
!1517 = !DILocation(line: 337, column: 16, scope: !1498)
!1518 = !DILocation(line: 346, column: 16, scope: !1498)
!1519 = !DILocation(line: 346, column: 14, scope: !1498)
!1520 = !DILocation(line: 347, column: 19, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1498, file: !2, line: 347, column: 6)
!1522 = !DILocation(line: 347, column: 30, scope: !1521)
!1523 = !DILocation(line: 347, column: 6, scope: !1521)
!1524 = !DILocation(line: 347, column: 6, scope: !1498)
!1525 = !DILocation(line: 348, column: 3, scope: !1521)
!1526 = !DILocation(line: 350, column: 21, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1498, file: !2, line: 350, column: 6)
!1528 = !DILocation(line: 350, column: 14, scope: !1527)
!1529 = !DILocation(line: 350, column: 12, scope: !1527)
!1530 = !DILocation(line: 350, column: 6, scope: !1498)
!1531 = !DILocation(line: 351, column: 18, scope: !1527)
!1532 = !DILocation(line: 351, column: 3, scope: !1527)
!1533 = !DILocation(line: 352, column: 34, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 352, column: 11)
!1535 = !DILocation(line: 352, column: 38, scope: !1534)
!1536 = !DILocation(line: 352, column: 47, scope: !1534)
!1537 = !DILocation(line: 352, column: 54, scope: !1534)
!1538 = !DILocation(line: 352, column: 60, scope: !1534)
!1539 = !DILocation(line: 352, column: 11, scope: !1534)
!1540 = !DILocation(line: 352, column: 11, scope: !1527)
!1541 = !DILocation(line: 353, column: 18, scope: !1534)
!1542 = !DILocation(line: 353, column: 3, scope: !1534)
!1543 = !DILocation(line: 354, column: 11, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 354, column: 11)
!1545 = !DILocation(line: 354, column: 16, scope: !1544)
!1546 = !DILocation(line: 354, column: 11, scope: !1534)
!1547 = !DILocation(line: 355, column: 18, scope: !1544)
!1548 = !DILocation(line: 355, column: 23, scope: !1544)
!1549 = !DILocation(line: 355, column: 3, scope: !1544)
!1550 = !DILocation(line: 356, column: 11, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1544, file: !2, line: 356, column: 11)
!1552 = !DILocation(line: 356, column: 16, scope: !1551)
!1553 = !DILocation(line: 356, column: 11, scope: !1544)
!1554 = !DILocation(line: 357, column: 20, scope: !1551)
!1555 = !DILocation(line: 357, column: 25, scope: !1551)
!1556 = !DILocation(line: 357, column: 3, scope: !1551)
!1557 = !DILocation(line: 358, column: 11, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 358, column: 11)
!1559 = !DILocation(line: 358, column: 18, scope: !1558)
!1560 = !DILocation(line: 358, column: 16, scope: !1558)
!1561 = !DILocation(line: 358, column: 11, scope: !1551)
!1562 = !DILocation(line: 359, column: 18, scope: !1558)
!1563 = !DILocation(line: 359, column: 3, scope: !1558)
!1564 = !DILocation(line: 361, column: 18, scope: !1558)
!1565 = !DILocation(line: 361, column: 23, scope: !1558)
!1566 = !DILocation(line: 361, column: 28, scope: !1558)
!1567 = !DILocation(line: 361, column: 3, scope: !1558)
!1568 = !DILocation(line: 362, column: 7, scope: !1498)
!1569 = !DILocation(line: 362, column: 2, scope: !1498)
!1570 = !DILocation(line: 363, column: 1, scope: !1498)
!1571 = distinct !DISubprogram(name: "sqfs_ll_op_forget", scope: !2, file: !2, line: 365, type: !1572, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1574)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !354, !146, !55}
!1574 = !{!1575, !1576, !1577, !1578}
!1575 = !DILocalVariable(name: "req", arg: 1, scope: !1571, file: !2, line: 365, type: !354)
!1576 = !DILocalVariable(name: "ino", arg: 2, scope: !1571, file: !2, line: 365, type: !146)
!1577 = !DILocalVariable(name: "nlookup", arg: 3, scope: !1571, file: !2, line: 366, type: !55)
!1578 = !DILocalVariable(name: "lli", scope: !1571, file: !2, line: 367, type: !35)
!1579 = !DILocation(line: 365, column: 42, scope: !1571)
!1580 = !DILocation(line: 365, column: 58, scope: !1571)
!1581 = !DILocation(line: 366, column: 17, scope: !1571)
!1582 = !DILocation(line: 367, column: 2, scope: !1571)
!1583 = !DILocation(line: 367, column: 12, scope: !1571)
!1584 = !DILocation(line: 368, column: 16, scope: !1571)
!1585 = !DILocation(line: 368, column: 14, scope: !1571)
!1586 = !DILocation(line: 369, column: 15, scope: !1571)
!1587 = !DILocation(line: 369, column: 2, scope: !1571)
!1588 = !DILocation(line: 370, column: 6, scope: !1571)
!1589 = !DILocation(line: 370, column: 10, scope: !1571)
!1590 = !{!990, !589, i64 416}
!1591 = !DILocation(line: 370, column: 25, scope: !1571)
!1592 = !DILocation(line: 370, column: 29, scope: !1571)
!1593 = !DILocation(line: 370, column: 34, scope: !1571)
!1594 = !DILocation(line: 370, column: 2, scope: !1571)
!1595 = !DILocation(line: 371, column: 18, scope: !1571)
!1596 = !DILocation(line: 371, column: 2, scope: !1571)
!1597 = !DILocation(line: 372, column: 1, scope: !1571)
!1598 = distinct !DISubprogram(name: "stfs_ll_op_statfs", scope: !2, file: !2, line: 374, type: !422, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1624}
!1600 = !DILocalVariable(name: "req", arg: 1, scope: !1598, file: !2, line: 374, type: !354)
!1601 = !DILocalVariable(name: "ino", arg: 2, scope: !1598, file: !2, line: 374, type: !146)
!1602 = !DILocalVariable(name: "ll", scope: !1598, file: !2, line: 375, type: !40)
!1603 = !DILocalVariable(name: "st", scope: !1598, file: !2, line: 376, type: !1604)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statvfs", file: !1605, line: 29, size: 896, elements: !1606)
!1605 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/statvfs.h", directory: "", checksumkind: CSK_MD5, checksum: "ed289bf1b5e8f68fa4f2728451f462ad")
!1606 = !{!1607, !1608, !1609, !1611, !1612, !1613, !1615, !1616, !1617, !1618, !1619, !1620}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !1604, file: !1605, line: 31, baseType: !55, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !1604, file: !1605, line: 32, baseType: !55, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !1604, file: !1605, line: 34, baseType: !1610, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsblkcnt_t", file: !100, line: 184, baseType: !55)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !1604, file: !1605, line: 35, baseType: !1610, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !1604, file: !1605, line: 36, baseType: !1610, size: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !1604, file: !1605, line: 37, baseType: !1614, size: 64, offset: 320)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsfilcnt_t", file: !100, line: 188, baseType: !55)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !1604, file: !1605, line: 38, baseType: !1614, size: 64, offset: 384)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "f_favail", scope: !1604, file: !1605, line: 39, baseType: !1614, size: 64, offset: 448)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !1604, file: !1605, line: 48, baseType: !55, size: 64, offset: 512)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "f_flag", scope: !1604, file: !1605, line: 52, baseType: !55, size: 64, offset: 576)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "f_namemax", scope: !1604, file: !1605, line: 53, baseType: !55, size: 64, offset: 640)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "__f_spare", scope: !1604, file: !1605, line: 54, baseType: !1621, size: 192, offset: 704)
!1621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, elements: !1622)
!1622 = !{!1623}
!1623 = !DISubrange(count: 6)
!1624 = !DILocalVariable(name: "err", scope: !1598, file: !2, line: 377, type: !51)
!1625 = !DILocation(line: 374, column: 42, scope: !1598)
!1626 = !DILocation(line: 374, column: 58, scope: !1598)
!1627 = !DILocation(line: 375, column: 2, scope: !1598)
!1628 = !DILocation(line: 375, column: 11, scope: !1598)
!1629 = !DILocation(line: 376, column: 2, scope: !1598)
!1630 = !DILocation(line: 376, column: 17, scope: !1598)
!1631 = !DILocation(line: 377, column: 2, scope: !1598)
!1632 = !DILocation(line: 377, column: 6, scope: !1598)
!1633 = !DILocation(line: 379, column: 25, scope: !1598)
!1634 = !DILocation(line: 379, column: 7, scope: !1598)
!1635 = !DILocation(line: 379, column: 5, scope: !1598)
!1636 = !DILocation(line: 380, column: 21, scope: !1598)
!1637 = !DILocation(line: 380, column: 25, scope: !1598)
!1638 = !DILocation(line: 380, column: 8, scope: !1598)
!1639 = !DILocation(line: 380, column: 6, scope: !1598)
!1640 = !DILocation(line: 381, column: 6, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 381, column: 6)
!1642 = !DILocation(line: 381, column: 10, scope: !1641)
!1643 = !DILocation(line: 381, column: 6, scope: !1598)
!1644 = !DILocation(line: 382, column: 21, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 381, column: 16)
!1646 = !DILocation(line: 382, column: 3, scope: !1645)
!1647 = !DILocation(line: 383, column: 2, scope: !1645)
!1648 = !DILocation(line: 384, column: 18, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 383, column: 9)
!1650 = !DILocation(line: 384, column: 23, scope: !1649)
!1651 = !DILocation(line: 384, column: 3, scope: !1649)
!1652 = !DILocation(line: 386, column: 1, scope: !1598)
!1653 = !DISubprogram(name: "fuse_opt_parse", scope: !286, file: !286, line: 203, type: !1654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!51, !1656, !30, !1657, !1659}
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "fuse_opt_proc_t", file: !286, line: 180, baseType: !1660)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!51, !30, !298, !51, !1656}
!1663 = !DISubprogram(name: "sqfs_usage", scope: !293, file: !293, line: 43, type: !1664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{null, !169, !1057}
!1666 = !DISubprogram(name: "fuse_parse_cmdline", scope: !147, file: !147, line: 1976, type: !1667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!51, !1656, !1669}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!1670 = distinct !DISubprogram(name: "sqfs_ll_open", scope: !2, file: !2, line: 525, type: !1671, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1673)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!40, !298, !53}
!1673 = !{!1674, !1675, !1676}
!1674 = !DILocalVariable(name: "path", arg: 1, scope: !1670, file: !2, line: 525, type: !298)
!1675 = !DILocalVariable(name: "offset", arg: 2, scope: !1670, file: !2, line: 525, type: !53)
!1676 = !DILocalVariable(name: "ll", scope: !1670, file: !2, line: 526, type: !40)
!1677 = !DILocation(line: 525, column: 42, scope: !1670)
!1678 = !DILocation(line: 525, column: 55, scope: !1670)
!1679 = !DILocation(line: 526, column: 2, scope: !1670)
!1680 = !DILocation(line: 526, column: 11, scope: !1670)
!1681 = !DILocation(line: 528, column: 7, scope: !1670)
!1682 = !DILocation(line: 528, column: 5, scope: !1670)
!1683 = !DILocation(line: 529, column: 7, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 529, column: 6)
!1685 = !DILocation(line: 529, column: 6, scope: !1670)
!1686 = !DILocation(line: 530, column: 3, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 529, column: 11)
!1688 = !DILocation(line: 531, column: 2, scope: !1687)
!1689 = !DILocation(line: 532, column: 10, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 531, column: 9)
!1691 = !DILocation(line: 532, column: 3, scope: !1690)
!1692 = !DILocation(line: 533, column: 19, scope: !1690)
!1693 = !DILocation(line: 533, column: 3, scope: !1690)
!1694 = !DILocation(line: 533, column: 7, scope: !1690)
!1695 = !DILocation(line: 533, column: 10, scope: !1690)
!1696 = !DILocation(line: 533, column: 17, scope: !1690)
!1697 = !{!990, !666, i64 8}
!1698 = !DILocation(line: 534, column: 24, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1690, file: !2, line: 534, column: 7)
!1700 = !DILocation(line: 534, column: 28, scope: !1699)
!1701 = !DILocation(line: 534, column: 32, scope: !1699)
!1702 = !DILocation(line: 534, column: 38, scope: !1699)
!1703 = !DILocation(line: 534, column: 7, scope: !1699)
!1704 = !DILocation(line: 534, column: 46, scope: !1699)
!1705 = !DILocation(line: 534, column: 7, scope: !1690)
!1706 = !DILocation(line: 535, column: 21, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 535, column: 8)
!1708 = distinct !DILexicalBlock(scope: !1699, file: !2, line: 534, column: 58)
!1709 = !DILocation(line: 535, column: 8, scope: !1707)
!1710 = !DILocation(line: 535, column: 8, scope: !1708)
!1711 = !DILocation(line: 536, column: 13, scope: !1707)
!1712 = !DILocation(line: 536, column: 5, scope: !1707)
!1713 = !DILocation(line: 538, column: 12, scope: !1707)
!1714 = !DILocation(line: 538, column: 5, scope: !1707)
!1715 = !DILocation(line: 539, column: 18, scope: !1708)
!1716 = !DILocation(line: 539, column: 22, scope: !1708)
!1717 = !DILocation(line: 539, column: 4, scope: !1708)
!1718 = !DILocation(line: 540, column: 3, scope: !1708)
!1719 = !DILocation(line: 542, column: 8, scope: !1690)
!1720 = !DILocation(line: 542, column: 3, scope: !1690)
!1721 = !DILocation(line: 544, column: 2, scope: !1670)
!1722 = !DILocation(line: 545, column: 1, scope: !1670)
!1723 = distinct !DISubprogram(name: "sqfs_ll_mount", scope: !2, file: !2, line: 399, type: !1724, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1728)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!133, !1726, !298, !1656, !1727, !53, !30}
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!1728 = !{!1729, !1730, !1731, !1732, !1733, !1734}
!1729 = !DILocalVariable(name: "ch", arg: 1, scope: !1723, file: !2, line: 400, type: !1726)
!1730 = !DILocalVariable(name: "mountpoint", arg: 2, scope: !1723, file: !2, line: 401, type: !298)
!1731 = !DILocalVariable(name: "args", arg: 3, scope: !1723, file: !2, line: 402, type: !1656)
!1732 = !DILocalVariable(name: "ops", arg: 4, scope: !1723, file: !2, line: 403, type: !1727)
!1733 = !DILocalVariable(name: "ops_size", arg: 5, scope: !1723, file: !2, line: 404, type: !53)
!1734 = !DILocalVariable(name: "userdata", arg: 6, scope: !1723, file: !2, line: 405, type: !30)
!1735 = !DILocation(line: 400, column: 17, scope: !1723)
!1736 = !DILocation(line: 401, column: 15, scope: !1723)
!1737 = !DILocation(line: 402, column: 21, scope: !1723)
!1738 = !DILocation(line: 403, column: 35, scope: !1723)
!1739 = !DILocation(line: 404, column: 16, scope: !1723)
!1740 = !DILocation(line: 405, column: 15, scope: !1723)
!1741 = !DILocation(line: 406, column: 33, scope: !1723)
!1742 = !DILocation(line: 406, column: 39, scope: !1723)
!1743 = !DILocation(line: 406, column: 44, scope: !1723)
!1744 = !DILocation(line: 406, column: 54, scope: !1723)
!1745 = !DILocation(line: 406, column: 16, scope: !1723)
!1746 = !DILocation(line: 406, column: 2, scope: !1723)
!1747 = !DILocation(line: 406, column: 6, scope: !1723)
!1748 = !DILocation(line: 406, column: 14, scope: !1723)
!1749 = !DILocation(line: 407, column: 7, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 407, column: 6)
!1751 = !DILocation(line: 407, column: 11, scope: !1750)
!1752 = !DILocation(line: 407, column: 6, scope: !1723)
!1753 = !DILocation(line: 408, column: 3, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 407, column: 20)
!1755 = !DILocation(line: 410, column: 25, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 410, column: 6)
!1757 = !DILocation(line: 410, column: 29, scope: !1756)
!1758 = !DILocation(line: 410, column: 38, scope: !1756)
!1759 = !DILocation(line: 410, column: 6, scope: !1756)
!1760 = !DILocation(line: 410, column: 6, scope: !1723)
!1761 = !DILocation(line: 411, column: 24, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 410, column: 51)
!1763 = !DILocation(line: 411, column: 28, scope: !1762)
!1764 = !DILocation(line: 411, column: 3, scope: !1762)
!1765 = !DILocation(line: 412, column: 3, scope: !1762)
!1766 = !DILocation(line: 412, column: 7, scope: !1762)
!1767 = !DILocation(line: 412, column: 15, scope: !1762)
!1768 = !DILocation(line: 413, column: 3, scope: !1762)
!1769 = !DILocation(line: 415, column: 2, scope: !1723)
!1770 = !DILocation(line: 416, column: 1, scope: !1723)
!1771 = !DISubprogram(name: "sqfs_ll_daemonize", scope: !36, file: !36, line: 72, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!51, !51}
!1774 = !DISubprogram(name: "fuse_set_signal_handlers", scope: !24, file: !24, line: 864, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!51, !265}
!1777 = distinct !DISubprogram(name: "setup_idle_timeout", scope: !2, file: !2, line: 501, type: !1778, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1780)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{null, !265, !15}
!1780 = !{!1781, !1782, !1783}
!1781 = !DILocalVariable(name: "se", arg: 1, scope: !1777, file: !2, line: 501, type: !265)
!1782 = !DILocalVariable(name: "timeout_secs", arg: 2, scope: !1777, file: !2, line: 501, type: !15)
!1783 = !DILocalVariable(name: "sa", scope: !1777, file: !2, line: 505, type: !1784)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1785, line: 27, size: 1216, elements: !1786)
!1785 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "", checksumkind: CSK_MD5, checksum: "95401d18e887df415f59d7a2cb411c28")
!1786 = !{!1787, !1873, !1882, !1883}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !1784, file: !1785, line: 38, baseType: !1788, size: 64)
!1788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1784, file: !1785, line: 31, size: 64, elements: !1789)
!1789 = !{!1790, !1796}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1788, file: !1785, line: 34, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1792, line: 72, baseType: !1793)
!1792 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{null, !51}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !1788, file: !1785, line: 36, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !51, !1800, !30}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !1802, line: 124, baseType: !1803)
!1802 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h", directory: "", checksumkind: CSK_MD5, checksum: "023cf7b0ef843da262cf07900eda0ac5")
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1802, line: 36, size: 1024, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1808, !1809}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1803, file: !1802, line: 38, baseType: !51, size: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1803, file: !1802, line: 40, baseType: !51, size: 32, offset: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1803, file: !1802, line: 42, baseType: !51, size: 32, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1803, file: !1802, line: 48, baseType: !51, size: 32, offset: 96)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1803, file: !1802, line: 123, baseType: !1810, size: 896, offset: 128)
!1810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1803, file: !1802, line: 51, size: 896, elements: !1811)
!1811 = !{!1812, !1816, !1821, !1833, !1839, !1848, !1862, !1867}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1810, file: !1802, line: 53, baseType: !1813, size: 896)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 896, elements: !1814)
!1814 = !{!1815}
!1815 = !DISubrange(count: 28)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1810, file: !1802, line: 60, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1810, file: !1802, line: 56, size: 64, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1817, file: !1802, line: 58, baseType: !503, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1817, file: !1802, line: 59, baseType: !400, size: 32, offset: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1810, file: !1802, line: 68, baseType: !1822, size: 128)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1810, file: !1802, line: 63, size: 128, elements: !1823)
!1823 = !{!1824, !1825, !1826}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !1822, file: !1802, line: 65, baseType: !51, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !1822, file: !1802, line: 66, baseType: !51, size: 32, offset: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1822, file: !1802, line: 67, baseType: !1827, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !1828, line: 30, baseType: !1829)
!1828 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h", directory: "", checksumkind: CSK_MD5, checksum: "bc7605d16e396c16f725f8da13f6eb20")
!1829 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1828, line: 24, size: 64, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1829, file: !1828, line: 26, baseType: !51, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1829, file: !1828, line: 27, baseType: !30, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1810, file: !1802, line: 76, baseType: !1834, size: 128)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1810, file: !1802, line: 71, size: 128, elements: !1835)
!1835 = !{!1836, !1837, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1834, file: !1802, line: 73, baseType: !503, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1834, file: !1802, line: 74, baseType: !400, size: 32, offset: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1834, file: !1802, line: 75, baseType: !1827, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1810, file: !1802, line: 86, baseType: !1840, size: 256)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1810, file: !1802, line: 79, size: 256, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1845, !1847}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1840, file: !1802, line: 81, baseType: !503, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1840, file: !1802, line: 82, baseType: !400, size: 32, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !1840, file: !1802, line: 83, baseType: !51, size: 32, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !1840, file: !1802, line: 84, baseType: !1846, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !100, line: 156, baseType: !33)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !1840, file: !1802, line: 85, baseType: !1846, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1810, file: !1802, line: 105, baseType: !1849, size: 256)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1810, file: !1802, line: 89, size: 256, elements: !1850)
!1850 = !{!1851, !1852, !1853}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !1849, file: !1802, line: 91, baseType: !30, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !1849, file: !1802, line: 93, baseType: !498, size: 16, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !1849, file: !1802, line: 104, baseType: !1854, size: 128, offset: 128)
!1854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1849, file: !1802, line: 94, size: 128, elements: !1855)
!1855 = !{!1856, !1861}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1854, file: !1802, line: 101, baseType: !1857, size: 128)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1854, file: !1802, line: 97, size: 128, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1857, file: !1802, line: 99, baseType: !30, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1857, file: !1802, line: 100, baseType: !30, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1854, file: !1802, line: 103, baseType: !166, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1810, file: !1802, line: 112, baseType: !1863, size: 128)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1810, file: !1802, line: 108, size: 128, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1863, file: !1802, line: 110, baseType: !33, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !1863, file: !1802, line: 111, baseType: !51, size: 32, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1810, file: !1802, line: 121, baseType: !1868, size: 128)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1810, file: !1802, line: 116, size: 128, elements: !1869)
!1869 = !{!1870, !1871, !1872}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1868, file: !1802, line: 118, baseType: !30, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1868, file: !1802, line: 119, baseType: !51, size: 32, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1868, file: !1802, line: 120, baseType: !15, size: 32, offset: 96)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1784, file: !1785, line: 46, baseType: !1874, size: 1024, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !1875, line: 8, baseType: !1876)
!1875 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1875, line: 5, size: 1024, elements: !1877)
!1877 = !{!1878}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !1876, file: !1875, line: 7, baseType: !1879, size: 1024)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 1024, elements: !1880)
!1880 = !{!1881}
!1881 = !DISubrange(count: 16)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1784, file: !1785, line: 49, baseType: !51, size: 32, offset: 1088)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1784, file: !1785, line: 52, baseType: !1884, size: 64, offset: 1152)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null}
!1887 = !DILocation(line: 501, column: 53, scope: !1777)
!1888 = !DILocation(line: 501, column: 70, scope: !1777)
!1889 = !DILocation(line: 502, column: 16, scope: !1777)
!1890 = !DILocation(line: 502, column: 14, scope: !1777)
!1891 = !DILocation(line: 503, column: 22, scope: !1777)
!1892 = !DILocation(line: 503, column: 20, scope: !1777)
!1893 = !DILocation(line: 505, column: 2, scope: !1777)
!1894 = !DILocation(line: 505, column: 19, scope: !1777)
!1895 = !DILocation(line: 506, column: 2, scope: !1777)
!1896 = !DILocation(line: 507, column: 5, scope: !1777)
!1897 = !DILocation(line: 507, column: 16, scope: !1777)
!1898 = !DILocation(line: 508, column: 19, scope: !1777)
!1899 = !DILocation(line: 508, column: 2, scope: !1777)
!1900 = !DILocation(line: 509, column: 5, scope: !1777)
!1901 = !DILocation(line: 509, column: 14, scope: !1777)
!1902 = !{!1903, !584, i64 136}
!1903 = !{!"sigaction", !585, i64 0, !1904, i64 8, !584, i64 136, !589, i64 144}
!1904 = !{!"", !585, i64 0}
!1905 = !DILocation(line: 511, column: 18, scope: !1777)
!1906 = !DILocation(line: 511, column: 16, scope: !1777)
!1907 = !DILocation(line: 512, column: 6, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 512, column: 6)
!1909 = !DILocation(line: 512, column: 36, scope: !1908)
!1910 = !DILocation(line: 512, column: 6, scope: !1777)
!1911 = !DILocation(line: 513, column: 3, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !2, line: 512, column: 43)
!1913 = !DILocation(line: 514, column: 3, scope: !1912)
!1914 = !DILocation(line: 517, column: 2, scope: !1777)
!1915 = !DILocation(line: 518, column: 1, scope: !1777)
!1916 = !DISubprogram(name: "fuse_session_loop", scope: !147, file: !147, line: 2084, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1917 = !DISubprogram(name: "fuse_remove_signal_handlers", scope: !24, file: !24, line: 877, type: !1918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !265}
!1920 = !DISubprogram(name: "sqfs_ll_destroy", scope: !36, file: !36, line: 57, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1921 = distinct !DISubprogram(name: "sqfs_ll_unmount", scope: !2, file: !2, line: 418, type: !1922, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !1726, !298}
!1924 = !{!1925, !1926}
!1925 = !DILocalVariable(name: "ch", arg: 1, scope: !1921, file: !2, line: 418, type: !1726)
!1926 = !DILocalVariable(name: "mountpoint", arg: 2, scope: !1921, file: !2, line: 418, type: !298)
!1927 = !DILocation(line: 418, column: 43, scope: !1921)
!1928 = !DILocation(line: 418, column: 59, scope: !1921)
!1929 = !DILocation(line: 419, column: 23, scope: !1921)
!1930 = !DILocation(line: 419, column: 27, scope: !1921)
!1931 = !DILocation(line: 419, column: 2, scope: !1921)
!1932 = !DILocation(line: 420, column: 23, scope: !1921)
!1933 = !DILocation(line: 420, column: 27, scope: !1921)
!1934 = !DILocation(line: 420, column: 2, scope: !1921)
!1935 = !DILocation(line: 421, column: 2, scope: !1921)
!1936 = !DILocation(line: 421, column: 6, scope: !1921)
!1937 = !DILocation(line: 421, column: 14, scope: !1921)
!1938 = !DILocation(line: 422, column: 1, scope: !1921)
!1939 = !DISubprogram(name: "fuse_opt_free_args", scope: !286, file: !286, line: 255, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !1656}
!1942 = !DISubprogram(name: "free", scope: !1943, file: !1943, line: 555, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1943 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1944 = !DISubprogram(name: "time", scope: !1945, file: !1945, line: 76, type: !1946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1945 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!267, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1949 = !DISubprogram(name: "sqfs_ll_iget", scope: !36, file: !36, line: 69, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!133, !354, !34, !146}
!1952 = !DISubprogram(name: "sqfs_stat", scope: !1953, file: !1953, line: 33, type: !1954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1953 = !DIFile(filename: "./stat.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "bdb446550dbcb8dc6d3111bf1a2aea77")
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!133, !1956, !235, !387}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!1957 = !DISubprogram(name: "fuse_reply_err", scope: !147, file: !147, line: 1306, type: !1958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!51, !354, !51}
!1960 = !DISubprogram(name: "fuse_reply_attr", scope: !147, file: !147, line: 1366, type: !1961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!51, !354, !1963, !240}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!1965 = !DISubprogram(name: "malloc", scope: !1943, file: !1943, line: 540, type: !1966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!30, !53}
!1968 = !DISubprogram(name: "fuse_reply_open", scope: !147, file: !147, line: 1394, type: !1969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!51, !354, !1971}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!1973 = !DISubprogram(name: "sqfs_dir_open", scope: !159, file: !159, line: 51, type: !1974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!133, !1956, !235, !1976, !173}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!1977 = !DISubprogram(name: "sqfs_dentry_init", scope: !159, file: !159, line: 58, type: !1978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !157, !169}
!1980 = !DISubprogram(name: "sqfs_dir_next", scope: !159, file: !159, line: 62, type: !1981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!1057, !1956, !1976, !157, !1983}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!1984 = !DISubprogram(name: "sqfs_dentry_mode", scope: !159, file: !159, line: 80, type: !1985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!1987, !157}
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_mode_t", file: !14, line: 37, baseType: !428)
!1988 = distinct !DISubprogram(name: "sqfs_ll_add_direntry", scope: !2, file: !2, line: 111, type: !1989, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1991)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!53, !354, !169, !53, !298, !1963, !173}
!1991 = !{!1992, !1993, !1994, !1995, !1996, !1997}
!1992 = !DILocalVariable(name: "req", arg: 1, scope: !1988, file: !2, line: 111, type: !354)
!1993 = !DILocalVariable(name: "buf", arg: 2, scope: !1988, file: !2, line: 111, type: !169)
!1994 = !DILocalVariable(name: "bufsize", arg: 3, scope: !1988, file: !2, line: 111, type: !53)
!1995 = !DILocalVariable(name: "name", arg: 4, scope: !1988, file: !2, line: 112, type: !298)
!1996 = !DILocalVariable(name: "st", arg: 5, scope: !1988, file: !2, line: 112, type: !1963)
!1997 = !DILocalVariable(name: "off", arg: 6, scope: !1988, file: !2, line: 112, type: !173)
!1998 = !DILocation(line: 111, column: 47, scope: !1988)
!1999 = !DILocation(line: 111, column: 58, scope: !1988)
!2000 = !DILocation(line: 111, column: 70, scope: !1988)
!2001 = !DILocation(line: 112, column: 15, scope: !1988)
!2002 = !DILocation(line: 112, column: 40, scope: !1988)
!2003 = !DILocation(line: 112, column: 50, scope: !1988)
!2004 = !DILocation(line: 114, column: 28, scope: !1988)
!2005 = !DILocation(line: 114, column: 33, scope: !1988)
!2006 = !DILocation(line: 114, column: 38, scope: !1988)
!2007 = !DILocation(line: 114, column: 47, scope: !1988)
!2008 = !DILocation(line: 114, column: 53, scope: !1988)
!2009 = !DILocation(line: 114, column: 57, scope: !1988)
!2010 = !DILocation(line: 114, column: 10, scope: !1988)
!2011 = !DILocation(line: 114, column: 3, scope: !1988)
!2012 = !DISubprogram(name: "sqfs_dentry_name", scope: !159, file: !159, line: 88, type: !2013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!298, !157}
!2015 = !DISubprogram(name: "sqfs_dentry_next_offset", scope: !159, file: !159, line: 78, type: !2016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!172, !157}
!2018 = !DISubprogram(name: "fuse_reply_buf", scope: !147, file: !147, line: 1419, type: !2019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!51, !354, !298, !53}
!2021 = !DISubprogram(name: "fuse_add_direntry", scope: !147, file: !147, line: 1559, type: !1989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2022 = !DISubprogram(name: "sqfs_dir_lookup", scope: !159, file: !159, line: 67, type: !2023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!133, !1956, !235, !298, !53, !157, !2025}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!2026 = !DISubprogram(name: "strlen", scope: !2027, file: !2027, line: 407, type: !2028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2027 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!55, !298}
!2030 = !DISubprogram(name: "sqfs_inode_get", scope: !47, file: !47, line: 119, type: !2031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!133, !1956, !235, !148}
!2033 = !DISubprogram(name: "sqfs_dentry_inode", scope: !159, file: !159, line: 81, type: !2034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!148, !157}
!2036 = !DISubprogram(name: "fuse_reply_entry", scope: !147, file: !147, line: 1333, type: !2037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!51, !354, !2039}
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1062)
!2041 = !DISubprogram(name: "fuse_req_userdata", scope: !147, file: !147, line: 1846, type: !2042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!30, !354}
!2044 = !DISubprogram(name: "sqfs_ll_inode", scope: !36, file: !36, line: 61, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!133, !40, !235, !146}
!2047 = !DISubprogram(name: "sqfs_read_range", scope: !2048, file: !2048, line: 60, type: !2049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2048 = !DIFile(filename: "./file.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "7cfe091a076821d4c8b91abc6f830dc0")
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!133, !1956, !235, !172, !2051, !30}
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!2052 = !DISubprogram(name: "sqfs_readlink", scope: !47, file: !47, line: 126, type: !2053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!133, !1956, !235, !169, !134}
!2055 = !DISubprogram(name: "fuse_reply_readlink", scope: !147, file: !147, line: 1379, type: !2056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!51, !354, !298}
!2058 = !DISubprogram(name: "sqfs_listxattr", scope: !293, file: !293, line: 40, type: !2059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!51, !1956, !235, !169, !134}
!2061 = !DISubprogram(name: "fuse_reply_xattr", scope: !147, file: !147, line: 1502, type: !2062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!51, !354, !53}
!2064 = !DISubprogram(name: "sqfs_xattr_lookup", scope: !2065, file: !2065, line: 71, type: !2066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2065 = !DIFile(filename: "./xattr.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "2652ffaf0089d510e4218fa81ca86e10")
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!133, !1956, !235, !298, !30, !134}
!2068 = !DISubprogram(name: "sqfs_enoattr", scope: !2069, file: !2069, line: 36, type: !2070, spFlags: DISPFlagOptimized)
!2069 = !DIFile(filename: "./nonstd.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "21893c25e20e1b62e554e965202c30e8")
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!51}
!2072 = !DISubprogram(name: "fuse_reply_none", scope: !147, file: !147, line: 1318, type: !2073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{null, !354}
!2075 = !DISubprogram(name: "sqfs_statfs", scope: !293, file: !293, line: 57, type: !2076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!51, !1956, !2078}
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!2079 = !DISubprogram(name: "fuse_reply_statfs", scope: !147, file: !147, line: 1490, type: !2080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!51, !354, !2082}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1604)
!2084 = !DISubprogram(name: "perror", scope: !2085, file: !2085, line: 804, type: !2086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2085 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !298}
!2088 = !DISubprogram(name: "sqfs_open_image", scope: !2089, file: !2089, line: 39, type: !2090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2089 = !DIFile(filename: "./util.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "c39395eff9c1f0cb17cf4ce0d4e1edb4")
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!133, !1956, !298, !53}
!2092 = !DISubprogram(name: "sqfs_ll_init", scope: !36, file: !36, line: 56, type: !2093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!133, !40}
!2095 = !DISubprogram(name: "fprintf", scope: !2085, file: !2085, line: 350, type: !2096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!51, !2098, !2149, null}
!2098 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2099)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2101, line: 7, baseType: !2102)
!2101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2103, line: 49, size: 1728, elements: !2104)
!2103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2104 = !{!2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2120, !2122, !2123, !2124, !2125, !2126, !2128, !2130, !2133, !2135, !2138, !2141, !2142, !2143, !2144, !2145}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2102, file: !2103, line: 51, baseType: !51, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2102, file: !2103, line: 54, baseType: !169, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2102, file: !2103, line: 55, baseType: !169, size: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2102, file: !2103, line: 56, baseType: !169, size: 64, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2102, file: !2103, line: 57, baseType: !169, size: 64, offset: 256)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2102, file: !2103, line: 58, baseType: !169, size: 64, offset: 320)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2102, file: !2103, line: 59, baseType: !169, size: 64, offset: 384)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2102, file: !2103, line: 60, baseType: !169, size: 64, offset: 448)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2102, file: !2103, line: 61, baseType: !169, size: 64, offset: 512)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2102, file: !2103, line: 64, baseType: !169, size: 64, offset: 576)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2102, file: !2103, line: 65, baseType: !169, size: 64, offset: 640)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2102, file: !2103, line: 66, baseType: !169, size: 64, offset: 704)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2102, file: !2103, line: 68, baseType: !2118, size: 64, offset: 768)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2103, line: 36, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2102, file: !2103, line: 70, baseType: !2121, size: 64, offset: 832)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2102, file: !2103, line: 72, baseType: !51, size: 32, offset: 896)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2102, file: !2103, line: 73, baseType: !51, size: 32, offset: 928)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2102, file: !2103, line: 74, baseType: !175, size: 64, offset: 960)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2102, file: !2103, line: 77, baseType: !72, size: 16, offset: 1024)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2102, file: !2103, line: 78, baseType: !2127, size: 8, offset: 1040)
!2127 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2102, file: !2103, line: 79, baseType: !2129, size: 8, offset: 1048)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !543)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2102, file: !2103, line: 81, baseType: !2131, size: 64, offset: 1088)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2103, line: 43, baseType: null)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2102, file: !2103, line: 89, baseType: !2134, size: 64, offset: 1152)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !100, line: 153, baseType: !33)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2102, file: !2103, line: 91, baseType: !2136, size: 64, offset: 1216)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2103, line: 37, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2102, file: !2103, line: 92, baseType: !2139, size: 64, offset: 1280)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2103, line: 38, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2102, file: !2103, line: 93, baseType: !2121, size: 64, offset: 1344)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2102, file: !2103, line: 94, baseType: !30, size: 64, offset: 1408)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2102, file: !2103, line: 95, baseType: !53, size: 64, offset: 1472)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2102, file: !2103, line: 96, baseType: !51, size: 32, offset: 1536)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2102, file: !2103, line: 98, baseType: !2146, size: 160, offset: 1568)
!2146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !2147)
!2147 = !{!2148}
!2148 = !DISubrange(count: 20)
!2149 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !298)
!2150 = !DISubprogram(name: "sqfs_destroy", scope: !47, file: !47, line: 90, type: !2151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{null, !1956}
!2153 = !DISubprogram(name: "fuse_session_new", scope: !147, file: !147, line: 2018, type: !2154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!265, !1656, !2156, !53, !30}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!2158 = !DISubprogram(name: "fuse_session_mount", scope: !147, file: !147, line: 2060, type: !2159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!51, !265, !298}
!2161 = !DISubprogram(name: "fuse_session_destroy", scope: !147, file: !147, line: 2172, type: !1918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2162 = distinct !DISubprogram(name: "alarm_tick", scope: !2, file: !2, line: 487, type: !1794, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !2163)
!2163 = !{!2164}
!2164 = !DILocalVariable(name: "sig", arg: 1, scope: !2162, file: !2, line: 487, type: !51)
!2165 = !DILocation(line: 487, column: 28, scope: !2162)
!2166 = !DILocation(line: 488, column: 7, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 488, column: 6)
!2168 = !DILocation(line: 488, column: 21, scope: !2167)
!2169 = !DILocation(line: 488, column: 24, scope: !2167)
!2170 = !DILocation(line: 488, column: 42, scope: !2167)
!2171 = !DILocation(line: 488, column: 6, scope: !2162)
!2172 = !DILocation(line: 489, column: 3, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2167, file: !2, line: 488, column: 48)
!2174 = !DILocation(line: 492, column: 6, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 492, column: 6)
!2176 = !DILocation(line: 492, column: 20, scope: !2175)
!2177 = !DILocation(line: 492, column: 25, scope: !2175)
!2178 = !DILocation(line: 492, column: 28, scope: !2175)
!2179 = !DILocation(line: 492, column: 41, scope: !2175)
!2180 = !DILocation(line: 492, column: 39, scope: !2175)
!2181 = !DILocation(line: 492, column: 55, scope: !2175)
!2182 = !DILocation(line: 492, column: 53, scope: !2175)
!2183 = !DILocation(line: 492, column: 6, scope: !2162)
!2184 = !DILocation(line: 495, column: 8, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2175, file: !2, line: 492, column: 74)
!2186 = !DILocation(line: 495, column: 3, scope: !2185)
!2187 = !DILocation(line: 496, column: 3, scope: !2185)
!2188 = !DILocation(line: 498, column: 2, scope: !2162)
!2189 = !DILocation(line: 499, column: 1, scope: !2162)
!2190 = !DISubprogram(name: "sigemptyset", scope: !1792, file: !1792, line: 199, type: !2191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!51, !2193}
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2195, line: 7, baseType: !1874)
!2195 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "c2b978aaf49d5c0e2b1e9c2e1b7f7848")
!2196 = !DISubprogram(name: "sigaction", scope: !1792, file: !1792, line: 243, type: !2197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!51, !51, !2199, !2202}
!2199 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2200)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1784)
!2202 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2203)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!2204 = !DISubprogram(name: "alarm", scope: !2205, file: !2205, line: 452, type: !2206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2205 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!15, !15}
!2208 = !DISubprogram(name: "kill", scope: !1792, file: !1792, line: 112, type: !2209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!51, !503, !51}
!2211 = !DISubprogram(name: "getpid", scope: !2205, file: !2205, line: 650, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!503}
!2214 = distinct !DISubprogram(name: "teardown_idle_timeout", scope: !2, file: !2, line: 520, type: !1885, scopeLine: 520, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11)
!2215 = !DILocation(line: 521, column: 2, scope: !2214)
!2216 = !DILocation(line: 522, column: 16, scope: !2214)
!2217 = !DILocation(line: 523, column: 1, scope: !2214)
!2218 = !DISubprogram(name: "fuse_session_unmount", scope: !147, file: !147, line: 2165, type: !1918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

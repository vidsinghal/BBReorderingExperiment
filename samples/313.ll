; ModuleID = 'samples/313.bc'
source_filename = "ftl_p2l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spdk_ftl_dev = type { %struct.spdk_ftl_conf, %struct.ftl_layout, ptr, ptr, ptr, %struct.anon.52, ptr, i64, i8, i8, i8, i8, ptr, %struct.ftl_nv_cache, ptr, ptr, ptr, %struct.ftl_trace, %struct.ftl_stats, ptr, i64, ptr, %struct.anon.60, %struct.anon.61, i64, ptr, %struct.anon.62, i64, ptr, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.63, %struct.anon.64, %struct.anon.65, ptr, ptr, i64, i8, %struct.ftl_writer, %struct.ftl_writer, i32, i8, %struct.anon.68 }
%struct.spdk_ftl_conf = type { ptr, %struct.spdk_uuid, i64, i64, ptr, i64, [4 x i64], i32, %struct.anon.47, [4 x i8], ptr, ptr, i8, [7 x i8], i64 }
%struct.spdk_uuid = type { %union.anon.46 }
%union.anon.46 = type { [16 x i8] }
%struct.anon.47 = type { i32, i32 }
%struct.ftl_layout = type { %struct.anon.48, %struct.anon.49, %struct.anon.50, %struct.anon.51, [16 x %struct.ftl_layout_region], [16 x ptr] }
%struct.anon.48 = type { i64, i64, i64 }
%struct.anon.49 = type { i64, i64, i64, i64, i64 }
%struct.anon.50 = type { i64, i64, i64 }
%struct.anon.51 = type { i64 }
%struct.ftl_layout_region = type { ptr, i32, i32, %struct.ftl_layout_region_descriptor, %struct.ftl_layout_region_descriptor, i64, i64, i64, ptr, ptr }
%struct.ftl_layout_region_descriptor = type { i64, i64, i64, ptr }
%struct.anon.52 = type { ptr, ptr }
%struct.ftl_nv_cache = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, i64, i64, ptr, %struct.anon.53, i64, %struct.anon.54, i64, %struct.anon.55, i64, %struct.anon.56, i64, %struct.anon.57, i64, %struct.anon.58, i64, i64, ptr, i64, i64, double, %struct.compaction_bw_stats, %struct.anon.59 }
%struct.anon.53 = type { ptr, ptr }
%struct.anon.54 = type { ptr, ptr }
%struct.anon.55 = type { ptr, ptr }
%struct.anon.56 = type { ptr, ptr }
%struct.anon.57 = type { ptr, ptr }
%struct.anon.58 = type { ptr, ptr }
%struct.compaction_bw_stats = type { [16 x double], i64, i64, double }
%struct.anon.59 = type { i64, i64, i64, i64 }
%struct.ftl_trace = type { i64 }
%struct.ftl_stats = type { [4 x i64], i64, [6 x %struct.ftl_stats_entry] }
%struct.ftl_stats_entry = type { %struct.ftl_stats_group, %struct.ftl_stats_group }
%struct.ftl_stats_group = type { i64, i64, %struct.ftl_stats_error }
%struct.ftl_stats_error = type { i64, i64, i64 }
%struct.anon.60 = type { ptr, ptr }
%struct.anon.61 = type { ptr, ptr }
%struct.anon.62 = type { ptr, ptr }
%struct.anon.63 = type { ptr, ptr }
%struct.anon.64 = type { ptr, ptr }
%struct.anon.65 = type { ptr, ptr }
%struct.ftl_writer = type { ptr, %struct.anon.66, ptr, i64, ptr, %struct.anon.67, i32, i8, i32, i64 }
%struct.anon.66 = type { ptr, ptr }
%struct.anon.67 = type { ptr, ptr }
%struct.anon.68 = type { %struct.anon.69, %struct.anon.70 }
%struct.anon.69 = type { ptr, ptr }
%struct.anon.70 = type { ptr, ptr }
%struct.ftl_p2l_ckpt = type { %struct.anon.71, ptr, ptr, ptr, i64 }
%struct.anon.71 = type { ptr, ptr }
%struct.ftl_rq = type { ptr, %struct.anon.72, i64, ptr, i64, i64, ptr, ptr, i8, %struct.anon.73, %struct.anon.74, %struct.anon.75, %struct.ftl_md_io_entry_ctx, [0 x %struct.ftl_rq_entry] }
%struct.anon.72 = type { ptr, ptr }
%struct.anon.73 = type { ptr, ptr, ptr, i8 }
%struct.anon.74 = type { i32, i32, i32, i32, i32 }
%struct.anon.75 = type { i64, ptr, %struct.spdk_bdev_io_wait_entry }
%struct.spdk_bdev_io_wait_entry = type { ptr, ptr, ptr, %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr }
%struct.ftl_md_io_entry_ctx = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr, %struct.spdk_bdev_io_wait_entry }
%struct.ftl_rq_entry = type { ptr, ptr, i64, i64, i64, i64, %struct.anon.77, %struct.anon.78, %struct.ftl_l2p_pin_ctx, %struct.anon.80 }
%struct.anon.77 = type { ptr }
%struct.anon.78 = type { ptr }
%struct.ftl_l2p_pin_ctx = type { i64, i64, ptr, ptr, %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.anon.80 = type { i64, i64, %struct.spdk_bdev_io_wait_entry }
%struct.ftl_band = type { ptr, ptr, i64, %struct.anon.81, %struct.ftl_p2l_map, i8, i32, i32, i64, i64, %struct.ftl_basic_rq, %struct.anon.88, %struct.ftl_md_io_entry_ctx, ptr }
%struct.anon.81 = type { ptr, ptr, %union.anon.82, i64 }
%union.anon.82 = type { ptr }
%struct.ftl_p2l_map = type { i64, i64, ptr, %union.anon.83, %union.anon.84, ptr }
%union.anon.83 = type { ptr }
%union.anon.84 = type { ptr }
%struct.ftl_basic_rq = type { ptr, %struct.anon.85, i64, ptr, i8, %struct.anon.86, %struct.anon.87 }
%struct.anon.85 = type { ptr, ptr }
%struct.anon.86 = type { ptr, ptr }
%struct.anon.87 = type { i64, ptr, ptr, %struct.spdk_bdev_io_wait_entry }
%struct.anon.88 = type { ptr, ptr }
%struct.ftl_p2l_ckpt_page = type { [256 x %struct.ftl_p2l_map_entry] }
%struct.ftl_p2l_map_entry = type { i64, i64 }
%union.ftl_md_vss = type { %struct.anon.89 }
%struct.anon.89 = type { [56 x i8], i64 }
%struct.ftl_band_md = type { %struct.anon.93, i32, i32, i32, [4 x i8], i64, i64, i64, i64, i32, [4028 x i8] }
%struct.anon.93 = type { i64, i64 }
%struct.anon.91 = type { i64, i32 }
%struct.ftl_p2l_sync_ctx = type { ptr, i64, i64, i32 }

; Function Attrs: nounwind ssp uwtable
define i32 @ftl_p2l_ckpt_init(ptr noundef %dev) #0 !dbg !153 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %region_type = alloca i32, align 4
  %ckpt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1793, metadata !DIExpression()), !dbg !1796
  call void @llvm.lifetime.start.p0(i64 4, ptr %region_type) #9, !dbg !1797
  tail call void @llvm.dbg.declare(metadata ptr %region_type, metadata !1794, metadata !DIExpression()), !dbg !1798
  call void @llvm.lifetime.start.p0(i64 8, ptr %ckpt) #9, !dbg !1799
  tail call void @llvm.dbg.declare(metadata ptr %ckpt, metadata !1795, metadata !DIExpression()), !dbg !1800
  br label %do.body, !dbg !1801

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1802
  %p2l_ckpt = getelementptr inbounds %struct.spdk_ftl_dev, ptr %0, i32 0, i32 49, !dbg !1802
  %free = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt, i32 0, i32 0, !dbg !1802
  %tqh_first = getelementptr inbounds %struct.anon.69, ptr %free, i32 0, i32 0, !dbg !1802
  store ptr null, ptr %tqh_first, align 8, !dbg !1802
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !1802
  %p2l_ckpt1 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %1, i32 0, i32 49, !dbg !1802
  %free2 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt1, i32 0, i32 0, !dbg !1802
  %tqh_first3 = getelementptr inbounds %struct.anon.69, ptr %free2, i32 0, i32 0, !dbg !1802
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1802
  %p2l_ckpt4 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %2, i32 0, i32 49, !dbg !1802
  %free5 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt4, i32 0, i32 0, !dbg !1802
  %tqh_last = getelementptr inbounds %struct.anon.69, ptr %free5, i32 0, i32 1, !dbg !1802
  store ptr %tqh_first3, ptr %tqh_last, align 8, !dbg !1802
  br label %do.cond, !dbg !1802

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1802

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !1804

do.body6:                                         ; preds = %do.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !1805
  %p2l_ckpt7 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %3, i32 0, i32 49, !dbg !1805
  %inuse = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt7, i32 0, i32 1, !dbg !1805
  %tqh_first8 = getelementptr inbounds %struct.anon.70, ptr %inuse, i32 0, i32 0, !dbg !1805
  store ptr null, ptr %tqh_first8, align 8, !dbg !1805
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !1805
  %p2l_ckpt9 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %4, i32 0, i32 49, !dbg !1805
  %inuse10 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt9, i32 0, i32 1, !dbg !1805
  %tqh_first11 = getelementptr inbounds %struct.anon.70, ptr %inuse10, i32 0, i32 0, !dbg !1805
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !1805
  %p2l_ckpt12 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %5, i32 0, i32 49, !dbg !1805
  %inuse13 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt12, i32 0, i32 1, !dbg !1805
  %tqh_last14 = getelementptr inbounds %struct.anon.70, ptr %inuse13, i32 0, i32 1, !dbg !1805
  store ptr %tqh_first11, ptr %tqh_last14, align 8, !dbg !1805
  br label %do.cond15, !dbg !1805

do.cond15:                                        ; preds = %do.body6
  br label %do.end16, !dbg !1805

do.end16:                                         ; preds = %do.cond15
  store i32 10, ptr %region_type, align 4, !dbg !1807
  br label %for.cond, !dbg !1809

for.cond:                                         ; preds = %for.inc, %do.end16
  %6 = load i32, ptr %region_type, align 4, !dbg !1810
  %cmp = icmp sle i32 %6, 13, !dbg !1812
  br i1 %cmp, label %for.body, label %for.end, !dbg !1813

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !1814
  %8 = load i32, ptr %region_type, align 4, !dbg !1816
  %call = call ptr @ftl_p2l_ckpt_new(ptr noundef %7, i32 noundef %8), !dbg !1817
  store ptr %call, ptr %ckpt, align 8, !dbg !1818
  %9 = load ptr, ptr %ckpt, align 8, !dbg !1819
  %tobool = icmp ne ptr %9, null, !dbg !1819
  br i1 %tobool, label %if.end, label %if.then, !dbg !1821

if.then:                                          ; preds = %for.body
  store i32 -1, ptr %retval, align 4, !dbg !1822
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1822

if.end:                                           ; preds = %for.body
  br label %do.body17, !dbg !1824

do.body17:                                        ; preds = %if.end
  %10 = load ptr, ptr %ckpt, align 8, !dbg !1825
  %link = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %10, i32 0, i32 0, !dbg !1825
  %tqe_next = getelementptr inbounds %struct.anon.71, ptr %link, i32 0, i32 0, !dbg !1825
  store ptr null, ptr %tqe_next, align 8, !dbg !1825
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !1825
  %p2l_ckpt18 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %11, i32 0, i32 49, !dbg !1825
  %free19 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt18, i32 0, i32 0, !dbg !1825
  %tqh_last20 = getelementptr inbounds %struct.anon.69, ptr %free19, i32 0, i32 1, !dbg !1825
  %12 = load ptr, ptr %tqh_last20, align 8, !dbg !1825
  %13 = load ptr, ptr %ckpt, align 8, !dbg !1825
  %link21 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %13, i32 0, i32 0, !dbg !1825
  %tqe_prev = getelementptr inbounds %struct.anon.71, ptr %link21, i32 0, i32 1, !dbg !1825
  store ptr %12, ptr %tqe_prev, align 8, !dbg !1825
  %14 = load ptr, ptr %ckpt, align 8, !dbg !1825
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !1825
  %p2l_ckpt22 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %15, i32 0, i32 49, !dbg !1825
  %free23 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt22, i32 0, i32 0, !dbg !1825
  %tqh_last24 = getelementptr inbounds %struct.anon.69, ptr %free23, i32 0, i32 1, !dbg !1825
  %16 = load ptr, ptr %tqh_last24, align 8, !dbg !1825
  store ptr %14, ptr %16, align 8, !dbg !1825
  %17 = load ptr, ptr %ckpt, align 8, !dbg !1825
  %link25 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %17, i32 0, i32 0, !dbg !1825
  %tqe_next26 = getelementptr inbounds %struct.anon.71, ptr %link25, i32 0, i32 0, !dbg !1825
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !1825
  %p2l_ckpt27 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %18, i32 0, i32 49, !dbg !1825
  %free28 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt27, i32 0, i32 0, !dbg !1825
  %tqh_last29 = getelementptr inbounds %struct.anon.69, ptr %free28, i32 0, i32 1, !dbg !1825
  store ptr %tqe_next26, ptr %tqh_last29, align 8, !dbg !1825
  br label %do.cond30, !dbg !1825

do.cond30:                                        ; preds = %do.body17
  br label %do.end31, !dbg !1825

do.end31:                                         ; preds = %do.cond30
  br label %for.inc, !dbg !1827

for.inc:                                          ; preds = %do.end31
  %19 = load i32, ptr %region_type, align 4, !dbg !1828
  %inc = add nsw i32 %19, 1, !dbg !1828
  store i32 %inc, ptr %region_type, align 4, !dbg !1828
  br label %for.cond, !dbg !1829, !llvm.loop !1830

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1832

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ckpt) #9, !dbg !1833
  call void @llvm.lifetime.end.p0(i64 4, ptr %region_type) #9, !dbg !1833
  %20 = load i32, ptr %retval, align 4, !dbg !1833
  ret i32 %20, !dbg !1833
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @ftl_p2l_ckpt_new(ptr noundef %dev, i32 noundef %region_type) #0 !dbg !1834 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %region_type.addr = alloca i32, align 4
  %ckpt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1838, metadata !DIExpression()), !dbg !1841
  store i32 %region_type, ptr %region_type.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %region_type.addr, metadata !1839, metadata !DIExpression()), !dbg !1842
  call void @llvm.lifetime.start.p0(i64 8, ptr %ckpt) #9, !dbg !1843
  tail call void @llvm.dbg.declare(metadata ptr %ckpt, metadata !1840, metadata !DIExpression()), !dbg !1844
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 48) #10, !dbg !1845
  store ptr %call, ptr %ckpt, align 8, !dbg !1846
  %0 = load ptr, ptr %ckpt, align 8, !dbg !1847
  %tobool = icmp ne ptr %0, null, !dbg !1847
  br i1 %tobool, label %if.end, label %if.then, !dbg !1849

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1850

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !1852
  %layout = getelementptr inbounds %struct.spdk_ftl_dev, ptr %1, i32 0, i32 1, !dbg !1853
  %region = getelementptr inbounds %struct.ftl_layout, ptr %layout, i32 0, i32 4, !dbg !1854
  %2 = load i32, ptr %region_type.addr, align 4, !dbg !1855
  %idxprom = sext i32 %2 to i64, !dbg !1852
  %arrayidx = getelementptr inbounds [16 x %struct.ftl_layout_region], ptr %region, i64 0, i64 %idxprom, !dbg !1852
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !1856
  %layout1 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %3, i32 0, i32 1, !dbg !1857
  %region2 = getelementptr inbounds %struct.ftl_layout, ptr %layout1, i32 0, i32 4, !dbg !1858
  %4 = load i32, ptr %region_type.addr, align 4, !dbg !1859
  %idxprom3 = sext i32 %4 to i64, !dbg !1856
  %arrayidx4 = getelementptr inbounds [16 x %struct.ftl_layout_region], ptr %region2, i64 0, i64 %idxprom3, !dbg !1856
  %num_entries = getelementptr inbounds %struct.ftl_layout_region, ptr %arrayidx4, i32 0, i32 6, !dbg !1860
  %5 = load i64, ptr %num_entries, align 8, !dbg !1860
  %conv = trunc i64 %5 to i32, !dbg !1856
  %call5 = call ptr @ftl_md_vss_buf_alloc(ptr noundef %arrayidx, i32 noundef %conv), !dbg !1861
  %6 = load ptr, ptr %ckpt, align 8, !dbg !1862
  %vss_md_page = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %6, i32 0, i32 1, !dbg !1863
  store ptr %call5, ptr %vss_md_page, align 8, !dbg !1864
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !1865
  %layout6 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %7, i32 0, i32 1, !dbg !1866
  %region7 = getelementptr inbounds %struct.ftl_layout, ptr %layout6, i32 0, i32 4, !dbg !1867
  %8 = load i32, ptr %region_type.addr, align 4, !dbg !1868
  %idxprom8 = sext i32 %8 to i64, !dbg !1865
  %arrayidx9 = getelementptr inbounds [16 x %struct.ftl_layout_region], ptr %region7, i64 0, i64 %idxprom8, !dbg !1865
  %9 = load ptr, ptr %ckpt, align 8, !dbg !1869
  %layout_region = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %9, i32 0, i32 3, !dbg !1870
  store ptr %arrayidx9, ptr %layout_region, align 8, !dbg !1871
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1872
  %layout10 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %10, i32 0, i32 1, !dbg !1873
  %md = getelementptr inbounds %struct.ftl_layout, ptr %layout10, i32 0, i32 5, !dbg !1874
  %11 = load i32, ptr %region_type.addr, align 4, !dbg !1875
  %idxprom11 = sext i32 %11 to i64, !dbg !1872
  %arrayidx12 = getelementptr inbounds [16 x ptr], ptr %md, i64 0, i64 %idxprom11, !dbg !1872
  %12 = load ptr, ptr %arrayidx12, align 8, !dbg !1872
  %13 = load ptr, ptr %ckpt, align 8, !dbg !1876
  %md13 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %13, i32 0, i32 2, !dbg !1877
  store ptr %12, ptr %md13, align 8, !dbg !1878
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !1879
  %call14 = call i64 @ftl_get_num_blocks_in_band(ptr noundef %14), !dbg !1880
  %call15 = call i64 @spdk_divide_round_up(i64 noundef %call14, i64 noundef 256), !dbg !1881
  %15 = load ptr, ptr %ckpt, align 8, !dbg !1882
  %num_pages = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %15, i32 0, i32 4, !dbg !1883
  store i64 %call15, ptr %num_pages, align 8, !dbg !1884
  %16 = load ptr, ptr %ckpt, align 8, !dbg !1885
  %vss_md_page16 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %16, i32 0, i32 1, !dbg !1887
  %17 = load ptr, ptr %vss_md_page16, align 8, !dbg !1887
  %tobool17 = icmp ne ptr %17, null, !dbg !1885
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !1888

if.then18:                                        ; preds = %if.end
  %18 = load ptr, ptr %ckpt, align 8, !dbg !1889
  call void @free(ptr noundef %18) #9, !dbg !1891
  store ptr null, ptr %retval, align 8, !dbg !1892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1892

if.end19:                                         ; preds = %if.end
  %19 = load ptr, ptr %ckpt, align 8, !dbg !1893
  store ptr %19, ptr %retval, align 8, !dbg !1894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1894

cleanup:                                          ; preds = %if.end19, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ckpt) #9, !dbg !1895
  %20 = load ptr, ptr %retval, align 8, !dbg !1895
  ret ptr %20, !dbg !1895
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @ftl_p2l_ckpt_deinit(ptr noundef %dev) #0 !dbg !1896 {
entry:
  %dev.addr = alloca ptr, align 8
  %ckpt = alloca ptr, align 8
  %ckpt_next = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1900, metadata !DIExpression()), !dbg !1903
  call void @llvm.lifetime.start.p0(i64 8, ptr %ckpt) #9, !dbg !1904
  tail call void @llvm.dbg.declare(metadata ptr %ckpt, metadata !1901, metadata !DIExpression()), !dbg !1905
  call void @llvm.lifetime.start.p0(i64 8, ptr %ckpt_next) #9, !dbg !1904
  tail call void @llvm.dbg.declare(metadata ptr %ckpt_next, metadata !1902, metadata !DIExpression()), !dbg !1906
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1907
  %p2l_ckpt = getelementptr inbounds %struct.spdk_ftl_dev, ptr %0, i32 0, i32 49, !dbg !1907
  %free = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt, i32 0, i32 0, !dbg !1907
  %tqh_first = getelementptr inbounds %struct.anon.69, ptr %free, i32 0, i32 0, !dbg !1907
  %1 = load ptr, ptr %tqh_first, align 8, !dbg !1907
  store ptr %1, ptr %ckpt, align 8, !dbg !1907
  br label %for.cond, !dbg !1907

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %ckpt, align 8, !dbg !1909
  %tobool = icmp ne ptr %2, null, !dbg !1909
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1909

land.rhs:                                         ; preds = %for.cond
  %3 = load ptr, ptr %ckpt, align 8, !dbg !1909
  %link = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %3, i32 0, i32 0, !dbg !1909
  %tqe_next = getelementptr inbounds %struct.anon.71, ptr %link, i32 0, i32 0, !dbg !1909
  %4 = load ptr, ptr %tqe_next, align 8, !dbg !1909
  store ptr %4, ptr %ckpt_next, align 8, !dbg !1909
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ true, %land.rhs ], !dbg !1911
  br i1 %5, label %for.body, label %for.end, !dbg !1907

for.body:                                         ; preds = %land.end
  br label %do.body, !dbg !1912

do.body:                                          ; preds = %for.body
  %6 = load ptr, ptr %ckpt, align 8, !dbg !1914
  %link1 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %6, i32 0, i32 0, !dbg !1914
  %tqe_next2 = getelementptr inbounds %struct.anon.71, ptr %link1, i32 0, i32 0, !dbg !1914
  %7 = load ptr, ptr %tqe_next2, align 8, !dbg !1914
  %cmp = icmp ne ptr %7, null, !dbg !1914
  br i1 %cmp, label %if.then, label %if.else, !dbg !1917

if.then:                                          ; preds = %do.body
  %8 = load ptr, ptr %ckpt, align 8, !dbg !1914
  %link3 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %8, i32 0, i32 0, !dbg !1914
  %tqe_prev = getelementptr inbounds %struct.anon.71, ptr %link3, i32 0, i32 1, !dbg !1914
  %9 = load ptr, ptr %tqe_prev, align 8, !dbg !1914
  %10 = load ptr, ptr %ckpt, align 8, !dbg !1914
  %link4 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %10, i32 0, i32 0, !dbg !1914
  %tqe_next5 = getelementptr inbounds %struct.anon.71, ptr %link4, i32 0, i32 0, !dbg !1914
  %11 = load ptr, ptr %tqe_next5, align 8, !dbg !1914
  %link6 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %11, i32 0, i32 0, !dbg !1914
  %tqe_prev7 = getelementptr inbounds %struct.anon.71, ptr %link6, i32 0, i32 1, !dbg !1914
  store ptr %9, ptr %tqe_prev7, align 8, !dbg !1914
  br label %if.end, !dbg !1914

if.else:                                          ; preds = %do.body
  %12 = load ptr, ptr %ckpt, align 8, !dbg !1914
  %link8 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %12, i32 0, i32 0, !dbg !1914
  %tqe_prev9 = getelementptr inbounds %struct.anon.71, ptr %link8, i32 0, i32 1, !dbg !1914
  %13 = load ptr, ptr %tqe_prev9, align 8, !dbg !1914
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !1914
  %p2l_ckpt10 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %14, i32 0, i32 49, !dbg !1914
  %free11 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt10, i32 0, i32 0, !dbg !1914
  %tqh_last = getelementptr inbounds %struct.anon.69, ptr %free11, i32 0, i32 1, !dbg !1914
  store ptr %13, ptr %tqh_last, align 8, !dbg !1914
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load ptr, ptr %ckpt, align 8, !dbg !1917
  %link12 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %15, i32 0, i32 0, !dbg !1917
  %tqe_next13 = getelementptr inbounds %struct.anon.71, ptr %link12, i32 0, i32 0, !dbg !1917
  %16 = load ptr, ptr %tqe_next13, align 8, !dbg !1917
  %17 = load ptr, ptr %ckpt, align 8, !dbg !1917
  %link14 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %17, i32 0, i32 0, !dbg !1917
  %tqe_prev15 = getelementptr inbounds %struct.anon.71, ptr %link14, i32 0, i32 1, !dbg !1917
  %18 = load ptr, ptr %tqe_prev15, align 8, !dbg !1917
  store ptr %16, ptr %18, align 8, !dbg !1917
  br label %do.cond, !dbg !1917

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1917

do.end:                                           ; preds = %do.cond
  %19 = load ptr, ptr %ckpt, align 8, !dbg !1918
  call void @ftl_p2l_ckpt_destroy(ptr noundef %19), !dbg !1919
  br label %for.inc, !dbg !1920

for.inc:                                          ; preds = %do.end
  %20 = load ptr, ptr %ckpt_next, align 8, !dbg !1909
  store ptr %20, ptr %ckpt, align 8, !dbg !1909
  br label %for.cond, !dbg !1909, !llvm.loop !1921

for.end:                                          ; preds = %land.end
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !1923
  %p2l_ckpt16 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %21, i32 0, i32 49, !dbg !1923
  %inuse = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt16, i32 0, i32 1, !dbg !1923
  %tqh_first17 = getelementptr inbounds %struct.anon.70, ptr %inuse, i32 0, i32 0, !dbg !1923
  %22 = load ptr, ptr %tqh_first17, align 8, !dbg !1923
  store ptr %22, ptr %ckpt, align 8, !dbg !1923
  br label %for.cond18, !dbg !1923

for.cond18:                                       ; preds = %for.inc49, %for.end
  %23 = load ptr, ptr %ckpt, align 8, !dbg !1925
  %tobool19 = icmp ne ptr %23, null, !dbg !1925
  br i1 %tobool19, label %land.rhs20, label %land.end23, !dbg !1925

land.rhs20:                                       ; preds = %for.cond18
  %24 = load ptr, ptr %ckpt, align 8, !dbg !1925
  %link21 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %24, i32 0, i32 0, !dbg !1925
  %tqe_next22 = getelementptr inbounds %struct.anon.71, ptr %link21, i32 0, i32 0, !dbg !1925
  %25 = load ptr, ptr %tqe_next22, align 8, !dbg !1925
  store ptr %25, ptr %ckpt_next, align 8, !dbg !1925
  br label %land.end23

land.end23:                                       ; preds = %land.rhs20, %for.cond18
  %26 = phi i1 [ false, %for.cond18 ], [ true, %land.rhs20 ], !dbg !1927
  br i1 %26, label %for.body24, label %for.end50, !dbg !1923

for.body24:                                       ; preds = %land.end23
  br label %do.body25, !dbg !1928

do.body25:                                        ; preds = %for.body24
  %27 = load ptr, ptr %ckpt, align 8, !dbg !1930
  %link26 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %27, i32 0, i32 0, !dbg !1930
  %tqe_next27 = getelementptr inbounds %struct.anon.71, ptr %link26, i32 0, i32 0, !dbg !1930
  %28 = load ptr, ptr %tqe_next27, align 8, !dbg !1930
  %cmp28 = icmp ne ptr %28, null, !dbg !1930
  br i1 %cmp28, label %if.then29, label %if.else36, !dbg !1933

if.then29:                                        ; preds = %do.body25
  %29 = load ptr, ptr %ckpt, align 8, !dbg !1930
  %link30 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %29, i32 0, i32 0, !dbg !1930
  %tqe_prev31 = getelementptr inbounds %struct.anon.71, ptr %link30, i32 0, i32 1, !dbg !1930
  %30 = load ptr, ptr %tqe_prev31, align 8, !dbg !1930
  %31 = load ptr, ptr %ckpt, align 8, !dbg !1930
  %link32 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %31, i32 0, i32 0, !dbg !1930
  %tqe_next33 = getelementptr inbounds %struct.anon.71, ptr %link32, i32 0, i32 0, !dbg !1930
  %32 = load ptr, ptr %tqe_next33, align 8, !dbg !1930
  %link34 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %32, i32 0, i32 0, !dbg !1930
  %tqe_prev35 = getelementptr inbounds %struct.anon.71, ptr %link34, i32 0, i32 1, !dbg !1930
  store ptr %30, ptr %tqe_prev35, align 8, !dbg !1930
  br label %if.end42, !dbg !1930

if.else36:                                        ; preds = %do.body25
  %33 = load ptr, ptr %ckpt, align 8, !dbg !1930
  %link37 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %33, i32 0, i32 0, !dbg !1930
  %tqe_prev38 = getelementptr inbounds %struct.anon.71, ptr %link37, i32 0, i32 1, !dbg !1930
  %34 = load ptr, ptr %tqe_prev38, align 8, !dbg !1930
  %35 = load ptr, ptr %dev.addr, align 8, !dbg !1930
  %p2l_ckpt39 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %35, i32 0, i32 49, !dbg !1930
  %inuse40 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt39, i32 0, i32 1, !dbg !1930
  %tqh_last41 = getelementptr inbounds %struct.anon.70, ptr %inuse40, i32 0, i32 1, !dbg !1930
  store ptr %34, ptr %tqh_last41, align 8, !dbg !1930
  br label %if.end42

if.end42:                                         ; preds = %if.else36, %if.then29
  %36 = load ptr, ptr %ckpt, align 8, !dbg !1933
  %link43 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %36, i32 0, i32 0, !dbg !1933
  %tqe_next44 = getelementptr inbounds %struct.anon.71, ptr %link43, i32 0, i32 0, !dbg !1933
  %37 = load ptr, ptr %tqe_next44, align 8, !dbg !1933
  %38 = load ptr, ptr %ckpt, align 8, !dbg !1933
  %link45 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %38, i32 0, i32 0, !dbg !1933
  %tqe_prev46 = getelementptr inbounds %struct.anon.71, ptr %link45, i32 0, i32 1, !dbg !1933
  %39 = load ptr, ptr %tqe_prev46, align 8, !dbg !1933
  store ptr %37, ptr %39, align 8, !dbg !1933
  br label %do.cond47, !dbg !1933

do.cond47:                                        ; preds = %if.end42
  br label %do.end48, !dbg !1933

do.end48:                                         ; preds = %do.cond47
  %40 = load ptr, ptr %ckpt, align 8, !dbg !1934
  call void @ftl_p2l_ckpt_destroy(ptr noundef %40), !dbg !1935
  br label %for.inc49, !dbg !1936

for.inc49:                                        ; preds = %do.end48
  %41 = load ptr, ptr %ckpt_next, align 8, !dbg !1925
  store ptr %41, ptr %ckpt, align 8, !dbg !1925
  br label %for.cond18, !dbg !1925, !llvm.loop !1937

for.end50:                                        ; preds = %land.end23
  call void @llvm.lifetime.end.p0(i64 8, ptr %ckpt_next) #9, !dbg !1939
  call void @llvm.lifetime.end.p0(i64 8, ptr %ckpt) #9, !dbg !1939
  ret void, !dbg !1939
}

; Function Attrs: nounwind ssp uwtable
define internal void @ftl_p2l_ckpt_destroy(ptr noundef %ckpt) #0 !dbg !1940 {
entry:
  %ckpt.addr = alloca ptr, align 8
  store ptr %ckpt, ptr %ckpt.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ckpt.addr, metadata !1944, metadata !DIExpression()), !dbg !1945
  %0 = load ptr, ptr %ckpt.addr, align 8, !dbg !1946
  %vss_md_page = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %0, i32 0, i32 1, !dbg !1947
  %1 = load ptr, ptr %vss_md_page, align 8, !dbg !1947
  call void @spdk_dma_free(ptr noundef %1), !dbg !1948
  %2 = load ptr, ptr %ckpt.addr, align 8, !dbg !1949
  call void @free(ptr noundef %2) #9, !dbg !1950
  ret void, !dbg !1951
}

; Function Attrs: nounwind ssp uwtable
define ptr @ftl_p2l_ckpt_acquire(ptr noundef %dev) #0 !dbg !1952 {
entry:
  %dev.addr = alloca ptr, align 8
  %ckpt = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1956, metadata !DIExpression()), !dbg !1958
  call void @llvm.lifetime.start.p0(i64 8, ptr %ckpt) #9, !dbg !1959
  tail call void @llvm.dbg.declare(metadata ptr %ckpt, metadata !1957, metadata !DIExpression()), !dbg !1960
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1961
  %p2l_ckpt = getelementptr inbounds %struct.spdk_ftl_dev, ptr %0, i32 0, i32 49, !dbg !1961
  %free = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt, i32 0, i32 0, !dbg !1961
  %tqh_first = getelementptr inbounds %struct.anon.69, ptr %free, i32 0, i32 0, !dbg !1961
  %1 = load ptr, ptr %tqh_first, align 8, !dbg !1961
  store ptr %1, ptr %ckpt, align 8, !dbg !1962
  br label %do.body, !dbg !1963

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %ckpt, align 8, !dbg !1964
  %link = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %2, i32 0, i32 0, !dbg !1964
  %tqe_next = getelementptr inbounds %struct.anon.71, ptr %link, i32 0, i32 0, !dbg !1964
  %3 = load ptr, ptr %tqe_next, align 8, !dbg !1964
  %cmp = icmp ne ptr %3, null, !dbg !1964
  br i1 %cmp, label %if.then, label %if.else, !dbg !1967

if.then:                                          ; preds = %do.body
  %4 = load ptr, ptr %ckpt, align 8, !dbg !1964
  %link1 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %4, i32 0, i32 0, !dbg !1964
  %tqe_prev = getelementptr inbounds %struct.anon.71, ptr %link1, i32 0, i32 1, !dbg !1964
  %5 = load ptr, ptr %tqe_prev, align 8, !dbg !1964
  %6 = load ptr, ptr %ckpt, align 8, !dbg !1964
  %link2 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %6, i32 0, i32 0, !dbg !1964
  %tqe_next3 = getelementptr inbounds %struct.anon.71, ptr %link2, i32 0, i32 0, !dbg !1964
  %7 = load ptr, ptr %tqe_next3, align 8, !dbg !1964
  %link4 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %7, i32 0, i32 0, !dbg !1964
  %tqe_prev5 = getelementptr inbounds %struct.anon.71, ptr %link4, i32 0, i32 1, !dbg !1964
  store ptr %5, ptr %tqe_prev5, align 8, !dbg !1964
  br label %if.end, !dbg !1964

if.else:                                          ; preds = %do.body
  %8 = load ptr, ptr %ckpt, align 8, !dbg !1964
  %link6 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %8, i32 0, i32 0, !dbg !1964
  %tqe_prev7 = getelementptr inbounds %struct.anon.71, ptr %link6, i32 0, i32 1, !dbg !1964
  %9 = load ptr, ptr %tqe_prev7, align 8, !dbg !1964
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1964
  %p2l_ckpt8 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %10, i32 0, i32 49, !dbg !1964
  %free9 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt8, i32 0, i32 0, !dbg !1964
  %tqh_last = getelementptr inbounds %struct.anon.69, ptr %free9, i32 0, i32 1, !dbg !1964
  store ptr %9, ptr %tqh_last, align 8, !dbg !1964
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %ckpt, align 8, !dbg !1967
  %link10 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %11, i32 0, i32 0, !dbg !1967
  %tqe_next11 = getelementptr inbounds %struct.anon.71, ptr %link10, i32 0, i32 0, !dbg !1967
  %12 = load ptr, ptr %tqe_next11, align 8, !dbg !1967
  %13 = load ptr, ptr %ckpt, align 8, !dbg !1967
  %link12 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %13, i32 0, i32 0, !dbg !1967
  %tqe_prev13 = getelementptr inbounds %struct.anon.71, ptr %link12, i32 0, i32 1, !dbg !1967
  %14 = load ptr, ptr %tqe_prev13, align 8, !dbg !1967
  store ptr %12, ptr %14, align 8, !dbg !1967
  br label %do.cond, !dbg !1967

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1967

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !1968

do.body14:                                        ; preds = %do.end
  %15 = load ptr, ptr %ckpt, align 8, !dbg !1969
  %link15 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %15, i32 0, i32 0, !dbg !1969
  %tqe_next16 = getelementptr inbounds %struct.anon.71, ptr %link15, i32 0, i32 0, !dbg !1969
  store ptr null, ptr %tqe_next16, align 8, !dbg !1969
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !1969
  %p2l_ckpt17 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %16, i32 0, i32 49, !dbg !1969
  %inuse = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt17, i32 0, i32 1, !dbg !1969
  %tqh_last18 = getelementptr inbounds %struct.anon.70, ptr %inuse, i32 0, i32 1, !dbg !1969
  %17 = load ptr, ptr %tqh_last18, align 8, !dbg !1969
  %18 = load ptr, ptr %ckpt, align 8, !dbg !1969
  %link19 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %18, i32 0, i32 0, !dbg !1969
  %tqe_prev20 = getelementptr inbounds %struct.anon.71, ptr %link19, i32 0, i32 1, !dbg !1969
  store ptr %17, ptr %tqe_prev20, align 8, !dbg !1969
  %19 = load ptr, ptr %ckpt, align 8, !dbg !1969
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !1969
  %p2l_ckpt21 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %20, i32 0, i32 49, !dbg !1969
  %inuse22 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt21, i32 0, i32 1, !dbg !1969
  %tqh_last23 = getelementptr inbounds %struct.anon.70, ptr %inuse22, i32 0, i32 1, !dbg !1969
  %21 = load ptr, ptr %tqh_last23, align 8, !dbg !1969
  store ptr %19, ptr %21, align 8, !dbg !1969
  %22 = load ptr, ptr %ckpt, align 8, !dbg !1969
  %link24 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %22, i32 0, i32 0, !dbg !1969
  %tqe_next25 = getelementptr inbounds %struct.anon.71, ptr %link24, i32 0, i32 0, !dbg !1969
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !1969
  %p2l_ckpt26 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %23, i32 0, i32 49, !dbg !1969
  %inuse27 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt26, i32 0, i32 1, !dbg !1969
  %tqh_last28 = getelementptr inbounds %struct.anon.70, ptr %inuse27, i32 0, i32 1, !dbg !1969
  store ptr %tqe_next25, ptr %tqh_last28, align 8, !dbg !1969
  br label %do.cond29, !dbg !1969

do.cond29:                                        ; preds = %do.body14
  br label %do.end30, !dbg !1969

do.end30:                                         ; preds = %do.cond29
  %24 = load ptr, ptr %ckpt, align 8, !dbg !1971
  call void @llvm.lifetime.end.p0(i64 8, ptr %ckpt) #9, !dbg !1972
  ret ptr %24, !dbg !1973
}

; Function Attrs: nounwind ssp uwtable
define void @ftl_p2l_ckpt_release(ptr noundef %dev, ptr noundef %ckpt) #0 !dbg !1974 {
entry:
  %dev.addr = alloca ptr, align 8
  %ckpt.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1978, metadata !DIExpression()), !dbg !1980
  store ptr %ckpt, ptr %ckpt.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ckpt.addr, metadata !1979, metadata !DIExpression()), !dbg !1981
  br label %do.body, !dbg !1982

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %ckpt.addr, align 8, !dbg !1983
  %link = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %0, i32 0, i32 0, !dbg !1983
  %tqe_next = getelementptr inbounds %struct.anon.71, ptr %link, i32 0, i32 0, !dbg !1983
  %1 = load ptr, ptr %tqe_next, align 8, !dbg !1983
  %cmp = icmp ne ptr %1, null, !dbg !1983
  br i1 %cmp, label %if.then, label %if.else, !dbg !1986

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr %ckpt.addr, align 8, !dbg !1983
  %link1 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %2, i32 0, i32 0, !dbg !1983
  %tqe_prev = getelementptr inbounds %struct.anon.71, ptr %link1, i32 0, i32 1, !dbg !1983
  %3 = load ptr, ptr %tqe_prev, align 8, !dbg !1983
  %4 = load ptr, ptr %ckpt.addr, align 8, !dbg !1983
  %link2 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %4, i32 0, i32 0, !dbg !1983
  %tqe_next3 = getelementptr inbounds %struct.anon.71, ptr %link2, i32 0, i32 0, !dbg !1983
  %5 = load ptr, ptr %tqe_next3, align 8, !dbg !1983
  %link4 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %5, i32 0, i32 0, !dbg !1983
  %tqe_prev5 = getelementptr inbounds %struct.anon.71, ptr %link4, i32 0, i32 1, !dbg !1983
  store ptr %3, ptr %tqe_prev5, align 8, !dbg !1983
  br label %if.end, !dbg !1983

if.else:                                          ; preds = %do.body
  %6 = load ptr, ptr %ckpt.addr, align 8, !dbg !1983
  %link6 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %6, i32 0, i32 0, !dbg !1983
  %tqe_prev7 = getelementptr inbounds %struct.anon.71, ptr %link6, i32 0, i32 1, !dbg !1983
  %7 = load ptr, ptr %tqe_prev7, align 8, !dbg !1983
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !1983
  %p2l_ckpt = getelementptr inbounds %struct.spdk_ftl_dev, ptr %8, i32 0, i32 49, !dbg !1983
  %inuse = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt, i32 0, i32 1, !dbg !1983
  %tqh_last = getelementptr inbounds %struct.anon.70, ptr %inuse, i32 0, i32 1, !dbg !1983
  store ptr %7, ptr %tqh_last, align 8, !dbg !1983
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %ckpt.addr, align 8, !dbg !1986
  %link8 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %9, i32 0, i32 0, !dbg !1986
  %tqe_next9 = getelementptr inbounds %struct.anon.71, ptr %link8, i32 0, i32 0, !dbg !1986
  %10 = load ptr, ptr %tqe_next9, align 8, !dbg !1986
  %11 = load ptr, ptr %ckpt.addr, align 8, !dbg !1986
  %link10 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %11, i32 0, i32 0, !dbg !1986
  %tqe_prev11 = getelementptr inbounds %struct.anon.71, ptr %link10, i32 0, i32 1, !dbg !1986
  %12 = load ptr, ptr %tqe_prev11, align 8, !dbg !1986
  store ptr %10, ptr %12, align 8, !dbg !1986
  br label %do.end, !dbg !1986

do.end:                                           ; preds = %if.end
  br label %do.body12, !dbg !1987

do.body12:                                        ; preds = %do.end
  %13 = load ptr, ptr %ckpt.addr, align 8, !dbg !1988
  %link13 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %13, i32 0, i32 0, !dbg !1988
  %tqe_next14 = getelementptr inbounds %struct.anon.71, ptr %link13, i32 0, i32 0, !dbg !1988
  store ptr null, ptr %tqe_next14, align 8, !dbg !1988
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !1988
  %p2l_ckpt15 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %14, i32 0, i32 49, !dbg !1988
  %free = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt15, i32 0, i32 0, !dbg !1988
  %tqh_last16 = getelementptr inbounds %struct.anon.69, ptr %free, i32 0, i32 1, !dbg !1988
  %15 = load ptr, ptr %tqh_last16, align 8, !dbg !1988
  %16 = load ptr, ptr %ckpt.addr, align 8, !dbg !1988
  %link17 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %16, i32 0, i32 0, !dbg !1988
  %tqe_prev18 = getelementptr inbounds %struct.anon.71, ptr %link17, i32 0, i32 1, !dbg !1988
  store ptr %15, ptr %tqe_prev18, align 8, !dbg !1988
  %17 = load ptr, ptr %ckpt.addr, align 8, !dbg !1988
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !1988
  %p2l_ckpt19 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %18, i32 0, i32 49, !dbg !1988
  %free20 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt19, i32 0, i32 0, !dbg !1988
  %tqh_last21 = getelementptr inbounds %struct.anon.69, ptr %free20, i32 0, i32 1, !dbg !1988
  %19 = load ptr, ptr %tqh_last21, align 8, !dbg !1988
  store ptr %17, ptr %19, align 8, !dbg !1988
  %20 = load ptr, ptr %ckpt.addr, align 8, !dbg !1988
  %link22 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %20, i32 0, i32 0, !dbg !1988
  %tqe_next23 = getelementptr inbounds %struct.anon.71, ptr %link22, i32 0, i32 0, !dbg !1988
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !1988
  %p2l_ckpt24 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %21, i32 0, i32 49, !dbg !1988
  %free25 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt24, i32 0, i32 0, !dbg !1988
  %tqh_last26 = getelementptr inbounds %struct.anon.69, ptr %free25, i32 0, i32 1, !dbg !1988
  store ptr %tqe_next23, ptr %tqh_last26, align 8, !dbg !1988
  br label %do.end27, !dbg !1988

do.end27:                                         ; preds = %do.body12
  ret void, !dbg !1990
}

; Function Attrs: nounwind ssp uwtable
define void @ftl_p2l_ckpt_issue(ptr noundef %rq) #0 !dbg !1991 {
entry:
  %rq.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %addr = alloca i64, align 8
  %ckpt = alloca ptr, align 8
  %map_page = alloca ptr, align 8
  %md_page = alloca ptr, align 8
  %band = alloca ptr, align 8
  %band_offs = alloca i64, align 8
  %p2l_map_page_no = alloca i64, align 8
  %i = alloca i64, align 8
  store ptr %rq, ptr %rq.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !1993, metadata !DIExpression()), !dbg !2004
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #9, !dbg !2005
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !1994, metadata !DIExpression()), !dbg !2006
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !2007
  %entries = getelementptr inbounds %struct.ftl_rq, ptr %0, i32 0, i32 13, !dbg !2008
  %arraydecay = getelementptr inbounds [0 x %struct.ftl_rq_entry], ptr %entries, i64 0, i64 0, !dbg !2007
  store ptr %arraydecay, ptr %iter, align 8, !dbg !2006
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #9, !dbg !2009
  tail call void @llvm.dbg.declare(metadata ptr %addr, metadata !1996, metadata !DIExpression()), !dbg !2010
  %1 = load ptr, ptr %rq.addr, align 8, !dbg !2011
  %io = getelementptr inbounds %struct.ftl_rq, ptr %1, i32 0, i32 11, !dbg !2012
  %addr1 = getelementptr inbounds %struct.anon.75, ptr %io, i32 0, i32 0, !dbg !2013
  %2 = load i64, ptr %addr1, align 8, !dbg !2013
  store i64 %2, ptr %addr, align 8, !dbg !2010
  call void @llvm.lifetime.start.p0(i64 8, ptr %ckpt) #9, !dbg !2014
  tail call void @llvm.dbg.declare(metadata ptr %ckpt, metadata !1997, metadata !DIExpression()), !dbg !2015
  store ptr null, ptr %ckpt, align 8, !dbg !2015
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_page) #9, !dbg !2016
  tail call void @llvm.dbg.declare(metadata ptr %map_page, metadata !1998, metadata !DIExpression()), !dbg !2017
  call void @llvm.lifetime.start.p0(i64 8, ptr %md_page) #9, !dbg !2018
  tail call void @llvm.dbg.declare(metadata ptr %md_page, metadata !1999, metadata !DIExpression()), !dbg !2019
  call void @llvm.lifetime.start.p0(i64 8, ptr %band) #9, !dbg !2020
  tail call void @llvm.dbg.declare(metadata ptr %band, metadata !2000, metadata !DIExpression()), !dbg !2021
  call void @llvm.lifetime.start.p0(i64 8, ptr %band_offs) #9, !dbg !2022
  tail call void @llvm.dbg.declare(metadata ptr %band_offs, metadata !2001, metadata !DIExpression()), !dbg !2023
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2l_map_page_no) #9, !dbg !2022
  tail call void @llvm.dbg.declare(metadata ptr %p2l_map_page_no, metadata !2002, metadata !DIExpression()), !dbg !2024
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !2022
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2003, metadata !DIExpression()), !dbg !2025
  %3 = load ptr, ptr %rq.addr, align 8, !dbg !2026
  %io2 = getelementptr inbounds %struct.ftl_rq, ptr %3, i32 0, i32 11, !dbg !2027
  %band3 = getelementptr inbounds %struct.anon.75, ptr %io2, i32 0, i32 1, !dbg !2028
  %4 = load ptr, ptr %band3, align 8, !dbg !2028
  store ptr %4, ptr %band, align 8, !dbg !2029
  %5 = load ptr, ptr %band, align 8, !dbg !2030
  %p2l_map = getelementptr inbounds %struct.ftl_band, ptr %5, i32 0, i32 4, !dbg !2031
  %p2l_ckpt = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map, i32 0, i32 5, !dbg !2032
  %6 = load ptr, ptr %p2l_ckpt, align 8, !dbg !2032
  store ptr %6, ptr %ckpt, align 8, !dbg !2033
  %7 = load ptr, ptr %band, align 8, !dbg !2034
  %8 = load ptr, ptr %rq.addr, align 8, !dbg !2035
  %io4 = getelementptr inbounds %struct.ftl_rq, ptr %8, i32 0, i32 11, !dbg !2036
  %addr5 = getelementptr inbounds %struct.anon.75, ptr %io4, i32 0, i32 0, !dbg !2037
  %9 = load i64, ptr %addr5, align 8, !dbg !2037
  %call = call i64 @ftl_band_block_offset_from_addr(ptr noundef %7, i64 noundef %9), !dbg !2038
  store i64 %call, ptr %band_offs, align 8, !dbg !2039
  %10 = load i64, ptr %band_offs, align 8, !dbg !2040
  %div = udiv i64 %10, 256, !dbg !2041
  store i64 %div, ptr %p2l_map_page_no, align 8, !dbg !2042
  %11 = load ptr, ptr %band, align 8, !dbg !2043
  %p2l_map6 = getelementptr inbounds %struct.ftl_band, ptr %11, i32 0, i32 4, !dbg !2044
  %12 = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map6, i32 0, i32 3, !dbg !2045
  %13 = load ptr, ptr %12, align 8, !dbg !2045
  %14 = load i64, ptr %p2l_map_page_no, align 8, !dbg !2046
  %add.ptr = getelementptr inbounds %struct.ftl_p2l_ckpt_page, ptr %13, i64 %14, !dbg !2047
  store ptr %add.ptr, ptr %map_page, align 8, !dbg !2048
  %15 = load ptr, ptr %ckpt, align 8, !dbg !2049
  %vss_md_page = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %15, i32 0, i32 1, !dbg !2050
  %16 = load ptr, ptr %vss_md_page, align 8, !dbg !2050
  %17 = load i64, ptr %p2l_map_page_no, align 8, !dbg !2051
  %arrayidx = getelementptr inbounds %union.ftl_md_vss, ptr %16, i64 %17, !dbg !2049
  store ptr %arrayidx, ptr %md_page, align 8, !dbg !2052
  %18 = load ptr, ptr %band, align 8, !dbg !2053
  %md = getelementptr inbounds %struct.ftl_band, ptr %18, i32 0, i32 1, !dbg !2054
  %19 = load ptr, ptr %md, align 8, !dbg !2054
  %seq = getelementptr inbounds %struct.ftl_band_md, ptr %19, i32 0, i32 5, !dbg !2055
  %20 = load i64, ptr %seq, align 1, !dbg !2055
  %21 = load ptr, ptr %md_page, align 8, !dbg !2056
  %seq_id = getelementptr inbounds %struct.anon.91, ptr %21, i32 0, i32 0, !dbg !2057
  store i64 %20, ptr %seq_id, align 8, !dbg !2058
  store i64 0, ptr %i, align 8, !dbg !2059
  br label %for.cond, !dbg !2061

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i64, ptr %i, align 8, !dbg !2062
  %23 = load ptr, ptr %rq.addr, align 8, !dbg !2064
  %num_blocks = getelementptr inbounds %struct.ftl_rq, ptr %23, i32 0, i32 2, !dbg !2065
  %24 = load i64, ptr %num_blocks, align 8, !dbg !2065
  %cmp = icmp ult i64 %22, %24, !dbg !2066
  br i1 %cmp, label %for.body, label %for.end, !dbg !2067

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %iter, align 8, !dbg !2068
  %lba = getelementptr inbounds %struct.ftl_rq_entry, ptr %25, i32 0, i32 3, !dbg !2071
  %26 = load i64, ptr %lba, align 8, !dbg !2071
  %cmp7 = icmp ne i64 %26, -1, !dbg !2072
  br i1 %cmp7, label %if.then, label %if.end, !dbg !2073

if.then:                                          ; preds = %for.body
  %27 = load ptr, ptr %band, align 8, !dbg !2074
  %28 = load ptr, ptr %iter, align 8, !dbg !2076
  %lba8 = getelementptr inbounds %struct.ftl_rq_entry, ptr %28, i32 0, i32 3, !dbg !2077
  %29 = load i64, ptr %lba8, align 8, !dbg !2077
  %30 = load i64, ptr %addr, align 8, !dbg !2078
  %31 = load ptr, ptr %iter, align 8, !dbg !2079
  %seq_id9 = getelementptr inbounds %struct.ftl_rq_entry, ptr %31, i32 0, i32 4, !dbg !2080
  %32 = load i64, ptr %seq_id9, align 8, !dbg !2080
  call void @ftl_band_set_p2l(ptr noundef %27, i64 noundef %29, i64 noundef %30, i64 noundef %32), !dbg !2081
  br label %if.end, !dbg !2082

if.end:                                           ; preds = %if.then, %for.body
  %33 = load ptr, ptr %band, align 8, !dbg !2083
  %34 = load i64, ptr %addr, align 8, !dbg !2084
  %call10 = call i64 @ftl_band_next_addr(ptr noundef %33, i64 noundef %34, i64 noundef 1), !dbg !2085
  store i64 %call10, ptr %addr, align 8, !dbg !2086
  br label %for.inc, !dbg !2087

for.inc:                                          ; preds = %if.end
  %35 = load i64, ptr %i, align 8, !dbg !2088
  %inc = add i64 %35, 1, !dbg !2088
  store i64 %inc, ptr %i, align 8, !dbg !2088
  %36 = load ptr, ptr %iter, align 8, !dbg !2089
  %incdec.ptr = getelementptr inbounds %struct.ftl_rq_entry, ptr %36, i32 1, !dbg !2089
  store ptr %incdec.ptr, ptr %iter, align 8, !dbg !2089
  br label %for.cond, !dbg !2090, !llvm.loop !2091

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %map_page, align 8, !dbg !2093
  %38 = load ptr, ptr %rq.addr, align 8, !dbg !2094
  %num_blocks11 = getelementptr inbounds %struct.ftl_rq, ptr %38, i32 0, i32 2, !dbg !2095
  %39 = load i64, ptr %num_blocks11, align 8, !dbg !2095
  %mul = mul i64 %39, 16, !dbg !2096
  %call12 = call i32 @spdk_crc32c_update(ptr noundef %37, i64 noundef %mul, i32 noundef 0), !dbg !2097
  %40 = load ptr, ptr %md_page, align 8, !dbg !2098
  %p2l_checksum = getelementptr inbounds %struct.anon.91, ptr %40, i32 0, i32 1, !dbg !2099
  store i32 %call12, ptr %p2l_checksum, align 8, !dbg !2100
  %41 = load ptr, ptr %ckpt, align 8, !dbg !2101
  %md13 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %41, i32 0, i32 2, !dbg !2102
  %42 = load ptr, ptr %md13, align 8, !dbg !2102
  %43 = load i64, ptr %p2l_map_page_no, align 8, !dbg !2103
  %44 = load ptr, ptr %map_page, align 8, !dbg !2104
  %45 = load ptr, ptr %md_page, align 8, !dbg !2105
  %46 = load ptr, ptr %rq.addr, align 8, !dbg !2106
  %47 = load ptr, ptr %rq.addr, align 8, !dbg !2107
  %md_persist_entry_ctx = getelementptr inbounds %struct.ftl_rq, ptr %47, i32 0, i32 12, !dbg !2108
  call void @ftl_md_persist_entry(ptr noundef %42, i64 noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef @ftl_p2l_ckpt_issue_end, ptr noundef %46, ptr noundef %md_persist_entry_ctx), !dbg !2109
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !2110
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2l_map_page_no) #9, !dbg !2110
  call void @llvm.lifetime.end.p0(i64 8, ptr %band_offs) #9, !dbg !2110
  call void @llvm.lifetime.end.p0(i64 8, ptr %band) #9, !dbg !2110
  call void @llvm.lifetime.end.p0(i64 8, ptr %md_page) #9, !dbg !2110
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_page) #9, !dbg !2110
  call void @llvm.lifetime.end.p0(i64 8, ptr %ckpt) #9, !dbg !2110
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #9, !dbg !2110
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #9, !dbg !2110
  ret void, !dbg !2110
}

declare !dbg !2111 i64 @ftl_band_block_offset_from_addr(ptr noundef, i64 noundef) #2

declare !dbg !2114 void @ftl_band_set_p2l(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #2

declare !dbg !2117 i64 @ftl_band_next_addr(ptr noundef, i64 noundef, i64 noundef) #2

declare !dbg !2120 i32 @spdk_crc32c_update(ptr noundef, i64 noundef, i32 noundef) #2

declare !dbg !2124 void @ftl_md_persist_entry(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @ftl_p2l_ckpt_issue_end(i32 noundef %status, ptr noundef %arg) #0 !dbg !2128 {
entry:
  %status.addr = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  %rq = alloca ptr, align 8
  store i32 %status, ptr %status.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2130, metadata !DIExpression()), !dbg !2133
  store ptr %arg, ptr %arg.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !2131, metadata !DIExpression()), !dbg !2134
  call void @llvm.lifetime.start.p0(i64 8, ptr %rq) #9, !dbg !2135
  tail call void @llvm.dbg.declare(metadata ptr %rq, metadata !2132, metadata !DIExpression()), !dbg !2136
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !2137
  store ptr %0, ptr %rq, align 8, !dbg !2136
  %1 = load i32, ptr %status.addr, align 4, !dbg !2138
  %tobool = icmp ne i32 %1, 0, !dbg !2138
  br i1 %tobool, label %if.then, label %if.end, !dbg !2140

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2141

do.body:                                          ; preds = %if.then
  call void @abort() #11, !dbg !2143
  unreachable, !dbg !2143

do.cond:                                          ; No predecessors!
  br label %do.end, !dbg !2143

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !2145

if.end:                                           ; preds = %do.end, %entry
  %2 = load ptr, ptr %rq, align 8, !dbg !2146
  %io = getelementptr inbounds %struct.ftl_rq, ptr %2, i32 0, i32 11, !dbg !2147
  %band = getelementptr inbounds %struct.anon.75, ptr %io, i32 0, i32 1, !dbg !2148
  %3 = load ptr, ptr %band, align 8, !dbg !2148
  %queue_depth = getelementptr inbounds %struct.ftl_band, ptr %3, i32 0, i32 2, !dbg !2149
  %4 = load i64, ptr %queue_depth, align 8, !dbg !2150
  %dec = add i64 %4, -1, !dbg !2150
  store i64 %dec, ptr %queue_depth, align 8, !dbg !2150
  %5 = load ptr, ptr %rq, align 8, !dbg !2151
  %owner = getelementptr inbounds %struct.ftl_rq, ptr %5, i32 0, i32 9, !dbg !2152
  %cb = getelementptr inbounds %struct.anon.73, ptr %owner, i32 0, i32 0, !dbg !2153
  %6 = load ptr, ptr %cb, align 8, !dbg !2153
  %7 = load ptr, ptr %rq, align 8, !dbg !2154
  call void %6(ptr noundef %7), !dbg !2151
  call void @llvm.lifetime.end.p0(i64 8, ptr %rq) #9, !dbg !2155
  ret void, !dbg !2155
}

; Function Attrs: nounwind ssp uwtable
define void @ftl_mngt_persist_bands_p2l(ptr noundef %mngt) #0 !dbg !2156 {
entry:
  %mngt.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %band = alloca ptr, align 8
  %band_offs = alloca i64, align 8
  %p2l_map_page_no = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mngt, ptr %mngt.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mngt.addr, metadata !2160, metadata !DIExpression()), !dbg !2172
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #9, !dbg !2173
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2161, metadata !DIExpression()), !dbg !2174
  %0 = load ptr, ptr %mngt.addr, align 8, !dbg !2175
  %call = call ptr @ftl_mngt_get_step_ctx(ptr noundef %0), !dbg !2176
  store ptr %call, ptr %ctx, align 8, !dbg !2174
  call void @llvm.lifetime.start.p0(i64 8, ptr %band) #9, !dbg !2177
  tail call void @llvm.dbg.declare(metadata ptr %band, metadata !2169, metadata !DIExpression()), !dbg !2178
  call void @llvm.lifetime.start.p0(i64 8, ptr %band_offs) #9, !dbg !2179
  tail call void @llvm.dbg.declare(metadata ptr %band_offs, metadata !2170, metadata !DIExpression()), !dbg !2180
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2l_map_page_no) #9, !dbg !2179
  tail call void @llvm.dbg.declare(metadata ptr %p2l_map_page_no, metadata !2171, metadata !DIExpression()), !dbg !2181
  %1 = load ptr, ptr %ctx, align 8, !dbg !2182
  %md_region = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %1, i32 0, i32 3, !dbg !2184
  %2 = load i32, ptr %md_region, align 8, !dbg !2184
  %cmp = icmp sgt i32 %2, 13, !dbg !2185
  br i1 %cmp, label %if.then, label %if.end, !dbg !2186

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %mngt.addr, align 8, !dbg !2187
  call void @ftl_mngt_next_step(ptr noundef %3), !dbg !2189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2190

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %mngt.addr, align 8, !dbg !2191
  %call1 = call ptr @ftl_mngt_get_dev(ptr noundef %4), !dbg !2192
  %5 = load ptr, ptr %ctx, align 8, !dbg !2193
  %md_region2 = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %5, i32 0, i32 3, !dbg !2194
  %6 = load i32, ptr %md_region2, align 8, !dbg !2194
  %call3 = call ptr @ftl_get_band_from_region(ptr noundef %call1, i32 noundef %6), !dbg !2195
  store ptr %call3, ptr %band, align 8, !dbg !2196
  %7 = load ptr, ptr %band, align 8, !dbg !2197
  %tobool = icmp ne ptr %7, null, !dbg !2197
  br i1 %tobool, label %if.end6, label %if.then4, !dbg !2199

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %ctx, align 8, !dbg !2200
  %page_start = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %8, i32 0, i32 1, !dbg !2202
  store i64 0, ptr %page_start, align 8, !dbg !2203
  %9 = load ptr, ptr %ctx, align 8, !dbg !2204
  %page_end = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %9, i32 0, i32 2, !dbg !2205
  store i64 0, ptr %page_end, align 8, !dbg !2206
  %10 = load ptr, ptr %ctx, align 8, !dbg !2207
  %md_region5 = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %10, i32 0, i32 3, !dbg !2208
  %11 = load i32, ptr %md_region5, align 8, !dbg !2209
  %inc = add nsw i32 %11, 1, !dbg !2209
  store i32 %inc, ptr %md_region5, align 8, !dbg !2209
  %12 = load ptr, ptr %mngt.addr, align 8, !dbg !2210
  call void @ftl_mngt_continue_step(ptr noundef %12), !dbg !2211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2212

if.end6:                                          ; preds = %if.end
  %13 = load ptr, ptr %band, align 8, !dbg !2213
  %14 = load ptr, ptr %band, align 8, !dbg !2214
  %md = getelementptr inbounds %struct.ftl_band, ptr %14, i32 0, i32 1, !dbg !2215
  %15 = load ptr, ptr %md, align 8, !dbg !2215
  %iter = getelementptr inbounds %struct.ftl_band_md, ptr %15, i32 0, i32 0, !dbg !2216
  %addr = getelementptr inbounds %struct.anon.93, ptr %iter, i32 0, i32 0, !dbg !2217
  %16 = load i64, ptr %addr, align 1, !dbg !2217
  %call7 = call i64 @ftl_band_block_offset_from_addr(ptr noundef %13, i64 noundef %16), !dbg !2218
  store i64 %call7, ptr %band_offs, align 8, !dbg !2219
  %17 = load i64, ptr %band_offs, align 8, !dbg !2220
  %div = udiv i64 %17, 256, !dbg !2221
  store i64 %div, ptr %p2l_map_page_no, align 8, !dbg !2222
  %18 = load ptr, ptr %ctx, align 8, !dbg !2223
  %page_start8 = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %18, i32 0, i32 1, !dbg !2224
  store i64 0, ptr %page_start8, align 8, !dbg !2225
  %19 = load i64, ptr %p2l_map_page_no, align 8, !dbg !2226
  %20 = load ptr, ptr %ctx, align 8, !dbg !2227
  %page_end9 = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %20, i32 0, i32 2, !dbg !2228
  store i64 %19, ptr %page_end9, align 8, !dbg !2229
  %21 = load ptr, ptr %band, align 8, !dbg !2230
  %22 = load ptr, ptr %ctx, align 8, !dbg !2231
  %band10 = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %22, i32 0, i32 0, !dbg !2232
  store ptr %21, ptr %band10, align 8, !dbg !2233
  %23 = load ptr, ptr %ctx, align 8, !dbg !2234
  %page_end11 = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %23, i32 0, i32 2, !dbg !2236
  %24 = load i64, ptr %page_end11, align 8, !dbg !2236
  %cmp12 = icmp eq i64 %24, 0, !dbg !2237
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !2238

if.then13:                                        ; preds = %if.end6
  %25 = load ptr, ptr %ctx, align 8, !dbg !2239
  %md_region14 = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %25, i32 0, i32 3, !dbg !2241
  %26 = load i32, ptr %md_region14, align 8, !dbg !2242
  %inc15 = add nsw i32 %26, 1, !dbg !2242
  store i32 %inc15, ptr %md_region14, align 8, !dbg !2242
  %27 = load ptr, ptr %mngt.addr, align 8, !dbg !2243
  call void @ftl_mngt_continue_step(ptr noundef %27), !dbg !2244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2245

if.end16:                                         ; preds = %if.end6
  %28 = load ptr, ptr %mngt.addr, align 8, !dbg !2246
  %29 = load ptr, ptr %ctx, align 8, !dbg !2247
  call void @ftl_mngt_persist_band_p2l(ptr noundef %28, ptr noundef %29), !dbg !2248
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2249
  br label %cleanup, !dbg !2249

cleanup:                                          ; preds = %if.end16, %if.then13, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2l_map_page_no) #9, !dbg !2249
  call void @llvm.lifetime.end.p0(i64 8, ptr %band_offs) #9, !dbg !2249
  call void @llvm.lifetime.end.p0(i64 8, ptr %band) #9, !dbg !2249
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #9, !dbg !2249
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2249

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !2250 ptr @ftl_mngt_get_step_ctx(ptr noundef) #2

declare !dbg !2254 void @ftl_mngt_next_step(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @ftl_get_band_from_region(ptr noundef %dev, i32 noundef %type) #0 !dbg !2255 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %band = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2259, metadata !DIExpression()), !dbg !2263
  store i32 %type, ptr %type.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2260, metadata !DIExpression()), !dbg !2264
  call void @llvm.lifetime.start.p0(i64 8, ptr %band) #9, !dbg !2265
  tail call void @llvm.dbg.declare(metadata ptr %band, metadata !2261, metadata !DIExpression()), !dbg !2266
  store ptr null, ptr %band, align 8, !dbg !2266
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !2267
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2262, metadata !DIExpression()), !dbg !2268
  store i64 0, ptr %i, align 8, !dbg !2269
  br label %for.cond, !dbg !2271

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !2272
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2274
  %call = call i64 @ftl_get_num_bands(ptr noundef %1), !dbg !2275
  %cmp = icmp ult i64 %0, %call, !dbg !2276
  br i1 %cmp, label %for.body, label %for.end, !dbg !2277

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2278
  %bands = getelementptr inbounds %struct.spdk_ftl_dev, ptr %2, i32 0, i32 19, !dbg !2280
  %3 = load ptr, ptr %bands, align 8, !dbg !2280
  %4 = load i64, ptr %i, align 8, !dbg !2281
  %arrayidx = getelementptr inbounds %struct.ftl_band, ptr %3, i64 %4, !dbg !2278
  store ptr %arrayidx, ptr %band, align 8, !dbg !2282
  %5 = load ptr, ptr %band, align 8, !dbg !2283
  %md = getelementptr inbounds %struct.ftl_band, ptr %5, i32 0, i32 1, !dbg !2285
  %6 = load ptr, ptr %md, align 8, !dbg !2285
  %state = getelementptr inbounds %struct.ftl_band_md, ptr %6, i32 0, i32 1, !dbg !2286
  %7 = load i32, ptr %state, align 1, !dbg !2286
  %cmp1 = icmp eq i32 %7, 3, !dbg !2287
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false, !dbg !2288

lor.lhs.false:                                    ; preds = %for.body
  %8 = load ptr, ptr %band, align 8, !dbg !2289
  %md2 = getelementptr inbounds %struct.ftl_band, ptr %8, i32 0, i32 1, !dbg !2290
  %9 = load ptr, ptr %md2, align 8, !dbg !2290
  %state3 = getelementptr inbounds %struct.ftl_band_md, ptr %9, i32 0, i32 1, !dbg !2291
  %10 = load i32, ptr %state3, align 1, !dbg !2291
  %cmp4 = icmp eq i32 %10, 4, !dbg !2292
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !2293

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %11 = load ptr, ptr %band, align 8, !dbg !2294
  %md5 = getelementptr inbounds %struct.ftl_band, ptr %11, i32 0, i32 1, !dbg !2295
  %12 = load ptr, ptr %md5, align 8, !dbg !2295
  %p2l_md_region = getelementptr inbounds %struct.ftl_band_md, ptr %12, i32 0, i32 3, !dbg !2296
  %13 = load i32, ptr %p2l_md_region, align 1, !dbg !2296
  %14 = load i32, ptr %type.addr, align 4, !dbg !2297
  %cmp6 = icmp eq i32 %13, %14, !dbg !2298
  br i1 %cmp6, label %if.then, label %if.end, !dbg !2299

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr %band, align 8, !dbg !2300
  store ptr %15, ptr %retval, align 8, !dbg !2302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2302

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  br label %for.inc, !dbg !2303

for.inc:                                          ; preds = %if.end
  %16 = load i64, ptr %i, align 8, !dbg !2304
  %inc = add i64 %16, 1, !dbg !2304
  store i64 %inc, ptr %i, align 8, !dbg !2304
  br label %for.cond, !dbg !2305, !llvm.loop !2306

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !2308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2308

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !2309
  call void @llvm.lifetime.end.p0(i64 8, ptr %band) #9, !dbg !2309
  %17 = load ptr, ptr %retval, align 8, !dbg !2309
  ret ptr %17, !dbg !2309
}

declare !dbg !2310 ptr @ftl_mngt_get_dev(ptr noundef) #2

declare !dbg !2313 void @ftl_mngt_continue_step(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @ftl_mngt_persist_band_p2l(ptr noundef %mngt, ptr noundef %ctx) #0 !dbg !2314 {
entry:
  %mngt.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %band = alloca ptr, align 8
  %md_page = alloca ptr, align 8
  %map_page = alloca ptr, align 8
  %ckpt = alloca ptr, align 8
  store ptr %mngt, ptr %mngt.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mngt.addr, metadata !2318, metadata !DIExpression()), !dbg !2324
  store ptr %ctx, ptr %ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !2319, metadata !DIExpression()), !dbg !2325
  call void @llvm.lifetime.start.p0(i64 8, ptr %band) #9, !dbg !2326
  tail call void @llvm.dbg.declare(metadata ptr %band, metadata !2320, metadata !DIExpression()), !dbg !2327
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !2328
  %band1 = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %0, i32 0, i32 0, !dbg !2329
  %1 = load ptr, ptr %band1, align 8, !dbg !2329
  store ptr %1, ptr %band, align 8, !dbg !2327
  call void @llvm.lifetime.start.p0(i64 8, ptr %md_page) #9, !dbg !2330
  tail call void @llvm.dbg.declare(metadata ptr %md_page, metadata !2321, metadata !DIExpression()), !dbg !2331
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_page) #9, !dbg !2332
  tail call void @llvm.dbg.declare(metadata ptr %map_page, metadata !2322, metadata !DIExpression()), !dbg !2333
  call void @llvm.lifetime.start.p0(i64 8, ptr %ckpt) #9, !dbg !2334
  tail call void @llvm.dbg.declare(metadata ptr %ckpt, metadata !2323, metadata !DIExpression()), !dbg !2335
  %2 = load ptr, ptr %band, align 8, !dbg !2336
  %p2l_map = getelementptr inbounds %struct.ftl_band, ptr %2, i32 0, i32 4, !dbg !2337
  %p2l_ckpt = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map, i32 0, i32 5, !dbg !2338
  %3 = load ptr, ptr %p2l_ckpt, align 8, !dbg !2338
  store ptr %3, ptr %ckpt, align 8, !dbg !2339
  %4 = load ptr, ptr %band, align 8, !dbg !2340
  %p2l_map2 = getelementptr inbounds %struct.ftl_band, ptr %4, i32 0, i32 4, !dbg !2341
  %5 = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map2, i32 0, i32 3, !dbg !2342
  %6 = load ptr, ptr %5, align 8, !dbg !2342
  %7 = load ptr, ptr %ctx.addr, align 8, !dbg !2343
  %page_start = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %7, i32 0, i32 1, !dbg !2344
  %8 = load i64, ptr %page_start, align 8, !dbg !2344
  %add.ptr = getelementptr inbounds %struct.ftl_p2l_ckpt_page, ptr %6, i64 %8, !dbg !2345
  store ptr %add.ptr, ptr %map_page, align 8, !dbg !2346
  %9 = load ptr, ptr %ckpt, align 8, !dbg !2347
  %vss_md_page = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %9, i32 0, i32 1, !dbg !2348
  %10 = load ptr, ptr %vss_md_page, align 8, !dbg !2348
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !2349
  %page_start3 = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %11, i32 0, i32 1, !dbg !2350
  %12 = load i64, ptr %page_start3, align 8, !dbg !2350
  %arrayidx = getelementptr inbounds %union.ftl_md_vss, ptr %10, i64 %12, !dbg !2347
  store ptr %arrayidx, ptr %md_page, align 8, !dbg !2351
  %13 = load ptr, ptr %band, align 8, !dbg !2352
  %md = getelementptr inbounds %struct.ftl_band, ptr %13, i32 0, i32 1, !dbg !2353
  %14 = load ptr, ptr %md, align 8, !dbg !2353
  %seq = getelementptr inbounds %struct.ftl_band_md, ptr %14, i32 0, i32 5, !dbg !2354
  %15 = load i64, ptr %seq, align 1, !dbg !2354
  %16 = load ptr, ptr %md_page, align 8, !dbg !2355
  %seq_id = getelementptr inbounds %struct.anon.91, ptr %16, i32 0, i32 0, !dbg !2356
  store i64 %15, ptr %seq_id, align 8, !dbg !2357
  %17 = load ptr, ptr %map_page, align 8, !dbg !2358
  %call = call i32 @spdk_crc32c_update(ptr noundef %17, i64 noundef 4096, i32 noundef 0), !dbg !2359
  %18 = load ptr, ptr %md_page, align 8, !dbg !2360
  %p2l_checksum = getelementptr inbounds %struct.anon.91, ptr %18, i32 0, i32 1, !dbg !2361
  store i32 %call, ptr %p2l_checksum, align 8, !dbg !2362
  %19 = load ptr, ptr %ckpt, align 8, !dbg !2363
  %md4 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %19, i32 0, i32 2, !dbg !2364
  %20 = load ptr, ptr %md4, align 8, !dbg !2364
  %21 = load ptr, ptr %ctx.addr, align 8, !dbg !2365
  %page_start5 = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %21, i32 0, i32 1, !dbg !2366
  %22 = load i64, ptr %page_start5, align 8, !dbg !2366
  %23 = load ptr, ptr %map_page, align 8, !dbg !2367
  %24 = load ptr, ptr %md_page, align 8, !dbg !2368
  %25 = load ptr, ptr %mngt.addr, align 8, !dbg !2369
  %26 = load ptr, ptr %band, align 8, !dbg !2370
  %md_persist_entry_ctx = getelementptr inbounds %struct.ftl_band, ptr %26, i32 0, i32 12, !dbg !2371
  call void @ftl_md_persist_entry(ptr noundef %20, i64 noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef @ftl_p2l_ckpt_persist_end, ptr noundef %25, ptr noundef %md_persist_entry_ctx), !dbg !2372
  call void @llvm.lifetime.end.p0(i64 8, ptr %ckpt) #9, !dbg !2373
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_page) #9, !dbg !2373
  call void @llvm.lifetime.end.p0(i64 8, ptr %md_page) #9, !dbg !2373
  call void @llvm.lifetime.end.p0(i64 8, ptr %band) #9, !dbg !2373
  ret void, !dbg !2373
}

; Function Attrs: nounwind ssp uwtable
define i32 @ftl_mngt_p2l_ckpt_get_seq_id(ptr noundef %dev, i32 noundef %md_region) #0 !dbg !2374 {
entry:
  %dev.addr = alloca ptr, align 8
  %md_region.addr = alloca i32, align 4
  %layout = alloca ptr, align 8
  %md = alloca ptr, align 8
  %page_md_buf = alloca ptr, align 8
  %page_no = alloca i64, align 8
  %seq_id = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2378, metadata !DIExpression()), !dbg !2386
  store i32 %md_region, ptr %md_region.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %md_region.addr, metadata !2379, metadata !DIExpression()), !dbg !2387
  call void @llvm.lifetime.start.p0(i64 8, ptr %layout) #9, !dbg !2388
  tail call void @llvm.dbg.declare(metadata ptr %layout, metadata !2380, metadata !DIExpression()), !dbg !2389
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2390
  %layout1 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %0, i32 0, i32 1, !dbg !2391
  store ptr %layout1, ptr %layout, align 8, !dbg !2389
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #9, !dbg !2392
  tail call void @llvm.dbg.declare(metadata ptr %md, metadata !2382, metadata !DIExpression()), !dbg !2393
  %1 = load ptr, ptr %layout, align 8, !dbg !2394
  %md2 = getelementptr inbounds %struct.ftl_layout, ptr %1, i32 0, i32 5, !dbg !2395
  %2 = load i32, ptr %md_region.addr, align 4, !dbg !2396
  %idxprom = sext i32 %2 to i64, !dbg !2394
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %md2, i64 0, i64 %idxprom, !dbg !2394
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2394
  store ptr %3, ptr %md, align 8, !dbg !2393
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_md_buf) #9, !dbg !2397
  tail call void @llvm.dbg.declare(metadata ptr %page_md_buf, metadata !2383, metadata !DIExpression()), !dbg !2398
  %4 = load ptr, ptr %md, align 8, !dbg !2399
  %call = call ptr @ftl_md_get_vss_buffer(ptr noundef %4), !dbg !2400
  store ptr %call, ptr %page_md_buf, align 8, !dbg !2398
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_no) #9, !dbg !2401
  tail call void @llvm.dbg.declare(metadata ptr %page_no, metadata !2384, metadata !DIExpression()), !dbg !2402
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq_id) #9, !dbg !2401
  tail call void @llvm.dbg.declare(metadata ptr %seq_id, metadata !2385, metadata !DIExpression()), !dbg !2403
  store i64 0, ptr %seq_id, align 8, !dbg !2403
  store i64 0, ptr %page_no, align 8, !dbg !2404
  br label %for.cond, !dbg !2406

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, ptr %page_no, align 8, !dbg !2407
  %6 = load ptr, ptr %layout, align 8, !dbg !2409
  %p2l = getelementptr inbounds %struct.ftl_layout, ptr %6, i32 0, i32 3, !dbg !2410
  %ckpt_pages = getelementptr inbounds %struct.anon.51, ptr %p2l, i32 0, i32 0, !dbg !2411
  %7 = load i64, ptr %ckpt_pages, align 8, !dbg !2411
  %cmp = icmp ult i64 %5, %7, !dbg !2412
  br i1 %cmp, label %for.body, label %for.end, !dbg !2413

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %seq_id, align 8, !dbg !2414
  %9 = load ptr, ptr %page_md_buf, align 8, !dbg !2417
  %seq_id3 = getelementptr inbounds %struct.anon.91, ptr %9, i32 0, i32 0, !dbg !2418
  %10 = load i64, ptr %seq_id3, align 8, !dbg !2418
  %cmp4 = icmp ult i64 %8, %10, !dbg !2419
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2420

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %page_md_buf, align 8, !dbg !2421
  %seq_id5 = getelementptr inbounds %struct.anon.91, ptr %11, i32 0, i32 0, !dbg !2423
  %12 = load i64, ptr %seq_id5, align 8, !dbg !2423
  store i64 %12, ptr %seq_id, align 8, !dbg !2424
  br label %if.end, !dbg !2425

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2426

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %page_no, align 8, !dbg !2427
  %inc = add i64 %13, 1, !dbg !2427
  store i64 %inc, ptr %page_no, align 8, !dbg !2427
  %14 = load ptr, ptr %page_md_buf, align 8, !dbg !2428
  %incdec.ptr = getelementptr inbounds %union.ftl_md_vss, ptr %14, i32 1, !dbg !2428
  store ptr %incdec.ptr, ptr %page_md_buf, align 8, !dbg !2428
  br label %for.cond, !dbg !2429, !llvm.loop !2430

for.end:                                          ; preds = %for.cond
  %15 = load i64, ptr %seq_id, align 8, !dbg !2432
  %conv = trunc i64 %15 to i32, !dbg !2432
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq_id) #9, !dbg !2433
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_no) #9, !dbg !2433
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_md_buf) #9, !dbg !2433
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #9, !dbg !2433
  call void @llvm.lifetime.end.p0(i64 8, ptr %layout) #9, !dbg !2433
  ret i32 %conv, !dbg !2434
}

declare !dbg !2435 ptr @ftl_md_get_vss_buffer(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @ftl_mngt_p2l_ckpt_restore(ptr noundef %band, i32 noundef %md_region, i64 noundef %seq_id) #0 !dbg !2438 {
entry:
  %retval = alloca i32, align 4
  %band.addr = alloca ptr, align 8
  %md_region.addr = alloca i32, align 4
  %seq_id.addr = alloca i64, align 8
  %layout = alloca ptr, align 8
  %md = alloca ptr, align 8
  %page_md_buf = alloca ptr, align 8
  %page = alloca ptr, align 8
  %map_page = alloca ptr, align 8
  %page_no = alloca i64, align 8
  %page_max = alloca i64, align 8
  %page_found = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %band, ptr %band.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %band.addr, metadata !2442, metadata !DIExpression()), !dbg !2453
  store i32 %md_region, ptr %md_region.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %md_region.addr, metadata !2443, metadata !DIExpression()), !dbg !2454
  store i64 %seq_id, ptr %seq_id.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %seq_id.addr, metadata !2444, metadata !DIExpression()), !dbg !2455
  call void @llvm.lifetime.start.p0(i64 8, ptr %layout) #9, !dbg !2456
  tail call void @llvm.dbg.declare(metadata ptr %layout, metadata !2445, metadata !DIExpression()), !dbg !2457
  %0 = load ptr, ptr %band.addr, align 8, !dbg !2458
  %dev = getelementptr inbounds %struct.ftl_band, ptr %0, i32 0, i32 0, !dbg !2459
  %1 = load ptr, ptr %dev, align 8, !dbg !2459
  %layout1 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %1, i32 0, i32 1, !dbg !2460
  store ptr %layout1, ptr %layout, align 8, !dbg !2457
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #9, !dbg !2461
  tail call void @llvm.dbg.declare(metadata ptr %md, metadata !2446, metadata !DIExpression()), !dbg !2462
  %2 = load ptr, ptr %layout, align 8, !dbg !2463
  %md2 = getelementptr inbounds %struct.ftl_layout, ptr %2, i32 0, i32 5, !dbg !2464
  %3 = load i32, ptr %md_region.addr, align 4, !dbg !2465
  %idxprom = zext i32 %3 to i64, !dbg !2463
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %md2, i64 0, i64 %idxprom, !dbg !2463
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2463
  store ptr %4, ptr %md, align 8, !dbg !2462
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_md_buf) #9, !dbg !2466
  tail call void @llvm.dbg.declare(metadata ptr %page_md_buf, metadata !2447, metadata !DIExpression()), !dbg !2467
  %5 = load ptr, ptr %md, align 8, !dbg !2468
  %call = call ptr @ftl_md_get_vss_buffer(ptr noundef %5), !dbg !2469
  store ptr %call, ptr %page_md_buf, align 8, !dbg !2467
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #9, !dbg !2470
  tail call void @llvm.dbg.declare(metadata ptr %page, metadata !2448, metadata !DIExpression()), !dbg !2471
  %6 = load ptr, ptr %md, align 8, !dbg !2472
  %call3 = call ptr @ftl_md_get_buffer(ptr noundef %6), !dbg !2473
  store ptr %call3, ptr %page, align 8, !dbg !2471
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_page) #9, !dbg !2474
  tail call void @llvm.dbg.declare(metadata ptr %map_page, metadata !2449, metadata !DIExpression()), !dbg !2475
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_no) #9, !dbg !2476
  tail call void @llvm.dbg.declare(metadata ptr %page_no, metadata !2450, metadata !DIExpression()), !dbg !2477
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_max) #9, !dbg !2476
  tail call void @llvm.dbg.declare(metadata ptr %page_max, metadata !2451, metadata !DIExpression()), !dbg !2478
  store i64 0, ptr %page_max, align 8, !dbg !2478
  call void @llvm.lifetime.start.p0(i64 1, ptr %page_found) #9, !dbg !2479
  tail call void @llvm.dbg.declare(metadata ptr %page_found, metadata !2452, metadata !DIExpression()), !dbg !2480
  store i8 0, ptr %page_found, align 1, !dbg !2480
  %7 = load ptr, ptr %band.addr, align 8, !dbg !2481
  %md4 = getelementptr inbounds %struct.ftl_band, ptr %7, i32 0, i32 1, !dbg !2483
  %8 = load ptr, ptr %md4, align 8, !dbg !2483
  %p2l_md_region = getelementptr inbounds %struct.ftl_band_md, ptr %8, i32 0, i32 3, !dbg !2484
  %9 = load i32, ptr %p2l_md_region, align 1, !dbg !2484
  %10 = load i32, ptr %md_region.addr, align 4, !dbg !2485
  %cmp = icmp ne i32 %9, %10, !dbg !2486
  br i1 %cmp, label %if.then, label %if.end, !dbg !2487

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2488

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %band.addr, align 8, !dbg !2490
  %md5 = getelementptr inbounds %struct.ftl_band, ptr %11, i32 0, i32 1, !dbg !2492
  %12 = load ptr, ptr %md5, align 8, !dbg !2492
  %seq = getelementptr inbounds %struct.ftl_band_md, ptr %12, i32 0, i32 5, !dbg !2493
  %13 = load i64, ptr %seq, align 1, !dbg !2493
  %14 = load i64, ptr %seq_id.addr, align 8, !dbg !2494
  %cmp6 = icmp ne i64 %13, %14, !dbg !2495
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2496

if.then7:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !2497
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2497

if.end8:                                          ; preds = %if.end
  store i64 0, ptr %page_no, align 8, !dbg !2499
  br label %for.cond, !dbg !2501

for.cond:                                         ; preds = %for.inc, %if.end8
  %15 = load i64, ptr %page_no, align 8, !dbg !2502
  %16 = load ptr, ptr %layout, align 8, !dbg !2504
  %p2l = getelementptr inbounds %struct.ftl_layout, ptr %16, i32 0, i32 3, !dbg !2505
  %ckpt_pages = getelementptr inbounds %struct.anon.51, ptr %p2l, i32 0, i32 0, !dbg !2506
  %17 = load i64, ptr %ckpt_pages, align 8, !dbg !2506
  %cmp9 = icmp ult i64 %15, %17, !dbg !2507
  br i1 %cmp9, label %for.body, label %for.end, !dbg !2508

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %page_md_buf, align 8, !dbg !2509
  %seq_id10 = getelementptr inbounds %struct.anon.91, ptr %18, i32 0, i32 0, !dbg !2512
  %19 = load i64, ptr %seq_id10, align 8, !dbg !2512
  %20 = load i64, ptr %seq_id.addr, align 8, !dbg !2513
  %cmp11 = icmp ne i64 %19, %20, !dbg !2514
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !2515

if.then12:                                        ; preds = %for.body
  br label %for.inc, !dbg !2516

if.end13:                                         ; preds = %for.body
  %21 = load i64, ptr %page_no, align 8, !dbg !2518
  store i64 %21, ptr %page_max, align 8, !dbg !2519
  store i8 1, ptr %page_found, align 1, !dbg !2520
  %22 = load ptr, ptr %band.addr, align 8, !dbg !2521
  %p2l_map = getelementptr inbounds %struct.ftl_band, ptr %22, i32 0, i32 4, !dbg !2522
  %23 = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map, i32 0, i32 3, !dbg !2523
  %24 = load ptr, ptr %23, align 8, !dbg !2523
  %25 = load i64, ptr %page_no, align 8, !dbg !2524
  %add.ptr = getelementptr inbounds %struct.ftl_p2l_ckpt_page, ptr %24, i64 %25, !dbg !2525
  store ptr %add.ptr, ptr %map_page, align 8, !dbg !2526
  %26 = load ptr, ptr %page_md_buf, align 8, !dbg !2527
  %p2l_checksum = getelementptr inbounds %struct.anon.91, ptr %26, i32 0, i32 1, !dbg !2529
  %27 = load i32, ptr %p2l_checksum, align 8, !dbg !2529
  %tobool = icmp ne i32 %27, 0, !dbg !2527
  br i1 %tobool, label %land.lhs.true, label %if.end19, !dbg !2530

land.lhs.true:                                    ; preds = %if.end13
  %28 = load ptr, ptr %page_md_buf, align 8, !dbg !2531
  %p2l_checksum14 = getelementptr inbounds %struct.anon.91, ptr %28, i32 0, i32 1, !dbg !2532
  %29 = load i32, ptr %p2l_checksum14, align 8, !dbg !2532
  %30 = load ptr, ptr %page, align 8, !dbg !2533
  %call15 = call i32 @spdk_crc32c_update(ptr noundef %30, i64 noundef 4096, i32 noundef 0), !dbg !2534
  %cmp16 = icmp ne i32 %29, %call15, !dbg !2535
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !2536

if.then17:                                        ; preds = %land.lhs.true
  %31 = load ptr, ptr %band.addr, align 8, !dbg !2537
  %dev18 = getelementptr inbounds %struct.ftl_band, ptr %31, i32 0, i32 0, !dbg !2539
  %32 = load ptr, ptr %dev18, align 8, !dbg !2539
  call void @ftl_stats_crc_error(ptr noundef %32, i32 noundef 4), !dbg !2540
  store i32 -22, ptr %retval, align 4, !dbg !2541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2541

if.end19:                                         ; preds = %land.lhs.true, %if.end13
  %33 = load ptr, ptr %map_page, align 8, !dbg !2542
  %34 = load ptr, ptr %page, align 8, !dbg !2543
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %34, i64 4096, i1 false), !dbg !2544
  br label %for.inc, !dbg !2545

for.inc:                                          ; preds = %if.end19, %if.then12
  %35 = load i64, ptr %page_no, align 8, !dbg !2546
  %inc = add i64 %35, 1, !dbg !2546
  store i64 %inc, ptr %page_no, align 8, !dbg !2546
  %36 = load ptr, ptr %page, align 8, !dbg !2547
  %incdec.ptr = getelementptr inbounds %struct.ftl_p2l_ckpt_page, ptr %36, i32 1, !dbg !2547
  store ptr %incdec.ptr, ptr %page, align 8, !dbg !2547
  %37 = load ptr, ptr %page_md_buf, align 8, !dbg !2548
  %incdec.ptr20 = getelementptr inbounds %union.ftl_md_vss, ptr %37, i32 1, !dbg !2548
  store ptr %incdec.ptr20, ptr %page_md_buf, align 8, !dbg !2548
  br label %for.cond, !dbg !2549, !llvm.loop !2550

for.end:                                          ; preds = %for.cond
  %38 = load i8, ptr %page_found, align 1, !dbg !2552, !range !2554, !noundef !2555
  %tobool21 = trunc i8 %38 to i1, !dbg !2552
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !2556

if.then22:                                        ; preds = %for.end
  store i32 -22, ptr %retval, align 4, !dbg !2557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2557

if.end23:                                         ; preds = %for.end
  %39 = load ptr, ptr %band.addr, align 8, !dbg !2559
  %dev24 = getelementptr inbounds %struct.ftl_band, ptr %39, i32 0, i32 0, !dbg !2560
  %40 = load ptr, ptr %dev24, align 8, !dbg !2560
  %41 = load i32, ptr %md_region.addr, align 4, !dbg !2561
  %call25 = call ptr @ftl_p2l_ckpt_acquire_region_type(ptr noundef %40, i32 noundef %41), !dbg !2562
  %42 = load ptr, ptr %band.addr, align 8, !dbg !2563
  %p2l_map26 = getelementptr inbounds %struct.ftl_band, ptr %42, i32 0, i32 4, !dbg !2564
  %p2l_ckpt = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map26, i32 0, i32 5, !dbg !2565
  store ptr %call25, ptr %p2l_ckpt, align 8, !dbg !2566
  %43 = load ptr, ptr %band.addr, align 8, !dbg !2567
  call void @ftl_band_iter_init(ptr noundef %43), !dbg !2568
  %44 = load ptr, ptr %band.addr, align 8, !dbg !2569
  %45 = load i64, ptr %page_max, align 8, !dbg !2570
  %add = add i64 %45, 1, !dbg !2571
  %mul = mul i64 %add, 256, !dbg !2572
  call void @ftl_band_iter_set(ptr noundef %44, i64 noundef %mul), !dbg !2573
  store i32 0, ptr %retval, align 4, !dbg !2574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2574

cleanup:                                          ; preds = %if.end23, %if.then22, %if.then17, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %page_found) #9, !dbg !2575
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_max) #9, !dbg !2575
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_no) #9, !dbg !2575
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_page) #9, !dbg !2575
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #9, !dbg !2575
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_md_buf) #9, !dbg !2575
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #9, !dbg !2575
  call void @llvm.lifetime.end.p0(i64 8, ptr %layout) #9, !dbg !2575
  %46 = load i32, ptr %retval, align 4, !dbg !2575
  ret i32 %46, !dbg !2575
}

declare !dbg !2576 ptr @ftl_md_get_buffer(ptr noundef) #2

declare !dbg !2579 void @ftl_stats_crc_error(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind ssp uwtable
define ptr @ftl_p2l_ckpt_acquire_region_type(ptr noundef %dev, i32 noundef %region_type) #0 !dbg !2582 {
entry:
  %dev.addr = alloca ptr, align 8
  %region_type.addr = alloca i32, align 4
  %ckpt = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2586, metadata !DIExpression()), !dbg !2589
  store i32 %region_type, ptr %region_type.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %region_type.addr, metadata !2587, metadata !DIExpression()), !dbg !2590
  call void @llvm.lifetime.start.p0(i64 8, ptr %ckpt) #9, !dbg !2591
  tail call void @llvm.dbg.declare(metadata ptr %ckpt, metadata !2588, metadata !DIExpression()), !dbg !2592
  store ptr null, ptr %ckpt, align 8, !dbg !2592
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2593
  %p2l_ckpt = getelementptr inbounds %struct.spdk_ftl_dev, ptr %0, i32 0, i32 49, !dbg !2593
  %free = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt, i32 0, i32 0, !dbg !2593
  %tqh_first = getelementptr inbounds %struct.anon.69, ptr %free, i32 0, i32 0, !dbg !2593
  %1 = load ptr, ptr %tqh_first, align 8, !dbg !2593
  store ptr %1, ptr %ckpt, align 8, !dbg !2593
  br label %for.cond, !dbg !2593

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %ckpt, align 8, !dbg !2595
  %tobool = icmp ne ptr %2, null, !dbg !2593
  br i1 %tobool, label %for.body, label %for.end, !dbg !2593

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %ckpt, align 8, !dbg !2597
  %layout_region = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %3, i32 0, i32 3, !dbg !2600
  %4 = load ptr, ptr %layout_region, align 8, !dbg !2600
  %type = getelementptr inbounds %struct.ftl_layout_region, ptr %4, i32 0, i32 1, !dbg !2601
  %5 = load i32, ptr %type, align 8, !dbg !2601
  %6 = load i32, ptr %region_type.addr, align 4, !dbg !2602
  %cmp = icmp eq i32 %5, %6, !dbg !2603
  br i1 %cmp, label %if.then, label %if.end, !dbg !2604

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !2605

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2607

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %ckpt, align 8, !dbg !2595
  %link = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %7, i32 0, i32 0, !dbg !2595
  %tqe_next = getelementptr inbounds %struct.anon.71, ptr %link, i32 0, i32 0, !dbg !2595
  %8 = load ptr, ptr %tqe_next, align 8, !dbg !2595
  store ptr %8, ptr %ckpt, align 8, !dbg !2595
  br label %for.cond, !dbg !2595, !llvm.loop !2608

for.end:                                          ; preds = %if.then, %for.cond
  br label %do.body, !dbg !2610

do.body:                                          ; preds = %for.end
  %9 = load ptr, ptr %ckpt, align 8, !dbg !2611
  %link1 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %9, i32 0, i32 0, !dbg !2611
  %tqe_next2 = getelementptr inbounds %struct.anon.71, ptr %link1, i32 0, i32 0, !dbg !2611
  %10 = load ptr, ptr %tqe_next2, align 8, !dbg !2611
  %cmp3 = icmp ne ptr %10, null, !dbg !2611
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !2614

if.then4:                                         ; preds = %do.body
  %11 = load ptr, ptr %ckpt, align 8, !dbg !2611
  %link5 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %11, i32 0, i32 0, !dbg !2611
  %tqe_prev = getelementptr inbounds %struct.anon.71, ptr %link5, i32 0, i32 1, !dbg !2611
  %12 = load ptr, ptr %tqe_prev, align 8, !dbg !2611
  %13 = load ptr, ptr %ckpt, align 8, !dbg !2611
  %link6 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %13, i32 0, i32 0, !dbg !2611
  %tqe_next7 = getelementptr inbounds %struct.anon.71, ptr %link6, i32 0, i32 0, !dbg !2611
  %14 = load ptr, ptr %tqe_next7, align 8, !dbg !2611
  %link8 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %14, i32 0, i32 0, !dbg !2611
  %tqe_prev9 = getelementptr inbounds %struct.anon.71, ptr %link8, i32 0, i32 1, !dbg !2611
  store ptr %12, ptr %tqe_prev9, align 8, !dbg !2611
  br label %if.end14, !dbg !2611

if.else:                                          ; preds = %do.body
  %15 = load ptr, ptr %ckpt, align 8, !dbg !2611
  %link10 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %15, i32 0, i32 0, !dbg !2611
  %tqe_prev11 = getelementptr inbounds %struct.anon.71, ptr %link10, i32 0, i32 1, !dbg !2611
  %16 = load ptr, ptr %tqe_prev11, align 8, !dbg !2611
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !2611
  %p2l_ckpt12 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %17, i32 0, i32 49, !dbg !2611
  %free13 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt12, i32 0, i32 0, !dbg !2611
  %tqh_last = getelementptr inbounds %struct.anon.69, ptr %free13, i32 0, i32 1, !dbg !2611
  store ptr %16, ptr %tqh_last, align 8, !dbg !2611
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then4
  %18 = load ptr, ptr %ckpt, align 8, !dbg !2614
  %link15 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %18, i32 0, i32 0, !dbg !2614
  %tqe_next16 = getelementptr inbounds %struct.anon.71, ptr %link15, i32 0, i32 0, !dbg !2614
  %19 = load ptr, ptr %tqe_next16, align 8, !dbg !2614
  %20 = load ptr, ptr %ckpt, align 8, !dbg !2614
  %link17 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %20, i32 0, i32 0, !dbg !2614
  %tqe_prev18 = getelementptr inbounds %struct.anon.71, ptr %link17, i32 0, i32 1, !dbg !2614
  %21 = load ptr, ptr %tqe_prev18, align 8, !dbg !2614
  store ptr %19, ptr %21, align 8, !dbg !2614
  br label %do.cond, !dbg !2614

do.cond:                                          ; preds = %if.end14
  br label %do.end, !dbg !2614

do.end:                                           ; preds = %do.cond
  br label %do.body19, !dbg !2615

do.body19:                                        ; preds = %do.end
  %22 = load ptr, ptr %ckpt, align 8, !dbg !2616
  %link20 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %22, i32 0, i32 0, !dbg !2616
  %tqe_next21 = getelementptr inbounds %struct.anon.71, ptr %link20, i32 0, i32 0, !dbg !2616
  store ptr null, ptr %tqe_next21, align 8, !dbg !2616
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !2616
  %p2l_ckpt22 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %23, i32 0, i32 49, !dbg !2616
  %inuse = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt22, i32 0, i32 1, !dbg !2616
  %tqh_last23 = getelementptr inbounds %struct.anon.70, ptr %inuse, i32 0, i32 1, !dbg !2616
  %24 = load ptr, ptr %tqh_last23, align 8, !dbg !2616
  %25 = load ptr, ptr %ckpt, align 8, !dbg !2616
  %link24 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %25, i32 0, i32 0, !dbg !2616
  %tqe_prev25 = getelementptr inbounds %struct.anon.71, ptr %link24, i32 0, i32 1, !dbg !2616
  store ptr %24, ptr %tqe_prev25, align 8, !dbg !2616
  %26 = load ptr, ptr %ckpt, align 8, !dbg !2616
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !2616
  %p2l_ckpt26 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %27, i32 0, i32 49, !dbg !2616
  %inuse27 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt26, i32 0, i32 1, !dbg !2616
  %tqh_last28 = getelementptr inbounds %struct.anon.70, ptr %inuse27, i32 0, i32 1, !dbg !2616
  %28 = load ptr, ptr %tqh_last28, align 8, !dbg !2616
  store ptr %26, ptr %28, align 8, !dbg !2616
  %29 = load ptr, ptr %ckpt, align 8, !dbg !2616
  %link29 = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %29, i32 0, i32 0, !dbg !2616
  %tqe_next30 = getelementptr inbounds %struct.anon.71, ptr %link29, i32 0, i32 0, !dbg !2616
  %30 = load ptr, ptr %dev.addr, align 8, !dbg !2616
  %p2l_ckpt31 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %30, i32 0, i32 49, !dbg !2616
  %inuse32 = getelementptr inbounds %struct.anon.68, ptr %p2l_ckpt31, i32 0, i32 1, !dbg !2616
  %tqh_last33 = getelementptr inbounds %struct.anon.70, ptr %inuse32, i32 0, i32 1, !dbg !2616
  store ptr %tqe_next30, ptr %tqh_last33, align 8, !dbg !2616
  br label %do.cond34, !dbg !2616

do.cond34:                                        ; preds = %do.body19
  br label %do.end35, !dbg !2616

do.end35:                                         ; preds = %do.cond34
  %31 = load ptr, ptr %ckpt, align 8, !dbg !2618
  call void @llvm.lifetime.end.p0(i64 8, ptr %ckpt) #9, !dbg !2619
  ret ptr %31, !dbg !2620
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @ftl_band_iter_init(ptr noundef %band) #4 !dbg !2621 {
entry:
  %band.addr = alloca ptr, align 8
  store ptr %band, ptr %band.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %band.addr, metadata !2623, metadata !DIExpression()), !dbg !2624
  %0 = load ptr, ptr %band.addr, align 8, !dbg !2625
  %start_addr = getelementptr inbounds %struct.ftl_band, ptr %0, i32 0, i32 8, !dbg !2626
  %1 = load i64, ptr %start_addr, align 8, !dbg !2626
  %2 = load ptr, ptr %band.addr, align 8, !dbg !2627
  %md = getelementptr inbounds %struct.ftl_band, ptr %2, i32 0, i32 1, !dbg !2628
  %3 = load ptr, ptr %md, align 8, !dbg !2628
  %iter = getelementptr inbounds %struct.ftl_band_md, ptr %3, i32 0, i32 0, !dbg !2629
  %addr = getelementptr inbounds %struct.anon.93, ptr %iter, i32 0, i32 0, !dbg !2630
  store i64 %1, ptr %addr, align 1, !dbg !2631
  %4 = load ptr, ptr %band.addr, align 8, !dbg !2632
  %md1 = getelementptr inbounds %struct.ftl_band, ptr %4, i32 0, i32 1, !dbg !2633
  %5 = load ptr, ptr %md1, align 8, !dbg !2633
  %iter2 = getelementptr inbounds %struct.ftl_band_md, ptr %5, i32 0, i32 0, !dbg !2634
  %offset = getelementptr inbounds %struct.anon.93, ptr %iter2, i32 0, i32 1, !dbg !2635
  store i64 0, ptr %offset, align 1, !dbg !2636
  ret void, !dbg !2637
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @ftl_band_iter_set(ptr noundef %band, i64 noundef %num_blocks) #4 !dbg !2638 {
entry:
  %band.addr = alloca ptr, align 8
  %num_blocks.addr = alloca i64, align 8
  store ptr %band, ptr %band.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %band.addr, metadata !2642, metadata !DIExpression()), !dbg !2644
  store i64 %num_blocks, ptr %num_blocks.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %num_blocks.addr, metadata !2643, metadata !DIExpression()), !dbg !2645
  %0 = load i64, ptr %num_blocks.addr, align 8, !dbg !2646
  %1 = load ptr, ptr %band.addr, align 8, !dbg !2647
  %md = getelementptr inbounds %struct.ftl_band, ptr %1, i32 0, i32 1, !dbg !2648
  %2 = load ptr, ptr %md, align 8, !dbg !2648
  %iter = getelementptr inbounds %struct.ftl_band_md, ptr %2, i32 0, i32 0, !dbg !2649
  %offset = getelementptr inbounds %struct.anon.93, ptr %iter, i32 0, i32 1, !dbg !2650
  store i64 %0, ptr %offset, align 1, !dbg !2651
  %3 = load ptr, ptr %band.addr, align 8, !dbg !2652
  %4 = load ptr, ptr %band.addr, align 8, !dbg !2653
  %md1 = getelementptr inbounds %struct.ftl_band, ptr %4, i32 0, i32 1, !dbg !2654
  %5 = load ptr, ptr %md1, align 8, !dbg !2654
  %iter2 = getelementptr inbounds %struct.ftl_band_md, ptr %5, i32 0, i32 0, !dbg !2655
  %addr = getelementptr inbounds %struct.anon.93, ptr %iter2, i32 0, i32 0, !dbg !2656
  %6 = load i64, ptr %addr, align 1, !dbg !2656
  %7 = load i64, ptr %num_blocks.addr, align 8, !dbg !2657
  %call = call i64 @ftl_band_next_xfer_addr(ptr noundef %3, i64 noundef %6, i64 noundef %7), !dbg !2658
  %8 = load ptr, ptr %band.addr, align 8, !dbg !2659
  %md3 = getelementptr inbounds %struct.ftl_band, ptr %8, i32 0, i32 1, !dbg !2660
  %9 = load ptr, ptr %md3, align 8, !dbg !2660
  %iter4 = getelementptr inbounds %struct.ftl_band_md, ptr %9, i32 0, i32 0, !dbg !2661
  %addr5 = getelementptr inbounds %struct.anon.93, ptr %iter4, i32 0, i32 0, !dbg !2662
  store i64 %call, ptr %addr5, align 1, !dbg !2663
  ret void, !dbg !2664
}

; Function Attrs: nounwind ssp uwtable
define i32 @ftl_p2l_ckpt_region_type(ptr noundef %ckpt) #0 !dbg !2665 {
entry:
  %ckpt.addr = alloca ptr, align 8
  store ptr %ckpt, ptr %ckpt.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ckpt.addr, metadata !2671, metadata !DIExpression()), !dbg !2672
  %0 = load ptr, ptr %ckpt.addr, align 8, !dbg !2673
  %layout_region = getelementptr inbounds %struct.ftl_p2l_ckpt, ptr %0, i32 0, i32 3, !dbg !2674
  %1 = load ptr, ptr %layout_region, align 8, !dbg !2674
  %type = getelementptr inbounds %struct.ftl_layout_region, ptr %1, i32 0, i32 1, !dbg !2675
  %2 = load i32, ptr %type, align 8, !dbg !2675
  ret i32 %2, !dbg !2676
}

; Function Attrs: nounwind ssp uwtable
define i32 @ftl_mngt_p2l_ckpt_restore_clean(ptr noundef %band) #0 !dbg !2677 {
entry:
  %retval = alloca i32, align 4
  %band.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %layout = alloca ptr, align 8
  %page = alloca ptr, align 8
  %map_page = alloca ptr, align 8
  %md_region = alloca i32, align 4
  %page_no = alloca i64, align 8
  %num_written_pages = alloca i64, align 8
  %page_md_buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %band, ptr %band.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %band.addr, metadata !2681, metadata !DIExpression()), !dbg !2690
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #9, !dbg !2691
  tail call void @llvm.dbg.declare(metadata ptr %dev, metadata !2682, metadata !DIExpression()), !dbg !2692
  %0 = load ptr, ptr %band.addr, align 8, !dbg !2693
  %dev1 = getelementptr inbounds %struct.ftl_band, ptr %0, i32 0, i32 0, !dbg !2694
  %1 = load ptr, ptr %dev1, align 8, !dbg !2694
  store ptr %1, ptr %dev, align 8, !dbg !2692
  call void @llvm.lifetime.start.p0(i64 8, ptr %layout) #9, !dbg !2695
  tail call void @llvm.dbg.declare(metadata ptr %layout, metadata !2683, metadata !DIExpression()), !dbg !2696
  %2 = load ptr, ptr %dev, align 8, !dbg !2697
  %layout2 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %2, i32 0, i32 1, !dbg !2698
  store ptr %layout2, ptr %layout, align 8, !dbg !2696
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #9, !dbg !2699
  tail call void @llvm.dbg.declare(metadata ptr %page, metadata !2684, metadata !DIExpression()), !dbg !2700
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_page) #9, !dbg !2699
  tail call void @llvm.dbg.declare(metadata ptr %map_page, metadata !2685, metadata !DIExpression()), !dbg !2701
  call void @llvm.lifetime.start.p0(i64 4, ptr %md_region) #9, !dbg !2702
  tail call void @llvm.dbg.declare(metadata ptr %md_region, metadata !2686, metadata !DIExpression()), !dbg !2703
  %3 = load ptr, ptr %band.addr, align 8, !dbg !2704
  %md = getelementptr inbounds %struct.ftl_band, ptr %3, i32 0, i32 1, !dbg !2705
  %4 = load ptr, ptr %md, align 8, !dbg !2705
  %p2l_md_region = getelementptr inbounds %struct.ftl_band_md, ptr %4, i32 0, i32 3, !dbg !2706
  %5 = load i32, ptr %p2l_md_region, align 1, !dbg !2706
  store i32 %5, ptr %md_region, align 4, !dbg !2703
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_no) #9, !dbg !2707
  tail call void @llvm.dbg.declare(metadata ptr %page_no, metadata !2687, metadata !DIExpression()), !dbg !2708
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_written_pages) #9, !dbg !2709
  tail call void @llvm.dbg.declare(metadata ptr %num_written_pages, metadata !2688, metadata !DIExpression()), !dbg !2710
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_md_buf) #9, !dbg !2711
  tail call void @llvm.dbg.declare(metadata ptr %page_md_buf, metadata !2689, metadata !DIExpression()), !dbg !2712
  %6 = load i32, ptr %md_region, align 4, !dbg !2713
  %cmp = icmp ult i32 %6, 10, !dbg !2715
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2716

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, ptr %md_region, align 4, !dbg !2717
  %cmp3 = icmp ugt i32 %7, 13, !dbg !2718
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2719

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !2720
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2720

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %band.addr, align 8, !dbg !2722
  %md4 = getelementptr inbounds %struct.ftl_band, ptr %8, i32 0, i32 1, !dbg !2723
  %9 = load ptr, ptr %md4, align 8, !dbg !2723
  %iter = getelementptr inbounds %struct.ftl_band_md, ptr %9, i32 0, i32 0, !dbg !2724
  %offset = getelementptr inbounds %struct.anon.93, ptr %iter, i32 0, i32 1, !dbg !2725
  %10 = load i64, ptr %offset, align 1, !dbg !2725
  %div = udiv i64 %10, 256, !dbg !2726
  store i64 %div, ptr %num_written_pages, align 8, !dbg !2727
  %11 = load ptr, ptr %band.addr, align 8, !dbg !2728
  %p2l_map = getelementptr inbounds %struct.ftl_band, ptr %11, i32 0, i32 4, !dbg !2730
  %p2l_ckpt = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map, i32 0, i32 5, !dbg !2731
  %12 = load ptr, ptr %p2l_ckpt, align 8, !dbg !2731
  %tobool = icmp ne ptr %12, null, !dbg !2728
  br i1 %tobool, label %if.end8, label %if.then5, !dbg !2732

if.then5:                                         ; preds = %if.end
  %13 = load ptr, ptr %dev, align 8, !dbg !2733
  %14 = load i32, ptr %md_region, align 4, !dbg !2735
  %call = call ptr @ftl_p2l_ckpt_acquire_region_type(ptr noundef %13, i32 noundef %14), !dbg !2736
  %15 = load ptr, ptr %band.addr, align 8, !dbg !2737
  %p2l_map6 = getelementptr inbounds %struct.ftl_band, ptr %15, i32 0, i32 4, !dbg !2738
  %p2l_ckpt7 = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map6, i32 0, i32 5, !dbg !2739
  store ptr %call, ptr %p2l_ckpt7, align 8, !dbg !2740
  br label %if.end8, !dbg !2741

if.end8:                                          ; preds = %if.then5, %if.end
  %16 = load ptr, ptr %band.addr, align 8, !dbg !2742
  %md9 = getelementptr inbounds %struct.ftl_band, ptr %16, i32 0, i32 1, !dbg !2744
  %17 = load ptr, ptr %md9, align 8, !dbg !2744
  %iter10 = getelementptr inbounds %struct.ftl_band_md, ptr %17, i32 0, i32 0, !dbg !2745
  %offset11 = getelementptr inbounds %struct.anon.93, ptr %iter10, i32 0, i32 1, !dbg !2746
  %18 = load i64, ptr %offset11, align 1, !dbg !2746
  %cmp12 = icmp eq i64 %18, 0, !dbg !2747
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2748

if.then13:                                        ; preds = %if.end8
  store i32 0, ptr %retval, align 4, !dbg !2749
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2749

if.end14:                                         ; preds = %if.end8
  store i64 0, ptr %page_no, align 8, !dbg !2751
  %19 = load ptr, ptr %layout, align 8, !dbg !2752
  %md15 = getelementptr inbounds %struct.ftl_layout, ptr %19, i32 0, i32 5, !dbg !2753
  %20 = load i32, ptr %md_region, align 4, !dbg !2754
  %idxprom = zext i32 %20 to i64, !dbg !2752
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %md15, i64 0, i64 %idxprom, !dbg !2752
  %21 = load ptr, ptr %arrayidx, align 8, !dbg !2752
  %call16 = call ptr @ftl_md_get_vss_buffer(ptr noundef %21), !dbg !2755
  store ptr %call16, ptr %page_md_buf, align 8, !dbg !2756
  %22 = load ptr, ptr %layout, align 8, !dbg !2757
  %md17 = getelementptr inbounds %struct.ftl_layout, ptr %22, i32 0, i32 5, !dbg !2758
  %23 = load i32, ptr %md_region, align 4, !dbg !2759
  %idxprom18 = zext i32 %23 to i64, !dbg !2757
  %arrayidx19 = getelementptr inbounds [16 x ptr], ptr %md17, i64 0, i64 %idxprom18, !dbg !2757
  %24 = load ptr, ptr %arrayidx19, align 8, !dbg !2757
  %call20 = call ptr @ftl_md_get_buffer(ptr noundef %24), !dbg !2760
  store ptr %call20, ptr %page, align 8, !dbg !2761
  br label %for.cond, !dbg !2762

for.cond:                                         ; preds = %for.inc, %if.end14
  %25 = load i64, ptr %page_no, align 8, !dbg !2763
  %26 = load i64, ptr %num_written_pages, align 8, !dbg !2766
  %cmp21 = icmp ult i64 %25, %26, !dbg !2767
  br i1 %cmp21, label %for.body, label %for.end, !dbg !2768

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %page_md_buf, align 8, !dbg !2769
  %seq_id = getelementptr inbounds %struct.anon.91, ptr %27, i32 0, i32 0, !dbg !2772
  %28 = load i64, ptr %seq_id, align 8, !dbg !2772
  %29 = load ptr, ptr %band.addr, align 8, !dbg !2773
  %md22 = getelementptr inbounds %struct.ftl_band, ptr %29, i32 0, i32 1, !dbg !2774
  %30 = load ptr, ptr %md22, align 8, !dbg !2774
  %seq = getelementptr inbounds %struct.ftl_band_md, ptr %30, i32 0, i32 5, !dbg !2775
  %31 = load i64, ptr %seq, align 1, !dbg !2775
  %cmp23 = icmp ne i64 %28, %31, !dbg !2776
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !2777

if.then24:                                        ; preds = %for.body
  br label %if.end25, !dbg !2778

if.end25:                                         ; preds = %if.then24, %for.body
  %32 = load ptr, ptr %band.addr, align 8, !dbg !2780
  %p2l_map26 = getelementptr inbounds %struct.ftl_band, ptr %32, i32 0, i32 4, !dbg !2781
  %33 = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map26, i32 0, i32 3, !dbg !2782
  %34 = load ptr, ptr %33, align 8, !dbg !2782
  %35 = load i64, ptr %page_no, align 8, !dbg !2783
  %add.ptr = getelementptr inbounds %struct.ftl_p2l_ckpt_page, ptr %34, i64 %35, !dbg !2784
  store ptr %add.ptr, ptr %map_page, align 8, !dbg !2785
  %36 = load ptr, ptr %map_page, align 8, !dbg !2786
  %37 = load ptr, ptr %page, align 8, !dbg !2787
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %36, ptr align 8 %37, i64 4096, i1 false), !dbg !2788
  br label %for.inc, !dbg !2789

for.inc:                                          ; preds = %if.end25
  %38 = load i64, ptr %page_no, align 8, !dbg !2790
  %inc = add i64 %38, 1, !dbg !2790
  store i64 %inc, ptr %page_no, align 8, !dbg !2790
  %39 = load ptr, ptr %page, align 8, !dbg !2791
  %incdec.ptr = getelementptr inbounds %struct.ftl_p2l_ckpt_page, ptr %39, i32 1, !dbg !2791
  store ptr %incdec.ptr, ptr %page, align 8, !dbg !2791
  %40 = load ptr, ptr %page_md_buf, align 8, !dbg !2792
  %incdec.ptr27 = getelementptr inbounds %union.ftl_md_vss, ptr %40, i32 1, !dbg !2792
  store ptr %incdec.ptr27, ptr %page_md_buf, align 8, !dbg !2792
  br label %for.cond, !dbg !2793, !llvm.loop !2794

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2796

cleanup:                                          ; preds = %for.end, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_md_buf) #9, !dbg !2797
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_written_pages) #9, !dbg !2797
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_no) #9, !dbg !2797
  call void @llvm.lifetime.end.p0(i64 4, ptr %md_region) #9, !dbg !2797
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_page) #9, !dbg !2797
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #9, !dbg !2797
  call void @llvm.lifetime.end.p0(i64 8, ptr %layout) #9, !dbg !2797
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #9, !dbg !2797
  %41 = load i32, ptr %retval, align 4, !dbg !2797
  ret i32 %41, !dbg !2797
}

; Function Attrs: nounwind ssp uwtable
define void @ftl_mngt_p2l_ckpt_restore_shm_clean(ptr noundef %band) #0 !dbg !2798 {
entry:
  %band.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %md_region = alloca i32, align 4
  store ptr %band, ptr %band.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %band.addr, metadata !2800, metadata !DIExpression()), !dbg !2803
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #9, !dbg !2804
  tail call void @llvm.dbg.declare(metadata ptr %dev, metadata !2801, metadata !DIExpression()), !dbg !2805
  %0 = load ptr, ptr %band.addr, align 8, !dbg !2806
  %dev1 = getelementptr inbounds %struct.ftl_band, ptr %0, i32 0, i32 0, !dbg !2807
  %1 = load ptr, ptr %dev1, align 8, !dbg !2807
  store ptr %1, ptr %dev, align 8, !dbg !2805
  call void @llvm.lifetime.start.p0(i64 4, ptr %md_region) #9, !dbg !2808
  tail call void @llvm.dbg.declare(metadata ptr %md_region, metadata !2802, metadata !DIExpression()), !dbg !2809
  %2 = load ptr, ptr %band.addr, align 8, !dbg !2810
  %md = getelementptr inbounds %struct.ftl_band, ptr %2, i32 0, i32 1, !dbg !2811
  %3 = load ptr, ptr %md, align 8, !dbg !2811
  %p2l_md_region = getelementptr inbounds %struct.ftl_band_md, ptr %3, i32 0, i32 3, !dbg !2812
  %4 = load i32, ptr %p2l_md_region, align 1, !dbg !2812
  store i32 %4, ptr %md_region, align 4, !dbg !2809
  %5 = load ptr, ptr %band.addr, align 8, !dbg !2813
  %p2l_map = getelementptr inbounds %struct.ftl_band, ptr %5, i32 0, i32 4, !dbg !2815
  %p2l_ckpt = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map, i32 0, i32 5, !dbg !2816
  %6 = load ptr, ptr %p2l_ckpt, align 8, !dbg !2816
  %tobool = icmp ne ptr %6, null, !dbg !2813
  br i1 %tobool, label %if.end, label %if.then, !dbg !2817

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %dev, align 8, !dbg !2818
  %8 = load i32, ptr %md_region, align 4, !dbg !2820
  %call = call ptr @ftl_p2l_ckpt_acquire_region_type(ptr noundef %7, i32 noundef %8), !dbg !2821
  %9 = load ptr, ptr %band.addr, align 8, !dbg !2822
  %p2l_map2 = getelementptr inbounds %struct.ftl_band, ptr %9, i32 0, i32 4, !dbg !2823
  %p2l_ckpt3 = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map2, i32 0, i32 5, !dbg !2824
  store ptr %call, ptr %p2l_ckpt3, align 8, !dbg !2825
  br label %if.end, !dbg !2826

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %md_region) #9, !dbg !2827
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #9, !dbg !2827
  ret void, !dbg !2827
}

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !2828 noalias ptr @calloc(i64 noundef, i64 noundef) #5

declare !dbg !2832 ptr @ftl_md_vss_buf_alloc(ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i64 @spdk_divide_round_up(i64 noundef %num, i64 noundef %divisor) #4 !dbg !2835 {
entry:
  %num.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  store i64 %num, ptr %num.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !2840, metadata !DIExpression()), !dbg !2842
  store i64 %divisor, ptr %divisor.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !2841, metadata !DIExpression()), !dbg !2843
  %0 = load i64, ptr %num.addr, align 8, !dbg !2844
  %1 = load i64, ptr %divisor.addr, align 8, !dbg !2845
  %add = add i64 %0, %1, !dbg !2846
  %sub = sub i64 %add, 1, !dbg !2847
  %2 = load i64, ptr %divisor.addr, align 8, !dbg !2848
  %div = udiv i64 %sub, %2, !dbg !2849
  ret i64 %div, !dbg !2850
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i64 @ftl_get_num_blocks_in_band(ptr noundef %dev) #4 !dbg !2851 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2857, metadata !DIExpression()), !dbg !2858
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2859
  %num_blocks_in_band = getelementptr inbounds %struct.spdk_ftl_dev, ptr %0, i32 0, i32 7, !dbg !2860
  %1 = load i64, ptr %num_blocks_in_band, align 8, !dbg !2860
  ret i64 %1, !dbg !2861
}

; Function Attrs: nounwind
declare !dbg !2862 void @free(ptr noundef) #6

declare !dbg !2863 void @spdk_dma_free(ptr noundef) #2

; Function Attrs: noreturn nounwind
declare !dbg !2864 void @abort() #7

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i64 @ftl_get_num_bands(ptr noundef %dev) #4 !dbg !2865 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2867, metadata !DIExpression()), !dbg !2868
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2869
  %num_bands = getelementptr inbounds %struct.spdk_ftl_dev, ptr %0, i32 0, i32 20, !dbg !2870
  %1 = load i64, ptr %num_bands, align 8, !dbg !2870
  ret i64 %1, !dbg !2871
}

; Function Attrs: nounwind ssp uwtable
define internal void @ftl_p2l_ckpt_persist_end(i32 noundef %status, ptr noundef %arg) #0 !dbg !2872 {
entry:
  %status.addr = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  %mngt = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %status, ptr %status.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2874, metadata !DIExpression()), !dbg !2878
  store ptr %arg, ptr %arg.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !2875, metadata !DIExpression()), !dbg !2879
  call void @llvm.lifetime.start.p0(i64 8, ptr %mngt) #9, !dbg !2880
  tail call void @llvm.dbg.declare(metadata ptr %mngt, metadata !2876, metadata !DIExpression()), !dbg !2881
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !2882
  store ptr %0, ptr %mngt, align 8, !dbg !2881
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #9, !dbg !2883
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2877, metadata !DIExpression()), !dbg !2884
  %1 = load i32, ptr %status.addr, align 4, !dbg !2885
  %tobool = icmp ne i32 %1, 0, !dbg !2885
  br i1 %tobool, label %if.then, label %if.end, !dbg !2887

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %mngt, align 8, !dbg !2888
  call void @ftl_mngt_fail_step(ptr noundef %2), !dbg !2890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2891

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %mngt, align 8, !dbg !2892
  %call = call ptr @ftl_mngt_get_step_ctx(ptr noundef %3), !dbg !2893
  store ptr %call, ptr %ctx, align 8, !dbg !2894
  %4 = load ptr, ptr %ctx, align 8, !dbg !2895
  %page_start = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %4, i32 0, i32 1, !dbg !2896
  %5 = load i64, ptr %page_start, align 8, !dbg !2897
  %inc = add i64 %5, 1, !dbg !2897
  store i64 %inc, ptr %page_start, align 8, !dbg !2897
  %6 = load ptr, ptr %ctx, align 8, !dbg !2898
  %page_start1 = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %6, i32 0, i32 1, !dbg !2900
  %7 = load i64, ptr %page_start1, align 8, !dbg !2900
  %8 = load ptr, ptr %ctx, align 8, !dbg !2901
  %page_end = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %8, i32 0, i32 2, !dbg !2902
  %9 = load i64, ptr %page_end, align 8, !dbg !2902
  %cmp = icmp eq i64 %7, %9, !dbg !2903
  br i1 %cmp, label %if.then2, label %if.else, !dbg !2904

if.then2:                                         ; preds = %if.end
  %10 = load ptr, ptr %ctx, align 8, !dbg !2905
  %md_region = getelementptr inbounds %struct.ftl_p2l_sync_ctx, ptr %10, i32 0, i32 3, !dbg !2907
  %11 = load i32, ptr %md_region, align 8, !dbg !2908
  %inc3 = add nsw i32 %11, 1, !dbg !2908
  store i32 %inc3, ptr %md_region, align 8, !dbg !2908
  %12 = load ptr, ptr %mngt, align 8, !dbg !2909
  call void @ftl_mngt_continue_step(ptr noundef %12), !dbg !2910
  br label %if.end4, !dbg !2911

if.else:                                          ; preds = %if.end
  %13 = load ptr, ptr %mngt, align 8, !dbg !2912
  %14 = load ptr, ptr %ctx, align 8, !dbg !2914
  call void @ftl_mngt_persist_band_p2l(ptr noundef %13, ptr noundef %14), !dbg !2915
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2916
  br label %cleanup, !dbg !2916

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #9, !dbg !2916
  call void @llvm.lifetime.end.p0(i64 8, ptr %mngt) #9, !dbg !2916
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2916

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !2917 void @ftl_mngt_fail_step(ptr noundef) #2

declare !dbg !2918 i64 @ftl_band_next_xfer_addr(ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #5 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !129, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "ftl_p2l.c", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "7fbe4aa15c309d1de34e6e77341870d8")
!2 = !{!3, !26, !32, !39, !47, !71, !77, !82, !89, !100, !105, !113, !119}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_layout_region_type", file: !4, line: 17, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./ftl_layout.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "c37eaa6ae940715128424a248a8af236")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!7 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_SB", value: 0)
!8 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_SB_BASE", value: 1)
!9 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_L2P", value: 2)
!10 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_BAND_MD", value: 3)
!11 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_BAND_MD_MIRROR", value: 4)
!12 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_VALID_MAP", value: 5)
!13 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_NVC_MD", value: 6)
!14 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_NVC_MD_MIRROR", value: 7)
!15 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_DATA_NVC", value: 8)
!16 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_DATA_BASE", value: 9)
!17 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_P2L_CKPT_GC", value: 10)
!18 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_P2L_CKPT_MIN", value: 10)
!19 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_P2L_CKPT_GC_NEXT", value: 11)
!20 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_P2L_CKPT_COMP", value: 12)
!21 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_P2L_CKPT_COMP_NEXT", value: 13)
!22 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_P2L_CKPT_MAX", value: 13)
!23 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_TRIM_MD", value: 14)
!24 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_TRIM_MD_MIRROR", value: 15)
!25 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_MAX", value: 16)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_md_ops", file: !27, line: 18, baseType: !5, size: 32, elements: !28)
!27 = !DIFile(filename: "./utils/ftl_md.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "011f7dc1d5bafce8f248087afb1a211c")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "FTL_MD_OP_RESTORE", value: 0)
!30 = !DIEnumerator(name: "FTL_MD_OP_PERSIST", value: 1)
!31 = !DIEnumerator(name: "FTL_MD_OP_CLEAR", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_dif_type", file: !33, line: 20, baseType: !5, size: 32, elements: !34)
!33 = !DIFile(filename: "include/spdk/dif.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "c6ca37928eafdb9814aa3322e1de958c")
!34 = !{!35, !36, !37, !38}
!35 = !DIEnumerator(name: "SPDK_DIF_DISABLE", value: 0)
!36 = !DIEnumerator(name: "SPDK_DIF_TYPE1", value: 1)
!37 = !DIEnumerator(name: "SPDK_DIF_TYPE2", value: 2)
!38 = !DIEnumerator(name: "SPDK_DIF_TYPE3", value: 3)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_bdev_zone_action", file: !40, line: 34, baseType: !5, size: 32, elements: !41)
!40 = !DIFile(filename: "include/spdk/bdev_zone.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "416a1b9a014eb731794352778f7877d4")
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "SPDK_BDEV_ZONE_CLOSE", value: 0)
!43 = !DIEnumerator(name: "SPDK_BDEV_ZONE_FINISH", value: 1)
!44 = !DIEnumerator(name: "SPDK_BDEV_ZONE_OPEN", value: 2)
!45 = !DIEnumerator(name: "SPDK_BDEV_ZONE_RESET", value: 3)
!46 = !DIEnumerator(name: "SPDK_BDEV_ZONE_OFFLINE", value: 4)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_bdev_io_type", file: !48, line: 102, baseType: !5, size: 32, elements: !49)
!48 = !DIFile(filename: "include/spdk/bdev.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "ad5de07e01a6cdcb8de0ed834fd6bc82")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!50 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_INVALID", value: 0)
!51 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_READ", value: 1)
!52 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_WRITE", value: 2)
!53 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_UNMAP", value: 3)
!54 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_FLUSH", value: 4)
!55 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_RESET", value: 5)
!56 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_NVME_ADMIN", value: 6)
!57 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_NVME_IO", value: 7)
!58 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_NVME_IO_MD", value: 8)
!59 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_WRITE_ZEROES", value: 9)
!60 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_ZCOPY", value: 10)
!61 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_GET_ZONE_INFO", value: 11)
!62 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_ZONE_MANAGEMENT", value: 12)
!63 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_ZONE_APPEND", value: 13)
!64 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_COMPARE", value: 14)
!65 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_COMPARE_AND_WRITE", value: 15)
!66 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_ABORT", value: 16)
!67 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_SEEK_HOLE", value: 17)
!68 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_SEEK_DATA", value: 18)
!69 = !DIEnumerator(name: "SPDK_BDEV_IO_TYPE_COPY", value: 19)
!70 = !DIEnumerator(name: "SPDK_BDEV_NUM_IO_TYPES", value: 20)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_bdev_status", file: !48, line: 89, baseType: !5, size: 32, elements: !72)
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "SPDK_BDEV_STATUS_INVALID", value: 0)
!74 = !DIEnumerator(name: "SPDK_BDEV_STATUS_READY", value: 1)
!75 = !DIEnumerator(name: "SPDK_BDEV_STATUS_UNREGISTERING", value: 2)
!76 = !DIEnumerator(name: "SPDK_BDEV_STATUS_REMOVING", value: 3)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_bdev_claim_type", file: !78, line: 165, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "include/spdk/bdev_module.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "f3e5f69dba00acf2eaaf56f163ec4e42")
!79 = !{!80, !81}
!80 = !DIEnumerator(name: "SPDK_BDEV_CLAIM_NONE", value: 0)
!81 = !DIEnumerator(name: "SPDK_BDEV_CLAIM_EXCL_WRITE", value: 1)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_chunk_state", file: !83, line: 52, baseType: !5, size: 32, elements: !84)
!83 = !DIFile(filename: "./ftl_nv_cache.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "ab40a95371e7ce0e8bb4a747c54fba17")
!84 = !{!85, !86, !87, !88}
!85 = !DIEnumerator(name: "FTL_CHUNK_STATE_FREE", value: 0)
!86 = !DIEnumerator(name: "FTL_CHUNK_STATE_OPEN", value: 1)
!87 = !DIEnumerator(name: "FTL_CHUNK_STATE_CLOSED", value: 2)
!88 = !DIEnumerator(name: "FTL_CHUNK_STATE_MAX", value: 3)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_band_state", file: !90, line: 32, baseType: !5, size: 32, elements: !91)
!90 = !DIFile(filename: "./ftl_band.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "2f90dc4b982c4db102e2fcc4c0df5efa")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99}
!92 = !DIEnumerator(name: "FTL_BAND_STATE_FREE", value: 0)
!93 = !DIEnumerator(name: "FTL_BAND_STATE_PREP", value: 1)
!94 = !DIEnumerator(name: "FTL_BAND_STATE_OPENING", value: 2)
!95 = !DIEnumerator(name: "FTL_BAND_STATE_OPEN", value: 3)
!96 = !DIEnumerator(name: "FTL_BAND_STATE_FULL", value: 4)
!97 = !DIEnumerator(name: "FTL_BAND_STATE_CLOSING", value: 5)
!98 = !DIEnumerator(name: "FTL_BAND_STATE_CLOSED", value: 6)
!99 = !DIEnumerator(name: "FTL_BAND_STATE_MAX", value: 7)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_band_type", file: !101, line: 41, baseType: !5, size: 32, elements: !102)
!101 = !DIFile(filename: "./ftl_internal.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "639459d74dde441eb9b190068b535de4")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "FTL_BAND_TYPE_GC", value: 1)
!104 = !DIEnumerator(name: "FTL_BAND_TYPE_COMPACTION", value: 2)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_md_status", file: !101, line: 46, baseType: !5, size: 32, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112}
!107 = !DIEnumerator(name: "FTL_MD_SUCCESS", value: 0)
!108 = !DIEnumerator(name: "FTL_MD_IO_FAILURE", value: 1)
!109 = !DIEnumerator(name: "FTL_MD_INVALID_VER", value: 2)
!110 = !DIEnumerator(name: "FTL_MD_NO_MD", value: 3)
!111 = !DIEnumerator(name: "FTL_MD_INVALID_CRC", value: 4)
!112 = !DIEnumerator(name: "FTL_MD_INVALID_SIZE", value: 5)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_io_type", file: !114, line: 34, baseType: !5, size: 32, elements: !115)
!114 = !DIFile(filename: "./ftl_io.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "dbc694b485774c77420341a94dbbe416")
!115 = !{!116, !117, !118}
!116 = !DIEnumerator(name: "FTL_IO_READ", value: 0)
!117 = !DIEnumerator(name: "FTL_IO_WRITE", value: 1)
!118 = !DIEnumerator(name: "FTL_IO_UNMAP", value: 2)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_stats_type", file: !120, line: 47, baseType: !5, size: 32, elements: !121)
!120 = !DIFile(filename: "include/spdk/ftl.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "39b048091f7c910e883a0ee44a4990de")
!121 = !{!122, !123, !124, !125, !126, !127, !128}
!122 = !DIEnumerator(name: "FTL_STATS_TYPE_USER", value: 0)
!123 = !DIEnumerator(name: "FTL_STATS_TYPE_CMP", value: 1)
!124 = !DIEnumerator(name: "FTL_STATS_TYPE_GC", value: 2)
!125 = !DIEnumerator(name: "FTL_STATS_TYPE_MD_BASE", value: 3)
!126 = !DIEnumerator(name: "FTL_STATS_TYPE_MD_NV_CACHE", value: 4)
!127 = !DIEnumerator(name: "FTL_STATS_TYPE_L2P", value: 5)
!128 = !DIEnumerator(name: "FTL_STATS_TYPE_MAX", value: 6)
!129 = !{!130, !131, !139}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_p2l_ckpt_page", file: !101, line: 110, size: 32768, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !132, file: !101, line: 111, baseType: !135, size: 32768)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 32768, elements: !145)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_p2l_map_entry", file: !101, line: 60, size: 128, elements: !137)
!137 = !{!138, !144}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "lba", scope: !136, file: !101, line: 61, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !140, line: 27, baseType: !141)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !142, line: 45, baseType: !143)
!142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!143 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "seq_id", scope: !136, file: !101, line: 62, baseType: !139, size: 64, offset: 64)
!145 = !{!146}
!146 = !DISubrange(count: 256)
!147 = !{i32 7, !"Dwarf Version", i32 5}
!148 = !{i32 2, !"Debug Info Version", i32 3}
!149 = !{i32 1, !"wchar_size", i32 4}
!150 = !{i32 8, !"PIC Level", i32 2}
!151 = !{i32 7, !"uwtable", i32 2}
!152 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!153 = distinct !DISubprogram(name: "ftl_p2l_ckpt_init", scope: !1, file: !1, line: 77, type: !154, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1792)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !157}
!156 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_ftl_dev", file: !159, line: 42, size: 30720, elements: !160)
!159 = !DIFile(filename: "./ftl_core.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "37cad5a800a858b02f32e26afc2ef2b0")
!160 = !{!161, !210, !1172, !1199, !1213, !1214, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1247, !1635, !1636, !1637, !1638, !1643, !1667, !1668, !1669, !1670, !1675, !1680, !1681, !1682, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1696, !1697, !1698, !1699, !1700, !1740, !1745, !1750, !1751, !1752, !1753, !1754, !1776, !1777, !1778, !1779}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !158, file: !159, line: 44, baseType: !162, size: 1088)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_ftl_conf", file: !120, line: 81, size: 1088, elements: !163)
!163 = !{!164, !167, !181, !182, !185, !186, !187, !191, !194, !199, !201, !202, !203, !205, !209}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !120, line: 83, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !162, file: !120, line: 86, baseType: !168, size: 128, offset: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_uuid", file: !169, line: 21, size: 128, elements: !170)
!169 = !DIFile(filename: "include/spdk/uuid.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "184998928e884963453b933bb411eaa6")
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !168, file: !169, line: 24, baseType: !172, size: 128)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !169, line: 22, size: 128, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !172, file: !169, line: 23, baseType: !175, size: 128)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, elements: !179)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !140, line: 24, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !142, line: 38, baseType: !178)
!178 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!179 = !{!180}
!180 = !DISubrange(count: 16)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "overprovisioning", scope: !162, file: !120, line: 89, baseType: !139, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "l2p_dram_limit", scope: !162, file: !120, line: 92, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !184, line: 29, baseType: !143)
!184 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!185 = !DIDerivedType(tag: DW_TAG_member, name: "core_mask", scope: !162, file: !120, line: 95, baseType: !165, size: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "user_io_pool_size", scope: !162, file: !120, line: 98, baseType: !183, size: 64, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !162, file: !120, line: 101, baseType: !188, size: 256, offset: 448)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 256, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 4)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !162, file: !120, line: 104, baseType: !192, size: 32, offset: 704)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !140, line: 26, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !142, line: 42, baseType: !5)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nv_cache", scope: !162, file: !120, line: 112, baseType: !195, size: 64, offset: 736)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !162, file: !120, line: 106, size: 64, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_compaction_threshold", scope: !195, file: !120, line: 108, baseType: !192, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_free_target", scope: !195, file: !120, line: 111, baseType: !192, size: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !162, file: !120, line: 115, baseType: !200, size: 32, offset: 800)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 32, elements: !189)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "base_bdev", scope: !162, file: !120, line: 118, baseType: !165, size: 64, offset: 832)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bdev", scope: !162, file: !120, line: 121, baseType: !165, size: 64, offset: 896)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "fast_shutdown", scope: !162, file: !120, line: 124, baseType: !204, size: 8, offset: 960)
!204 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !162, file: !120, line: 127, baseType: !206, size: 56, offset: 968)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 56, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 7)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "conf_size", scope: !162, file: !120, line: 134, baseType: !183, size: 64, offset: 1024)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "layout", scope: !158, file: !159, line: 47, baseType: !211, size: 17152, offset: 1088)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_layout", file: !4, line: 127, size: 17152, elements: !212)
!212 = !{!213, !219, !227, !233, !237, !274}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !211, file: !4, line: 133, baseType: !214, size: 192)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !4, line: 129, size: 192, elements: !215)
!215 = !{!216, !217, !218}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "total_blocks", scope: !214, file: !4, line: 130, baseType: !139, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "num_usable_blocks", scope: !214, file: !4, line: 131, baseType: !139, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "user_blocks", scope: !214, file: !4, line: 132, baseType: !139, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "nvc", scope: !211, file: !4, line: 142, baseType: !220, size: 320, offset: 192)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !4, line: 136, size: 320, elements: !221)
!221 = !{!222, !223, !224, !225, !226}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "total_blocks", scope: !220, file: !4, line: 137, baseType: !139, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_data_blocks", scope: !220, file: !4, line: 138, baseType: !139, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_meta_size", scope: !220, file: !4, line: 139, baseType: !139, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_count", scope: !220, file: !4, line: 140, baseType: !139, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_tail_md_num_blocks", scope: !220, file: !4, line: 141, baseType: !139, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "l2p", scope: !211, file: !4, line: 152, baseType: !228, size: 192, offset: 512)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !4, line: 145, size: 192, elements: !229)
!229 = !{!230, !231, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "addr_length", scope: !228, file: !4, line: 147, baseType: !139, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "addr_size", scope: !228, file: !4, line: 149, baseType: !139, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "lbas_in_page", scope: !228, file: !4, line: 151, baseType: !139, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "p2l", scope: !211, file: !4, line: 158, baseType: !234, size: 64, offset: 704)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !4, line: 155, size: 64, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ckpt_pages", scope: !234, file: !4, line: 157, baseType: !139, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !211, file: !4, line: 160, baseType: !238, size: 15360, offset: 768)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 15360, elements: !179)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_layout_region", file: !4, line: 88, size: 960, elements: !240)
!240 = !{!241, !244, !245, !246, !264, !265, !266, !267, !268, !271}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !4, line: 90, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !239, file: !4, line: 93, baseType: !3, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "mirror_type", scope: !239, file: !4, line: 96, baseType: !3, size: 32, offset: 96)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !239, file: !4, line: 99, baseType: !247, size: 256, offset: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_layout_region_descriptor", file: !4, line: 74, size: 256, elements: !248)
!248 = !{!249, !250, !251, !252}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !247, file: !4, line: 76, baseType: !139, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !247, file: !4, line: 79, baseType: !139, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !247, file: !4, line: 82, baseType: !139, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sb_md_reg", scope: !247, file: !4, line: 84, baseType: !253, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_superblock_md_region", file: !255, line: 48, size: 256, elements: !256)
!255 = !DIFile(filename: "./ftl_sb_common.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "4e2b3ed6e002be341073dc542da38b27")
!256 = !{!257, !258, !259, !260, !261}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !254, file: !255, line: 49, baseType: !192, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !254, file: !255, line: 50, baseType: !192, size: 32, offset: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "blk_offs", scope: !254, file: !255, line: 51, baseType: !139, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "blk_sz", scope: !254, file: !255, line: 52, baseType: !139, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "df_next", scope: !254, file: !255, line: 53, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_df_obj_id", file: !263, line: 12, baseType: !139)
!263 = !DIFile(filename: "./utils/ftl_df.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "52ec2517c2959b262ff51f96d4eec83e")
!264 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !239, file: !4, line: 102, baseType: !247, size: 256, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "entry_size", scope: !239, file: !4, line: 109, baseType: !139, size: 64, offset: 640)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !239, file: !4, line: 112, baseType: !139, size: 64, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "vss_blksz", scope: !239, file: !4, line: 115, baseType: !139, size: 64, offset: 768)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_desc", scope: !239, file: !4, line: 118, baseType: !269, size: 64, offset: 832)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_desc", file: !48, line: 99, flags: DIFlagFwdDecl)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ioch", scope: !239, file: !4, line: 121, baseType: !272, size: 64, offset: 896)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_io_channel", file: !48, line: 84, flags: DIFlagFwdDecl)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !211, file: !4, line: 163, baseType: !275, size: 1024, offset: 16128)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 1024, elements: !179)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_md", file: !27, line: 28, size: 3776, elements: !278)
!278 = !{!279, !284, !289, !290, !293, !294, !295, !296, !297, !1151, !1152, !1154, !1155, !1156, !1164, !1169, !1170, !1171}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !277, file: !27, line: 36, baseType: !280, size: 128)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !277, file: !27, line: 30, size: 128, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !280, file: !27, line: 32, baseType: !130, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cb_ctx", scope: !280, file: !27, line: 35, baseType: !130, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !277, file: !27, line: 39, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_md_cb", file: !27, line: 16, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !157, !276, !156}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !277, file: !27, line: 42, baseType: !157, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !277, file: !27, line: 45, baseType: !291, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !277, file: !27, line: 48, baseType: !130, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "data_blocks", scope: !277, file: !27, line: 51, baseType: !139, size: 64, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "vss_data", scope: !277, file: !27, line: 54, baseType: !130, size: 64, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "entry_vss_dma_buf", scope: !277, file: !27, line: 57, baseType: !130, size: 64, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !277, file: !27, line: 69, baseType: !298, size: 704, offset: 576)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !277, file: !27, line: 60, size: 704, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !298, file: !27, line: 61, baseType: !130, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !298, file: !27, line: 62, baseType: !130, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !298, file: !27, line: 63, baseType: !139, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !298, file: !27, line: 64, baseType: !139, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "data_offset", scope: !298, file: !27, line: 65, baseType: !139, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !298, file: !27, line: 66, baseType: !156, size: 32, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !298, file: !27, line: 67, baseType: !26, size: 32, offset: 352)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_io_wait", scope: !298, file: !27, line: 68, baseType: !308, size: 320, offset: 384)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_io_wait_entry", file: !48, line: 1790, size: 320, elements: !309)
!309 = !{!310, !1141, !1143, !1144}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !308, file: !48, line: 1791, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev", file: !78, line: 318, size: 3648, elements: !313)
!313 = !{!314, !315, !316, !342, !343, !344, !345, !346, !347, !348, !349, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !428, !1057}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !312, file: !78, line: 320, baseType: !130, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !78, line: 323, baseType: !165, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "aliases", scope: !312, file: !78, line: 326, baseType: !317, size: 128, offset: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_aliases_list", file: !78, line: 326, size: 128, elements: !318)
!318 = !{!319, !341}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !317, file: !78, line: 326, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_alias", file: !78, line: 309, size: 448, elements: !322)
!322 = !{!323, !335}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !321, file: !78, line: 310, baseType: !324, size: 320)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_name", file: !78, line: 303, size: 320, elements: !325)
!325 = !{!326, !327, !328}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !324, file: !78, line: 304, baseType: !165, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !324, file: !78, line: 305, baseType: !311, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !324, file: !78, line: 306, baseType: !329, size: 192, offset: 128)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !78, line: 306, size: 192, elements: !330)
!330 = !{!331, !333, !334}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "rbe_left", scope: !329, file: !78, line: 306, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rbe_right", scope: !329, file: !78, line: 306, baseType: !332, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rbe_parent", scope: !329, file: !78, line: 306, baseType: !332, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tailq", scope: !321, file: !78, line: 311, baseType: !336, size: 128, offset: 320)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !321, file: !78, line: 311, size: 128, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !336, file: !78, line: 311, baseType: !320, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !336, file: !78, line: 311, baseType: !340, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !317, file: !78, line: 326, baseType: !340, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "product_name", scope: !312, file: !78, line: 329, baseType: !165, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "write_cache", scope: !312, file: !78, line: 332, baseType: !156, size: 32, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "blocklen", scope: !312, file: !78, line: 335, baseType: !192, size: 32, offset: 352)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "phys_blocklen", scope: !312, file: !78, line: 338, baseType: !192, size: 32, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "blockcnt", scope: !312, file: !78, line: 341, baseType: !139, size: 64, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "split_on_write_unit", scope: !312, file: !78, line: 355, baseType: !204, size: 8, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "write_unit_size", scope: !312, file: !78, line: 358, baseType: !192, size: 32, offset: 544)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "acwu", scope: !312, file: !78, line: 361, baseType: !350, size: 16, offset: 576)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !140, line: 25, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !142, line: 40, baseType: !352)
!352 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "required_alignment", scope: !312, file: !78, line: 370, baseType: !176, size: 8, offset: 592)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "split_on_optimal_io_boundary", scope: !312, file: !78, line: 381, baseType: !204, size: 8, offset: 600)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "optimal_io_boundary", scope: !312, file: !78, line: 386, baseType: !192, size: 32, offset: 608)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !312, file: !78, line: 394, baseType: !192, size: 32, offset: 640)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_segments", scope: !312, file: !78, line: 397, baseType: !192, size: 32, offset: 672)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "max_unmap", scope: !312, file: !78, line: 400, baseType: !192, size: 32, offset: 704)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "max_unmap_segments", scope: !312, file: !78, line: 403, baseType: !192, size: 32, offset: 736)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes", scope: !312, file: !78, line: 406, baseType: !192, size: 32, offset: 768)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "max_copy", scope: !312, file: !78, line: 409, baseType: !192, size: 32, offset: 800)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !312, file: !78, line: 416, baseType: !168, size: 128, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "md_len", scope: !312, file: !78, line: 419, baseType: !192, size: 32, offset: 960)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "md_interleave", scope: !312, file: !78, line: 427, baseType: !204, size: 8, offset: 992)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "dif_type", scope: !312, file: !78, line: 434, baseType: !32, size: 32, offset: 1024)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "dif_is_head_of_md", scope: !312, file: !78, line: 444, baseType: !204, size: 8, offset: 1056)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "dif_check_flags", scope: !312, file: !78, line: 449, baseType: !192, size: 32, offset: 1088)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !312, file: !78, line: 454, baseType: !204, size: 8, offset: 1120)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "zone_size", scope: !312, file: !78, line: 459, baseType: !139, size: 64, offset: 1152)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_size", scope: !312, file: !78, line: 464, baseType: !192, size: 32, offset: 1216)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "max_open_zones", scope: !312, file: !78, line: 469, baseType: !192, size: 32, offset: 1248)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "max_active_zones", scope: !312, file: !78, line: 474, baseType: !192, size: 32, offset: 1280)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "optimal_open_zones", scope: !312, file: !78, line: 479, baseType: !192, size: 32, offset: 1312)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "media_events", scope: !312, file: !78, line: 484, baseType: !204, size: 8, offset: 1344)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "reset_io_drain_timeout", scope: !312, file: !78, line: 503, baseType: !350, size: 16, offset: 1360)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !312, file: !78, line: 508, baseType: !377, size: 64, offset: 1408)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_module", file: !78, line: 37, size: 960, elements: !379)
!379 = !{!380, !384, !388, !389, !390, !397, !398, !399, !403, !404, !405, !406, !407}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "module_init", scope: !378, file: !78, line: 44, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!156}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "init_complete", scope: !378, file: !78, line: 52, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "fini_start", scope: !378, file: !78, line: 64, baseType: !385, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "module_fini", scope: !378, file: !78, line: 73, baseType: !385, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "config_json", scope: !378, file: !78, line: 89, baseType: !391, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!156, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_json_write_ctx", file: !396, line: 173, flags: DIFlagFwdDecl)
!396 = !DIFile(filename: "include/spdk/json.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "2503f979e3d49afab298cb349bb94ec6")
!397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !378, file: !78, line: 92, baseType: !242, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "get_ctx_size", scope: !378, file: !78, line: 98, baseType: !381, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "examine_config", scope: !378, file: !78, line: 111, baseType: !400, size: 64, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !311}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "examine_disk", scope: !378, file: !78, line: 119, baseType: !400, size: 64, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "async_init", scope: !378, file: !78, line: 126, baseType: !204, size: 8, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "async_fini", scope: !378, file: !78, line: 133, baseType: !204, size: 8, offset: 584)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "async_fini_start", scope: !378, file: !78, line: 140, baseType: !204, size: 8, offset: 592)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !378, file: !78, line: 161, baseType: !408, size: 320, offset: 640)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__bdev_module_internal_fields", file: !78, line: 146, size: 320, elements: !409)
!409 = !{!410, !421, !422}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !408, file: !78, line: 150, baseType: !411, size: 128)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_spinlock", file: !412, line: 915, size: 128, elements: !413)
!412 = !DIFile(filename: "include/spdk/thread.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "049d1606c4c83167baed644453ef96cb")
!413 = !{!414, !418}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !411, file: !412, line: 916, baseType: !415, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_spinlock_t", file: !416, line: 103, baseType: !417)
!416 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!417 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !156)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !411, file: !412, line: 917, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_thread", file: !412, line: 40, flags: DIFlagFwdDecl)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "action_in_progress", scope: !408, file: !78, line: 158, baseType: !192, size: 32, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "tailq", scope: !408, file: !78, line: 160, baseType: !423, size: 128, offset: 192)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !78, line: 160, size: 128, elements: !424)
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !423, file: !78, line: 160, baseType: !377, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !423, file: !78, line: 160, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "fn_table", scope: !312, file: !78, line: 511, baseType: !429, size: 64, offset: 1472)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_fn_table", file: !78, line: 215, size: 704, elements: !432)
!432 = !{!433, !437, !1020, !1024, !1028, !1032, !1036, !1040, !1044, !1049, !1053}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !431, file: !78, line: 217, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!156, !130}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "submit_request", scope: !431, file: !78, line: 220, baseType: !438, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !272, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_io", file: !78, line: 644, size: 7936, elements: !443)
!443 = !{!444, !445, !446, !447, !455, !459, !922, !928, !1016}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !442, file: !78, line: 646, baseType: !311, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !442, file: !78, line: 649, baseType: !176, size: 8, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "num_retries", scope: !442, file: !78, line: 652, baseType: !350, size: 16, offset: 80)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !442, file: !78, line: 655, baseType: !448, size: 128, offset: 128)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !449, line: 26, size: 128, elements: !450)
!449 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !448, file: !449, line: 28, baseType: !130, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !448, file: !449, line: 29, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !454, line: 70, baseType: !143)
!454 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!455 = !DIDerivedType(tag: DW_TAG_member, name: "child_iov", scope: !442, file: !78, line: 658, baseType: !456, size: 4096, offset: 256)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 4096, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !442, file: !78, line: 771, baseType: !460, size: 960, offset: 4352)
!460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !78, line: 660, size: 960, elements: !461)
!461 = !{!462, !509, !520, !524, !915}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !460, file: !78, line: 727, baseType: !463, size: 960)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !460, file: !78, line: 661, size: 960, elements: !464)
!464 = !{!465, !467, !468, !469, !470, !471, !472, !473, !483, !488, !489, !490, !491, !497, !501, !505}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "iovs", scope: !463, file: !78, line: 663, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "iovcnt", scope: !463, file: !78, line: 666, baseType: !156, size: 32, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "fused_iovs", scope: !463, file: !78, line: 671, baseType: !466, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "fused_iovcnt", scope: !463, file: !78, line: 674, baseType: !156, size: 32, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "md_buf", scope: !463, file: !78, line: 677, baseType: !130, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !463, file: !78, line: 680, baseType: !139, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "offset_blocks", scope: !463, file: !78, line: 683, baseType: !139, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ext_opts", scope: !463, file: !78, line: 686, baseType: !474, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_ext_io_opts", file: !48, line: 213, size: 256, elements: !476)
!476 = !{!477, !478, !481, !482}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !475, file: !48, line: 215, baseType: !183, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "memory_domain", scope: !475, file: !48, line: 220, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_memory_domain", file: !48, line: 220, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "memory_domain_ctx", scope: !475, file: !48, line: 222, baseType: !130, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !475, file: !48, line: 224, baseType: !130, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "stored_user_cb", scope: !463, file: !78, line: 689, baseType: !484, size: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_bdev_io_completion_cb", file: !48, line: 149, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !441, !204, !130}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "split_remaining_num_blocks", scope: !463, file: !78, line: 692, baseType: !139, size: 64, offset: 576)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "split_current_offset_blocks", scope: !463, file: !78, line: 695, baseType: !139, size: 64, offset: 640)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "split_outstanding", scope: !463, file: !78, line: 698, baseType: !192, size: 32, offset: 704)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "zcopy", scope: !463, file: !78, line: 709, baseType: !492, size: 8, offset: 736)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !78, line: 700, size: 8, elements: !493)
!493 = !{!494, !495, !496}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "populate", scope: !492, file: !78, line: 702, baseType: !176, size: 1, flags: DIFlagBitField, extraData: i64 0)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !492, file: !78, line: 705, baseType: !176, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !492, file: !78, line: 708, baseType: !176, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !463, file: !78, line: 716, baseType: !498, size: 64, offset: 768)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !78, line: 711, size: 64, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "bio_cb_arg", scope: !498, file: !78, line: 715, baseType: !130, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !463, file: !78, line: 721, baseType: !502, size: 64, offset: 832)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !78, line: 718, size: 64, elements: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !502, file: !78, line: 720, baseType: !139, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !463, file: !78, line: 726, baseType: !506, size: 64, offset: 896)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !78, line: 723, size: 64, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "src_offset_blocks", scope: !506, file: !78, line: 725, baseType: !139, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !460, file: !78, line: 737, baseType: !510, size: 192)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !460, file: !78, line: 728, size: 192, elements: !511)
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ch_ref", scope: !510, file: !78, line: 730, baseType: !272, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_poller", scope: !510, file: !78, line: 736, baseType: !514, size: 128, offset: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !510, file: !78, line: 731, size: 128, elements: !515)
!515 = !{!516, !519}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !514, file: !78, line: 733, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_poller", file: !412, line: 45, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "stop_time_tsc", scope: !514, file: !78, line: 735, baseType: !139, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !460, file: !78, line: 741, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !460, file: !78, line: 738, size: 64, elements: !522)
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "bio_to_abort", scope: !521, file: !78, line: 740, baseType: !441, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nvme_passthru", scope: !460, file: !78, line: 757, baseType: !525, size: 768)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !460, file: !78, line: 742, size: 768, elements: !526)
!526 = !{!527, !911, !912, !913, !914}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !525, file: !78, line: 744, baseType: !528, size: 512)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_cmd", file: !529, line: 1256, size: 512, elements: !530)
!529 = !DIFile(filename: "include/spdk/nvme_spec.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "3730a8a70b66ab92d6c3f7fce32e0764")
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !578, !672, !887, !908, !909, !910}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "opc", scope: !528, file: !529, line: 1258, baseType: !350, size: 8, flags: DIFlagBitField, extraData: i64 0)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "fuse", scope: !528, file: !529, line: 1259, baseType: !350, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd1", scope: !528, file: !529, line: 1260, baseType: !350, size: 4, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "psdt", scope: !528, file: !529, line: 1261, baseType: !350, size: 2, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !528, file: !529, line: 1262, baseType: !350, size: 16, offset: 16)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "nsid", scope: !528, file: !529, line: 1265, baseType: !192, size: 32, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd2", scope: !528, file: !529, line: 1268, baseType: !192, size: 32, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd3", scope: !528, file: !529, line: 1269, baseType: !192, size: 32, offset: 96)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mptr", scope: !528, file: !529, line: 1272, baseType: !139, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dptr", scope: !528, file: !529, line: 1282, baseType: !541, size: 128, offset: 192)
!541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !529, line: 1275, size: 128, elements: !542)
!542 = !{!543, !548}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "prp", scope: !541, file: !529, line: 1279, baseType: !544, size: 128)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !541, file: !529, line: 1276, size: 128, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "prp1", scope: !544, file: !529, line: 1277, baseType: !139, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "prp2", scope: !544, file: !529, line: 1278, baseType: !139, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sgl1", scope: !541, file: !529, line: 1281, baseType: !549, size: 128)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_sgl_descriptor", file: !529, line: 610, size: 128, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !549, file: !529, line: 611, baseType: !139, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, scope: !549, file: !529, line: 612, baseType: !553, size: 64, offset: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !549, file: !529, line: 612, size: 64, elements: !554)
!554 = !{!555, !561, !571}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !553, file: !529, line: 617, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !553, file: !529, line: 613, size: 64, elements: !557)
!557 = !{!558, !559, !560}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !556, file: !529, line: 614, baseType: !206, size: 56)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !556, file: !529, line: 615, baseType: !176, size: 4, offset: 56, flags: DIFlagBitField, extraData: i64 56)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !556, file: !529, line: 616, baseType: !176, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 56)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "unkeyed", scope: !553, file: !529, line: 624, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !553, file: !529, line: 619, size: 64, elements: !563)
!563 = !{!564, !565, !569, !570}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !562, file: !529, line: 620, baseType: !192, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !562, file: !529, line: 621, baseType: !566, size: 24, offset: 32)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 24, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 3)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !562, file: !529, line: 622, baseType: !176, size: 4, offset: 56, flags: DIFlagBitField, extraData: i64 56)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !562, file: !529, line: 623, baseType: !176, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 56)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "keyed", scope: !553, file: !529, line: 631, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !553, file: !529, line: 626, size: 64, elements: !573)
!573 = !{!574, !575, !576, !577}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !572, file: !529, line: 627, baseType: !139, size: 24, flags: DIFlagBitField, extraData: i64 0)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !572, file: !529, line: 628, baseType: !139, size: 32, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !572, file: !529, line: 629, baseType: !139, size: 4, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !572, file: !529, line: 630, baseType: !139, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!578 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !529, line: 1285, baseType: !579, size: 32, offset: 320)
!579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !529, line: 1285, size: 32, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "cdw10", scope: !579, file: !529, line: 1286, baseType: !192, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "cdw10_bits", scope: !579, file: !529, line: 1287, baseType: !583, size: 32)
!583 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_cmd_cdw10", file: !529, line: 1028, size: 32, elements: !584)
!584 = !{!585, !586, !592, !600, !605, !612, !617, !622, !628, !634, !639, !644, !649, !656, !664}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !583, file: !529, line: 1029, baseType: !192, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "identify", scope: !583, file: !529, line: 1036, baseType: !587, size: 32)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !529, line: 1030, size: 32, elements: !588)
!588 = !{!589, !590, !591}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "cns", scope: !587, file: !529, line: 1032, baseType: !192, size: 8, flags: DIFlagBitField, extraData: i64 0)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !587, file: !529, line: 1033, baseType: !192, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "cntid", scope: !587, file: !529, line: 1035, baseType: !192, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "get_log_page", scope: !583, file: !529, line: 1048, baseType: !593, size: 32)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !529, line: 1038, size: 32, elements: !594)
!594 = !{!595, !596, !597, !598, !599}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !593, file: !529, line: 1040, baseType: !192, size: 8, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "lsp", scope: !593, file: !529, line: 1042, baseType: !192, size: 4, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !593, file: !529, line: 1043, baseType: !192, size: 3, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rae", scope: !593, file: !529, line: 1045, baseType: !192, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "numdl", scope: !593, file: !529, line: 1047, baseType: !192, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !583, file: !529, line: 1055, baseType: !601, size: 32)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !529, line: 1050, size: 32, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sqid", scope: !601, file: !529, line: 1052, baseType: !192, size: 16, flags: DIFlagBitField, extraData: i64 0)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !601, file: !529, line: 1054, baseType: !192, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sec_send_recv", scope: !583, file: !529, line: 1066, baseType: !606, size: 32)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !529, line: 1057, size: 32, elements: !607)
!607 = !{!608, !609, !610, !611}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nssf", scope: !606, file: !529, line: 1059, baseType: !192, size: 8, flags: DIFlagBitField, extraData: i64 0)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "spsp0", scope: !606, file: !529, line: 1061, baseType: !192, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "spsp1", scope: !606, file: !529, line: 1063, baseType: !192, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "secp", scope: !606, file: !529, line: 1065, baseType: !192, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "create_io_q", scope: !583, file: !529, line: 1073, baseType: !613, size: 32)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !529, line: 1068, size: 32, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !613, file: !529, line: 1070, baseType: !192, size: 16, flags: DIFlagBitField, extraData: i64 0)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "qsize", scope: !613, file: !529, line: 1072, baseType: !192, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "delete_io_q", scope: !583, file: !529, line: 1079, baseType: !618, size: 32)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !529, line: 1075, size: 32, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !618, file: !529, line: 1077, baseType: !192, size: 16, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !618, file: !529, line: 1078, baseType: !192, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !583, file: !529, line: 1087, baseType: !623, size: 32)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !529, line: 1081, size: 32, elements: !624)
!624 = !{!625, !626, !627}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !623, file: !529, line: 1083, baseType: !192, size: 8, flags: DIFlagBitField, extraData: i64 0)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !623, file: !529, line: 1085, baseType: !192, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !623, file: !529, line: 1086, baseType: !192, size: 21, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "set_features", scope: !583, file: !529, line: 1095, baseType: !629, size: 32)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !529, line: 1089, size: 32, elements: !630)
!630 = !{!631, !632, !633}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !629, file: !529, line: 1091, baseType: !192, size: 8, flags: DIFlagBitField, extraData: i64 0)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !629, file: !529, line: 1092, baseType: !192, size: 23, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "sv", scope: !629, file: !529, line: 1094, baseType: !192, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ns_attach", scope: !583, file: !529, line: 1101, baseType: !635, size: 32)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !529, line: 1097, size: 32, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !635, file: !529, line: 1099, baseType: !192, size: 4, flags: DIFlagBitField, extraData: i64 0)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !635, file: !529, line: 1100, baseType: !192, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ns_manage", scope: !583, file: !529, line: 1107, baseType: !640, size: 32)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !529, line: 1103, size: 32, elements: !641)
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !640, file: !529, line: 1105, baseType: !192, size: 4, flags: DIFlagBitField, extraData: i64 0)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !640, file: !529, line: 1106, baseType: !192, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "dsm", scope: !583, file: !529, line: 1113, baseType: !645, size: 32)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !529, line: 1109, size: 32, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !645, file: !529, line: 1111, baseType: !192, size: 8, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !645, file: !529, line: 1112, baseType: !192, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "resv_register", scope: !583, file: !529, line: 1123, baseType: !650, size: 32)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !529, line: 1115, size: 32, elements: !651)
!651 = !{!652, !653, !654, !655}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rrega", scope: !650, file: !529, line: 1117, baseType: !192, size: 3, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "iekey", scope: !650, file: !529, line: 1119, baseType: !192, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !650, file: !529, line: 1120, baseType: !192, size: 26, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "cptpl", scope: !650, file: !529, line: 1122, baseType: !192, size: 2, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "resv_release", scope: !583, file: !529, line: 1134, baseType: !657, size: 32)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !529, line: 1125, size: 32, elements: !658)
!658 = !{!659, !660, !661, !662, !663}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rrela", scope: !657, file: !529, line: 1127, baseType: !192, size: 3, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "iekey", scope: !657, file: !529, line: 1129, baseType: !192, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !657, file: !529, line: 1130, baseType: !192, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rtype", scope: !657, file: !529, line: 1132, baseType: !192, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !657, file: !529, line: 1133, baseType: !192, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "resv_acquire", scope: !583, file: !529, line: 1145, baseType: !665, size: 32)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !529, line: 1136, size: 32, elements: !666)
!666 = !{!667, !668, !669, !670, !671}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "racqa", scope: !665, file: !529, line: 1138, baseType: !192, size: 3, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "iekey", scope: !665, file: !529, line: 1140, baseType: !192, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !665, file: !529, line: 1141, baseType: !192, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rtype", scope: !665, file: !529, line: 1143, baseType: !192, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !665, file: !529, line: 1144, baseType: !192, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !529, line: 1290, baseType: !673, size: 32, offset: 352)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !529, line: 1290, size: 32, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cdw11", scope: !673, file: !529, line: 1291, baseType: !192, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "cdw11_bits", scope: !673, file: !529, line: 1292, baseType: !677, size: 32)
!677 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_cmd_cdw11", file: !529, line: 1149, size: 32, elements: !678)
!678 = !{!679, !680, !686, !693, !700, !706, !711, !716, !728, !738, !747, !758, !768, !777, !786, !796, !806, !815, !842, !850, !859, !871, !880}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !677, file: !529, line: 1150, baseType: !192, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "identify", scope: !677, file: !529, line: 1158, baseType: !681, size: 32)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !529, line: 1152, size: 32, elements: !682)
!682 = !{!683, !684, !685}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nvmsetid", scope: !681, file: !529, line: 1154, baseType: !192, size: 16, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !681, file: !529, line: 1155, baseType: !192, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "csi", scope: !681, file: !529, line: 1157, baseType: !192, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "create_io_sq", scope: !677, file: !529, line: 1168, baseType: !687, size: 32)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !529, line: 1160, size: 32, elements: !688)
!688 = !{!689, !690, !691, !692}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !687, file: !529, line: 1162, baseType: !192, size: 1, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "qprio", scope: !687, file: !529, line: 1164, baseType: !192, size: 2, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !687, file: !529, line: 1165, baseType: !192, size: 13, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "cqid", scope: !687, file: !529, line: 1167, baseType: !192, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "create_io_cq", scope: !677, file: !529, line: 1178, baseType: !694, size: 32)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !529, line: 1170, size: 32, elements: !695)
!695 = !{!696, !697, !698, !699}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !694, file: !529, line: 1172, baseType: !192, size: 1, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "ien", scope: !694, file: !529, line: 1174, baseType: !192, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !694, file: !529, line: 1175, baseType: !192, size: 14, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !694, file: !529, line: 1177, baseType: !192, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !677, file: !529, line: 1187, baseType: !701, size: 32)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !529, line: 1180, size: 32, elements: !702)
!702 = !{!703, !704, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "doper", scope: !701, file: !529, line: 1182, baseType: !192, size: 8, flags: DIFlagBitField, extraData: i64 0)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dtype", scope: !701, file: !529, line: 1184, baseType: !192, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dspec", scope: !701, file: !529, line: 1186, baseType: !192, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "get_log_page", scope: !677, file: !529, line: 1194, baseType: !707, size: 32)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !529, line: 1189, size: 32, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "numdu", scope: !707, file: !529, line: 1191, baseType: !192, size: 16, flags: DIFlagBitField, extraData: i64 0)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lsid", scope: !707, file: !529, line: 1193, baseType: !192, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "resv_report", scope: !677, file: !529, line: 1200, baseType: !712, size: 32)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !529, line: 1196, size: 32, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "eds", scope: !712, file: !529, line: 1198, baseType: !192, size: 1, flags: DIFlagBitField, extraData: i64 0)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !712, file: !529, line: 1199, baseType: !192, size: 31, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "feat_arbitration", scope: !677, file: !529, line: 1202, baseType: !717, size: 32)
!717 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_arbitration", file: !529, line: 692, size: 32, elements: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !717, file: !529, line: 693, baseType: !192, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !717, file: !529, line: 708, baseType: !721, size: 32)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !717, file: !529, line: 694, size: 32, elements: !722)
!722 = !{!723, !724, !725, !726, !727}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ab", scope: !721, file: !529, line: 696, baseType: !192, size: 3, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !721, file: !529, line: 698, baseType: !192, size: 5, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lpw", scope: !721, file: !529, line: 701, baseType: !192, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mpw", scope: !721, file: !529, line: 704, baseType: !192, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "hpw", scope: !721, file: !529, line: 707, baseType: !192, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "feat_power_management", scope: !677, file: !529, line: 1203, baseType: !729, size: 32)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_power_management", file: !529, line: 717, size: 32, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !729, file: !529, line: 718, baseType: !192, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !729, file: !529, line: 727, baseType: !733, size: 32)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !529, line: 719, size: 32, elements: !734)
!734 = !{!735, !736, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ps", scope: !733, file: !529, line: 721, baseType: !192, size: 5, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wh", scope: !733, file: !529, line: 724, baseType: !192, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !733, file: !529, line: 726, baseType: !192, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "feat_lba_range_type", scope: !677, file: !529, line: 1204, baseType: !739, size: 32)
!739 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_lba_range_type", file: !529, line: 734, size: 32, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !739, file: !529, line: 735, baseType: !192, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !739, file: !529, line: 741, baseType: !743, size: 32)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !529, line: 736, size: 32, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !743, file: !529, line: 738, baseType: !192, size: 6, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !743, file: !529, line: 740, baseType: !192, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "feat_temp_threshold", scope: !677, file: !529, line: 1205, baseType: !748, size: 32)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_temperature_threshold", file: !529, line: 748, size: 32, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !748, file: !529, line: 749, baseType: !192, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !748, file: !529, line: 761, baseType: !752, size: 32)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !748, file: !529, line: 750, size: 32, elements: !753)
!753 = !{!754, !755, !756, !757}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "tmpth", scope: !752, file: !529, line: 752, baseType: !192, size: 16, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "tmpsel", scope: !752, file: !529, line: 755, baseType: !192, size: 4, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "thsel", scope: !752, file: !529, line: 758, baseType: !192, size: 2, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !752, file: !529, line: 760, baseType: !192, size: 10, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "feat_error_recovery", scope: !677, file: !529, line: 1206, baseType: !759, size: 32)
!759 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_error_recovery", file: !529, line: 768, size: 32, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !759, file: !529, line: 769, baseType: !192, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !759, file: !529, line: 778, baseType: !763, size: 32)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !759, file: !529, line: 770, size: 32, elements: !764)
!764 = !{!765, !766, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "tler", scope: !763, file: !529, line: 772, baseType: !192, size: 16, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "dulbe", scope: !763, file: !529, line: 775, baseType: !192, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !763, file: !529, line: 777, baseType: !192, size: 15, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "feat_volatile_write_cache", scope: !677, file: !529, line: 1207, baseType: !769, size: 32)
!769 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_volatile_write_cache", file: !529, line: 785, size: 32, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !769, file: !529, line: 786, baseType: !192, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !769, file: !529, line: 792, baseType: !773, size: 32)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !529, line: 787, size: 32, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "wce", scope: !773, file: !529, line: 789, baseType: !192, size: 1, flags: DIFlagBitField, extraData: i64 0)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !773, file: !529, line: 791, baseType: !192, size: 31, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "feat_num_of_queues", scope: !677, file: !529, line: 1208, baseType: !778, size: 32)
!778 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_number_of_queues", file: !529, line: 799, size: 32, elements: !779)
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !778, file: !529, line: 800, baseType: !192, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !778, file: !529, line: 807, baseType: !782, size: 32)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !778, file: !529, line: 801, size: 32, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "nsqr", scope: !782, file: !529, line: 803, baseType: !192, size: 16, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ncqr", scope: !782, file: !529, line: 806, baseType: !192, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "feat_interrupt_coalescing", scope: !677, file: !529, line: 1209, baseType: !787, size: 32)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_interrupt_coalescing", file: !529, line: 814, size: 32, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !787, file: !529, line: 815, baseType: !192, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !787, file: !529, line: 824, baseType: !791, size: 32)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !529, line: 816, size: 32, elements: !792)
!792 = !{!793, !794, !795}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "thr", scope: !791, file: !529, line: 818, baseType: !192, size: 8, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !791, file: !529, line: 821, baseType: !192, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !791, file: !529, line: 823, baseType: !192, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "feat_interrupt_vector_configuration", scope: !677, file: !529, line: 1210, baseType: !797, size: 32)
!797 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_interrupt_vector_configuration", file: !529, line: 831, size: 32, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !797, file: !529, line: 832, baseType: !192, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !797, file: !529, line: 841, baseType: !801, size: 32)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !797, file: !529, line: 833, size: 32, elements: !802)
!802 = !{!803, !804, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !801, file: !529, line: 835, baseType: !192, size: 16, flags: DIFlagBitField, extraData: i64 0)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !801, file: !529, line: 838, baseType: !192, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !801, file: !529, line: 840, baseType: !192, size: 15, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "feat_write_atomicity", scope: !677, file: !529, line: 1211, baseType: !807, size: 32)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_write_atomicity", file: !529, line: 849, size: 32, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !807, file: !529, line: 850, baseType: !192, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !807, file: !529, line: 856, baseType: !811, size: 32)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !807, file: !529, line: 851, size: 32, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "dn", scope: !811, file: !529, line: 853, baseType: !192, size: 1, flags: DIFlagBitField, extraData: i64 0)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !811, file: !529, line: 855, baseType: !192, size: 31, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "feat_async_event_cfg", scope: !677, file: !529, line: 1212, baseType: !816, size: 32)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_async_event_configuration", file: !529, line: 877, size: 32, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !816, file: !529, line: 878, baseType: !192, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !816, file: !529, line: 889, baseType: !820, size: 32)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !816, file: !529, line: 879, size: 32, elements: !821)
!821 = !{!822, !835, !836, !837, !838, !839, !840, !841}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "crit_warn", scope: !820, file: !529, line: 880, baseType: !823, size: 8)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_critical_warning_state", file: !529, line: 860, size: 8, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !823, file: !529, line: 861, baseType: !176, size: 8)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !823, file: !529, line: 870, baseType: !827, size: 8)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !823, file: !529, line: 863, size: 8, elements: !828)
!828 = !{!829, !830, !831, !832, !833, !834}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "available_spare", scope: !827, file: !529, line: 864, baseType: !176, size: 1, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !827, file: !529, line: 865, baseType: !176, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "device_reliability", scope: !827, file: !529, line: 866, baseType: !176, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "read_only", scope: !827, file: !529, line: 867, baseType: !176, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_memory_backup", scope: !827, file: !529, line: 868, baseType: !176, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !827, file: !529, line: 869, baseType: !176, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ns_attr_notice", scope: !820, file: !529, line: 881, baseType: !176, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "fw_activation_notice", scope: !820, file: !529, line: 882, baseType: !176, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "telemetry_log_notice", scope: !820, file: !529, line: 883, baseType: !176, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ana_change_notice", scope: !820, file: !529, line: 884, baseType: !176, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !820, file: !529, line: 885, baseType: !176, size: 4, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !820, file: !529, line: 886, baseType: !350, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "discovery_log_change_notice", scope: !820, file: !529, line: 888, baseType: !350, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 8)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "feat_keep_alive_timer", scope: !677, file: !529, line: 1213, baseType: !843, size: 32)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_keep_alive_timer", file: !529, line: 928, size: 32, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !843, file: !529, line: 929, baseType: !192, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !843, file: !529, line: 933, baseType: !847, size: 32)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !843, file: !529, line: 930, size: 32, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "kato", scope: !847, file: !529, line: 932, baseType: !192, size: 32, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "feat_host_identifier", scope: !677, file: !529, line: 1214, baseType: !851, size: 32)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_host_identifier", file: !529, line: 985, size: 32, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !851, file: !529, line: 986, baseType: !192, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !851, file: !529, line: 992, baseType: !855, size: 32)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !529, line: 987, size: 32, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "exhid", scope: !855, file: !529, line: 989, baseType: !192, size: 1, flags: DIFlagBitField, extraData: i64 0)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !855, file: !529, line: 991, baseType: !192, size: 31, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "feat_rsv_notification_mask", scope: !677, file: !529, line: 1215, baseType: !860, size: 32)
!860 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_reservation_notification_mask", file: !529, line: 999, size: 32, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !860, file: !529, line: 1000, baseType: !192, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !860, file: !529, line: 1010, baseType: !864, size: 32)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !860, file: !529, line: 1001, size: 32, elements: !865)
!865 = !{!866, !867, !868, !869, !870}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !864, file: !529, line: 1002, baseType: !192, size: 1, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "regpre", scope: !864, file: !529, line: 1004, baseType: !192, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "resrel", scope: !864, file: !529, line: 1006, baseType: !192, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "respre", scope: !864, file: !529, line: 1008, baseType: !192, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !864, file: !529, line: 1009, baseType: !192, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "feat_rsv_persistence", scope: !677, file: !529, line: 1216, baseType: !872, size: 32)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_reservation_persistence", file: !529, line: 1018, size: 32, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !872, file: !529, line: 1019, baseType: !192, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !872, file: !529, line: 1024, baseType: !876, size: 32)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !529, line: 1020, size: 32, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ptpl", scope: !876, file: !529, line: 1022, baseType: !192, size: 1, flags: DIFlagBitField, extraData: i64 0)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !876, file: !529, line: 1023, baseType: !192, size: 31, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "dsm", scope: !677, file: !529, line: 1226, baseType: !881, size: 32)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !677, file: !529, line: 1218, size: 32, elements: !882)
!882 = !{!883, !884, !885, !886}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !881, file: !529, line: 1220, baseType: !192, size: 1, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "idw", scope: !881, file: !529, line: 1222, baseType: !192, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ad", scope: !881, file: !529, line: 1224, baseType: !192, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !881, file: !529, line: 1225, baseType: !192, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !528, file: !529, line: 1295, baseType: !888, size: 32, offset: 384)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !529, line: 1295, size: 32, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "cdw12", scope: !888, file: !529, line: 1296, baseType: !192, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "cdw12_bits", scope: !888, file: !529, line: 1297, baseType: !892, size: 32)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_cmd_cdw12", file: !529, line: 1230, size: 32, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !892, file: !529, line: 1231, baseType: !192, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !892, file: !529, line: 1252, baseType: !896, size: 32)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !529, line: 1233, size: 32, elements: !897)
!897 = !{!898, !899, !900, !901, !902, !903, !904, !905, !906, !907}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !896, file: !529, line: 1235, baseType: !192, size: 8, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !896, file: !529, line: 1237, baseType: !192, size: 4, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "prinfor", scope: !896, file: !529, line: 1239, baseType: !192, size: 4, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !896, file: !529, line: 1240, baseType: !192, size: 4, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "dtype", scope: !896, file: !529, line: 1242, baseType: !192, size: 4, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "stcw", scope: !896, file: !529, line: 1244, baseType: !192, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !896, file: !529, line: 1245, baseType: !192, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "prinfow", scope: !896, file: !529, line: 1247, baseType: !192, size: 4, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "fua", scope: !896, file: !529, line: 1249, baseType: !192, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lr", scope: !896, file: !529, line: 1251, baseType: !192, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "cdw13", scope: !528, file: !529, line: 1300, baseType: !192, size: 32, offset: 416)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "cdw14", scope: !528, file: !529, line: 1301, baseType: !192, size: 32, offset: 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "cdw15", scope: !528, file: !529, line: 1302, baseType: !192, size: 32, offset: 480)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !525, file: !78, line: 747, baseType: !130, size: 64, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !525, file: !78, line: 750, baseType: !183, size: 64, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "md_buf", scope: !525, file: !78, line: 753, baseType: !130, size: 64, offset: 640)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "md_len", scope: !525, file: !78, line: 756, baseType: !183, size: 64, offset: 704)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "zone_mgmt", scope: !460, file: !78, line: 770, baseType: !916, size: 192)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !460, file: !78, line: 758, size: 192, elements: !917)
!917 = !{!918, !919, !920, !921}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "zone_id", scope: !916, file: !78, line: 760, baseType: !139, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "num_zones", scope: !916, file: !78, line: 763, baseType: !192, size: 32, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "zone_action", scope: !916, file: !78, line: 766, baseType: !39, size: 32, offset: 96)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !916, file: !78, line: 769, baseType: !130, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "module_link", scope: !442, file: !78, line: 774, baseType: !923, size: 128, offset: 5312)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !442, file: !78, line: 774, size: 128, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !923, file: !78, line: 774, baseType: !441, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !923, file: !78, line: 774, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !442, file: !78, line: 877, baseType: !929, size: 2496, offset: 5440)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__bdev_io_internal_fields", file: !78, line: 780, size: 2496, elements: !930)
!930 = !{!931, !934, !935, !936, !937, !938, !939, !956, !957, !962, !963, !964, !965, !966, !967, !968, !969, !974, !979, !984, !988, !993, !1009, !1010, !1011, !1012}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !929, file: !78, line: 782, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_channel", file: !78, line: 782, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "io_submit_ch", scope: !929, file: !78, line: 785, baseType: !932, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !929, file: !78, line: 788, baseType: !269, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !929, file: !78, line: 791, baseType: !484, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "caller_ctx", scope: !929, file: !78, line: 794, baseType: !130, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "submit_tsc", scope: !929, file: !78, line: 797, baseType: !139, size: 64, offset: 320)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !929, file: !78, line: 822, baseType: !940, size: 64, offset: 384)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !929, file: !78, line: 800, size: 64, elements: !941)
!941 = !{!942, !948, !955}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "nvme", scope: !940, file: !78, line: 808, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !78, line: 801, size: 64, elements: !944)
!944 = !{!945, !946, !947}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "cdw0", scope: !943, file: !78, line: 803, baseType: !192, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "sct", scope: !943, file: !78, line: 805, baseType: !176, size: 8, offset: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "sc", scope: !943, file: !78, line: 807, baseType: !176, size: 8, offset: 40)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "scsi", scope: !940, file: !78, line: 819, baseType: !949, size: 32)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !78, line: 810, size: 32, elements: !950)
!950 = !{!951, !952, !953, !954}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "sc", scope: !949, file: !78, line: 812, baseType: !176, size: 8)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !949, file: !78, line: 814, baseType: !176, size: 8, offset: 8)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "asc", scope: !949, file: !78, line: 816, baseType: !176, size: 8, offset: 16)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ascq", scope: !949, file: !78, line: 818, baseType: !176, size: 8, offset: 24)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "aio_result", scope: !940, file: !78, line: 821, baseType: !156, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "in_submit_request", scope: !929, file: !78, line: 830, baseType: !204, size: 8, offset: 448)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !929, file: !78, line: 833, baseType: !958, size: 8, offset: 456)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !959, line: 24, baseType: !960)
!959 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !142, line: 37, baseType: !961)
!961 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !929, file: !78, line: 836, baseType: !130, size: 64, offset: 512)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !929, file: !78, line: 839, baseType: !139, size: 64, offset: 576)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_iov", scope: !929, file: !78, line: 842, baseType: !448, size: 128, offset: 640)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_md_iov", scope: !929, file: !78, line: 843, baseType: !448, size: 128, offset: 768)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "orig_md_iov", scope: !929, file: !78, line: 844, baseType: !448, size: 128, offset: 896)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "orig_iovs", scope: !929, file: !78, line: 845, baseType: !466, size: 64, offset: 1024)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "orig_iovcnt", scope: !929, file: !78, line: 846, baseType: !156, size: 32, offset: 1088)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "get_aux_buf_cb", scope: !929, file: !78, line: 849, baseType: !970, size: 64, offset: 1152)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_bdev_io_get_aux_buf_cb", file: !78, line: 638, baseType: !971)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{null, !272, !441, !130}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "get_buf_cb", scope: !929, file: !78, line: 852, baseType: !975, size: 64, offset: 1216)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_bdev_io_get_buf_cb", file: !78, line: 627, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !272, !441, !204}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !929, file: !78, line: 855, baseType: !980, size: 128, offset: 1280)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !78, line: 855, size: 128, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !980, file: !78, line: 855, baseType: !441, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !980, file: !78, line: 855, baseType: !927, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "buf_link", scope: !929, file: !78, line: 858, baseType: !985, size: 64, offset: 1408)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !78, line: 858, size: 64, elements: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !985, file: !78, line: 858, baseType: !441, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ch_link", scope: !929, file: !78, line: 861, baseType: !989, size: 128, offset: 1472)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !78, line: 861, size: 128, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !989, file: !78, line: 861, baseType: !441, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !989, file: !78, line: 861, baseType: !927, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "iobuf", scope: !929, file: !78, line: 864, baseType: !994, size: 192, offset: 1600)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_iobuf_entry", file: !412, line: 972, size: 192, elements: !995)
!995 = !{!996, !1002, !1005}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "cb_fn", scope: !994, file: !412, line: 973, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_iobuf_get_cb", file: !412, line: 969, baseType: !998)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !1001, !130}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !994, file: !412, line: 974, baseType: !1003, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "stailq", scope: !994, file: !412, line: 975, baseType: !1006, size: 64, offset: 128)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !994, file: !412, line: 975, size: 64, elements: !1007)
!1007 = !{!1008}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !1006, file: !412, line: 975, baseType: !1001, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "waitq_entry", scope: !929, file: !78, line: 867, baseType: !308, size: 320, offset: 1792)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ext_opts", scope: !929, file: !78, line: 870, baseType: !474, size: 64, offset: 2112)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ext_opts_copy", scope: !929, file: !78, line: 873, baseType: !475, size: 256, offset: 2176)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "data_transfer_cpl", scope: !929, file: !78, line: 876, baseType: !1013, size: 64, offset: 2432)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !130, !156}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "driver_ctx", scope: !442, file: !78, line: 882, baseType: !1017, offset: 7936)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, elements: !1018)
!1018 = !{!1019}
!1019 = !DISubrange(count: 0)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "io_type_supported", scope: !431, file: !78, line: 223, baseType: !1021, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!204, !130, !47}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "get_io_channel", scope: !431, file: !78, line: 226, baseType: !1025, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!272, !130}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "dump_info_json", scope: !431, file: !78, line: 235, baseType: !1029, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!156, !130, !394}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "write_config_json", scope: !431, file: !78, line: 251, baseType: !1033, size: 64, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !311, !394}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "get_spin_time", scope: !431, file: !78, line: 256, baseType: !1037, size: 64, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!139, !272}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "get_module_ctx", scope: !431, file: !78, line: 259, baseType: !1041, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!130, !130}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_domains", scope: !431, file: !78, line: 265, baseType: !1045, size: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!156, !130, !1048, !156}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "reset_device_stat", scope: !431, file: !78, line: 270, baseType: !1050, size: 64, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !130}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dump_device_stat_json", scope: !431, file: !78, line: 275, baseType: !1054, size: 64, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !130, !394}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !312, file: !78, line: 615, baseType: !1058, size: 2112, offset: 1536)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__bdev_internal_fields", file: !78, line: 516, size: 2112, elements: !1059)
!1059 = !{!1060, !1063, !1064, !1065, !1066, !1067, !1074, !1076, !1077, !1078, !1084, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1127, !1128, !1129, !1130, !1139, !1140}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1058, file: !78, line: 518, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_qos", file: !78, line: 518, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "qos_mod_in_progress", scope: !1058, file: !78, line: 521, baseType: !204, size: 8, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !1058, file: !78, line: 531, baseType: !411, size: 128, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1058, file: !78, line: 534, baseType: !71, size: 32, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "claim_type", scope: !1058, file: !78, line: 540, baseType: !77, size: 32, offset: 288)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "claim", scope: !1058, file: !78, line: 552, baseType: !1068, size: 64, offset: 320)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__bdev_internal_claim", file: !78, line: 543, size: 64, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !1068, file: !78, line: 551, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__bdev_internal_claim_v1", file: !78, line: 544, size: 64, elements: !1072)
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1071, file: !78, line: 550, baseType: !377, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "unregister_cb", scope: !1058, file: !78, line: 555, baseType: !1075, size: 64, offset: 384)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_bdev_unregister_cb", file: !78, line: 206, baseType: !1013)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "unregister_ctx", scope: !1058, file: !78, line: 558, baseType: !130, size: 64, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "unregister_td", scope: !1058, file: !78, line: 561, baseType: !419, size: 64, offset: 512)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "open_descs", scope: !1058, file: !78, line: 564, baseType: !1079, size: 128, offset: 576)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !78, line: 564, size: 128, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1079, file: !78, line: 564, baseType: !269, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1079, file: !78, line: 564, baseType: !1083, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1058, file: !78, line: 566, baseType: !1085, size: 128, offset: 704)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1058, file: !78, line: 566, size: 128, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1085, file: !78, line: 566, baseType: !311, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1085, file: !78, line: 566, baseType: !1089, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "reset_in_progress", scope: !1058, file: !78, line: 569, baseType: !441, size: 64, offset: 832)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "qd_poller", scope: !1058, file: !78, line: 572, baseType: !517, size: 64, offset: 896)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "qd_desc", scope: !1058, file: !78, line: 575, baseType: !269, size: 64, offset: 960)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !1058, file: !78, line: 578, baseType: !139, size: 64, offset: 1024)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "new_period", scope: !1058, file: !78, line: 581, baseType: !139, size: 64, offset: 1088)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "temporary_queue_depth", scope: !1058, file: !78, line: 584, baseType: !139, size: 64, offset: 1152)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "measured_queue_depth", scope: !1058, file: !78, line: 587, baseType: !139, size: 64, offset: 1216)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "io_time", scope: !1058, file: !78, line: 590, baseType: !139, size: 64, offset: 1280)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_io_time", scope: !1058, file: !78, line: 593, baseType: !139, size: 64, offset: 1344)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1058, file: !78, line: 596, baseType: !1100, size: 64, offset: 1408)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_io_stat", file: !48, line: 155, size: 1408, elements: !1102)
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_read", scope: !1101, file: !48, line: 156, baseType: !139, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_read_ops", scope: !1101, file: !48, line: 157, baseType: !139, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !1101, file: !48, line: 158, baseType: !139, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "num_write_ops", scope: !1101, file: !48, line: 159, baseType: !139, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_unmapped", scope: !1101, file: !48, line: 160, baseType: !139, size: 64, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "num_unmap_ops", scope: !1101, file: !48, line: 161, baseType: !139, size: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_copied", scope: !1101, file: !48, line: 162, baseType: !139, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "num_copy_ops", scope: !1101, file: !48, line: 163, baseType: !139, size: 64, offset: 448)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "read_latency_ticks", scope: !1101, file: !48, line: 164, baseType: !139, size: 64, offset: 512)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_latency_ticks", scope: !1101, file: !48, line: 165, baseType: !139, size: 64, offset: 576)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "min_read_latency_ticks", scope: !1101, file: !48, line: 166, baseType: !139, size: 64, offset: 640)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "write_latency_ticks", scope: !1101, file: !48, line: 167, baseType: !139, size: 64, offset: 704)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_latency_ticks", scope: !1101, file: !48, line: 168, baseType: !139, size: 64, offset: 768)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "min_write_latency_ticks", scope: !1101, file: !48, line: 169, baseType: !139, size: 64, offset: 832)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_latency_ticks", scope: !1101, file: !48, line: 170, baseType: !139, size: 64, offset: 896)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "max_unmap_latency_ticks", scope: !1101, file: !48, line: 171, baseType: !139, size: 64, offset: 960)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "min_unmap_latency_ticks", scope: !1101, file: !48, line: 172, baseType: !139, size: 64, offset: 1024)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "copy_latency_ticks", scope: !1101, file: !48, line: 173, baseType: !139, size: 64, offset: 1088)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "max_copy_latency_ticks", scope: !1101, file: !48, line: 174, baseType: !139, size: 64, offset: 1152)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "min_copy_latency_ticks", scope: !1101, file: !48, line: 175, baseType: !139, size: 64, offset: 1216)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_rate", scope: !1101, file: !48, line: 176, baseType: !139, size: 64, offset: 1280)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "io_error", scope: !1101, file: !48, line: 181, baseType: !1125, size: 64, offset: 1344)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_io_error_stat", file: !48, line: 153, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "qd_poll_in_progress", scope: !1058, file: !78, line: 599, baseType: !204, size: 8, offset: 1472)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "histogram_enabled", scope: !1058, file: !78, line: 602, baseType: !204, size: 8, offset: 1480)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "histogram_in_progress", scope: !1058, file: !78, line: 603, baseType: !204, size: 8, offset: 1488)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "locked_ranges", scope: !1058, file: !78, line: 606, baseType: !1131, size: 128, offset: 1536)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "lba_range_tailq_t", file: !78, line: 316, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 316, size: 128, elements: !1133)
!1133 = !{!1134, !1137}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1132, file: !78, line: 316, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "lba_range", file: !78, line: 316, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1132, file: !78, line: 316, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pending_locked_ranges", scope: !1058, file: !78, line: 611, baseType: !1131, size: 128, offset: 1664)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_name", scope: !1058, file: !78, line: 614, baseType: !324, size: 320, offset: 1792)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "cb_fn", scope: !308, file: !48, line: 1792, baseType: !1142, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_bdev_io_wait_cb", file: !48, line: 1785, baseType: !1050)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !308, file: !48, line: 1793, baseType: !130, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !308, file: !48, line: 1794, baseType: !1145, size: 128, offset: 192)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !308, file: !48, line: 1794, size: 128, elements: !1146)
!1146 = !{!1147, !1149}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1145, file: !48, line: 1794, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1145, file: !48, line: 1794, baseType: !1150, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "shm_fd", scope: !277, file: !27, line: 72, baseType: !156, size: 32, offset: 1280)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !277, file: !27, line: 75, baseType: !1153, size: 2048, offset: 1312)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 2048, elements: !145)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "shm_mmap_flags", scope: !277, file: !27, line: 78, baseType: !156, size: 32, offset: 3360)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "shm_sz", scope: !277, file: !27, line: 81, baseType: !183, size: 64, offset: 3392)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "shm_open", scope: !277, file: !27, line: 84, baseType: !1157, size: 64, offset: 3456)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "shm_open_t", file: !27, line: 24, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!156, !242, !156, !1161}
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1162, line: 69, baseType: !1163)
!1162 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !142, line: 150, baseType: !5)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "shm_unlink", scope: !277, file: !27, line: 87, baseType: !1165, size: 64, offset: 3520)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "shm_unlink_t", file: !27, line: 25, baseType: !1166)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!156, !242}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mem_reg", scope: !277, file: !27, line: 90, baseType: !204, size: 8, offset: 3584)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mirror", scope: !277, file: !27, line: 93, baseType: !276, size: 64, offset: 3648)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mirror_enabled", scope: !277, file: !27, line: 96, baseType: !204, size: 8, offset: 3712)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !158, file: !159, line: 50, baseType: !1173, size: 64, offset: 18240)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_superblock", file: !1175, line: 15, size: 1344, elements: !1176)
!1175 = !DIFile(filename: "./ftl_sb_current.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "edcbfeaf54501013c764a3d5e3ad829e")
!1176 = !{!1177, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1198}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1174, file: !1175, line: 16, baseType: !1178, size: 192)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_superblock_header", file: !255, line: 40, size: 192, elements: !1179)
!1179 = !{!1180, !1181, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1178, file: !255, line: 41, baseType: !139, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !1178, file: !255, line: 42, baseType: !139, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1178, file: !255, line: 43, baseType: !139, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !1174, file: !1175, line: 18, baseType: !168, size: 128, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "seq_id", scope: !1174, file: !1175, line: 21, baseType: !139, size: 64, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "clean", scope: !1174, file: !1175, line: 24, baseType: !139, size: 64, offset: 384)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "lba_cnt", scope: !1174, file: !1175, line: 27, baseType: !139, size: 64, offset: 448)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "overprovisioning", scope: !1174, file: !1175, line: 30, baseType: !139, size: 64, offset: 512)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "max_reloc_qdepth", scope: !1174, file: !1175, line: 33, baseType: !139, size: 64, offset: 576)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !1174, file: !1175, line: 36, baseType: !175, size: 128, offset: 640)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ckpt_seq_id", scope: !1174, file: !1175, line: 39, baseType: !139, size: 64, offset: 768)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "gc_info", scope: !1174, file: !1175, line: 41, baseType: !1192, size: 256, offset: 832)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_superblock_gc_info", file: !255, line: 25, size: 256, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "band_id_high_prio", scope: !1192, file: !255, line: 29, baseType: !139, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "current_band_id", scope: !1192, file: !255, line: 31, baseType: !139, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "band_phys_id", scope: !1192, file: !255, line: 33, baseType: !139, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "is_valid", scope: !1192, file: !255, line: 35, baseType: !139, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "md_layout_head", scope: !1174, file: !1175, line: 43, baseType: !254, size: 256, offset: 1088)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sb_shm", scope: !158, file: !159, line: 53, baseType: !1200, size: 64, offset: 18304)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_superblock_shm", file: !255, line: 58, size: 576, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1212}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "shm_ready", scope: !1201, file: !255, line: 60, baseType: !204, size: 8)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clean", scope: !1201, file: !255, line: 63, baseType: !204, size: 8, offset: 8)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "trim", scope: !1201, file: !255, line: 71, baseType: !1206, size: 256, offset: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !255, line: 66, size: 256, elements: !1207)
!1207 = !{!1208, !1209, !1210, !1211}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "in_progress", scope: !1206, file: !255, line: 67, baseType: !204, size: 8)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "start_lba", scope: !1206, file: !255, line: 68, baseType: !139, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !1206, file: !255, line: 69, baseType: !139, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "seq_id", scope: !1206, file: !255, line: 70, baseType: !139, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "gc_info", scope: !1201, file: !255, line: 73, baseType: !1192, size: 256, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sb_shm_md", scope: !158, file: !159, line: 54, baseType: !276, size: 64, offset: 18368)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ioch_queue", scope: !158, file: !159, line: 57, baseType: !1215, size: 128, offset: 18432)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !159, line: 57, size: 128, elements: !1216)
!1216 = !{!1217, !1237}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1215, file: !159, line: 57, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_io_channel", file: !114, line: 42, size: 448, elements: !1220)
!1220 = !{!1221, !1222, !1228, !1231, !1232, !1236}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1219, file: !114, line: 44, baseType: !157, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1219, file: !114, line: 46, baseType: !1223, size: 128, offset: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1219, file: !114, line: 46, size: 128, elements: !1224)
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1223, file: !114, line: 46, baseType: !1218, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1223, file: !114, line: 46, baseType: !1227, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "map_pool", scope: !1219, file: !114, line: 48, baseType: !1229, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_mempool", file: !114, line: 48, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !1219, file: !114, line: 50, baseType: !517, size: 64, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sq", scope: !1219, file: !114, line: 52, baseType: !1233, size: 64, offset: 320)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_ring", file: !1235, line: 557, flags: DIFlagFwdDecl)
!1235 = !DIFile(filename: "include/spdk/env.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "c5bb62a61dfb30b3c4fe3f80f0d985bb")
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "cq", scope: !1219, file: !114, line: 54, baseType: !1233, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1215, file: !159, line: 57, baseType: !1227, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "base_bdev_desc", scope: !158, file: !159, line: 60, baseType: !269, size: 64, offset: 18560)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks_in_band", scope: !158, file: !159, line: 63, baseType: !139, size: 64, offset: 18624)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "is_zoned", scope: !158, file: !159, line: 64, baseType: !204, size: 8, offset: 18688)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !158, file: !159, line: 67, baseType: !204, size: 8, offset: 18696)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "halt", scope: !158, file: !159, line: 70, baseType: !204, size: 8, offset: 18704)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "io_device_registered", scope: !158, file: !159, line: 73, baseType: !204, size: 8, offset: 18712)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "unregister_process", scope: !158, file: !159, line: 76, baseType: !1245, size: 64, offset: 18752)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_mngt_process", file: !101, line: 117, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "nv_cache", scope: !158, file: !159, line: 79, baseType: !1248, size: 3776, offset: 18816)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_nv_cache", file: !83, line: 132, size: 3776, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1472, !1477, !1478, !1483, !1484, !1489, !1490, !1495, !1496, !1501, !1502, !1611, !1612, !1613, !1614, !1615, !1616, !1618, !1628}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "halt", scope: !1248, file: !83, line: 134, baseType: !204, size: 8)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_desc", scope: !1248, file: !83, line: 137, baseType: !269, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cache_ioch", scope: !1248, file: !83, line: 140, baseType: !272, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "md_pool", scope: !1248, file: !83, line: 143, baseType: !1229, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_pool", scope: !1248, file: !83, line: 146, baseType: !1229, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_md_pool", scope: !1248, file: !83, line: 149, baseType: !1229, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "free_chunk_md_pool", scope: !1248, file: !83, line: 152, baseType: !1229, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !1248, file: !83, line: 155, baseType: !139, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !1248, file: !83, line: 158, baseType: !276, size: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_blocks", scope: !1248, file: !83, line: 161, baseType: !139, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "tail_md_chunk_blocks", scope: !1248, file: !83, line: 164, baseType: !139, size: 64, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_count", scope: !1248, file: !83, line: 167, baseType: !139, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_current", scope: !1248, file: !83, line: 170, baseType: !1263, size: 64, offset: 768)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_nv_cache_chunk", file: !83, line: 95, size: 2688, elements: !1265)
!1265 = !{!1266, !1268, !1285, !1286, !1370, !1462, !1468, !1469, !1470, !1471}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "nv_cache", scope: !1264, file: !83, line: 96, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !1264, file: !83, line: 98, baseType: !1269, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_nv_cache_chunk_md", file: !83, line: 59, size: 32768, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "seq_id", scope: !1270, file: !83, line: 61, baseType: !139, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "close_seq_id", scope: !1270, file: !83, line: 64, baseType: !139, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "write_pointer", scope: !1270, file: !83, line: 67, baseType: !192, size: 32, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_written", scope: !1270, file: !83, line: 70, baseType: !192, size: 32, offset: 160)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_skipped", scope: !1270, file: !83, line: 73, baseType: !192, size: 32, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "read_pointer", scope: !1270, file: !83, line: 76, baseType: !192, size: 32, offset: 224)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_compacted", scope: !1270, file: !83, line: 79, baseType: !192, size: 32, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1270, file: !83, line: 82, baseType: !82, size: 32, offset: 288)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_map_checksum", scope: !1270, file: !83, line: 85, baseType: !192, size: 32, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1270, file: !83, line: 88, baseType: !1282, size: 32416, offset: 352)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 32416, elements: !1283)
!1283 = !{!1284}
!1284 = !DISubrange(count: 4052)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1264, file: !83, line: 101, baseType: !139, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_map", scope: !1264, file: !83, line: 104, baseType: !1287, size: 384, offset: 192)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_p2l_map", file: !101, line: 76, size: 384, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1295, !1301, !1328}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "num_valid", scope: !1287, file: !101, line: 78, baseType: !183, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ref_cnt", scope: !1287, file: !101, line: 81, baseType: !183, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1287, file: !101, line: 84, baseType: !1292, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_bitmap", file: !1294, line: 11, flags: DIFlagFwdDecl)
!1294 = !DIFile(filename: "./utils/ftl_bitmap.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "2c6a07f26f6c458013e36e233acb2f3d")
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !101, line: 87, baseType: !1296, size: 64, offset: 192)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1287, file: !101, line: 87, size: 64, elements: !1297)
!1297 = !{!1298, !1300}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "band_map", scope: !1296, file: !101, line: 88, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_map", scope: !1296, file: !101, line: 89, baseType: !130, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !101, line: 93, baseType: !1302, size: 64, offset: 256)
!1302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1287, file: !101, line: 93, size: 64, elements: !1303)
!1303 = !{!1304, !1327}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "band_dma_md", scope: !1302, file: !101, line: 94, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_band_md", file: !90, line: 48, size: 32768, elements: !1307)
!1307 = !{!1308, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1306, file: !90, line: 56, baseType: !1309, size: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !90, line: 50, size: 128, elements: !1310)
!1310 = !{!1311, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1309, file: !90, line: 52, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_addr", file: !101, line: 32, baseType: !139)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1309, file: !90, line: 55, baseType: !139, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1306, file: !90, line: 59, baseType: !89, size: 32, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1306, file: !90, line: 62, baseType: !100, size: 32, offset: 160)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_md_region", scope: !1306, file: !90, line: 65, baseType: !3, size: 32, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1306, file: !90, line: 68, baseType: !200, size: 32, offset: 224)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1306, file: !90, line: 71, baseType: !139, size: 64, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "close_seq_id", scope: !1306, file: !90, line: 74, baseType: !139, size: 64, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "wr_cnt", scope: !1306, file: !90, line: 77, baseType: !139, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "df_p2l_map", scope: !1306, file: !90, line: 80, baseType: !262, size: 64, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_map_checksum", scope: !1306, file: !90, line: 83, baseType: !192, size: 32, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1306, file: !90, line: 86, baseType: !1324, size: 32224, offset: 544)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 32224, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 4028)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_dma_md", scope: !1302, file: !101, line: 96, baseType: !1269, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_ckpt", scope: !1287, file: !101, line: 100, baseType: !1329, size: 64, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_p2l_ckpt", file: !1, line: 17, size: 384, elements: !1331)
!1331 = !{!1332, !1338, !1366, !1367, !1369}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1330, file: !1, line: 18, baseType: !1333, size: 128)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1330, file: !1, line: 18, size: 128, elements: !1334)
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1333, file: !1, line: 18, baseType: !1329, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1333, file: !1, line: 18, baseType: !1337, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "vss_md_page", scope: !1330, file: !1, line: 19, baseType: !1339, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "ftl_md_vss", file: !27, line: 114, size: 512, elements: !1341)
!1341 = !{!1342, !1350, !1356, !1361}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1340, file: !27, line: 118, baseType: !1343, size: 512)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !27, line: 115, size: 512, elements: !1344)
!1344 = !{!1345, !1349}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !1343, file: !27, line: 116, baseType: !1346, size: 448)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 448, elements: !1347)
!1347 = !{!1348}
!1348 = !DISubrange(count: 56)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "md_version", scope: !1343, file: !27, line: 117, baseType: !139, size: 64, offset: 448)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1340, file: !27, line: 124, baseType: !1351, size: 192)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !27, line: 120, size: 192, elements: !1352)
!1352 = !{!1353, !1354, !1355}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "start_lba", scope: !1351, file: !27, line: 121, baseType: !139, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !1351, file: !27, line: 122, baseType: !139, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "seq_id", scope: !1351, file: !27, line: 123, baseType: !139, size: 64, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_ckpt", scope: !1340, file: !27, line: 129, baseType: !1357, size: 128)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !27, line: 126, size: 128, elements: !1358)
!1358 = !{!1359, !1360}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "seq_id", scope: !1357, file: !27, line: 127, baseType: !139, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_checksum", scope: !1357, file: !27, line: 128, baseType: !192, size: 32, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "nv_cache", scope: !1340, file: !27, line: 134, baseType: !1362, size: 128)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1340, file: !27, line: 131, size: 128, elements: !1363)
!1363 = !{!1364, !1365}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "lba", scope: !1362, file: !27, line: 132, baseType: !139, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "seq_id", scope: !1362, file: !27, line: 133, baseType: !139, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !1330, file: !1, line: 20, baseType: !276, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "layout_region", scope: !1330, file: !1, line: 21, baseType: !1368, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !1330, file: !1, line: 22, baseType: !139, size: 64, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_rq", scope: !1264, file: !83, line: 107, baseType: !1371, size: 1024, offset: 576)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_basic_rq", file: !114, line: 255, size: 1024, elements: !1372)
!1372 = !{!1373, !1374, !1381, !1382, !1383, !1384, !1392}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1371, file: !114, line: 256, baseType: !157, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "qentry", scope: !1371, file: !114, line: 259, baseType: !1375, size: 128, offset: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !114, line: 259, size: 128, elements: !1376)
!1376 = !{!1377, !1379}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1375, file: !114, line: 259, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1375, file: !114, line: 259, baseType: !1380, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !1371, file: !114, line: 262, baseType: !139, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "io_payload", scope: !1371, file: !114, line: 265, baseType: !130, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "success", scope: !1371, file: !114, line: 268, baseType: !204, size: 8, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1371, file: !114, line: 277, baseType: !1385, size: 128, offset: 384)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !114, line: 271, size: 128, elements: !1386)
!1386 = !{!1387, !1391}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1385, file: !114, line: 273, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !1378}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1385, file: !114, line: 276, baseType: !130, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !1371, file: !114, line: 291, baseType: !1393, size: 512, offset: 512)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !114, line: 280, size: 512, elements: !1394)
!1394 = !{!1395, !1396, !1460, !1461}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1393, file: !114, line: 282, baseType: !1312, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "band", scope: !1393, file: !114, line: 285, baseType: !1397, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_band", file: !90, line: 91, size: 3072, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1403, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1439, !1455}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1398, file: !90, line: 93, baseType: !157, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !1398, file: !90, line: 95, baseType: !1305, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1398, file: !90, line: 98, baseType: !139, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1398, file: !90, line: 116, baseType: !1404, size: 256, offset: 192)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1398, file: !90, line: 101, size: 256, elements: !1405)
!1405 = !{!1406, !1407, !1412, !1425}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1404, file: !90, line: 103, baseType: !130, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "state_change_fn", scope: !1404, file: !90, line: 106, baseType: !1408, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_band_state_change_fn", file: !90, line: 43, baseType: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !1397}
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !90, line: 109, baseType: !1413, size: 64, offset: 128)
!1413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1404, file: !90, line: 109, size: 64, elements: !1414)
!1414 = !{!1415, !1420}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ops_fn", scope: !1413, file: !90, line: 110, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_band_ops_cb", file: !90, line: 44, baseType: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !1397, !130, !204}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "md_fn", scope: !1413, file: !90, line: 111, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_band_md_cb", file: !90, line: 45, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !1397, !130, !105}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !1404, file: !90, line: 115, baseType: !139, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_map", scope: !1398, file: !90, line: 119, baseType: !1287, size: 384, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "reloc", scope: !1398, file: !90, line: 122, baseType: !204, size: 8, offset: 832)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1398, file: !90, line: 125, baseType: !192, size: 32, offset: 864)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "phys_id", scope: !1398, file: !90, line: 131, baseType: !192, size: 32, offset: 896)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "start_addr", scope: !1398, file: !90, line: 134, baseType: !1312, size: 64, offset: 960)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "tail_md_addr", scope: !1398, file: !90, line: 137, baseType: !1312, size: 64, offset: 1024)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_rq", scope: !1398, file: !90, line: 140, baseType: !1371, size: 1024, offset: 1088)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "queue_entry", scope: !1398, file: !90, line: 147, baseType: !1434, size: 128, offset: 2112)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1398, file: !90, line: 147, size: 128, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1434, file: !90, line: 147, baseType: !1397, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1434, file: !90, line: 147, baseType: !1438, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "md_persist_entry_ctx", scope: !1398, file: !90, line: 150, baseType: !1440, size: 768, offset: 2240)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_md_io_entry_ctx", file: !27, line: 101, size: 768, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1449, !1450, !1451, !1452, !1453, !1454}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !1440, file: !27, line: 102, baseType: !192, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1440, file: !27, line: 103, baseType: !156, size: 32, offset: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1440, file: !27, line: 104, baseType: !1445, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_md_io_entry_cb", file: !27, line: 99, baseType: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !156, !130}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !1440, file: !27, line: 105, baseType: !130, size: 64, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !1440, file: !27, line: 106, baseType: !276, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "start_entry", scope: !1440, file: !27, line: 107, baseType: !139, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1440, file: !27, line: 108, baseType: !130, size: 64, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "vss_buffer", scope: !1440, file: !27, line: 109, baseType: !130, size: 64, offset: 384)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_io_wait", scope: !1440, file: !27, line: 110, baseType: !308, size: 320, offset: 448)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "validate_cb", scope: !1398, file: !90, line: 153, baseType: !1456, size: 64, offset: 3008)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_band_validate_md_cb", file: !90, line: 46, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{null, !1397, !204}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1393, file: !114, line: 288, baseType: !1263, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_io_wait", scope: !1393, file: !114, line: 290, baseType: !308, size: 320, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1264, file: !83, line: 109, baseType: !1463, size: 128, offset: 1600)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1264, file: !83, line: 109, size: 128, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1463, file: !83, line: 109, baseType: !1263, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1463, file: !83, line: 109, baseType: !1467, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "recovery", scope: !1264, file: !83, line: 112, baseType: !204, size: 8, offset: 1728)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "compaction_start_tsc", scope: !1264, file: !83, line: 115, baseType: !139, size: 64, offset: 1792)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "compaction_length_tsc", scope: !1264, file: !83, line: 118, baseType: !139, size: 64, offset: 1856)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "md_persist_entry_ctx", scope: !1264, file: !83, line: 121, baseType: !1440, size: 768, offset: 1920)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_free_list", scope: !1248, file: !83, line: 173, baseType: !1473, size: 128, offset: 832)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !83, line: 173, size: 128, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1473, file: !83, line: 173, baseType: !1263, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1473, file: !83, line: 173, baseType: !1467, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_free_count", scope: !1248, file: !83, line: 174, baseType: !139, size: 64, offset: 960)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_open_list", scope: !1248, file: !83, line: 177, baseType: !1479, size: 128, offset: 1024)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !83, line: 177, size: 128, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1479, file: !83, line: 177, baseType: !1263, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1479, file: !83, line: 177, baseType: !1467, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_open_count", scope: !1248, file: !83, line: 178, baseType: !139, size: 64, offset: 1152)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_full_list", scope: !1248, file: !83, line: 181, baseType: !1485, size: 128, offset: 1216)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !83, line: 181, size: 128, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1485, file: !83, line: 181, baseType: !1263, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1485, file: !83, line: 181, baseType: !1467, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_full_count", scope: !1248, file: !83, line: 182, baseType: !139, size: 64, offset: 1344)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_comp_list", scope: !1248, file: !83, line: 185, baseType: !1491, size: 128, offset: 1408)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !83, line: 185, size: 128, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1491, file: !83, line: 185, baseType: !1263, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1491, file: !83, line: 185, baseType: !1467, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_comp_count", scope: !1248, file: !83, line: 186, baseType: !139, size: 64, offset: 1536)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "needs_free_persist_list", scope: !1248, file: !83, line: 189, baseType: !1497, size: 128, offset: 1600)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !83, line: 189, size: 128, elements: !1498)
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1497, file: !83, line: 189, baseType: !1263, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1497, file: !83, line: 189, baseType: !1467, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_free_persist_count", scope: !1248, file: !83, line: 190, baseType: !139, size: 64, offset: 1728)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "compactor_list", scope: !1248, file: !83, line: 192, baseType: !1503, size: 128, offset: 1792)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !83, line: 192, size: 128, elements: !1504)
!1504 = !{!1505, !1610}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1503, file: !83, line: 192, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_nv_cache_compactor", file: !83, line: 124, size: 640, elements: !1508)
!1508 = !{!1509, !1510, !1602, !1603, !1609}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nv_cache", scope: !1507, file: !83, line: 125, baseType: !1267, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "wr", scope: !1507, file: !83, line: 126, baseType: !1511, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_rq", file: !114, line: 181, size: 2304, elements: !1513)
!1513 = !{!1514, !1515, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1541, !1549, !1555, !1556}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1512, file: !114, line: 182, baseType: !157, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "qentry", scope: !1512, file: !114, line: 185, baseType: !1516, size: 128, offset: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !114, line: 185, size: 128, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1516, file: !114, line: 185, baseType: !1511, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1516, file: !114, line: 185, baseType: !1520, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !1512, file: !114, line: 188, baseType: !139, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "io_md", scope: !1512, file: !114, line: 191, baseType: !130, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "io_md_size", scope: !1512, file: !114, line: 194, baseType: !139, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "io_vec_size", scope: !1512, file: !114, line: 197, baseType: !139, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "io_vec", scope: !1512, file: !114, line: 200, baseType: !466, size: 64, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "io_payload", scope: !1512, file: !114, line: 203, baseType: !130, size: 64, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "success", scope: !1512, file: !114, line: 206, baseType: !204, size: 8, offset: 576)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1512, file: !114, line: 222, baseType: !1529, size: 256, offset: 640)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !114, line: 209, size: 256, elements: !1530)
!1530 = !{!1531, !1535, !1539, !1540}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1529, file: !114, line: 211, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !1511}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1529, file: !114, line: 214, baseType: !1536, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !1511, !1397, !139, !139}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1529, file: !114, line: 218, baseType: !130, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "compaction", scope: !1529, file: !114, line: 221, baseType: !204, size: 8, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1512, file: !114, line: 235, baseType: !1542, size: 160, offset: 896)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !114, line: 225, size: 160, elements: !1543)
!1543 = !{!1544, !1545, !1546, !1547, !1548}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !1542, file: !114, line: 226, baseType: !192, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1542, file: !114, line: 228, baseType: !192, size: 32, offset: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "qd", scope: !1542, file: !114, line: 231, baseType: !192, size: 32, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !1542, file: !114, line: 233, baseType: !192, size: 32, offset: 96)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1542, file: !114, line: 234, baseType: !156, size: 32, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !1512, file: !114, line: 246, baseType: !1550, size: 448, offset: 1088)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !114, line: 238, size: 448, elements: !1551)
!1551 = !{!1552, !1553, !1554}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1550, file: !114, line: 240, baseType: !1312, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "band", scope: !1550, file: !114, line: 243, baseType: !1397, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_io_wait", scope: !1550, file: !114, line: 245, baseType: !308, size: 320, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "md_persist_entry_ctx", scope: !1512, file: !114, line: 249, baseType: !1440, size: 768, offset: 1536)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1512, file: !114, line: 251, baseType: !1557, offset: 2304)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1558, elements: !1600)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_rq_entry", file: !114, line: 136, size: 1344, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565, !1567, !1571, !1575, !1594}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "io_payload", scope: !1558, file: !114, line: 138, baseType: !130, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "io_md", scope: !1558, file: !114, line: 140, baseType: !130, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1558, file: !114, line: 146, baseType: !1312, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "lba", scope: !1558, file: !114, line: 149, baseType: !139, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "seq_id", scope: !1558, file: !114, line: 152, baseType: !139, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1558, file: !114, line: 155, baseType: !1566, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1558, file: !114, line: 159, baseType: !1568, size: 64, offset: 384)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1558, file: !114, line: 157, size: 64, elements: !1569)
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1568, file: !114, line: 158, baseType: !130, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !1558, file: !114, line: 164, baseType: !1572, size: 64, offset: 448)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1558, file: !114, line: 162, size: 64, elements: !1573)
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "band", scope: !1572, file: !114, line: 163, baseType: !1397, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "l2p_pin_ctx", scope: !1558, file: !114, line: 167, baseType: !1576, size: 384, offset: 512)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_l2p_pin_ctx", file: !1577, line: 26, size: 384, elements: !1578)
!1577 = !DIFile(filename: "./ftl_l2p.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "4e1308098fc9e1827f9d87efff6ff9b7")
!1578 = !{!1579, !1580, !1581, !1587, !1588}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lba", scope: !1576, file: !1577, line: 27, baseType: !139, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1576, file: !1577, line: 28, baseType: !139, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1576, file: !1577, line: 29, baseType: !1582, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_l2p_pin_cb", file: !1577, line: 20, baseType: !1583)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !157, !156, !1586}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "cb_ctx", scope: !1576, file: !1577, line: 30, baseType: !130, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1576, file: !1577, line: 31, baseType: !1589, size: 128, offset: 256)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !1577, line: 31, size: 128, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1589, file: !1577, line: 31, baseType: !1586, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1589, file: !1577, line: 31, baseType: !1593, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_io", scope: !1558, file: !114, line: 173, baseType: !1595, size: 448, offset: 896)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1558, file: !114, line: 169, size: 448, elements: !1596)
!1596 = !{!1597, !1598, !1599}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "offset_blocks", scope: !1595, file: !114, line: 170, baseType: !139, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !1595, file: !114, line: 171, baseType: !139, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_entry", scope: !1595, file: !114, line: 172, baseType: !308, size: 320, offset: 128)
!1600 = !{!1601}
!1601 = !DISubrange(count: -1)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "rd", scope: !1507, file: !83, line: 127, baseType: !1511, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1507, file: !83, line: 128, baseType: !1604, size: 128, offset: 192)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1507, file: !83, line: 128, size: 128, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1604, file: !83, line: 128, baseType: !1506, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1604, file: !83, line: 128, baseType: !1608, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_io_wait", scope: !1507, file: !83, line: 129, baseType: !308, size: 320, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1503, file: !83, line: 192, baseType: !1608, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "compaction_active_count", scope: !1248, file: !83, line: 193, baseType: !139, size: 64, offset: 1920)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_compaction_threshold", scope: !1248, file: !83, line: 194, baseType: !139, size: 64, offset: 1984)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !1248, file: !83, line: 196, baseType: !1263, size: 64, offset: 2048)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "last_seq_id", scope: !1248, file: !83, line: 198, baseType: !139, size: 64, offset: 2112)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_free_target", scope: !1248, file: !83, line: 200, baseType: !139, size: 64, offset: 2176)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "compaction_sma", scope: !1248, file: !83, line: 203, baseType: !1617, size: 64, offset: 2240)
!1617 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "compaction_recent_bw", scope: !1248, file: !83, line: 212, baseType: !1619, size: 1216, offset: 2304)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compaction_bw_stats", file: !83, line: 207, size: 1216, elements: !1620)
!1620 = !{!1621, !1623, !1626, !1627}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1619, file: !83, line: 208, baseType: !1622, size: 1024)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1617, size: 1024, elements: !179)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1619, file: !83, line: 209, baseType: !1624, size: 64, offset: 1024)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !454, line: 59, baseType: !1625)
!1625 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1619, file: !83, line: 210, baseType: !183, size: 64, offset: 1088)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sum", scope: !1619, file: !83, line: 211, baseType: !1617, size: 64, offset: 1152)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !1248, file: !83, line: 219, baseType: !1629, size: 256, offset: 3520)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !83, line: 214, size: 256, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tsc", scope: !1629, file: !83, line: 215, baseType: !139, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "start_tsc", scope: !1629, file: !83, line: 216, baseType: !139, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_submitted", scope: !1629, file: !83, line: 217, baseType: !139, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_submitted_limit", scope: !1629, file: !83, line: 218, baseType: !139, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_pool", scope: !158, file: !159, line: 82, baseType: !1229, size: 64, offset: 22592)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_pool_md", scope: !158, file: !159, line: 85, baseType: !276, size: 64, offset: 22656)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "band_md_pool", scope: !158, file: !159, line: 88, baseType: !1229, size: 64, offset: 22720)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !158, file: !159, line: 91, baseType: !1639, size: 64, offset: 22784)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_trace", file: !1640, line: 19, size: 64, elements: !1641)
!1640 = !DIFile(filename: "./ftl_trace.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "738b8251f0db103d44568a9a6ca7c3e7")
!1641 = !{!1642}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1639, file: !1640, line: 21, baseType: !139, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !158, file: !159, line: 94, baseType: !1644, size: 4160, offset: 22848)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_stats", file: !120, line: 57, size: 4160, elements: !1645)
!1645 = !{!1646, !1648, !1649}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !1644, file: !120, line: 63, baseType: !1647, size: 256)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !189)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "io_activity_total", scope: !1644, file: !120, line: 69, baseType: !139, size: 64, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1644, file: !120, line: 71, baseType: !1650, size: 3840, offset: 320)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1651, size: 3840, elements: !1665)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_stats_entry", file: !120, line: 42, size: 640, elements: !1652)
!1652 = !{!1653, !1664}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1651, file: !120, line: 43, baseType: !1654, size: 320)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_stats_group", file: !120, line: 36, size: 320, elements: !1655)
!1655 = !{!1656, !1657, !1658}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "ios", scope: !1654, file: !120, line: 37, baseType: !139, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1654, file: !120, line: 38, baseType: !139, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !1654, file: !120, line: 39, baseType: !1659, size: 192, offset: 128)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_stats_error", file: !120, line: 30, size: 192, elements: !1660)
!1660 = !{!1661, !1662, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "media", scope: !1659, file: !120, line: 31, baseType: !139, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !1659, file: !120, line: 32, baseType: !139, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1659, file: !120, line: 33, baseType: !139, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1651, file: !120, line: 44, baseType: !1654, size: 320, offset: 320)
!1665 = !{!1666}
!1666 = !DISubrange(count: 6)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "bands", scope: !158, file: !159, line: 97, baseType: !1397, size: 64, offset: 27008)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "num_bands", scope: !158, file: !159, line: 100, baseType: !139, size: 64, offset: 27072)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "next_band", scope: !158, file: !159, line: 103, baseType: !1397, size: 64, offset: 27136)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "free_bands", scope: !158, file: !159, line: 106, baseType: !1671, size: 128, offset: 27200)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !159, line: 106, size: 128, elements: !1672)
!1672 = !{!1673, !1674}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1671, file: !159, line: 106, baseType: !1397, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1671, file: !159, line: 106, baseType: !1438, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "shut_bands", scope: !158, file: !159, line: 109, baseType: !1676, size: 128, offset: 27328)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !159, line: 109, size: 128, elements: !1677)
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1676, file: !159, line: 109, baseType: !1397, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1676, file: !159, line: 109, baseType: !1438, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "num_free", scope: !158, file: !159, line: 112, baseType: !139, size: 64, offset: 27456)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "l2p", scope: !158, file: !159, line: 115, baseType: !130, size: 64, offset: 27520)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "l2p_deferred_pins", scope: !158, file: !159, line: 118, baseType: !1683, size: 128, offset: 27584)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !159, line: 118, size: 128, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1683, file: !159, line: 118, baseType: !1586, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1683, file: !159, line: 118, baseType: !1593, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "num_lbas", scope: !158, file: !159, line: 121, baseType: !139, size: 64, offset: 27712)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "valid_map", scope: !158, file: !159, line: 124, baseType: !1292, size: 64, offset: 27776)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !158, file: !159, line: 127, baseType: !139, size: 64, offset: 27840)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_size", scope: !158, file: !159, line: 130, baseType: !139, size: 64, offset: 27904)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !158, file: !159, line: 133, baseType: !156, size: 32, offset: 27968)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "num_inflight", scope: !158, file: !159, line: 136, baseType: !192, size: 32, offset: 28000)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "reloc", scope: !158, file: !159, line: 139, baseType: !1694, size: 64, offset: 28032)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_reloc", file: !101, line: 154, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "core_thread", scope: !158, file: !159, line: 142, baseType: !419, size: 64, offset: 28096)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ioch", scope: !158, file: !159, line: 147, baseType: !272, size: 64, offset: 28160)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "base_ioch", scope: !158, file: !159, line: 150, baseType: !272, size: 64, offset: 28224)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "core_poller", scope: !158, file: !159, line: 153, baseType: !517, size: 64, offset: 28288)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rd_sq", scope: !158, file: !159, line: 156, baseType: !1701, size: 128, offset: 28352)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !159, line: 156, size: 128, elements: !1702)
!1702 = !{!1703, !1739}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1701, file: !159, line: 156, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_io", file: !114, line: 58, size: 2176, elements: !1706)
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1724, !1725, !1726, !1727, !1728, !1734, !1735, !1736, !1738}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1705, file: !114, line: 60, baseType: !157, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ioch", scope: !1705, file: !114, line: 63, baseType: !272, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "lba", scope: !1705, file: !114, line: 66, baseType: !139, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1705, file: !114, line: 69, baseType: !1312, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1705, file: !114, line: 72, baseType: !183, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !1705, file: !114, line: 75, baseType: !183, size: 64, offset: 320)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !1705, file: !114, line: 78, baseType: !466, size: 64, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !1705, file: !114, line: 81, baseType: !130, size: 64, offset: 448)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "iov_cnt", scope: !1705, file: !114, line: 84, baseType: !183, size: 64, offset: 512)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "iov_pos", scope: !1705, file: !114, line: 87, baseType: !183, size: 64, offset: 576)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "iov_off", scope: !1705, file: !114, line: 90, baseType: !183, size: 64, offset: 640)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "band", scope: !1705, file: !114, line: 93, baseType: !1397, size: 64, offset: 704)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1705, file: !114, line: 96, baseType: !156, size: 32, offset: 768)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "req_cnt", scope: !1705, file: !114, line: 99, baseType: !183, size: 64, offset: 832)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "cb_ctx", scope: !1705, file: !114, line: 102, baseType: !130, size: 64, offset: 896)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "user_fn", scope: !1705, file: !114, line: 105, baseType: !1723, size: 64, offset: 960)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_ftl_fn", file: !120, line: 157, baseType: !1013)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1705, file: !114, line: 108, baseType: !156, size: 32, offset: 1024)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1705, file: !114, line: 111, baseType: !113, size: 32, offset: 1056)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1705, file: !114, line: 114, baseType: !204, size: 8, offset: 1088)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !1705, file: !114, line: 117, baseType: !139, size: 64, offset: 1152)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "queue_entry", scope: !1705, file: !114, line: 120, baseType: !1729, size: 128, offset: 1216)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1705, file: !114, line: 120, size: 128, elements: !1730)
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1729, file: !114, line: 120, baseType: !1704, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1729, file: !114, line: 120, baseType: !1733, size: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "nv_cache_chunk", scope: !1705, file: !114, line: 123, baseType: !1263, size: 64, offset: 1344)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "l2p_pin_ctx", scope: !1705, file: !114, line: 126, baseType: !1576, size: 384, offset: 1408)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1705, file: !114, line: 130, baseType: !1737, size: 64, offset: 1792)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_io_wait", scope: !1705, file: !114, line: 132, baseType: !308, size: 320, offset: 1856)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1701, file: !159, line: 156, baseType: !1733, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "wr_sq", scope: !158, file: !159, line: 159, baseType: !1741, size: 128, offset: 28480)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !159, line: 159, size: 128, elements: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1741, file: !159, line: 159, baseType: !1704, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1741, file: !159, line: 159, baseType: !1733, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_sq", scope: !158, file: !159, line: 162, baseType: !1746, size: 128, offset: 28608)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !159, line: 162, size: 128, elements: !1747)
!1747 = !{!1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1746, file: !159, line: 162, baseType: !1704, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1746, file: !159, line: 162, baseType: !1733, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_map", scope: !158, file: !159, line: 165, baseType: !1292, size: 64, offset: 28736)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_map_md", scope: !158, file: !159, line: 166, baseType: !276, size: 64, offset: 28800)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_qd", scope: !158, file: !159, line: 167, baseType: !183, size: 64, offset: 28864)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_in_progress", scope: !158, file: !159, line: 168, baseType: !204, size: 8, offset: 28928)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "writer_user", scope: !158, file: !159, line: 171, baseType: !1755, size: 704, offset: 28992)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_writer", file: !1756, line: 14, size: 704, elements: !1757)
!1756 = !DIFile(filename: "./ftl_writer.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "7cf22c54234e488fa1c5090db7da82bf")
!1757 = !{!1758, !1759, !1764, !1765, !1766, !1767, !1772, !1773, !1774, !1775}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1755, file: !1756, line: 15, baseType: !157, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rq_queue", scope: !1755, file: !1756, line: 17, baseType: !1760, size: 128, offset: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !1756, line: 17, size: 128, elements: !1761)
!1761 = !{!1762, !1763}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1760, file: !1756, line: 17, baseType: !1511, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1760, file: !1756, line: 17, baseType: !1520, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "band", scope: !1755, file: !1756, line: 20, baseType: !1397, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "num_bands", scope: !1755, file: !1756, line: 23, baseType: !139, size: 64, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "next_band", scope: !1755, file: !1756, line: 26, baseType: !1397, size: 64, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "full_bands", scope: !1755, file: !1756, line: 29, baseType: !1768, size: 128, offset: 384)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !1756, line: 29, size: 128, elements: !1769)
!1769 = !{!1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1768, file: !1756, line: 29, baseType: !1397, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1768, file: !1756, line: 29, baseType: !1438, size: 64, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1755, file: !1756, line: 32, baseType: !156, size: 32, offset: 512)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "halt", scope: !1755, file: !1756, line: 35, baseType: !204, size: 8, offset: 544)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "writer_type", scope: !1755, file: !1756, line: 38, baseType: !100, size: 32, offset: 576)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "last_seq_id", scope: !1755, file: !1756, line: 40, baseType: !139, size: 64, offset: 640)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "writer_gc", scope: !158, file: !159, line: 174, baseType: !1755, size: 704, offset: 29696)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "num_logical_bands_in_physical", scope: !158, file: !159, line: 176, baseType: !192, size: 32, offset: 30400)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "init_retry", scope: !158, file: !159, line: 179, baseType: !204, size: 8, offset: 30432)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_ckpt", scope: !158, file: !159, line: 187, baseType: !1780, size: 256, offset: 30464)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !159, line: 182, size: 256, elements: !1781)
!1781 = !{!1782, !1787}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1780, file: !159, line: 184, baseType: !1783, size: 128)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1780, file: !159, line: 184, size: 128, elements: !1784)
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1783, file: !159, line: 184, baseType: !1329, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1783, file: !159, line: 184, baseType: !1337, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1780, file: !159, line: 186, baseType: !1788, size: 128, offset: 128)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1780, file: !159, line: 186, size: 128, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1788, file: !159, line: 186, baseType: !1329, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1788, file: !159, line: 186, baseType: !1337, size: 64, offset: 64)
!1792 = !{!1793, !1794, !1795}
!1793 = !DILocalVariable(name: "dev", arg: 1, scope: !153, file: !1, line: 77, type: !157)
!1794 = !DILocalVariable(name: "region_type", scope: !153, file: !1, line: 79, type: !156)
!1795 = !DILocalVariable(name: "ckpt", scope: !153, file: !1, line: 80, type: !1329)
!1796 = !DILocation(line: 77, column: 40, scope: !153)
!1797 = !DILocation(line: 79, column: 2, scope: !153)
!1798 = !DILocation(line: 79, column: 6, scope: !153)
!1799 = !DILocation(line: 80, column: 2, scope: !153)
!1800 = !DILocation(line: 80, column: 23, scope: !153)
!1801 = !DILocation(line: 82, column: 2, scope: !153)
!1802 = !DILocation(line: 82, column: 2, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !153, file: !1, line: 82, column: 2)
!1804 = !DILocation(line: 83, column: 2, scope: !153)
!1805 = !DILocation(line: 83, column: 2, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !153, file: !1, line: 83, column: 2)
!1807 = !DILocation(line: 84, column: 19, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !153, file: !1, line: 84, column: 2)
!1809 = !DILocation(line: 84, column: 7, scope: !1808)
!1810 = !DILocation(line: 85, column: 7, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1808, file: !1, line: 84, column: 2)
!1812 = !DILocation(line: 85, column: 19, scope: !1811)
!1813 = !DILocation(line: 84, column: 2, scope: !1808)
!1814 = !DILocation(line: 87, column: 27, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !1, line: 86, column: 22)
!1816 = !DILocation(line: 87, column: 32, scope: !1815)
!1817 = !DILocation(line: 87, column: 10, scope: !1815)
!1818 = !DILocation(line: 87, column: 8, scope: !1815)
!1819 = !DILocation(line: 88, column: 8, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !1, line: 88, column: 7)
!1821 = !DILocation(line: 88, column: 7, scope: !1815)
!1822 = !DILocation(line: 89, column: 4, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1820, file: !1, line: 88, column: 14)
!1824 = !DILocation(line: 91, column: 3, scope: !1815)
!1825 = !DILocation(line: 91, column: 3, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1815, file: !1, line: 91, column: 3)
!1827 = !DILocation(line: 92, column: 2, scope: !1815)
!1828 = !DILocation(line: 86, column: 18, scope: !1811)
!1829 = !DILocation(line: 84, column: 2, scope: !1811)
!1830 = distinct !{!1830, !1813, !1831}
!1831 = !DILocation(line: 92, column: 2, scope: !1808)
!1832 = !DILocation(line: 93, column: 2, scope: !153)
!1833 = !DILocation(line: 94, column: 1, scope: !153)
!1834 = distinct !DISubprogram(name: "ftl_p2l_ckpt_new", scope: !1, file: !1, line: 32, type: !1835, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1837)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!1329, !157, !156}
!1837 = !{!1838, !1839, !1840}
!1838 = !DILocalVariable(name: "dev", arg: 1, scope: !1834, file: !1, line: 32, type: !157)
!1839 = !DILocalVariable(name: "region_type", arg: 2, scope: !1834, file: !1, line: 32, type: !156)
!1840 = !DILocalVariable(name: "ckpt", scope: !1834, file: !1, line: 34, type: !1329)
!1841 = !DILocation(line: 32, column: 39, scope: !1834)
!1842 = !DILocation(line: 32, column: 48, scope: !1834)
!1843 = !DILocation(line: 34, column: 2, scope: !1834)
!1844 = !DILocation(line: 34, column: 23, scope: !1834)
!1845 = !DILocation(line: 36, column: 9, scope: !1834)
!1846 = !DILocation(line: 36, column: 7, scope: !1834)
!1847 = !DILocation(line: 37, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1834, file: !1, line: 37, column: 6)
!1849 = !DILocation(line: 37, column: 6, scope: !1834)
!1850 = !DILocation(line: 38, column: 3, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1848, file: !1, line: 37, column: 13)
!1852 = !DILocation(line: 41, column: 44, scope: !1834)
!1853 = !DILocation(line: 41, column: 49, scope: !1834)
!1854 = !DILocation(line: 41, column: 56, scope: !1834)
!1855 = !DILocation(line: 41, column: 63, scope: !1834)
!1856 = !DILocation(line: 42, column: 8, scope: !1834)
!1857 = !DILocation(line: 42, column: 13, scope: !1834)
!1858 = !DILocation(line: 42, column: 20, scope: !1834)
!1859 = !DILocation(line: 42, column: 27, scope: !1834)
!1860 = !DILocation(line: 42, column: 40, scope: !1834)
!1861 = !DILocation(line: 41, column: 22, scope: !1834)
!1862 = !DILocation(line: 41, column: 2, scope: !1834)
!1863 = !DILocation(line: 41, column: 8, scope: !1834)
!1864 = !DILocation(line: 41, column: 20, scope: !1834)
!1865 = !DILocation(line: 43, column: 25, scope: !1834)
!1866 = !DILocation(line: 43, column: 30, scope: !1834)
!1867 = !DILocation(line: 43, column: 37, scope: !1834)
!1868 = !DILocation(line: 43, column: 44, scope: !1834)
!1869 = !DILocation(line: 43, column: 2, scope: !1834)
!1870 = !DILocation(line: 43, column: 8, scope: !1834)
!1871 = !DILocation(line: 43, column: 22, scope: !1834)
!1872 = !DILocation(line: 44, column: 13, scope: !1834)
!1873 = !DILocation(line: 44, column: 18, scope: !1834)
!1874 = !DILocation(line: 44, column: 25, scope: !1834)
!1875 = !DILocation(line: 44, column: 28, scope: !1834)
!1876 = !DILocation(line: 44, column: 2, scope: !1834)
!1877 = !DILocation(line: 44, column: 8, scope: !1834)
!1878 = !DILocation(line: 44, column: 11, scope: !1834)
!1879 = !DILocation(line: 45, column: 68, scope: !1834)
!1880 = !DILocation(line: 45, column: 41, scope: !1834)
!1881 = !DILocation(line: 45, column: 20, scope: !1834)
!1882 = !DILocation(line: 45, column: 2, scope: !1834)
!1883 = !DILocation(line: 45, column: 8, scope: !1834)
!1884 = !DILocation(line: 45, column: 18, scope: !1834)
!1885 = !DILocation(line: 47, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1834, file: !1, line: 47, column: 6)
!1887 = !DILocation(line: 47, column: 13, scope: !1886)
!1888 = !DILocation(line: 47, column: 6, scope: !1834)
!1889 = !DILocation(line: 48, column: 8, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1886, file: !1, line: 47, column: 26)
!1891 = !DILocation(line: 48, column: 3, scope: !1890)
!1892 = !DILocation(line: 49, column: 3, scope: !1890)
!1893 = !DILocation(line: 62, column: 9, scope: !1834)
!1894 = !DILocation(line: 62, column: 2, scope: !1834)
!1895 = !DILocation(line: 63, column: 1, scope: !1834)
!1896 = distinct !DISubprogram(name: "ftl_p2l_ckpt_deinit", scope: !1, file: !1, line: 97, type: !1897, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1899)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !157}
!1899 = !{!1900, !1901, !1902}
!1900 = !DILocalVariable(name: "dev", arg: 1, scope: !1896, file: !1, line: 97, type: !157)
!1901 = !DILocalVariable(name: "ckpt", scope: !1896, file: !1, line: 99, type: !1329)
!1902 = !DILocalVariable(name: "ckpt_next", scope: !1896, file: !1, line: 99, type: !1329)
!1903 = !DILocation(line: 97, column: 42, scope: !1896)
!1904 = !DILocation(line: 99, column: 2, scope: !1896)
!1905 = !DILocation(line: 99, column: 23, scope: !1896)
!1906 = !DILocation(line: 99, column: 30, scope: !1896)
!1907 = !DILocation(line: 101, column: 2, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1896, file: !1, line: 101, column: 2)
!1909 = !DILocation(line: 101, column: 2, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 101, column: 2)
!1911 = !DILocation(line: 0, scope: !1910)
!1912 = !DILocation(line: 102, column: 3, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1910, file: !1, line: 101, column: 65)
!1914 = !DILocation(line: 102, column: 3, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !1, line: 102, column: 3)
!1916 = distinct !DILexicalBlock(scope: !1913, file: !1, line: 102, column: 3)
!1917 = !DILocation(line: 102, column: 3, scope: !1916)
!1918 = !DILocation(line: 103, column: 24, scope: !1913)
!1919 = !DILocation(line: 103, column: 3, scope: !1913)
!1920 = !DILocation(line: 104, column: 2, scope: !1913)
!1921 = distinct !{!1921, !1907, !1922}
!1922 = !DILocation(line: 104, column: 2, scope: !1908)
!1923 = !DILocation(line: 106, column: 2, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1896, file: !1, line: 106, column: 2)
!1925 = !DILocation(line: 106, column: 2, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1924, file: !1, line: 106, column: 2)
!1927 = !DILocation(line: 0, scope: !1926)
!1928 = !DILocation(line: 107, column: 3, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1926, file: !1, line: 106, column: 66)
!1930 = !DILocation(line: 107, column: 3, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !1, line: 107, column: 3)
!1932 = distinct !DILexicalBlock(scope: !1929, file: !1, line: 107, column: 3)
!1933 = !DILocation(line: 107, column: 3, scope: !1932)
!1934 = !DILocation(line: 108, column: 24, scope: !1929)
!1935 = !DILocation(line: 108, column: 3, scope: !1929)
!1936 = !DILocation(line: 109, column: 2, scope: !1929)
!1937 = distinct !{!1937, !1923, !1938}
!1938 = !DILocation(line: 109, column: 2, scope: !1924)
!1939 = !DILocation(line: 110, column: 1, scope: !1896)
!1940 = distinct !DISubprogram(name: "ftl_p2l_ckpt_destroy", scope: !1, file: !1, line: 66, type: !1941, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{null, !1329}
!1943 = !{!1944}
!1944 = !DILocalVariable(name: "ckpt", arg: 1, scope: !1940, file: !1, line: 66, type: !1329)
!1945 = !DILocation(line: 66, column: 43, scope: !1940)
!1946 = !DILocation(line: 72, column: 16, scope: !1940)
!1947 = !DILocation(line: 72, column: 22, scope: !1940)
!1948 = !DILocation(line: 72, column: 2, scope: !1940)
!1949 = !DILocation(line: 73, column: 7, scope: !1940)
!1950 = !DILocation(line: 73, column: 2, scope: !1940)
!1951 = !DILocation(line: 74, column: 1, scope: !1940)
!1952 = distinct !DISubprogram(name: "ftl_p2l_ckpt_acquire", scope: !1, file: !1, line: 113, type: !1953, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1329, !157}
!1955 = !{!1956, !1957}
!1956 = !DILocalVariable(name: "dev", arg: 1, scope: !1952, file: !1, line: 113, type: !157)
!1957 = !DILocalVariable(name: "ckpt", scope: !1952, file: !1, line: 115, type: !1329)
!1958 = !DILocation(line: 113, column: 43, scope: !1952)
!1959 = !DILocation(line: 115, column: 2, scope: !1952)
!1960 = !DILocation(line: 115, column: 23, scope: !1952)
!1961 = !DILocation(line: 117, column: 9, scope: !1952)
!1962 = !DILocation(line: 117, column: 7, scope: !1952)
!1963 = !DILocation(line: 119, column: 2, scope: !1952)
!1964 = !DILocation(line: 119, column: 2, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !1, line: 119, column: 2)
!1966 = distinct !DILexicalBlock(scope: !1952, file: !1, line: 119, column: 2)
!1967 = !DILocation(line: 119, column: 2, scope: !1966)
!1968 = !DILocation(line: 120, column: 2, scope: !1952)
!1969 = !DILocation(line: 120, column: 2, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1952, file: !1, line: 120, column: 2)
!1971 = !DILocation(line: 121, column: 9, scope: !1952)
!1972 = !DILocation(line: 122, column: 1, scope: !1952)
!1973 = !DILocation(line: 121, column: 2, scope: !1952)
!1974 = distinct !DISubprogram(name: "ftl_p2l_ckpt_release", scope: !1, file: !1, line: 125, type: !1975, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !157, !1329}
!1977 = !{!1978, !1979}
!1978 = !DILocalVariable(name: "dev", arg: 1, scope: !1974, file: !1, line: 125, type: !157)
!1979 = !DILocalVariable(name: "ckpt", arg: 2, scope: !1974, file: !1, line: 125, type: !1329)
!1980 = !DILocation(line: 125, column: 43, scope: !1974)
!1981 = !DILocation(line: 125, column: 69, scope: !1974)
!1982 = !DILocation(line: 131, column: 2, scope: !1974)
!1983 = !DILocation(line: 131, column: 2, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 131, column: 2)
!1985 = distinct !DILexicalBlock(scope: !1974, file: !1, line: 131, column: 2)
!1986 = !DILocation(line: 131, column: 2, scope: !1985)
!1987 = !DILocation(line: 132, column: 2, scope: !1974)
!1988 = !DILocation(line: 132, column: 2, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1974, file: !1, line: 132, column: 2)
!1990 = !DILocation(line: 133, column: 1, scope: !1974)
!1991 = distinct !DISubprogram(name: "ftl_p2l_ckpt_issue", scope: !1, file: !1, line: 158, type: !1533, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1992)
!1992 = !{!1993, !1994, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003}
!1993 = !DILocalVariable(name: "rq", arg: 1, scope: !1991, file: !1, line: 158, type: !1511)
!1994 = !DILocalVariable(name: "iter", scope: !1991, file: !1, line: 160, type: !1995)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1996 = !DILocalVariable(name: "addr", scope: !1991, file: !1, line: 161, type: !1312)
!1997 = !DILocalVariable(name: "ckpt", scope: !1991, file: !1, line: 162, type: !1329)
!1998 = !DILocalVariable(name: "map_page", scope: !1991, file: !1, line: 163, type: !131)
!1999 = !DILocalVariable(name: "md_page", scope: !1991, file: !1, line: 164, type: !1339)
!2000 = !DILocalVariable(name: "band", scope: !1991, file: !1, line: 165, type: !1397)
!2001 = !DILocalVariable(name: "band_offs", scope: !1991, file: !1, line: 166, type: !139)
!2002 = !DILocalVariable(name: "p2l_map_page_no", scope: !1991, file: !1, line: 166, type: !139)
!2003 = !DILocalVariable(name: "i", scope: !1991, file: !1, line: 166, type: !139)
!2004 = !DILocation(line: 158, column: 35, scope: !1991)
!2005 = !DILocation(line: 160, column: 2, scope: !1991)
!2006 = !DILocation(line: 160, column: 23, scope: !1991)
!2007 = !DILocation(line: 160, column: 30, scope: !1991)
!2008 = !DILocation(line: 160, column: 34, scope: !1991)
!2009 = !DILocation(line: 161, column: 2, scope: !1991)
!2010 = !DILocation(line: 161, column: 11, scope: !1991)
!2011 = !DILocation(line: 161, column: 18, scope: !1991)
!2012 = !DILocation(line: 161, column: 22, scope: !1991)
!2013 = !DILocation(line: 161, column: 25, scope: !1991)
!2014 = !DILocation(line: 162, column: 2, scope: !1991)
!2015 = !DILocation(line: 162, column: 23, scope: !1991)
!2016 = !DILocation(line: 163, column: 2, scope: !1991)
!2017 = !DILocation(line: 163, column: 28, scope: !1991)
!2018 = !DILocation(line: 164, column: 2, scope: !1991)
!2019 = !DILocation(line: 164, column: 20, scope: !1991)
!2020 = !DILocation(line: 165, column: 2, scope: !1991)
!2021 = !DILocation(line: 165, column: 19, scope: !1991)
!2022 = !DILocation(line: 166, column: 2, scope: !1991)
!2023 = !DILocation(line: 166, column: 11, scope: !1991)
!2024 = !DILocation(line: 166, column: 22, scope: !1991)
!2025 = !DILocation(line: 166, column: 39, scope: !1991)
!2026 = !DILocation(line: 169, column: 9, scope: !1991)
!2027 = !DILocation(line: 169, column: 13, scope: !1991)
!2028 = !DILocation(line: 169, column: 16, scope: !1991)
!2029 = !DILocation(line: 169, column: 7, scope: !1991)
!2030 = !DILocation(line: 170, column: 9, scope: !1991)
!2031 = !DILocation(line: 170, column: 15, scope: !1991)
!2032 = !DILocation(line: 170, column: 23, scope: !1991)
!2033 = !DILocation(line: 170, column: 7, scope: !1991)
!2034 = !DILocation(line: 174, column: 47, scope: !1991)
!2035 = !DILocation(line: 174, column: 53, scope: !1991)
!2036 = !DILocation(line: 174, column: 57, scope: !1991)
!2037 = !DILocation(line: 174, column: 60, scope: !1991)
!2038 = !DILocation(line: 174, column: 15, scope: !1991)
!2039 = !DILocation(line: 174, column: 12, scope: !1991)
!2040 = !DILocation(line: 175, column: 20, scope: !1991)
!2041 = !DILocation(line: 175, column: 30, scope: !1991)
!2042 = !DILocation(line: 175, column: 18, scope: !1991)
!2043 = !DILocation(line: 182, column: 42, scope: !1991)
!2044 = !DILocation(line: 182, column: 48, scope: !1991)
!2045 = !DILocation(line: 182, column: 56, scope: !1991)
!2046 = !DILocation(line: 182, column: 68, scope: !1991)
!2047 = !DILocation(line: 182, column: 66, scope: !1991)
!2048 = !DILocation(line: 182, column: 11, scope: !1991)
!2049 = !DILocation(line: 186, column: 13, scope: !1991)
!2050 = !DILocation(line: 186, column: 19, scope: !1991)
!2051 = !DILocation(line: 186, column: 31, scope: !1991)
!2052 = !DILocation(line: 186, column: 10, scope: !1991)
!2053 = !DILocation(line: 187, column: 29, scope: !1991)
!2054 = !DILocation(line: 187, column: 35, scope: !1991)
!2055 = !DILocation(line: 187, column: 39, scope: !1991)
!2056 = !DILocation(line: 187, column: 2, scope: !1991)
!2057 = !DILocation(line: 187, column: 20, scope: !1991)
!2058 = !DILocation(line: 187, column: 27, scope: !1991)
!2059 = !DILocation(line: 191, column: 9, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1991, file: !1, line: 191, column: 2)
!2061 = !DILocation(line: 191, column: 7, scope: !2060)
!2062 = !DILocation(line: 191, column: 14, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 191, column: 2)
!2064 = !DILocation(line: 191, column: 18, scope: !2063)
!2065 = !DILocation(line: 191, column: 22, scope: !2063)
!2066 = !DILocation(line: 191, column: 16, scope: !2063)
!2067 = !DILocation(line: 191, column: 2, scope: !2060)
!2068 = !DILocation(line: 192, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 192, column: 7)
!2070 = distinct !DILexicalBlock(scope: !2063, file: !1, line: 191, column: 47)
!2071 = !DILocation(line: 192, column: 13, scope: !2069)
!2072 = !DILocation(line: 192, column: 17, scope: !2069)
!2073 = !DILocation(line: 192, column: 7, scope: !2070)
!2074 = !DILocation(line: 195, column: 21, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2069, file: !1, line: 192, column: 37)
!2076 = !DILocation(line: 195, column: 27, scope: !2075)
!2077 = !DILocation(line: 195, column: 33, scope: !2075)
!2078 = !DILocation(line: 195, column: 38, scope: !2075)
!2079 = !DILocation(line: 195, column: 44, scope: !2075)
!2080 = !DILocation(line: 195, column: 50, scope: !2075)
!2081 = !DILocation(line: 195, column: 4, scope: !2075)
!2082 = !DILocation(line: 196, column: 3, scope: !2075)
!2083 = !DILocation(line: 197, column: 29, scope: !2070)
!2084 = !DILocation(line: 197, column: 35, scope: !2070)
!2085 = !DILocation(line: 197, column: 10, scope: !2070)
!2086 = !DILocation(line: 197, column: 8, scope: !2070)
!2087 = !DILocation(line: 198, column: 2, scope: !2070)
!2088 = !DILocation(line: 191, column: 35, scope: !2063)
!2089 = !DILocation(line: 191, column: 43, scope: !2063)
!2090 = !DILocation(line: 191, column: 2, scope: !2063)
!2091 = distinct !{!2091, !2067, !2092}
!2092 = !DILocation(line: 198, column: 2, scope: !2060)
!2093 = !DILocation(line: 204, column: 54, scope: !1991)
!2094 = !DILocation(line: 205, column: 7, scope: !1991)
!2095 = !DILocation(line: 205, column: 11, scope: !1991)
!2096 = !DILocation(line: 205, column: 22, scope: !1991)
!2097 = !DILocation(line: 204, column: 35, scope: !1991)
!2098 = !DILocation(line: 204, column: 2, scope: !1991)
!2099 = !DILocation(line: 204, column: 20, scope: !1991)
!2100 = !DILocation(line: 204, column: 33, scope: !1991)
!2101 = !DILocation(line: 207, column: 23, scope: !1991)
!2102 = !DILocation(line: 207, column: 29, scope: !1991)
!2103 = !DILocation(line: 207, column: 33, scope: !1991)
!2104 = !DILocation(line: 207, column: 50, scope: !1991)
!2105 = !DILocation(line: 207, column: 60, scope: !1991)
!2106 = !DILocation(line: 208, column: 9, scope: !1991)
!2107 = !DILocation(line: 208, column: 14, scope: !1991)
!2108 = !DILocation(line: 208, column: 18, scope: !1991)
!2109 = !DILocation(line: 207, column: 2, scope: !1991)
!2110 = !DILocation(line: 209, column: 1, scope: !1991)
!2111 = !DISubprogram(name: "ftl_band_block_offset_from_addr", scope: !90, file: !90, line: 157, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!139, !1397, !1312}
!2114 = !DISubprogram(name: "ftl_band_set_p2l", scope: !90, file: !90, line: 169, type: !2115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{null, !1397, !139, !1312, !139}
!2117 = !DISubprogram(name: "ftl_band_next_addr", scope: !90, file: !90, line: 166, type: !2118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!1312, !1397, !1312, !183}
!2120 = !DISubprogram(name: "spdk_crc32c_update", scope: !2121, file: !2121, line: 39, type: !2122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2121 = !DIFile(filename: "include/spdk/crc32.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "eb9cacdd830c48226b66f47ef609c2db")
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!192, !1003, !183, !192}
!2124 = !DISubprogram(name: "ftl_md_persist_entry", scope: !27, file: !27, line: 297, type: !2125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{null, !276, !139, !130, !130, !1445, !130, !2127}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!2128 = distinct !DISubprogram(name: "ftl_p2l_ckpt_issue_end", scope: !1, file: !1, line: 136, type: !1447, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2129)
!2129 = !{!2130, !2131, !2132}
!2130 = !DILocalVariable(name: "status", arg: 1, scope: !2128, file: !1, line: 136, type: !156)
!2131 = !DILocalVariable(name: "arg", arg: 2, scope: !2128, file: !1, line: 136, type: !130)
!2132 = !DILocalVariable(name: "rq", scope: !2128, file: !1, line: 138, type: !1511)
!2133 = !DILocation(line: 136, column: 28, scope: !2128)
!2134 = !DILocation(line: 136, column: 42, scope: !2128)
!2135 = !DILocation(line: 138, column: 2, scope: !2128)
!2136 = !DILocation(line: 138, column: 17, scope: !2128)
!2137 = !DILocation(line: 138, column: 22, scope: !2128)
!2138 = !DILocation(line: 141, column: 6, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2128, file: !1, line: 141, column: 6)
!2140 = !DILocation(line: 141, column: 6, scope: !2128)
!2141 = !DILocation(line: 147, column: 3, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !1, line: 141, column: 14)
!2143 = !DILocation(line: 147, column: 3, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2142, file: !1, line: 147, column: 3)
!2145 = !DILocation(line: 149, column: 2, scope: !2142)
!2146 = !DILocation(line: 152, column: 2, scope: !2128)
!2147 = !DILocation(line: 152, column: 6, scope: !2128)
!2148 = !DILocation(line: 152, column: 9, scope: !2128)
!2149 = !DILocation(line: 152, column: 15, scope: !2128)
!2150 = !DILocation(line: 152, column: 26, scope: !2128)
!2151 = !DILocation(line: 154, column: 2, scope: !2128)
!2152 = !DILocation(line: 154, column: 6, scope: !2128)
!2153 = !DILocation(line: 154, column: 12, scope: !2128)
!2154 = !DILocation(line: 154, column: 15, scope: !2128)
!2155 = !DILocation(line: 155, column: 1, scope: !2128)
!2156 = distinct !DISubprogram(name: "ftl_mngt_persist_bands_p2l", scope: !1, file: !1, line: 316, type: !2157, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2159)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null, !1245}
!2159 = !{!2160, !2161, !2169, !2170, !2171}
!2160 = !DILocalVariable(name: "mngt", arg: 1, scope: !2156, file: !1, line: 316, type: !1245)
!2161 = !DILocalVariable(name: "ctx", scope: !2156, file: !1, line: 318, type: !2162)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_p2l_sync_ctx", file: !101, line: 103, size: 256, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2168}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "band", scope: !2163, file: !101, line: 104, baseType: !1397, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "page_start", scope: !2163, file: !101, line: 105, baseType: !139, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "page_end", scope: !2163, file: !101, line: 106, baseType: !139, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "md_region", scope: !2163, file: !101, line: 107, baseType: !156, size: 32, offset: 192)
!2169 = !DILocalVariable(name: "band", scope: !2156, file: !1, line: 319, type: !1397)
!2170 = !DILocalVariable(name: "band_offs", scope: !2156, file: !1, line: 320, type: !139)
!2171 = !DILocalVariable(name: "p2l_map_page_no", scope: !2156, file: !1, line: 320, type: !139)
!2172 = !DILocation(line: 316, column: 53, scope: !2156)
!2173 = !DILocation(line: 318, column: 2, scope: !2156)
!2174 = !DILocation(line: 318, column: 27, scope: !2156)
!2175 = !DILocation(line: 318, column: 55, scope: !2156)
!2176 = !DILocation(line: 318, column: 33, scope: !2156)
!2177 = !DILocation(line: 319, column: 2, scope: !2156)
!2178 = !DILocation(line: 319, column: 19, scope: !2156)
!2179 = !DILocation(line: 320, column: 2, scope: !2156)
!2180 = !DILocation(line: 320, column: 11, scope: !2156)
!2181 = !DILocation(line: 320, column: 22, scope: !2156)
!2182 = !DILocation(line: 322, column: 6, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2156, file: !1, line: 322, column: 6)
!2184 = !DILocation(line: 322, column: 11, scope: !2183)
!2185 = !DILocation(line: 322, column: 21, scope: !2183)
!2186 = !DILocation(line: 322, column: 6, scope: !2156)
!2187 = !DILocation(line: 323, column: 22, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2183, file: !1, line: 322, column: 60)
!2189 = !DILocation(line: 323, column: 3, scope: !2188)
!2190 = !DILocation(line: 324, column: 3, scope: !2188)
!2191 = !DILocation(line: 327, column: 51, scope: !2156)
!2192 = !DILocation(line: 327, column: 34, scope: !2156)
!2193 = !DILocation(line: 327, column: 58, scope: !2156)
!2194 = !DILocation(line: 327, column: 63, scope: !2156)
!2195 = !DILocation(line: 327, column: 9, scope: !2156)
!2196 = !DILocation(line: 327, column: 7, scope: !2156)
!2197 = !DILocation(line: 330, column: 7, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2156, file: !1, line: 330, column: 6)
!2199 = !DILocation(line: 330, column: 6, scope: !2156)
!2200 = !DILocation(line: 331, column: 3, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2198, file: !1, line: 330, column: 13)
!2202 = !DILocation(line: 331, column: 8, scope: !2201)
!2203 = !DILocation(line: 331, column: 19, scope: !2201)
!2204 = !DILocation(line: 332, column: 3, scope: !2201)
!2205 = !DILocation(line: 332, column: 8, scope: !2201)
!2206 = !DILocation(line: 332, column: 17, scope: !2201)
!2207 = !DILocation(line: 333, column: 3, scope: !2201)
!2208 = !DILocation(line: 333, column: 8, scope: !2201)
!2209 = !DILocation(line: 333, column: 17, scope: !2201)
!2210 = !DILocation(line: 334, column: 26, scope: !2201)
!2211 = !DILocation(line: 334, column: 3, scope: !2201)
!2212 = !DILocation(line: 335, column: 3, scope: !2201)
!2213 = !DILocation(line: 338, column: 46, scope: !2156)
!2214 = !DILocation(line: 338, column: 52, scope: !2156)
!2215 = !DILocation(line: 338, column: 58, scope: !2156)
!2216 = !DILocation(line: 338, column: 62, scope: !2156)
!2217 = !DILocation(line: 338, column: 67, scope: !2156)
!2218 = !DILocation(line: 338, column: 14, scope: !2156)
!2219 = !DILocation(line: 338, column: 12, scope: !2156)
!2220 = !DILocation(line: 339, column: 20, scope: !2156)
!2221 = !DILocation(line: 339, column: 30, scope: !2156)
!2222 = !DILocation(line: 339, column: 18, scope: !2156)
!2223 = !DILocation(line: 341, column: 2, scope: !2156)
!2224 = !DILocation(line: 341, column: 7, scope: !2156)
!2225 = !DILocation(line: 341, column: 18, scope: !2156)
!2226 = !DILocation(line: 342, column: 18, scope: !2156)
!2227 = !DILocation(line: 342, column: 2, scope: !2156)
!2228 = !DILocation(line: 342, column: 7, scope: !2156)
!2229 = !DILocation(line: 342, column: 16, scope: !2156)
!2230 = !DILocation(line: 343, column: 14, scope: !2156)
!2231 = !DILocation(line: 343, column: 2, scope: !2156)
!2232 = !DILocation(line: 343, column: 7, scope: !2156)
!2233 = !DILocation(line: 343, column: 12, scope: !2156)
!2234 = !DILocation(line: 346, column: 6, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2156, file: !1, line: 346, column: 6)
!2236 = !DILocation(line: 346, column: 11, scope: !2235)
!2237 = !DILocation(line: 346, column: 20, scope: !2235)
!2238 = !DILocation(line: 346, column: 6, scope: !2156)
!2239 = !DILocation(line: 347, column: 3, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2235, file: !1, line: 346, column: 26)
!2241 = !DILocation(line: 347, column: 8, scope: !2240)
!2242 = !DILocation(line: 347, column: 17, scope: !2240)
!2243 = !DILocation(line: 348, column: 26, scope: !2240)
!2244 = !DILocation(line: 348, column: 3, scope: !2240)
!2245 = !DILocation(line: 349, column: 3, scope: !2240)
!2246 = !DILocation(line: 352, column: 28, scope: !2156)
!2247 = !DILocation(line: 352, column: 34, scope: !2156)
!2248 = !DILocation(line: 352, column: 2, scope: !2156)
!2249 = !DILocation(line: 353, column: 1, scope: !2156)
!2250 = !DISubprogram(name: "ftl_mngt_get_step_ctx", scope: !2251, file: !2251, line: 187, type: !2252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2251 = !DIFile(filename: "./mngt/ftl_mngt.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "7cd0f03b88bb58e539cb757739c7bb85")
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!130, !1245}
!2254 = !DISubprogram(name: "ftl_mngt_next_step", scope: !2251, file: !2251, line: 230, type: !2157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2255 = distinct !DISubprogram(name: "ftl_get_band_from_region", scope: !1, file: !1, line: 247, type: !2256, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!1397, !157, !3}
!2258 = !{!2259, !2260, !2261, !2262}
!2259 = !DILocalVariable(name: "dev", arg: 1, scope: !2255, file: !1, line: 247, type: !157)
!2260 = !DILocalVariable(name: "type", arg: 2, scope: !2255, file: !1, line: 247, type: !3)
!2261 = !DILocalVariable(name: "band", scope: !2255, file: !1, line: 249, type: !1397)
!2262 = !DILocalVariable(name: "i", scope: !2255, file: !1, line: 250, type: !139)
!2263 = !DILocation(line: 247, column: 47, scope: !2255)
!2264 = !DILocation(line: 247, column: 80, scope: !2255)
!2265 = !DILocation(line: 249, column: 2, scope: !2255)
!2266 = !DILocation(line: 249, column: 19, scope: !2255)
!2267 = !DILocation(line: 250, column: 2, scope: !2255)
!2268 = !DILocation(line: 250, column: 11, scope: !2255)
!2269 = !DILocation(line: 255, column: 9, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2255, file: !1, line: 255, column: 2)
!2271 = !DILocation(line: 255, column: 7, scope: !2270)
!2272 = !DILocation(line: 255, column: 14, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2270, file: !1, line: 255, column: 2)
!2274 = !DILocation(line: 255, column: 36, scope: !2273)
!2275 = !DILocation(line: 255, column: 18, scope: !2273)
!2276 = !DILocation(line: 255, column: 16, scope: !2273)
!2277 = !DILocation(line: 255, column: 2, scope: !2270)
!2278 = !DILocation(line: 256, column: 11, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2273, file: !1, line: 255, column: 47)
!2280 = !DILocation(line: 256, column: 16, scope: !2279)
!2281 = !DILocation(line: 256, column: 22, scope: !2279)
!2282 = !DILocation(line: 256, column: 8, scope: !2279)
!2283 = !DILocation(line: 257, column: 8, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2279, file: !1, line: 257, column: 7)
!2285 = !DILocation(line: 257, column: 14, scope: !2284)
!2286 = !DILocation(line: 257, column: 18, scope: !2284)
!2287 = !DILocation(line: 257, column: 24, scope: !2284)
!2288 = !DILocation(line: 257, column: 47, scope: !2284)
!2289 = !DILocation(line: 258, column: 8, scope: !2284)
!2290 = !DILocation(line: 258, column: 14, scope: !2284)
!2291 = !DILocation(line: 258, column: 18, scope: !2284)
!2292 = !DILocation(line: 258, column: 24, scope: !2284)
!2293 = !DILocation(line: 258, column: 48, scope: !2284)
!2294 = !DILocation(line: 259, column: 7, scope: !2284)
!2295 = !DILocation(line: 259, column: 13, scope: !2284)
!2296 = !DILocation(line: 259, column: 17, scope: !2284)
!2297 = !DILocation(line: 259, column: 34, scope: !2284)
!2298 = !DILocation(line: 259, column: 31, scope: !2284)
!2299 = !DILocation(line: 257, column: 7, scope: !2279)
!2300 = !DILocation(line: 260, column: 11, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2284, file: !1, line: 259, column: 40)
!2302 = !DILocation(line: 260, column: 4, scope: !2301)
!2303 = !DILocation(line: 262, column: 2, scope: !2279)
!2304 = !DILocation(line: 255, column: 43, scope: !2273)
!2305 = !DILocation(line: 255, column: 2, scope: !2273)
!2306 = distinct !{!2306, !2277, !2307}
!2307 = !DILocation(line: 262, column: 2, scope: !2270)
!2308 = !DILocation(line: 264, column: 2, scope: !2255)
!2309 = !DILocation(line: 265, column: 1, scope: !2255)
!2310 = !DISubprogram(name: "ftl_mngt_get_dev", scope: !2251, file: !2251, line: 162, type: !2311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!157, !1245}
!2313 = !DISubprogram(name: "ftl_mngt_continue_step", scope: !2251, file: !2251, line: 252, type: !2157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2314 = distinct !DISubprogram(name: "ftl_mngt_persist_band_p2l", scope: !1, file: !1, line: 294, type: !2315, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{null, !1245, !2162}
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323}
!2318 = !DILocalVariable(name: "mngt", arg: 1, scope: !2314, file: !1, line: 294, type: !1245)
!2319 = !DILocalVariable(name: "ctx", arg: 2, scope: !2314, file: !1, line: 294, type: !2162)
!2320 = !DILocalVariable(name: "band", scope: !2314, file: !1, line: 296, type: !1397)
!2321 = !DILocalVariable(name: "md_page", scope: !2314, file: !1, line: 297, type: !1339)
!2322 = !DILocalVariable(name: "map_page", scope: !2314, file: !1, line: 298, type: !131)
!2323 = !DILocalVariable(name: "ckpt", scope: !2314, file: !1, line: 299, type: !1329)
!2324 = !DILocation(line: 294, column: 52, scope: !2314)
!2325 = !DILocation(line: 294, column: 83, scope: !2314)
!2326 = !DILocation(line: 296, column: 2, scope: !2314)
!2327 = !DILocation(line: 296, column: 19, scope: !2314)
!2328 = !DILocation(line: 296, column: 26, scope: !2314)
!2329 = !DILocation(line: 296, column: 31, scope: !2314)
!2330 = !DILocation(line: 297, column: 2, scope: !2314)
!2331 = !DILocation(line: 297, column: 20, scope: !2314)
!2332 = !DILocation(line: 298, column: 2, scope: !2314)
!2333 = !DILocation(line: 298, column: 28, scope: !2314)
!2334 = !DILocation(line: 299, column: 2, scope: !2314)
!2335 = !DILocation(line: 299, column: 23, scope: !2314)
!2336 = !DILocation(line: 301, column: 9, scope: !2314)
!2337 = !DILocation(line: 301, column: 15, scope: !2314)
!2338 = !DILocation(line: 301, column: 23, scope: !2314)
!2339 = !DILocation(line: 301, column: 7, scope: !2314)
!2340 = !DILocation(line: 303, column: 42, scope: !2314)
!2341 = !DILocation(line: 303, column: 48, scope: !2314)
!2342 = !DILocation(line: 303, column: 56, scope: !2314)
!2343 = !DILocation(line: 303, column: 68, scope: !2314)
!2344 = !DILocation(line: 303, column: 73, scope: !2314)
!2345 = !DILocation(line: 303, column: 66, scope: !2314)
!2346 = !DILocation(line: 303, column: 11, scope: !2314)
!2347 = !DILocation(line: 305, column: 13, scope: !2314)
!2348 = !DILocation(line: 305, column: 19, scope: !2314)
!2349 = !DILocation(line: 305, column: 31, scope: !2314)
!2350 = !DILocation(line: 305, column: 36, scope: !2314)
!2351 = !DILocation(line: 305, column: 10, scope: !2314)
!2352 = !DILocation(line: 306, column: 29, scope: !2314)
!2353 = !DILocation(line: 306, column: 35, scope: !2314)
!2354 = !DILocation(line: 306, column: 39, scope: !2314)
!2355 = !DILocation(line: 306, column: 2, scope: !2314)
!2356 = !DILocation(line: 306, column: 20, scope: !2314)
!2357 = !DILocation(line: 306, column: 27, scope: !2314)
!2358 = !DILocation(line: 307, column: 54, scope: !2314)
!2359 = !DILocation(line: 307, column: 35, scope: !2314)
!2360 = !DILocation(line: 307, column: 2, scope: !2314)
!2361 = !DILocation(line: 307, column: 20, scope: !2314)
!2362 = !DILocation(line: 307, column: 33, scope: !2314)
!2363 = !DILocation(line: 311, column: 23, scope: !2314)
!2364 = !DILocation(line: 311, column: 29, scope: !2314)
!2365 = !DILocation(line: 311, column: 33, scope: !2314)
!2366 = !DILocation(line: 311, column: 38, scope: !2314)
!2367 = !DILocation(line: 311, column: 50, scope: !2314)
!2368 = !DILocation(line: 311, column: 60, scope: !2314)
!2369 = !DILocation(line: 312, column: 35, scope: !2314)
!2370 = !DILocation(line: 312, column: 42, scope: !2314)
!2371 = !DILocation(line: 312, column: 48, scope: !2314)
!2372 = !DILocation(line: 311, column: 2, scope: !2314)
!2373 = !DILocation(line: 313, column: 1, scope: !2314)
!2374 = distinct !DISubprogram(name: "ftl_mngt_p2l_ckpt_get_seq_id", scope: !1, file: !1, line: 356, type: !2375, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!156, !157, !156}
!2377 = !{!2378, !2379, !2380, !2382, !2383, !2384, !2385}
!2378 = !DILocalVariable(name: "dev", arg: 1, scope: !2374, file: !1, line: 356, type: !157)
!2379 = !DILocalVariable(name: "md_region", arg: 2, scope: !2374, file: !1, line: 356, type: !156)
!2380 = !DILocalVariable(name: "layout", scope: !2374, file: !1, line: 358, type: !2381)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!2382 = !DILocalVariable(name: "md", scope: !2374, file: !1, line: 359, type: !276)
!2383 = !DILocalVariable(name: "page_md_buf", scope: !2374, file: !1, line: 360, type: !1339)
!2384 = !DILocalVariable(name: "page_no", scope: !2374, file: !1, line: 361, type: !139)
!2385 = !DILocalVariable(name: "seq_id", scope: !2374, file: !1, line: 361, type: !139)
!2386 = !DILocation(line: 356, column: 51, scope: !2374)
!2387 = !DILocation(line: 356, column: 60, scope: !2374)
!2388 = !DILocation(line: 358, column: 2, scope: !2374)
!2389 = !DILocation(line: 358, column: 21, scope: !2374)
!2390 = !DILocation(line: 358, column: 31, scope: !2374)
!2391 = !DILocation(line: 358, column: 36, scope: !2374)
!2392 = !DILocation(line: 359, column: 2, scope: !2374)
!2393 = !DILocation(line: 359, column: 17, scope: !2374)
!2394 = !DILocation(line: 359, column: 22, scope: !2374)
!2395 = !DILocation(line: 359, column: 30, scope: !2374)
!2396 = !DILocation(line: 359, column: 33, scope: !2374)
!2397 = !DILocation(line: 360, column: 2, scope: !2374)
!2398 = !DILocation(line: 360, column: 20, scope: !2374)
!2399 = !DILocation(line: 360, column: 56, scope: !2374)
!2400 = !DILocation(line: 360, column: 34, scope: !2374)
!2401 = !DILocation(line: 361, column: 2, scope: !2374)
!2402 = !DILocation(line: 361, column: 11, scope: !2374)
!2403 = !DILocation(line: 361, column: 20, scope: !2374)
!2404 = !DILocation(line: 363, column: 15, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2374, file: !1, line: 363, column: 2)
!2406 = !DILocation(line: 363, column: 7, scope: !2405)
!2407 = !DILocation(line: 363, column: 20, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2405, file: !1, line: 363, column: 2)
!2409 = !DILocation(line: 363, column: 30, scope: !2408)
!2410 = !DILocation(line: 363, column: 38, scope: !2408)
!2411 = !DILocation(line: 363, column: 42, scope: !2408)
!2412 = !DILocation(line: 363, column: 28, scope: !2408)
!2413 = !DILocation(line: 363, column: 2, scope: !2405)
!2414 = !DILocation(line: 364, column: 7, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !1, line: 364, column: 7)
!2416 = distinct !DILexicalBlock(scope: !2408, file: !1, line: 363, column: 80)
!2417 = !DILocation(line: 364, column: 16, scope: !2415)
!2418 = !DILocation(line: 364, column: 38, scope: !2415)
!2419 = !DILocation(line: 364, column: 14, scope: !2415)
!2420 = !DILocation(line: 364, column: 7, scope: !2416)
!2421 = !DILocation(line: 365, column: 13, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2415, file: !1, line: 364, column: 46)
!2423 = !DILocation(line: 365, column: 35, scope: !2422)
!2424 = !DILocation(line: 365, column: 11, scope: !2422)
!2425 = !DILocation(line: 366, column: 3, scope: !2422)
!2426 = !DILocation(line: 367, column: 2, scope: !2416)
!2427 = !DILocation(line: 363, column: 61, scope: !2408)
!2428 = !DILocation(line: 363, column: 76, scope: !2408)
!2429 = !DILocation(line: 363, column: 2, scope: !2408)
!2430 = distinct !{!2430, !2413, !2431}
!2431 = !DILocation(line: 367, column: 2, scope: !2405)
!2432 = !DILocation(line: 368, column: 9, scope: !2374)
!2433 = !DILocation(line: 369, column: 1, scope: !2374)
!2434 = !DILocation(line: 368, column: 2, scope: !2374)
!2435 = !DISubprogram(name: "ftl_md_get_vss_buffer", scope: !27, file: !27, line: 270, type: !2436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!1339, !276}
!2438 = distinct !DISubprogram(name: "ftl_mngt_p2l_ckpt_restore", scope: !1, file: !1, line: 372, type: !2439, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!156, !1397, !192, !139}
!2441 = !{!2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452}
!2442 = !DILocalVariable(name: "band", arg: 1, scope: !2438, file: !1, line: 372, type: !1397)
!2443 = !DILocalVariable(name: "md_region", arg: 2, scope: !2438, file: !1, line: 372, type: !192)
!2444 = !DILocalVariable(name: "seq_id", arg: 3, scope: !2438, file: !1, line: 372, type: !139)
!2445 = !DILocalVariable(name: "layout", scope: !2438, file: !1, line: 374, type: !2381)
!2446 = !DILocalVariable(name: "md", scope: !2438, file: !1, line: 375, type: !276)
!2447 = !DILocalVariable(name: "page_md_buf", scope: !2438, file: !1, line: 376, type: !1339)
!2448 = !DILocalVariable(name: "page", scope: !2438, file: !1, line: 377, type: !131)
!2449 = !DILocalVariable(name: "map_page", scope: !2438, file: !1, line: 378, type: !131)
!2450 = !DILocalVariable(name: "page_no", scope: !2438, file: !1, line: 379, type: !139)
!2451 = !DILocalVariable(name: "page_max", scope: !2438, file: !1, line: 379, type: !139)
!2452 = !DILocalVariable(name: "page_found", scope: !2438, file: !1, line: 380, type: !204)
!2453 = !DILocation(line: 372, column: 44, scope: !2438)
!2454 = !DILocation(line: 372, column: 59, scope: !2438)
!2455 = !DILocation(line: 372, column: 79, scope: !2438)
!2456 = !DILocation(line: 374, column: 2, scope: !2438)
!2457 = !DILocation(line: 374, column: 21, scope: !2438)
!2458 = !DILocation(line: 374, column: 31, scope: !2438)
!2459 = !DILocation(line: 374, column: 37, scope: !2438)
!2460 = !DILocation(line: 374, column: 42, scope: !2438)
!2461 = !DILocation(line: 375, column: 2, scope: !2438)
!2462 = !DILocation(line: 375, column: 17, scope: !2438)
!2463 = !DILocation(line: 375, column: 22, scope: !2438)
!2464 = !DILocation(line: 375, column: 30, scope: !2438)
!2465 = !DILocation(line: 375, column: 33, scope: !2438)
!2466 = !DILocation(line: 376, column: 2, scope: !2438)
!2467 = !DILocation(line: 376, column: 20, scope: !2438)
!2468 = !DILocation(line: 376, column: 56, scope: !2438)
!2469 = !DILocation(line: 376, column: 34, scope: !2438)
!2470 = !DILocation(line: 377, column: 2, scope: !2438)
!2471 = !DILocation(line: 377, column: 28, scope: !2438)
!2472 = !DILocation(line: 377, column: 53, scope: !2438)
!2473 = !DILocation(line: 377, column: 35, scope: !2438)
!2474 = !DILocation(line: 378, column: 2, scope: !2438)
!2475 = !DILocation(line: 378, column: 28, scope: !2438)
!2476 = !DILocation(line: 379, column: 2, scope: !2438)
!2477 = !DILocation(line: 379, column: 11, scope: !2438)
!2478 = !DILocation(line: 379, column: 20, scope: !2438)
!2479 = !DILocation(line: 380, column: 2, scope: !2438)
!2480 = !DILocation(line: 380, column: 7, scope: !2438)
!2481 = !DILocation(line: 383, column: 6, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2438, file: !1, line: 383, column: 6)
!2483 = !DILocation(line: 383, column: 12, scope: !2482)
!2484 = !DILocation(line: 383, column: 16, scope: !2482)
!2485 = !DILocation(line: 383, column: 33, scope: !2482)
!2486 = !DILocation(line: 383, column: 30, scope: !2482)
!2487 = !DILocation(line: 383, column: 6, scope: !2438)
!2488 = !DILocation(line: 384, column: 3, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2482, file: !1, line: 383, column: 44)
!2490 = !DILocation(line: 388, column: 6, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2438, file: !1, line: 388, column: 6)
!2492 = !DILocation(line: 388, column: 12, scope: !2491)
!2493 = !DILocation(line: 388, column: 16, scope: !2491)
!2494 = !DILocation(line: 388, column: 23, scope: !2491)
!2495 = !DILocation(line: 388, column: 20, scope: !2491)
!2496 = !DILocation(line: 388, column: 6, scope: !2438)
!2497 = !DILocation(line: 389, column: 3, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2491, file: !1, line: 388, column: 31)
!2499 = !DILocation(line: 392, column: 15, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2438, file: !1, line: 392, column: 2)
!2501 = !DILocation(line: 392, column: 7, scope: !2500)
!2502 = !DILocation(line: 392, column: 20, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2500, file: !1, line: 392, column: 2)
!2504 = !DILocation(line: 392, column: 30, scope: !2503)
!2505 = !DILocation(line: 392, column: 38, scope: !2503)
!2506 = !DILocation(line: 392, column: 42, scope: !2503)
!2507 = !DILocation(line: 392, column: 28, scope: !2503)
!2508 = !DILocation(line: 392, column: 2, scope: !2500)
!2509 = !DILocation(line: 393, column: 7, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !1, line: 393, column: 7)
!2511 = distinct !DILexicalBlock(scope: !2503, file: !1, line: 392, column: 88)
!2512 = !DILocation(line: 393, column: 29, scope: !2510)
!2513 = !DILocation(line: 393, column: 39, scope: !2510)
!2514 = !DILocation(line: 393, column: 36, scope: !2510)
!2515 = !DILocation(line: 393, column: 7, scope: !2511)
!2516 = !DILocation(line: 394, column: 4, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2510, file: !1, line: 393, column: 47)
!2518 = !DILocation(line: 397, column: 14, scope: !2511)
!2519 = !DILocation(line: 397, column: 12, scope: !2511)
!2520 = !DILocation(line: 398, column: 14, scope: !2511)
!2521 = !DILocation(line: 403, column: 43, scope: !2511)
!2522 = !DILocation(line: 403, column: 49, scope: !2511)
!2523 = !DILocation(line: 403, column: 57, scope: !2511)
!2524 = !DILocation(line: 403, column: 69, scope: !2511)
!2525 = !DILocation(line: 403, column: 67, scope: !2511)
!2526 = !DILocation(line: 403, column: 12, scope: !2511)
!2527 = !DILocation(line: 405, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2511, file: !1, line: 405, column: 7)
!2529 = !DILocation(line: 405, column: 29, scope: !2528)
!2530 = !DILocation(line: 405, column: 42, scope: !2528)
!2531 = !DILocation(line: 406, column: 7, scope: !2528)
!2532 = !DILocation(line: 406, column: 29, scope: !2528)
!2533 = !DILocation(line: 406, column: 64, scope: !2528)
!2534 = !DILocation(line: 406, column: 45, scope: !2528)
!2535 = !DILocation(line: 406, column: 42, scope: !2528)
!2536 = !DILocation(line: 405, column: 7, scope: !2511)
!2537 = !DILocation(line: 408, column: 24, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2528, file: !1, line: 407, column: 70)
!2539 = !DILocation(line: 408, column: 30, scope: !2538)
!2540 = !DILocation(line: 408, column: 4, scope: !2538)
!2541 = !DILocation(line: 409, column: 4, scope: !2538)
!2542 = !DILocation(line: 413, column: 4, scope: !2511)
!2543 = !DILocation(line: 413, column: 16, scope: !2511)
!2544 = !DILocation(line: 413, column: 15, scope: !2511)
!2545 = !DILocation(line: 414, column: 2, scope: !2511)
!2546 = !DILocation(line: 392, column: 61, scope: !2503)
!2547 = !DILocation(line: 392, column: 69, scope: !2503)
!2548 = !DILocation(line: 392, column: 84, scope: !2503)
!2549 = !DILocation(line: 392, column: 2, scope: !2503)
!2550 = distinct !{!2550, !2508, !2551}
!2551 = !DILocation(line: 414, column: 2, scope: !2500)
!2552 = !DILocation(line: 417, column: 7, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2438, file: !1, line: 417, column: 6)
!2554 = !{i8 0, i8 2}
!2555 = !{}
!2556 = !DILocation(line: 417, column: 6, scope: !2438)
!2557 = !DILocation(line: 418, column: 3, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2553, file: !1, line: 417, column: 19)
!2559 = !DILocation(line: 423, column: 7, scope: !2438)
!2560 = !DILocation(line: 423, column: 13, scope: !2438)
!2561 = !DILocation(line: 423, column: 18, scope: !2438)
!2562 = !DILocation(line: 422, column: 27, scope: !2438)
!2563 = !DILocation(line: 422, column: 2, scope: !2438)
!2564 = !DILocation(line: 422, column: 8, scope: !2438)
!2565 = !DILocation(line: 422, column: 16, scope: !2438)
!2566 = !DILocation(line: 422, column: 25, scope: !2438)
!2567 = !DILocation(line: 433, column: 21, scope: !2438)
!2568 = !DILocation(line: 433, column: 2, scope: !2438)
!2569 = !DILocation(line: 434, column: 20, scope: !2438)
!2570 = !DILocation(line: 434, column: 27, scope: !2438)
!2571 = !DILocation(line: 434, column: 36, scope: !2438)
!2572 = !DILocation(line: 434, column: 41, scope: !2438)
!2573 = !DILocation(line: 434, column: 2, scope: !2438)
!2574 = !DILocation(line: 436, column: 2, scope: !2438)
!2575 = !DILocation(line: 437, column: 1, scope: !2438)
!2576 = !DISubprogram(name: "ftl_md_get_buffer", scope: !27, file: !27, line: 238, type: !2577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!130, !276}
!2579 = !DISubprogram(name: "ftl_stats_crc_error", scope: !159, file: !159, line: 212, type: !2580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{null, !157, !119}
!2582 = distinct !DISubprogram(name: "ftl_p2l_ckpt_acquire_region_type", scope: !1, file: !1, line: 445, type: !2583, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!1329, !157, !192}
!2585 = !{!2586, !2587, !2588}
!2586 = !DILocalVariable(name: "dev", arg: 1, scope: !2582, file: !1, line: 445, type: !157)
!2587 = !DILocalVariable(name: "region_type", arg: 2, scope: !2582, file: !1, line: 445, type: !192)
!2588 = !DILocalVariable(name: "ckpt", scope: !2582, file: !1, line: 447, type: !1329)
!2589 = !DILocation(line: 445, column: 55, scope: !2582)
!2590 = !DILocation(line: 445, column: 69, scope: !2582)
!2591 = !DILocation(line: 447, column: 2, scope: !2582)
!2592 = !DILocation(line: 447, column: 23, scope: !2582)
!2593 = !DILocation(line: 449, column: 2, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2582, file: !1, line: 449, column: 2)
!2595 = !DILocation(line: 449, column: 2, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2594, file: !1, line: 449, column: 2)
!2597 = !DILocation(line: 450, column: 7, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !1, line: 450, column: 7)
!2599 = distinct !DILexicalBlock(scope: !2596, file: !1, line: 449, column: 49)
!2600 = !DILocation(line: 450, column: 13, scope: !2598)
!2601 = !DILocation(line: 450, column: 28, scope: !2598)
!2602 = !DILocation(line: 450, column: 36, scope: !2598)
!2603 = !DILocation(line: 450, column: 33, scope: !2598)
!2604 = !DILocation(line: 450, column: 7, scope: !2599)
!2605 = !DILocation(line: 451, column: 4, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2598, file: !1, line: 450, column: 49)
!2607 = !DILocation(line: 453, column: 2, scope: !2599)
!2608 = distinct !{!2608, !2593, !2609}
!2609 = !DILocation(line: 453, column: 2, scope: !2594)
!2610 = !DILocation(line: 457, column: 2, scope: !2582)
!2611 = !DILocation(line: 457, column: 2, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !1, line: 457, column: 2)
!2613 = distinct !DILexicalBlock(scope: !2582, file: !1, line: 457, column: 2)
!2614 = !DILocation(line: 457, column: 2, scope: !2613)
!2615 = !DILocation(line: 458, column: 2, scope: !2582)
!2616 = !DILocation(line: 458, column: 2, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2582, file: !1, line: 458, column: 2)
!2618 = !DILocation(line: 460, column: 9, scope: !2582)
!2619 = !DILocation(line: 461, column: 1, scope: !2582)
!2620 = !DILocation(line: 460, column: 2, scope: !2582)
!2621 = distinct !DISubprogram(name: "ftl_band_iter_init", scope: !90, file: !90, line: 237, type: !1410, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2622)
!2622 = !{!2623}
!2623 = !DILocalVariable(name: "band", arg: 1, scope: !2621, file: !90, line: 237, type: !1397)
!2624 = !DILocation(line: 237, column: 37, scope: !2621)
!2625 = !DILocation(line: 240, column: 24, scope: !2621)
!2626 = !DILocation(line: 240, column: 30, scope: !2621)
!2627 = !DILocation(line: 240, column: 2, scope: !2621)
!2628 = !DILocation(line: 240, column: 8, scope: !2621)
!2629 = !DILocation(line: 240, column: 12, scope: !2621)
!2630 = !DILocation(line: 240, column: 17, scope: !2621)
!2631 = !DILocation(line: 240, column: 22, scope: !2621)
!2632 = !DILocation(line: 241, column: 2, scope: !2621)
!2633 = !DILocation(line: 241, column: 8, scope: !2621)
!2634 = !DILocation(line: 241, column: 12, scope: !2621)
!2635 = !DILocation(line: 241, column: 17, scope: !2621)
!2636 = !DILocation(line: 241, column: 24, scope: !2621)
!2637 = !DILocation(line: 242, column: 1, scope: !2621)
!2638 = distinct !DISubprogram(name: "ftl_band_iter_set", scope: !90, file: !90, line: 253, type: !2639, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !1397, !139}
!2641 = !{!2642, !2643}
!2642 = !DILocalVariable(name: "band", arg: 1, scope: !2638, file: !90, line: 253, type: !1397)
!2643 = !DILocalVariable(name: "num_blocks", arg: 2, scope: !2638, file: !90, line: 253, type: !139)
!2644 = !DILocation(line: 253, column: 36, scope: !2638)
!2645 = !DILocation(line: 253, column: 51, scope: !2638)
!2646 = !DILocation(line: 255, column: 26, scope: !2638)
!2647 = !DILocation(line: 255, column: 2, scope: !2638)
!2648 = !DILocation(line: 255, column: 8, scope: !2638)
!2649 = !DILocation(line: 255, column: 12, scope: !2638)
!2650 = !DILocation(line: 255, column: 17, scope: !2638)
!2651 = !DILocation(line: 255, column: 24, scope: !2638)
!2652 = !DILocation(line: 256, column: 48, scope: !2638)
!2653 = !DILocation(line: 256, column: 54, scope: !2638)
!2654 = !DILocation(line: 256, column: 60, scope: !2638)
!2655 = !DILocation(line: 256, column: 64, scope: !2638)
!2656 = !DILocation(line: 256, column: 69, scope: !2638)
!2657 = !DILocation(line: 256, column: 75, scope: !2638)
!2658 = !DILocation(line: 256, column: 24, scope: !2638)
!2659 = !DILocation(line: 256, column: 2, scope: !2638)
!2660 = !DILocation(line: 256, column: 8, scope: !2638)
!2661 = !DILocation(line: 256, column: 12, scope: !2638)
!2662 = !DILocation(line: 256, column: 17, scope: !2638)
!2663 = !DILocation(line: 256, column: 22, scope: !2638)
!2664 = !DILocation(line: 258, column: 1, scope: !2638)
!2665 = distinct !DISubprogram(name: "ftl_p2l_ckpt_region_type", scope: !1, file: !1, line: 440, type: !2666, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2670)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!3, !2668}
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!2670 = !{!2671}
!2671 = !DILocalVariable(name: "ckpt", arg: 1, scope: !2665, file: !1, line: 440, type: !2668)
!2672 = !DILocation(line: 440, column: 53, scope: !2665)
!2673 = !DILocation(line: 441, column: 9, scope: !2665)
!2674 = !DILocation(line: 441, column: 15, scope: !2665)
!2675 = !DILocation(line: 441, column: 30, scope: !2665)
!2676 = !DILocation(line: 441, column: 2, scope: !2665)
!2677 = distinct !DISubprogram(name: "ftl_mngt_p2l_ckpt_restore_clean", scope: !1, file: !1, line: 464, type: !2678, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!156, !1397}
!2680 = !{!2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2681 = !DILocalVariable(name: "band", arg: 1, scope: !2677, file: !1, line: 464, type: !1397)
!2682 = !DILocalVariable(name: "dev", scope: !2677, file: !1, line: 466, type: !157)
!2683 = !DILocalVariable(name: "layout", scope: !2677, file: !1, line: 467, type: !2381)
!2684 = !DILocalVariable(name: "page", scope: !2677, file: !1, line: 468, type: !131)
!2685 = !DILocalVariable(name: "map_page", scope: !2677, file: !1, line: 468, type: !131)
!2686 = !DILocalVariable(name: "md_region", scope: !2677, file: !1, line: 469, type: !3)
!2687 = !DILocalVariable(name: "page_no", scope: !2677, file: !1, line: 470, type: !139)
!2688 = !DILocalVariable(name: "num_written_pages", scope: !2677, file: !1, line: 471, type: !139)
!2689 = !DILocalVariable(name: "page_md_buf", scope: !2677, file: !1, line: 472, type: !1339)
!2690 = !DILocation(line: 464, column: 50, scope: !2677)
!2691 = !DILocation(line: 466, column: 2, scope: !2677)
!2692 = !DILocation(line: 466, column: 23, scope: !2677)
!2693 = !DILocation(line: 466, column: 29, scope: !2677)
!2694 = !DILocation(line: 466, column: 35, scope: !2677)
!2695 = !DILocation(line: 467, column: 2, scope: !2677)
!2696 = !DILocation(line: 467, column: 21, scope: !2677)
!2697 = !DILocation(line: 467, column: 31, scope: !2677)
!2698 = !DILocation(line: 467, column: 36, scope: !2677)
!2699 = !DILocation(line: 468, column: 2, scope: !2677)
!2700 = !DILocation(line: 468, column: 28, scope: !2677)
!2701 = !DILocation(line: 468, column: 35, scope: !2677)
!2702 = !DILocation(line: 469, column: 2, scope: !2677)
!2703 = !DILocation(line: 469, column: 30, scope: !2677)
!2704 = !DILocation(line: 469, column: 42, scope: !2677)
!2705 = !DILocation(line: 469, column: 48, scope: !2677)
!2706 = !DILocation(line: 469, column: 52, scope: !2677)
!2707 = !DILocation(line: 470, column: 2, scope: !2677)
!2708 = !DILocation(line: 470, column: 11, scope: !2677)
!2709 = !DILocation(line: 471, column: 2, scope: !2677)
!2710 = !DILocation(line: 471, column: 11, scope: !2677)
!2711 = !DILocation(line: 472, column: 2, scope: !2677)
!2712 = !DILocation(line: 472, column: 20, scope: !2677)
!2713 = !DILocation(line: 474, column: 6, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2677, file: !1, line: 474, column: 6)
!2715 = !DILocation(line: 474, column: 16, scope: !2714)
!2716 = !DILocation(line: 474, column: 54, scope: !2714)
!2717 = !DILocation(line: 475, column: 6, scope: !2714)
!2718 = !DILocation(line: 475, column: 16, scope: !2714)
!2719 = !DILocation(line: 474, column: 6, scope: !2677)
!2720 = !DILocation(line: 476, column: 3, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2714, file: !1, line: 475, column: 55)
!2722 = !DILocation(line: 480, column: 22, scope: !2677)
!2723 = !DILocation(line: 480, column: 28, scope: !2677)
!2724 = !DILocation(line: 480, column: 32, scope: !2677)
!2725 = !DILocation(line: 480, column: 37, scope: !2677)
!2726 = !DILocation(line: 480, column: 44, scope: !2677)
!2727 = !DILocation(line: 480, column: 20, scope: !2677)
!2728 = !DILocation(line: 483, column: 7, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2677, file: !1, line: 483, column: 6)
!2730 = !DILocation(line: 483, column: 13, scope: !2729)
!2731 = !DILocation(line: 483, column: 21, scope: !2729)
!2732 = !DILocation(line: 483, column: 6, scope: !2677)
!2733 = !DILocation(line: 484, column: 61, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2729, file: !1, line: 483, column: 31)
!2735 = !DILocation(line: 484, column: 66, scope: !2734)
!2736 = !DILocation(line: 484, column: 28, scope: !2734)
!2737 = !DILocation(line: 484, column: 3, scope: !2734)
!2738 = !DILocation(line: 484, column: 9, scope: !2734)
!2739 = !DILocation(line: 484, column: 17, scope: !2734)
!2740 = !DILocation(line: 484, column: 26, scope: !2734)
!2741 = !DILocation(line: 485, column: 2, scope: !2734)
!2742 = !DILocation(line: 488, column: 6, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2677, file: !1, line: 488, column: 6)
!2744 = !DILocation(line: 488, column: 12, scope: !2743)
!2745 = !DILocation(line: 488, column: 16, scope: !2743)
!2746 = !DILocation(line: 488, column: 21, scope: !2743)
!2747 = !DILocation(line: 488, column: 28, scope: !2743)
!2748 = !DILocation(line: 488, column: 6, scope: !2677)
!2749 = !DILocation(line: 489, column: 3, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2743, file: !1, line: 488, column: 34)
!2751 = !DILocation(line: 492, column: 10, scope: !2677)
!2752 = !DILocation(line: 495, column: 38, scope: !2677)
!2753 = !DILocation(line: 495, column: 46, scope: !2677)
!2754 = !DILocation(line: 495, column: 49, scope: !2677)
!2755 = !DILocation(line: 495, column: 16, scope: !2677)
!2756 = !DILocation(line: 495, column: 14, scope: !2677)
!2757 = !DILocation(line: 496, column: 27, scope: !2677)
!2758 = !DILocation(line: 496, column: 35, scope: !2677)
!2759 = !DILocation(line: 496, column: 38, scope: !2677)
!2760 = !DILocation(line: 496, column: 9, scope: !2677)
!2761 = !DILocation(line: 496, column: 7, scope: !2677)
!2762 = !DILocation(line: 498, column: 2, scope: !2677)
!2763 = !DILocation(line: 498, column: 9, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !1, line: 498, column: 2)
!2765 = distinct !DILexicalBlock(scope: !2677, file: !1, line: 498, column: 2)
!2766 = !DILocation(line: 498, column: 19, scope: !2764)
!2767 = !DILocation(line: 498, column: 17, scope: !2764)
!2768 = !DILocation(line: 498, column: 2, scope: !2765)
!2769 = !DILocation(line: 499, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !1, line: 499, column: 7)
!2771 = distinct !DILexicalBlock(scope: !2764, file: !1, line: 498, column: 72)
!2772 = !DILocation(line: 499, column: 29, scope: !2770)
!2773 = !DILocation(line: 499, column: 39, scope: !2770)
!2774 = !DILocation(line: 499, column: 45, scope: !2770)
!2775 = !DILocation(line: 499, column: 49, scope: !2770)
!2776 = !DILocation(line: 499, column: 36, scope: !2770)
!2777 = !DILocation(line: 499, column: 7, scope: !2771)
!2778 = !DILocation(line: 501, column: 3, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2770, file: !1, line: 499, column: 54)
!2780 = !DILocation(line: 504, column: 43, scope: !2771)
!2781 = !DILocation(line: 504, column: 49, scope: !2771)
!2782 = !DILocation(line: 504, column: 57, scope: !2771)
!2783 = !DILocation(line: 504, column: 69, scope: !2771)
!2784 = !DILocation(line: 504, column: 67, scope: !2771)
!2785 = !DILocation(line: 504, column: 12, scope: !2771)
!2786 = !DILocation(line: 507, column: 4, scope: !2771)
!2787 = !DILocation(line: 507, column: 16, scope: !2771)
!2788 = !DILocation(line: 507, column: 15, scope: !2771)
!2789 = !DILocation(line: 513, column: 2, scope: !2771)
!2790 = !DILocation(line: 498, column: 45, scope: !2764)
!2791 = !DILocation(line: 498, column: 53, scope: !2764)
!2792 = !DILocation(line: 498, column: 68, scope: !2764)
!2793 = !DILocation(line: 498, column: 2, scope: !2764)
!2794 = distinct !{!2794, !2768, !2795}
!2795 = !DILocation(line: 513, column: 2, scope: !2765)
!2796 = !DILocation(line: 517, column: 2, scope: !2677)
!2797 = !DILocation(line: 518, column: 1, scope: !2677)
!2798 = distinct !DISubprogram(name: "ftl_mngt_p2l_ckpt_restore_shm_clean", scope: !1, file: !1, line: 521, type: !1410, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2799)
!2799 = !{!2800, !2801, !2802}
!2800 = !DILocalVariable(name: "band", arg: 1, scope: !2798, file: !1, line: 521, type: !1397)
!2801 = !DILocalVariable(name: "dev", scope: !2798, file: !1, line: 523, type: !157)
!2802 = !DILocalVariable(name: "md_region", scope: !2798, file: !1, line: 524, type: !3)
!2803 = !DILocation(line: 521, column: 54, scope: !2798)
!2804 = !DILocation(line: 523, column: 2, scope: !2798)
!2805 = !DILocation(line: 523, column: 23, scope: !2798)
!2806 = !DILocation(line: 523, column: 29, scope: !2798)
!2807 = !DILocation(line: 523, column: 35, scope: !2798)
!2808 = !DILocation(line: 524, column: 2, scope: !2798)
!2809 = !DILocation(line: 524, column: 30, scope: !2798)
!2810 = !DILocation(line: 524, column: 42, scope: !2798)
!2811 = !DILocation(line: 524, column: 48, scope: !2798)
!2812 = !DILocation(line: 524, column: 52, scope: !2798)
!2813 = !DILocation(line: 527, column: 7, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2798, file: !1, line: 527, column: 6)
!2815 = !DILocation(line: 527, column: 13, scope: !2814)
!2816 = !DILocation(line: 527, column: 21, scope: !2814)
!2817 = !DILocation(line: 527, column: 6, scope: !2798)
!2818 = !DILocation(line: 528, column: 61, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2814, file: !1, line: 527, column: 31)
!2820 = !DILocation(line: 528, column: 66, scope: !2819)
!2821 = !DILocation(line: 528, column: 28, scope: !2819)
!2822 = !DILocation(line: 528, column: 3, scope: !2819)
!2823 = !DILocation(line: 528, column: 9, scope: !2819)
!2824 = !DILocation(line: 528, column: 17, scope: !2819)
!2825 = !DILocation(line: 528, column: 26, scope: !2819)
!2826 = !DILocation(line: 529, column: 2, scope: !2819)
!2827 = !DILocation(line: 551, column: 1, scope: !2798)
!2828 = !DISubprogram(name: "calloc", scope: !2829, file: !2829, line: 543, type: !2830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2829 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!130, !453, !453}
!2832 = !DISubprogram(name: "ftl_md_vss_buf_alloc", scope: !27, file: !27, line: 261, type: !2833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!1339, !1368, !192}
!2835 = distinct !DISubprogram(name: "spdk_divide_round_up", scope: !2836, file: !2836, line: 102, type: !2837, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2839)
!2836 = !DIFile(filename: "include/spdk/util.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "590b8cd5a507651f04528313faecc1f8")
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!139, !139, !139}
!2839 = !{!2840, !2841}
!2840 = !DILocalVariable(name: "num", arg: 1, scope: !2835, file: !2836, line: 102, type: !139)
!2841 = !DILocalVariable(name: "divisor", arg: 2, scope: !2835, file: !2836, line: 102, type: !139)
!2842 = !DILocation(line: 102, column: 31, scope: !2835)
!2843 = !DILocation(line: 102, column: 45, scope: !2835)
!2844 = !DILocation(line: 104, column: 10, scope: !2835)
!2845 = !DILocation(line: 104, column: 16, scope: !2835)
!2846 = !DILocation(line: 104, column: 14, scope: !2835)
!2847 = !DILocation(line: 104, column: 24, scope: !2835)
!2848 = !DILocation(line: 104, column: 31, scope: !2835)
!2849 = !DILocation(line: 104, column: 29, scope: !2835)
!2850 = !DILocation(line: 104, column: 2, scope: !2835)
!2851 = distinct !DISubprogram(name: "ftl_get_num_blocks_in_band", scope: !159, file: !159, line: 218, type: !2852, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2856)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!139, !2854}
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!2856 = !{!2857}
!2857 = !DILocalVariable(name: "dev", arg: 1, scope: !2851, file: !159, line: 218, type: !2854)
!2858 = !DILocation(line: 218, column: 55, scope: !2851)
!2859 = !DILocation(line: 220, column: 9, scope: !2851)
!2860 = !DILocation(line: 220, column: 14, scope: !2851)
!2861 = !DILocation(line: 220, column: 2, scope: !2851)
!2862 = !DISubprogram(name: "free", scope: !2829, file: !2829, line: 555, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2863 = !DISubprogram(name: "spdk_dma_free", scope: !1235, file: !1235, line: 241, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2864 = !DISubprogram(name: "abort", scope: !2829, file: !2829, line: 598, type: !386, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2865 = distinct !DISubprogram(name: "ftl_get_num_bands", scope: !159, file: !159, line: 243, type: !2852, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2866)
!2866 = !{!2867}
!2867 = !DILocalVariable(name: "dev", arg: 1, scope: !2865, file: !159, line: 243, type: !2854)
!2868 = !DILocation(line: 243, column: 46, scope: !2865)
!2869 = !DILocation(line: 245, column: 9, scope: !2865)
!2870 = !DILocation(line: 245, column: 14, scope: !2865)
!2871 = !DILocation(line: 245, column: 2, scope: !2865)
!2872 = distinct !DISubprogram(name: "ftl_p2l_ckpt_persist_end", scope: !1, file: !1, line: 270, type: !1447, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2873)
!2873 = !{!2874, !2875, !2876, !2877}
!2874 = !DILocalVariable(name: "status", arg: 1, scope: !2872, file: !1, line: 270, type: !156)
!2875 = !DILocalVariable(name: "arg", arg: 2, scope: !2872, file: !1, line: 270, type: !130)
!2876 = !DILocalVariable(name: "mngt", scope: !2872, file: !1, line: 272, type: !1245)
!2877 = !DILocalVariable(name: "ctx", scope: !2872, file: !1, line: 273, type: !2162)
!2878 = !DILocation(line: 270, column: 30, scope: !2872)
!2879 = !DILocation(line: 270, column: 44, scope: !2872)
!2880 = !DILocation(line: 272, column: 2, scope: !2872)
!2881 = !DILocation(line: 272, column: 27, scope: !2872)
!2882 = !DILocation(line: 272, column: 34, scope: !2872)
!2883 = !DILocation(line: 273, column: 2, scope: !2872)
!2884 = !DILocation(line: 273, column: 27, scope: !2872)
!2885 = !DILocation(line: 277, column: 6, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2872, file: !1, line: 277, column: 6)
!2887 = !DILocation(line: 277, column: 6, scope: !2872)
!2888 = !DILocation(line: 278, column: 22, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2886, file: !1, line: 277, column: 14)
!2890 = !DILocation(line: 278, column: 3, scope: !2889)
!2891 = !DILocation(line: 279, column: 3, scope: !2889)
!2892 = !DILocation(line: 282, column: 30, scope: !2872)
!2893 = !DILocation(line: 282, column: 8, scope: !2872)
!2894 = !DILocation(line: 282, column: 6, scope: !2872)
!2895 = !DILocation(line: 283, column: 2, scope: !2872)
!2896 = !DILocation(line: 283, column: 7, scope: !2872)
!2897 = !DILocation(line: 283, column: 17, scope: !2872)
!2898 = !DILocation(line: 285, column: 6, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2872, file: !1, line: 285, column: 6)
!2900 = !DILocation(line: 285, column: 11, scope: !2899)
!2901 = !DILocation(line: 285, column: 25, scope: !2899)
!2902 = !DILocation(line: 285, column: 30, scope: !2899)
!2903 = !DILocation(line: 285, column: 22, scope: !2899)
!2904 = !DILocation(line: 285, column: 6, scope: !2872)
!2905 = !DILocation(line: 286, column: 3, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2899, file: !1, line: 285, column: 40)
!2907 = !DILocation(line: 286, column: 8, scope: !2906)
!2908 = !DILocation(line: 286, column: 17, scope: !2906)
!2909 = !DILocation(line: 287, column: 26, scope: !2906)
!2910 = !DILocation(line: 287, column: 3, scope: !2906)
!2911 = !DILocation(line: 288, column: 2, scope: !2906)
!2912 = !DILocation(line: 289, column: 29, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2899, file: !1, line: 288, column: 9)
!2914 = !DILocation(line: 289, column: 35, scope: !2913)
!2915 = !DILocation(line: 289, column: 3, scope: !2913)
!2916 = !DILocation(line: 291, column: 1, scope: !2872)
!2917 = !DISubprogram(name: "ftl_mngt_fail_step", scope: !2251, file: !2251, line: 264, type: !2157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2918 = !DISubprogram(name: "ftl_band_next_xfer_addr", scope: !90, file: !90, line: 165, type: !2118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

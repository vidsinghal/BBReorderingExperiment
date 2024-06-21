; ModuleID = 'samples/893.bc'
source_filename = "dnssec-cds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_rdataset = type { i32, ptr, %struct.anon, i16, i16, i32, i32, i16, i16, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.dns_rdata_rrsig = type { %struct.dns_rdatacommon, ptr, i16, i8, i8, i32, i32, i32, i16, %struct.dns_name, i16, ptr }
%struct.dns_rdatacommon = type { i16, i16, %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr }
%struct.dns_name = type { i32, ptr, i32, i32, i32, ptr, ptr, %struct.anon.6, %struct.anon.7 }
%struct.anon.6 = type { ptr, ptr }
%struct.anon.7 = type { ptr, ptr }
%struct.dns_fixedname = type { %struct.dns_name, [128 x i8], %struct.isc_buffer, [255 x i8] }
%struct.isc_buffer = type { i32, ptr, i32, i32, i32, i32, %struct.anon.8, ptr, i8 }
%struct.anon.8 = type { ptr, ptr }
%struct.isc_time = type { i32, i32 }
%struct.dns_rdata_key = type { %struct.dns_rdatacommon, ptr, i16, i8, i8, i16, ptr }
%struct.isc_region = type { ptr, i32 }
%struct.keyinfo = type { %struct.dns_rdata, ptr, i8, i16 }
%struct.dns_rdata = type { ptr, i32, i16, i16, i32, %struct.anon.9 }
%struct.anon.9 = type { ptr, ptr }
%struct.dns_rdatalist = type { i16, i16, i16, i32, %struct.anon.10, %struct.anon.11, [32 x i8] }
%struct.anon.10 = type { ptr, ptr }
%struct.anon.11 = type { ptr, ptr }
%struct.dns_rdata_ds = type { %struct.dns_rdatacommon, ptr, i16, i8, i8, i16, ptr }

@.str = private unnamed_addr constant [11 x i8] c"dnssec-cds\00", align 1, !dbg !0
@program = global ptr @.str, align 8, !dbg !8
@new_ds_buf = global ptr null, align 8, !dbg !163
@mctx = internal global ptr null, align 8, !dbg !708
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1, !dbg !227
@isc_commandline_errprint = external global i8, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"a:c:Dd:f:i:ms:T:uv:V\00", align 1, !dbg !232
@isc_commandline_argument = external global ptr, align 8
@rdclass = internal global i16 1, align 2, !dbg !715
@isc_commandline_index = external global i32, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !237
@isc_mem_debugging = external global i32, align 4
@startstr = internal global ptr null, align 8, !dbg !717
@verbose = global i32 0, align 4, !dbg !330
@.str.4 = private unnamed_addr constant [32 x i8] c"-v must be followed by a number\00", align 1, !dbg !242
@dtype = internal global [8 x i8] zeroinitializer, align 1, !dbg !332
@lctx = internal global ptr null, align 8, !dbg !763
@.str.5 = private unnamed_addr constant [29 x i8] c"could not initialize dst: %s\00", align 1, !dbg !247
@.str.6 = private unnamed_addr constant [23 x i8] c"missing -d DS pathname\00", align 1, !dbg !252
@old_ds_set = internal global %struct.dns_rdataset zeroinitializer, align 8, !dbg !691
@.str.7 = private unnamed_addr constant [53 x i8] c"path to file containing child data must be specified\00", align 1, !dbg !257
@dnskey_set = internal global %struct.dns_rdataset zeroinitializer, align 8, !dbg !687
@dnskey_sig = internal global %struct.dns_rdataset zeroinitializer, align 8, !dbg !689
@.str.8 = private unnamed_addr constant [42 x i8] c"could not find signed DNSKEY RRset for %s\00", align 1, !dbg !262
@namestr = internal global ptr null, align 8, !dbg !827
@cdnskey_set = internal global %struct.dns_rdataset zeroinitializer, align 8, !dbg !679
@cdnskey_sig = internal global %struct.dns_rdataset zeroinitializer, align 8, !dbg !681
@.str.9 = private unnamed_addr constant [37 x i8] c"missing RRSIG CDNSKEY records for %s\00", align 1, !dbg !267
@cds_set = internal global %struct.dns_rdataset zeroinitializer, align 8, !dbg !683
@cds_sig = internal global %struct.dns_rdataset zeroinitializer, align 8, !dbg !685
@.str.10 = private unnamed_addr constant [33 x i8] c"missing RRSIG CDS records for %s\00", align 1, !dbg !272
@.str.11 = private unnamed_addr constant [53 x i8] c"which child DNSKEY records match parent DS records?\0A\00", align 1, !dbg !277
@old_key_tbl = internal global ptr null, align 8, !dbg !695
@.str.12 = private unnamed_addr constant [28 x i8] c"verify DNSKEY signature(s)\0A\00", align 1, !dbg !279
@.str.13 = private unnamed_addr constant [45 x i8] c"could not validate child DNSKEY RRset for %s\00", align 1, !dbg !284
@.str.14 = private unnamed_addr constant [29 x i8] c"verify CDNSKEY signature(s)\0A\00", align 1, !dbg !289
@.str.15 = private unnamed_addr constant [46 x i8] c"could not validate child CDNSKEY RRset for %s\00", align 1, !dbg !291
@.str.16 = private unnamed_addr constant [25 x i8] c"verify CDS signature(s)\0A\00", align 1, !dbg !296
@.str.17 = private unnamed_addr constant [42 x i8] c"could not validate child CDS RRset for %s\00", align 1, !dbg !301
@oldestsig = internal global %struct.dns_rdata_rrsig zeroinitializer, align 8, !dbg !337
@.str.18 = private unnamed_addr constant [31 x i8] c"child signature inception time\00", align 1, !dbg !303
@.str.19 = private unnamed_addr constant [25 x i8] c"from RRSIG %s by key %d\0A\00", align 1, !dbg !308
@.str.20 = private unnamed_addr constant [40 x i8] c"%s has neither CDS nor CDNSKEY records\0A\00", align 1, !dbg !310
@.str.21 = private unnamed_addr constant [50 x i8] c"which child DNSKEY records match new DS records?\0A\00", align 1, !dbg !315
@new_ds_set = internal global %struct.dns_rdataset zeroinitializer, align 8, !dbg !693
@new_key_tbl = internal global ptr null, align 8, !dbg !706
@.str.22 = private unnamed_addr constant [74 x i8] c"CDS records at %s do not cover each key with the same set of digest types\00", align 1, !dbg !320
@.str.23 = private unnamed_addr constant [65 x i8] c"could not validate child DNSKEY RRset with new DS records for %s\00", align 1, !dbg !325
@stdout = external global ptr, align 8
@.str.24 = private unnamed_addr constant [34 x i8] c"too many -a digest type arguments\00", align 1, !dbg !710
@stderr = external global ptr, align 8
@.str.25 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1, !dbg !719
@.str.26 = private unnamed_addr constant [55 x i8] c"    %s options [options] -f <file> -d <path> <domain>\0A\00", align 1, !dbg !722
@.str.27 = private unnamed_addr constant [13 x i8] c"Version: %s\0A\00", align 1, !dbg !727
@.str.28 = private unnamed_addr constant [7 x i8] c"9.14.6\00", align 1, !dbg !732
@.str.29 = private unnamed_addr constant [552 x i8] c"Options:\0A    -a <algorithm>     digest algorithm (SHA-1 / SHA-256 / SHA-384)\0A    -c <class>         of domain (default IN)\0A    -D                 prefer CDNSKEY records instead of CDS\0A    -d <file|dir>      where to find parent dsset- file\0A    -f <file>          child DNSKEY+CDNSKEY+CDS+RRSIG records\0A    -i[extension]      update dsset- file in place\0A    -s <start-time>    oldest permitted child signatures\0A    -u                 emit nsupdate script\0A    -T <ttl>           TTL of DS records\0A    -V                 print version\0A    -v <verbosity>\0A\00", align 1, !dbg !737
@fixed = internal global %struct.dns_fixedname zeroinitializer, align 8, !dbg !744
@name = internal global ptr null, align 8, !dbg !761
@dns_rootname = external global ptr, align 8
@.str.30 = private unnamed_addr constant [29 x i8] c"could not initialize name %s\00", align 1, !dbg !742
@.str.31 = private unnamed_addr constant [42 x i8] c"could not get modification time of %s: %s\00", align 1, !dbg !768
@notbefore = internal global i32 0, align 4, !dbg !810
@.str.32 = private unnamed_addr constant [40 x i8] c"child records must not be signed before\00", align 1, !dbg !770
@.str.33 = private unnamed_addr constant [39 x i8] c"could not find DS records for %s in %s\00", align 1, !dbg !772
@.str.34 = private unnamed_addr constant [22 x i8] c"%s: pathname too long\00", align 1, !dbg !777
@.str.35 = private unnamed_addr constant [13 x i8] c"dnssec-cds.c\00", align 1, !dbg !782
@.str.36 = private unnamed_addr constant [52 x i8] c"isc_buffer_reserve(&_tmp, _length) == ISC_R_SUCCESS\00", align 1, !dbg !784
@.str.37 = private unnamed_addr constant [44 x i8] c"isc_buffer_availablelength(&buf) >= _length\00", align 1, !dbg !789
@.str.38 = private unnamed_addr constant [7 x i8] c"dsset-\00", align 1, !dbg !794
@.str.39 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !796
@.str.40 = private unnamed_addr constant [26 x i8] c"dns_name_tofilenametext()\00", align 1, !dbg !801
@.str.41 = private unnamed_addr constant [46 x i8] c"isc_buffer_reserve(&_tmp, 1) == ISC_R_SUCCESS\00", align 1, !dbg !806
@.str.42 = private unnamed_addr constant [39 x i8] c"isc_buffer_availablelength(&buf) >= 1U\00", align 1, !dbg !808
@.str.43 = private unnamed_addr constant [4 x i8] c"rbt\00", align 1, !dbg !812
@.str.44 = private unnamed_addr constant [16 x i8] c"dns_db_create()\00", align 1, !dbg !815
@.str.45 = private unnamed_addr constant [18 x i8] c"can't load %s: %s\00", align 1, !dbg !818
@.str.46 = private unnamed_addr constant [25 x i8] c"can't find %s node in %s\00", align 1, !dbg !823
@.str.47 = private unnamed_addr constant [22 x i8] c"dns_db_findrdataset()\00", align 1, !dbg !825
@nkey = internal global i32 0, align 4, !dbg !844
@.str.48 = private unnamed_addr constant [9 x i8] c"i < nkey\00", align 1, !dbg !829
@.str.49 = private unnamed_addr constant [27 x i8] c"dns_rdata_tostruct(DNSKEY)\00", align 1, !dbg !834
@.str.50 = private unnamed_addr constant [49 x i8] c"dns_dnssec_keyfromrdata(keytag=%d, algo=%d): %s\0A\00", align 1, !dbg !839
@.str.51 = private unnamed_addr constant [23 x i8] c"dns_rdata_tostruct(DS)\00", align 1, !dbg !846
@.str.52 = private unnamed_addr constant [54 x i8] c"dns_ds_buildrdata(keytag=%d, algo=%d, digest=%d): %s\0A\00", align 1, !dbg !848
@.str.53 = private unnamed_addr constant [28 x i8] c"found matching %s %d %d %d\0A\00", align 1, !dbg !853
@.str.54 = private unnamed_addr constant [4 x i8] c"CDS\00", align 1, !dbg !855
@.str.55 = private unnamed_addr constant [3 x i8] c"DS\00", align 1, !dbg !857
@.str.56 = private unnamed_addr constant [61 x i8] c"key does not match %s %d %d %d when it looks like it should\0A\00", align 1, !dbg !862
@.str.57 = private unnamed_addr constant [29 x i8] c"no matching %s for %s %d %d\0A\00", align 1, !dbg !867
@.str.58 = private unnamed_addr constant [8 x i8] c"CDNSKEY\00", align 1, !dbg !869
@.str.59 = private unnamed_addr constant [7 x i8] c"DNSKEY\00", align 1, !dbg !871
@.str.60 = private unnamed_addr constant [39 x i8] c"allocating RRSIG/DNSKEY match list: %s\00", align 1, !dbg !873
@.str.61 = private unnamed_addr constant [26 x i8] c"dns_rdata_tostruct(RRSIG)\00", align 1, !dbg !875
@.str.62 = private unnamed_addr constant [31 x i8] c"skip RRSIG by key %d: too old\0A\00", align 1, !dbg !877
@.str.63 = private unnamed_addr constant [41 x i8] c"skip RRSIG by key %d: no matching (C)DS\0A\00", align 1, !dbg !879
@.str.64 = private unnamed_addr constant [47 x i8] c"skip RRSIG by key %d: verification failed: %s\0A\00", align 1, !dbg !884
@.str.65 = private unnamed_addr constant [23 x i8] c"found RRSIG by key %d\0A\00", align 1, !dbg !889
@.str.66 = private unnamed_addr constant [26 x i8] c"this is the oldest so far\00", align 1, !dbg !891
@.str.67 = private unnamed_addr constant [20 x i8] c"dns_time64_totext()\00", align 1, !dbg !893
@.str.68 = private unnamed_addr constant [43 x i8] c"isc_buffer_availablelength(&timebuf) >= 1U\00", align 1, !dbg !898
@.str.69 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !903
@.str.70 = private unnamed_addr constant [12 x i8] c"%s %s (%u)\0A\00", align 1, !dbg !905
@.str.71 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !910
@.str.72 = private unnamed_addr constant [28 x i8] c"error writing to stdout: %s\00", align 1, !dbg !912
@.str.73 = private unnamed_addr constant [12 x i8] c"-XXXXXXXXXX\00", align 1, !dbg !914
@.str.74 = private unnamed_addr constant [12 x i8] c"open %s: %s\00", align 1, !dbg !916
@.str.75 = private unnamed_addr constant [24 x i8] c"error writing to %s: %s\00", align 1, !dbg !918
@.str.76 = private unnamed_addr constant [38 x i8] c"can't set modification time of %s: %s\00", align 1, !dbg !923
@.str.77 = private unnamed_addr constant [31 x i8] c"dns_master_stylecreate2 failed\00", align 1, !dbg !928
@.str.78 = private unnamed_addr constant [20 x i8] c"printing DS records\00", align 1, !dbg !930
@.str.79 = private unnamed_addr constant [22 x i8] c"dns_rdataset_totext()\00", align 1, !dbg !932
@.str.80 = private unnamed_addr constant [38 x i8] c"isc_buffer_availablelength(buf) >= 1U\00", align 1, !dbg !934
@.str.81 = private unnamed_addr constant [27 x i8] c"allocating new DS list: %s\00", align 1, !dbg !936
@.str.82 = private unnamed_addr constant [33 x i8] c"dns_rdatalist_tordataset(dslist)\00", align 1, !dbg !938
@.str.83 = private unnamed_addr constant [24 x i8] c"building new DS records\00", align 1, !dbg !940
@.str.84 = private unnamed_addr constant [24 x i8] c"DS list buffer size %u\0A\00", align 1, !dbg !942
@.str.85 = private unnamed_addr constant [16 x i8] c"ds_from_rdata()\00", align 1, !dbg !944
@.str.86 = private unnamed_addr constant [32 x i8] c"(rdlist->rdata).tail == (rdata)\00", align 1, !dbg !946
@.str.87 = private unnamed_addr constant [32 x i8] c"(rdlist->rdata).head == (rdata)\00", align 1, !dbg !948
@.str.88 = private unnamed_addr constant [32 x i8] c"(rdlist->rdata).head != (rdata)\00", align 1, !dbg !950
@.str.89 = private unnamed_addr constant [32 x i8] c"(rdlist->rdata).tail != (rdata)\00", align 1, !dbg !952
@.str.90 = private unnamed_addr constant [24 x i8] c"allocating DS rdata: %s\00", align 1, !dbg !954
@.str.91 = private unnamed_addr constant [24 x i8] c"dns_rdata_tostruct(CDS)\00", align 1, !dbg !956
@.str.92 = private unnamed_addr constant [30 x i8] c"allocating DS rdata array: %s\00", align 1, !dbg !958
@.str.93 = private unnamed_addr constant [33 x i8] c"allocating unpacked DS array: %s\00", align 1, !dbg !963
@.str.94 = private unnamed_addr constant [45 x i8] c"missing signature for algorithm %d (key %d)\0A\00", align 1, !dbg !965
@.str.95 = private unnamed_addr constant [36 x i8] c"warning: no TTL in nsupdate script\0A\00", align 1, !dbg !967
@.str.96 = private unnamed_addr constant [4 x i8] c"add\00", align 1, !dbg !972
@.str.97 = private unnamed_addr constant [4 x i8] c"del\00", align 1, !dbg !974
@.str.98 = private unnamed_addr constant [18 x i8] c"show\0Asend\0Aanswer\0A\00", align 1, !dbg !976
@.str.99 = private unnamed_addr constant [6 x i8] c"send\0A\00", align 1, !dbg !978
@.str.100 = private unnamed_addr constant [17 x i8] c"write stdout: %s\00", align 1, !dbg !983
@.str.101 = private unnamed_addr constant [20 x i8] c"dns_db_newversion()\00", align 1, !dbg !988
@.str.102 = private unnamed_addr constant [18 x i8] c"dns_db_findnode()\00", align 1, !dbg !990
@.str.103 = private unnamed_addr constant [21 x i8] c"dns_db_addrdataset()\00", align 1, !dbg !992
@.str.104 = private unnamed_addr constant [26 x i8] c"dns_db_subtractrdataset()\00", align 1, !dbg !994
@.str.105 = private unnamed_addr constant [15 x i8] c"update %s %.*s\00", align 1, !dbg !996
@.str.106 = private unnamed_addr constant [17 x i8] c"_r->length >= _l\00", align 1, !dbg !1001

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !1009 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %child_path = alloca ptr, align 8
  %ds_path = alloca ptr, align 8
  %inplace = alloca ptr, align 8
  %result = alloca i32, align 4
  %prefer_cdnskey = alloca i8, align 1
  %nsupdate = alloca i8, align 1
  %ttl = alloca i32, align 4
  %ch = alloca i32, align 4
  %endp = alloca ptr, align 8
  %type = alloca [32 x i8], align 16
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !1014, metadata !DIExpression()), !dbg !1029
  store ptr %argv, ptr %argv.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !1015, metadata !DIExpression()), !dbg !1030
  call void @llvm.lifetime.start.p0(i64 8, ptr %child_path) #14, !dbg !1031
  tail call void @llvm.dbg.declare(metadata ptr %child_path, metadata !1016, metadata !DIExpression()), !dbg !1032
  store ptr null, ptr %child_path, align 8, !dbg !1032
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds_path) #14, !dbg !1033
  tail call void @llvm.dbg.declare(metadata ptr %ds_path, metadata !1017, metadata !DIExpression()), !dbg !1034
  store ptr null, ptr %ds_path, align 8, !dbg !1034
  call void @llvm.lifetime.start.p0(i64 8, ptr %inplace) #14, !dbg !1035
  tail call void @llvm.dbg.declare(metadata ptr %inplace, metadata !1018, metadata !DIExpression()), !dbg !1036
  store ptr null, ptr %inplace, align 8, !dbg !1036
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1019, metadata !DIExpression()), !dbg !1038
  call void @llvm.lifetime.start.p0(i64 1, ptr %prefer_cdnskey) #14, !dbg !1039
  tail call void @llvm.dbg.declare(metadata ptr %prefer_cdnskey, metadata !1020, metadata !DIExpression()), !dbg !1040
  store i8 0, ptr %prefer_cdnskey, align 1, !dbg !1040
  call void @llvm.lifetime.start.p0(i64 1, ptr %nsupdate) #14, !dbg !1041
  tail call void @llvm.dbg.declare(metadata ptr %nsupdate, metadata !1021, metadata !DIExpression()), !dbg !1042
  store i8 0, ptr %nsupdate, align 1, !dbg !1042
  call void @llvm.lifetime.start.p0(i64 4, ptr %ttl) #14, !dbg !1043
  tail call void @llvm.dbg.declare(metadata ptr %ttl, metadata !1022, metadata !DIExpression()), !dbg !1044
  store i32 0, ptr %ttl, align 4, !dbg !1044
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch) #14, !dbg !1045
  tail call void @llvm.dbg.declare(metadata ptr %ch, metadata !1023, metadata !DIExpression()), !dbg !1046
  call void @llvm.lifetime.start.p0(i64 8, ptr %endp) #14, !dbg !1047
  tail call void @llvm.dbg.declare(metadata ptr %endp, metadata !1024, metadata !DIExpression()), !dbg !1048
  %call = call i32 @isc_mem_create(i64 noundef 0, i64 noundef 0, ptr noundef @mctx), !dbg !1049
  store i32 %call, ptr %result, align 4, !dbg !1050
  %0 = load i32, ptr %result, align 4, !dbg !1051
  %cmp = icmp ne i32 %0, 0, !dbg !1053
  br i1 %cmp, label %if.then, label %if.end, !dbg !1054

if.then:                                          ; preds = %entry
  call void (ptr, ...) @fatal(ptr noundef @.str.1) #15, !dbg !1055
  unreachable, !dbg !1055

if.end:                                           ; preds = %entry
  call void @dns_result_register(), !dbg !1057
  store i8 0, ptr @isc_commandline_errprint, align 1, !dbg !1058
  br label %while.cond, !dbg !1059

while.cond:                                       ; preds = %sw.epilog, %if.end
  %1 = load i32, ptr %argc.addr, align 4, !dbg !1060
  %2 = load ptr, ptr %argv.addr, align 8, !dbg !1061
  %call1 = call i32 @isc_commandline_parse(i32 noundef %1, ptr noundef %2, ptr noundef @.str.2), !dbg !1062
  store i32 %call1, ptr %ch, align 4, !dbg !1063
  %cmp2 = icmp ne i32 %call1, -1, !dbg !1064
  br i1 %cmp2, label %while.body, label %while.end, !dbg !1059

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %ch, align 4, !dbg !1065
  switch i32 %3, label %sw.default [
    i32 97, label %sw.bb
    i32 99, label %sw.bb3
    i32 68, label %sw.bb5
    i32 100, label %sw.bb6
    i32 102, label %sw.bb7
    i32 105, label %sw.bb8
    i32 109, label %sw.bb12
    i32 115, label %sw.bb13
    i32 84, label %sw.bb14
    i32 117, label %sw.bb16
    i32 86, label %sw.bb17
    i32 118, label %sw.bb18
  ], !dbg !1067

sw.bb:                                            ; preds = %while.body
  %4 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1068
  call void @add_dtype(ptr noundef %4), !dbg !1070
  br label %sw.epilog, !dbg !1071

sw.bb3:                                           ; preds = %while.body
  %5 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1072
  %call4 = call zeroext i16 @strtoclass(ptr noundef %5), !dbg !1073
  store i16 %call4, ptr @rdclass, align 2, !dbg !1074
  br label %sw.epilog, !dbg !1075

sw.bb5:                                           ; preds = %while.body
  store i8 1, ptr %prefer_cdnskey, align 1, !dbg !1076
  br label %sw.epilog, !dbg !1077

sw.bb6:                                           ; preds = %while.body
  %6 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1078
  store ptr %6, ptr %ds_path, align 8, !dbg !1079
  br label %sw.epilog, !dbg !1080

sw.bb7:                                           ; preds = %while.body
  %7 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1081
  store ptr %7, ptr %child_path, align 8, !dbg !1082
  br label %sw.epilog, !dbg !1083

sw.bb8:                                           ; preds = %while.body
  %8 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1084
  %9 = load ptr, ptr %argv.addr, align 8, !dbg !1086
  %10 = load i32, ptr @isc_commandline_index, align 4, !dbg !1087
  %sub = sub nsw i32 %10, 1, !dbg !1088
  %idxprom = sext i32 %sub to i64, !dbg !1086
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom, !dbg !1086
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !1086
  %cmp9 = icmp eq ptr %8, %11, !dbg !1089
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !1090

if.then10:                                        ; preds = %sw.bb8
  %12 = load i32, ptr @isc_commandline_index, align 4, !dbg !1091
  %dec = add nsw i32 %12, -1, !dbg !1091
  store i32 %dec, ptr @isc_commandline_index, align 4, !dbg !1091
  store ptr @.str.3, ptr %inplace, align 8, !dbg !1093
  br label %if.end11, !dbg !1094

if.else:                                          ; preds = %sw.bb8
  %13 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1095
  store ptr %13, ptr %inplace, align 8, !dbg !1097
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  br label %sw.epilog, !dbg !1098

sw.bb12:                                          ; preds = %while.body
  store i32 3, ptr @isc_mem_debugging, align 4, !dbg !1099
  br label %sw.epilog, !dbg !1100

sw.bb13:                                          ; preds = %while.body
  %14 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1101
  store ptr %14, ptr @startstr, align 8, !dbg !1102
  br label %sw.epilog, !dbg !1103

sw.bb14:                                          ; preds = %while.body
  %15 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1104
  %call15 = call i32 @strtottl(ptr noundef %15), !dbg !1105
  store i32 %call15, ptr %ttl, align 4, !dbg !1106
  br label %sw.epilog, !dbg !1107

sw.bb16:                                          ; preds = %while.body
  store i8 1, ptr %nsupdate, align 1, !dbg !1108
  br label %sw.epilog, !dbg !1109

sw.bb17:                                          ; preds = %while.body
  %16 = load ptr, ptr @program, align 8, !dbg !1110
  call void @version(ptr noundef %16) #15, !dbg !1111
  unreachable, !dbg !1111

sw.bb18:                                          ; preds = %while.body
  %17 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !1112
  %call19 = call i64 @strtoul(ptr noundef %17, ptr noundef %endp, i32 noundef 0) #14, !dbg !1113
  %conv = trunc i64 %call19 to i32, !dbg !1113
  store i32 %conv, ptr @verbose, align 4, !dbg !1114
  %18 = load ptr, ptr %endp, align 8, !dbg !1115
  %19 = load i8, ptr %18, align 1, !dbg !1117
  %conv20 = sext i8 %19 to i32, !dbg !1117
  %cmp21 = icmp ne i32 %conv20, 0, !dbg !1118
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !1119

if.then23:                                        ; preds = %sw.bb18
  call void (ptr, ...) @fatal(ptr noundef @.str.4) #15, !dbg !1120
  unreachable, !dbg !1120

if.end24:                                         ; preds = %sw.bb18
  br label %sw.epilog, !dbg !1122

sw.default:                                       ; preds = %while.body
  call void @usage() #15, !dbg !1123
  unreachable, !dbg !1123

sw.epilog:                                        ; preds = %if.end24, %sw.bb16, %sw.bb14, %sw.bb13, %sw.bb12, %if.end11, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb3, %sw.bb
  br label %while.cond, !dbg !1059, !llvm.loop !1124

while.end:                                        ; preds = %while.cond
  %20 = load i32, ptr @isc_commandline_index, align 4, !dbg !1127
  %21 = load ptr, ptr %argv.addr, align 8, !dbg !1128
  %idx.ext = sext i32 %20 to i64, !dbg !1128
  %add.ptr = getelementptr inbounds ptr, ptr %21, i64 %idx.ext, !dbg !1128
  store ptr %add.ptr, ptr %argv.addr, align 8, !dbg !1128
  %22 = load i32, ptr @isc_commandline_index, align 4, !dbg !1129
  %23 = load i32, ptr %argc.addr, align 4, !dbg !1130
  %sub25 = sub nsw i32 %23, %22, !dbg !1130
  store i32 %sub25, ptr %argc.addr, align 4, !dbg !1130
  %24 = load i32, ptr %argc.addr, align 4, !dbg !1131
  %cmp26 = icmp ne i32 %24, 1, !dbg !1133
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !1134

if.then28:                                        ; preds = %while.end
  call void @usage() #15, !dbg !1135
  unreachable, !dbg !1135

if.end29:                                         ; preds = %while.end
  %25 = load ptr, ptr %argv.addr, align 8, !dbg !1137
  %arrayidx30 = getelementptr inbounds ptr, ptr %25, i64 0, !dbg !1137
  %26 = load ptr, ptr %arrayidx30, align 8, !dbg !1137
  call void @initname(ptr noundef %26), !dbg !1138
  %27 = load i8, ptr @dtype, align 1, !dbg !1139
  %conv31 = zext i8 %27 to i32, !dbg !1139
  %cmp32 = icmp eq i32 %conv31, 0, !dbg !1141
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !1142

if.then34:                                        ; preds = %if.end29
  store i8 2, ptr @dtype, align 1, !dbg !1143
  br label %if.end35, !dbg !1145

if.end35:                                         ; preds = %if.then34, %if.end29
  %28 = load ptr, ptr @mctx, align 8, !dbg !1146
  call void @setup_logging(ptr noundef %28, ptr noundef @lctx), !dbg !1147
  %29 = load ptr, ptr @mctx, align 8, !dbg !1148
  %call36 = call i32 @dst_lib_init(ptr noundef %29, ptr noundef null), !dbg !1149
  store i32 %call36, ptr %result, align 4, !dbg !1150
  %30 = load i32, ptr %result, align 4, !dbg !1151
  %cmp37 = icmp ne i32 %30, 0, !dbg !1153
  br i1 %cmp37, label %if.then39, label %if.end41, !dbg !1154

if.then39:                                        ; preds = %if.end35
  %31 = load i32, ptr %result, align 4, !dbg !1155
  %call40 = call ptr @isc_result_totext(i32 noundef %31), !dbg !1157
  call void (ptr, ...) @fatal(ptr noundef @.str.5, ptr noundef %call40) #15, !dbg !1158
  unreachable, !dbg !1158

if.end41:                                         ; preds = %if.end35
  %32 = load ptr, ptr %ds_path, align 8, !dbg !1159
  %cmp42 = icmp eq ptr %32, null, !dbg !1161
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !1162

if.then44:                                        ; preds = %if.end41
  call void (ptr, ...) @fatal(ptr noundef @.str.6) #15, !dbg !1163
  unreachable, !dbg !1163

if.end45:                                         ; preds = %if.end41
  %33 = load ptr, ptr %ds_path, align 8, !dbg !1165
  call void @load_parent_set(ptr noundef %33), !dbg !1166
  %34 = load i32, ptr %ttl, align 4, !dbg !1167
  %cmp46 = icmp eq i32 %34, 0, !dbg !1169
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !1170

if.then48:                                        ; preds = %if.end45
  %35 = load i32, ptr getelementptr inbounds (%struct.dns_rdataset, ptr @old_ds_set, i32 0, i32 5), align 4, !dbg !1171
  store i32 %35, ptr %ttl, align 4, !dbg !1173
  br label %if.end49, !dbg !1174

if.end49:                                         ; preds = %if.then48, %if.end45
  %36 = load ptr, ptr %child_path, align 8, !dbg !1175
  %cmp50 = icmp eq ptr %36, null, !dbg !1177
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !1178

if.then52:                                        ; preds = %if.end49
  call void (ptr, ...) @fatal(ptr noundef @.str.7) #15, !dbg !1179
  unreachable, !dbg !1179

if.end53:                                         ; preds = %if.end49
  %37 = load ptr, ptr %child_path, align 8, !dbg !1181
  call void @load_child_sets(ptr noundef %37), !dbg !1182
  %call54 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef @dnskey_set), !dbg !1183
  br i1 %call54, label %lor.lhs.false, label %if.then56, !dbg !1185

lor.lhs.false:                                    ; preds = %if.end53
  %call55 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef @dnskey_sig), !dbg !1186
  br i1 %call55, label %if.end57, label %if.then56, !dbg !1187

if.then56:                                        ; preds = %lor.lhs.false, %if.end53
  %38 = load ptr, ptr @namestr, align 8, !dbg !1188
  call void (ptr, ...) @fatal(ptr noundef @.str.8, ptr noundef %38) #15, !dbg !1190
  unreachable, !dbg !1190

if.end57:                                         ; preds = %lor.lhs.false
  %call58 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef @cdnskey_set), !dbg !1191
  br i1 %call58, label %land.lhs.true, label %if.end62, !dbg !1193

land.lhs.true:                                    ; preds = %if.end57
  %call60 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef @cdnskey_sig), !dbg !1194
  br i1 %call60, label %if.end62, label %if.then61, !dbg !1195

if.then61:                                        ; preds = %land.lhs.true
  %39 = load ptr, ptr @namestr, align 8, !dbg !1196
  call void (ptr, ...) @fatal(ptr noundef @.str.9, ptr noundef %39) #15, !dbg !1198
  unreachable, !dbg !1198

if.end62:                                         ; preds = %land.lhs.true, %if.end57
  %call63 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef @cds_set), !dbg !1199
  br i1 %call63, label %land.lhs.true65, label %if.end68, !dbg !1201

land.lhs.true65:                                  ; preds = %if.end62
  %call66 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef @cds_sig), !dbg !1202
  br i1 %call66, label %if.end68, label %if.then67, !dbg !1203

if.then67:                                        ; preds = %land.lhs.true65
  %40 = load ptr, ptr @namestr, align 8, !dbg !1204
  call void (ptr, ...) @fatal(ptr noundef @.str.10, ptr noundef %40) #15, !dbg !1206
  unreachable, !dbg !1206

if.end68:                                         ; preds = %land.lhs.true65, %if.end62
  call void (i32, ptr, ...) @vbprintf(i32 noundef 1, ptr noundef @.str.11), !dbg !1207
  %call69 = call ptr @match_keyset_dsset(ptr noundef @dnskey_set, ptr noundef @old_ds_set, i32 noundef 0), !dbg !1208
  store ptr %call69, ptr @old_key_tbl, align 8, !dbg !1209
  call void (i32, ptr, ...) @vbprintf(i32 noundef 1, ptr noundef @.str.12), !dbg !1210
  %41 = load ptr, ptr @old_key_tbl, align 8, !dbg !1211
  %call70 = call ptr @matching_sigs(ptr noundef %41, ptr noundef @dnskey_set, ptr noundef @dnskey_sig), !dbg !1213
  %call71 = call zeroext i1 @signed_loose(ptr noundef %call70), !dbg !1214
  br i1 %call71, label %if.end73, label %if.then72, !dbg !1215

if.then72:                                        ; preds = %if.end68
  %42 = load ptr, ptr @namestr, align 8, !dbg !1216
  call void (ptr, ...) @fatal(ptr noundef @.str.13, ptr noundef %42) #15, !dbg !1218
  unreachable, !dbg !1218

if.end73:                                         ; preds = %if.end68
  %call74 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef @cdnskey_set), !dbg !1219
  br i1 %call74, label %if.then75, label %if.end80, !dbg !1221

if.then75:                                        ; preds = %if.end73
  call void (i32, ptr, ...) @vbprintf(i32 noundef 1, ptr noundef @.str.14), !dbg !1222
  %43 = load ptr, ptr @old_key_tbl, align 8, !dbg !1224
  %call76 = call ptr @matching_sigs(ptr noundef %43, ptr noundef @cdnskey_set, ptr noundef @cdnskey_sig), !dbg !1226
  %call77 = call zeroext i1 @signed_loose(ptr noundef %call76), !dbg !1227
  br i1 %call77, label %if.end79, label %if.then78, !dbg !1228

if.then78:                                        ; preds = %if.then75
  %44 = load ptr, ptr @namestr, align 8, !dbg !1229
  call void (ptr, ...) @fatal(ptr noundef @.str.15, ptr noundef %44) #15, !dbg !1231
  unreachable, !dbg !1231

if.end79:                                         ; preds = %if.then75
  br label %if.end80, !dbg !1232

if.end80:                                         ; preds = %if.end79, %if.end73
  %call81 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef @cds_set), !dbg !1233
  br i1 %call81, label %if.then82, label %if.end87, !dbg !1235

if.then82:                                        ; preds = %if.end80
  call void (i32, ptr, ...) @vbprintf(i32 noundef 1, ptr noundef @.str.16), !dbg !1236
  %45 = load ptr, ptr @old_key_tbl, align 8, !dbg !1238
  %call83 = call ptr @matching_sigs(ptr noundef %45, ptr noundef @cds_set, ptr noundef @cds_sig), !dbg !1240
  %call84 = call zeroext i1 @signed_loose(ptr noundef %call83), !dbg !1241
  br i1 %call84, label %if.end86, label %if.then85, !dbg !1242

if.then85:                                        ; preds = %if.then82
  %46 = load ptr, ptr @namestr, align 8, !dbg !1243
  call void (ptr, ...) @fatal(ptr noundef @.str.17, ptr noundef %46) #15, !dbg !1245
  unreachable, !dbg !1245

if.end86:                                         ; preds = %if.then82
  br label %if.end87, !dbg !1246

if.end87:                                         ; preds = %if.end86, %if.end80
  call void @free_keytable(ptr noundef @old_key_tbl), !dbg !1247
  %47 = load i32, ptr getelementptr inbounds (%struct.dns_rdata_rrsig, ptr @oldestsig, i32 0, i32 7), align 4, !dbg !1248
  %cmp88 = icmp ne i32 %47, 0, !dbg !1249
  br i1 %cmp88, label %land.lhs.true90, label %if.end96, !dbg !1250

land.lhs.true90:                                  ; preds = %if.end87
  %48 = load i32, ptr @verbose, align 4, !dbg !1251
  %cmp91 = icmp sgt i32 %48, 0, !dbg !1252
  br i1 %cmp91, label %if.then93, label %if.end96, !dbg !1253

if.then93:                                        ; preds = %land.lhs.true90
  call void @llvm.lifetime.start.p0(i64 32, ptr %type) #14, !dbg !1254
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !1025, metadata !DIExpression()), !dbg !1255
  %49 = load i16, ptr getelementptr inbounds (%struct.dns_rdata_rrsig, ptr @oldestsig, i32 0, i32 2), align 8, !dbg !1256
  %arraydecay = getelementptr inbounds [32 x i8], ptr %type, i64 0, i64 0, !dbg !1257
  call void @dns_rdatatype_format(i16 noundef zeroext %49, ptr noundef %arraydecay, i32 noundef 32), !dbg !1258
  %50 = load i32, ptr getelementptr inbounds (%struct.dns_rdata_rrsig, ptr @oldestsig, i32 0, i32 7), align 4, !dbg !1259
  call void @verbose_time(i32 noundef 1, ptr noundef @.str.18, i32 noundef %50), !dbg !1260
  %arraydecay94 = getelementptr inbounds [32 x i8], ptr %type, i64 0, i64 0, !dbg !1261
  %51 = load i16, ptr getelementptr inbounds (%struct.dns_rdata_rrsig, ptr @oldestsig, i32 0, i32 8), align 8, !dbg !1262
  %conv95 = zext i16 %51 to i32, !dbg !1263
  call void (i32, ptr, ...) @vbprintf(i32 noundef 2, ptr noundef @.str.19, ptr noundef %arraydecay94, i32 noundef %conv95), !dbg !1264
  call void @llvm.lifetime.end.p0(i64 32, ptr %type) #14, !dbg !1265
  br label %if.end96, !dbg !1266

if.end96:                                         ; preds = %if.then93, %land.lhs.true90, %if.end87
  %call97 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef @cdnskey_set), !dbg !1267
  br i1 %call97, label %if.end101, label %land.lhs.true98, !dbg !1269

land.lhs.true98:                                  ; preds = %if.end96
  %call99 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef @cds_set), !dbg !1270
  br i1 %call99, label %if.end101, label %if.then100, !dbg !1271

if.then100:                                       ; preds = %land.lhs.true98
  %52 = load ptr, ptr @namestr, align 8, !dbg !1272
  call void (i32, ptr, ...) @vbprintf(i32 noundef 1, ptr noundef @.str.20, ptr noundef %52), !dbg !1274
  %53 = load ptr, ptr %ds_path, align 8, !dbg !1275
  %54 = load ptr, ptr %inplace, align 8, !dbg !1276
  %55 = load i8, ptr %nsupdate, align 1, !dbg !1277, !range !1278, !noundef !1279
  %tobool = trunc i8 %55 to i1, !dbg !1277
  call void @write_parent_set(ptr noundef %53, ptr noundef %54, i1 noundef zeroext %tobool, ptr noundef @old_ds_set), !dbg !1280
  call void @exit(i32 noundef 0) #16, !dbg !1281
  unreachable, !dbg !1281

if.end101:                                        ; preds = %land.lhs.true98, %if.end96
  %56 = load i8, ptr %prefer_cdnskey, align 1, !dbg !1282, !range !1278, !noundef !1279
  %tobool102 = trunc i8 %56 to i1, !dbg !1282
  br i1 %tobool102, label %land.lhs.true104, label %if.else108, !dbg !1284

land.lhs.true104:                                 ; preds = %if.end101
  %call105 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef @cdnskey_set), !dbg !1285
  br i1 %call105, label %if.then107, label %if.else108, !dbg !1286

if.then107:                                       ; preds = %land.lhs.true104
  %57 = load i32, ptr %ttl, align 4, !dbg !1287
  call void @make_new_ds_set(ptr noundef @ds_from_cdnskey, i32 noundef %57, ptr noundef @cdnskey_set), !dbg !1289
  br label %if.end113, !dbg !1290

if.else108:                                       ; preds = %land.lhs.true104, %if.end101
  %call109 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef @cds_set), !dbg !1291
  br i1 %call109, label %if.then110, label %if.else111, !dbg !1293

if.then110:                                       ; preds = %if.else108
  %58 = load i32, ptr %ttl, align 4, !dbg !1294
  call void @make_new_ds_set(ptr noundef @ds_from_cds, i32 noundef %58, ptr noundef @cds_set), !dbg !1296
  br label %if.end112, !dbg !1297

if.else111:                                       ; preds = %if.else108
  %59 = load i32, ptr %ttl, align 4, !dbg !1298
  call void @make_new_ds_set(ptr noundef @ds_from_cdnskey, i32 noundef %59, ptr noundef @cdnskey_set), !dbg !1300
  br label %if.end112

if.end112:                                        ; preds = %if.else111, %if.then110
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.then107
  call void (i32, ptr, ...) @vbprintf(i32 noundef 1, ptr noundef @.str.21), !dbg !1301
  %call114 = call ptr @match_keyset_dsset(ptr noundef @dnskey_set, ptr noundef @new_ds_set, i32 noundef 1), !dbg !1302
  store ptr %call114, ptr @new_key_tbl, align 8, !dbg !1303
  %call115 = call zeroext i1 @consistent_digests(ptr noundef @new_ds_set), !dbg !1304
  br i1 %call115, label %if.end117, label %if.then116, !dbg !1306

if.then116:                                       ; preds = %if.end113
  %60 = load ptr, ptr @namestr, align 8, !dbg !1307
  call void (ptr, ...) @fatal(ptr noundef @.str.22, ptr noundef %60) #15, !dbg !1309
  unreachable, !dbg !1309

if.end117:                                        ; preds = %if.end113
  call void (i32, ptr, ...) @vbprintf(i32 noundef 1, ptr noundef @.str.12), !dbg !1310
  %61 = load ptr, ptr @new_key_tbl, align 8, !dbg !1311
  %call118 = call ptr @matching_sigs(ptr noundef %61, ptr noundef @dnskey_set, ptr noundef @dnskey_sig), !dbg !1313
  %call119 = call zeroext i1 @signed_strict(ptr noundef @new_ds_set, ptr noundef %call118), !dbg !1314
  br i1 %call119, label %if.end121, label %if.then120, !dbg !1315

if.then120:                                       ; preds = %if.end117
  %62 = load ptr, ptr @namestr, align 8, !dbg !1316
  call void (ptr, ...) @fatal(ptr noundef @.str.23, ptr noundef %62) #15, !dbg !1318
  unreachable, !dbg !1318

if.end121:                                        ; preds = %if.end117
  call void @free_keytable(ptr noundef @new_key_tbl), !dbg !1319
  %63 = load i8, ptr %nsupdate, align 1, !dbg !1320, !range !1278, !noundef !1279
  %tobool122 = trunc i8 %63 to i1, !dbg !1320
  br i1 %tobool122, label %if.then123, label %if.end124, !dbg !1322

if.then123:                                       ; preds = %if.end121
  %64 = load i32, ptr %ttl, align 4, !dbg !1323
  call void @nsdiff(i32 noundef %64, ptr noundef @old_ds_set, ptr noundef @new_ds_set), !dbg !1325
  br label %if.end124, !dbg !1326

if.end124:                                        ; preds = %if.then123, %if.end121
  %65 = load ptr, ptr %ds_path, align 8, !dbg !1327
  %66 = load ptr, ptr %inplace, align 8, !dbg !1328
  %67 = load i8, ptr %nsupdate, align 1, !dbg !1329, !range !1278, !noundef !1279
  %tobool125 = trunc i8 %67 to i1, !dbg !1329
  call void @write_parent_set(ptr noundef %65, ptr noundef %66, i1 noundef zeroext %tobool125, ptr noundef @new_ds_set), !dbg !1330
  call void @free_all_sets(), !dbg !1331
  call void @cleanup_logging(ptr noundef @lctx), !dbg !1332
  call void @dst_lib_destroy(), !dbg !1333
  %68 = load i32, ptr @verbose, align 4, !dbg !1334
  %cmp126 = icmp sgt i32 %68, 10, !dbg !1336
  br i1 %cmp126, label %if.then128, label %if.end129, !dbg !1337

if.then128:                                       ; preds = %if.end124
  %69 = load ptr, ptr @mctx, align 8, !dbg !1338
  %70 = load ptr, ptr @stdout, align 8, !dbg !1340
  call void @isc_mem_stats(ptr noundef %69, ptr noundef %70), !dbg !1341
  br label %if.end129, !dbg !1342

if.end129:                                        ; preds = %if.then128, %if.end124
  call void @isc_mem_destroy(ptr noundef @mctx), !dbg !1343
  call void @exit(i32 noundef 0) #16, !dbg !1344
  unreachable, !dbg !1344
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare !dbg !1345 i32 @isc_mem_create(i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !1348 void @fatal(ptr noundef, ...) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !1352 void @dns_result_register() #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1356 i32 @isc_commandline_parse(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @add_dtype(ptr noundef %dn) #0 !dbg !1362 {
entry:
  %dn.addr = alloca ptr, align 8
  %dt = alloca i8, align 1
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %dn, ptr %dn.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dn.addr, metadata !1366, metadata !DIExpression()), !dbg !1370
  call void @llvm.lifetime.start.p0(i64 1, ptr %dt) #14, !dbg !1371
  tail call void @llvm.dbg.declare(metadata ptr %dt, metadata !1367, metadata !DIExpression()), !dbg !1372
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !1373
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1368, metadata !DIExpression()), !dbg !1374
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #14, !dbg !1373
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1369, metadata !DIExpression()), !dbg !1375
  %0 = load ptr, ptr %dn.addr, align 8, !dbg !1376
  %call = call i32 @strtodsdigest(ptr noundef %0), !dbg !1377
  %conv = trunc i32 %call to i8, !dbg !1377
  store i8 %conv, ptr %dt, align 1, !dbg !1378
  store i32 8, ptr %n, align 4, !dbg !1379
  store i32 0, ptr %i, align 4, !dbg !1380
  br label %for.cond, !dbg !1382

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !1383
  %2 = load i32, ptr %n, align 4, !dbg !1385
  %cmp = icmp ult i32 %1, %2, !dbg !1386
  br i1 %cmp, label %for.body, label %for.end, !dbg !1387

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !1388
  %idxprom = zext i32 %3 to i64, !dbg !1391
  %arrayidx = getelementptr inbounds [8 x i8], ptr @dtype, i64 0, i64 %idxprom, !dbg !1391
  %4 = load i8, ptr %arrayidx, align 1, !dbg !1391
  %conv2 = zext i8 %4 to i32, !dbg !1391
  %cmp3 = icmp eq i32 %conv2, 0, !dbg !1392
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !1393

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !1394
  %idxprom5 = zext i32 %5 to i64, !dbg !1395
  %arrayidx6 = getelementptr inbounds [8 x i8], ptr @dtype, i64 0, i64 %idxprom5, !dbg !1395
  %6 = load i8, ptr %arrayidx6, align 1, !dbg !1395
  %conv7 = zext i8 %6 to i32, !dbg !1395
  %7 = load i8, ptr %dt, align 1, !dbg !1396
  %conv8 = zext i8 %7 to i32, !dbg !1396
  %cmp9 = icmp eq i32 %conv7, %conv8, !dbg !1397
  br i1 %cmp9, label %if.then, label %if.end, !dbg !1398

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %8 = load i8, ptr %dt, align 1, !dbg !1399
  %9 = load i32, ptr %i, align 4, !dbg !1401
  %idxprom11 = zext i32 %9 to i64, !dbg !1402
  %arrayidx12 = getelementptr inbounds [8 x i8], ptr @dtype, i64 0, i64 %idxprom11, !dbg !1402
  store i8 %8, ptr %arrayidx12, align 1, !dbg !1403
  %10 = load i32, ptr %i, align 4, !dbg !1404
  %add = add i32 %10, 1, !dbg !1405
  %conv13 = zext i32 %add to i64, !dbg !1404
  call void @qsort(ptr noundef @dtype, i64 noundef %conv13, i64 noundef 1, ptr noundef @cmp_dtype), !dbg !1406
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #14, !dbg !1407
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !1407
  call void @llvm.lifetime.end.p0(i64 1, ptr %dt) #14, !dbg !1407
  ret void, !dbg !1407

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc, !dbg !1408

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !dbg !1409
  %inc = add i32 %11, 1, !dbg !1409
  store i32 %inc, ptr %i, align 4, !dbg !1409
  br label %for.cond, !dbg !1410, !llvm.loop !1411

for.end:                                          ; preds = %for.cond
  call void (ptr, ...) @fatal(ptr noundef @.str.24) #15, !dbg !1413
  unreachable, !dbg !1413
}

; Function Attrs: null_pointer_is_valid
declare !dbg !1414 zeroext i16 @strtoclass(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1417 i32 @strtottl(ptr noundef) #2

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !1420 void @version(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !1421 i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noreturn nounwind null_pointer_is_valid uwtable
define internal void @usage() #5 !dbg !1427 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !dbg !1428
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.25), !dbg !1429
  %1 = load ptr, ptr @stderr, align 8, !dbg !1430
  %2 = load ptr, ptr @program, align 8, !dbg !1431
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.26, ptr noundef %2), !dbg !1432
  %3 = load ptr, ptr @stderr, align 8, !dbg !1433
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.27, ptr noundef @.str.28), !dbg !1434
  %4 = load ptr, ptr @stderr, align 8, !dbg !1435
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.29), !dbg !1436
  call void @exit(i32 noundef 1) #16, !dbg !1437
  unreachable, !dbg !1437
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @initname(ptr noundef %setname) #0 !dbg !1438 {
entry:
  %setname.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %buf = alloca %struct.isc_buffer, align 8
  store ptr %setname, ptr %setname.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %setname.addr, metadata !1442, metadata !DIExpression()), !dbg !1445
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !1446
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1443, metadata !DIExpression()), !dbg !1447
  call void @llvm.lifetime.start.p0(i64 64, ptr %buf) #14, !dbg !1448
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1444, metadata !DIExpression()), !dbg !1449
  %call = call ptr @dns_fixedname_initname(ptr noundef @fixed), !dbg !1450
  store ptr %call, ptr @name, align 8, !dbg !1451
  %0 = load ptr, ptr %setname.addr, align 8, !dbg !1452
  store ptr %0, ptr @namestr, align 8, !dbg !1453
  br label %do.body, !dbg !1454

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %setname.addr, align 8, !dbg !1455
  %base = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 1, !dbg !1455
  store ptr %1, ptr %base, align 8, !dbg !1455
  %2 = load ptr, ptr %setname.addr, align 8, !dbg !1455
  %call1 = call i64 @strlen(ptr noundef %2) #17, !dbg !1455
  %conv = trunc i64 %call1 to i32, !dbg !1455
  %length = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 2, !dbg !1455
  store i32 %conv, ptr %length, align 8, !dbg !1455
  %used = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !1455
  store i32 0, ptr %used, align 4, !dbg !1455
  %current = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 4, !dbg !1455
  store i32 0, ptr %current, align 8, !dbg !1455
  %active = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 5, !dbg !1455
  store i32 0, ptr %active, align 4, !dbg !1455
  %mctx = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 7, !dbg !1455
  store ptr null, ptr %mctx, align 8, !dbg !1455
  br label %do.body2, !dbg !1455

do.body2:                                         ; preds = %do.body
  %link = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 6, !dbg !1457
  %prev = getelementptr inbounds %struct.anon.8, ptr %link, i32 0, i32 0, !dbg !1457
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !1457
  %link3 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 6, !dbg !1457
  %next = getelementptr inbounds %struct.anon.8, ptr %link3, i32 0, i32 1, !dbg !1457
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !1457
  br label %do.cond, !dbg !1457

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !1457

do.end:                                           ; preds = %do.cond
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 0, !dbg !1455
  store i32 1114990113, ptr %magic, align 8, !dbg !1455
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 8, !dbg !1455
  store i8 0, ptr %autore, align 8, !dbg !1455
  br label %do.cond4, !dbg !1455

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !1455

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !1459

do.body6:                                         ; preds = %do.end5
  %3 = load ptr, ptr %setname.addr, align 8, !dbg !1460
  %call7 = call i64 @strlen(ptr noundef %3) #17, !dbg !1460
  %used8 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !1460
  %4 = load i32, ptr %used8, align 4, !dbg !1460
  %conv9 = zext i32 %4 to i64, !dbg !1460
  %add = add i64 %conv9, %call7, !dbg !1460
  %conv10 = trunc i64 %add to i32, !dbg !1460
  store i32 %conv10, ptr %used8, align 4, !dbg !1460
  br label %do.cond11, !dbg !1460

do.cond11:                                        ; preds = %do.body6
  br label %do.end12, !dbg !1460

do.end12:                                         ; preds = %do.cond11
  %5 = load ptr, ptr @name, align 8, !dbg !1462
  %6 = load ptr, ptr @dns_rootname, align 8, !dbg !1463
  %call13 = call i32 @dns_name_fromtext(ptr noundef %5, ptr noundef %buf, ptr noundef %6, i32 noundef 0, ptr noundef null), !dbg !1464
  store i32 %call13, ptr %result, align 4, !dbg !1465
  %7 = load i32, ptr %result, align 4, !dbg !1466
  %cmp = icmp ne i32 %7, 0, !dbg !1468
  br i1 %cmp, label %if.then, label %if.end, !dbg !1469

if.then:                                          ; preds = %do.end12
  %8 = load ptr, ptr %setname.addr, align 8, !dbg !1470
  call void (ptr, ...) @fatal(ptr noundef @.str.30, ptr noundef %8) #15, !dbg !1472
  unreachable, !dbg !1472

if.end:                                           ; preds = %do.end12
  call void @llvm.lifetime.end.p0(i64 64, ptr %buf) #14, !dbg !1473
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !1473
  ret void, !dbg !1473
}

; Function Attrs: null_pointer_is_valid
declare !dbg !1474 void @setup_logging(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1478 i32 @dst_lib_init(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1481 ptr @isc_result_totext(i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @load_parent_set(ptr noundef %path) #0 !dbg !1485 {
entry:
  %path.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %db = alloca ptr, align 8
  %node = alloca ptr, align 8
  %modtime = alloca %struct.isc_time, align 4
  %filename = alloca [4097 x i8], align 16
  %now = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !1487, metadata !DIExpression()), !dbg !2003
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !2004
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1488, metadata !DIExpression()), !dbg !2005
  call void @llvm.lifetime.start.p0(i64 8, ptr %db) #14, !dbg !2006
  tail call void @llvm.dbg.declare(metadata ptr %db, metadata !1489, metadata !DIExpression()), !dbg !2007
  store ptr null, ptr %db, align 8, !dbg !2007
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !2008
  tail call void @llvm.dbg.declare(metadata ptr %node, metadata !1988, metadata !DIExpression()), !dbg !2009
  store ptr null, ptr %node, align 8, !dbg !2009
  call void @llvm.lifetime.start.p0(i64 8, ptr %modtime) #14, !dbg !2010
  tail call void @llvm.dbg.declare(metadata ptr %modtime, metadata !1989, metadata !DIExpression()), !dbg !2011
  call void @llvm.lifetime.start.p0(i64 4097, ptr %filename) #14, !dbg !2012
  tail call void @llvm.dbg.declare(metadata ptr %filename, metadata !1996, metadata !DIExpression()), !dbg !2013
  %arraydecay = getelementptr inbounds [4097 x i8], ptr %filename, i64 0, i64 0, !dbg !2014
  %0 = load ptr, ptr %path.addr, align 8, !dbg !2015
  call void @get_dsset_name(ptr noundef %arraydecay, i64 noundef 4097, ptr noundef %0, ptr noundef @.str.3), !dbg !2016
  %arraydecay1 = getelementptr inbounds [4097 x i8], ptr %filename, i64 0, i64 0, !dbg !2017
  %call = call i32 @isc_file_getmodtime(ptr noundef %arraydecay1, ptr noundef %modtime), !dbg !2018
  store i32 %call, ptr %result, align 4, !dbg !2019
  %1 = load i32, ptr %result, align 4, !dbg !2020
  %cmp = icmp ne i32 %1, 0, !dbg !2022
  br i1 %cmp, label %if.then, label %if.end, !dbg !2023

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [4097 x i8], ptr %filename, i64 0, i64 0, !dbg !2024
  %2 = load i32, ptr %result, align 4, !dbg !2026
  %call3 = call ptr @isc_result_totext(i32 noundef %2), !dbg !2027
  call void (ptr, ...) @fatal(ptr noundef @.str.31, ptr noundef %arraydecay2, ptr noundef %call3) #15, !dbg !2028
  unreachable, !dbg !2028

if.end:                                           ; preds = %entry
  %call4 = call i32 @isc_time_seconds(ptr noundef %modtime), !dbg !2029
  store i32 %call4, ptr @notbefore, align 4, !dbg !2030
  %3 = load ptr, ptr @startstr, align 8, !dbg !2031
  %cmp5 = icmp ne ptr %3, null, !dbg !2032
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !2033

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %now) #14, !dbg !2034
  tail call void @llvm.dbg.declare(metadata ptr %now, metadata !2000, metadata !DIExpression()), !dbg !2035
  call void @isc_stdtime_get(ptr noundef %now), !dbg !2036
  %4 = load ptr, ptr @startstr, align 8, !dbg !2037
  %5 = load i32, ptr %now, align 4, !dbg !2038
  %conv = zext i32 %5 to i64, !dbg !2038
  %6 = load i32, ptr @notbefore, align 4, !dbg !2039
  %conv7 = zext i32 %6 to i64, !dbg !2039
  %call8 = call i32 @strtotime(ptr noundef %4, i64 noundef %conv, i64 noundef %conv7, ptr noundef null), !dbg !2040
  store i32 %call8, ptr @notbefore, align 4, !dbg !2041
  call void @llvm.lifetime.end.p0(i64 4, ptr %now) #14, !dbg !2042
  br label %if.end9, !dbg !2043

if.end9:                                          ; preds = %if.then6, %if.end
  %7 = load i32, ptr @notbefore, align 4, !dbg !2044
  call void @verbose_time(i32 noundef 1, ptr noundef @.str.32, i32 noundef %7), !dbg !2045
  %arraydecay10 = getelementptr inbounds [4097 x i8], ptr %filename, i64 0, i64 0, !dbg !2046
  call void @load_db(ptr noundef %arraydecay10, ptr noundef %db, ptr noundef %node), !dbg !2047
  %8 = load ptr, ptr %db, align 8, !dbg !2048
  %9 = load ptr, ptr %node, align 8, !dbg !2049
  call void @findset(ptr noundef %8, ptr noundef %9, i16 noundef zeroext 43, ptr noundef @old_ds_set, ptr noundef null), !dbg !2050
  %call11 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef @old_ds_set), !dbg !2051
  br i1 %call11, label %if.end14, label %if.then12, !dbg !2053

if.then12:                                        ; preds = %if.end9
  %10 = load ptr, ptr @namestr, align 8, !dbg !2054
  %arraydecay13 = getelementptr inbounds [4097 x i8], ptr %filename, i64 0, i64 0, !dbg !2056
  call void (ptr, ...) @fatal(ptr noundef @.str.33, ptr noundef %10, ptr noundef %arraydecay13) #15, !dbg !2057
  unreachable, !dbg !2057

if.end14:                                         ; preds = %if.end9
  call void @free_db(ptr noundef %db, ptr noundef %node), !dbg !2058
  call void @llvm.lifetime.end.p0(i64 4097, ptr %filename) #14, !dbg !2059
  call void @llvm.lifetime.end.p0(i64 8, ptr %modtime) #14, !dbg !2059
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !2059
  call void @llvm.lifetime.end.p0(i64 8, ptr %db) #14, !dbg !2059
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !2059
  ret void, !dbg !2059
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @load_child_sets(ptr noundef %file) #0 !dbg !2060 {
entry:
  %file.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !2062, metadata !DIExpression()), !dbg !2065
  call void @llvm.lifetime.start.p0(i64 8, ptr %db) #14, !dbg !2066
  tail call void @llvm.dbg.declare(metadata ptr %db, metadata !2063, metadata !DIExpression()), !dbg !2067
  store ptr null, ptr %db, align 8, !dbg !2067
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !2068
  tail call void @llvm.dbg.declare(metadata ptr %node, metadata !2064, metadata !DIExpression()), !dbg !2069
  store ptr null, ptr %node, align 8, !dbg !2069
  %0 = load ptr, ptr %file.addr, align 8, !dbg !2070
  call void @load_db(ptr noundef %0, ptr noundef %db, ptr noundef %node), !dbg !2071
  %1 = load ptr, ptr %db, align 8, !dbg !2072
  %2 = load ptr, ptr %node, align 8, !dbg !2073
  call void @findset(ptr noundef %1, ptr noundef %2, i16 noundef zeroext 48, ptr noundef @dnskey_set, ptr noundef @dnskey_sig), !dbg !2074
  %3 = load ptr, ptr %db, align 8, !dbg !2075
  %4 = load ptr, ptr %node, align 8, !dbg !2076
  call void @findset(ptr noundef %3, ptr noundef %4, i16 noundef zeroext 60, ptr noundef @cdnskey_set, ptr noundef @cdnskey_sig), !dbg !2077
  %5 = load ptr, ptr %db, align 8, !dbg !2078
  %6 = load ptr, ptr %node, align 8, !dbg !2079
  call void @findset(ptr noundef %5, ptr noundef %6, i16 noundef zeroext 59, ptr noundef @cds_set, ptr noundef @cds_sig), !dbg !2080
  call void @free_db(ptr noundef %db, ptr noundef %node), !dbg !2081
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !2082
  call void @llvm.lifetime.end.p0(i64 8, ptr %db) #14, !dbg !2082
  ret void, !dbg !2082
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2083 zeroext i1 @dns_rdataset_isassociated(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2086 void @vbprintf(i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal ptr @match_keyset_dsset(ptr noundef %keyset, ptr noundef %dsset, i32 noundef %strictness) #0 !dbg !2089 {
entry:
  %keyset.addr = alloca ptr, align 8
  %dsset.addr = alloca ptr, align 8
  %strictness.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %keytable = alloca ptr, align 8
  %i = alloca i32, align 4
  %ki = alloca ptr, align 8
  %dnskey = alloca %struct.dns_rdata_key, align 8
  %keyrdata = alloca ptr, align 8
  %r = alloca %struct.isc_region, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %keyset, ptr %keyset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %keyset.addr, metadata !2094, metadata !DIExpression()), !dbg !2118
  store ptr %dsset, ptr %dsset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dsset.addr, metadata !2095, metadata !DIExpression()), !dbg !2119
  store i32 %strictness, ptr %strictness.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %strictness.addr, metadata !2096, metadata !DIExpression()), !dbg !2120
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !2121
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2097, metadata !DIExpression()), !dbg !2122
  call void @llvm.lifetime.start.p0(i64 8, ptr %keytable) #14, !dbg !2123
  tail call void @llvm.dbg.declare(metadata ptr %keytable, metadata !2098, metadata !DIExpression()), !dbg !2124
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2125
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2099, metadata !DIExpression()), !dbg !2126
  %0 = load ptr, ptr %keyset.addr, align 8, !dbg !2127
  %call = call i32 @dns_rdataset_count(ptr noundef %0), !dbg !2128
  store i32 %call, ptr @nkey, align 4, !dbg !2129
  %1 = load ptr, ptr @mctx, align 8, !dbg !2130
  %2 = load i32, ptr @nkey, align 4, !dbg !2130
  %conv = sext i32 %2 to i64, !dbg !2130
  %mul = mul i64 56, %conv, !dbg !2130
  %call1 = call ptr @isc__mem_get(ptr noundef %1, i64 noundef %mul, ptr noundef @.str.35, i32 noundef 545), !dbg !2130
  store ptr %call1, ptr %keytable, align 8, !dbg !2131
  %3 = load ptr, ptr %keytable, align 8, !dbg !2132
  %cmp = icmp eq ptr %3, null, !dbg !2134
  br i1 %cmp, label %if.then, label %if.end, !dbg !2135

if.then:                                          ; preds = %entry
  call void (ptr, ...) @fatal(ptr noundef @.str.1) #15, !dbg !2136
  unreachable, !dbg !2136

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %keyset.addr, align 8, !dbg !2138
  %call3 = call i32 @dns_rdataset_first(ptr noundef %4), !dbg !2139
  store i32 %call3, ptr %result, align 4, !dbg !2140
  store i32 0, ptr %i, align 4, !dbg !2141
  br label %for.cond, !dbg !2142

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %result, align 4, !dbg !2143
  %cmp4 = icmp eq i32 %5, 0, !dbg !2144
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2145

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ki) #14, !dbg !2146
  tail call void @llvm.dbg.declare(metadata ptr %ki, metadata !2100, metadata !DIExpression()), !dbg !2147
  call void @llvm.lifetime.start.p0(i64 48, ptr %dnskey) #14, !dbg !2148
  tail call void @llvm.dbg.declare(metadata ptr %dnskey, metadata !2104, metadata !DIExpression()), !dbg !2149
  call void @llvm.lifetime.start.p0(i64 8, ptr %keyrdata) #14, !dbg !2150
  tail call void @llvm.dbg.declare(metadata ptr %keyrdata, metadata !2116, metadata !DIExpression()), !dbg !2151
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #14, !dbg !2152
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !2117, metadata !DIExpression()), !dbg !2153
  %6 = load i32, ptr %i, align 4, !dbg !2154
  %7 = load i32, ptr @nkey, align 4, !dbg !2154
  %cmp6 = icmp slt i32 %6, %7, !dbg !2154
  %lnot = xor i1 %cmp6, true, !dbg !2154
  %lnot8 = xor i1 %lnot, true, !dbg !2154
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !2154
  %conv9 = sext i32 %lnot.ext to i64, !dbg !2154
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 1), !dbg !2154
  %tobool = icmp ne i64 %expval, 0, !dbg !2154
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2154

lor.rhs:                                          ; preds = %for.body
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 559, i32 noundef 2, ptr noundef @.str.48) #15, !dbg !2154
  unreachable, !dbg !2154

8:                                                ; No predecessors!
  br label %lor.end, !dbg !2154

lor.end:                                          ; preds = %8, %for.body
  %9 = phi i1 [ true, %for.body ], [ false, %8 ]
  %lor.ext = zext i1 %9 to i32, !dbg !2154
  %10 = load ptr, ptr %keytable, align 8, !dbg !2155
  %11 = load i32, ptr %i, align 4, !dbg !2156
  %idxprom = sext i32 %11 to i64, !dbg !2155
  %arrayidx = getelementptr inbounds %struct.keyinfo, ptr %10, i64 %idxprom, !dbg !2155
  store ptr %arrayidx, ptr %ki, align 8, !dbg !2157
  %12 = load ptr, ptr %ki, align 8, !dbg !2158
  %rdata = getelementptr inbounds %struct.keyinfo, ptr %12, i32 0, i32 0, !dbg !2159
  store ptr %rdata, ptr %keyrdata, align 8, !dbg !2160
  %13 = load ptr, ptr %keyrdata, align 8, !dbg !2161
  call void @dns_rdata_init(ptr noundef %13), !dbg !2162
  %14 = load ptr, ptr %keyset.addr, align 8, !dbg !2163
  %15 = load ptr, ptr %keyrdata, align 8, !dbg !2164
  call void @dns_rdataset_current(ptr noundef %14, ptr noundef %15), !dbg !2165
  %16 = load ptr, ptr %keyrdata, align 8, !dbg !2166
  %call10 = call i32 @dns_rdata_tostruct(ptr noundef %16, ptr noundef %dnskey, ptr noundef null), !dbg !2167
  store i32 %call10, ptr %result, align 4, !dbg !2168
  %17 = load i32, ptr %result, align 4, !dbg !2169
  call void @check_result(i32 noundef %17, ptr noundef @.str.49), !dbg !2170
  %algorithm = getelementptr inbounds %struct.dns_rdata_key, ptr %dnskey, i32 0, i32 4, !dbg !2171
  %18 = load i8, ptr %algorithm, align 1, !dbg !2171
  %19 = load ptr, ptr %ki, align 8, !dbg !2172
  %algo = getelementptr inbounds %struct.keyinfo, ptr %19, i32 0, i32 2, !dbg !2173
  store i8 %18, ptr %algo, align 8, !dbg !2174
  %20 = load ptr, ptr %keyrdata, align 8, !dbg !2175
  call void @dns_rdata_toregion(ptr noundef %20, ptr noundef %r), !dbg !2176
  %call11 = call zeroext i16 @dst_region_computeid(ptr noundef %r), !dbg !2177
  %21 = load ptr, ptr %ki, align 8, !dbg !2178
  %tag = getelementptr inbounds %struct.keyinfo, ptr %21, i32 0, i32 3, !dbg !2179
  store i16 %call11, ptr %tag, align 2, !dbg !2180
  %22 = load ptr, ptr %ki, align 8, !dbg !2181
  %dst = getelementptr inbounds %struct.keyinfo, ptr %22, i32 0, i32 1, !dbg !2182
  store ptr null, ptr %dst, align 8, !dbg !2183
  %23 = load ptr, ptr %ki, align 8, !dbg !2184
  %24 = load ptr, ptr %dsset.addr, align 8, !dbg !2186
  %25 = load i32, ptr %strictness.addr, align 4, !dbg !2187
  %call12 = call zeroext i1 @match_key_dsset(ptr noundef %23, ptr noundef %24, i32 noundef %25), !dbg !2188
  br i1 %call12, label %if.end14, label %if.then13, !dbg !2189

if.then13:                                        ; preds = %lor.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2190

if.end14:                                         ; preds = %lor.end
  %26 = load ptr, ptr @name, align 8, !dbg !2192
  %27 = load ptr, ptr %keyrdata, align 8, !dbg !2193
  %28 = load ptr, ptr @mctx, align 8, !dbg !2194
  %29 = load ptr, ptr %ki, align 8, !dbg !2195
  %dst15 = getelementptr inbounds %struct.keyinfo, ptr %29, i32 0, i32 1, !dbg !2196
  %call16 = call i32 @dns_dnssec_keyfromrdata(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %dst15), !dbg !2197
  store i32 %call16, ptr %result, align 4, !dbg !2198
  %30 = load i32, ptr %result, align 4, !dbg !2199
  %cmp17 = icmp ne i32 %30, 0, !dbg !2201
  br i1 %cmp17, label %if.then19, label %if.end25, !dbg !2202

if.then19:                                        ; preds = %if.end14
  %31 = load ptr, ptr %ki, align 8, !dbg !2203
  %tag20 = getelementptr inbounds %struct.keyinfo, ptr %31, i32 0, i32 3, !dbg !2205
  %32 = load i16, ptr %tag20, align 2, !dbg !2205
  %conv21 = zext i16 %32 to i32, !dbg !2203
  %33 = load ptr, ptr %ki, align 8, !dbg !2206
  %algo22 = getelementptr inbounds %struct.keyinfo, ptr %33, i32 0, i32 2, !dbg !2207
  %34 = load i8, ptr %algo22, align 8, !dbg !2207
  %conv23 = zext i8 %34 to i32, !dbg !2206
  %35 = load i32, ptr %result, align 4, !dbg !2208
  %call24 = call ptr @dns_result_totext(i32 noundef %35), !dbg !2209
  call void (i32, ptr, ...) @vbprintf(i32 noundef 3, ptr noundef @.str.50, i32 noundef %conv21, i32 noundef %conv23, ptr noundef %call24), !dbg !2210
  br label %if.end25, !dbg !2211

if.end25:                                         ; preds = %if.then19, %if.end14
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2212
  br label %cleanup, !dbg !2212

cleanup:                                          ; preds = %if.end25, %if.then13
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #14, !dbg !2212
  call void @llvm.lifetime.end.p0(i64 8, ptr %keyrdata) #14, !dbg !2212
  call void @llvm.lifetime.end.p0(i64 48, ptr %dnskey) #14, !dbg !2212
  call void @llvm.lifetime.end.p0(i64 8, ptr %ki) #14, !dbg !2212
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2213

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %36 = load ptr, ptr %keyset.addr, align 8, !dbg !2214
  %call29 = call i32 @dns_rdataset_next(ptr noundef %36), !dbg !2215
  store i32 %call29, ptr %result, align 4, !dbg !2216
  %37 = load i32, ptr %i, align 4, !dbg !2217
  %inc = add nsw i32 %37, 1, !dbg !2217
  store i32 %inc, ptr %i, align 4, !dbg !2217
  br label %for.cond, !dbg !2218, !llvm.loop !2219

for.end:                                          ; preds = %for.cond
  %38 = load ptr, ptr %keytable, align 8, !dbg !2221
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2222
  call void @llvm.lifetime.end.p0(i64 8, ptr %keytable) #14, !dbg !2222
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !2222
  ret ptr %38, !dbg !2223

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @signed_loose(ptr noundef %algo) #0 !dbg !2224 {
entry:
  %algo.addr = alloca ptr, align 8
  %ok = alloca i8, align 1
  %i = alloca i32, align 4
  store ptr %algo, ptr %algo.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %algo.addr, metadata !2229, metadata !DIExpression()), !dbg !2232
  call void @llvm.lifetime.start.p0(i64 1, ptr %ok) #14, !dbg !2233
  tail call void @llvm.dbg.declare(metadata ptr %ok, metadata !2230, metadata !DIExpression()), !dbg !2234
  store i8 0, ptr %ok, align 1, !dbg !2234
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2235
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2231, metadata !DIExpression()), !dbg !2236
  store i32 0, ptr %i, align 4, !dbg !2237
  br label %for.cond, !dbg !2239

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2240
  %1 = load i32, ptr @nkey, align 4, !dbg !2242
  %cmp = icmp slt i32 %0, %1, !dbg !2243
  br i1 %cmp, label %for.body, label %for.end, !dbg !2244

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %algo.addr, align 8, !dbg !2245
  %3 = load i32, ptr %i, align 4, !dbg !2248
  %idxprom = sext i32 %3 to i64, !dbg !2245
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom, !dbg !2245
  %4 = load i8, ptr %arrayidx, align 1, !dbg !2245
  %conv = zext i8 %4 to i32, !dbg !2245
  %cmp1 = icmp ne i32 %conv, 0, !dbg !2249
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2250

if.then:                                          ; preds = %for.body
  store i8 1, ptr %ok, align 1, !dbg !2251
  br label %if.end, !dbg !2253

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2254

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !2255
  %inc = add nsw i32 %5, 1, !dbg !2255
  store i32 %inc, ptr %i, align 4, !dbg !2255
  br label %for.cond, !dbg !2256, !llvm.loop !2257

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !2259

do.body:                                          ; preds = %for.end
  %6 = load ptr, ptr @mctx, align 8, !dbg !2260
  %7 = load ptr, ptr %algo.addr, align 8, !dbg !2260
  %8 = load i32, ptr @nkey, align 4, !dbg !2260
  %conv3 = sext i32 %8 to i64, !dbg !2260
  call void @isc__mem_put(ptr noundef %6, ptr noundef %7, i64 noundef %conv3, ptr noundef @.str.35, i32 noundef 713), !dbg !2260
  store ptr null, ptr %algo.addr, align 8, !dbg !2260
  br label %do.cond, !dbg !2260

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2260

do.end:                                           ; preds = %do.cond
  %9 = load i8, ptr %ok, align 1, !dbg !2262, !range !1278, !noundef !1279
  %tobool = trunc i8 %9 to i1, !dbg !2262
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2263
  call void @llvm.lifetime.end.p0(i64 1, ptr %ok) #14, !dbg !2263
  ret i1 %tobool, !dbg !2264
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal ptr @matching_sigs(ptr noundef %keytbl, ptr noundef %rdataset, ptr noundef %sigset) #0 !dbg !2265 {
entry:
  %keytbl.addr = alloca ptr, align 8
  %rdataset.addr = alloca ptr, align 8
  %sigset.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %algo = alloca ptr, align 8
  %i = alloca i32, align 4
  %sigrdata = alloca %struct.dns_rdata, align 8
  %sig = alloca %struct.dns_rdata_rrsig, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ki = alloca ptr, align 8
  store ptr %keytbl, ptr %keytbl.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %keytbl.addr, metadata !2269, metadata !DIExpression()), !dbg !2284
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2270, metadata !DIExpression()), !dbg !2285
  store ptr %sigset, ptr %sigset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %sigset.addr, metadata !2271, metadata !DIExpression()), !dbg !2286
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !2287
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2272, metadata !DIExpression()), !dbg !2288
  call void @llvm.lifetime.start.p0(i64 8, ptr %algo) #14, !dbg !2289
  tail call void @llvm.dbg.declare(metadata ptr %algo, metadata !2273, metadata !DIExpression()), !dbg !2290
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2291
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2274, metadata !DIExpression()), !dbg !2292
  %0 = load ptr, ptr @mctx, align 8, !dbg !2293
  %1 = load i32, ptr @nkey, align 4, !dbg !2293
  %conv = sext i32 %1 to i64, !dbg !2293
  %call = call ptr @isc__mem_get(ptr noundef %0, i64 noundef %conv, ptr noundef @.str.35, i32 noundef 625), !dbg !2293
  store ptr %call, ptr %algo, align 8, !dbg !2294
  %2 = load ptr, ptr %algo, align 8, !dbg !2295
  %cmp = icmp eq ptr %2, null, !dbg !2297
  br i1 %cmp, label %if.then, label %if.end, !dbg !2298

if.then:                                          ; preds = %entry
  %call2 = call ptr @isc_result_totext(i32 noundef 1), !dbg !2299
  call void (ptr, ...) @fatal(ptr noundef @.str.60, ptr noundef %call2) #15, !dbg !2301
  unreachable, !dbg !2301

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %algo, align 8, !dbg !2302
  %4 = load i32, ptr @nkey, align 4, !dbg !2303
  %conv3 = sext i32 %4 to i64, !dbg !2303
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %conv3, i1 false), !dbg !2304
  %5 = load ptr, ptr %sigset.addr, align 8, !dbg !2305
  %call4 = call i32 @dns_rdataset_first(ptr noundef %5), !dbg !2306
  store i32 %call4, ptr %result, align 4, !dbg !2307
  br label %for.cond, !dbg !2308

for.cond:                                         ; preds = %for.inc65, %if.end
  %6 = load i32, ptr %result, align 4, !dbg !2309
  %cmp5 = icmp eq i32 %6, 0, !dbg !2310
  br i1 %cmp5, label %for.body, label %for.end67, !dbg !2311

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 40, ptr %sigrdata) #14, !dbg !2312
  tail call void @llvm.dbg.declare(metadata ptr %sigrdata, metadata !2275, metadata !DIExpression()), !dbg !2313
  call void @llvm.memset.p0.i64(ptr align 8 %sigrdata, i8 0, i64 40, i1 false), !dbg !2313
  %7 = getelementptr inbounds %struct.dns_rdata, ptr %sigrdata, i32 0, i32 5, !dbg !2313
  %8 = getelementptr inbounds %struct.anon.9, ptr %7, i32 0, i32 0, !dbg !2313
  store ptr inttoptr (i64 -1 to ptr), ptr %8, align 8, !dbg !2313
  %9 = getelementptr inbounds %struct.anon.9, ptr %7, i32 0, i32 1, !dbg !2313
  store ptr inttoptr (i64 -1 to ptr), ptr %9, align 8, !dbg !2313
  call void @llvm.lifetime.start.p0(i64 152, ptr %sig) #14, !dbg !2314
  tail call void @llvm.dbg.declare(metadata ptr %sig, metadata !2279, metadata !DIExpression()), !dbg !2315
  %10 = load ptr, ptr %sigset.addr, align 8, !dbg !2316
  call void @dns_rdataset_current(ptr noundef %10, ptr noundef %sigrdata), !dbg !2317
  %call7 = call i32 @dns_rdata_tostruct(ptr noundef %sigrdata, ptr noundef %sig, ptr noundef null), !dbg !2318
  store i32 %call7, ptr %result, align 4, !dbg !2319
  %11 = load i32, ptr %result, align 4, !dbg !2320
  call void @check_result(i32 noundef %11, ptr noundef @.str.61), !dbg !2321
  %timesigned = getelementptr inbounds %struct.dns_rdata_rrsig, ptr %sig, i32 0, i32 7, !dbg !2322
  %12 = load i32, ptr %timesigned, align 4, !dbg !2322
  %13 = load i32, ptr @notbefore, align 4, !dbg !2324
  %call8 = call zeroext i1 @isc_serial_lt(i32 noundef %12, i32 noundef %13), !dbg !2325
  br i1 %call8, label %if.then9, label %if.end11, !dbg !2326

if.then9:                                         ; preds = %for.body
  %keyid = getelementptr inbounds %struct.dns_rdata_rrsig, ptr %sig, i32 0, i32 8, !dbg !2327
  %14 = load i16, ptr %keyid, align 8, !dbg !2327
  %conv10 = zext i16 %14 to i32, !dbg !2329
  call void (i32, ptr, ...) @vbprintf(i32 noundef 1, ptr noundef @.str.62, i32 noundef %conv10), !dbg !2330
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup61, !dbg !2331

if.end11:                                         ; preds = %for.body
  store i32 0, ptr %i, align 4, !dbg !2332
  br label %for.cond12, !dbg !2333

for.cond12:                                       ; preds = %for.inc, %if.end11
  %15 = load i32, ptr %i, align 4, !dbg !2334
  %16 = load i32, ptr @nkey, align 4, !dbg !2335
  %cmp13 = icmp slt i32 %15, %16, !dbg !2336
  br i1 %cmp13, label %for.body15, label %for.end, !dbg !2337

for.body15:                                       ; preds = %for.cond12
  call void @llvm.lifetime.start.p0(i64 8, ptr %ki) #14, !dbg !2338
  tail call void @llvm.dbg.declare(metadata ptr %ki, metadata !2280, metadata !DIExpression()), !dbg !2339
  %17 = load ptr, ptr %keytbl.addr, align 8, !dbg !2340
  %18 = load i32, ptr %i, align 4, !dbg !2341
  %idxprom = sext i32 %18 to i64, !dbg !2340
  %arrayidx = getelementptr inbounds %struct.keyinfo, ptr %17, i64 %idxprom, !dbg !2340
  store ptr %arrayidx, ptr %ki, align 8, !dbg !2339
  %keyid16 = getelementptr inbounds %struct.dns_rdata_rrsig, ptr %sig, i32 0, i32 8, !dbg !2342
  %19 = load i16, ptr %keyid16, align 8, !dbg !2342
  %conv17 = zext i16 %19 to i32, !dbg !2344
  %20 = load ptr, ptr %ki, align 8, !dbg !2345
  %tag = getelementptr inbounds %struct.keyinfo, ptr %20, i32 0, i32 3, !dbg !2346
  %21 = load i16, ptr %tag, align 2, !dbg !2346
  %conv18 = zext i16 %21 to i32, !dbg !2345
  %cmp19 = icmp ne i32 %conv17, %conv18, !dbg !2347
  br i1 %cmp19, label %if.then28, label %lor.lhs.false, !dbg !2348

lor.lhs.false:                                    ; preds = %for.body15
  %algorithm = getelementptr inbounds %struct.dns_rdata_rrsig, ptr %sig, i32 0, i32 3, !dbg !2349
  %22 = load i8, ptr %algorithm, align 2, !dbg !2349
  %conv21 = zext i8 %22 to i32, !dbg !2350
  %23 = load ptr, ptr %ki, align 8, !dbg !2351
  %algo22 = getelementptr inbounds %struct.keyinfo, ptr %23, i32 0, i32 2, !dbg !2352
  %24 = load i8, ptr %algo22, align 8, !dbg !2352
  %conv23 = zext i8 %24 to i32, !dbg !2351
  %cmp24 = icmp ne i32 %conv21, %conv23, !dbg !2353
  br i1 %cmp24, label %if.then28, label %lor.lhs.false26, !dbg !2354

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %signer = getelementptr inbounds %struct.dns_rdata_rrsig, ptr %sig, i32 0, i32 9, !dbg !2355
  %25 = load ptr, ptr @name, align 8, !dbg !2356
  %call27 = call zeroext i1 @dns_name_equal(ptr noundef %signer, ptr noundef %25), !dbg !2357
  br i1 %call27, label %if.end29, label %if.then28, !dbg !2358

if.then28:                                        ; preds = %lor.lhs.false26, %lor.lhs.false, %for.body15
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2359

if.end29:                                         ; preds = %lor.lhs.false26
  %26 = load ptr, ptr %ki, align 8, !dbg !2361
  %dst = getelementptr inbounds %struct.keyinfo, ptr %26, i32 0, i32 1, !dbg !2363
  %27 = load ptr, ptr %dst, align 8, !dbg !2363
  %cmp30 = icmp eq ptr %27, null, !dbg !2364
  br i1 %cmp30, label %if.then32, label %if.end35, !dbg !2365

if.then32:                                        ; preds = %if.end29
  %keyid33 = getelementptr inbounds %struct.dns_rdata_rrsig, ptr %sig, i32 0, i32 8, !dbg !2366
  %28 = load i16, ptr %keyid33, align 8, !dbg !2366
  %conv34 = zext i16 %28 to i32, !dbg !2368
  call void (i32, ptr, ...) @vbprintf(i32 noundef 1, ptr noundef @.str.63, i32 noundef %conv34), !dbg !2369
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2370

if.end35:                                         ; preds = %if.end29
  %29 = load ptr, ptr @name, align 8, !dbg !2371
  %30 = load ptr, ptr %rdataset.addr, align 8, !dbg !2372
  %31 = load ptr, ptr %ki, align 8, !dbg !2373
  %dst36 = getelementptr inbounds %struct.keyinfo, ptr %31, i32 0, i32 1, !dbg !2374
  %32 = load ptr, ptr %dst36, align 8, !dbg !2374
  %33 = load ptr, ptr @mctx, align 8, !dbg !2375
  %call37 = call i32 @dns_dnssec_verify(ptr noundef %29, ptr noundef %30, ptr noundef %32, i1 noundef zeroext false, i32 noundef 0, ptr noundef %33, ptr noundef %sigrdata, ptr noundef null), !dbg !2376
  store i32 %call37, ptr %result, align 4, !dbg !2377
  %34 = load i32, ptr %result, align 4, !dbg !2378
  %cmp38 = icmp ne i32 %34, 0, !dbg !2380
  br i1 %cmp38, label %land.lhs.true, label %if.end46, !dbg !2381

land.lhs.true:                                    ; preds = %if.end35
  %35 = load i32, ptr %result, align 4, !dbg !2382
  %cmp40 = icmp ne i32 %35, 65631, !dbg !2383
  br i1 %cmp40, label %if.then42, label %if.end46, !dbg !2384

if.then42:                                        ; preds = %land.lhs.true
  %keyid43 = getelementptr inbounds %struct.dns_rdata_rrsig, ptr %sig, i32 0, i32 8, !dbg !2385
  %36 = load i16, ptr %keyid43, align 8, !dbg !2385
  %conv44 = zext i16 %36 to i32, !dbg !2387
  %37 = load i32, ptr %result, align 4, !dbg !2388
  %call45 = call ptr @isc_result_totext(i32 noundef %37), !dbg !2389
  call void (i32, ptr, ...) @vbprintf(i32 noundef 1, ptr noundef @.str.64, i32 noundef %conv44, ptr noundef %call45), !dbg !2390
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2391

if.end46:                                         ; preds = %land.lhs.true, %if.end35
  %38 = load ptr, ptr %ki, align 8, !dbg !2392
  %tag47 = getelementptr inbounds %struct.keyinfo, ptr %38, i32 0, i32 3, !dbg !2393
  %39 = load i16, ptr %tag47, align 2, !dbg !2393
  %conv48 = zext i16 %39 to i32, !dbg !2392
  call void (i32, ptr, ...) @vbprintf(i32 noundef 1, ptr noundef @.str.65, i32 noundef %conv48), !dbg !2394
  %algorithm49 = getelementptr inbounds %struct.dns_rdata_rrsig, ptr %sig, i32 0, i32 3, !dbg !2395
  %40 = load i8, ptr %algorithm49, align 2, !dbg !2395
  %41 = load ptr, ptr %algo, align 8, !dbg !2396
  %42 = load i32, ptr %i, align 4, !dbg !2397
  %idxprom50 = sext i32 %42 to i64, !dbg !2396
  %arrayidx51 = getelementptr inbounds i8, ptr %41, i64 %idxprom50, !dbg !2396
  store i8 %40, ptr %arrayidx51, align 1, !dbg !2398
  %43 = load i32, ptr getelementptr inbounds (%struct.dns_rdata_rrsig, ptr @oldestsig, i32 0, i32 7), align 4, !dbg !2399
  %cmp52 = icmp eq i32 %43, 0, !dbg !2401
  br i1 %cmp52, label %if.then58, label %lor.lhs.false54, !dbg !2402

lor.lhs.false54:                                  ; preds = %if.end46
  %timesigned55 = getelementptr inbounds %struct.dns_rdata_rrsig, ptr %sig, i32 0, i32 7, !dbg !2403
  %44 = load i32, ptr %timesigned55, align 4, !dbg !2403
  %45 = load i32, ptr getelementptr inbounds (%struct.dns_rdata_rrsig, ptr @oldestsig, i32 0, i32 7), align 4, !dbg !2404
  %call56 = call zeroext i1 @isc_serial_lt(i32 noundef %44, i32 noundef %45), !dbg !2405
  br i1 %call56, label %if.then58, label %if.end60, !dbg !2406

if.then58:                                        ; preds = %lor.lhs.false54, %if.end46
  %timesigned59 = getelementptr inbounds %struct.dns_rdata_rrsig, ptr %sig, i32 0, i32 7, !dbg !2407
  %46 = load i32, ptr %timesigned59, align 4, !dbg !2407
  call void @verbose_time(i32 noundef 2, ptr noundef @.str.66, i32 noundef %46), !dbg !2409
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @oldestsig, ptr align 8 %sig, i64 152, i1 false), !dbg !2410
  br label %if.end60, !dbg !2411

if.end60:                                         ; preds = %if.then58, %lor.lhs.false54
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2412
  br label %cleanup, !dbg !2412

cleanup:                                          ; preds = %if.end60, %if.then42, %if.then32, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ki) #14, !dbg !2412
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2413

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %47 = load i32, ptr %i, align 4, !dbg !2414
  %inc = add nsw i32 %47, 1, !dbg !2414
  store i32 %inc, ptr %i, align 4, !dbg !2414
  br label %for.cond12, !dbg !2415, !llvm.loop !2416

for.end:                                          ; preds = %for.cond12
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2418
  br label %cleanup61, !dbg !2418

cleanup61:                                        ; preds = %for.end, %if.then9
  call void @llvm.lifetime.end.p0(i64 152, ptr %sig) #14, !dbg !2418
  call void @llvm.lifetime.end.p0(i64 40, ptr %sigrdata) #14, !dbg !2418
  %cleanup.dest63 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest63, label %unreachable [
    i32 0, label %cleanup.cont64
    i32 4, label %for.inc65
  ]

cleanup.cont64:                                   ; preds = %cleanup61
  br label %for.inc65, !dbg !2419

for.inc65:                                        ; preds = %cleanup.cont64, %cleanup61
  %48 = load ptr, ptr %sigset.addr, align 8, !dbg !2420
  %call66 = call i32 @dns_rdataset_next(ptr noundef %48), !dbg !2421
  store i32 %call66, ptr %result, align 4, !dbg !2422
  br label %for.cond, !dbg !2423, !llvm.loop !2424

for.end67:                                        ; preds = %for.cond
  %49 = load ptr, ptr %algo, align 8, !dbg !2426
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2427
  call void @llvm.lifetime.end.p0(i64 8, ptr %algo) #14, !dbg !2427
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !2427
  ret ptr %49, !dbg !2428

unreachable:                                      ; preds = %cleanup61, %cleanup
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @free_keytable(ptr noundef %keytable_p) #0 !dbg !2429 {
entry:
  %keytable_p.addr = alloca ptr, align 8
  %keytable = alloca ptr, align 8
  %ki = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %keytable_p, ptr %keytable_p.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %keytable_p.addr, metadata !2434, metadata !DIExpression()), !dbg !2438
  call void @llvm.lifetime.start.p0(i64 8, ptr %keytable) #14, !dbg !2439
  tail call void @llvm.dbg.declare(metadata ptr %keytable, metadata !2435, metadata !DIExpression()), !dbg !2440
  %0 = load ptr, ptr %keytable_p.addr, align 8, !dbg !2441
  %1 = load ptr, ptr %0, align 8, !dbg !2442
  store ptr %1, ptr %keytable, align 8, !dbg !2440
  call void @llvm.lifetime.start.p0(i64 8, ptr %ki) #14, !dbg !2443
  tail call void @llvm.dbg.declare(metadata ptr %ki, metadata !2436, metadata !DIExpression()), !dbg !2444
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2445
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2437, metadata !DIExpression()), !dbg !2446
  store i32 0, ptr %i, align 4, !dbg !2447
  br label %for.cond, !dbg !2449

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !2450
  %3 = load i32, ptr @nkey, align 4, !dbg !2452
  %cmp = icmp slt i32 %2, %3, !dbg !2453
  br i1 %cmp, label %for.body, label %for.end, !dbg !2454

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %keytable, align 8, !dbg !2455
  %5 = load i32, ptr %i, align 4, !dbg !2457
  %idxprom = sext i32 %5 to i64, !dbg !2455
  %arrayidx = getelementptr inbounds %struct.keyinfo, ptr %4, i64 %idxprom, !dbg !2455
  store ptr %arrayidx, ptr %ki, align 8, !dbg !2458
  %6 = load ptr, ptr %ki, align 8, !dbg !2459
  %dst = getelementptr inbounds %struct.keyinfo, ptr %6, i32 0, i32 1, !dbg !2461
  %7 = load ptr, ptr %dst, align 8, !dbg !2461
  %cmp1 = icmp ne ptr %7, null, !dbg !2462
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2463

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %ki, align 8, !dbg !2464
  %dst2 = getelementptr inbounds %struct.keyinfo, ptr %8, i32 0, i32 1, !dbg !2466
  call void @dst_key_free(ptr noundef %dst2), !dbg !2467
  br label %if.end, !dbg !2468

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2469

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !dbg !2470
  %inc = add nsw i32 %9, 1, !dbg !2470
  store i32 %inc, ptr %i, align 4, !dbg !2470
  br label %for.cond, !dbg !2471, !llvm.loop !2472

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !2474

do.body:                                          ; preds = %for.end
  %10 = load ptr, ptr @mctx, align 8, !dbg !2475
  %11 = load ptr, ptr %keytable, align 8, !dbg !2475
  %12 = load i32, ptr @nkey, align 4, !dbg !2475
  %conv = sext i32 %12 to i64, !dbg !2475
  %mul = mul i64 56, %conv, !dbg !2475
  call void @isc__mem_put(ptr noundef %10, ptr noundef %11, i64 noundef %mul, ptr noundef @.str.35, i32 noundef 604), !dbg !2475
  store ptr null, ptr %keytable, align 8, !dbg !2475
  br label %do.cond, !dbg !2475

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2475

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %keytable_p.addr, align 8, !dbg !2477
  store ptr null, ptr %13, align 8, !dbg !2478
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2479
  call void @llvm.lifetime.end.p0(i64 8, ptr %ki) #14, !dbg !2479
  call void @llvm.lifetime.end.p0(i64 8, ptr %keytable) #14, !dbg !2479
  ret void, !dbg !2479
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2480 void @dns_rdatatype_format(i16 noundef zeroext, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @verbose_time(i32 noundef %level, ptr noundef %msg, i32 noundef %time) #0 !dbg !2484 {
entry:
  %level.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  %time.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %timebuf = alloca %struct.isc_buffer, align 8
  %timestr = alloca [32 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %_cp = alloca ptr, align 8
  %_val2 = alloca i8, align 1
  %_tmp = alloca ptr, align 8
  store i32 %level, ptr %level.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !2488, metadata !DIExpression()), !dbg !2500
  store ptr %msg, ptr %msg.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !2489, metadata !DIExpression()), !dbg !2501
  store i32 %time, ptr %time.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !2490, metadata !DIExpression()), !dbg !2502
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !2503
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2491, metadata !DIExpression()), !dbg !2504
  call void @llvm.lifetime.start.p0(i64 64, ptr %timebuf) #14, !dbg !2505
  tail call void @llvm.dbg.declare(metadata ptr %timebuf, metadata !2492, metadata !DIExpression()), !dbg !2506
  call void @llvm.lifetime.start.p0(i64 32, ptr %timestr) #14, !dbg !2507
  tail call void @llvm.dbg.declare(metadata ptr %timestr, metadata !2493, metadata !DIExpression()), !dbg !2508
  %0 = load i32, ptr @verbose, align 4, !dbg !2509
  %1 = load i32, ptr %level.addr, align 4, !dbg !2511
  %cmp = icmp slt i32 %0, %1, !dbg !2512
  br i1 %cmp, label %if.then, label %if.end, !dbg !2513

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2514

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2516

do.body:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [32 x i8], ptr %timestr, i64 0, i64 0, !dbg !2517
  %base = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 1, !dbg !2517
  store ptr %arraydecay, ptr %base, align 8, !dbg !2517
  %length = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 2, !dbg !2517
  store i32 32, ptr %length, align 8, !dbg !2517
  %used = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 3, !dbg !2517
  store i32 0, ptr %used, align 4, !dbg !2517
  %current = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 4, !dbg !2517
  store i32 0, ptr %current, align 8, !dbg !2517
  %active = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 5, !dbg !2517
  store i32 0, ptr %active, align 4, !dbg !2517
  %mctx = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 7, !dbg !2517
  store ptr null, ptr %mctx, align 8, !dbg !2517
  br label %do.body1, !dbg !2517

do.body1:                                         ; preds = %do.body
  %link = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 6, !dbg !2519
  %prev = getelementptr inbounds %struct.anon.8, ptr %link, i32 0, i32 0, !dbg !2519
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !2519
  %link2 = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 6, !dbg !2519
  %next = getelementptr inbounds %struct.anon.8, ptr %link2, i32 0, i32 1, !dbg !2519
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !2519
  br label %do.cond, !dbg !2519

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2519

do.end:                                           ; preds = %do.cond
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 0, !dbg !2517
  store i32 1114990113, ptr %magic, align 8, !dbg !2517
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 8, !dbg !2517
  store i8 0, ptr %autore, align 8, !dbg !2517
  br label %do.cond3, !dbg !2517

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2517

do.end4:                                          ; preds = %do.cond3
  %2 = load i32, ptr %time.addr, align 4, !dbg !2521
  %conv = zext i32 %2 to i64, !dbg !2521
  %call = call i32 @dns_time64_totext(i64 noundef %conv, ptr noundef %timebuf), !dbg !2522
  store i32 %call, ptr %result, align 4, !dbg !2523
  %3 = load i32, ptr %result, align 4, !dbg !2524
  call void @check_result(i32 noundef %3, ptr noundef @.str.67), !dbg !2525
  br label %do.body5, !dbg !2526

do.body5:                                         ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp) #14, !dbg !2527
  tail call void @llvm.dbg.declare(metadata ptr %_cp, metadata !2494, metadata !DIExpression()), !dbg !2527
  call void @llvm.lifetime.start.p0(i64 1, ptr %_val2) #14, !dbg !2527
  tail call void @llvm.dbg.declare(metadata ptr %_val2, metadata !2496, metadata !DIExpression()), !dbg !2527
  store i8 0, ptr %_val2, align 1, !dbg !2527
  %autore6 = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 8, !dbg !2528
  %4 = load i8, ptr %autore6, align 8, !dbg !2528, !range !1278, !noundef !1279
  %tobool = trunc i8 %4 to i1, !dbg !2528
  %lnot = xor i1 %tobool, true, !dbg !2528
  %lnot7 = xor i1 %lnot, true, !dbg !2528
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !2528
  %conv8 = sext i32 %lnot.ext to i64, !dbg !2528
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !2528
  %tobool9 = icmp ne i64 %expval, 0, !dbg !2528
  br i1 %tobool9, label %if.then10, label %if.end21, !dbg !2527

if.then10:                                        ; preds = %do.body5
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp) #14, !dbg !2529
  tail call void @llvm.dbg.declare(metadata ptr %_tmp, metadata !2497, metadata !DIExpression()), !dbg !2529
  store ptr %timebuf, ptr %_tmp, align 8, !dbg !2529
  %call11 = call i32 @isc_buffer_reserve(ptr noundef %_tmp, i32 noundef 1), !dbg !2529
  %cmp12 = icmp eq i32 %call11, 0, !dbg !2529
  %lnot14 = xor i1 %cmp12, true, !dbg !2529
  %lnot16 = xor i1 %lnot14, true, !dbg !2529
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !2529
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !2529
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 1), !dbg !2529
  %tobool20 = icmp ne i64 %expval19, 0, !dbg !2529
  br i1 %tobool20, label %lor.end, label %lor.rhs, !dbg !2529

lor.rhs:                                          ; preds = %if.then10
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 162, i32 noundef 0, ptr noundef @.str.41) #15, !dbg !2529
  unreachable, !dbg !2529

5:                                                ; No predecessors!
  br label %lor.end, !dbg !2529

lor.end:                                          ; preds = %5, %if.then10
  %6 = phi i1 [ true, %if.then10 ], [ false, %5 ]
  %lor.ext = zext i1 %6 to i32, !dbg !2529
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp) #14, !dbg !2528
  br label %if.end21, !dbg !2529

if.end21:                                         ; preds = %lor.end, %do.body5
  %length22 = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 2, !dbg !2527
  %7 = load i32, ptr %length22, align 8, !dbg !2527
  %used23 = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 3, !dbg !2527
  %8 = load i32, ptr %used23, align 4, !dbg !2527
  %sub = sub i32 %7, %8, !dbg !2527
  %cmp24 = icmp uge i32 %sub, 1, !dbg !2527
  %lnot26 = xor i1 %cmp24, true, !dbg !2527
  %lnot28 = xor i1 %lnot26, true, !dbg !2527
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !2527
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !2527
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 1), !dbg !2527
  %tobool32 = icmp ne i64 %expval31, 0, !dbg !2527
  br i1 %tobool32, label %lor.end34, label %lor.rhs33, !dbg !2527

lor.rhs33:                                        ; preds = %if.end21
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 162, i32 noundef 0, ptr noundef @.str.68) #15, !dbg !2527
  unreachable, !dbg !2527

9:                                                ; No predecessors!
  br label %lor.end34, !dbg !2527

lor.end34:                                        ; preds = %9, %if.end21
  %10 = phi i1 [ true, %if.end21 ], [ false, %9 ]
  %lor.ext35 = zext i1 %10 to i32, !dbg !2527
  %base36 = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 1, !dbg !2527
  %11 = load ptr, ptr %base36, align 8, !dbg !2527
  %used37 = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 3, !dbg !2527
  %12 = load i32, ptr %used37, align 4, !dbg !2527
  %idx.ext = zext i32 %12 to i64, !dbg !2527
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext, !dbg !2527
  store ptr %add.ptr, ptr %_cp, align 8, !dbg !2527
  %used38 = getelementptr inbounds %struct.isc_buffer, ptr %timebuf, i32 0, i32 3, !dbg !2527
  %13 = load i32, ptr %used38, align 4, !dbg !2527
  %inc = add i32 %13, 1, !dbg !2527
  store i32 %inc, ptr %used38, align 4, !dbg !2527
  %14 = load i8, ptr %_val2, align 1, !dbg !2527
  %15 = load ptr, ptr %_cp, align 8, !dbg !2527
  %arrayidx = getelementptr inbounds i8, ptr %15, i64 0, !dbg !2527
  store i8 %14, ptr %arrayidx, align 1, !dbg !2527
  call void @llvm.lifetime.end.p0(i64 1, ptr %_val2) #14, !dbg !2526
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp) #14, !dbg !2526
  br label %do.cond39, !dbg !2527

do.cond39:                                        ; preds = %lor.end34
  br label %do.end40, !dbg !2527

do.end40:                                         ; preds = %do.cond39
  %16 = load i32, ptr @verbose, align 4, !dbg !2530
  %cmp41 = icmp slt i32 %16, 3, !dbg !2532
  br i1 %cmp41, label %if.then43, label %if.else, !dbg !2533

if.then43:                                        ; preds = %do.end40
  %17 = load i32, ptr %level.addr, align 4, !dbg !2534
  %18 = load ptr, ptr %msg.addr, align 8, !dbg !2536
  %arraydecay44 = getelementptr inbounds [32 x i8], ptr %timestr, i64 0, i64 0, !dbg !2537
  call void (i32, ptr, ...) @vbprintf(i32 noundef %17, ptr noundef @.str.69, ptr noundef %18, ptr noundef %arraydecay44), !dbg !2538
  br label %if.end46, !dbg !2539

if.else:                                          ; preds = %do.end40
  %19 = load i32, ptr %level.addr, align 4, !dbg !2540
  %20 = load ptr, ptr %msg.addr, align 8, !dbg !2542
  %arraydecay45 = getelementptr inbounds [32 x i8], ptr %timestr, i64 0, i64 0, !dbg !2543
  %21 = load i32, ptr %time.addr, align 4, !dbg !2544
  call void (i32, ptr, ...) @vbprintf(i32 noundef %19, ptr noundef @.str.70, ptr noundef %20, ptr noundef %arraydecay45, i32 noundef %21), !dbg !2545
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then43
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2546
  br label %cleanup, !dbg !2546

cleanup:                                          ; preds = %if.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %timestr) #14, !dbg !2546
  call void @llvm.lifetime.end.p0(i64 64, ptr %timebuf) #14, !dbg !2546
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !2546
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2546

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @write_parent_set(ptr noundef %path, ptr noundef %inplace, i1 noundef zeroext %nsupdate, ptr noundef %rdataset) #0 !dbg !2547 {
entry:
  %path.addr = alloca ptr, align 8
  %inplace.addr = alloca ptr, align 8
  %nsupdate.addr = alloca i8, align 1
  %rdataset.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %buf = alloca ptr, align 8
  %r = alloca %struct.isc_region, align 8
  %filetime = alloca %struct.isc_time, align 4
  %backname = alloca [4097 x i8], align 16
  %filename = alloca [4097 x i8], align 16
  %tmpname = alloca [4097 x i8], align 16
  %fp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !2551, metadata !DIExpression()), !dbg !2566
  store ptr %inplace, ptr %inplace.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %inplace.addr, metadata !2552, metadata !DIExpression()), !dbg !2567
  %frombool = zext i1 %nsupdate to i8
  store i8 %frombool, ptr %nsupdate.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %nsupdate.addr, metadata !2553, metadata !DIExpression()), !dbg !2568
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2554, metadata !DIExpression()), !dbg !2569
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !2570
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2555, metadata !DIExpression()), !dbg !2571
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #14, !dbg !2572
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !2556, metadata !DIExpression()), !dbg !2573
  store ptr null, ptr %buf, align 8, !dbg !2573
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #14, !dbg !2574
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !2557, metadata !DIExpression()), !dbg !2575
  call void @llvm.lifetime.start.p0(i64 8, ptr %filetime) #14, !dbg !2576
  tail call void @llvm.dbg.declare(metadata ptr %filetime, metadata !2558, metadata !DIExpression()), !dbg !2577
  call void @llvm.lifetime.start.p0(i64 4097, ptr %backname) #14, !dbg !2578
  tail call void @llvm.dbg.declare(metadata ptr %backname, metadata !2559, metadata !DIExpression()), !dbg !2579
  call void @llvm.lifetime.start.p0(i64 4097, ptr %filename) #14, !dbg !2580
  tail call void @llvm.dbg.declare(metadata ptr %filename, metadata !2560, metadata !DIExpression()), !dbg !2581
  call void @llvm.lifetime.start.p0(i64 4097, ptr %tmpname) #14, !dbg !2582
  tail call void @llvm.dbg.declare(metadata ptr %tmpname, metadata !2561, metadata !DIExpression()), !dbg !2583
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #14, !dbg !2584
  tail call void @llvm.dbg.declare(metadata ptr %fp, metadata !2562, metadata !DIExpression()), !dbg !2585
  store ptr null, ptr %fp, align 8, !dbg !2585
  %0 = load i8, ptr %nsupdate.addr, align 1, !dbg !2586, !range !1278, !noundef !1279
  %tobool = trunc i8 %0 to i1, !dbg !2586
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2588

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %inplace.addr, align 8, !dbg !2589
  %cmp = icmp eq ptr %1, null, !dbg !2590
  br i1 %cmp, label %if.then, label %if.end, !dbg !2591

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2592

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr %rdataset.addr, align 8, !dbg !2594
  %call = call ptr @formatset(ptr noundef %2), !dbg !2595
  store ptr %call, ptr %buf, align 8, !dbg !2596
  br label %do.body, !dbg !2597

do.body:                                          ; preds = %if.end
  %3 = load ptr, ptr %buf, align 8, !dbg !2598
  %base = getelementptr inbounds %struct.isc_buffer, ptr %3, i32 0, i32 1, !dbg !2598
  %4 = load ptr, ptr %base, align 8, !dbg !2598
  %base1 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !2598
  store ptr %4, ptr %base1, align 8, !dbg !2598
  %5 = load ptr, ptr %buf, align 8, !dbg !2598
  %used = getelementptr inbounds %struct.isc_buffer, ptr %5, i32 0, i32 3, !dbg !2598
  %6 = load i32, ptr %used, align 4, !dbg !2598
  %length = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !2598
  store i32 %6, ptr %length, align 8, !dbg !2598
  br label %do.cond, !dbg !2598

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2598

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %inplace.addr, align 8, !dbg !2600
  %cmp2 = icmp eq ptr %7, null, !dbg !2602
  br i1 %cmp2, label %if.then3, label %if.end12, !dbg !2603

if.then3:                                         ; preds = %do.end
  %base4 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !2604
  %8 = load ptr, ptr %base4, align 8, !dbg !2604
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.71, ptr noundef %8), !dbg !2606
  call void @isc_buffer_free(ptr noundef %buf), !dbg !2607
  %9 = load ptr, ptr @stdout, align 8, !dbg !2608
  %call6 = call i32 @fflush(ptr noundef %9), !dbg !2610
  %cmp7 = icmp eq i32 %call6, -1, !dbg !2611
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !2612

if.then8:                                         ; preds = %if.then3
  %call9 = call ptr @__errno_location() #18, !dbg !2613
  %10 = load i32, ptr %call9, align 4, !dbg !2613
  %call10 = call ptr @strerror(i32 noundef %10) #14, !dbg !2615
  call void (ptr, ...) @fatal(ptr noundef @.str.72, ptr noundef %call10) #15, !dbg !2616
  unreachable, !dbg !2616

if.end11:                                         ; preds = %if.then3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2617

if.end12:                                         ; preds = %do.end
  %11 = load ptr, ptr %inplace.addr, align 8, !dbg !2618
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 0, !dbg !2618
  %12 = load i8, ptr %arrayidx, align 1, !dbg !2618
  %conv = sext i8 %12 to i32, !dbg !2618
  %cmp13 = icmp ne i32 %conv, 0, !dbg !2620
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !2621

if.then15:                                        ; preds = %if.end12
  %arraydecay = getelementptr inbounds [4097 x i8], ptr %backname, i64 0, i64 0, !dbg !2622
  %13 = load ptr, ptr %path.addr, align 8, !dbg !2624
  %14 = load ptr, ptr %inplace.addr, align 8, !dbg !2625
  call void @get_dsset_name(ptr noundef %arraydecay, i64 noundef 4097, ptr noundef %13, ptr noundef %14), !dbg !2626
  br label %if.end16, !dbg !2627

if.end16:                                         ; preds = %if.then15, %if.end12
  %arraydecay17 = getelementptr inbounds [4097 x i8], ptr %filename, i64 0, i64 0, !dbg !2628
  %15 = load ptr, ptr %path.addr, align 8, !dbg !2629
  call void @get_dsset_name(ptr noundef %arraydecay17, i64 noundef 4097, ptr noundef %15, ptr noundef @.str.3), !dbg !2630
  %arraydecay18 = getelementptr inbounds [4097 x i8], ptr %tmpname, i64 0, i64 0, !dbg !2631
  %16 = load ptr, ptr %path.addr, align 8, !dbg !2632
  call void @get_dsset_name(ptr noundef %arraydecay18, i64 noundef 4097, ptr noundef %16, ptr noundef @.str.73), !dbg !2633
  %arraydecay19 = getelementptr inbounds [4097 x i8], ptr %tmpname, i64 0, i64 0, !dbg !2634
  %call20 = call i32 @isc_file_openunique(ptr noundef %arraydecay19, ptr noundef %fp), !dbg !2635
  store i32 %call20, ptr %result, align 4, !dbg !2636
  %17 = load i32, ptr %result, align 4, !dbg !2637
  %cmp21 = icmp ne i32 %17, 0, !dbg !2639
  br i1 %cmp21, label %if.then23, label %if.end26, !dbg !2640

if.then23:                                        ; preds = %if.end16
  %arraydecay24 = getelementptr inbounds [4097 x i8], ptr %tmpname, i64 0, i64 0, !dbg !2641
  %18 = load i32, ptr %result, align 4, !dbg !2643
  %call25 = call ptr @isc_result_totext(i32 noundef %18), !dbg !2644
  call void (ptr, ...) @fatal(ptr noundef @.str.74, ptr noundef %arraydecay24, ptr noundef %call25) #15, !dbg !2645
  unreachable, !dbg !2645

if.end26:                                         ; preds = %if.end16
  %19 = load ptr, ptr %fp, align 8, !dbg !2646
  %base27 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !2647
  %20 = load ptr, ptr %base27, align 8, !dbg !2647
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.71, ptr noundef %20), !dbg !2648
  call void @isc_buffer_free(ptr noundef %buf), !dbg !2649
  %21 = load ptr, ptr %fp, align 8, !dbg !2650
  %call29 = call i32 @fclose(ptr noundef %21), !dbg !2651
  %cmp30 = icmp eq i32 %call29, -1, !dbg !2652
  br i1 %cmp30, label %if.then32, label %if.end38, !dbg !2653

if.then32:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !2654
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !2563, metadata !DIExpression()), !dbg !2655
  %call33 = call ptr @__errno_location() #18, !dbg !2656
  %22 = load i32, ptr %call33, align 4, !dbg !2656
  store i32 %22, ptr %err, align 4, !dbg !2655
  %arraydecay34 = getelementptr inbounds [4097 x i8], ptr %tmpname, i64 0, i64 0, !dbg !2657
  %call35 = call i32 @isc_file_remove(ptr noundef %arraydecay34), !dbg !2658
  %arraydecay36 = getelementptr inbounds [4097 x i8], ptr %tmpname, i64 0, i64 0, !dbg !2659
  %23 = load i32, ptr %err, align 4, !dbg !2660
  %call37 = call ptr @strerror(i32 noundef %23) #14, !dbg !2661
  call void (ptr, ...) @fatal(ptr noundef @.str.75, ptr noundef %arraydecay36, ptr noundef %call37) #15, !dbg !2662
  unreachable, !dbg !2662

if.end38:                                         ; preds = %if.end26
  %24 = load i32, ptr getelementptr inbounds (%struct.dns_rdata_rrsig, ptr @oldestsig, i32 0, i32 7), align 4, !dbg !2663
  call void @isc_time_set(ptr noundef %filetime, i32 noundef %24, i32 noundef 0), !dbg !2664
  %arraydecay39 = getelementptr inbounds [4097 x i8], ptr %tmpname, i64 0, i64 0, !dbg !2665
  %call40 = call i32 @isc_file_settime(ptr noundef %arraydecay39, ptr noundef %filetime), !dbg !2666
  store i32 %call40, ptr %result, align 4, !dbg !2667
  %25 = load i32, ptr %result, align 4, !dbg !2668
  %cmp41 = icmp ne i32 %25, 0, !dbg !2670
  br i1 %cmp41, label %if.then43, label %if.end48, !dbg !2671

if.then43:                                        ; preds = %if.end38
  %arraydecay44 = getelementptr inbounds [4097 x i8], ptr %tmpname, i64 0, i64 0, !dbg !2672
  %call45 = call i32 @isc_file_remove(ptr noundef %arraydecay44), !dbg !2674
  %arraydecay46 = getelementptr inbounds [4097 x i8], ptr %tmpname, i64 0, i64 0, !dbg !2675
  %26 = load i32, ptr %result, align 4, !dbg !2676
  %call47 = call ptr @isc_result_totext(i32 noundef %26), !dbg !2677
  call void (ptr, ...) @fatal(ptr noundef @.str.76, ptr noundef %arraydecay46, ptr noundef %call47) #15, !dbg !2678
  unreachable, !dbg !2678

if.end48:                                         ; preds = %if.end38
  %27 = load ptr, ptr %inplace.addr, align 8, !dbg !2679
  %arrayidx49 = getelementptr inbounds i8, ptr %27, i64 0, !dbg !2679
  %28 = load i8, ptr %arrayidx49, align 1, !dbg !2679
  %conv50 = sext i8 %28 to i32, !dbg !2679
  %cmp51 = icmp ne i32 %conv50, 0, !dbg !2681
  br i1 %cmp51, label %if.then53, label %if.end57, !dbg !2682

if.then53:                                        ; preds = %if.end48
  %arraydecay54 = getelementptr inbounds [4097 x i8], ptr %filename, i64 0, i64 0, !dbg !2683
  %arraydecay55 = getelementptr inbounds [4097 x i8], ptr %backname, i64 0, i64 0, !dbg !2685
  %call56 = call i32 @isc_file_rename(ptr noundef %arraydecay54, ptr noundef %arraydecay55), !dbg !2686
  br label %if.end57, !dbg !2687

if.end57:                                         ; preds = %if.then53, %if.end48
  %arraydecay58 = getelementptr inbounds [4097 x i8], ptr %tmpname, i64 0, i64 0, !dbg !2688
  %arraydecay59 = getelementptr inbounds [4097 x i8], ptr %filename, i64 0, i64 0, !dbg !2689
  %call60 = call i32 @isc_file_rename(ptr noundef %arraydecay58, ptr noundef %arraydecay59), !dbg !2690
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2691
  br label %cleanup, !dbg !2691

cleanup:                                          ; preds = %if.end57, %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #14, !dbg !2691
  call void @llvm.lifetime.end.p0(i64 4097, ptr %tmpname) #14, !dbg !2691
  call void @llvm.lifetime.end.p0(i64 4097, ptr %filename) #14, !dbg !2691
  call void @llvm.lifetime.end.p0(i64 4097, ptr %backname) #14, !dbg !2691
  call void @llvm.lifetime.end.p0(i64 8, ptr %filetime) #14, !dbg !2691
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #14, !dbg !2691
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #14, !dbg !2691
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !2691
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2691

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid
declare !dbg !2692 void @exit(i32 noundef) #6

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @make_new_ds_set(ptr noundef %ds_from_rdata, i32 noundef %ttl, ptr noundef %rdset) #0 !dbg !2695 {
entry:
  %ds_from_rdata.addr = alloca ptr, align 8
  %ttl.addr = alloca i32, align 4
  %rdset.addr = alloca ptr, align 8
  %size = alloca i32, align 4
  %result = alloca i32, align 4
  %dslist = alloca ptr, align 8
  %tresult = alloca i32, align 4
  %rdata = alloca %struct.dns_rdata, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ds_from_rdata, ptr %ds_from_rdata.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ds_from_rdata.addr, metadata !2703, metadata !DIExpression()), !dbg !2717
  store i32 %ttl, ptr %ttl.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %ttl.addr, metadata !2704, metadata !DIExpression()), !dbg !2718
  store ptr %rdset, ptr %rdset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdset.addr, metadata !2705, metadata !DIExpression()), !dbg !2719
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #14, !dbg !2720
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !2706, metadata !DIExpression()), !dbg !2721
  store i32 16, ptr %size, align 4, !dbg !2721
  br label %for.cond, !dbg !2722

for.cond:                                         ; preds = %cleanup.cont20, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !2723
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2707, metadata !DIExpression()), !dbg !2724
  call void @llvm.lifetime.start.p0(i64 8, ptr %dslist) #14, !dbg !2725
  tail call void @llvm.dbg.declare(metadata ptr %dslist, metadata !2711, metadata !DIExpression()), !dbg !2726
  %0 = load ptr, ptr @mctx, align 8, !dbg !2727
  %call = call ptr @isc__mem_get(ptr noundef %0, i64 noundef 80, ptr noundef @.str.35, i32 noundef 878), !dbg !2727
  store ptr %call, ptr %dslist, align 8, !dbg !2728
  %1 = load ptr, ptr %dslist, align 8, !dbg !2729
  %cmp = icmp eq ptr %1, null, !dbg !2731
  br i1 %cmp, label %if.then, label %if.end, !dbg !2732

if.then:                                          ; preds = %for.cond
  %call1 = call ptr @isc_result_totext(i32 noundef 1), !dbg !2733
  call void (ptr, ...) @fatal(ptr noundef @.str.81, ptr noundef %call1) #15, !dbg !2735
  unreachable, !dbg !2735

if.end:                                           ; preds = %for.cond
  %2 = load ptr, ptr %dslist, align 8, !dbg !2736
  call void @dns_rdatalist_init(ptr noundef %2), !dbg !2737
  %3 = load i16, ptr @rdclass, align 2, !dbg !2738
  %4 = load ptr, ptr %dslist, align 8, !dbg !2739
  %rdclass = getelementptr inbounds %struct.dns_rdatalist, ptr %4, i32 0, i32 0, !dbg !2740
  store i16 %3, ptr %rdclass, align 8, !dbg !2741
  %5 = load ptr, ptr %dslist, align 8, !dbg !2742
  %type = getelementptr inbounds %struct.dns_rdatalist, ptr %5, i32 0, i32 1, !dbg !2743
  store i16 43, ptr %type, align 2, !dbg !2744
  %6 = load i32, ptr %ttl.addr, align 4, !dbg !2745
  %7 = load ptr, ptr %dslist, align 8, !dbg !2746
  %ttl2 = getelementptr inbounds %struct.dns_rdatalist, ptr %7, i32 0, i32 3, !dbg !2747
  store i32 %6, ptr %ttl2, align 8, !dbg !2748
  call void @dns_rdataset_init(ptr noundef @new_ds_set), !dbg !2749
  %8 = load ptr, ptr %dslist, align 8, !dbg !2750
  %call3 = call i32 @dns_rdatalist_tordataset(ptr noundef %8, ptr noundef @new_ds_set), !dbg !2751
  store i32 %call3, ptr %result, align 4, !dbg !2752
  %9 = load i32, ptr %result, align 4, !dbg !2753
  call void @check_result(i32 noundef %9, ptr noundef @.str.82), !dbg !2754
  %10 = load ptr, ptr @mctx, align 8, !dbg !2755
  %11 = load i32, ptr %size, align 4, !dbg !2756
  %call4 = call i32 @isc_buffer_allocate(ptr noundef %10, ptr noundef @new_ds_buf, i32 noundef %11), !dbg !2757
  store i32 %call4, ptr %result, align 4, !dbg !2758
  %12 = load i32, ptr %result, align 4, !dbg !2759
  call void @check_result(i32 noundef %12, ptr noundef @.str.83), !dbg !2760
  %13 = load ptr, ptr %rdset.addr, align 8, !dbg !2761
  %call5 = call i32 @dns_rdataset_first(ptr noundef %13), !dbg !2762
  store i32 %call5, ptr %result, align 4, !dbg !2763
  br label %for.cond6, !dbg !2764

for.cond6:                                        ; preds = %for.inc, %if.end
  %14 = load i32, ptr %result, align 4, !dbg !2765
  %cmp7 = icmp eq i32 %14, 0, !dbg !2766
  br i1 %cmp7, label %for.body, label %for.end, !dbg !2767

for.body:                                         ; preds = %for.cond6
  call void @llvm.lifetime.start.p0(i64 4, ptr %tresult) #14, !dbg !2768
  tail call void @llvm.dbg.declare(metadata ptr %tresult, metadata !2712, metadata !DIExpression()), !dbg !2769
  call void @llvm.lifetime.start.p0(i64 40, ptr %rdata) #14, !dbg !2770
  tail call void @llvm.dbg.declare(metadata ptr %rdata, metadata !2716, metadata !DIExpression()), !dbg !2771
  call void @llvm.memset.p0.i64(ptr align 8 %rdata, i8 0, i64 40, i1 false), !dbg !2771
  %15 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 5, !dbg !2771
  %16 = getelementptr inbounds %struct.anon.9, ptr %15, i32 0, i32 0, !dbg !2771
  store ptr inttoptr (i64 -1 to ptr), ptr %16, align 8, !dbg !2771
  %17 = getelementptr inbounds %struct.anon.9, ptr %15, i32 0, i32 1, !dbg !2771
  store ptr inttoptr (i64 -1 to ptr), ptr %17, align 8, !dbg !2771
  %18 = load ptr, ptr %rdset.addr, align 8, !dbg !2772
  call void @dns_rdataset_current(ptr noundef %18, ptr noundef %rdata), !dbg !2773
  %19 = load ptr, ptr %ds_from_rdata.addr, align 8, !dbg !2774
  %20 = load ptr, ptr %dslist, align 8, !dbg !2775
  %21 = load ptr, ptr @new_ds_buf, align 8, !dbg !2776
  %call8 = call i32 %19(ptr noundef %20, ptr noundef %21, ptr noundef %rdata), !dbg !2774
  store i32 %call8, ptr %tresult, align 4, !dbg !2777
  %22 = load i32, ptr %tresult, align 4, !dbg !2778
  %cmp9 = icmp eq i32 %22, 19, !dbg !2780
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2781

if.then10:                                        ; preds = %for.body
  %23 = load i32, ptr %size, align 4, !dbg !2782
  call void (i32, ptr, ...) @vbprintf(i32 noundef 20, ptr noundef @.str.84, i32 noundef %23), !dbg !2784
  call void @freelist(ptr noundef @new_ds_set), !dbg !2785
  call void @isc_buffer_free(ptr noundef @new_ds_buf), !dbg !2786
  %24 = load i32, ptr %size, align 4, !dbg !2787
  %mul = mul i32 %24, 2, !dbg !2787
  store i32 %mul, ptr %size, align 4, !dbg !2787
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2788

if.end11:                                         ; preds = %for.body
  %25 = load i32, ptr %tresult, align 4, !dbg !2789
  call void @check_result(i32 noundef %25, ptr noundef @.str.85), !dbg !2790
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2791
  br label %cleanup, !dbg !2791

cleanup:                                          ; preds = %if.end11, %if.then10
  call void @llvm.lifetime.end.p0(i64 40, ptr %rdata) #14, !dbg !2791
  call void @llvm.lifetime.end.p0(i64 4, ptr %tresult) #14, !dbg !2791
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2792

for.inc:                                          ; preds = %cleanup.cont
  %26 = load ptr, ptr %rdset.addr, align 8, !dbg !2793
  %call13 = call i32 @dns_rdataset_next(ptr noundef %26), !dbg !2794
  store i32 %call13, ptr %result, align 4, !dbg !2795
  br label %for.cond6, !dbg !2796, !llvm.loop !2797

for.end:                                          ; preds = %cleanup, %for.cond6
  %27 = load i32, ptr %result, align 4, !dbg !2799
  %cmp14 = icmp eq i32 %27, 29, !dbg !2801
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2802

if.then15:                                        ; preds = %for.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17, !dbg !2803

if.end16:                                         ; preds = %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2805
  br label %cleanup17, !dbg !2805

cleanup17:                                        ; preds = %if.end16, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %dslist) #14, !dbg !2805
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !2805
  %cleanup.dest19 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest19, label %unreachable [
    i32 0, label %cleanup.cont20
    i32 2, label %for.end21
  ]

cleanup.cont20:                                   ; preds = %cleanup17
  br label %for.cond, !dbg !2806, !llvm.loop !2807

for.end21:                                        ; preds = %cleanup17
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #14, !dbg !2810
  ret void, !dbg !2810

unreachable:                                      ; preds = %cleanup17, %cleanup
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @ds_from_cdnskey(ptr noundef %dslist, ptr noundef %buf, ptr noundef %cdnskey) #0 !dbg !2811 {
entry:
  %retval = alloca i32, align 4
  %dslist.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cdnskey.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %rdata = alloca ptr, align 8
  %r = alloca %struct.isc_region, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dslist, ptr %dslist.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dslist.addr, metadata !2813, metadata !DIExpression()), !dbg !2826
  store ptr %buf, ptr %buf.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2814, metadata !DIExpression()), !dbg !2827
  store ptr %cdnskey, ptr %cdnskey.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cdnskey.addr, metadata !2815, metadata !DIExpression()), !dbg !2828
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !2829
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2816, metadata !DIExpression()), !dbg !2830
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2831
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2817, metadata !DIExpression()), !dbg !2832
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #14, !dbg !2831
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !2818, metadata !DIExpression()), !dbg !2833
  store i32 8, ptr %n, align 4, !dbg !2834
  store i32 0, ptr %i, align 4, !dbg !2835
  br label %for.cond, !dbg !2836

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2837
  %1 = load i32, ptr %n, align 4, !dbg !2838
  %cmp = icmp ult i32 %0, %1, !dbg !2839
  br i1 %cmp, label %for.body, label %for.end, !dbg !2840

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !2841
  %idxprom = zext i32 %2 to i64, !dbg !2842
  %arrayidx = getelementptr inbounds [8 x i8], ptr @dtype, i64 0, i64 %idxprom, !dbg !2842
  %3 = load i8, ptr %arrayidx, align 1, !dbg !2842
  %conv = zext i8 %3 to i32, !dbg !2842
  %cmp1 = icmp ne i32 %conv, 0, !dbg !2843
  br i1 %cmp1, label %if.then, label %if.end28, !dbg !2844

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdata) #14, !dbg !2845
  tail call void @llvm.dbg.declare(metadata ptr %rdata, metadata !2819, metadata !DIExpression()), !dbg !2846
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #14, !dbg !2847
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !2825, metadata !DIExpression()), !dbg !2848
  br label %do.body, !dbg !2849

do.body:                                          ; preds = %if.then
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !2850
  %base = getelementptr inbounds %struct.isc_buffer, ptr %4, i32 0, i32 1, !dbg !2850
  %5 = load ptr, ptr %base, align 8, !dbg !2850
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !2850
  %used = getelementptr inbounds %struct.isc_buffer, ptr %6, i32 0, i32 3, !dbg !2850
  %7 = load i32, ptr %used, align 4, !dbg !2850
  %idx.ext = zext i32 %7 to i64, !dbg !2850
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.ext, !dbg !2850
  %base3 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !2850
  store ptr %add.ptr, ptr %base3, align 8, !dbg !2850
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !2850
  %length = getelementptr inbounds %struct.isc_buffer, ptr %8, i32 0, i32 2, !dbg !2850
  %9 = load i32, ptr %length, align 8, !dbg !2850
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !2850
  %used4 = getelementptr inbounds %struct.isc_buffer, ptr %10, i32 0, i32 3, !dbg !2850
  %11 = load i32, ptr %used4, align 4, !dbg !2850
  %sub = sub i32 %9, %11, !dbg !2850
  %length5 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !2850
  store i32 %sub, ptr %length5, align 8, !dbg !2850
  br label %do.cond, !dbg !2850

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2850

do.end:                                           ; preds = %do.cond
  %length6 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !2852
  %12 = load i32, ptr %length6, align 8, !dbg !2852
  %cmp7 = icmp ult i32 %12, 52, !dbg !2854
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !2855

if.then9:                                         ; preds = %do.end
  store i32 19, ptr %retval, align 4, !dbg !2856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2856

if.end:                                           ; preds = %do.end
  %call = call ptr @rdata_get(), !dbg !2858
  store ptr %call, ptr %rdata, align 8, !dbg !2859
  %13 = load ptr, ptr @name, align 8, !dbg !2860
  %14 = load ptr, ptr %cdnskey.addr, align 8, !dbg !2861
  %15 = load i32, ptr %i, align 4, !dbg !2862
  %idxprom10 = zext i32 %15 to i64, !dbg !2863
  %arrayidx11 = getelementptr inbounds [8 x i8], ptr @dtype, i64 0, i64 %idxprom10, !dbg !2863
  %16 = load i8, ptr %arrayidx11, align 1, !dbg !2863
  %base12 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !2864
  %17 = load ptr, ptr %base12, align 8, !dbg !2864
  %18 = load ptr, ptr %rdata, align 8, !dbg !2865
  %call13 = call i32 @dns_ds_buildrdata(ptr noundef %13, ptr noundef %14, i8 noundef zeroext %16, ptr noundef %17, ptr noundef %18), !dbg !2866
  store i32 %call13, ptr %result, align 4, !dbg !2867
  %19 = load i32, ptr %result, align 4, !dbg !2868
  %cmp14 = icmp eq i32 %19, 0, !dbg !2870
  br i1 %cmp14, label %if.then16, label %if.end21, !dbg !2871

if.then16:                                        ; preds = %if.end
  br label %do.body17, !dbg !2872

do.body17:                                        ; preds = %if.then16
  %20 = load ptr, ptr %buf.addr, align 8, !dbg !2874
  %used18 = getelementptr inbounds %struct.isc_buffer, ptr %20, i32 0, i32 3, !dbg !2874
  %21 = load i32, ptr %used18, align 4, !dbg !2874
  %add = add i32 %21, 52, !dbg !2874
  store i32 %add, ptr %used18, align 4, !dbg !2874
  br label %do.cond19, !dbg !2874

do.cond19:                                        ; preds = %do.body17
  br label %do.end20, !dbg !2874

do.end20:                                         ; preds = %do.cond19
  br label %if.end21, !dbg !2876

if.end21:                                         ; preds = %do.end20, %if.end
  %22 = load i32, ptr %result, align 4, !dbg !2877
  %23 = load ptr, ptr %dslist.addr, align 8, !dbg !2878
  %24 = load ptr, ptr %rdata, align 8, !dbg !2879
  %call22 = call i32 @rdata_put(i32 noundef %22, ptr noundef %23, ptr noundef %24), !dbg !2880
  store i32 %call22, ptr %result, align 4, !dbg !2881
  %25 = load i32, ptr %result, align 4, !dbg !2882
  %cmp23 = icmp ne i32 %25, 0, !dbg !2884
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !2885

if.then25:                                        ; preds = %if.end21
  %26 = load i32, ptr %result, align 4, !dbg !2886
  store i32 %26, ptr %retval, align 4, !dbg !2888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2888

if.end26:                                         ; preds = %if.end21
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2889
  br label %cleanup, !dbg !2889

cleanup:                                          ; preds = %if.end26, %if.then25, %if.then9
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #14, !dbg !2889
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdata) #14, !dbg !2889
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end28, !dbg !2890

if.end28:                                         ; preds = %cleanup.cont, %for.body
  br label %for.inc, !dbg !2891

for.inc:                                          ; preds = %if.end28
  %27 = load i32, ptr %i, align 4, !dbg !2892
  %inc = add i32 %27, 1, !dbg !2892
  store i32 %inc, ptr %i, align 4, !dbg !2892
  br label %for.cond, !dbg !2893, !llvm.loop !2894

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !2896

cleanup29:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #14, !dbg !2897
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2897
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !2897
  %28 = load i32, ptr %retval, align 4, !dbg !2897
  ret i32 %28, !dbg !2897
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @ds_from_cds(ptr noundef %dslist, ptr noundef %buf, ptr noundef %cds) #0 !dbg !2898 {
entry:
  %dslist.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cds.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %ds = alloca %struct.dns_rdata_ds, align 8
  %rdata = alloca ptr, align 8
  store ptr %dslist, ptr %dslist.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dslist.addr, metadata !2900, metadata !DIExpression()), !dbg !2916
  store ptr %buf, ptr %buf.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2901, metadata !DIExpression()), !dbg !2917
  store ptr %cds, ptr %cds.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cds.addr, metadata !2902, metadata !DIExpression()), !dbg !2918
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !2919
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2903, metadata !DIExpression()), !dbg !2920
  call void @llvm.lifetime.start.p0(i64 48, ptr %ds) #14, !dbg !2921
  tail call void @llvm.dbg.declare(metadata ptr %ds, metadata !2904, metadata !DIExpression()), !dbg !2922
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdata) #14, !dbg !2923
  tail call void @llvm.dbg.declare(metadata ptr %rdata, metadata !2915, metadata !DIExpression()), !dbg !2924
  %call = call ptr @rdata_get(), !dbg !2925
  store ptr %call, ptr %rdata, align 8, !dbg !2926
  %0 = load ptr, ptr %cds.addr, align 8, !dbg !2927
  %call1 = call i32 @dns_rdata_tostruct(ptr noundef %0, ptr noundef %ds, ptr noundef null), !dbg !2928
  store i32 %call1, ptr %result, align 4, !dbg !2929
  %1 = load i32, ptr %result, align 4, !dbg !2930
  call void @check_result(i32 noundef %1, ptr noundef @.str.91), !dbg !2931
  %common = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 0, !dbg !2932
  %rdtype = getelementptr inbounds %struct.dns_rdatacommon, ptr %common, i32 0, i32 1, !dbg !2933
  store i16 43, ptr %rdtype, align 2, !dbg !2934
  %2 = load ptr, ptr %rdata, align 8, !dbg !2935
  %3 = load i16, ptr @rdclass, align 2, !dbg !2936
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !2937
  %call2 = call i32 @dns_rdata_fromstruct(ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 43, ptr noundef %ds, ptr noundef %4), !dbg !2938
  store i32 %call2, ptr %result, align 4, !dbg !2939
  %5 = load i32, ptr %result, align 4, !dbg !2940
  %6 = load ptr, ptr %dslist.addr, align 8, !dbg !2941
  %7 = load ptr, ptr %rdata, align 8, !dbg !2942
  %call3 = call i32 @rdata_put(i32 noundef %5, ptr noundef %6, ptr noundef %7), !dbg !2943
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdata) #14, !dbg !2944
  call void @llvm.lifetime.end.p0(i64 48, ptr %ds) #14, !dbg !2944
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !2944
  ret i32 %call3, !dbg !2945
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @consistent_digests(ptr noundef %dsset) #0 !dbg !2946 {
entry:
  %dsset.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %arrdata = alloca ptr, align 8
  %ds = alloca ptr, align 8
  %key_tag = alloca i16, align 2
  %algorithm = alloca i8, align 1
  %match = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %d = alloca i32, align 4
  store ptr %dsset, ptr %dsset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dsset.addr, metadata !2948, metadata !DIExpression()), !dbg !2960
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !2961
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2949, metadata !DIExpression()), !dbg !2962
  call void @llvm.lifetime.start.p0(i64 8, ptr %arrdata) #14, !dbg !2963
  tail call void @llvm.dbg.declare(metadata ptr %arrdata, metadata !2950, metadata !DIExpression()), !dbg !2964
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds) #14, !dbg !2965
  tail call void @llvm.dbg.declare(metadata ptr %ds, metadata !2951, metadata !DIExpression()), !dbg !2966
  call void @llvm.lifetime.start.p0(i64 2, ptr %key_tag) #14, !dbg !2967
  tail call void @llvm.dbg.declare(metadata ptr %key_tag, metadata !2953, metadata !DIExpression()), !dbg !2968
  call void @llvm.lifetime.start.p0(i64 1, ptr %algorithm) #14, !dbg !2969
  tail call void @llvm.dbg.declare(metadata ptr %algorithm, metadata !2954, metadata !DIExpression()), !dbg !2970
  call void @llvm.lifetime.start.p0(i64 1, ptr %match) #14, !dbg !2971
  tail call void @llvm.dbg.declare(metadata ptr %match, metadata !2955, metadata !DIExpression()), !dbg !2972
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2973
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2956, metadata !DIExpression()), !dbg !2974
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #14, !dbg !2973
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !2957, metadata !DIExpression()), !dbg !2975
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #14, !dbg !2973
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !2958, metadata !DIExpression()), !dbg !2976
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #14, !dbg !2973
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !2959, metadata !DIExpression()), !dbg !2977
  %0 = load ptr, ptr %dsset.addr, align 8, !dbg !2978
  %call = call i32 @dns_rdataset_count(ptr noundef %0), !dbg !2979
  store i32 %call, ptr %n, align 4, !dbg !2980
  %1 = load ptr, ptr @mctx, align 8, !dbg !2981
  %2 = load i32, ptr %n, align 4, !dbg !2981
  %conv = sext i32 %2 to i64, !dbg !2981
  %mul = mul i64 %conv, 40, !dbg !2981
  %call1 = call ptr @isc__mem_get(ptr noundef %1, i64 noundef %mul, ptr noundef @.str.35, i32 noundef 950), !dbg !2981
  store ptr %call1, ptr %arrdata, align 8, !dbg !2982
  %3 = load ptr, ptr %arrdata, align 8, !dbg !2983
  %cmp = icmp eq ptr %3, null, !dbg !2985
  br i1 %cmp, label %if.then, label %if.end, !dbg !2986

if.then:                                          ; preds = %entry
  %call3 = call ptr @isc_result_totext(i32 noundef 1), !dbg !2987
  call void (ptr, ...) @fatal(ptr noundef @.str.92, ptr noundef %call3) #15, !dbg !2989
  unreachable, !dbg !2989

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dsset.addr, align 8, !dbg !2990
  %call4 = call i32 @dns_rdataset_first(ptr noundef %4), !dbg !2992
  store i32 %call4, ptr %result, align 4, !dbg !2993
  store i32 0, ptr %i, align 4, !dbg !2994
  br label %for.cond, !dbg !2995

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %result, align 4, !dbg !2996
  %cmp5 = icmp eq i32 %5, 0, !dbg !2998
  br i1 %cmp5, label %for.body, label %for.end, !dbg !2999

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %arrdata, align 8, !dbg !3000
  %7 = load i32, ptr %i, align 4, !dbg !3002
  %idxprom = sext i32 %7 to i64, !dbg !3000
  %arrayidx = getelementptr inbounds %struct.dns_rdata, ptr %6, i64 %idxprom, !dbg !3000
  call void @dns_rdata_init(ptr noundef %arrayidx), !dbg !3003
  %8 = load ptr, ptr %dsset.addr, align 8, !dbg !3004
  %9 = load ptr, ptr %arrdata, align 8, !dbg !3005
  %10 = load i32, ptr %i, align 4, !dbg !3006
  %idxprom7 = sext i32 %10 to i64, !dbg !3005
  %arrayidx8 = getelementptr inbounds %struct.dns_rdata, ptr %9, i64 %idxprom7, !dbg !3005
  call void @dns_rdataset_current(ptr noundef %8, ptr noundef %arrayidx8), !dbg !3007
  br label %for.inc, !dbg !3008

for.inc:                                          ; preds = %for.body
  %11 = load ptr, ptr %dsset.addr, align 8, !dbg !3009
  %call9 = call i32 @dns_rdataset_next(ptr noundef %11), !dbg !3010
  store i32 %call9, ptr %result, align 4, !dbg !3011
  %12 = load i32, ptr %i, align 4, !dbg !3012
  %inc = add nsw i32 %12, 1, !dbg !3012
  store i32 %inc, ptr %i, align 4, !dbg !3012
  br label %for.cond, !dbg !3013, !llvm.loop !3014

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %arrdata, align 8, !dbg !3016
  %14 = load i32, ptr %n, align 4, !dbg !3017
  %conv10 = sext i32 %14 to i64, !dbg !3017
  call void @qsort(ptr noundef %13, i64 noundef %conv10, i64 noundef 40, ptr noundef @rdata_cmp), !dbg !3018
  %15 = load ptr, ptr @mctx, align 8, !dbg !3019
  %16 = load i32, ptr %n, align 4, !dbg !3019
  %conv11 = sext i32 %16 to i64, !dbg !3019
  %mul12 = mul i64 %conv11, 48, !dbg !3019
  %call13 = call ptr @isc__mem_get(ptr noundef %15, i64 noundef %mul12, ptr noundef @.str.35, i32 noundef 969), !dbg !3019
  store ptr %call13, ptr %ds, align 8, !dbg !3020
  %17 = load ptr, ptr %ds, align 8, !dbg !3021
  %cmp14 = icmp eq ptr %17, null, !dbg !3023
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !3024

if.then16:                                        ; preds = %for.end
  %call17 = call ptr @isc_result_totext(i32 noundef 1), !dbg !3025
  call void (ptr, ...) @fatal(ptr noundef @.str.93, ptr noundef %call17) #15, !dbg !3027
  unreachable, !dbg !3027

if.end18:                                         ; preds = %for.end
  store i32 0, ptr %i, align 4, !dbg !3028
  br label %for.cond19, !dbg !3030

for.cond19:                                       ; preds = %for.inc28, %if.end18
  %18 = load i32, ptr %i, align 4, !dbg !3031
  %19 = load i32, ptr %n, align 4, !dbg !3033
  %cmp20 = icmp slt i32 %18, %19, !dbg !3034
  br i1 %cmp20, label %for.body22, label %for.end30, !dbg !3035

for.body22:                                       ; preds = %for.cond19
  %20 = load ptr, ptr %arrdata, align 8, !dbg !3036
  %21 = load i32, ptr %i, align 4, !dbg !3038
  %idxprom23 = sext i32 %21 to i64, !dbg !3036
  %arrayidx24 = getelementptr inbounds %struct.dns_rdata, ptr %20, i64 %idxprom23, !dbg !3036
  %22 = load ptr, ptr %ds, align 8, !dbg !3039
  %23 = load i32, ptr %i, align 4, !dbg !3040
  %idxprom25 = sext i32 %23 to i64, !dbg !3039
  %arrayidx26 = getelementptr inbounds %struct.dns_rdata_ds, ptr %22, i64 %idxprom25, !dbg !3039
  %call27 = call i32 @dns_rdata_tostruct(ptr noundef %arrayidx24, ptr noundef %arrayidx26, ptr noundef null), !dbg !3041
  store i32 %call27, ptr %result, align 4, !dbg !3042
  %24 = load i32, ptr %result, align 4, !dbg !3043
  call void @check_result(i32 noundef %24, ptr noundef @.str.51), !dbg !3044
  br label %for.inc28, !dbg !3045

for.inc28:                                        ; preds = %for.body22
  %25 = load i32, ptr %i, align 4, !dbg !3046
  %inc29 = add nsw i32 %25, 1, !dbg !3046
  store i32 %inc29, ptr %i, align 4, !dbg !3046
  br label %for.cond19, !dbg !3047, !llvm.loop !3048

for.end30:                                        ; preds = %for.cond19
  %26 = load ptr, ptr %ds, align 8, !dbg !3050
  %arrayidx31 = getelementptr inbounds %struct.dns_rdata_ds, ptr %26, i64 0, !dbg !3050
  %key_tag32 = getelementptr inbounds %struct.dns_rdata_ds, ptr %arrayidx31, i32 0, i32 2, !dbg !3051
  %27 = load i16, ptr %key_tag32, align 8, !dbg !3051
  store i16 %27, ptr %key_tag, align 2, !dbg !3052
  %28 = load ptr, ptr %ds, align 8, !dbg !3053
  %arrayidx33 = getelementptr inbounds %struct.dns_rdata_ds, ptr %28, i64 0, !dbg !3053
  %algorithm34 = getelementptr inbounds %struct.dns_rdata_ds, ptr %arrayidx33, i32 0, i32 3, !dbg !3054
  %29 = load i8, ptr %algorithm34, align 2, !dbg !3054
  store i8 %29, ptr %algorithm, align 1, !dbg !3055
  store i32 0, ptr %d, align 4, !dbg !3056
  store i32 0, ptr %i, align 4, !dbg !3058
  br label %for.cond35, !dbg !3059

for.cond35:                                       ; preds = %for.inc55, %for.end30
  %30 = load i32, ptr %i, align 4, !dbg !3060
  %31 = load i32, ptr %n, align 4, !dbg !3062
  %cmp36 = icmp slt i32 %30, %31, !dbg !3063
  br i1 %cmp36, label %for.body38, label %for.end58, !dbg !3064

for.body38:                                       ; preds = %for.cond35
  %32 = load ptr, ptr %ds, align 8, !dbg !3065
  %33 = load i32, ptr %i, align 4, !dbg !3068
  %idxprom39 = sext i32 %33 to i64, !dbg !3065
  %arrayidx40 = getelementptr inbounds %struct.dns_rdata_ds, ptr %32, i64 %idxprom39, !dbg !3065
  %key_tag41 = getelementptr inbounds %struct.dns_rdata_ds, ptr %arrayidx40, i32 0, i32 2, !dbg !3069
  %34 = load i16, ptr %key_tag41, align 8, !dbg !3069
  %conv42 = zext i16 %34 to i32, !dbg !3065
  %35 = load i16, ptr %key_tag, align 2, !dbg !3070
  %conv43 = zext i16 %35 to i32, !dbg !3070
  %cmp44 = icmp ne i32 %conv42, %conv43, !dbg !3071
  br i1 %cmp44, label %if.then53, label %lor.lhs.false, !dbg !3072

lor.lhs.false:                                    ; preds = %for.body38
  %36 = load ptr, ptr %ds, align 8, !dbg !3073
  %37 = load i32, ptr %i, align 4, !dbg !3074
  %idxprom46 = sext i32 %37 to i64, !dbg !3073
  %arrayidx47 = getelementptr inbounds %struct.dns_rdata_ds, ptr %36, i64 %idxprom46, !dbg !3073
  %algorithm48 = getelementptr inbounds %struct.dns_rdata_ds, ptr %arrayidx47, i32 0, i32 3, !dbg !3075
  %38 = load i8, ptr %algorithm48, align 2, !dbg !3075
  %conv49 = zext i8 %38 to i32, !dbg !3073
  %39 = load i8, ptr %algorithm, align 1, !dbg !3076
  %conv50 = zext i8 %39 to i32, !dbg !3076
  %cmp51 = icmp ne i32 %conv49, %conv50, !dbg !3077
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !3078

if.then53:                                        ; preds = %lor.lhs.false, %for.body38
  br label %for.end58, !dbg !3079

if.end54:                                         ; preds = %lor.lhs.false
  br label %for.inc55, !dbg !3081

for.inc55:                                        ; preds = %if.end54
  %40 = load i32, ptr %i, align 4, !dbg !3082
  %inc56 = add nsw i32 %40, 1, !dbg !3082
  store i32 %inc56, ptr %i, align 4, !dbg !3082
  %41 = load i32, ptr %d, align 4, !dbg !3083
  %inc57 = add nsw i32 %41, 1, !dbg !3083
  store i32 %inc57, ptr %d, align 4, !dbg !3083
  br label %for.cond35, !dbg !3084, !llvm.loop !3085

for.end58:                                        ; preds = %if.then53, %for.cond35
  store i8 1, ptr %match, align 1, !dbg !3087
  br label %while.cond, !dbg !3088

while.cond:                                       ; preds = %for.end105, %for.end58
  %42 = load i32, ptr %i, align 4, !dbg !3089
  %43 = load i32, ptr %n, align 4, !dbg !3090
  %cmp59 = icmp slt i32 %42, %43, !dbg !3091
  br i1 %cmp59, label %while.body, label %while.end, !dbg !3088

while.body:                                       ; preds = %while.cond
  %44 = load ptr, ptr %ds, align 8, !dbg !3092
  %45 = load i32, ptr %i, align 4, !dbg !3094
  %idxprom61 = sext i32 %45 to i64, !dbg !3092
  %arrayidx62 = getelementptr inbounds %struct.dns_rdata_ds, ptr %44, i64 %idxprom61, !dbg !3092
  %key_tag63 = getelementptr inbounds %struct.dns_rdata_ds, ptr %arrayidx62, i32 0, i32 2, !dbg !3095
  %46 = load i16, ptr %key_tag63, align 8, !dbg !3095
  store i16 %46, ptr %key_tag, align 2, !dbg !3096
  %47 = load ptr, ptr %ds, align 8, !dbg !3097
  %48 = load i32, ptr %i, align 4, !dbg !3098
  %idxprom64 = sext i32 %48 to i64, !dbg !3097
  %arrayidx65 = getelementptr inbounds %struct.dns_rdata_ds, ptr %47, i64 %idxprom64, !dbg !3097
  %algorithm66 = getelementptr inbounds %struct.dns_rdata_ds, ptr %arrayidx65, i32 0, i32 3, !dbg !3099
  %49 = load i8, ptr %algorithm66, align 2, !dbg !3099
  store i8 %49, ptr %algorithm, align 1, !dbg !3100
  store i32 0, ptr %j, align 4, !dbg !3101
  br label %for.cond67, !dbg !3103

for.cond67:                                       ; preds = %for.inc103, %while.body
  %50 = load i32, ptr %j, align 4, !dbg !3104
  %51 = load i32, ptr %d, align 4, !dbg !3106
  %cmp68 = icmp slt i32 %50, %51, !dbg !3107
  br i1 %cmp68, label %land.rhs, label %land.end, !dbg !3108

land.rhs:                                         ; preds = %for.cond67
  %52 = load i32, ptr %i, align 4, !dbg !3109
  %53 = load i32, ptr %j, align 4, !dbg !3110
  %add = add nsw i32 %52, %53, !dbg !3111
  %54 = load i32, ptr %n, align 4, !dbg !3112
  %cmp70 = icmp slt i32 %add, %54, !dbg !3113
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond67
  %55 = phi i1 [ false, %for.cond67 ], [ %cmp70, %land.rhs ], !dbg !3114
  br i1 %55, label %for.body72, label %for.end105, !dbg !3115

for.body72:                                       ; preds = %land.end
  %56 = load ptr, ptr %ds, align 8, !dbg !3116
  %57 = load i32, ptr %i, align 4, !dbg !3119
  %58 = load i32, ptr %j, align 4, !dbg !3120
  %add73 = add nsw i32 %57, %58, !dbg !3121
  %idxprom74 = sext i32 %add73 to i64, !dbg !3116
  %arrayidx75 = getelementptr inbounds %struct.dns_rdata_ds, ptr %56, i64 %idxprom74, !dbg !3116
  %key_tag76 = getelementptr inbounds %struct.dns_rdata_ds, ptr %arrayidx75, i32 0, i32 2, !dbg !3122
  %59 = load i16, ptr %key_tag76, align 8, !dbg !3122
  %conv77 = zext i16 %59 to i32, !dbg !3116
  %60 = load i16, ptr %key_tag, align 2, !dbg !3123
  %conv78 = zext i16 %60 to i32, !dbg !3123
  %cmp79 = icmp ne i32 %conv77, %conv78, !dbg !3124
  br i1 %cmp79, label %if.then101, label %lor.lhs.false81, !dbg !3125

lor.lhs.false81:                                  ; preds = %for.body72
  %61 = load ptr, ptr %ds, align 8, !dbg !3126
  %62 = load i32, ptr %i, align 4, !dbg !3127
  %63 = load i32, ptr %j, align 4, !dbg !3128
  %add82 = add nsw i32 %62, %63, !dbg !3129
  %idxprom83 = sext i32 %add82 to i64, !dbg !3126
  %arrayidx84 = getelementptr inbounds %struct.dns_rdata_ds, ptr %61, i64 %idxprom83, !dbg !3126
  %algorithm85 = getelementptr inbounds %struct.dns_rdata_ds, ptr %arrayidx84, i32 0, i32 3, !dbg !3130
  %64 = load i8, ptr %algorithm85, align 2, !dbg !3130
  %conv86 = zext i8 %64 to i32, !dbg !3126
  %65 = load i8, ptr %algorithm, align 1, !dbg !3131
  %conv87 = zext i8 %65 to i32, !dbg !3131
  %cmp88 = icmp ne i32 %conv86, %conv87, !dbg !3132
  br i1 %cmp88, label %if.then101, label %lor.lhs.false90, !dbg !3133

lor.lhs.false90:                                  ; preds = %lor.lhs.false81
  %66 = load ptr, ptr %ds, align 8, !dbg !3134
  %67 = load i32, ptr %i, align 4, !dbg !3135
  %68 = load i32, ptr %j, align 4, !dbg !3136
  %add91 = add nsw i32 %67, %68, !dbg !3137
  %idxprom92 = sext i32 %add91 to i64, !dbg !3134
  %arrayidx93 = getelementptr inbounds %struct.dns_rdata_ds, ptr %66, i64 %idxprom92, !dbg !3134
  %digest_type = getelementptr inbounds %struct.dns_rdata_ds, ptr %arrayidx93, i32 0, i32 4, !dbg !3138
  %69 = load i8, ptr %digest_type, align 1, !dbg !3138
  %conv94 = zext i8 %69 to i32, !dbg !3134
  %70 = load ptr, ptr %ds, align 8, !dbg !3139
  %71 = load i32, ptr %j, align 4, !dbg !3140
  %idxprom95 = sext i32 %71 to i64, !dbg !3139
  %arrayidx96 = getelementptr inbounds %struct.dns_rdata_ds, ptr %70, i64 %idxprom95, !dbg !3139
  %digest_type97 = getelementptr inbounds %struct.dns_rdata_ds, ptr %arrayidx96, i32 0, i32 4, !dbg !3141
  %72 = load i8, ptr %digest_type97, align 1, !dbg !3141
  %conv98 = zext i8 %72 to i32, !dbg !3139
  %cmp99 = icmp ne i32 %conv94, %conv98, !dbg !3142
  br i1 %cmp99, label %if.then101, label %if.end102, !dbg !3143

if.then101:                                       ; preds = %lor.lhs.false90, %lor.lhs.false81, %for.body72
  store i8 0, ptr %match, align 1, !dbg !3144
  br label %if.end102, !dbg !3146

if.end102:                                        ; preds = %if.then101, %lor.lhs.false90
  br label %for.inc103, !dbg !3147

for.inc103:                                       ; preds = %if.end102
  %73 = load i32, ptr %j, align 4, !dbg !3148
  %inc104 = add nsw i32 %73, 1, !dbg !3148
  store i32 %inc104, ptr %j, align 4, !dbg !3148
  br label %for.cond67, !dbg !3149, !llvm.loop !3150

for.end105:                                       ; preds = %land.end
  %74 = load i32, ptr %d, align 4, !dbg !3152
  %75 = load i32, ptr %i, align 4, !dbg !3153
  %add106 = add nsw i32 %75, %74, !dbg !3153
  store i32 %add106, ptr %i, align 4, !dbg !3153
  br label %while.cond, !dbg !3088, !llvm.loop !3154

while.end:                                        ; preds = %while.cond
  br label %do.body, !dbg !3156

do.body:                                          ; preds = %while.end
  %76 = load ptr, ptr @mctx, align 8, !dbg !3157
  %77 = load ptr, ptr %ds, align 8, !dbg !3157
  %78 = load i32, ptr %n, align 4, !dbg !3157
  %conv107 = sext i32 %78 to i64, !dbg !3157
  %mul108 = mul i64 %conv107, 48, !dbg !3157
  call void @isc__mem_put(ptr noundef %76, ptr noundef %77, i64 noundef %mul108, ptr noundef @.str.35, i32 noundef 1012), !dbg !3157
  store ptr null, ptr %ds, align 8, !dbg !3157
  br label %do.cond, !dbg !3157

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3157

do.end:                                           ; preds = %do.cond
  br label %do.body109, !dbg !3159

do.body109:                                       ; preds = %do.end
  %79 = load ptr, ptr @mctx, align 8, !dbg !3160
  %80 = load ptr, ptr %arrdata, align 8, !dbg !3160
  %81 = load i32, ptr %n, align 4, !dbg !3160
  %conv110 = sext i32 %81 to i64, !dbg !3160
  %mul111 = mul i64 %conv110, 40, !dbg !3160
  call void @isc__mem_put(ptr noundef %79, ptr noundef %80, i64 noundef %mul111, ptr noundef @.str.35, i32 noundef 1013), !dbg !3160
  store ptr null, ptr %arrdata, align 8, !dbg !3160
  br label %do.cond112, !dbg !3160

do.cond112:                                       ; preds = %do.body109
  br label %do.end113, !dbg !3160

do.end113:                                        ; preds = %do.cond112
  %82 = load i8, ptr %match, align 1, !dbg !3162, !range !1278, !noundef !1279
  %tobool = trunc i8 %82 to i1, !dbg !3162
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #14, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #14, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #14, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 1, ptr %match) #14, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 1, ptr %algorithm) #14, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 2, ptr %key_tag) #14, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds) #14, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 8, ptr %arrdata) #14, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !3163
  ret i1 %tobool, !dbg !3164
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @signed_strict(ptr noundef %dsset, ptr noundef %algo) #0 !dbg !3165 {
entry:
  %dsset.addr = alloca ptr, align 8
  %algo.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %all_ok = alloca i8, align 1
  %dsrdata = alloca %struct.dns_rdata, align 8
  %ds = alloca %struct.dns_rdata_ds, align 8
  %ds_ok = alloca i8, align 1
  %i = alloca i32, align 4
  store ptr %dsset, ptr %dsset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dsset.addr, metadata !3169, metadata !DIExpression()), !dbg !3180
  store ptr %algo, ptr %algo.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %algo.addr, metadata !3170, metadata !DIExpression()), !dbg !3181
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !3182
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !3171, metadata !DIExpression()), !dbg !3183
  call void @llvm.lifetime.start.p0(i64 1, ptr %all_ok) #14, !dbg !3184
  tail call void @llvm.dbg.declare(metadata ptr %all_ok, metadata !3172, metadata !DIExpression()), !dbg !3185
  store i8 1, ptr %all_ok, align 1, !dbg !3185
  %0 = load ptr, ptr %dsset.addr, align 8, !dbg !3186
  %call = call i32 @dns_rdataset_first(ptr noundef %0), !dbg !3187
  store i32 %call, ptr %result, align 4, !dbg !3188
  br label %for.cond, !dbg !3189

for.cond:                                         ; preds = %for.inc13, %entry
  %1 = load i32, ptr %result, align 4, !dbg !3190
  %cmp = icmp eq i32 %1, 0, !dbg !3191
  br i1 %cmp, label %for.body, label %for.end15, !dbg !3192

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 40, ptr %dsrdata) #14, !dbg !3193
  tail call void @llvm.dbg.declare(metadata ptr %dsrdata, metadata !3173, metadata !DIExpression()), !dbg !3194
  call void @llvm.memset.p0.i64(ptr align 8 %dsrdata, i8 0, i64 40, i1 false), !dbg !3194
  %2 = getelementptr inbounds %struct.dns_rdata, ptr %dsrdata, i32 0, i32 5, !dbg !3194
  %3 = getelementptr inbounds %struct.anon.9, ptr %2, i32 0, i32 0, !dbg !3194
  store ptr inttoptr (i64 -1 to ptr), ptr %3, align 8, !dbg !3194
  %4 = getelementptr inbounds %struct.anon.9, ptr %2, i32 0, i32 1, !dbg !3194
  store ptr inttoptr (i64 -1 to ptr), ptr %4, align 8, !dbg !3194
  call void @llvm.lifetime.start.p0(i64 48, ptr %ds) #14, !dbg !3195
  tail call void @llvm.dbg.declare(metadata ptr %ds, metadata !3177, metadata !DIExpression()), !dbg !3196
  call void @llvm.lifetime.start.p0(i64 1, ptr %ds_ok) #14, !dbg !3197
  tail call void @llvm.dbg.declare(metadata ptr %ds_ok, metadata !3178, metadata !DIExpression()), !dbg !3198
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !3199
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3179, metadata !DIExpression()), !dbg !3200
  %5 = load ptr, ptr %dsset.addr, align 8, !dbg !3201
  call void @dns_rdataset_current(ptr noundef %5, ptr noundef %dsrdata), !dbg !3202
  %call1 = call i32 @dns_rdata_tostruct(ptr noundef %dsrdata, ptr noundef %ds, ptr noundef null), !dbg !3203
  store i32 %call1, ptr %result, align 4, !dbg !3204
  %6 = load i32, ptr %result, align 4, !dbg !3205
  call void @check_result(i32 noundef %6, ptr noundef @.str.51), !dbg !3206
  store i8 0, ptr %ds_ok, align 1, !dbg !3207
  store i32 0, ptr %i, align 4, !dbg !3208
  br label %for.cond2, !dbg !3210

for.cond2:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %i, align 4, !dbg !3211
  %8 = load i32, ptr @nkey, align 4, !dbg !3213
  %cmp3 = icmp slt i32 %7, %8, !dbg !3214
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !3215

for.body4:                                        ; preds = %for.cond2
  %9 = load ptr, ptr %algo.addr, align 8, !dbg !3216
  %10 = load i32, ptr %i, align 4, !dbg !3219
  %idxprom = sext i32 %10 to i64, !dbg !3216
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %idxprom, !dbg !3216
  %11 = load i8, ptr %arrayidx, align 1, !dbg !3216
  %conv = zext i8 %11 to i32, !dbg !3216
  %algorithm = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 3, !dbg !3220
  %12 = load i8, ptr %algorithm, align 2, !dbg !3220
  %conv5 = zext i8 %12 to i32, !dbg !3221
  %cmp6 = icmp eq i32 %conv, %conv5, !dbg !3222
  br i1 %cmp6, label %if.then, label %if.end, !dbg !3223

if.then:                                          ; preds = %for.body4
  store i8 1, ptr %ds_ok, align 1, !dbg !3224
  br label %if.end, !dbg !3226

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc, !dbg !3227

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4, !dbg !3228
  %inc = add nsw i32 %13, 1, !dbg !3228
  store i32 %inc, ptr %i, align 4, !dbg !3228
  br label %for.cond2, !dbg !3229, !llvm.loop !3230

for.end:                                          ; preds = %for.cond2
  %14 = load i8, ptr %ds_ok, align 1, !dbg !3232, !range !1278, !noundef !1279
  %tobool = trunc i8 %14 to i1, !dbg !3232
  br i1 %tobool, label %if.end12, label %if.then8, !dbg !3234

if.then8:                                         ; preds = %for.end
  %algorithm9 = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 3, !dbg !3235
  %15 = load i8, ptr %algorithm9, align 2, !dbg !3235
  %conv10 = zext i8 %15 to i32, !dbg !3237
  %key_tag = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 2, !dbg !3238
  %16 = load i16, ptr %key_tag, align 8, !dbg !3238
  %conv11 = zext i16 %16 to i32, !dbg !3239
  call void (i32, ptr, ...) @vbprintf(i32 noundef 0, ptr noundef @.str.94, i32 noundef %conv10, i32 noundef %conv11), !dbg !3240
  store i8 0, ptr %all_ok, align 1, !dbg !3241
  br label %if.end12, !dbg !3242

if.end12:                                         ; preds = %if.then8, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 1, ptr %ds_ok) #14, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 48, ptr %ds) #14, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 40, ptr %dsrdata) #14, !dbg !3243
  br label %for.inc13, !dbg !3244

for.inc13:                                        ; preds = %if.end12
  %17 = load ptr, ptr %dsset.addr, align 8, !dbg !3245
  %call14 = call i32 @dns_rdataset_next(ptr noundef %17), !dbg !3246
  store i32 %call14, ptr %result, align 4, !dbg !3247
  br label %for.cond, !dbg !3248, !llvm.loop !3249

for.end15:                                        ; preds = %for.cond
  br label %do.body, !dbg !3251

do.body:                                          ; preds = %for.end15
  %18 = load ptr, ptr @mctx, align 8, !dbg !3252
  %19 = load ptr, ptr %algo.addr, align 8, !dbg !3252
  %20 = load i32, ptr @nkey, align 4, !dbg !3252
  %conv16 = sext i32 %20 to i64, !dbg !3252
  call void @isc__mem_put(ptr noundef %18, ptr noundef %19, i64 noundef %conv16, ptr noundef @.str.35, i32 noundef 754), !dbg !3252
  store ptr null, ptr %algo.addr, align 8, !dbg !3252
  br label %do.cond, !dbg !3252

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3252

do.end:                                           ; preds = %do.cond
  %21 = load i8, ptr %all_ok, align 1, !dbg !3254, !range !1278, !noundef !1279
  %tobool17 = trunc i8 %21 to i1, !dbg !3254
  call void @llvm.lifetime.end.p0(i64 1, ptr %all_ok) #14, !dbg !3255
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !3255
  ret i1 %tobool17, !dbg !3256
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @nsdiff(i32 noundef %ttl, ptr noundef %oldset, ptr noundef %newset) #0 !dbg !3257 {
entry:
  %ttl.addr = alloca i32, align 4
  %oldset.addr = alloca ptr, align 8
  %newset.addr = alloca ptr, align 8
  store i32 %ttl, ptr %ttl.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %ttl.addr, metadata !3261, metadata !DIExpression()), !dbg !3264
  store ptr %oldset, ptr %oldset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %oldset.addr, metadata !3262, metadata !DIExpression()), !dbg !3265
  store ptr %newset, ptr %newset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %newset.addr, metadata !3263, metadata !DIExpression()), !dbg !3266
  %0 = load i32, ptr %ttl.addr, align 4, !dbg !3267
  %cmp = icmp eq i32 %0, 0, !dbg !3269
  br i1 %cmp, label %if.then, label %if.end, !dbg !3270

if.then:                                          ; preds = %entry
  call void (i32, ptr, ...) @vbprintf(i32 noundef 1, ptr noundef @.str.95), !dbg !3271
  br label %if.end, !dbg !3273

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %ttl.addr, align 4, !dbg !3274
  %2 = load ptr, ptr %newset.addr, align 8, !dbg !3275
  %3 = load ptr, ptr %oldset.addr, align 8, !dbg !3276
  call void @update_diff(ptr noundef @.str.96, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !3277
  %4 = load ptr, ptr %oldset.addr, align 8, !dbg !3278
  %5 = load ptr, ptr %newset.addr, align 8, !dbg !3279
  call void @update_diff(ptr noundef @.str.97, i32 noundef 0, ptr noundef %4, ptr noundef %5), !dbg !3280
  %6 = load i32, ptr @verbose, align 4, !dbg !3281
  %cmp1 = icmp sgt i32 %6, 0, !dbg !3283
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !3284

if.then2:                                         ; preds = %if.end
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.98), !dbg !3285
  br label %if.end4, !dbg !3287

if.else:                                          ; preds = %if.end
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.99), !dbg !3288
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %7 = load ptr, ptr @stdout, align 8, !dbg !3290
  %call5 = call i32 @fflush(ptr noundef %7), !dbg !3292
  %cmp6 = icmp eq i32 %call5, -1, !dbg !3293
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !3294

if.then7:                                         ; preds = %if.end4
  %call8 = call ptr @__errno_location() #18, !dbg !3295
  %8 = load i32, ptr %call8, align 4, !dbg !3295
  %call9 = call ptr @strerror(i32 noundef %8) #14, !dbg !3297
  call void (ptr, ...) @fatal(ptr noundef @.str.100, ptr noundef %call9) #15, !dbg !3298
  unreachable, !dbg !3298

if.end10:                                         ; preds = %if.end4
  ret void, !dbg !3299
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @free_all_sets() #0 !dbg !3300 {
entry:
  call void @freeset(ptr noundef @cdnskey_set), !dbg !3301
  call void @freeset(ptr noundef @cdnskey_sig), !dbg !3302
  call void @freeset(ptr noundef @cds_set), !dbg !3303
  call void @freeset(ptr noundef @cds_sig), !dbg !3304
  call void @freeset(ptr noundef @dnskey_set), !dbg !3305
  call void @freeset(ptr noundef @dnskey_sig), !dbg !3306
  call void @freeset(ptr noundef @old_ds_set), !dbg !3307
  call void @freelist(ptr noundef @new_ds_set), !dbg !3308
  %0 = load ptr, ptr @new_ds_buf, align 8, !dbg !3309
  %cmp = icmp ne ptr %0, null, !dbg !3311
  br i1 %cmp, label %if.then, label %if.end, !dbg !3312

if.then:                                          ; preds = %entry
  call void @isc_buffer_free(ptr noundef @new_ds_buf), !dbg !3313
  br label %if.end, !dbg !3315

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3316
}

; Function Attrs: null_pointer_is_valid
declare !dbg !3317 void @cleanup_logging(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3320 void @dst_lib_destroy() #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3321 void @isc_mem_stats(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3324 void @isc_mem_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3327 i32 @strtodsdigest(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3330 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @cmp_dtype(ptr noundef %ap, ptr noundef %bp) #0 !dbg !3337 {
entry:
  %ap.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store ptr %ap, ptr %ap.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !3339, metadata !DIExpression()), !dbg !3343
  store ptr %bp, ptr %bp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !3340, metadata !DIExpression()), !dbg !3344
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #14, !dbg !3345
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !3341, metadata !DIExpression()), !dbg !3346
  %0 = load ptr, ptr %ap.addr, align 8, !dbg !3347
  %1 = load i8, ptr %0, align 1, !dbg !3348
  %conv = zext i8 %1 to i32, !dbg !3348
  store i32 %conv, ptr %a, align 4, !dbg !3346
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #14, !dbg !3349
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !3342, metadata !DIExpression()), !dbg !3350
  %2 = load ptr, ptr %bp.addr, align 8, !dbg !3351
  %3 = load i8, ptr %2, align 1, !dbg !3352
  %conv1 = zext i8 %3 to i32, !dbg !3352
  store i32 %conv1, ptr %b, align 4, !dbg !3350
  %4 = load i32, ptr %a, align 4, !dbg !3353
  %5 = load i32, ptr %b, align 4, !dbg !3354
  %sub = sub nsw i32 %4, %5, !dbg !3355
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #14, !dbg !3356
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #14, !dbg !3356
  ret i32 %sub, !dbg !3357
}

; Function Attrs: null_pointer_is_valid
declare !dbg !3358 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3363 ptr @dns_fixedname_initname(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !3367 i64 @strlen(ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare !dbg !3371 i32 @dns_name_fromtext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @get_dsset_name(ptr noundef %filename, i64 noundef %size, ptr noundef %path, ptr noundef %suffix) #0 !dbg !3374 {
entry:
  %filename.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %path.addr = alloca ptr, align 8
  %suffix.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %buf = alloca %struct.isc_buffer, align 8
  %len = alloca i64, align 8
  %_length = alloca i32, align 4
  %_cp = alloca ptr, align 8
  %_tmp = alloca ptr, align 8
  %prefix = alloca ptr, align 8
  %_length59 = alloca i32, align 4
  %_cp60 = alloca ptr, align 8
  %_tmp71 = alloca ptr, align 8
  %_length121 = alloca i32, align 4
  %_cp122 = alloca ptr, align 8
  %_tmp135 = alloca ptr, align 8
  %_length193 = alloca i32, align 4
  %_cp194 = alloca ptr, align 8
  %_tmp207 = alloca ptr, align 8
  %_cp247 = alloca ptr, align 8
  %_val2 = alloca i8, align 1
  %_tmp258 = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !3378, metadata !DIExpression()), !dbg !3420
  store i64 %size, ptr %size.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3379, metadata !DIExpression()), !dbg !3421
  store ptr %path, ptr %path.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !3380, metadata !DIExpression()), !dbg !3422
  store ptr %suffix, ptr %suffix.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %suffix.addr, metadata !3381, metadata !DIExpression()), !dbg !3423
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !3424
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !3382, metadata !DIExpression()), !dbg !3425
  call void @llvm.lifetime.start.p0(i64 64, ptr %buf) #14, !dbg !3426
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !3383, metadata !DIExpression()), !dbg !3427
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #14, !dbg !3428
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !3384, metadata !DIExpression()), !dbg !3429
  br label %do.body, !dbg !3430

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !3431
  %base = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 1, !dbg !3431
  store ptr %0, ptr %base, align 8, !dbg !3431
  %1 = load i64, ptr %size.addr, align 8, !dbg !3431
  %conv = trunc i64 %1 to i32, !dbg !3431
  %length = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 2, !dbg !3431
  store i32 %conv, ptr %length, align 8, !dbg !3431
  %used = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3431
  store i32 0, ptr %used, align 4, !dbg !3431
  %current = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 4, !dbg !3431
  store i32 0, ptr %current, align 8, !dbg !3431
  %active = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 5, !dbg !3431
  store i32 0, ptr %active, align 4, !dbg !3431
  %mctx = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 7, !dbg !3431
  store ptr null, ptr %mctx, align 8, !dbg !3431
  br label %do.body1, !dbg !3431

do.body1:                                         ; preds = %do.body
  %link = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 6, !dbg !3433
  %prev = getelementptr inbounds %struct.anon.8, ptr %link, i32 0, i32 0, !dbg !3433
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !3433
  %link2 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 6, !dbg !3433
  %next = getelementptr inbounds %struct.anon.8, ptr %link2, i32 0, i32 1, !dbg !3433
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !3433
  br label %do.cond, !dbg !3433

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3433

do.end:                                           ; preds = %do.cond
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 0, !dbg !3431
  store i32 1114990113, ptr %magic, align 8, !dbg !3431
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 8, !dbg !3431
  store i8 0, ptr %autore, align 8, !dbg !3431
  br label %do.cond3, !dbg !3431

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !3431

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %path.addr, align 8, !dbg !3435
  %call = call i64 @strlen(ptr noundef %2) #17, !dbg !3436
  store i64 %call, ptr %len, align 8, !dbg !3437
  %length5 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 2, !dbg !3438
  %3 = load i32, ptr %length5, align 8, !dbg !3438
  %used6 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3438
  %4 = load i32, ptr %used6, align 4, !dbg !3438
  %sub = sub i32 %3, %4, !dbg !3438
  %conv7 = zext i32 %sub to i64, !dbg !3438
  %5 = load i64, ptr %len, align 8, !dbg !3440
  %cmp = icmp ule i64 %conv7, %5, !dbg !3441
  br i1 %cmp, label %if.then, label %if.end, !dbg !3442

if.then:                                          ; preds = %do.end4
  %6 = load ptr, ptr %path.addr, align 8, !dbg !3443
  call void (ptr, ...) @fatal(ptr noundef @.str.34, ptr noundef %6) #15, !dbg !3445
  unreachable, !dbg !3445

if.end:                                           ; preds = %do.end4
  br label %do.body9, !dbg !3446

do.body9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %_length) #14, !dbg !3447
  tail call void @llvm.dbg.declare(metadata ptr %_length, metadata !3385, metadata !DIExpression()), !dbg !3447
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp) #14, !dbg !3447
  tail call void @llvm.dbg.declare(metadata ptr %_cp, metadata !3387, metadata !DIExpression()), !dbg !3447
  %7 = load ptr, ptr %path.addr, align 8, !dbg !3447
  %call10 = call i64 @strlen(ptr noundef %7) #17, !dbg !3447
  %conv11 = trunc i64 %call10 to i32, !dbg !3447
  store i32 %conv11, ptr %_length, align 4, !dbg !3447
  %autore12 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 8, !dbg !3448
  %8 = load i8, ptr %autore12, align 8, !dbg !3448, !range !1278, !noundef !1279
  %tobool = trunc i8 %8 to i1, !dbg !3448
  %lnot = xor i1 %tobool, true, !dbg !3448
  %lnot13 = xor i1 %lnot, true, !dbg !3448
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !3448
  %conv14 = sext i32 %lnot.ext to i64, !dbg !3448
  %expval = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !3448
  %tobool15 = icmp ne i64 %expval, 0, !dbg !3448
  br i1 %tobool15, label %if.then16, label %if.end27, !dbg !3447

if.then16:                                        ; preds = %do.body9
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp) #14, !dbg !3449
  tail call void @llvm.dbg.declare(metadata ptr %_tmp, metadata !3388, metadata !DIExpression()), !dbg !3449
  store ptr %buf, ptr %_tmp, align 8, !dbg !3449
  %9 = load i32, ptr %_length, align 4, !dbg !3449
  %call17 = call i32 @isc_buffer_reserve(ptr noundef %_tmp, i32 noundef %9), !dbg !3449
  %cmp18 = icmp eq i32 %call17, 0, !dbg !3449
  %lnot20 = xor i1 %cmp18, true, !dbg !3449
  %lnot22 = xor i1 %lnot20, true, !dbg !3449
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !3449
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !3449
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 1), !dbg !3449
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !3449
  br i1 %tobool26, label %lor.end, label %lor.rhs, !dbg !3449

lor.rhs:                                          ; preds = %if.then16
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 303, i32 noundef 0, ptr noundef @.str.36) #15, !dbg !3449
  unreachable, !dbg !3449

10:                                               ; No predecessors!
  br label %lor.end, !dbg !3449

lor.end:                                          ; preds = %10, %if.then16
  %11 = phi i1 [ true, %if.then16 ], [ false, %10 ]
  %lor.ext = zext i1 %11 to i32, !dbg !3449
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp) #14, !dbg !3448
  br label %if.end27, !dbg !3449

if.end27:                                         ; preds = %lor.end, %do.body9
  %length28 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 2, !dbg !3447
  %12 = load i32, ptr %length28, align 8, !dbg !3447
  %used29 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3447
  %13 = load i32, ptr %used29, align 4, !dbg !3447
  %sub30 = sub i32 %12, %13, !dbg !3447
  %14 = load i32, ptr %_length, align 4, !dbg !3447
  %cmp31 = icmp uge i32 %sub30, %14, !dbg !3447
  %lnot33 = xor i1 %cmp31, true, !dbg !3447
  %lnot35 = xor i1 %lnot33, true, !dbg !3447
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !3447
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !3447
  %expval38 = call i64 @llvm.expect.i64(i64 %conv37, i64 1), !dbg !3447
  %tobool39 = icmp ne i64 %expval38, 0, !dbg !3447
  br i1 %tobool39, label %lor.end41, label %lor.rhs40, !dbg !3447

lor.rhs40:                                        ; preds = %if.end27
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 303, i32 noundef 0, ptr noundef @.str.37) #15, !dbg !3447
  unreachable, !dbg !3447

15:                                               ; No predecessors!
  br label %lor.end41, !dbg !3447

lor.end41:                                        ; preds = %15, %if.end27
  %16 = phi i1 [ true, %if.end27 ], [ false, %15 ]
  %lor.ext42 = zext i1 %16 to i32, !dbg !3447
  %base43 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 1, !dbg !3447
  %17 = load ptr, ptr %base43, align 8, !dbg !3447
  %used44 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3447
  %18 = load i32, ptr %used44, align 4, !dbg !3447
  %idx.ext = zext i32 %18 to i64, !dbg !3447
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %idx.ext, !dbg !3447
  store ptr %add.ptr, ptr %_cp, align 8, !dbg !3447
  %19 = load ptr, ptr %_cp, align 8, !dbg !3447
  %20 = load ptr, ptr %path.addr, align 8, !dbg !3447
  %21 = load i32, ptr %_length, align 4, !dbg !3447
  %conv45 = zext i32 %21 to i64, !dbg !3447
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %19, ptr align 1 %20, i64 %conv45, i1 false), !dbg !3447
  %22 = load i32, ptr %_length, align 4, !dbg !3447
  %used46 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3447
  %23 = load i32, ptr %used46, align 4, !dbg !3447
  %add = add i32 %23, %22, !dbg !3447
  store i32 %add, ptr %used46, align 4, !dbg !3447
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp) #14, !dbg !3446
  call void @llvm.lifetime.end.p0(i64 4, ptr %_length) #14, !dbg !3446
  br label %do.cond47, !dbg !3447

do.cond47:                                        ; preds = %lor.end41
  br label %do.end48, !dbg !3447

do.end48:                                         ; preds = %do.cond47
  %24 = load ptr, ptr %path.addr, align 8, !dbg !3450
  %call49 = call i32 @isc_file_isdirectory(ptr noundef %24), !dbg !3451
  %cmp50 = icmp eq i32 %call49, 0, !dbg !3452
  br i1 %cmp50, label %if.then52, label %if.end182, !dbg !3453

if.then52:                                        ; preds = %do.end48
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefix) #14, !dbg !3454
  tail call void @llvm.dbg.declare(metadata ptr %prefix, metadata !3391, metadata !DIExpression()), !dbg !3455
  store ptr @.str.38, ptr %prefix, align 8, !dbg !3455
  %25 = load ptr, ptr %path.addr, align 8, !dbg !3456
  %26 = load i64, ptr %len, align 8, !dbg !3457
  %sub53 = sub i64 %26, 1, !dbg !3458
  %arrayidx = getelementptr inbounds i8, ptr %25, i64 %sub53, !dbg !3456
  %27 = load i8, ptr %arrayidx, align 1, !dbg !3456
  %conv54 = sext i8 %27 to i32, !dbg !3456
  %cmp55 = icmp ne i32 %conv54, 47, !dbg !3459
  br i1 %cmp55, label %if.then57, label %if.end110, !dbg !3460

if.then57:                                        ; preds = %if.then52
  br label %do.body58, !dbg !3461

do.body58:                                        ; preds = %if.then57
  call void @llvm.lifetime.start.p0(i64 4, ptr %_length59) #14, !dbg !3462
  tail call void @llvm.dbg.declare(metadata ptr %_length59, metadata !3394, metadata !DIExpression()), !dbg !3462
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp60) #14, !dbg !3462
  tail call void @llvm.dbg.declare(metadata ptr %_cp60, metadata !3398, metadata !DIExpression()), !dbg !3462
  store i32 1, ptr %_length59, align 4, !dbg !3462
  %autore61 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 8, !dbg !3463
  %28 = load i8, ptr %autore61, align 8, !dbg !3463, !range !1278, !noundef !1279
  %tobool62 = trunc i8 %28 to i1, !dbg !3463
  %lnot63 = xor i1 %tobool62, true, !dbg !3463
  %lnot65 = xor i1 %lnot63, true, !dbg !3463
  %lnot.ext66 = zext i1 %lnot65 to i32, !dbg !3463
  %conv67 = sext i32 %lnot.ext66 to i64, !dbg !3463
  %expval68 = call i64 @llvm.expect.i64(i64 %conv67, i64 0), !dbg !3463
  %tobool69 = icmp ne i64 %expval68, 0, !dbg !3463
  br i1 %tobool69, label %if.then70, label %if.end85, !dbg !3462

if.then70:                                        ; preds = %do.body58
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp71) #14, !dbg !3464
  tail call void @llvm.dbg.declare(metadata ptr %_tmp71, metadata !3399, metadata !DIExpression()), !dbg !3464
  store ptr %buf, ptr %_tmp71, align 8, !dbg !3464
  %29 = load i32, ptr %_length59, align 4, !dbg !3464
  %call72 = call i32 @isc_buffer_reserve(ptr noundef %_tmp71, i32 noundef %29), !dbg !3464
  %cmp73 = icmp eq i32 %call72, 0, !dbg !3464
  %lnot75 = xor i1 %cmp73, true, !dbg !3464
  %lnot77 = xor i1 %lnot75, true, !dbg !3464
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !3464
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !3464
  %expval80 = call i64 @llvm.expect.i64(i64 %conv79, i64 1), !dbg !3464
  %tobool81 = icmp ne i64 %expval80, 0, !dbg !3464
  br i1 %tobool81, label %lor.end83, label %lor.rhs82, !dbg !3464

lor.rhs82:                                        ; preds = %if.then70
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 309, i32 noundef 0, ptr noundef @.str.36) #15, !dbg !3464
  unreachable, !dbg !3464

30:                                               ; No predecessors!
  br label %lor.end83, !dbg !3464

lor.end83:                                        ; preds = %30, %if.then70
  %31 = phi i1 [ true, %if.then70 ], [ false, %30 ]
  %lor.ext84 = zext i1 %31 to i32, !dbg !3464
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp71) #14, !dbg !3463
  br label %if.end85, !dbg !3464

if.end85:                                         ; preds = %lor.end83, %do.body58
  %length86 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 2, !dbg !3462
  %32 = load i32, ptr %length86, align 8, !dbg !3462
  %used87 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3462
  %33 = load i32, ptr %used87, align 4, !dbg !3462
  %sub88 = sub i32 %32, %33, !dbg !3462
  %34 = load i32, ptr %_length59, align 4, !dbg !3462
  %cmp89 = icmp uge i32 %sub88, %34, !dbg !3462
  %lnot91 = xor i1 %cmp89, true, !dbg !3462
  %lnot93 = xor i1 %lnot91, true, !dbg !3462
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !3462
  %conv95 = sext i32 %lnot.ext94 to i64, !dbg !3462
  %expval96 = call i64 @llvm.expect.i64(i64 %conv95, i64 1), !dbg !3462
  %tobool97 = icmp ne i64 %expval96, 0, !dbg !3462
  br i1 %tobool97, label %lor.end99, label %lor.rhs98, !dbg !3462

lor.rhs98:                                        ; preds = %if.end85
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 309, i32 noundef 0, ptr noundef @.str.37) #15, !dbg !3462
  unreachable, !dbg !3462

35:                                               ; No predecessors!
  br label %lor.end99, !dbg !3462

lor.end99:                                        ; preds = %35, %if.end85
  %36 = phi i1 [ true, %if.end85 ], [ false, %35 ]
  %lor.ext100 = zext i1 %36 to i32, !dbg !3462
  %base101 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 1, !dbg !3462
  %37 = load ptr, ptr %base101, align 8, !dbg !3462
  %used102 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3462
  %38 = load i32, ptr %used102, align 4, !dbg !3462
  %idx.ext103 = zext i32 %38 to i64, !dbg !3462
  %add.ptr104 = getelementptr inbounds i8, ptr %37, i64 %idx.ext103, !dbg !3462
  store ptr %add.ptr104, ptr %_cp60, align 8, !dbg !3462
  %39 = load ptr, ptr %_cp60, align 8, !dbg !3462
  %40 = load i32, ptr %_length59, align 4, !dbg !3462
  %conv105 = zext i32 %40 to i64, !dbg !3462
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %39, ptr align 1 @.str.39, i64 %conv105, i1 false), !dbg !3462
  %41 = load i32, ptr %_length59, align 4, !dbg !3462
  %used106 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3462
  %42 = load i32, ptr %used106, align 4, !dbg !3462
  %add107 = add i32 %42, %41, !dbg !3462
  store i32 %add107, ptr %used106, align 4, !dbg !3462
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp60) #14, !dbg !3461
  call void @llvm.lifetime.end.p0(i64 4, ptr %_length59) #14, !dbg !3461
  br label %do.cond108, !dbg !3462

do.cond108:                                       ; preds = %lor.end99
  br label %do.end109, !dbg !3462

do.end109:                                        ; preds = %do.cond108
  br label %if.end110, !dbg !3465

if.end110:                                        ; preds = %do.end109, %if.then52
  %length111 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 2, !dbg !3466
  %43 = load i32, ptr %length111, align 8, !dbg !3466
  %used112 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3466
  %44 = load i32, ptr %used112, align 4, !dbg !3466
  %sub113 = sub i32 %43, %44, !dbg !3466
  %conv114 = zext i32 %sub113 to i64, !dbg !3466
  %45 = load ptr, ptr %prefix, align 8, !dbg !3468
  %call115 = call i64 @strlen(ptr noundef %45) #17, !dbg !3469
  %cmp116 = icmp ult i64 %conv114, %call115, !dbg !3470
  br i1 %cmp116, label %if.then118, label %if.end119, !dbg !3471

if.then118:                                       ; preds = %if.end110
  %46 = load ptr, ptr %path.addr, align 8, !dbg !3472
  call void (ptr, ...) @fatal(ptr noundef @.str.34, ptr noundef %46) #15, !dbg !3474
  unreachable, !dbg !3474

if.end119:                                        ; preds = %if.end110
  br label %do.body120, !dbg !3475

do.body120:                                       ; preds = %if.end119
  call void @llvm.lifetime.start.p0(i64 4, ptr %_length121) #14, !dbg !3476
  tail call void @llvm.dbg.declare(metadata ptr %_length121, metadata !3402, metadata !DIExpression()), !dbg !3476
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp122) #14, !dbg !3476
  tail call void @llvm.dbg.declare(metadata ptr %_cp122, metadata !3404, metadata !DIExpression()), !dbg !3476
  %47 = load ptr, ptr %prefix, align 8, !dbg !3476
  %call123 = call i64 @strlen(ptr noundef %47) #17, !dbg !3476
  %conv124 = trunc i64 %call123 to i32, !dbg !3476
  store i32 %conv124, ptr %_length121, align 4, !dbg !3476
  %autore125 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 8, !dbg !3477
  %48 = load i8, ptr %autore125, align 8, !dbg !3477, !range !1278, !noundef !1279
  %tobool126 = trunc i8 %48 to i1, !dbg !3477
  %lnot127 = xor i1 %tobool126, true, !dbg !3477
  %lnot129 = xor i1 %lnot127, true, !dbg !3477
  %lnot.ext130 = zext i1 %lnot129 to i32, !dbg !3477
  %conv131 = sext i32 %lnot.ext130 to i64, !dbg !3477
  %expval132 = call i64 @llvm.expect.i64(i64 %conv131, i64 0), !dbg !3477
  %tobool133 = icmp ne i64 %expval132, 0, !dbg !3477
  br i1 %tobool133, label %if.then134, label %if.end149, !dbg !3476

if.then134:                                       ; preds = %do.body120
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp135) #14, !dbg !3478
  tail call void @llvm.dbg.declare(metadata ptr %_tmp135, metadata !3405, metadata !DIExpression()), !dbg !3478
  store ptr %buf, ptr %_tmp135, align 8, !dbg !3478
  %49 = load i32, ptr %_length121, align 4, !dbg !3478
  %call136 = call i32 @isc_buffer_reserve(ptr noundef %_tmp135, i32 noundef %49), !dbg !3478
  %cmp137 = icmp eq i32 %call136, 0, !dbg !3478
  %lnot139 = xor i1 %cmp137, true, !dbg !3478
  %lnot141 = xor i1 %lnot139, true, !dbg !3478
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !3478
  %conv143 = sext i32 %lnot.ext142 to i64, !dbg !3478
  %expval144 = call i64 @llvm.expect.i64(i64 %conv143, i64 1), !dbg !3478
  %tobool145 = icmp ne i64 %expval144, 0, !dbg !3478
  br i1 %tobool145, label %lor.end147, label %lor.rhs146, !dbg !3478

lor.rhs146:                                       ; preds = %if.then134
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 315, i32 noundef 0, ptr noundef @.str.36) #15, !dbg !3478
  unreachable, !dbg !3478

50:                                               ; No predecessors!
  br label %lor.end147, !dbg !3478

lor.end147:                                       ; preds = %50, %if.then134
  %51 = phi i1 [ true, %if.then134 ], [ false, %50 ]
  %lor.ext148 = zext i1 %51 to i32, !dbg !3478
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp135) #14, !dbg !3477
  br label %if.end149, !dbg !3478

if.end149:                                        ; preds = %lor.end147, %do.body120
  %length150 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 2, !dbg !3476
  %52 = load i32, ptr %length150, align 8, !dbg !3476
  %used151 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3476
  %53 = load i32, ptr %used151, align 4, !dbg !3476
  %sub152 = sub i32 %52, %53, !dbg !3476
  %54 = load i32, ptr %_length121, align 4, !dbg !3476
  %cmp153 = icmp uge i32 %sub152, %54, !dbg !3476
  %lnot155 = xor i1 %cmp153, true, !dbg !3476
  %lnot157 = xor i1 %lnot155, true, !dbg !3476
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !3476
  %conv159 = sext i32 %lnot.ext158 to i64, !dbg !3476
  %expval160 = call i64 @llvm.expect.i64(i64 %conv159, i64 1), !dbg !3476
  %tobool161 = icmp ne i64 %expval160, 0, !dbg !3476
  br i1 %tobool161, label %lor.end163, label %lor.rhs162, !dbg !3476

lor.rhs162:                                       ; preds = %if.end149
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 315, i32 noundef 0, ptr noundef @.str.37) #15, !dbg !3476
  unreachable, !dbg !3476

55:                                               ; No predecessors!
  br label %lor.end163, !dbg !3476

lor.end163:                                       ; preds = %55, %if.end149
  %56 = phi i1 [ true, %if.end149 ], [ false, %55 ]
  %lor.ext164 = zext i1 %56 to i32, !dbg !3476
  %base165 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 1, !dbg !3476
  %57 = load ptr, ptr %base165, align 8, !dbg !3476
  %used166 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3476
  %58 = load i32, ptr %used166, align 4, !dbg !3476
  %idx.ext167 = zext i32 %58 to i64, !dbg !3476
  %add.ptr168 = getelementptr inbounds i8, ptr %57, i64 %idx.ext167, !dbg !3476
  store ptr %add.ptr168, ptr %_cp122, align 8, !dbg !3476
  %59 = load ptr, ptr %_cp122, align 8, !dbg !3476
  %60 = load ptr, ptr %prefix, align 8, !dbg !3476
  %61 = load i32, ptr %_length121, align 4, !dbg !3476
  %conv169 = zext i32 %61 to i64, !dbg !3476
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %59, ptr align 1 %60, i64 %conv169, i1 false), !dbg !3476
  %62 = load i32, ptr %_length121, align 4, !dbg !3476
  %used170 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3476
  %63 = load i32, ptr %used170, align 4, !dbg !3476
  %add171 = add i32 %63, %62, !dbg !3476
  store i32 %add171, ptr %used170, align 4, !dbg !3476
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp122) #14, !dbg !3475
  call void @llvm.lifetime.end.p0(i64 4, ptr %_length121) #14, !dbg !3475
  br label %do.cond172, !dbg !3476

do.cond172:                                       ; preds = %lor.end163
  br label %do.end173, !dbg !3476

do.end173:                                        ; preds = %do.cond172
  %64 = load ptr, ptr @name, align 8, !dbg !3479
  %call174 = call i32 @dns_name_tofilenametext(ptr noundef %64, i1 noundef zeroext false, ptr noundef %buf), !dbg !3480
  store i32 %call174, ptr %result, align 4, !dbg !3481
  %65 = load i32, ptr %result, align 4, !dbg !3482
  call void @check_result(i32 noundef %65, ptr noundef @.str.40), !dbg !3483
  %length175 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 2, !dbg !3484
  %66 = load i32, ptr %length175, align 8, !dbg !3484
  %used176 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3484
  %67 = load i32, ptr %used176, align 4, !dbg !3484
  %sub177 = sub i32 %66, %67, !dbg !3484
  %cmp178 = icmp eq i32 %sub177, 0, !dbg !3486
  br i1 %cmp178, label %if.then180, label %if.end181, !dbg !3487

if.then180:                                       ; preds = %do.end173
  %68 = load ptr, ptr %path.addr, align 8, !dbg !3488
  call void (ptr, ...) @fatal(ptr noundef @.str.34, ptr noundef %68) #15, !dbg !3490
  unreachable, !dbg !3490

if.end181:                                        ; preds = %do.end173
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefix) #14, !dbg !3491
  br label %if.end182, !dbg !3492

if.end182:                                        ; preds = %if.end181, %do.end48
  %length183 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 2, !dbg !3493
  %69 = load i32, ptr %length183, align 8, !dbg !3493
  %used184 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3493
  %70 = load i32, ptr %used184, align 4, !dbg !3493
  %sub185 = sub i32 %69, %70, !dbg !3493
  %conv186 = zext i32 %sub185 to i64, !dbg !3493
  %71 = load ptr, ptr %suffix.addr, align 8, !dbg !3495
  %call187 = call i64 @strlen(ptr noundef %71) #17, !dbg !3496
  %cmp188 = icmp ule i64 %conv186, %call187, !dbg !3497
  br i1 %cmp188, label %if.then190, label %if.end191, !dbg !3498

if.then190:                                       ; preds = %if.end182
  %72 = load ptr, ptr %path.addr, align 8, !dbg !3499
  call void (ptr, ...) @fatal(ptr noundef @.str.34, ptr noundef %72) #15, !dbg !3501
  unreachable, !dbg !3501

if.end191:                                        ; preds = %if.end182
  br label %do.body192, !dbg !3502

do.body192:                                       ; preds = %if.end191
  call void @llvm.lifetime.start.p0(i64 4, ptr %_length193) #14, !dbg !3503
  tail call void @llvm.dbg.declare(metadata ptr %_length193, metadata !3408, metadata !DIExpression()), !dbg !3503
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp194) #14, !dbg !3503
  tail call void @llvm.dbg.declare(metadata ptr %_cp194, metadata !3410, metadata !DIExpression()), !dbg !3503
  %73 = load ptr, ptr %suffix.addr, align 8, !dbg !3503
  %call195 = call i64 @strlen(ptr noundef %73) #17, !dbg !3503
  %conv196 = trunc i64 %call195 to i32, !dbg !3503
  store i32 %conv196, ptr %_length193, align 4, !dbg !3503
  %autore197 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 8, !dbg !3504
  %74 = load i8, ptr %autore197, align 8, !dbg !3504, !range !1278, !noundef !1279
  %tobool198 = trunc i8 %74 to i1, !dbg !3504
  %lnot199 = xor i1 %tobool198, true, !dbg !3504
  %lnot201 = xor i1 %lnot199, true, !dbg !3504
  %lnot.ext202 = zext i1 %lnot201 to i32, !dbg !3504
  %conv203 = sext i32 %lnot.ext202 to i64, !dbg !3504
  %expval204 = call i64 @llvm.expect.i64(i64 %conv203, i64 0), !dbg !3504
  %tobool205 = icmp ne i64 %expval204, 0, !dbg !3504
  br i1 %tobool205, label %if.then206, label %if.end221, !dbg !3503

if.then206:                                       ; preds = %do.body192
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp207) #14, !dbg !3505
  tail call void @llvm.dbg.declare(metadata ptr %_tmp207, metadata !3411, metadata !DIExpression()), !dbg !3505
  store ptr %buf, ptr %_tmp207, align 8, !dbg !3505
  %75 = load i32, ptr %_length193, align 4, !dbg !3505
  %call208 = call i32 @isc_buffer_reserve(ptr noundef %_tmp207, i32 noundef %75), !dbg !3505
  %cmp209 = icmp eq i32 %call208, 0, !dbg !3505
  %lnot211 = xor i1 %cmp209, true, !dbg !3505
  %lnot213 = xor i1 %lnot211, true, !dbg !3505
  %lnot.ext214 = zext i1 %lnot213 to i32, !dbg !3505
  %conv215 = sext i32 %lnot.ext214 to i64, !dbg !3505
  %expval216 = call i64 @llvm.expect.i64(i64 %conv215, i64 1), !dbg !3505
  %tobool217 = icmp ne i64 %expval216, 0, !dbg !3505
  br i1 %tobool217, label %lor.end219, label %lor.rhs218, !dbg !3505

lor.rhs218:                                       ; preds = %if.then206
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 327, i32 noundef 0, ptr noundef @.str.36) #15, !dbg !3505
  unreachable, !dbg !3505

76:                                               ; No predecessors!
  br label %lor.end219, !dbg !3505

lor.end219:                                       ; preds = %76, %if.then206
  %77 = phi i1 [ true, %if.then206 ], [ false, %76 ]
  %lor.ext220 = zext i1 %77 to i32, !dbg !3505
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp207) #14, !dbg !3504
  br label %if.end221, !dbg !3505

if.end221:                                        ; preds = %lor.end219, %do.body192
  %length222 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 2, !dbg !3503
  %78 = load i32, ptr %length222, align 8, !dbg !3503
  %used223 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3503
  %79 = load i32, ptr %used223, align 4, !dbg !3503
  %sub224 = sub i32 %78, %79, !dbg !3503
  %80 = load i32, ptr %_length193, align 4, !dbg !3503
  %cmp225 = icmp uge i32 %sub224, %80, !dbg !3503
  %lnot227 = xor i1 %cmp225, true, !dbg !3503
  %lnot229 = xor i1 %lnot227, true, !dbg !3503
  %lnot.ext230 = zext i1 %lnot229 to i32, !dbg !3503
  %conv231 = sext i32 %lnot.ext230 to i64, !dbg !3503
  %expval232 = call i64 @llvm.expect.i64(i64 %conv231, i64 1), !dbg !3503
  %tobool233 = icmp ne i64 %expval232, 0, !dbg !3503
  br i1 %tobool233, label %lor.end235, label %lor.rhs234, !dbg !3503

lor.rhs234:                                       ; preds = %if.end221
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 327, i32 noundef 0, ptr noundef @.str.37) #15, !dbg !3503
  unreachable, !dbg !3503

81:                                               ; No predecessors!
  br label %lor.end235, !dbg !3503

lor.end235:                                       ; preds = %81, %if.end221
  %82 = phi i1 [ true, %if.end221 ], [ false, %81 ]
  %lor.ext236 = zext i1 %82 to i32, !dbg !3503
  %base237 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 1, !dbg !3503
  %83 = load ptr, ptr %base237, align 8, !dbg !3503
  %used238 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3503
  %84 = load i32, ptr %used238, align 4, !dbg !3503
  %idx.ext239 = zext i32 %84 to i64, !dbg !3503
  %add.ptr240 = getelementptr inbounds i8, ptr %83, i64 %idx.ext239, !dbg !3503
  store ptr %add.ptr240, ptr %_cp194, align 8, !dbg !3503
  %85 = load ptr, ptr %_cp194, align 8, !dbg !3503
  %86 = load ptr, ptr %suffix.addr, align 8, !dbg !3503
  %87 = load i32, ptr %_length193, align 4, !dbg !3503
  %conv241 = zext i32 %87 to i64, !dbg !3503
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %85, ptr align 1 %86, i64 %conv241, i1 false), !dbg !3503
  %88 = load i32, ptr %_length193, align 4, !dbg !3503
  %used242 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3503
  %89 = load i32, ptr %used242, align 4, !dbg !3503
  %add243 = add i32 %89, %88, !dbg !3503
  store i32 %add243, ptr %used242, align 4, !dbg !3503
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp194) #14, !dbg !3502
  call void @llvm.lifetime.end.p0(i64 4, ptr %_length193) #14, !dbg !3502
  br label %do.cond244, !dbg !3503

do.cond244:                                       ; preds = %lor.end235
  br label %do.end245, !dbg !3503

do.end245:                                        ; preds = %do.cond244
  br label %do.body246, !dbg !3506

do.body246:                                       ; preds = %do.end245
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp247) #14, !dbg !3507
  tail call void @llvm.dbg.declare(metadata ptr %_cp247, metadata !3414, metadata !DIExpression()), !dbg !3507
  call void @llvm.lifetime.start.p0(i64 1, ptr %_val2) #14, !dbg !3507
  tail call void @llvm.dbg.declare(metadata ptr %_val2, metadata !3416, metadata !DIExpression()), !dbg !3507
  store i8 0, ptr %_val2, align 1, !dbg !3507
  %autore248 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 8, !dbg !3508
  %90 = load i8, ptr %autore248, align 8, !dbg !3508, !range !1278, !noundef !1279
  %tobool249 = trunc i8 %90 to i1, !dbg !3508
  %lnot250 = xor i1 %tobool249, true, !dbg !3508
  %lnot252 = xor i1 %lnot250, true, !dbg !3508
  %lnot.ext253 = zext i1 %lnot252 to i32, !dbg !3508
  %conv254 = sext i32 %lnot.ext253 to i64, !dbg !3508
  %expval255 = call i64 @llvm.expect.i64(i64 %conv254, i64 0), !dbg !3508
  %tobool256 = icmp ne i64 %expval255, 0, !dbg !3508
  br i1 %tobool256, label %if.then257, label %if.end272, !dbg !3507

if.then257:                                       ; preds = %do.body246
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp258) #14, !dbg !3509
  tail call void @llvm.dbg.declare(metadata ptr %_tmp258, metadata !3417, metadata !DIExpression()), !dbg !3509
  store ptr %buf, ptr %_tmp258, align 8, !dbg !3509
  %call259 = call i32 @isc_buffer_reserve(ptr noundef %_tmp258, i32 noundef 1), !dbg !3509
  %cmp260 = icmp eq i32 %call259, 0, !dbg !3509
  %lnot262 = xor i1 %cmp260, true, !dbg !3509
  %lnot264 = xor i1 %lnot262, true, !dbg !3509
  %lnot.ext265 = zext i1 %lnot264 to i32, !dbg !3509
  %conv266 = sext i32 %lnot.ext265 to i64, !dbg !3509
  %expval267 = call i64 @llvm.expect.i64(i64 %conv266, i64 1), !dbg !3509
  %tobool268 = icmp ne i64 %expval267, 0, !dbg !3509
  br i1 %tobool268, label %lor.end270, label %lor.rhs269, !dbg !3509

lor.rhs269:                                       ; preds = %if.then257
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 328, i32 noundef 0, ptr noundef @.str.41) #15, !dbg !3509
  unreachable, !dbg !3509

91:                                               ; No predecessors!
  br label %lor.end270, !dbg !3509

lor.end270:                                       ; preds = %91, %if.then257
  %92 = phi i1 [ true, %if.then257 ], [ false, %91 ]
  %lor.ext271 = zext i1 %92 to i32, !dbg !3509
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp258) #14, !dbg !3508
  br label %if.end272, !dbg !3509

if.end272:                                        ; preds = %lor.end270, %do.body246
  %length273 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 2, !dbg !3507
  %93 = load i32, ptr %length273, align 8, !dbg !3507
  %used274 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3507
  %94 = load i32, ptr %used274, align 4, !dbg !3507
  %sub275 = sub i32 %93, %94, !dbg !3507
  %cmp276 = icmp uge i32 %sub275, 1, !dbg !3507
  %lnot278 = xor i1 %cmp276, true, !dbg !3507
  %lnot280 = xor i1 %lnot278, true, !dbg !3507
  %lnot.ext281 = zext i1 %lnot280 to i32, !dbg !3507
  %conv282 = sext i32 %lnot.ext281 to i64, !dbg !3507
  %expval283 = call i64 @llvm.expect.i64(i64 %conv282, i64 1), !dbg !3507
  %tobool284 = icmp ne i64 %expval283, 0, !dbg !3507
  br i1 %tobool284, label %lor.end286, label %lor.rhs285, !dbg !3507

lor.rhs285:                                       ; preds = %if.end272
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 328, i32 noundef 0, ptr noundef @.str.42) #15, !dbg !3507
  unreachable, !dbg !3507

95:                                               ; No predecessors!
  br label %lor.end286, !dbg !3507

lor.end286:                                       ; preds = %95, %if.end272
  %96 = phi i1 [ true, %if.end272 ], [ false, %95 ]
  %lor.ext287 = zext i1 %96 to i32, !dbg !3507
  %base288 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 1, !dbg !3507
  %97 = load ptr, ptr %base288, align 8, !dbg !3507
  %used289 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3507
  %98 = load i32, ptr %used289, align 4, !dbg !3507
  %idx.ext290 = zext i32 %98 to i64, !dbg !3507
  %add.ptr291 = getelementptr inbounds i8, ptr %97, i64 %idx.ext290, !dbg !3507
  store ptr %add.ptr291, ptr %_cp247, align 8, !dbg !3507
  %used292 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !3507
  %99 = load i32, ptr %used292, align 4, !dbg !3507
  %inc = add i32 %99, 1, !dbg !3507
  store i32 %inc, ptr %used292, align 4, !dbg !3507
  %100 = load i8, ptr %_val2, align 1, !dbg !3507
  %101 = load ptr, ptr %_cp247, align 8, !dbg !3507
  %arrayidx293 = getelementptr inbounds i8, ptr %101, i64 0, !dbg !3507
  store i8 %100, ptr %arrayidx293, align 1, !dbg !3507
  call void @llvm.lifetime.end.p0(i64 1, ptr %_val2) #14, !dbg !3506
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp247) #14, !dbg !3506
  br label %do.cond294, !dbg !3507

do.cond294:                                       ; preds = %lor.end286
  br label %do.end295, !dbg !3507

do.end295:                                        ; preds = %do.cond294
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #14, !dbg !3510
  call void @llvm.lifetime.end.p0(i64 64, ptr %buf) #14, !dbg !3510
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !3510
  ret void, !dbg !3510
}

; Function Attrs: null_pointer_is_valid
declare !dbg !3511 i32 @isc_file_getmodtime(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3516 i32 @isc_time_seconds(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3521 void @isc_stdtime_get(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3525 i32 @strtotime(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @load_db(ptr noundef %filename, ptr noundef %dbp, ptr noundef %nodep) #0 !dbg !3532 {
entry:
  %filename.addr = alloca ptr, align 8
  %dbp.addr = alloca ptr, align 8
  %nodep.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !3536, metadata !DIExpression()), !dbg !3540
  store ptr %dbp, ptr %dbp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dbp.addr, metadata !3537, metadata !DIExpression()), !dbg !3541
  store ptr %nodep, ptr %nodep.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %nodep.addr, metadata !3538, metadata !DIExpression()), !dbg !3542
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !3543
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !3539, metadata !DIExpression()), !dbg !3544
  %0 = load ptr, ptr @mctx, align 8, !dbg !3545
  %1 = load ptr, ptr @name, align 8, !dbg !3546
  %2 = load i16, ptr @rdclass, align 2, !dbg !3547
  %3 = load ptr, ptr %dbp.addr, align 8, !dbg !3548
  %call = call i32 @dns_db_create(ptr noundef %0, ptr noundef @.str.43, ptr noundef %1, i32 noundef 0, i16 noundef zeroext %2, i32 noundef 0, ptr noundef null, ptr noundef %3), !dbg !3549
  store i32 %call, ptr %result, align 4, !dbg !3550
  %4 = load i32, ptr %result, align 4, !dbg !3551
  call void @check_result(i32 noundef %4, ptr noundef @.str.44), !dbg !3552
  %5 = load ptr, ptr %dbp.addr, align 8, !dbg !3553
  %6 = load ptr, ptr %5, align 8, !dbg !3554
  %7 = load ptr, ptr %filename.addr, align 8, !dbg !3555
  %call1 = call i32 @dns_db_load(ptr noundef %6, ptr noundef %7, i32 noundef 1, i32 noundef 16), !dbg !3556
  store i32 %call1, ptr %result, align 4, !dbg !3557
  %8 = load i32, ptr %result, align 4, !dbg !3558
  %cmp = icmp ne i32 %8, 0, !dbg !3560
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3561

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, ptr %result, align 4, !dbg !3562
  %cmp2 = icmp ne i32 %9, 65602, !dbg !3563
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3564

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %filename.addr, align 8, !dbg !3565
  %11 = load i32, ptr %result, align 4, !dbg !3567
  %call3 = call ptr @isc_result_totext(i32 noundef %11), !dbg !3568
  call void (ptr, ...) @fatal(ptr noundef @.str.45, ptr noundef %10, ptr noundef %call3) #15, !dbg !3569
  unreachable, !dbg !3569

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %dbp.addr, align 8, !dbg !3570
  %13 = load ptr, ptr %12, align 8, !dbg !3571
  %14 = load ptr, ptr @name, align 8, !dbg !3572
  %15 = load ptr, ptr %nodep.addr, align 8, !dbg !3573
  %call4 = call i32 @dns_db_findnode(ptr noundef %13, ptr noundef %14, i1 noundef zeroext false, ptr noundef %15), !dbg !3574
  store i32 %call4, ptr %result, align 4, !dbg !3575
  %16 = load i32, ptr %result, align 4, !dbg !3576
  %cmp5 = icmp ne i32 %16, 0, !dbg !3578
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3579

if.then6:                                         ; preds = %if.end
  %17 = load ptr, ptr @namestr, align 8, !dbg !3580
  %18 = load ptr, ptr %filename.addr, align 8, !dbg !3582
  call void (ptr, ...) @fatal(ptr noundef @.str.46, ptr noundef %17, ptr noundef %18) #15, !dbg !3583
  unreachable, !dbg !3583

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !3584
  ret void, !dbg !3584
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @findset(ptr noundef %db, ptr noundef %node, i16 noundef zeroext %type, ptr noundef %rdataset, ptr noundef %sigrdataset) #0 !dbg !3585 {
entry:
  %db.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %type.addr = alloca i16, align 2
  %rdataset.addr = alloca ptr, align 8
  %sigrdataset.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !3589, metadata !DIExpression()), !dbg !3595
  store ptr %node, ptr %node.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3590, metadata !DIExpression()), !dbg !3596
  store i16 %type, ptr %type.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3591, metadata !DIExpression()), !dbg !3597
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !3592, metadata !DIExpression()), !dbg !3598
  store ptr %sigrdataset, ptr %sigrdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %sigrdataset.addr, metadata !3593, metadata !DIExpression()), !dbg !3599
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !3600
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !3594, metadata !DIExpression()), !dbg !3601
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !3602
  call void @dns_rdataset_init(ptr noundef %0), !dbg !3603
  %1 = load ptr, ptr %sigrdataset.addr, align 8, !dbg !3604
  %cmp = icmp ne ptr %1, null, !dbg !3606
  br i1 %cmp, label %if.then, label %if.end, !dbg !3607

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sigrdataset.addr, align 8, !dbg !3608
  call void @dns_rdataset_init(ptr noundef %2), !dbg !3610
  br label %if.end, !dbg !3611

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %db.addr, align 8, !dbg !3612
  %4 = load ptr, ptr %node.addr, align 8, !dbg !3613
  %5 = load i16, ptr %type.addr, align 2, !dbg !3614
  %6 = load ptr, ptr %rdataset.addr, align 8, !dbg !3615
  %7 = load ptr, ptr %sigrdataset.addr, align 8, !dbg !3616
  %call = call i32 @dns_db_findrdataset(ptr noundef %3, ptr noundef %4, ptr noundef null, i16 noundef zeroext %5, i16 noundef zeroext 0, i32 noundef 0, ptr noundef %6, ptr noundef %7), !dbg !3617
  store i32 %call, ptr %result, align 4, !dbg !3618
  %8 = load i32, ptr %result, align 4, !dbg !3619
  %cmp1 = icmp ne i32 %8, 23, !dbg !3621
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3622

if.then2:                                         ; preds = %if.end
  %9 = load i32, ptr %result, align 4, !dbg !3623
  call void @check_result(i32 noundef %9, ptr noundef @.str.47), !dbg !3625
  br label %if.end3, !dbg !3626

if.end3:                                          ; preds = %if.then2, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !3627
  ret void, !dbg !3627
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @free_db(ptr noundef %dbp, ptr noundef %nodep) #0 !dbg !3628 {
entry:
  %dbp.addr = alloca ptr, align 8
  %nodep.addr = alloca ptr, align 8
  store ptr %dbp, ptr %dbp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dbp.addr, metadata !3632, metadata !DIExpression()), !dbg !3634
  store ptr %nodep, ptr %nodep.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %nodep.addr, metadata !3633, metadata !DIExpression()), !dbg !3635
  %0 = load ptr, ptr %dbp.addr, align 8, !dbg !3636
  %1 = load ptr, ptr %0, align 8, !dbg !3637
  %2 = load ptr, ptr %nodep.addr, align 8, !dbg !3638
  call void @dns_db_detachnode(ptr noundef %1, ptr noundef %2), !dbg !3639
  %3 = load ptr, ptr %dbp.addr, align 8, !dbg !3640
  call void @dns_db_detach(ptr noundef %3), !dbg !3641
  ret void, !dbg !3642
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: null_pointer_is_valid
declare !dbg !3643 i32 @isc_buffer_reserve(ptr noundef, i32 noundef) #2

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !3647 void @isc_assertion_failed(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare !dbg !3651 i32 @isc_file_isdirectory(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3654 i32 @dns_name_tofilenametext(ptr noundef, i1 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3657 void @check_result(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3660 i32 @dns_db_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3664 i32 @dns_db_load(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3667 i32 @dns_db_findnode(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3668 void @dns_rdataset_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3669 i32 @dns_db_findrdataset(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3670 void @dns_db_detachnode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3671 void @dns_db_detach(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3672 i32 @dns_rdataset_count(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3673 ptr @isc__mem_get(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3674 i32 @dns_rdataset_first(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3675 void @dns_rdata_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3678 void @dns_rdataset_current(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3679 i32 @dns_rdata_tostruct(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3682 void @dns_rdata_toregion(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3686 zeroext i16 @dst_region_computeid(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @match_key_dsset(ptr noundef %ki, ptr noundef %dsset, i32 noundef %strictness) #0 !dbg !3691 {
entry:
  %retval = alloca i1, align 1
  %ki.addr = alloca ptr, align 8
  %dsset.addr = alloca ptr, align 8
  %strictness.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %dsbuf = alloca [52 x i8], align 16
  %ds = alloca %struct.dns_rdata_ds, align 8
  %dsrdata = alloca %struct.dns_rdata, align 8
  %newdsrdata = alloca %struct.dns_rdata, align 8
  %c = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ki, ptr %ki.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ki.addr, metadata !3695, metadata !DIExpression()), !dbg !3708
  store ptr %dsset, ptr %dsset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dsset.addr, metadata !3696, metadata !DIExpression()), !dbg !3709
  store i32 %strictness, ptr %strictness.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %strictness.addr, metadata !3697, metadata !DIExpression()), !dbg !3710
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !3711
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !3698, metadata !DIExpression()), !dbg !3712
  call void @llvm.lifetime.start.p0(i64 52, ptr %dsbuf) #14, !dbg !3713
  tail call void @llvm.dbg.declare(metadata ptr %dsbuf, metadata !3699, metadata !DIExpression()), !dbg !3714
  %0 = load ptr, ptr %dsset.addr, align 8, !dbg !3715
  %call = call i32 @dns_rdataset_first(ptr noundef %0), !dbg !3716
  store i32 %call, ptr %result, align 4, !dbg !3717
  br label %for.cond, !dbg !3718

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %result, align 4, !dbg !3719
  %cmp = icmp eq i32 %1, 0, !dbg !3720
  br i1 %cmp, label %for.body, label %for.end, !dbg !3721

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 48, ptr %ds) #14, !dbg !3722
  tail call void @llvm.dbg.declare(metadata ptr %ds, metadata !3701, metadata !DIExpression()), !dbg !3723
  call void @llvm.lifetime.start.p0(i64 40, ptr %dsrdata) #14, !dbg !3724
  tail call void @llvm.dbg.declare(metadata ptr %dsrdata, metadata !3705, metadata !DIExpression()), !dbg !3725
  call void @llvm.memset.p0.i64(ptr align 8 %dsrdata, i8 0, i64 40, i1 false), !dbg !3725
  %2 = getelementptr inbounds %struct.dns_rdata, ptr %dsrdata, i32 0, i32 5, !dbg !3725
  %3 = getelementptr inbounds %struct.anon.9, ptr %2, i32 0, i32 0, !dbg !3725
  store ptr inttoptr (i64 -1 to ptr), ptr %3, align 8, !dbg !3725
  %4 = getelementptr inbounds %struct.anon.9, ptr %2, i32 0, i32 1, !dbg !3725
  store ptr inttoptr (i64 -1 to ptr), ptr %4, align 8, !dbg !3725
  call void @llvm.lifetime.start.p0(i64 40, ptr %newdsrdata) #14, !dbg !3726
  tail call void @llvm.dbg.declare(metadata ptr %newdsrdata, metadata !3706, metadata !DIExpression()), !dbg !3727
  call void @llvm.memset.p0.i64(ptr align 8 %newdsrdata, i8 0, i64 40, i1 false), !dbg !3727
  %5 = getelementptr inbounds %struct.dns_rdata, ptr %newdsrdata, i32 0, i32 5, !dbg !3727
  %6 = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 0, !dbg !3727
  store ptr inttoptr (i64 -1 to ptr), ptr %6, align 8, !dbg !3727
  %7 = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 1, !dbg !3727
  store ptr inttoptr (i64 -1 to ptr), ptr %7, align 8, !dbg !3727
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #14, !dbg !3728
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !3707, metadata !DIExpression()), !dbg !3729
  %8 = load ptr, ptr %dsset.addr, align 8, !dbg !3730
  call void @dns_rdataset_current(ptr noundef %8, ptr noundef %dsrdata), !dbg !3731
  %call1 = call i32 @dns_rdata_tostruct(ptr noundef %dsrdata, ptr noundef %ds, ptr noundef null), !dbg !3732
  store i32 %call1, ptr %result, align 4, !dbg !3733
  %9 = load i32, ptr %result, align 4, !dbg !3734
  call void @check_result(i32 noundef %9, ptr noundef @.str.51), !dbg !3735
  %10 = load ptr, ptr %ki.addr, align 8, !dbg !3736
  %tag = getelementptr inbounds %struct.keyinfo, ptr %10, i32 0, i32 3, !dbg !3738
  %11 = load i16, ptr %tag, align 2, !dbg !3738
  %conv = zext i16 %11 to i32, !dbg !3736
  %key_tag = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 2, !dbg !3739
  %12 = load i16, ptr %key_tag, align 8, !dbg !3739
  %conv2 = zext i16 %12 to i32, !dbg !3740
  %cmp3 = icmp ne i32 %conv, %conv2, !dbg !3741
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !3742

lor.lhs.false:                                    ; preds = %for.body
  %13 = load ptr, ptr %ki.addr, align 8, !dbg !3743
  %algo = getelementptr inbounds %struct.keyinfo, ptr %13, i32 0, i32 2, !dbg !3744
  %14 = load i8, ptr %algo, align 8, !dbg !3744
  %conv5 = zext i8 %14 to i32, !dbg !3743
  %algorithm = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 3, !dbg !3745
  %15 = load i8, ptr %algorithm, align 2, !dbg !3745
  %conv6 = zext i8 %15 to i32, !dbg !3746
  %cmp7 = icmp ne i32 %conv5, %conv6, !dbg !3747
  br i1 %cmp7, label %if.then, label %if.end, !dbg !3748

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3749

if.end:                                           ; preds = %lor.lhs.false
  %16 = load ptr, ptr @name, align 8, !dbg !3751
  %17 = load ptr, ptr %ki.addr, align 8, !dbg !3752
  %rdata = getelementptr inbounds %struct.keyinfo, ptr %17, i32 0, i32 0, !dbg !3753
  %digest_type = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 4, !dbg !3754
  %18 = load i8, ptr %digest_type, align 1, !dbg !3754
  %arraydecay = getelementptr inbounds [52 x i8], ptr %dsbuf, i64 0, i64 0, !dbg !3755
  %call9 = call i32 @dns_ds_buildrdata(ptr noundef %16, ptr noundef %rdata, i8 noundef zeroext %18, ptr noundef %arraydecay, ptr noundef %newdsrdata), !dbg !3756
  store i32 %call9, ptr %result, align 4, !dbg !3757
  %19 = load i32, ptr %result, align 4, !dbg !3758
  %cmp10 = icmp ne i32 %19, 0, !dbg !3760
  br i1 %cmp10, label %if.then12, label %if.end20, !dbg !3761

if.then12:                                        ; preds = %if.end
  %key_tag13 = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 2, !dbg !3762
  %20 = load i16, ptr %key_tag13, align 8, !dbg !3762
  %conv14 = zext i16 %20 to i32, !dbg !3764
  %algorithm15 = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 3, !dbg !3765
  %21 = load i8, ptr %algorithm15, align 2, !dbg !3765
  %conv16 = zext i8 %21 to i32, !dbg !3766
  %digest_type17 = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 4, !dbg !3767
  %22 = load i8, ptr %digest_type17, align 1, !dbg !3767
  %conv18 = zext i8 %22 to i32, !dbg !3768
  %23 = load i32, ptr %result, align 4, !dbg !3769
  %call19 = call ptr @dns_result_totext(i32 noundef %23), !dbg !3770
  call void (i32, ptr, ...) @vbprintf(i32 noundef 3, ptr noundef @.str.52, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %conv18, ptr noundef %call19), !dbg !3771
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3772

if.end20:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.dns_rdata, ptr %dsrdata, i32 0, i32 3, !dbg !3773
  %24 = load i16, ptr %type, align 2, !dbg !3773
  %conv21 = zext i16 %24 to i32, !dbg !3774
  %cmp22 = icmp ne i32 %conv21, 43, !dbg !3775
  %frombool = zext i1 %cmp22 to i8, !dbg !3776
  store i8 %frombool, ptr %c, align 1, !dbg !3776
  %type24 = getelementptr inbounds %struct.dns_rdata, ptr %dsrdata, i32 0, i32 3, !dbg !3777
  store i16 43, ptr %type24, align 2, !dbg !3778
  %call25 = call i32 @dns_rdata_compare(ptr noundef %dsrdata, ptr noundef %newdsrdata), !dbg !3779
  %cmp26 = icmp eq i32 %call25, 0, !dbg !3781
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !3782

if.then28:                                        ; preds = %if.end20
  %25 = load i8, ptr %c, align 1, !dbg !3783, !range !1278, !noundef !1279
  %tobool = trunc i8 %25 to i1, !dbg !3783
  %26 = zext i1 %tobool to i64, !dbg !3783
  %cond = select i1 %tobool, ptr @.str.54, ptr @.str.55, !dbg !3783
  %key_tag30 = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 2, !dbg !3785
  %27 = load i16, ptr %key_tag30, align 8, !dbg !3785
  %conv31 = zext i16 %27 to i32, !dbg !3786
  %algorithm32 = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 3, !dbg !3787
  %28 = load i8, ptr %algorithm32, align 2, !dbg !3787
  %conv33 = zext i8 %28 to i32, !dbg !3788
  %digest_type34 = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 4, !dbg !3789
  %29 = load i8, ptr %digest_type34, align 1, !dbg !3789
  %conv35 = zext i8 %29 to i32, !dbg !3790
  call void (i32, ptr, ...) @vbprintf(i32 noundef 1, ptr noundef @.str.53, ptr noundef %cond, i32 noundef %conv31, i32 noundef %conv33, i32 noundef %conv35), !dbg !3791
  store i1 true, ptr %retval, align 1, !dbg !3792
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3792

if.else:                                          ; preds = %if.end20
  %30 = load i32, ptr %strictness.addr, align 4, !dbg !3793
  %cmp36 = icmp eq i32 %30, 1, !dbg !3795
  br i1 %cmp36, label %if.then38, label %if.end48, !dbg !3796

if.then38:                                        ; preds = %if.else
  %31 = load i8, ptr %c, align 1, !dbg !3797, !range !1278, !noundef !1279
  %tobool39 = trunc i8 %31 to i1, !dbg !3797
  %32 = zext i1 %tobool39 to i64, !dbg !3797
  %cond41 = select i1 %tobool39, ptr @.str.54, ptr @.str.55, !dbg !3797
  %key_tag42 = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 2, !dbg !3799
  %33 = load i16, ptr %key_tag42, align 8, !dbg !3799
  %conv43 = zext i16 %33 to i32, !dbg !3800
  %algorithm44 = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 3, !dbg !3801
  %34 = load i8, ptr %algorithm44, align 2, !dbg !3801
  %conv45 = zext i8 %34 to i32, !dbg !3802
  %digest_type46 = getelementptr inbounds %struct.dns_rdata_ds, ptr %ds, i32 0, i32 4, !dbg !3803
  %35 = load i8, ptr %digest_type46, align 1, !dbg !3803
  %conv47 = zext i8 %35 to i32, !dbg !3804
  call void (i32, ptr, ...) @vbprintf(i32 noundef 0, ptr noundef @.str.56, ptr noundef %cond41, i32 noundef %conv43, i32 noundef %conv45, i32 noundef %conv47), !dbg !3805
  store i1 false, ptr %retval, align 1, !dbg !3806
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3806

if.end48:                                         ; preds = %if.else
  br label %if.end49

if.end49:                                         ; preds = %if.end48
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3807
  br label %cleanup, !dbg !3807

cleanup:                                          ; preds = %if.end49, %if.then38, %if.then28, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #14, !dbg !3807
  call void @llvm.lifetime.end.p0(i64 40, ptr %newdsrdata) #14, !dbg !3807
  call void @llvm.lifetime.end.p0(i64 40, ptr %dsrdata) #14, !dbg !3807
  call void @llvm.lifetime.end.p0(i64 48, ptr %ds) #14, !dbg !3807
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup69 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3808

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %36 = load ptr, ptr %dsset.addr, align 8, !dbg !3809
  %call53 = call i32 @dns_rdataset_next(ptr noundef %36), !dbg !3810
  store i32 %call53, ptr %result, align 4, !dbg !3811
  br label %for.cond, !dbg !3812, !llvm.loop !3813

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %dsset.addr, align 8, !dbg !3815
  %type54 = getelementptr inbounds %struct.dns_rdataset, ptr %37, i32 0, i32 4, !dbg !3816
  %38 = load i16, ptr %type54, align 2, !dbg !3816
  %conv55 = zext i16 %38 to i32, !dbg !3815
  %cmp56 = icmp eq i32 %conv55, 59, !dbg !3817
  %39 = zext i1 %cmp56 to i64, !dbg !3815
  %cond58 = select i1 %cmp56, ptr @.str.54, ptr @.str.55, !dbg !3815
  %40 = load ptr, ptr %ki.addr, align 8, !dbg !3818
  %rdata59 = getelementptr inbounds %struct.keyinfo, ptr %40, i32 0, i32 0, !dbg !3819
  %type60 = getelementptr inbounds %struct.dns_rdata, ptr %rdata59, i32 0, i32 3, !dbg !3820
  %41 = load i16, ptr %type60, align 2, !dbg !3820
  %conv61 = zext i16 %41 to i32, !dbg !3818
  %cmp62 = icmp eq i32 %conv61, 60, !dbg !3821
  %42 = zext i1 %cmp62 to i64, !dbg !3818
  %cond64 = select i1 %cmp62, ptr @.str.58, ptr @.str.59, !dbg !3818
  %43 = load ptr, ptr %ki.addr, align 8, !dbg !3822
  %tag65 = getelementptr inbounds %struct.keyinfo, ptr %43, i32 0, i32 3, !dbg !3823
  %44 = load i16, ptr %tag65, align 2, !dbg !3823
  %conv66 = zext i16 %44 to i32, !dbg !3822
  %45 = load ptr, ptr %ki.addr, align 8, !dbg !3824
  %algo67 = getelementptr inbounds %struct.keyinfo, ptr %45, i32 0, i32 2, !dbg !3825
  %46 = load i8, ptr %algo67, align 8, !dbg !3825
  %conv68 = zext i8 %46 to i32, !dbg !3824
  call void (i32, ptr, ...) @vbprintf(i32 noundef 1, ptr noundef @.str.57, ptr noundef %cond58, ptr noundef %cond64, i32 noundef %conv66, i32 noundef %conv68), !dbg !3826
  store i1 false, ptr %retval, align 1, !dbg !3827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !3827

cleanup69:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 52, ptr %dsbuf) #14, !dbg !3828
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !3828
  %47 = load i1, ptr %retval, align 1, !dbg !3828
  ret i1 %47, !dbg !3828
}

; Function Attrs: null_pointer_is_valid
declare !dbg !3829 i32 @dns_dnssec_keyfromrdata(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3834 ptr @dns_result_totext(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3835 i32 @dns_rdataset_next(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare !dbg !3836 i32 @dns_ds_buildrdata(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3840 i32 @dns_rdata_compare(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3843 void @isc__mem_put(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3844 zeroext i1 @isc_serial_lt(i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3848 zeroext i1 @dns_name_equal(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3851 i32 @dns_dnssec_verify(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare !dbg !3854 void @dst_key_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3857 i32 @dns_time64_totext(i64 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal ptr @formatset(ptr noundef %rdataset) #0 !dbg !3861 {
entry:
  %rdataset.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %buf = alloca ptr, align 8
  %style = alloca ptr, align 8
  %styleflags = alloca i32, align 4
  %_cp = alloca ptr, align 8
  %_val2 = alloca i8, align 1
  %_tmp = alloca ptr, align 8
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !3865, metadata !DIExpression()), !dbg !3880
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !3881
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !3866, metadata !DIExpression()), !dbg !3882
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #14, !dbg !3883
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !3867, metadata !DIExpression()), !dbg !3884
  store ptr null, ptr %buf, align 8, !dbg !3884
  call void @llvm.lifetime.start.p0(i64 8, ptr %style) #14, !dbg !3885
  tail call void @llvm.dbg.declare(metadata ptr %style, metadata !3868, metadata !DIExpression()), !dbg !3886
  store ptr null, ptr %style, align 8, !dbg !3886
  call void @llvm.lifetime.start.p0(i64 4, ptr %styleflags) #14, !dbg !3887
  tail call void @llvm.dbg.declare(metadata ptr %styleflags, metadata !3873, metadata !DIExpression()), !dbg !3888
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !3889
  %ttl = getelementptr inbounds %struct.dns_rdataset, ptr %0, i32 0, i32 5, !dbg !3890
  %1 = load i32, ptr %ttl, align 4, !dbg !3890
  %cmp = icmp eq i32 %1, 0, !dbg !3891
  %2 = zext i1 %cmp to i64, !dbg !3892
  %cond = select i1 %cmp, i64 16777216, i64 0, !dbg !3892
  %conv = trunc i64 %cond to i32, !dbg !3892
  store i32 %conv, ptr %styleflags, align 4, !dbg !3893
  %3 = load i32, ptr %styleflags, align 4, !dbg !3894
  %conv1 = zext i32 %3 to i64, !dbg !3894
  %4 = load ptr, ptr @mctx, align 8, !dbg !3895
  %call = call i32 @dns_master_stylecreate(ptr noundef %style, i64 noundef %conv1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1000000, i32 noundef 0, ptr noundef %4), !dbg !3896
  store i32 %call, ptr %result, align 4, !dbg !3897
  %5 = load i32, ptr %result, align 4, !dbg !3898
  call void @check_result(i32 noundef %5, ptr noundef @.str.77), !dbg !3899
  %6 = load ptr, ptr @mctx, align 8, !dbg !3900
  %call2 = call i32 @isc_buffer_allocate(ptr noundef %6, ptr noundef %buf, i32 noundef 131024), !dbg !3901
  store i32 %call2, ptr %result, align 4, !dbg !3902
  %7 = load i32, ptr %result, align 4, !dbg !3903
  call void @check_result(i32 noundef %7, ptr noundef @.str.78), !dbg !3904
  %8 = load ptr, ptr @name, align 8, !dbg !3905
  %9 = load ptr, ptr %rdataset.addr, align 8, !dbg !3906
  %10 = load ptr, ptr %style, align 8, !dbg !3907
  %11 = load ptr, ptr %buf, align 8, !dbg !3908
  %call3 = call i32 @dns_master_rdatasettotext(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !3909
  store i32 %call3, ptr %result, align 4, !dbg !3910
  %12 = load i32, ptr %result, align 4, !dbg !3911
  %cmp4 = icmp eq i32 %12, 0, !dbg !3913
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !3914

land.lhs.true:                                    ; preds = %entry
  %13 = load ptr, ptr %buf, align 8, !dbg !3915
  %length = getelementptr inbounds %struct.isc_buffer, ptr %13, i32 0, i32 2, !dbg !3915
  %14 = load i32, ptr %length, align 8, !dbg !3915
  %15 = load ptr, ptr %buf, align 8, !dbg !3915
  %used = getelementptr inbounds %struct.isc_buffer, ptr %15, i32 0, i32 3, !dbg !3915
  %16 = load i32, ptr %used, align 4, !dbg !3915
  %sub = sub i32 %14, %16, !dbg !3915
  %cmp6 = icmp ult i32 %sub, 1, !dbg !3916
  br i1 %cmp6, label %if.then, label %if.end, !dbg !3917

if.then:                                          ; preds = %land.lhs.true
  store i32 19, ptr %result, align 4, !dbg !3918
  br label %if.end, !dbg !3920

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %17 = load i32, ptr %result, align 4, !dbg !3921
  call void @check_result(i32 noundef %17, ptr noundef @.str.79), !dbg !3922
  br label %do.body, !dbg !3923

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp) #14, !dbg !3924
  tail call void @llvm.dbg.declare(metadata ptr %_cp, metadata !3874, metadata !DIExpression()), !dbg !3924
  call void @llvm.lifetime.start.p0(i64 1, ptr %_val2) #14, !dbg !3924
  tail call void @llvm.dbg.declare(metadata ptr %_val2, metadata !3876, metadata !DIExpression()), !dbg !3924
  store i8 0, ptr %_val2, align 1, !dbg !3924
  %18 = load ptr, ptr %buf, align 8, !dbg !3925
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %18, i32 0, i32 8, !dbg !3925
  %19 = load i8, ptr %autore, align 8, !dbg !3925, !range !1278, !noundef !1279
  %tobool = trunc i8 %19 to i1, !dbg !3925
  %lnot = xor i1 %tobool, true, !dbg !3925
  %lnot8 = xor i1 %lnot, true, !dbg !3925
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !3925
  %conv9 = sext i32 %lnot.ext to i64, !dbg !3925
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !3925
  %tobool10 = icmp ne i64 %expval, 0, !dbg !3925
  br i1 %tobool10, label %if.then11, label %if.end22, !dbg !3924

if.then11:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp) #14, !dbg !3926
  tail call void @llvm.dbg.declare(metadata ptr %_tmp, metadata !3877, metadata !DIExpression()), !dbg !3926
  %20 = load ptr, ptr %buf, align 8, !dbg !3926
  store ptr %20, ptr %_tmp, align 8, !dbg !3926
  %call12 = call i32 @isc_buffer_reserve(ptr noundef %_tmp, i32 noundef 1), !dbg !3926
  %cmp13 = icmp eq i32 %call12, 0, !dbg !3926
  %lnot15 = xor i1 %cmp13, true, !dbg !3926
  %lnot17 = xor i1 %lnot15, true, !dbg !3926
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !3926
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !3926
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 1), !dbg !3926
  %tobool21 = icmp ne i64 %expval20, 0, !dbg !3926
  br i1 %tobool21, label %lor.end, label %lor.rhs, !dbg !3926

lor.rhs:                                          ; preds = %if.then11
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 396, i32 noundef 0, ptr noundef @.str.41) #15, !dbg !3926
  unreachable, !dbg !3926

21:                                               ; No predecessors!
  br label %lor.end, !dbg !3926

lor.end:                                          ; preds = %21, %if.then11
  %22 = phi i1 [ true, %if.then11 ], [ false, %21 ]
  %lor.ext = zext i1 %22 to i32, !dbg !3926
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp) #14, !dbg !3925
  br label %if.end22, !dbg !3926

if.end22:                                         ; preds = %lor.end, %do.body
  %23 = load ptr, ptr %buf, align 8, !dbg !3924
  %length23 = getelementptr inbounds %struct.isc_buffer, ptr %23, i32 0, i32 2, !dbg !3924
  %24 = load i32, ptr %length23, align 8, !dbg !3924
  %25 = load ptr, ptr %buf, align 8, !dbg !3924
  %used24 = getelementptr inbounds %struct.isc_buffer, ptr %25, i32 0, i32 3, !dbg !3924
  %26 = load i32, ptr %used24, align 4, !dbg !3924
  %sub25 = sub i32 %24, %26, !dbg !3924
  %cmp26 = icmp uge i32 %sub25, 1, !dbg !3924
  %lnot28 = xor i1 %cmp26, true, !dbg !3924
  %lnot30 = xor i1 %lnot28, true, !dbg !3924
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !3924
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !3924
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 1), !dbg !3924
  %tobool34 = icmp ne i64 %expval33, 0, !dbg !3924
  br i1 %tobool34, label %lor.end36, label %lor.rhs35, !dbg !3924

lor.rhs35:                                        ; preds = %if.end22
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 396, i32 noundef 0, ptr noundef @.str.80) #15, !dbg !3924
  unreachable, !dbg !3924

27:                                               ; No predecessors!
  br label %lor.end36, !dbg !3924

lor.end36:                                        ; preds = %27, %if.end22
  %28 = phi i1 [ true, %if.end22 ], [ false, %27 ]
  %lor.ext37 = zext i1 %28 to i32, !dbg !3924
  %29 = load ptr, ptr %buf, align 8, !dbg !3924
  %base = getelementptr inbounds %struct.isc_buffer, ptr %29, i32 0, i32 1, !dbg !3924
  %30 = load ptr, ptr %base, align 8, !dbg !3924
  %31 = load ptr, ptr %buf, align 8, !dbg !3924
  %used38 = getelementptr inbounds %struct.isc_buffer, ptr %31, i32 0, i32 3, !dbg !3924
  %32 = load i32, ptr %used38, align 4, !dbg !3924
  %idx.ext = zext i32 %32 to i64, !dbg !3924
  %add.ptr = getelementptr inbounds i8, ptr %30, i64 %idx.ext, !dbg !3924
  store ptr %add.ptr, ptr %_cp, align 8, !dbg !3924
  %33 = load ptr, ptr %buf, align 8, !dbg !3924
  %used39 = getelementptr inbounds %struct.isc_buffer, ptr %33, i32 0, i32 3, !dbg !3924
  %34 = load i32, ptr %used39, align 4, !dbg !3924
  %inc = add i32 %34, 1, !dbg !3924
  store i32 %inc, ptr %used39, align 4, !dbg !3924
  %35 = load i8, ptr %_val2, align 1, !dbg !3924
  %36 = load ptr, ptr %_cp, align 8, !dbg !3924
  %arrayidx = getelementptr inbounds i8, ptr %36, i64 0, !dbg !3924
  store i8 %35, ptr %arrayidx, align 1, !dbg !3924
  call void @llvm.lifetime.end.p0(i64 1, ptr %_val2) #14, !dbg !3923
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp) #14, !dbg !3923
  br label %do.cond, !dbg !3924

do.cond:                                          ; preds = %lor.end36
  br label %do.end, !dbg !3924

do.end:                                           ; preds = %do.cond
  %37 = load ptr, ptr @mctx, align 8, !dbg !3927
  call void @dns_master_styledestroy(ptr noundef %style, ptr noundef %37), !dbg !3928
  %38 = load ptr, ptr %buf, align 8, !dbg !3929
  call void @llvm.lifetime.end.p0(i64 4, ptr %styleflags) #14, !dbg !3930
  call void @llvm.lifetime.end.p0(i64 8, ptr %style) #14, !dbg !3930
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #14, !dbg !3930
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !3930
  ret ptr %38, !dbg !3931
}

; Function Attrs: null_pointer_is_valid
declare !dbg !3932 i32 @printf(ptr noundef, ...) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3935 void @isc_buffer_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3938 i32 @fflush(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !3941 ptr @strerror(i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(none)
declare !dbg !3944 ptr @__errno_location() #11

; Function Attrs: null_pointer_is_valid
declare !dbg !3949 i32 @isc_file_openunique(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3953 i32 @fclose(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3954 i32 @isc_file_remove(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3955 void @isc_time_set(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3958 i32 @isc_file_settime(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3959 i32 @isc_file_rename(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3962 i32 @dns_master_stylecreate(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3967 i32 @isc_buffer_allocate(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3970 i32 @dns_master_rdatasettotext(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3975 void @dns_master_styledestroy(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3978 void @dns_rdatalist_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3981 i32 @dns_rdatalist_tordataset(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @freelist(ptr noundef %rdataset) #0 !dbg !3984 {
entry:
  %rdataset.addr = alloca ptr, align 8
  %rdlist = alloca ptr, align 8
  %rdata = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !3986, metadata !DIExpression()), !dbg !3989
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdlist) #14, !dbg !3990
  tail call void @llvm.dbg.declare(metadata ptr %rdlist, metadata !3987, metadata !DIExpression()), !dbg !3991
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdata) #14, !dbg !3992
  tail call void @llvm.dbg.declare(metadata ptr %rdata, metadata !3988, metadata !DIExpression()), !dbg !3993
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !3994
  %call = call zeroext i1 @dns_rdataset_isassociated(ptr noundef %0), !dbg !3996
  br i1 %call, label %if.end, label %if.then, !dbg !3997

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3998

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rdataset.addr, align 8, !dbg !4000
  %call1 = call i32 @dns_rdatalist_fromrdataset(ptr noundef %1, ptr noundef %rdlist), !dbg !4001
  %2 = load ptr, ptr %rdlist, align 8, !dbg !4002
  %rdata2 = getelementptr inbounds %struct.dns_rdatalist, ptr %2, i32 0, i32 4, !dbg !4002
  %head = getelementptr inbounds %struct.anon.10, ptr %rdata2, i32 0, i32 0, !dbg !4002
  %3 = load ptr, ptr %head, align 8, !dbg !4002
  store ptr %3, ptr %rdata, align 8, !dbg !4004
  br label %for.cond, !dbg !4005

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %rdata, align 8, !dbg !4006
  %cmp = icmp ne ptr %4, null, !dbg !4008
  br i1 %cmp, label %for.body, label %for.end, !dbg !4009

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !4010

do.body:                                          ; preds = %for.body
  br label %do.body3, !dbg !4012

do.body3:                                         ; preds = %do.body
  %5 = load ptr, ptr %rdata, align 8, !dbg !4014
  %link = getelementptr inbounds %struct.dns_rdata, ptr %5, i32 0, i32 5, !dbg !4014
  %next = getelementptr inbounds %struct.anon.9, ptr %link, i32 0, i32 1, !dbg !4014
  %6 = load ptr, ptr %next, align 8, !dbg !4014
  %cmp4 = icmp ne ptr %6, null, !dbg !4014
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !4017

if.then5:                                         ; preds = %do.body3
  %7 = load ptr, ptr %rdata, align 8, !dbg !4014
  %link6 = getelementptr inbounds %struct.dns_rdata, ptr %7, i32 0, i32 5, !dbg !4014
  %prev = getelementptr inbounds %struct.anon.9, ptr %link6, i32 0, i32 0, !dbg !4014
  %8 = load ptr, ptr %prev, align 8, !dbg !4014
  %9 = load ptr, ptr %rdata, align 8, !dbg !4014
  %link7 = getelementptr inbounds %struct.dns_rdata, ptr %9, i32 0, i32 5, !dbg !4014
  %next8 = getelementptr inbounds %struct.anon.9, ptr %link7, i32 0, i32 1, !dbg !4014
  %10 = load ptr, ptr %next8, align 8, !dbg !4014
  %link9 = getelementptr inbounds %struct.dns_rdata, ptr %10, i32 0, i32 5, !dbg !4014
  %prev10 = getelementptr inbounds %struct.anon.9, ptr %link9, i32 0, i32 0, !dbg !4014
  store ptr %8, ptr %prev10, align 8, !dbg !4014
  br label %if.end18, !dbg !4014

if.else:                                          ; preds = %do.body3
  %11 = load ptr, ptr %rdlist, align 8, !dbg !4018
  %rdata11 = getelementptr inbounds %struct.dns_rdatalist, ptr %11, i32 0, i32 4, !dbg !4018
  %tail = getelementptr inbounds %struct.anon.10, ptr %rdata11, i32 0, i32 1, !dbg !4018
  %12 = load ptr, ptr %tail, align 8, !dbg !4018
  %13 = load ptr, ptr %rdata, align 8, !dbg !4018
  %cmp12 = icmp eq ptr %12, %13, !dbg !4018
  %lnot = xor i1 %cmp12, true, !dbg !4018
  %lnot13 = xor i1 %lnot, true, !dbg !4018
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !4018
  %conv = sext i32 %lnot.ext to i64, !dbg !4018
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4018
  %tobool = icmp ne i64 %expval, 0, !dbg !4018
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !4018

lor.rhs:                                          ; preds = %if.else
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 226, i32 noundef 2, ptr noundef @.str.86) #15, !dbg !4018
  unreachable, !dbg !4018

14:                                               ; No predecessors!
  br label %lor.end, !dbg !4018

lor.end:                                          ; preds = %14, %if.else
  %15 = phi i1 [ true, %if.else ], [ false, %14 ]
  %lor.ext = zext i1 %15 to i32, !dbg !4018
  %16 = load ptr, ptr %rdata, align 8, !dbg !4018
  %link14 = getelementptr inbounds %struct.dns_rdata, ptr %16, i32 0, i32 5, !dbg !4018
  %prev15 = getelementptr inbounds %struct.anon.9, ptr %link14, i32 0, i32 0, !dbg !4018
  %17 = load ptr, ptr %prev15, align 8, !dbg !4018
  %18 = load ptr, ptr %rdlist, align 8, !dbg !4018
  %rdata16 = getelementptr inbounds %struct.dns_rdatalist, ptr %18, i32 0, i32 4, !dbg !4018
  %tail17 = getelementptr inbounds %struct.anon.10, ptr %rdata16, i32 0, i32 1, !dbg !4018
  store ptr %17, ptr %tail17, align 8, !dbg !4018
  br label %if.end18

if.end18:                                         ; preds = %lor.end, %if.then5
  %19 = load ptr, ptr %rdata, align 8, !dbg !4020
  %link19 = getelementptr inbounds %struct.dns_rdata, ptr %19, i32 0, i32 5, !dbg !4020
  %prev20 = getelementptr inbounds %struct.anon.9, ptr %link19, i32 0, i32 0, !dbg !4020
  %20 = load ptr, ptr %prev20, align 8, !dbg !4020
  %cmp21 = icmp ne ptr %20, null, !dbg !4020
  br i1 %cmp21, label %if.then23, label %if.else30, !dbg !4017

if.then23:                                        ; preds = %if.end18
  %21 = load ptr, ptr %rdata, align 8, !dbg !4020
  %link24 = getelementptr inbounds %struct.dns_rdata, ptr %21, i32 0, i32 5, !dbg !4020
  %next25 = getelementptr inbounds %struct.anon.9, ptr %link24, i32 0, i32 1, !dbg !4020
  %22 = load ptr, ptr %next25, align 8, !dbg !4020
  %23 = load ptr, ptr %rdata, align 8, !dbg !4020
  %link26 = getelementptr inbounds %struct.dns_rdata, ptr %23, i32 0, i32 5, !dbg !4020
  %prev27 = getelementptr inbounds %struct.anon.9, ptr %link26, i32 0, i32 0, !dbg !4020
  %24 = load ptr, ptr %prev27, align 8, !dbg !4020
  %link28 = getelementptr inbounds %struct.dns_rdata, ptr %24, i32 0, i32 5, !dbg !4020
  %next29 = getelementptr inbounds %struct.anon.9, ptr %link28, i32 0, i32 1, !dbg !4020
  store ptr %22, ptr %next29, align 8, !dbg !4020
  br label %if.end49, !dbg !4020

if.else30:                                        ; preds = %if.end18
  %25 = load ptr, ptr %rdlist, align 8, !dbg !4022
  %rdata31 = getelementptr inbounds %struct.dns_rdatalist, ptr %25, i32 0, i32 4, !dbg !4022
  %head32 = getelementptr inbounds %struct.anon.10, ptr %rdata31, i32 0, i32 0, !dbg !4022
  %26 = load ptr, ptr %head32, align 8, !dbg !4022
  %27 = load ptr, ptr %rdata, align 8, !dbg !4022
  %cmp33 = icmp eq ptr %26, %27, !dbg !4022
  %lnot35 = xor i1 %cmp33, true, !dbg !4022
  %lnot37 = xor i1 %lnot35, true, !dbg !4022
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !4022
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !4022
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 1), !dbg !4022
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !4022
  br i1 %tobool41, label %lor.end43, label %lor.rhs42, !dbg !4022

lor.rhs42:                                        ; preds = %if.else30
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 226, i32 noundef 2, ptr noundef @.str.87) #15, !dbg !4022
  unreachable, !dbg !4022

28:                                               ; No predecessors!
  br label %lor.end43, !dbg !4022

lor.end43:                                        ; preds = %28, %if.else30
  %29 = phi i1 [ true, %if.else30 ], [ false, %28 ]
  %lor.ext44 = zext i1 %29 to i32, !dbg !4022
  %30 = load ptr, ptr %rdata, align 8, !dbg !4022
  %link45 = getelementptr inbounds %struct.dns_rdata, ptr %30, i32 0, i32 5, !dbg !4022
  %next46 = getelementptr inbounds %struct.anon.9, ptr %link45, i32 0, i32 1, !dbg !4022
  %31 = load ptr, ptr %next46, align 8, !dbg !4022
  %32 = load ptr, ptr %rdlist, align 8, !dbg !4022
  %rdata47 = getelementptr inbounds %struct.dns_rdatalist, ptr %32, i32 0, i32 4, !dbg !4022
  %head48 = getelementptr inbounds %struct.anon.10, ptr %rdata47, i32 0, i32 0, !dbg !4022
  store ptr %31, ptr %head48, align 8, !dbg !4022
  br label %if.end49

if.end49:                                         ; preds = %lor.end43, %if.then23
  %33 = load ptr, ptr %rdata, align 8, !dbg !4017
  %link50 = getelementptr inbounds %struct.dns_rdata, ptr %33, i32 0, i32 5, !dbg !4017
  %prev51 = getelementptr inbounds %struct.anon.9, ptr %link50, i32 0, i32 0, !dbg !4017
  store ptr inttoptr (i64 -1 to ptr), ptr %prev51, align 8, !dbg !4017
  %34 = load ptr, ptr %rdata, align 8, !dbg !4017
  %link52 = getelementptr inbounds %struct.dns_rdata, ptr %34, i32 0, i32 5, !dbg !4017
  %next53 = getelementptr inbounds %struct.anon.9, ptr %link52, i32 0, i32 1, !dbg !4017
  store ptr inttoptr (i64 -1 to ptr), ptr %next53, align 8, !dbg !4017
  %35 = load ptr, ptr %rdlist, align 8, !dbg !4017
  %rdata54 = getelementptr inbounds %struct.dns_rdatalist, ptr %35, i32 0, i32 4, !dbg !4017
  %head55 = getelementptr inbounds %struct.anon.10, ptr %rdata54, i32 0, i32 0, !dbg !4017
  %36 = load ptr, ptr %head55, align 8, !dbg !4017
  %37 = load ptr, ptr %rdata, align 8, !dbg !4017
  %cmp56 = icmp ne ptr %36, %37, !dbg !4017
  %lnot58 = xor i1 %cmp56, true, !dbg !4017
  %lnot60 = xor i1 %lnot58, true, !dbg !4017
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !4017
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !4017
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 1), !dbg !4017
  %tobool64 = icmp ne i64 %expval63, 0, !dbg !4017
  br i1 %tobool64, label %lor.end66, label %lor.rhs65, !dbg !4017

lor.rhs65:                                        ; preds = %if.end49
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 226, i32 noundef 2, ptr noundef @.str.88) #15, !dbg !4017
  unreachable, !dbg !4017

38:                                               ; No predecessors!
  br label %lor.end66, !dbg !4017

lor.end66:                                        ; preds = %38, %if.end49
  %39 = phi i1 [ true, %if.end49 ], [ false, %38 ]
  %lor.ext67 = zext i1 %39 to i32, !dbg !4017
  %40 = load ptr, ptr %rdlist, align 8, !dbg !4017
  %rdata68 = getelementptr inbounds %struct.dns_rdatalist, ptr %40, i32 0, i32 4, !dbg !4017
  %tail69 = getelementptr inbounds %struct.anon.10, ptr %rdata68, i32 0, i32 1, !dbg !4017
  %41 = load ptr, ptr %tail69, align 8, !dbg !4017
  %42 = load ptr, ptr %rdata, align 8, !dbg !4017
  %cmp70 = icmp ne ptr %41, %42, !dbg !4017
  %lnot72 = xor i1 %cmp70, true, !dbg !4017
  %lnot74 = xor i1 %lnot72, true, !dbg !4017
  %lnot.ext75 = zext i1 %lnot74 to i32, !dbg !4017
  %conv76 = sext i32 %lnot.ext75 to i64, !dbg !4017
  %expval77 = call i64 @llvm.expect.i64(i64 %conv76, i64 1), !dbg !4017
  %tobool78 = icmp ne i64 %expval77, 0, !dbg !4017
  br i1 %tobool78, label %lor.end80, label %lor.rhs79, !dbg !4017

lor.rhs79:                                        ; preds = %lor.end66
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 226, i32 noundef 2, ptr noundef @.str.89) #15, !dbg !4017
  unreachable, !dbg !4017

43:                                               ; No predecessors!
  br label %lor.end80, !dbg !4017

lor.end80:                                        ; preds = %43, %lor.end66
  %44 = phi i1 [ true, %lor.end66 ], [ false, %43 ]
  %lor.ext81 = zext i1 %44 to i32, !dbg !4017
  br label %do.cond, !dbg !4017

do.cond:                                          ; preds = %lor.end80
  br label %do.end, !dbg !4017

do.end:                                           ; preds = %do.cond
  br label %do.cond82, !dbg !4012

do.cond82:                                        ; preds = %do.end
  br label %do.end83, !dbg !4012

do.end83:                                         ; preds = %do.cond82
  br label %do.body84, !dbg !4024

do.body84:                                        ; preds = %do.end83
  %45 = load ptr, ptr @mctx, align 8, !dbg !4025
  %46 = load ptr, ptr %rdata, align 8, !dbg !4025
  call void @isc__mem_put(ptr noundef %45, ptr noundef %46, i64 noundef 40, ptr noundef @.str.35, i32 noundef 227), !dbg !4025
  store ptr null, ptr %rdata, align 8, !dbg !4025
  br label %do.cond85, !dbg !4025

do.cond85:                                        ; preds = %do.body84
  br label %do.end86, !dbg !4025

do.end86:                                         ; preds = %do.cond85
  br label %for.inc, !dbg !4027

for.inc:                                          ; preds = %do.end86
  %47 = load ptr, ptr %rdlist, align 8, !dbg !4028
  %rdata87 = getelementptr inbounds %struct.dns_rdatalist, ptr %47, i32 0, i32 4, !dbg !4028
  %head88 = getelementptr inbounds %struct.anon.10, ptr %rdata87, i32 0, i32 0, !dbg !4028
  %48 = load ptr, ptr %head88, align 8, !dbg !4028
  store ptr %48, ptr %rdata, align 8, !dbg !4029
  br label %for.cond, !dbg !4030, !llvm.loop !4031

for.end:                                          ; preds = %for.cond
  br label %do.body89, !dbg !4033

do.body89:                                        ; preds = %for.end
  %49 = load ptr, ptr @mctx, align 8, !dbg !4034
  %50 = load ptr, ptr %rdlist, align 8, !dbg !4034
  call void @isc__mem_put(ptr noundef %49, ptr noundef %50, i64 noundef 80, ptr noundef @.str.35, i32 noundef 229), !dbg !4034
  store ptr null, ptr %rdlist, align 8, !dbg !4034
  br label %do.cond90, !dbg !4034

do.cond90:                                        ; preds = %do.body89
  br label %do.end91, !dbg !4034

do.end91:                                         ; preds = %do.cond90
  %51 = load ptr, ptr %rdataset.addr, align 8, !dbg !4036
  call void @dns_rdataset_disassociate(ptr noundef %51), !dbg !4037
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4038
  br label %cleanup, !dbg !4038

cleanup:                                          ; preds = %do.end91, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdata) #14, !dbg !4038
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdlist) #14, !dbg !4038
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4038

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare !dbg !4039 i32 @dns_rdatalist_fromrdataset(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4043 void @dns_rdataset_disassociate(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal ptr @rdata_get() #0 !dbg !4044 {
entry:
  %rdata = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdata) #14, !dbg !4049
  tail call void @llvm.dbg.declare(metadata ptr %rdata, metadata !4048, metadata !DIExpression()), !dbg !4050
  %0 = load ptr, ptr @mctx, align 8, !dbg !4051
  %call = call ptr @isc__mem_get(ptr noundef %0, i64 noundef 40, ptr noundef @.str.35, i32 noundef 762), !dbg !4051
  store ptr %call, ptr %rdata, align 8, !dbg !4052
  %1 = load ptr, ptr %rdata, align 8, !dbg !4053
  %cmp = icmp eq ptr %1, null, !dbg !4055
  br i1 %cmp, label %if.then, label %if.end, !dbg !4056

if.then:                                          ; preds = %entry
  %call1 = call ptr @isc_result_totext(i32 noundef 1), !dbg !4057
  call void (ptr, ...) @fatal(ptr noundef @.str.90, ptr noundef %call1) #15, !dbg !4059
  unreachable, !dbg !4059

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %rdata, align 8, !dbg !4060
  call void @dns_rdata_init(ptr noundef %2), !dbg !4061
  %3 = load ptr, ptr %rdata, align 8, !dbg !4062
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdata) #14, !dbg !4063
  ret ptr %3, !dbg !4064
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @rdata_put(i32 noundef %result, ptr noundef %rdlist, ptr noundef %rdata) #0 !dbg !4065 {
entry:
  %result.addr = alloca i32, align 4
  %rdlist.addr = alloca ptr, align 8
  %rdata.addr = alloca ptr, align 8
  store i32 %result, ptr %result.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !4069, metadata !DIExpression()), !dbg !4072
  store ptr %rdlist, ptr %rdlist.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdlist.addr, metadata !4070, metadata !DIExpression()), !dbg !4073
  store ptr %rdata, ptr %rdata.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdata.addr, metadata !4071, metadata !DIExpression()), !dbg !4074
  %0 = load i32, ptr %result.addr, align 4, !dbg !4075
  %cmp = icmp eq i32 %0, 0, !dbg !4077
  br i1 %cmp, label %if.then, label %if.else16, !dbg !4078

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4079

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !4081

do.body1:                                         ; preds = %do.body
  %1 = load ptr, ptr %rdlist.addr, align 8, !dbg !4083
  %rdata2 = getelementptr inbounds %struct.dns_rdatalist, ptr %1, i32 0, i32 4, !dbg !4083
  %tail = getelementptr inbounds %struct.anon.10, ptr %rdata2, i32 0, i32 1, !dbg !4083
  %2 = load ptr, ptr %tail, align 8, !dbg !4083
  %cmp3 = icmp ne ptr %2, null, !dbg !4083
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !4086

if.then4:                                         ; preds = %do.body1
  %3 = load ptr, ptr %rdata.addr, align 8, !dbg !4083
  %4 = load ptr, ptr %rdlist.addr, align 8, !dbg !4083
  %rdata5 = getelementptr inbounds %struct.dns_rdatalist, ptr %4, i32 0, i32 4, !dbg !4083
  %tail6 = getelementptr inbounds %struct.anon.10, ptr %rdata5, i32 0, i32 1, !dbg !4083
  %5 = load ptr, ptr %tail6, align 8, !dbg !4083
  %link = getelementptr inbounds %struct.dns_rdata, ptr %5, i32 0, i32 5, !dbg !4083
  %next = getelementptr inbounds %struct.anon.9, ptr %link, i32 0, i32 1, !dbg !4083
  store ptr %3, ptr %next, align 8, !dbg !4083
  br label %if.end, !dbg !4083

if.else:                                          ; preds = %do.body1
  %6 = load ptr, ptr %rdata.addr, align 8, !dbg !4083
  %7 = load ptr, ptr %rdlist.addr, align 8, !dbg !4083
  %rdata7 = getelementptr inbounds %struct.dns_rdatalist, ptr %7, i32 0, i32 4, !dbg !4083
  %head = getelementptr inbounds %struct.anon.10, ptr %rdata7, i32 0, i32 0, !dbg !4083
  store ptr %6, ptr %head, align 8, !dbg !4083
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %8 = load ptr, ptr %rdlist.addr, align 8, !dbg !4086
  %rdata8 = getelementptr inbounds %struct.dns_rdatalist, ptr %8, i32 0, i32 4, !dbg !4086
  %tail9 = getelementptr inbounds %struct.anon.10, ptr %rdata8, i32 0, i32 1, !dbg !4086
  %9 = load ptr, ptr %tail9, align 8, !dbg !4086
  %10 = load ptr, ptr %rdata.addr, align 8, !dbg !4086
  %link10 = getelementptr inbounds %struct.dns_rdata, ptr %10, i32 0, i32 5, !dbg !4086
  %prev = getelementptr inbounds %struct.anon.9, ptr %link10, i32 0, i32 0, !dbg !4086
  store ptr %9, ptr %prev, align 8, !dbg !4086
  %11 = load ptr, ptr %rdata.addr, align 8, !dbg !4086
  %link11 = getelementptr inbounds %struct.dns_rdata, ptr %11, i32 0, i32 5, !dbg !4086
  %next12 = getelementptr inbounds %struct.anon.9, ptr %link11, i32 0, i32 1, !dbg !4086
  store ptr null, ptr %next12, align 8, !dbg !4086
  %12 = load ptr, ptr %rdata.addr, align 8, !dbg !4086
  %13 = load ptr, ptr %rdlist.addr, align 8, !dbg !4086
  %rdata13 = getelementptr inbounds %struct.dns_rdatalist, ptr %13, i32 0, i32 4, !dbg !4086
  %tail14 = getelementptr inbounds %struct.anon.10, ptr %rdata13, i32 0, i32 1, !dbg !4086
  store ptr %12, ptr %tail14, align 8, !dbg !4086
  br label %do.end, !dbg !4086

do.end:                                           ; preds = %if.end
  br label %do.end15, !dbg !4081

do.end15:                                         ; preds = %do.end
  br label %if.end19, !dbg !4087

if.else16:                                        ; preds = %entry
  br label %do.body17, !dbg !4088

do.body17:                                        ; preds = %if.else16
  %14 = load ptr, ptr @mctx, align 8, !dbg !4090
  %15 = load ptr, ptr %rdata.addr, align 8, !dbg !4090
  call void @isc__mem_put(ptr noundef %14, ptr noundef %15, i64 noundef 40, ptr noundef @.str.35, i32 noundef 777), !dbg !4090
  store ptr null, ptr %rdata.addr, align 8, !dbg !4090
  br label %do.end18, !dbg !4090

do.end18:                                         ; preds = %do.body17
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %do.end15
  %16 = load i32, ptr %result.addr, align 4, !dbg !4092
  ret i32 %16, !dbg !4093
}

; Function Attrs: null_pointer_is_valid
declare !dbg !4094 i32 @dns_rdata_fromstruct(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid uwtable
define internal i32 @rdata_cmp(ptr noundef %rdata1, ptr noundef %rdata2) #12 !dbg !4097 {
entry:
  %rdata1.addr = alloca ptr, align 8
  %rdata2.addr = alloca ptr, align 8
  store ptr %rdata1, ptr %rdata1.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdata1.addr, metadata !4099, metadata !DIExpression()), !dbg !4101
  store ptr %rdata2, ptr %rdata2.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdata2.addr, metadata !4100, metadata !DIExpression()), !dbg !4102
  %0 = load ptr, ptr %rdata1.addr, align 8, !dbg !4103
  %1 = load ptr, ptr %rdata2.addr, align 8, !dbg !4104
  %call = call i32 @dns_rdata_compare(ptr noundef %0, ptr noundef %1), !dbg !4105
  ret i32 %call, !dbg !4106
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @update_diff(ptr noundef %cmd, i32 noundef %ttl, ptr noundef %addset, ptr noundef %delset) #0 !dbg !4107 {
entry:
  %cmd.addr = alloca ptr, align 8
  %ttl.addr = alloca i32, align 4
  %addset.addr = alloca ptr, align 8
  %delset.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %db = alloca ptr, align 8
  %node = alloca ptr, align 8
  %ver = alloca ptr, align 8
  %diffset = alloca %struct.dns_rdataset, align 8
  %save = alloca i32, align 4
  store ptr %cmd, ptr %cmd.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !4111, metadata !DIExpression()), !dbg !4121
  store i32 %ttl, ptr %ttl.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %ttl.addr, metadata !4112, metadata !DIExpression()), !dbg !4122
  store ptr %addset, ptr %addset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %addset.addr, metadata !4113, metadata !DIExpression()), !dbg !4123
  store ptr %delset, ptr %delset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %delset.addr, metadata !4114, metadata !DIExpression()), !dbg !4124
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !4125
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !4115, metadata !DIExpression()), !dbg !4126
  call void @llvm.lifetime.start.p0(i64 8, ptr %db) #14, !dbg !4127
  tail call void @llvm.dbg.declare(metadata ptr %db, metadata !4116, metadata !DIExpression()), !dbg !4128
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !4129
  tail call void @llvm.dbg.declare(metadata ptr %node, metadata !4117, metadata !DIExpression()), !dbg !4130
  call void @llvm.lifetime.start.p0(i64 8, ptr %ver) #14, !dbg !4131
  tail call void @llvm.dbg.declare(metadata ptr %ver, metadata !4118, metadata !DIExpression()), !dbg !4132
  call void @llvm.lifetime.start.p0(i64 120, ptr %diffset) #14, !dbg !4133
  tail call void @llvm.dbg.declare(metadata ptr %diffset, metadata !4119, metadata !DIExpression()), !dbg !4134
  call void @llvm.lifetime.start.p0(i64 4, ptr %save) #14, !dbg !4135
  tail call void @llvm.dbg.declare(metadata ptr %save, metadata !4120, metadata !DIExpression()), !dbg !4136
  store ptr null, ptr %db, align 8, !dbg !4137
  %0 = load ptr, ptr @mctx, align 8, !dbg !4138
  %1 = load ptr, ptr @name, align 8, !dbg !4139
  %2 = load i16, ptr @rdclass, align 2, !dbg !4140
  %call = call i32 @dns_db_create(ptr noundef %0, ptr noundef @.str.43, ptr noundef %1, i32 noundef 0, i16 noundef zeroext %2, i32 noundef 0, ptr noundef null, ptr noundef %db), !dbg !4141
  store i32 %call, ptr %result, align 4, !dbg !4142
  %3 = load i32, ptr %result, align 4, !dbg !4143
  call void @check_result(i32 noundef %3, ptr noundef @.str.44), !dbg !4144
  store ptr null, ptr %ver, align 8, !dbg !4145
  %4 = load ptr, ptr %db, align 8, !dbg !4146
  %call1 = call i32 @dns_db_newversion(ptr noundef %4, ptr noundef %ver), !dbg !4147
  store i32 %call1, ptr %result, align 4, !dbg !4148
  %5 = load i32, ptr %result, align 4, !dbg !4149
  call void @check_result(i32 noundef %5, ptr noundef @.str.101), !dbg !4150
  store ptr null, ptr %node, align 8, !dbg !4151
  %6 = load ptr, ptr %db, align 8, !dbg !4152
  %7 = load ptr, ptr @name, align 8, !dbg !4153
  %call2 = call i32 @dns_db_findnode(ptr noundef %6, ptr noundef %7, i1 noundef zeroext true, ptr noundef %node), !dbg !4154
  store i32 %call2, ptr %result, align 4, !dbg !4155
  %8 = load i32, ptr %result, align 4, !dbg !4156
  call void @check_result(i32 noundef %8, ptr noundef @.str.102), !dbg !4157
  call void @dns_rdataset_init(ptr noundef %diffset), !dbg !4158
  %9 = load ptr, ptr %db, align 8, !dbg !4159
  %10 = load ptr, ptr %node, align 8, !dbg !4160
  %11 = load ptr, ptr %ver, align 8, !dbg !4161
  %12 = load ptr, ptr %addset.addr, align 8, !dbg !4162
  %call3 = call i32 @dns_db_addrdataset(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef 0, ptr noundef %12, i32 noundef 1, ptr noundef null), !dbg !4163
  store i32 %call3, ptr %result, align 4, !dbg !4164
  %13 = load i32, ptr %result, align 4, !dbg !4165
  call void @check_result(i32 noundef %13, ptr noundef @.str.103), !dbg !4166
  %14 = load ptr, ptr %db, align 8, !dbg !4167
  %15 = load ptr, ptr %node, align 8, !dbg !4168
  %16 = load ptr, ptr %ver, align 8, !dbg !4169
  %17 = load ptr, ptr %delset.addr, align 8, !dbg !4170
  %call4 = call i32 @dns_db_subtractrdataset(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef 0, ptr noundef %diffset), !dbg !4171
  store i32 %call4, ptr %result, align 4, !dbg !4172
  %18 = load i32, ptr %result, align 4, !dbg !4173
  %cmp = icmp eq i32 %18, 65561, !dbg !4175
  br i1 %cmp, label %if.then, label %if.else, !dbg !4176

if.then:                                          ; preds = %entry
  %19 = load ptr, ptr %addset.addr, align 8, !dbg !4177
  %ttl5 = getelementptr inbounds %struct.dns_rdataset, ptr %19, i32 0, i32 5, !dbg !4179
  %20 = load i32, ptr %ttl5, align 4, !dbg !4179
  store i32 %20, ptr %save, align 4, !dbg !4180
  %21 = load i32, ptr %ttl.addr, align 4, !dbg !4181
  %22 = load ptr, ptr %addset.addr, align 8, !dbg !4182
  %ttl6 = getelementptr inbounds %struct.dns_rdataset, ptr %22, i32 0, i32 5, !dbg !4183
  store i32 %21, ptr %ttl6, align 4, !dbg !4184
  %23 = load ptr, ptr %cmd.addr, align 8, !dbg !4185
  %24 = load ptr, ptr %addset.addr, align 8, !dbg !4186
  call void @print_diff(ptr noundef %23, ptr noundef %24), !dbg !4187
  %25 = load i32, ptr %save, align 4, !dbg !4188
  %26 = load ptr, ptr %addset.addr, align 8, !dbg !4189
  %ttl7 = getelementptr inbounds %struct.dns_rdataset, ptr %26, i32 0, i32 5, !dbg !4190
  store i32 %25, ptr %ttl7, align 4, !dbg !4191
  br label %if.end11, !dbg !4192

if.else:                                          ; preds = %entry
  %27 = load i32, ptr %result, align 4, !dbg !4193
  %cmp8 = icmp ne i32 %27, 196616, !dbg !4195
  br i1 %cmp8, label %if.then9, label %if.end, !dbg !4196

if.then9:                                         ; preds = %if.else
  %28 = load i32, ptr %result, align 4, !dbg !4197
  call void @check_result(i32 noundef %28, ptr noundef @.str.104), !dbg !4199
  %29 = load i32, ptr %ttl.addr, align 4, !dbg !4200
  %ttl10 = getelementptr inbounds %struct.dns_rdataset, ptr %diffset, i32 0, i32 5, !dbg !4201
  store i32 %29, ptr %ttl10, align 4, !dbg !4202
  %30 = load ptr, ptr %cmd.addr, align 8, !dbg !4203
  call void @print_diff(ptr noundef %30, ptr noundef %diffset), !dbg !4204
  call void @dns_rdataset_disassociate(ptr noundef %diffset), !dbg !4205
  br label %if.end, !dbg !4206

if.end:                                           ; preds = %if.then9, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  %31 = load ptr, ptr %db, align 8, !dbg !4207
  call void @dns_db_detachnode(ptr noundef %31, ptr noundef %node), !dbg !4208
  %32 = load ptr, ptr %db, align 8, !dbg !4209
  call void @dns_db_closeversion(ptr noundef %32, ptr noundef %ver, i1 noundef zeroext false), !dbg !4210
  call void @dns_db_detach(ptr noundef %db), !dbg !4211
  call void @llvm.lifetime.end.p0(i64 4, ptr %save) #14, !dbg !4212
  call void @llvm.lifetime.end.p0(i64 120, ptr %diffset) #14, !dbg !4212
  call void @llvm.lifetime.end.p0(i64 8, ptr %ver) #14, !dbg !4212
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !4212
  call void @llvm.lifetime.end.p0(i64 8, ptr %db) #14, !dbg !4212
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !4212
  ret void, !dbg !4212
}

; Function Attrs: null_pointer_is_valid
declare !dbg !4213 i32 @dns_db_newversion(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4214 i32 @dns_db_addrdataset(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4215 i32 @dns_db_subtractrdataset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @print_diff(ptr noundef %cmd, ptr noundef %rdataset) #0 !dbg !4216 {
entry:
  %cmd.addr = alloca ptr, align 8
  %rdataset.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %r = alloca %struct.isc_region, align 8
  %nl = alloca ptr, align 8
  %len = alloca i64, align 8
  %_r = alloca ptr, align 8
  %_l = alloca i32, align 4
  store ptr %cmd, ptr %cmd.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !4220, metadata !DIExpression()), !dbg !4230
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !4221, metadata !DIExpression()), !dbg !4231
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #14, !dbg !4232
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !4222, metadata !DIExpression()), !dbg !4233
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #14, !dbg !4234
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !4223, metadata !DIExpression()), !dbg !4235
  call void @llvm.lifetime.start.p0(i64 8, ptr %nl) #14, !dbg !4236
  tail call void @llvm.dbg.declare(metadata ptr %nl, metadata !4224, metadata !DIExpression()), !dbg !4237
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #14, !dbg !4238
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !4225, metadata !DIExpression()), !dbg !4239
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !4240
  %call = call ptr @formatset(ptr noundef %0), !dbg !4241
  store ptr %call, ptr %buf, align 8, !dbg !4242
  br label %do.body, !dbg !4243

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %buf, align 8, !dbg !4244
  %base = getelementptr inbounds %struct.isc_buffer, ptr %1, i32 0, i32 1, !dbg !4244
  %2 = load ptr, ptr %base, align 8, !dbg !4244
  %base1 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !4244
  store ptr %2, ptr %base1, align 8, !dbg !4244
  %3 = load ptr, ptr %buf, align 8, !dbg !4244
  %used = getelementptr inbounds %struct.isc_buffer, ptr %3, i32 0, i32 3, !dbg !4244
  %4 = load i32, ptr %used, align 4, !dbg !4244
  %length = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !4244
  store i32 %4, ptr %length, align 8, !dbg !4244
  br label %do.cond, !dbg !4244

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4244

do.end:                                           ; preds = %do.cond
  br label %while.cond, !dbg !4246

while.cond:                                       ; preds = %do.end20, %do.end
  %base2 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !4247
  %5 = load ptr, ptr %base2, align 8, !dbg !4247
  %length3 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !4248
  %6 = load i32, ptr %length3, align 8, !dbg !4248
  %conv = zext i32 %6 to i64, !dbg !4249
  %call4 = call ptr @memchr(ptr noundef %5, i32 noundef 10, i64 noundef %conv) #17, !dbg !4250
  store ptr %call4, ptr %nl, align 8, !dbg !4251
  %cmp = icmp ne ptr %call4, null, !dbg !4252
  br i1 %cmp, label %while.body, label %while.end, !dbg !4246

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %nl, align 8, !dbg !4253
  %base6 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !4254
  %8 = load ptr, ptr %base6, align 8, !dbg !4254
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64, !dbg !4255
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64, !dbg !4255
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4255
  %add = add nsw i64 %sub.ptr.sub, 1, !dbg !4256
  store i64 %add, ptr %len, align 8, !dbg !4257
  %9 = load ptr, ptr %cmd.addr, align 8, !dbg !4258
  %10 = load i64, ptr %len, align 8, !dbg !4259
  %conv7 = trunc i64 %10 to i32, !dbg !4260
  %base8 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !4261
  %11 = load ptr, ptr %base8, align 8, !dbg !4261
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.105, ptr noundef %9, i32 noundef %conv7, ptr noundef %11), !dbg !4262
  br label %do.body10, !dbg !4263

do.body10:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r) #14, !dbg !4264
  tail call void @llvm.dbg.declare(metadata ptr %_r, metadata !4226, metadata !DIExpression()), !dbg !4264
  store ptr %r, ptr %_r, align 8, !dbg !4264
  call void @llvm.lifetime.start.p0(i64 4, ptr %_l) #14, !dbg !4264
  tail call void @llvm.dbg.declare(metadata ptr %_l, metadata !4229, metadata !DIExpression()), !dbg !4264
  %12 = load i64, ptr %len, align 8, !dbg !4264
  %conv11 = trunc i64 %12 to i32, !dbg !4264
  store i32 %conv11, ptr %_l, align 4, !dbg !4264
  %13 = load ptr, ptr %_r, align 8, !dbg !4264
  %length12 = getelementptr inbounds %struct.isc_region, ptr %13, i32 0, i32 1, !dbg !4264
  %14 = load i32, ptr %length12, align 8, !dbg !4264
  %15 = load i32, ptr %_l, align 4, !dbg !4264
  %cmp13 = icmp uge i32 %14, %15, !dbg !4264
  %lnot = xor i1 %cmp13, true, !dbg !4264
  %lnot15 = xor i1 %lnot, true, !dbg !4264
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !4264
  %conv16 = sext i32 %lnot.ext to i64, !dbg !4264
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 1), !dbg !4264
  %tobool = icmp ne i64 %expval, 0, !dbg !4264
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !4264

lor.rhs:                                          ; preds = %do.body10
  call void @isc_assertion_failed(ptr noundef @.str.35, i32 noundef 1031, i32 noundef 2, ptr noundef @.str.106) #15, !dbg !4264
  unreachable, !dbg !4264

16:                                               ; No predecessors!
  br label %lor.end, !dbg !4264

lor.end:                                          ; preds = %16, %do.body10
  %17 = phi i1 [ true, %do.body10 ], [ false, %16 ]
  %lor.ext = zext i1 %17 to i32, !dbg !4264
  %18 = load i32, ptr %_l, align 4, !dbg !4264
  %19 = load ptr, ptr %_r, align 8, !dbg !4264
  %base17 = getelementptr inbounds %struct.isc_region, ptr %19, i32 0, i32 0, !dbg !4264
  %20 = load ptr, ptr %base17, align 8, !dbg !4264
  %idx.ext = zext i32 %18 to i64, !dbg !4264
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %idx.ext, !dbg !4264
  store ptr %add.ptr, ptr %base17, align 8, !dbg !4264
  %21 = load i32, ptr %_l, align 4, !dbg !4264
  %22 = load ptr, ptr %_r, align 8, !dbg !4264
  %length18 = getelementptr inbounds %struct.isc_region, ptr %22, i32 0, i32 1, !dbg !4264
  %23 = load i32, ptr %length18, align 8, !dbg !4264
  %sub = sub i32 %23, %21, !dbg !4264
  store i32 %sub, ptr %length18, align 8, !dbg !4264
  call void @llvm.lifetime.end.p0(i64 4, ptr %_l) #14, !dbg !4263
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r) #14, !dbg !4263
  br label %do.cond19, !dbg !4264

do.cond19:                                        ; preds = %lor.end
  br label %do.end20, !dbg !4264

do.end20:                                         ; preds = %do.cond19
  br label %while.cond, !dbg !4246, !llvm.loop !4265

while.end:                                        ; preds = %while.cond
  call void @isc_buffer_free(ptr noundef %buf), !dbg !4267
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #14, !dbg !4268
  call void @llvm.lifetime.end.p0(i64 8, ptr %nl) #14, !dbg !4268
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #14, !dbg !4268
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #14, !dbg !4268
  ret void, !dbg !4268
}

; Function Attrs: null_pointer_is_valid
declare !dbg !4269 void @dns_db_closeversion(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !4270 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #7

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @freeset(ptr noundef %rdataset) #0 !dbg !4273 {
entry:
  %rdataset.addr = alloca ptr, align 8
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !4275, metadata !DIExpression()), !dbg !4276
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !4277
  %call = call zeroext i1 @dns_rdataset_isassociated(ptr noundef %0), !dbg !4279
  br i1 %call, label %if.then, label %if.end, !dbg !4280

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %rdataset.addr, align 8, !dbg !4281
  call void @dns_rdataset_disassociate(ptr noundef %1), !dbg !4283
  br label %if.end, !dbg !4284

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4285
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #13

attributes #0 = { nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!10}
!llvm.module.flags = !{!1003, !1004, !1005, !1006, !1007}
!llvm.ident = !{!1008}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "dnssec-cds.c", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/dnssec", checksumkind: CSK_MD5, checksum: "8be07e309f54a80e14ec891ebc6030a9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 11)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "program", scope: !10, file: !2, line: 68, type: !202, isLocal: false, isDefinition: true)
!10 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !127, globals: !162, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12, !17, !24, !27, !115, !122}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 467, baseType: !13, size: 32, elements: !14)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "LOOSE", value: 0)
!16 = !DIEnumerator(name: "TIGHT", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 213, baseType: !13, size: 32, elements: !19)
!18 = !DIFile(filename: "lib/dns/include/dns/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f35a187441d60b1b4301c816339e75b0")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "dns_masterformat_none", value: 0)
!21 = !DIEnumerator(name: "dns_masterformat_text", value: 1)
!22 = !DIEnumerator(name: "dns_masterformat_raw", value: 2)
!23 = !DIEnumerator(name: "dns_masterformat_map", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 164, baseType: !13, size: 32, elements: !25)
!25 = !{!26}
!26 = !DIEnumerator(name: "dns_hash_sha1", value: 1)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 21, baseType: !13, size: 32, elements: !29)
!28 = !DIFile(filename: "lib/dns/include/dns/enumtype.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "11dbf2b1e0a48ddc2542c96b9ee9da38")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!30 = !DIEnumerator(name: "dns_rdatatype_none", value: 0)
!31 = !DIEnumerator(name: "dns_rdatatype_a", value: 1)
!32 = !DIEnumerator(name: "dns_rdatatype_ns", value: 2)
!33 = !DIEnumerator(name: "dns_rdatatype_md", value: 3)
!34 = !DIEnumerator(name: "dns_rdatatype_mf", value: 4)
!35 = !DIEnumerator(name: "dns_rdatatype_cname", value: 5)
!36 = !DIEnumerator(name: "dns_rdatatype_soa", value: 6)
!37 = !DIEnumerator(name: "dns_rdatatype_mb", value: 7)
!38 = !DIEnumerator(name: "dns_rdatatype_mg", value: 8)
!39 = !DIEnumerator(name: "dns_rdatatype_mr", value: 9)
!40 = !DIEnumerator(name: "dns_rdatatype_null", value: 10)
!41 = !DIEnumerator(name: "dns_rdatatype_wks", value: 11)
!42 = !DIEnumerator(name: "dns_rdatatype_ptr", value: 12)
!43 = !DIEnumerator(name: "dns_rdatatype_hinfo", value: 13)
!44 = !DIEnumerator(name: "dns_rdatatype_minfo", value: 14)
!45 = !DIEnumerator(name: "dns_rdatatype_mx", value: 15)
!46 = !DIEnumerator(name: "dns_rdatatype_txt", value: 16)
!47 = !DIEnumerator(name: "dns_rdatatype_rp", value: 17)
!48 = !DIEnumerator(name: "dns_rdatatype_afsdb", value: 18)
!49 = !DIEnumerator(name: "dns_rdatatype_x25", value: 19)
!50 = !DIEnumerator(name: "dns_rdatatype_isdn", value: 20)
!51 = !DIEnumerator(name: "dns_rdatatype_rt", value: 21)
!52 = !DIEnumerator(name: "dns_rdatatype_nsap", value: 22)
!53 = !DIEnumerator(name: "dns_rdatatype_nsap_ptr", value: 23)
!54 = !DIEnumerator(name: "dns_rdatatype_sig", value: 24)
!55 = !DIEnumerator(name: "dns_rdatatype_key", value: 25)
!56 = !DIEnumerator(name: "dns_rdatatype_px", value: 26)
!57 = !DIEnumerator(name: "dns_rdatatype_gpos", value: 27)
!58 = !DIEnumerator(name: "dns_rdatatype_aaaa", value: 28)
!59 = !DIEnumerator(name: "dns_rdatatype_loc", value: 29)
!60 = !DIEnumerator(name: "dns_rdatatype_nxt", value: 30)
!61 = !DIEnumerator(name: "dns_rdatatype_eid", value: 31)
!62 = !DIEnumerator(name: "dns_rdatatype_nimloc", value: 32)
!63 = !DIEnumerator(name: "dns_rdatatype_srv", value: 33)
!64 = !DIEnumerator(name: "dns_rdatatype_atma", value: 34)
!65 = !DIEnumerator(name: "dns_rdatatype_naptr", value: 35)
!66 = !DIEnumerator(name: "dns_rdatatype_kx", value: 36)
!67 = !DIEnumerator(name: "dns_rdatatype_cert", value: 37)
!68 = !DIEnumerator(name: "dns_rdatatype_a6", value: 38)
!69 = !DIEnumerator(name: "dns_rdatatype_dname", value: 39)
!70 = !DIEnumerator(name: "dns_rdatatype_sink", value: 40)
!71 = !DIEnumerator(name: "dns_rdatatype_opt", value: 41)
!72 = !DIEnumerator(name: "dns_rdatatype_apl", value: 42)
!73 = !DIEnumerator(name: "dns_rdatatype_ds", value: 43)
!74 = !DIEnumerator(name: "dns_rdatatype_sshfp", value: 44)
!75 = !DIEnumerator(name: "dns_rdatatype_ipseckey", value: 45)
!76 = !DIEnumerator(name: "dns_rdatatype_rrsig", value: 46)
!77 = !DIEnumerator(name: "dns_rdatatype_nsec", value: 47)
!78 = !DIEnumerator(name: "dns_rdatatype_dnskey", value: 48)
!79 = !DIEnumerator(name: "dns_rdatatype_dhcid", value: 49)
!80 = !DIEnumerator(name: "dns_rdatatype_nsec3", value: 50)
!81 = !DIEnumerator(name: "dns_rdatatype_nsec3param", value: 51)
!82 = !DIEnumerator(name: "dns_rdatatype_tlsa", value: 52)
!83 = !DIEnumerator(name: "dns_rdatatype_smimea", value: 53)
!84 = !DIEnumerator(name: "dns_rdatatype_hip", value: 55)
!85 = !DIEnumerator(name: "dns_rdatatype_ninfo", value: 56)
!86 = !DIEnumerator(name: "dns_rdatatype_rkey", value: 57)
!87 = !DIEnumerator(name: "dns_rdatatype_talink", value: 58)
!88 = !DIEnumerator(name: "dns_rdatatype_cds", value: 59)
!89 = !DIEnumerator(name: "dns_rdatatype_cdnskey", value: 60)
!90 = !DIEnumerator(name: "dns_rdatatype_openpgpkey", value: 61)
!91 = !DIEnumerator(name: "dns_rdatatype_csync", value: 62)
!92 = !DIEnumerator(name: "dns_rdatatype_zonemd", value: 63)
!93 = !DIEnumerator(name: "dns_rdatatype_spf", value: 99)
!94 = !DIEnumerator(name: "dns_rdatatype_nid", value: 104)
!95 = !DIEnumerator(name: "dns_rdatatype_l32", value: 105)
!96 = !DIEnumerator(name: "dns_rdatatype_l64", value: 106)
!97 = !DIEnumerator(name: "dns_rdatatype_lp", value: 107)
!98 = !DIEnumerator(name: "dns_rdatatype_eui48", value: 108)
!99 = !DIEnumerator(name: "dns_rdatatype_eui64", value: 109)
!100 = !DIEnumerator(name: "dns_rdatatype_tkey", value: 249)
!101 = !DIEnumerator(name: "dns_rdatatype_tsig", value: 250)
!102 = !DIEnumerator(name: "dns_rdatatype_uri", value: 256)
!103 = !DIEnumerator(name: "dns_rdatatype_caa", value: 257)
!104 = !DIEnumerator(name: "dns_rdatatype_avc", value: 258)
!105 = !DIEnumerator(name: "dns_rdatatype_doa", value: 259)
!106 = !DIEnumerator(name: "dns_rdatatype_amtrelay", value: 260)
!107 = !DIEnumerator(name: "dns_rdatatype_ta", value: 32768)
!108 = !DIEnumerator(name: "dns_rdatatype_dlv", value: 32769)
!109 = !DIEnumerator(name: "dns_rdatatype_keydata", value: 65533)
!110 = !DIEnumerator(name: "dns_rdatatype_ixfr", value: 251)
!111 = !DIEnumerator(name: "dns_rdatatype_axfr", value: 252)
!112 = !DIEnumerator(name: "dns_rdatatype_mailb", value: 253)
!113 = !DIEnumerator(name: "dns_rdatatype_maila", value: 254)
!114 = !DIEnumerator(name: "dns_rdatatype_any", value: 255)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !116, line: 25, baseType: !13, size: 32, elements: !117)
!116 = !DIFile(filename: "lib/isc/include/isc/assertions.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "d437064b1a440cf5712e89d244b6208d")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "isc_assertiontype_require", value: 0)
!119 = !DIEnumerator(name: "isc_assertiontype_ensure", value: 1)
!120 = !DIEnumerator(name: "isc_assertiontype_insist", value: 2)
!121 = !DIEnumerator(name: "isc_assertiontype_invariant", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 186, baseType: !13, size: 32, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "dns_dbtype_zone", value: 0)
!125 = !DIEnumerator(name: "dns_dbtype_cache", value: 1)
!126 = !DIEnumerator(name: "dns_dbtype_stub", value: 3)
!127 = !{!128, !129, !137, !141, !13, !142, !143, !144, !161}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dsdigest_t", file: !18, line: 78, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !133, line: 24, baseType: !134)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !135, line: 38, baseType: !136)
!135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!136 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataclass_t", file: !18, line: 121, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !133, line: 25, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !135, line: 40, baseType: !140)
!140 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatatype_t", file: !18, line: 126, baseType: !138)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdata_t", file: !18, line: 119, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdata", file: !148, line: 112, size: 320, elements: !149)
!148 = !DIFile(filename: "lib/dns/include/dns/rdata.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "e790fb4f336bc4fdcd566550403b32a6")
!149 = !{!150, !151, !152, !153, !154, !155}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !147, file: !148, line: 113, baseType: !142, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !147, file: !148, line: 114, baseType: !13, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !147, file: !148, line: 115, baseType: !137, size: 16, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !148, line: 116, baseType: !141, size: 16, offset: 112)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !148, line: 117, baseType: !13, size: 32, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !147, file: !148, line: 118, baseType: !156, size: 128, offset: 192)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !147, file: !148, line: 118, size: 128, elements: !157)
!157 = !{!158, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !156, file: !148, line: 118, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !156, file: !148, line: 118, baseType: !159, size: 64, offset: 64)
!161 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!162 = !{!0, !8, !163, !227, !232, !237, !242, !247, !252, !257, !262, !267, !272, !277, !279, !284, !289, !291, !296, !301, !303, !308, !310, !315, !320, !325, !330, !332, !337, !679, !681, !683, !685, !687, !689, !691, !693, !695, !706, !708, !710, !715, !717, !719, !722, !727, !732, !737, !742, !744, !761, !763, !768, !770, !772, !777, !782, !784, !789, !794, !796, !801, !806, !808, !810, !812, !815, !818, !823, !825, !827, !829, !834, !839, !844, !846, !848, !853, !855, !857, !862, !867, !869, !871, !873, !875, !877, !879, !884, !889, !891, !893, !898, !903, !905, !910, !912, !914, !916, !918, !923, !928, !930, !932, !934, !936, !938, !940, !942, !944, !946, !948, !950, !952, !954, !956, !958, !963, !965, !967, !972, !974, !976, !978, !983, !988, !990, !992, !994, !996, !1001}
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "new_ds_buf", scope: !10, file: !2, line: 147, type: !165, isLocal: false, isDefinition: true)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_buffer_t", file: !167, line: 35, baseType: !168)
!167 = !DIFile(filename: "lib/isc/include/isc/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "6a355582c4f962c465b18bab43b68c96")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_buffer", file: !169, line: 173, size: 512, elements: !170)
!169 = !DIFile(filename: "lib/isc/include/isc/buffer.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "feec9784066f3891a27281dd5bdccd55")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !182, !225}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !168, file: !169, line: 174, baseType: !13, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !168, file: !169, line: 175, baseType: !128, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !168, file: !169, line: 178, baseType: !13, size: 32, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !168, file: !169, line: 179, baseType: !13, size: 32, offset: 160)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !168, file: !169, line: 180, baseType: !13, size: 32, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !168, file: !169, line: 181, baseType: !13, size: 32, offset: 224)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !168, file: !169, line: 184, baseType: !178, size: 128, offset: 256)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !168, file: !169, line: 184, size: 128, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !178, file: !169, line: 184, baseType: !165, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !169, line: 184, baseType: !165, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !168, file: !169, line: 186, baseType: !183, size: 64, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mem_t", file: !167, line: 59, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mem", file: !186, line: 191, size: 128, elements: !187)
!186 = !DIFile(filename: "lib/isc/include/isc/mem.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "587a841195795b087519b89f298822b2")
!187 = !{!188, !189, !190}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !185, file: !186, line: 192, baseType: !13, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !185, file: !186, line: 193, baseType: !13, size: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !185, file: !186, line: 194, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_memmethods_t", file: !186, line: 180, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_memmethods", file: !186, line: 170, size: 448, elements: !194)
!194 = !{!195, !203, !207, !212, !213, !217, !221}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "memget", scope: !193, file: !186, line: 171, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!128, !183, !199, !202, !13}
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !200, line: 70, baseType: !201)
!200 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!201 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "memput", scope: !193, file: !186, line: 172, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !183, !128, !199, !202, !13}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "memputanddetach", scope: !193, file: !186, line: 173, baseType: !208, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !211, !128, !199, !202, !13}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "memallocate", scope: !193, file: !186, line: 175, baseType: !196, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "memreallocate", scope: !193, file: !186, line: 176, baseType: !214, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!128, !183, !128, !199, !202, !13}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "memstrdup", scope: !193, file: !186, line: 178, baseType: !218, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!143, !183, !202, !202, !13}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "memfree", scope: !193, file: !186, line: 179, baseType: !222, size: 64, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !183, !128, !202, !13}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "autore", scope: !168, file: !169, line: 188, baseType: !226, size: 8, offset: 448)
!226 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1143, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 14)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1154, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 21)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1180, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 1)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1205, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 32)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1232, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 29)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1237, type: !254, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 23)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1249, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 53)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1261, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 42)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1267, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 37)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1272, type: !274, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 33)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1275, type: !259, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1284, type: !281, isLocal: true, isDefinition: true)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 28)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1287, type: !286, isLocal: true, isDefinition: true)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 45)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1291, type: !249, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1295, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 46)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1300, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 25)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1304, type: !264, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1318, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 31)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1320, type: !298, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1331, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 40)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1353, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 50)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1357, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 592, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 74)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1366, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 65)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "verbose", scope: !10, file: !2, line: 69, type: !161, isLocal: false, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "dtype", scope: !10, file: !2, line: 89, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 64, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 8)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "oldestsig", scope: !10, file: !2, line: 93, type: !339, isLocal: true, isDefinition: true)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdata_rrsig_t", file: !340, line: 1388, baseType: !341)
!340 = !DIFile(filename: "lib/dns/include/dns/rdatastruct.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "2fa7912eeb1b296a4fc4f0b7f3b904fc")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdata_rrsig", file: !340, line: 1375, size: 1216, elements: !342)
!342 = !{!343, !355, !356, !357, !359, !360, !363, !364, !365, !366, !677, !678}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !341, file: !340, line: 1376, baseType: !344, size: 192)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatacommon_t", file: !340, line: 45, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatacommon", file: !340, line: 41, size: 192, elements: !346)
!346 = !{!347, !348, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !345, file: !340, line: 42, baseType: !137, size: 16)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rdtype", scope: !345, file: !340, line: 43, baseType: !141, size: 16, offset: 16)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !345, file: !340, line: 44, baseType: !350, size: 128, offset: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !340, line: 44, size: 128, elements: !351)
!351 = !{!352, !354}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !350, file: !340, line: 44, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !340, line: 44, baseType: !353, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !341, file: !340, line: 1377, baseType: !183, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "covered", scope: !341, file: !340, line: 1378, baseType: !141, size: 16, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !341, file: !340, line: 1379, baseType: !358, size: 8, offset: 272)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_secalg_t", file: !18, line: 131, baseType: !132)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !341, file: !340, line: 1380, baseType: !132, size: 8, offset: 280)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "originalttl", scope: !341, file: !340, line: 1381, baseType: !361, size: 32, offset: 288)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !133, line: 26, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !135, line: 42, baseType: !13)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "timeexpire", scope: !341, file: !340, line: 1382, baseType: !361, size: 32, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "timesigned", scope: !341, file: !340, line: 1383, baseType: !361, size: 32, offset: 352)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !341, file: !340, line: 1384, baseType: !138, size: 16, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "signer", scope: !341, file: !340, line: 1385, baseType: !367, size: 640, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_name_t", file: !18, line: 107, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_name", file: !369, line: 104, size: 640, elements: !370)
!369 = !DIFile(filename: "lib/dns/include/dns/name.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "ec64c9a43875cd86cb4b0e37c1191a89")
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !384}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !368, file: !369, line: 105, baseType: !13, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ndata", scope: !368, file: !369, line: 106, baseType: !142, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !368, file: !369, line: 107, baseType: !13, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !368, file: !369, line: 108, baseType: !13, size: 32, offset: 160)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !368, file: !369, line: 109, baseType: !13, size: 32, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !368, file: !369, line: 110, baseType: !142, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !368, file: !369, line: 111, baseType: !165, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !368, file: !369, line: 112, baseType: !379, size: 128, offset: 384)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !369, line: 112, size: 128, elements: !380)
!380 = !{!381, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !379, file: !369, line: 112, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !369, line: 112, baseType: !382, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !368, file: !369, line: 113, baseType: !385, size: 128, offset: 512)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !369, line: 113, size: 128, elements: !386)
!386 = !{!387, !676}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !385, file: !369, line: 113, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataset_t", file: !18, line: 123, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdataset", file: !391, line: 107, size: 960, elements: !392)
!391 = !DIFile(filename: "lib/dns/include/dns/rdataset.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "a2414fd23f718a363582354673aed6a8")
!392 = !{!393, !394, !653, !658, !659, !660, !661, !662, !663, !664, !665, !666, !669, !670, !671, !672, !673, !674, !675}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !390, file: !391, line: 108, baseType: !13, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !390, file: !391, line: 109, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetmethods_t", file: !391, line: 96, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetmethods", file: !391, line: 64, size: 1024, elements: !398)
!398 = !{!399, !403, !408, !409, !413, !417, !421, !427, !431, !432, !433, !438, !439, !440, !444, !450}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "disassociate", scope: !397, file: !391, line: 65, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !388}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !397, file: !391, line: 66, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!407, !388}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_result_t", file: !167, line: 67, baseType: !13)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !391, line: 67, baseType: !404, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !397, file: !391, line: 68, baseType: !410, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !388, !159}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !397, file: !391, line: 70, baseType: !414, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !388, !388}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !397, file: !391, line: 72, baseType: !418, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!13, !388}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "addnoqname", scope: !397, file: !391, line: 73, baseType: !422, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!407, !388, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "getnoqname", scope: !397, file: !391, line: 75, baseType: !428, size: 64, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!407, !388, !382, !388, !388}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "addclosest", scope: !397, file: !391, line: 79, baseType: !422, size: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "getclosest", scope: !397, file: !391, line: 81, baseType: !428, size: 64, offset: 576)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "settrust", scope: !397, file: !391, line: 85, baseType: !434, size: 64, offset: 640)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !388, !437}
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_trust_t", file: !18, line: 140, baseType: !138)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !397, file: !391, line: 87, baseType: !400, size: 64, offset: 704)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "clearprefetch", scope: !397, file: !391, line: 88, baseType: !400, size: 64, offset: 768)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "setownercase", scope: !397, file: !391, line: 89, baseType: !441, size: 64, offset: 832)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !388, !425}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "getownercase", scope: !397, file: !391, line: 91, baseType: !445, size: 64, offset: 896)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !448, !382}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "addglue", scope: !397, file: !391, line: 93, baseType: !451, size: 64, offset: 960)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!407, !388, !454, !456}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbversion_t", file: !18, line: 61, baseType: null)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_message_t", file: !18, line: 103, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_message", file: !459, line: 197, size: 3840, elements: !460)
!459 = !DIFile(filename: "lib/dns/include/dns/message.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "6416f0e57c4314c86bb1ccbb29bdbc0d")
!460 = !{!461, !462, !464, !465, !467, !469, !470, !474, !481, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !539, !540, !547, !548, !554, !555, !563, !568, !573, !578, !605, !606, !607, !608, !609, !613, !618, !619, !620, !621, !625, !626, !627, !628, !635}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !458, file: !459, line: 199, baseType: !13, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !458, file: !459, line: 201, baseType: !463, size: 16, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_messageid_t", file: !18, line: 104, baseType: !138)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !459, line: 202, baseType: !13, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rcode", scope: !458, file: !459, line: 203, baseType: !466, size: 16, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rcode_t", file: !18, line: 118, baseType: !138)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !458, file: !459, line: 204, baseType: !468, size: 16, offset: 112)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_opcode_t", file: !18, line: 111, baseType: !138)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !458, file: !459, line: 205, baseType: !137, size: 16, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !458, file: !459, line: 208, baseType: !471, size: 128, offset: 160)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 4)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sections", scope: !458, file: !459, line: 211, baseType: !475, size: 512, offset: 320)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 512, elements: !472)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_namelist_t", file: !18, line: 108, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 108, size: 128, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !477, file: !18, line: 108, baseType: !382, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !477, file: !18, line: 108, baseType: !382, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "cursors", scope: !458, file: !459, line: 212, baseType: !482, size: 256, offset: 832)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 256, elements: !472)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !458, file: !459, line: 213, baseType: !388, size: 64, offset: 1088)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sig0", scope: !458, file: !459, line: 214, baseType: !388, size: 64, offset: 1152)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "tsig", scope: !458, file: !459, line: 215, baseType: !388, size: 64, offset: 1216)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !458, file: !459, line: 217, baseType: !161, size: 32, offset: 1280)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "from_to_wire", scope: !458, file: !459, line: 218, baseType: !13, size: 2, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "header_ok", scope: !458, file: !459, line: 219, baseType: !13, size: 1, offset: 1314, flags: DIFlagBitField, extraData: i64 1312)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "question_ok", scope: !458, file: !459, line: 220, baseType: !13, size: 1, offset: 1315, flags: DIFlagBitField, extraData: i64 1312)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_continuation", scope: !458, file: !459, line: 221, baseType: !13, size: 1, offset: 1316, flags: DIFlagBitField, extraData: i64 1312)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "verified_sig", scope: !458, file: !459, line: 222, baseType: !13, size: 1, offset: 1317, flags: DIFlagBitField, extraData: i64 1312)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "verify_attempted", scope: !458, file: !459, line: 223, baseType: !13, size: 1, offset: 1318, flags: DIFlagBitField, extraData: i64 1312)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "free_query", scope: !458, file: !459, line: 224, baseType: !13, size: 1, offset: 1319, flags: DIFlagBitField, extraData: i64 1312)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "free_saved", scope: !458, file: !459, line: 225, baseType: !13, size: 1, offset: 1320, flags: DIFlagBitField, extraData: i64 1312)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "cc_ok", scope: !458, file: !459, line: 226, baseType: !13, size: 1, offset: 1321, flags: DIFlagBitField, extraData: i64 1312)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "cc_bad", scope: !458, file: !459, line: 227, baseType: !13, size: 1, offset: 1322, flags: DIFlagBitField, extraData: i64 1312)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tkey", scope: !458, file: !459, line: 228, baseType: !13, size: 1, offset: 1323, flags: DIFlagBitField, extraData: i64 1312)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass_set", scope: !458, file: !459, line: 229, baseType: !13, size: 1, offset: 1324, flags: DIFlagBitField, extraData: i64 1312)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "opt_reserved", scope: !458, file: !459, line: 231, baseType: !13, size: 32, offset: 1344)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sig_reserved", scope: !458, file: !459, line: 232, baseType: !13, size: 32, offset: 1376)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !458, file: !459, line: 233, baseType: !13, size: 32, offset: 1408)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !458, file: !459, line: 235, baseType: !138, size: 16, offset: 1440)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "padding_off", scope: !458, file: !459, line: 236, baseType: !13, size: 32, offset: 1472)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !458, file: !459, line: 238, baseType: !165, size: 64, offset: 1536)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "cctx", scope: !458, file: !459, line: 239, baseType: !506, size: 64, offset: 1600)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_compress_t", file: !18, line: 53, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_compress", file: !509, line: 66, size: 18688, elements: !510)
!509 = !DIFile(filename: "lib/dns/include/dns/compress.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "ae360072e6dd15c4fe76c4efa2dcea4c")
!510 = !{!511, !512, !513, !514, !533, !537, !538}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !508, file: !509, line: 67, baseType: !13, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !508, file: !509, line: 68, baseType: !13, size: 32, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "edns", scope: !508, file: !509, line: 69, baseType: !161, size: 32, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !508, file: !509, line: 71, baseType: !515, size: 4096, offset: 128)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 4096, elements: !531)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_compressnode_t", file: !509, line: 56, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_compressnode", file: !509, line: 58, size: 896, elements: !519)
!519 = !{!520, !521, !522, !523, !530}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !518, file: !509, line: 59, baseType: !516, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !518, file: !509, line: 60, baseType: !138, size: 16, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !518, file: !509, line: 61, baseType: !138, size: 16, offset: 80)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !518, file: !509, line: 62, baseType: !524, size: 128, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_region_t", file: !167, line: 65, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_region", file: !526, line: 21, size: 128, elements: !527)
!526 = !DIFile(filename: "lib/isc/include/isc/region.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "2ed4a07dc05ddbd48f51e2dc9be9f317")
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !525, file: !526, line: 22, baseType: !142, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !525, file: !526, line: 23, baseType: !13, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !518, file: !509, line: 63, baseType: !367, size: 640, offset: 256)
!531 = !{!532}
!532 = !DISubrange(count: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "initialnodes", scope: !508, file: !509, line: 73, baseType: !534, size: 14336, offset: 4224)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 14336, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 16)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !508, file: !509, line: 74, baseType: !138, size: 16, offset: 18560)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !508, file: !509, line: 75, baseType: !183, size: 64, offset: 18624)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !458, file: !459, line: 241, baseType: !183, size: 64, offset: 1664)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "namepool", scope: !458, file: !459, line: 242, baseType: !541, size: 64, offset: 1728)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mempool_t", file: !167, line: 60, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mempool", file: !186, line: 205, size: 64, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !543, file: !186, line: 206, baseType: !13, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !543, file: !186, line: 207, baseType: !13, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rdspool", scope: !458, file: !459, line: 243, baseType: !541, size: 64, offset: 1792)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "scratchpad", scope: !458, file: !459, line: 245, baseType: !549, size: 128, offset: 1856)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_bufferlist_t", file: !167, line: 36, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !167, line: 36, size: 128, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !550, file: !167, line: 36, baseType: !165, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !550, file: !167, line: 36, baseType: !165, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !458, file: !459, line: 246, baseType: !549, size: 128, offset: 1984)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rdatas", scope: !458, file: !459, line: 248, baseType: !556, size: 128, offset: 2112)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !459, line: 248, size: 128, elements: !557)
!557 = !{!558, !562}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !556, file: !459, line: 248, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_msgblock_t", file: !459, line: 189, baseType: !561)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_msgblock", file: !459, line: 189, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !556, file: !459, line: 248, baseType: !559, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rdatalists", scope: !458, file: !459, line: 249, baseType: !564, size: 128, offset: 2240)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !459, line: 249, size: 128, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !564, file: !459, line: 249, baseType: !559, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !564, file: !459, line: 249, baseType: !559, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !458, file: !459, line: 250, baseType: !569, size: 128, offset: 2368)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !459, line: 250, size: 128, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !569, file: !459, line: 250, baseType: !559, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !569, file: !459, line: 250, baseType: !559, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "freerdata", scope: !458, file: !459, line: 252, baseType: !574, size: 128, offset: 2496)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !459, line: 252, size: 128, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !574, file: !459, line: 252, baseType: !159, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !574, file: !459, line: 252, baseType: !159, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "freerdatalist", scope: !458, file: !459, line: 253, baseType: !579, size: 128, offset: 2624)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !459, line: 253, size: 128, elements: !580)
!580 = !{!581, !604}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !579, file: !459, line: 253, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatalist_t", file: !18, line: 122, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatalist", file: !585, line: 47, size: 640, elements: !586)
!585 = !DIFile(filename: "lib/dns/include/dns/rdatalist.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "83ad1004003459f099937cac6d2eb8e0")
!586 = !{!587, !588, !589, !590, !592, !597, !602}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !584, file: !585, line: 48, baseType: !137, size: 16)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !584, file: !585, line: 49, baseType: !141, size: 16, offset: 16)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "covers", scope: !584, file: !585, line: 50, baseType: !141, size: 16, offset: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !584, file: !585, line: 51, baseType: !591, size: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_ttl_t", file: !18, line: 144, baseType: !361)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rdata", scope: !584, file: !585, line: 52, baseType: !593, size: 128, offset: 128)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !584, file: !585, line: 52, size: 128, elements: !594)
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !593, file: !585, line: 52, baseType: !159, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !593, file: !585, line: 52, baseType: !159, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !584, file: !585, line: 53, baseType: !598, size: 128, offset: 256)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !584, file: !585, line: 53, size: 128, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !598, file: !585, line: 53, baseType: !582, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !598, file: !585, line: 53, baseType: !582, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !584, file: !585, line: 59, baseType: !603, size: 256, offset: 384)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 256, elements: !245)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !579, file: !459, line: 253, baseType: !582, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "tsigstatus", scope: !458, file: !459, line: 255, baseType: !466, size: 16, offset: 2752)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "querytsigstatus", scope: !458, file: !459, line: 256, baseType: !466, size: 16, offset: 2768)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "tsigname", scope: !458, file: !459, line: 257, baseType: !382, size: 64, offset: 2816)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "querytsig", scope: !458, file: !459, line: 258, baseType: !388, size: 64, offset: 2880)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tsigkey", scope: !458, file: !459, line: 259, baseType: !610, size: 64, offset: 2944)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_tsigkey_t", file: !18, line: 143, baseType: !612)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_tsigkey", file: !18, line: 143, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "tsigctx", scope: !458, file: !459, line: 260, baseType: !614, size: 64, offset: 3008)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_context_t", file: !616, line: 45, baseType: !617)
!616 = !DIFile(filename: "lib/dns/include/dst/dst.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "10e76bcacbe005e6cc7dee2ac6ffac9a")
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_context", file: !616, line: 45, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sigstart", scope: !458, file: !459, line: 261, baseType: !161, size: 32, offset: 3072)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "timeadjust", scope: !458, file: !459, line: 262, baseType: !161, size: 32, offset: 3104)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "sig0name", scope: !458, file: !459, line: 264, baseType: !382, size: 64, offset: 3136)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sig0key", scope: !458, file: !459, line: 265, baseType: !622, size: 64, offset: 3200)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_key_t", file: !616, line: 44, baseType: !624)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_key", file: !616, line: 44, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sig0status", scope: !458, file: !459, line: 266, baseType: !466, size: 16, offset: 3264)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !458, file: !459, line: 267, baseType: !524, size: 128, offset: 3328)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "saved", scope: !458, file: !459, line: 268, baseType: !524, size: 128, offset: 3456)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !458, file: !459, line: 270, baseType: !629, size: 64, offset: 3584)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetorderfunc_t", file: !18, line: 415, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!161, !144, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "order_arg", scope: !458, file: !459, line: 271, baseType: !636, size: 192, offset: 3648)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_sortlist_arg_t", file: !18, line: 134, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_sortlist_arg", file: !459, line: 191, size: 192, elements: !638)
!638 = !{!639, !643, !648}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !637, file: !459, line: 192, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_aclenv_t", file: !18, line: 32, baseType: !642)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_aclenv", file: !18, line: 32, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "acl", scope: !637, file: !459, line: 193, baseType: !644, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_acl_t", file: !18, line: 30, baseType: !647)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_acl", file: !18, line: 30, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !637, file: !459, line: 194, baseType: !649, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_aclelement_t", file: !18, line: 31, baseType: !652)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_aclelement", file: !18, line: 31, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !390, file: !391, line: 110, baseType: !654, size: 128, offset: 128)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !391, line: 110, size: 128, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !654, file: !391, line: 110, baseType: !388, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !654, file: !391, line: 110, baseType: !388, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !390, file: !391, line: 117, baseType: !137, size: 16, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !391, line: 118, baseType: !141, size: 16, offset: 272)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !390, file: !391, line: 119, baseType: !591, size: 32, offset: 288)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "stale_ttl", scope: !390, file: !391, line: 124, baseType: !591, size: 32, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !390, file: !391, line: 125, baseType: !437, size: 16, offset: 352)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "covers", scope: !390, file: !391, line: 126, baseType: !141, size: 16, offset: 368)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !390, file: !391, line: 131, baseType: !13, size: 32, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !390, file: !391, line: 139, baseType: !361, size: 32, offset: 416)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "resign", scope: !390, file: !391, line: 145, baseType: !667, size: 32, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_stdtime_t", file: !668, line: 26, baseType: !361)
!668 = !DIFile(filename: "../../lib/isc/unix/include/isc/stdtime.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/dnssec", checksumkind: CSK_MD5, checksum: "b8868fded6c0eb282ad50986c628a693")
!669 = !DIDerivedType(tag: DW_TAG_member, name: "private1", scope: !390, file: !391, line: 152, baseType: !128, size: 64, offset: 512)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "private2", scope: !390, file: !391, line: 153, baseType: !128, size: 64, offset: 576)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "private3", scope: !390, file: !391, line: 154, baseType: !128, size: 64, offset: 640)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "privateuint4", scope: !390, file: !391, line: 155, baseType: !13, size: 32, offset: 704)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "private5", scope: !390, file: !391, line: 156, baseType: !128, size: 64, offset: 768)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "private6", scope: !390, file: !391, line: 157, baseType: !633, size: 64, offset: 832)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "private7", scope: !390, file: !391, line: 158, baseType: !633, size: 64, offset: 896)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !385, file: !369, line: 113, baseType: !388, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "siglen", scope: !341, file: !340, line: 1386, baseType: !138, size: 16, offset: 1088)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !341, file: !340, line: 1387, baseType: !142, size: 64, offset: 1152)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(name: "cdnskey_set", scope: !10, file: !2, line: 140, type: !389, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(name: "cdnskey_sig", scope: !10, file: !2, line: 140, type: !389, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(name: "cds_set", scope: !10, file: !2, line: 141, type: !389, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(name: "cds_sig", scope: !10, file: !2, line: 141, type: !389, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(name: "dnskey_set", scope: !10, file: !2, line: 142, type: !389, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(name: "dnskey_sig", scope: !10, file: !2, line: 142, type: !389, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(name: "old_ds_set", scope: !10, file: !2, line: 143, type: !389, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(name: "new_ds_set", scope: !10, file: !2, line: 143, type: !389, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(name: "old_key_tbl", scope: !10, file: !2, line: 145, type: !697, isLocal: true, isDefinition: true)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyinfo_t", file: !2, line: 134, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyinfo", file: !2, line: 129, size: 448, elements: !700)
!700 = !{!701, !702, !703, !704}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rdata", scope: !699, file: !2, line: 130, baseType: !146, size: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !699, file: !2, line: 131, baseType: !622, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !699, file: !2, line: 132, baseType: !358, size: 8, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !699, file: !2, line: 133, baseType: !705, size: 16, offset: 400)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_keytag_t", file: !18, line: 98, baseType: !138)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(name: "new_key_tbl", scope: !10, file: !2, line: 145, type: !697, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(name: "mctx", scope: !10, file: !2, line: 75, type: !183, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !2, line: 866, type: !712, isLocal: true, isDefinition: true)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 34)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(name: "rdclass", scope: !10, file: !2, line: 83, type: !137, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(name: "startstr", scope: !10, file: !2, line: 91, type: !202, isLocal: true, isDefinition: true)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1108, type: !721, isLocal: true, isDefinition: true)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !335)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1110, type: !724, isLocal: true, isDefinition: true)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 55)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1112, type: !729, isLocal: true, isDefinition: true)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 13)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1112, type: !734, isLocal: true, isDefinition: true)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 7)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1113, type: !739, isLocal: true, isDefinition: true)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4416, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 552)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !249, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(name: "fixed", scope: !10, file: !2, line: 81, type: !746, isLocal: true, isDefinition: true)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_fixedname_t", file: !18, line: 87, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_fixedname", file: !748, line: 61, size: 4224, elements: !749)
!748 = !DIFile(filename: "lib/dns/include/dns/fixedname.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "0de03067a9d468538b5b154e7da6cb18")
!749 = !{!750, !751, !756, !757}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !747, file: !748, line: 62, baseType: !367, size: 640)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !747, file: !748, line: 63, baseType: !752, size: 1024, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_offsets_t", file: !18, line: 112, baseType: !753)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1024, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !747, file: !748, line: 64, baseType: !166, size: 512, offset: 1664)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !747, file: !748, line: 65, baseType: !758, size: 2040, offset: 2176)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 2040, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 255)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(name: "name", scope: !10, file: !2, line: 82, type: !382, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(name: "lctx", scope: !10, file: !2, line: 74, type: !765, isLocal: true, isDefinition: true)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_log_t", file: !167, line: 55, baseType: !767)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_log", file: !167, line: 55, flags: DIFlagFwdDecl)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !2, line: 343, type: !264, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !2, line: 352, type: !312, isLocal: true, isDefinition: true)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !2, line: 358, type: !774, isLocal: true, isDefinition: true)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 39)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !779, isLocal: true, isDefinition: true)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: 22)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !2, line: 303, type: !729, isLocal: true, isDefinition: true)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !2, line: 303, type: !786, isLocal: true, isDefinition: true)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 52)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !2, line: 303, type: !791, isLocal: true, isDefinition: true)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 44)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !2, line: 306, type: !734, isLocal: true, isDefinition: true)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !2, line: 309, type: !798, isLocal: true, isDefinition: true)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 2)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !2, line: 318, type: !803, isLocal: true, isDefinition: true)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 26)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !2, line: 328, type: !293, isLocal: true, isDefinition: true)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !2, line: 328, type: !774, isLocal: true, isDefinition: true)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(name: "notbefore", scope: !10, file: !2, line: 92, type: !667, isLocal: true, isDefinition: true)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !2, line: 252, type: !814, isLocal: true, isDefinition: true)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !472)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !2, line: 254, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !535)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !2, line: 259, type: !820, isLocal: true, isDefinition: true)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 18)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !2, line: 265, type: !298, isLocal: true, isDefinition: true)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !779, isLocal: true, isDefinition: true)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(name: "namestr", scope: !10, file: !2, line: 80, type: !202, isLocal: true, isDefinition: true)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(scope: null, file: !2, line: 559, type: !831, isLocal: true, isDefinition: true)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 9)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(scope: null, file: !2, line: 567, type: !836, isLocal: true, isDefinition: true)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 27)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !2, line: 581, type: !841, isLocal: true, isDefinition: true)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 49)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(name: "nkey", scope: !10, file: !2, line: 95, type: !161, isLocal: true, isDefinition: true)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !2, line: 489, type: !254, isLocal: true, isDefinition: true)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !850, isLocal: true, isDefinition: true)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !851)
!851 = !{!852}
!852 = !DISubrange(count: 54)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(scope: null, file: !2, line: 508, type: !281, isLocal: true, isDefinition: true)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(scope: null, file: !2, line: 509, type: !814, isLocal: true, isDefinition: true)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !2, line: 509, type: !859, isLocal: true, isDefinition: true)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 3)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !2, line: 513, type: !864, isLocal: true, isDefinition: true)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 61)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !249, isLocal: true, isDefinition: true)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(scope: null, file: !2, line: 525, type: !721, isLocal: true, isDefinition: true)
!871 = !DIGlobalVariableExpression(var: !872, expr: !DIExpression())
!872 = distinct !DIGlobalVariable(scope: null, file: !2, line: 525, type: !734, isLocal: true, isDefinition: true)
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression())
!874 = distinct !DIGlobalVariable(scope: null, file: !2, line: 627, type: !774, isLocal: true, isDefinition: true)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(scope: null, file: !2, line: 641, type: !803, isLocal: true, isDefinition: true)
!877 = !DIGlobalVariableExpression(var: !878, expr: !DIExpression())
!878 = distinct !DIGlobalVariable(scope: null, file: !2, line: 647, type: !305, isLocal: true, isDefinition: true)
!879 = !DIGlobalVariableExpression(var: !880, expr: !DIExpression())
!880 = distinct !DIGlobalVariable(scope: null, file: !2, line: 661, type: !881, isLocal: true, isDefinition: true)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !882)
!882 = !{!883}
!883 = !DISubrange(count: 41)
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(scope: null, file: !2, line: 673, type: !886, isLocal: true, isDefinition: true)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !887)
!887 = !{!888}
!888 = !DISubrange(count: 47)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(scope: null, file: !2, line: 679, type: !254, isLocal: true, isDefinition: true)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(scope: null, file: !2, line: 690, type: !803, isLocal: true, isDefinition: true)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !895, isLocal: true, isDefinition: true)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !896)
!896 = !{!897}
!897 = !DISubrange(count: 20)
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !900, isLocal: true, isDefinition: true)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !901)
!901 = !{!902}
!902 = !DISubrange(count: 43)
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression())
!904 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !734, isLocal: true, isDefinition: true)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(scope: null, file: !2, line: 166, type: !907, isLocal: true, isDefinition: true)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !908)
!908 = !{!909}
!909 = !DISubrange(count: 12)
!910 = !DIGlobalVariableExpression(var: !911, expr: !DIExpression())
!911 = distinct !DIGlobalVariable(scope: null, file: !2, line: 427, type: !859, isLocal: true, isDefinition: true)
!912 = !DIGlobalVariableExpression(var: !913, expr: !DIExpression())
!913 = distinct !DIGlobalVariable(scope: null, file: !2, line: 430, type: !281, isLocal: true, isDefinition: true)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !907, isLocal: true, isDefinition: true)
!916 = !DIGlobalVariableExpression(var: !917, expr: !DIExpression())
!917 = distinct !DIGlobalVariable(scope: null, file: !2, line: 443, type: !907, isLocal: true, isDefinition: true)
!918 = !DIGlobalVariableExpression(var: !919, expr: !DIExpression())
!919 = distinct !DIGlobalVariable(scope: null, file: !2, line: 450, type: !920, isLocal: true, isDefinition: true)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 24)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(scope: null, file: !2, line: 457, type: !925, isLocal: true, isDefinition: true)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !926)
!926 = !{!927}
!927 = !DISubrange(count: 38)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !2, line: 384, type: !305, isLocal: true, isDefinition: true)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(scope: null, file: !2, line: 387, type: !895, isLocal: true, isDefinition: true)
!932 = !DIGlobalVariableExpression(var: !933, expr: !DIExpression())
!933 = distinct !DIGlobalVariable(scope: null, file: !2, line: 394, type: !779, isLocal: true, isDefinition: true)
!934 = !DIGlobalVariableExpression(var: !935, expr: !DIExpression())
!935 = distinct !DIGlobalVariable(scope: null, file: !2, line: 396, type: !925, isLocal: true, isDefinition: true)
!936 = !DIGlobalVariableExpression(var: !937, expr: !DIExpression())
!937 = distinct !DIGlobalVariable(scope: null, file: !2, line: 880, type: !836, isLocal: true, isDefinition: true)
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(scope: null, file: !2, line: 891, type: !274, isLocal: true, isDefinition: true)
!940 = !DIGlobalVariableExpression(var: !941, expr: !DIExpression())
!941 = distinct !DIGlobalVariable(scope: null, file: !2, line: 894, type: !920, isLocal: true, isDefinition: true)
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(scope: null, file: !2, line: 907, type: !920, isLocal: true, isDefinition: true)
!944 = !DIGlobalVariableExpression(var: !945, expr: !DIExpression())
!945 = distinct !DIGlobalVariable(scope: null, file: !2, line: 914, type: !817, isLocal: true, isDefinition: true)
!946 = !DIGlobalVariableExpression(var: !947, expr: !DIExpression())
!947 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !244, isLocal: true, isDefinition: true)
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!949 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !244, isLocal: true, isDefinition: true)
!950 = !DIGlobalVariableExpression(var: !951, expr: !DIExpression())
!951 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !244, isLocal: true, isDefinition: true)
!952 = !DIGlobalVariableExpression(var: !953, expr: !DIExpression())
!953 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !244, isLocal: true, isDefinition: true)
!954 = !DIGlobalVariableExpression(var: !955, expr: !DIExpression())
!955 = distinct !DIGlobalVariable(scope: null, file: !2, line: 764, type: !920, isLocal: true, isDefinition: true)
!956 = !DIGlobalVariableExpression(var: !957, expr: !DIExpression())
!957 = distinct !DIGlobalVariable(scope: null, file: !2, line: 797, type: !920, isLocal: true, isDefinition: true)
!958 = !DIGlobalVariableExpression(var: !959, expr: !DIExpression())
!959 = distinct !DIGlobalVariable(scope: null, file: !2, line: 952, type: !960, isLocal: true, isDefinition: true)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 30)
!963 = !DIGlobalVariableExpression(var: !964, expr: !DIExpression())
!964 = distinct !DIGlobalVariable(scope: null, file: !2, line: 971, type: !274, isLocal: true, isDefinition: true)
!965 = !DIGlobalVariableExpression(var: !966, expr: !DIExpression())
!966 = distinct !DIGlobalVariable(scope: null, file: !2, line: 748, type: !286, isLocal: true, isDefinition: true)
!967 = !DIGlobalVariableExpression(var: !968, expr: !DIExpression())
!968 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1089, type: !969, isLocal: true, isDefinition: true)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !970)
!970 = !{!971}
!971 = !DISubrange(count: 36)
!972 = !DIGlobalVariableExpression(var: !973, expr: !DIExpression())
!973 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1091, type: !814, isLocal: true, isDefinition: true)
!974 = !DIGlobalVariableExpression(var: !975, expr: !DIExpression())
!975 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1092, type: !814, isLocal: true, isDefinition: true)
!976 = !DIGlobalVariableExpression(var: !977, expr: !DIExpression())
!977 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1094, type: !820, isLocal: true, isDefinition: true)
!978 = !DIGlobalVariableExpression(var: !979, expr: !DIExpression())
!979 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1096, type: !980, isLocal: true, isDefinition: true)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !981)
!981 = !{!982}
!982 = !DISubrange(count: 6)
!983 = !DIGlobalVariableExpression(var: !984, expr: !DIExpression())
!984 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1099, type: !985, isLocal: true, isDefinition: true)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !986)
!986 = !{!987}
!987 = !DISubrange(count: 17)
!988 = !DIGlobalVariableExpression(var: !989, expr: !DIExpression())
!989 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1055, type: !895, isLocal: true, isDefinition: true)
!990 = !DIGlobalVariableExpression(var: !991, expr: !DIExpression())
!991 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1059, type: !820, isLocal: true, isDefinition: true)
!992 = !DIGlobalVariableExpression(var: !993, expr: !DIExpression())
!993 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1065, type: !234, isLocal: true, isDefinition: true)
!994 = !DIGlobalVariableExpression(var: !995, expr: !DIExpression())
!995 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1075, type: !803, isLocal: true, isDefinition: true)
!996 = !DIGlobalVariableExpression(var: !997, expr: !DIExpression())
!997 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1030, type: !998, isLocal: true, isDefinition: true)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !999)
!999 = !{!1000}
!1000 = !DISubrange(count: 15)
!1001 = !DIGlobalVariableExpression(var: !1002, expr: !DIExpression())
!1002 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1031, type: !985, isLocal: true, isDefinition: true)
!1003 = !{i32 7, !"Dwarf Version", i32 5}
!1004 = !{i32 2, !"Debug Info Version", i32 3}
!1005 = !{i32 1, !"wchar_size", i32 4}
!1006 = !{i32 8, !"PIC Level", i32 2}
!1007 = !{i32 7, !"uwtable", i32 2}
!1008 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!1009 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 1130, type: !1010, scopeLine: 1130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1013)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!161, !161, !1012}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025}
!1014 = !DILocalVariable(name: "argc", arg: 1, scope: !1009, file: !2, line: 1130, type: !161)
!1015 = !DILocalVariable(name: "argv", arg: 2, scope: !1009, file: !2, line: 1130, type: !1012)
!1016 = !DILocalVariable(name: "child_path", scope: !1009, file: !2, line: 1131, type: !202)
!1017 = !DILocalVariable(name: "ds_path", scope: !1009, file: !2, line: 1132, type: !202)
!1018 = !DILocalVariable(name: "inplace", scope: !1009, file: !2, line: 1133, type: !202)
!1019 = !DILocalVariable(name: "result", scope: !1009, file: !2, line: 1134, type: !407)
!1020 = !DILocalVariable(name: "prefer_cdnskey", scope: !1009, file: !2, line: 1135, type: !226)
!1021 = !DILocalVariable(name: "nsupdate", scope: !1009, file: !2, line: 1136, type: !226)
!1022 = !DILocalVariable(name: "ttl", scope: !1009, file: !2, line: 1137, type: !361)
!1023 = !DILocalVariable(name: "ch", scope: !1009, file: !2, line: 1138, type: !161)
!1024 = !DILocalVariable(name: "endp", scope: !1009, file: !2, line: 1139, type: !143)
!1025 = !DILocalVariable(name: "type", scope: !1026, file: !2, line: 1316, type: !1028)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 1315, column: 48)
!1027 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1315, column: 6)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 256, elements: !245)
!1029 = !DILocation(line: 1130, column: 10, scope: !1009)
!1030 = !DILocation(line: 1130, column: 22, scope: !1009)
!1031 = !DILocation(line: 1131, column: 2, scope: !1009)
!1032 = !DILocation(line: 1131, column: 14, scope: !1009)
!1033 = !DILocation(line: 1132, column: 2, scope: !1009)
!1034 = !DILocation(line: 1132, column: 14, scope: !1009)
!1035 = !DILocation(line: 1133, column: 2, scope: !1009)
!1036 = !DILocation(line: 1133, column: 14, scope: !1009)
!1037 = !DILocation(line: 1134, column: 2, scope: !1009)
!1038 = !DILocation(line: 1134, column: 15, scope: !1009)
!1039 = !DILocation(line: 1135, column: 2, scope: !1009)
!1040 = !DILocation(line: 1135, column: 7, scope: !1009)
!1041 = !DILocation(line: 1136, column: 2, scope: !1009)
!1042 = !DILocation(line: 1136, column: 7, scope: !1009)
!1043 = !DILocation(line: 1137, column: 2, scope: !1009)
!1044 = !DILocation(line: 1137, column: 11, scope: !1009)
!1045 = !DILocation(line: 1138, column: 2, scope: !1009)
!1046 = !DILocation(line: 1138, column: 6, scope: !1009)
!1047 = !DILocation(line: 1139, column: 2, scope: !1009)
!1048 = !DILocation(line: 1139, column: 8, scope: !1009)
!1049 = !DILocation(line: 1141, column: 11, scope: !1009)
!1050 = !DILocation(line: 1141, column: 9, scope: !1009)
!1051 = !DILocation(line: 1142, column: 6, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1142, column: 6)
!1053 = !DILocation(line: 1142, column: 13, scope: !1052)
!1054 = !DILocation(line: 1142, column: 6, scope: !1009)
!1055 = !DILocation(line: 1143, column: 3, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 1142, column: 31)
!1057 = !DILocation(line: 1149, column: 2, scope: !1009)
!1058 = !DILocation(line: 1151, column: 27, scope: !1009)
!1059 = !DILocation(line: 1154, column: 2, scope: !1009)
!1060 = !DILocation(line: 1154, column: 37, scope: !1009)
!1061 = !DILocation(line: 1154, column: 43, scope: !1009)
!1062 = !DILocation(line: 1154, column: 15, scope: !1009)
!1063 = !DILocation(line: 1154, column: 13, scope: !1009)
!1064 = !DILocation(line: 1154, column: 59, scope: !1009)
!1065 = !DILocation(line: 1155, column: 11, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1154, column: 66)
!1067 = !DILocation(line: 1155, column: 3, scope: !1066)
!1068 = !DILocation(line: 1157, column: 14, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 1155, column: 15)
!1070 = !DILocation(line: 1157, column: 4, scope: !1069)
!1071 = !DILocation(line: 1158, column: 4, scope: !1069)
!1072 = !DILocation(line: 1160, column: 25, scope: !1069)
!1073 = !DILocation(line: 1160, column: 14, scope: !1069)
!1074 = !DILocation(line: 1160, column: 12, scope: !1069)
!1075 = !DILocation(line: 1161, column: 4, scope: !1069)
!1076 = !DILocation(line: 1163, column: 19, scope: !1069)
!1077 = !DILocation(line: 1164, column: 4, scope: !1069)
!1078 = !DILocation(line: 1166, column: 14, scope: !1069)
!1079 = !DILocation(line: 1166, column: 12, scope: !1069)
!1080 = !DILocation(line: 1167, column: 4, scope: !1069)
!1081 = !DILocation(line: 1169, column: 17, scope: !1069)
!1082 = !DILocation(line: 1169, column: 15, scope: !1069)
!1083 = !DILocation(line: 1170, column: 4, scope: !1069)
!1084 = !DILocation(line: 1176, column: 8, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 1176, column: 8)
!1086 = !DILocation(line: 1177, column: 8, scope: !1085)
!1087 = !DILocation(line: 1177, column: 13, scope: !1085)
!1088 = !DILocation(line: 1177, column: 35, scope: !1085)
!1089 = !DILocation(line: 1176, column: 33, scope: !1085)
!1090 = !DILocation(line: 1176, column: 8, scope: !1069)
!1091 = !DILocation(line: 1179, column: 26, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 1178, column: 4)
!1093 = !DILocation(line: 1180, column: 13, scope: !1092)
!1094 = !DILocation(line: 1181, column: 4, scope: !1092)
!1095 = !DILocation(line: 1182, column: 15, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 1181, column: 11)
!1097 = !DILocation(line: 1182, column: 13, scope: !1096)
!1098 = !DILocation(line: 1184, column: 4, scope: !1069)
!1099 = !DILocation(line: 1186, column: 22, scope: !1069)
!1100 = !DILocation(line: 1188, column: 4, scope: !1069)
!1101 = !DILocation(line: 1190, column: 15, scope: !1069)
!1102 = !DILocation(line: 1190, column: 13, scope: !1069)
!1103 = !DILocation(line: 1191, column: 4, scope: !1069)
!1104 = !DILocation(line: 1193, column: 19, scope: !1069)
!1105 = !DILocation(line: 1193, column: 10, scope: !1069)
!1106 = !DILocation(line: 1193, column: 8, scope: !1069)
!1107 = !DILocation(line: 1194, column: 4, scope: !1069)
!1108 = !DILocation(line: 1196, column: 13, scope: !1069)
!1109 = !DILocation(line: 1197, column: 4, scope: !1069)
!1110 = !DILocation(line: 1200, column: 12, scope: !1069)
!1111 = !DILocation(line: 1200, column: 4, scope: !1069)
!1112 = !DILocation(line: 1203, column: 22, scope: !1069)
!1113 = !DILocation(line: 1203, column: 14, scope: !1069)
!1114 = !DILocation(line: 1203, column: 12, scope: !1069)
!1115 = !DILocation(line: 1204, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 1204, column: 8)
!1117 = !DILocation(line: 1204, column: 8, scope: !1116)
!1118 = !DILocation(line: 1204, column: 14, scope: !1116)
!1119 = !DILocation(line: 1204, column: 8, scope: !1069)
!1120 = !DILocation(line: 1205, column: 5, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 1204, column: 23)
!1122 = !DILocation(line: 1207, column: 4, scope: !1069)
!1123 = !DILocation(line: 1209, column: 4, scope: !1069)
!1124 = distinct !{!1124, !1059, !1125, !1126}
!1125 = !DILocation(line: 1212, column: 2, scope: !1009)
!1126 = !{!"llvm.loop.mustprogress"}
!1127 = !DILocation(line: 1213, column: 10, scope: !1009)
!1128 = !DILocation(line: 1213, column: 7, scope: !1009)
!1129 = !DILocation(line: 1214, column: 10, scope: !1009)
!1130 = !DILocation(line: 1214, column: 7, scope: !1009)
!1131 = !DILocation(line: 1216, column: 6, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1216, column: 6)
!1133 = !DILocation(line: 1216, column: 11, scope: !1132)
!1134 = !DILocation(line: 1216, column: 6, scope: !1009)
!1135 = !DILocation(line: 1217, column: 3, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 1216, column: 17)
!1137 = !DILocation(line: 1219, column: 11, scope: !1009)
!1138 = !DILocation(line: 1219, column: 2, scope: !1009)
!1139 = !DILocation(line: 1224, column: 6, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1224, column: 6)
!1141 = !DILocation(line: 1224, column: 15, scope: !1140)
!1142 = !DILocation(line: 1224, column: 6, scope: !1009)
!1143 = !DILocation(line: 1225, column: 12, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 1224, column: 21)
!1145 = !DILocation(line: 1226, column: 2, scope: !1144)
!1146 = !DILocation(line: 1228, column: 16, scope: !1009)
!1147 = !DILocation(line: 1228, column: 2, scope: !1009)
!1148 = !DILocation(line: 1230, column: 24, scope: !1009)
!1149 = !DILocation(line: 1230, column: 11, scope: !1009)
!1150 = !DILocation(line: 1230, column: 9, scope: !1009)
!1151 = !DILocation(line: 1231, column: 6, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1231, column: 6)
!1153 = !DILocation(line: 1231, column: 13, scope: !1152)
!1154 = !DILocation(line: 1231, column: 6, scope: !1009)
!1155 = !DILocation(line: 1233, column: 27, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 1231, column: 31)
!1157 = !DILocation(line: 1233, column: 9, scope: !1156)
!1158 = !DILocation(line: 1232, column: 3, scope: !1156)
!1159 = !DILocation(line: 1236, column: 6, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1236, column: 6)
!1161 = !DILocation(line: 1236, column: 14, scope: !1160)
!1162 = !DILocation(line: 1236, column: 6, scope: !1009)
!1163 = !DILocation(line: 1237, column: 3, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 1236, column: 23)
!1165 = !DILocation(line: 1239, column: 18, scope: !1009)
!1166 = !DILocation(line: 1239, column: 2, scope: !1009)
!1167 = !DILocation(line: 1244, column: 6, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1244, column: 6)
!1169 = !DILocation(line: 1244, column: 10, scope: !1168)
!1170 = !DILocation(line: 1244, column: 6, scope: !1009)
!1171 = !DILocation(line: 1245, column: 20, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 1244, column: 16)
!1173 = !DILocation(line: 1245, column: 7, scope: !1172)
!1174 = !DILocation(line: 1246, column: 2, scope: !1172)
!1175 = !DILocation(line: 1248, column: 6, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1248, column: 6)
!1177 = !DILocation(line: 1248, column: 17, scope: !1176)
!1178 = !DILocation(line: 1248, column: 6, scope: !1009)
!1179 = !DILocation(line: 1249, column: 3, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 1248, column: 26)
!1181 = !DILocation(line: 1252, column: 18, scope: !1009)
!1182 = !DILocation(line: 1252, column: 2, scope: !1009)
!1183 = !DILocation(line: 1258, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1258, column: 6)
!1185 = !DILocation(line: 1258, column: 46, scope: !1184)
!1186 = !DILocation(line: 1259, column: 7, scope: !1184)
!1187 = !DILocation(line: 1258, column: 6, scope: !1009)
!1188 = !DILocation(line: 1261, column: 54, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 1260, column: 2)
!1190 = !DILocation(line: 1261, column: 3, scope: !1189)
!1191 = !DILocation(line: 1264, column: 6, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1264, column: 6)
!1193 = !DILocation(line: 1264, column: 46, scope: !1192)
!1194 = !DILocation(line: 1265, column: 7, scope: !1192)
!1195 = !DILocation(line: 1264, column: 6, scope: !1009)
!1196 = !DILocation(line: 1267, column: 49, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 1266, column: 2)
!1198 = !DILocation(line: 1267, column: 3, scope: !1197)
!1199 = !DILocation(line: 1269, column: 6, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1269, column: 6)
!1201 = !DILocation(line: 1269, column: 42, scope: !1200)
!1202 = !DILocation(line: 1270, column: 7, scope: !1200)
!1203 = !DILocation(line: 1269, column: 6, scope: !1009)
!1204 = !DILocation(line: 1272, column: 45, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 1271, column: 2)
!1206 = !DILocation(line: 1272, column: 3, scope: !1205)
!1207 = !DILocation(line: 1275, column: 2, scope: !1009)
!1208 = !DILocation(line: 1276, column: 16, scope: !1009)
!1209 = !DILocation(line: 1276, column: 14, scope: !1009)
!1210 = !DILocation(line: 1284, column: 2, scope: !1009)
!1211 = !DILocation(line: 1285, column: 34, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1285, column: 6)
!1213 = !DILocation(line: 1285, column: 20, scope: !1212)
!1214 = !DILocation(line: 1285, column: 7, scope: !1212)
!1215 = !DILocation(line: 1285, column: 6, scope: !1009)
!1216 = !DILocation(line: 1287, column: 57, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !2, line: 1286, column: 2)
!1218 = !DILocation(line: 1287, column: 3, scope: !1217)
!1219 = !DILocation(line: 1290, column: 6, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1290, column: 6)
!1221 = !DILocation(line: 1290, column: 6, scope: !1009)
!1222 = !DILocation(line: 1291, column: 3, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 1290, column: 47)
!1224 = !DILocation(line: 1292, column: 35, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 1292, column: 7)
!1226 = !DILocation(line: 1292, column: 21, scope: !1225)
!1227 = !DILocation(line: 1292, column: 8, scope: !1225)
!1228 = !DILocation(line: 1292, column: 7, scope: !1223)
!1229 = !DILocation(line: 1296, column: 10, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 1294, column: 3)
!1231 = !DILocation(line: 1295, column: 4, scope: !1230)
!1232 = !DILocation(line: 1298, column: 2, scope: !1223)
!1233 = !DILocation(line: 1299, column: 6, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1299, column: 6)
!1235 = !DILocation(line: 1299, column: 6, scope: !1009)
!1236 = !DILocation(line: 1300, column: 3, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 1299, column: 43)
!1238 = !DILocation(line: 1301, column: 35, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 1301, column: 7)
!1240 = !DILocation(line: 1301, column: 21, scope: !1239)
!1241 = !DILocation(line: 1301, column: 8, scope: !1239)
!1242 = !DILocation(line: 1301, column: 7, scope: !1237)
!1243 = !DILocation(line: 1305, column: 10, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 1303, column: 3)
!1245 = !DILocation(line: 1304, column: 4, scope: !1244)
!1246 = !DILocation(line: 1307, column: 2, scope: !1237)
!1247 = !DILocation(line: 1309, column: 2, scope: !1009)
!1248 = !DILocation(line: 1315, column: 16, scope: !1027)
!1249 = !DILocation(line: 1315, column: 27, scope: !1027)
!1250 = !DILocation(line: 1315, column: 32, scope: !1027)
!1251 = !DILocation(line: 1315, column: 35, scope: !1027)
!1252 = !DILocation(line: 1315, column: 43, scope: !1027)
!1253 = !DILocation(line: 1315, column: 6, scope: !1009)
!1254 = !DILocation(line: 1316, column: 3, scope: !1026)
!1255 = !DILocation(line: 1316, column: 8, scope: !1026)
!1256 = !DILocation(line: 1317, column: 34, scope: !1026)
!1257 = !DILocation(line: 1317, column: 43, scope: !1026)
!1258 = !DILocation(line: 1317, column: 3, scope: !1026)
!1259 = !DILocation(line: 1319, column: 19, scope: !1026)
!1260 = !DILocation(line: 1318, column: 3, scope: !1026)
!1261 = !DILocation(line: 1321, column: 5, scope: !1026)
!1262 = !DILocation(line: 1321, column: 21, scope: !1026)
!1263 = !DILocation(line: 1321, column: 11, scope: !1026)
!1264 = !DILocation(line: 1320, column: 3, scope: !1026)
!1265 = !DILocation(line: 1322, column: 2, scope: !1027)
!1266 = !DILocation(line: 1322, column: 2, scope: !1026)
!1267 = !DILocation(line: 1328, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1328, column: 6)
!1269 = !DILocation(line: 1328, column: 47, scope: !1268)
!1270 = !DILocation(line: 1329, column: 7, scope: !1268)
!1271 = !DILocation(line: 1328, column: 6, scope: !1009)
!1272 = !DILocation(line: 1332, column: 5, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 1330, column: 2)
!1274 = !DILocation(line: 1331, column: 3, scope: !1273)
!1275 = !DILocation(line: 1333, column: 20, scope: !1273)
!1276 = !DILocation(line: 1333, column: 29, scope: !1273)
!1277 = !DILocation(line: 1333, column: 38, scope: !1273)
!1278 = !{i8 0, i8 2}
!1279 = !{}
!1280 = !DILocation(line: 1333, column: 3, scope: !1273)
!1281 = !DILocation(line: 1334, column: 3, scope: !1273)
!1282 = !DILocation(line: 1341, column: 6, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1341, column: 6)
!1284 = !DILocation(line: 1341, column: 21, scope: !1283)
!1285 = !DILocation(line: 1341, column: 24, scope: !1283)
!1286 = !DILocation(line: 1341, column: 6, scope: !1009)
!1287 = !DILocation(line: 1342, column: 36, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 1341, column: 65)
!1289 = !DILocation(line: 1342, column: 3, scope: !1288)
!1290 = !DILocation(line: 1343, column: 2, scope: !1288)
!1291 = !DILocation(line: 1343, column: 13, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 1343, column: 13)
!1293 = !DILocation(line: 1343, column: 13, scope: !1283)
!1294 = !DILocation(line: 1344, column: 32, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 1343, column: 50)
!1296 = !DILocation(line: 1344, column: 3, scope: !1295)
!1297 = !DILocation(line: 1345, column: 2, scope: !1295)
!1298 = !DILocation(line: 1346, column: 36, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 1345, column: 9)
!1300 = !DILocation(line: 1346, column: 3, scope: !1299)
!1301 = !DILocation(line: 1353, column: 2, scope: !1009)
!1302 = !DILocation(line: 1354, column: 16, scope: !1009)
!1303 = !DILocation(line: 1354, column: 14, scope: !1009)
!1304 = !DILocation(line: 1356, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1356, column: 6)
!1306 = !DILocation(line: 1356, column: 6, scope: !1009)
!1307 = !DILocation(line: 1358, column: 46, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 1356, column: 40)
!1309 = !DILocation(line: 1357, column: 3, scope: !1308)
!1310 = !DILocation(line: 1361, column: 2, scope: !1009)
!1311 = !DILocation(line: 1363, column: 21, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1362, column: 6)
!1313 = !DILocation(line: 1363, column: 7, scope: !1312)
!1314 = !DILocation(line: 1362, column: 7, scope: !1312)
!1315 = !DILocation(line: 1362, column: 6, scope: !1009)
!1316 = !DILocation(line: 1367, column: 39, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 1365, column: 2)
!1318 = !DILocation(line: 1366, column: 3, scope: !1317)
!1319 = !DILocation(line: 1370, column: 2, scope: !1009)
!1320 = !DILocation(line: 1375, column: 6, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1375, column: 6)
!1322 = !DILocation(line: 1375, column: 6, scope: !1009)
!1323 = !DILocation(line: 1376, column: 10, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 1375, column: 16)
!1325 = !DILocation(line: 1376, column: 3, scope: !1324)
!1326 = !DILocation(line: 1377, column: 2, scope: !1324)
!1327 = !DILocation(line: 1379, column: 19, scope: !1009)
!1328 = !DILocation(line: 1379, column: 28, scope: !1009)
!1329 = !DILocation(line: 1379, column: 37, scope: !1009)
!1330 = !DILocation(line: 1379, column: 2, scope: !1009)
!1331 = !DILocation(line: 1381, column: 2, scope: !1009)
!1332 = !DILocation(line: 1382, column: 2, scope: !1009)
!1333 = !DILocation(line: 1383, column: 2, scope: !1009)
!1334 = !DILocation(line: 1384, column: 6, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 1384, column: 6)
!1336 = !DILocation(line: 1384, column: 14, scope: !1335)
!1337 = !DILocation(line: 1384, column: 6, scope: !1009)
!1338 = !DILocation(line: 1385, column: 17, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 1384, column: 20)
!1340 = !DILocation(line: 1385, column: 23, scope: !1339)
!1341 = !DILocation(line: 1385, column: 3, scope: !1339)
!1342 = !DILocation(line: 1386, column: 2, scope: !1339)
!1343 = !DILocation(line: 1387, column: 2, scope: !1009)
!1344 = !DILocation(line: 1389, column: 2, scope: !1009)
!1345 = !DISubprogram(name: "isc_mem_create", scope: !186, file: !186, line: 258, type: !1346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!407, !199, !199, !211}
!1348 = !DISubprogram(name: "fatal", scope: !1349, file: !1349, line: 27, type: !1350, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1349 = !DIFile(filename: "./dnssectool.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/dnssec", checksumkind: CSK_MD5, checksum: "a3925156dd343f43ce1030829ae687f7")
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !202, null}
!1352 = !DISubprogram(name: "dns_result_register", scope: !1353, file: !1353, line: 195, type: !1354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1353 = !DIFile(filename: "lib/dns/include/dns/result.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "6f221f4c26ac435952b3c9016391913e")
!1354 = !DISubroutineType(types: !1355)
!1355 = !{null}
!1356 = !DISubprogram(name: "isc_commandline_parse", scope: !1357, file: !1357, line: 40, type: !1358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1357 = !DIFile(filename: "lib/isc/include/isc/commandline.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "e2d6ed42554c7c309a715d6bbca56377")
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!161, !161, !1360, !202}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!1362 = distinct !DISubprogram(name: "add_dtype", scope: !2, file: !2, line: 853, type: !1363, scopeLine: 853, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !202}
!1365 = !{!1366, !1367, !1368, !1369}
!1366 = !DILocalVariable(name: "dn", arg: 1, scope: !1362, file: !2, line: 853, type: !202)
!1367 = !DILocalVariable(name: "dt", scope: !1362, file: !2, line: 854, type: !131)
!1368 = !DILocalVariable(name: "i", scope: !1362, file: !2, line: 855, type: !13)
!1369 = !DILocalVariable(name: "n", scope: !1362, file: !2, line: 855, type: !13)
!1370 = !DILocation(line: 853, column: 23, scope: !1362)
!1371 = !DILocation(line: 854, column: 2, scope: !1362)
!1372 = !DILocation(line: 854, column: 17, scope: !1362)
!1373 = !DILocation(line: 855, column: 2, scope: !1362)
!1374 = !DILocation(line: 855, column: 11, scope: !1362)
!1375 = !DILocation(line: 855, column: 14, scope: !1362)
!1376 = !DILocation(line: 857, column: 21, scope: !1362)
!1377 = !DILocation(line: 857, column: 7, scope: !1362)
!1378 = !DILocation(line: 857, column: 5, scope: !1362)
!1379 = !DILocation(line: 858, column: 4, scope: !1362)
!1380 = !DILocation(line: 859, column: 9, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 859, column: 2)
!1382 = !DILocation(line: 859, column: 7, scope: !1381)
!1383 = !DILocation(line: 859, column: 14, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 859, column: 2)
!1385 = !DILocation(line: 859, column: 18, scope: !1384)
!1386 = !DILocation(line: 859, column: 16, scope: !1384)
!1387 = !DILocation(line: 859, column: 2, scope: !1381)
!1388 = !DILocation(line: 860, column: 13, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 860, column: 7)
!1390 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 859, column: 26)
!1391 = !DILocation(line: 860, column: 7, scope: !1389)
!1392 = !DILocation(line: 860, column: 16, scope: !1389)
!1393 = !DILocation(line: 860, column: 21, scope: !1389)
!1394 = !DILocation(line: 860, column: 30, scope: !1389)
!1395 = !DILocation(line: 860, column: 24, scope: !1389)
!1396 = !DILocation(line: 860, column: 36, scope: !1389)
!1397 = !DILocation(line: 860, column: 33, scope: !1389)
!1398 = !DILocation(line: 860, column: 7, scope: !1390)
!1399 = !DILocation(line: 861, column: 15, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 860, column: 40)
!1401 = !DILocation(line: 861, column: 10, scope: !1400)
!1402 = !DILocation(line: 861, column: 4, scope: !1400)
!1403 = !DILocation(line: 861, column: 13, scope: !1400)
!1404 = !DILocation(line: 862, column: 17, scope: !1400)
!1405 = !DILocation(line: 862, column: 18, scope: !1400)
!1406 = !DILocation(line: 862, column: 4, scope: !1400)
!1407 = !DILocation(line: 867, column: 1, scope: !1362)
!1408 = !DILocation(line: 865, column: 2, scope: !1390)
!1409 = !DILocation(line: 859, column: 22, scope: !1384)
!1410 = !DILocation(line: 859, column: 2, scope: !1384)
!1411 = distinct !{!1411, !1387, !1412, !1126}
!1412 = !DILocation(line: 865, column: 2, scope: !1381)
!1413 = !DILocation(line: 866, column: 2, scope: !1362)
!1414 = !DISubprogram(name: "strtoclass", scope: !1349, file: !1349, line: 62, type: !1415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!137, !202}
!1417 = !DISubprogram(name: "strtottl", scope: !1349, file: !1349, line: 52, type: !1418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!591, !202}
!1420 = !DISubprogram(name: "version", scope: !1349, file: !1349, line: 40, type: !1363, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1421 = !DISubprogram(name: "strtoul", scope: !1422, file: !1422, line: 181, type: !1423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1422 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!201, !1425, !1426, !161}
!1425 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !202)
!1426 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1012)
!1427 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 1107, type: !1354, scopeLine: 1107, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!1428 = !DILocation(line: 1108, column: 10, scope: !1427)
!1429 = !DILocation(line: 1108, column: 2, scope: !1427)
!1430 = !DILocation(line: 1109, column: 10, scope: !1427)
!1431 = !DILocation(line: 1111, column: 3, scope: !1427)
!1432 = !DILocation(line: 1109, column: 2, scope: !1427)
!1433 = !DILocation(line: 1112, column: 10, scope: !1427)
!1434 = !DILocation(line: 1112, column: 2, scope: !1427)
!1435 = !DILocation(line: 1113, column: 10, scope: !1427)
!1436 = !DILocation(line: 1113, column: 2, scope: !1427)
!1437 = !DILocation(line: 1126, column: 2, scope: !1427)
!1438 = distinct !DISubprogram(name: "initname", scope: !2, file: !2, line: 172, type: !1439, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1441)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !143}
!1441 = !{!1442, !1443, !1444}
!1442 = !DILocalVariable(name: "setname", arg: 1, scope: !1438, file: !2, line: 172, type: !143)
!1443 = !DILocalVariable(name: "result", scope: !1438, file: !2, line: 173, type: !407)
!1444 = !DILocalVariable(name: "buf", scope: !1438, file: !2, line: 174, type: !166)
!1445 = !DILocation(line: 172, column: 16, scope: !1438)
!1446 = !DILocation(line: 173, column: 2, scope: !1438)
!1447 = !DILocation(line: 173, column: 15, scope: !1438)
!1448 = !DILocation(line: 174, column: 2, scope: !1438)
!1449 = !DILocation(line: 174, column: 15, scope: !1438)
!1450 = !DILocation(line: 176, column: 9, scope: !1438)
!1451 = !DILocation(line: 176, column: 7, scope: !1438)
!1452 = !DILocation(line: 177, column: 12, scope: !1438)
!1453 = !DILocation(line: 177, column: 10, scope: !1438)
!1454 = !DILocation(line: 179, column: 2, scope: !1438)
!1455 = !DILocation(line: 179, column: 2, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 179, column: 2)
!1457 = !DILocation(line: 179, column: 2, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 179, column: 2)
!1459 = !DILocation(line: 180, column: 2, scope: !1438)
!1460 = !DILocation(line: 180, column: 2, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 180, column: 2)
!1462 = !DILocation(line: 181, column: 29, scope: !1438)
!1463 = !DILocation(line: 181, column: 41, scope: !1438)
!1464 = !DILocation(line: 181, column: 11, scope: !1438)
!1465 = !DILocation(line: 181, column: 9, scope: !1438)
!1466 = !DILocation(line: 182, column: 6, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 182, column: 6)
!1468 = !DILocation(line: 182, column: 13, scope: !1467)
!1469 = !DILocation(line: 182, column: 6, scope: !1438)
!1470 = !DILocation(line: 183, column: 41, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 182, column: 31)
!1472 = !DILocation(line: 183, column: 3, scope: !1471)
!1473 = !DILocation(line: 185, column: 1, scope: !1438)
!1474 = !DISubprogram(name: "setup_logging", scope: !1349, file: !1349, line: 47, type: !1475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !183, !1477}
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!1478 = !DISubprogram(name: "dst_lib_init", scope: !616, file: !616, line: 134, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!407, !183, !202}
!1481 = !DISubprogram(name: "isc_result_totext", scope: !1482, file: !1482, line: 97, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1482 = !DIFile(filename: "lib/isc/include/isc/result.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "b66e2fce4d36f26ced5288e76c5bf05c")
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!202, !407}
!1485 = distinct !DISubprogram(name: "load_parent_set", scope: !2, file: !2, line: 332, type: !1363, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1486)
!1486 = !{!1487, !1488, !1489, !1988, !1989, !1996, !2000}
!1487 = !DILocalVariable(name: "path", arg: 1, scope: !1485, file: !2, line: 332, type: !202)
!1488 = !DILocalVariable(name: "result", scope: !1485, file: !2, line: 333, type: !407)
!1489 = !DILocalVariable(name: "db", scope: !1485, file: !2, line: 334, type: !1490)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_db_t", file: !18, line: 54, baseType: !1492)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_db", file: !1493, line: 223, size: 1024, elements: !1494)
!1493 = !DIFile(filename: "lib/dns/include/dns/db.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f7341a6445a0da00d6edbc7f74bf2ce5")
!1494 = !{!1495, !1496, !1497, !1964, !1965, !1966, !1967, !1968}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1492, file: !1493, line: 224, baseType: !13, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !1492, file: !1493, line: 225, baseType: !13, size: 32, offset: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !1492, file: !1493, line: 226, baseType: !1498, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbmethods_t", file: !1493, line: 200, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbmethods", file: !1493, line: 71, size: 3072, elements: !1501)
!1501 = !{!1502, !1507, !1511, !1613, !1614, !1618, !1623, !1628, !1632, !1636, !1640, !1647, !1651, !1655, !1659, !1663, !1667, !1671, !1714, !1718, !1751, !1755, !1759, !1763, !1767, !1771, !1772, !1776, !1783, !1787, !1791, !1800, !1801, !1805, !1809, !1813, !1814, !1821, !1825, !1829, !1928, !1932, !1939, !1943, !1947, !1954, !1958, !1963}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1500, file: !1493, line: 72, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{null, !1490, !1506}
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1500, file: !1493, line: 73, baseType: !1508, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !1506}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "beginload", scope: !1500, file: !1493, line: 74, baseType: !1512, size: 64, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!407, !1490, !1515}
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatacallbacks_t", file: !18, line: 120, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatacallbacks", file: !1518, line: 36, size: 704, elements: !1519)
!1518 = !DIFile(filename: "lib/dns/include/dns/callbacks.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "63e693eb1cc4ad6f15f89851bc8cca18")
!1519 = !{!1520, !1521, !1526, !1583, !1602, !1603, !1608, !1609, !1610, !1611, !1612}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1517, file: !1518, line: 37, baseType: !13, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !1517, file: !1518, line: 42, baseType: !1522, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_addrdatasetfunc_t", file: !18, line: 400, baseType: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!407, !128, !425, !388}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "deserialize", scope: !1517, file: !1518, line: 48, baseType: !1527, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_deserializefunc_t", file: !18, line: 432, baseType: !1528)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!407, !128, !1531, !1581}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1533, line: 7, baseType: !1534)
!1533 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1535, line: 49, size: 1728, elements: !1536)
!1535 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1536 = !{!1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1552, !1554, !1555, !1556, !1559, !1560, !1562, !1564, !1567, !1569, !1572, !1575, !1576, !1577, !1578, !1579}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1534, file: !1535, line: 51, baseType: !161, size: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1534, file: !1535, line: 54, baseType: !143, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1534, file: !1535, line: 55, baseType: !143, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1534, file: !1535, line: 56, baseType: !143, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1534, file: !1535, line: 57, baseType: !143, size: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1534, file: !1535, line: 58, baseType: !143, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1534, file: !1535, line: 59, baseType: !143, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1534, file: !1535, line: 60, baseType: !143, size: 64, offset: 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1534, file: !1535, line: 61, baseType: !143, size: 64, offset: 512)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1534, file: !1535, line: 64, baseType: !143, size: 64, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1534, file: !1535, line: 65, baseType: !143, size: 64, offset: 640)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1534, file: !1535, line: 66, baseType: !143, size: 64, offset: 704)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1534, file: !1535, line: 68, baseType: !1550, size: 64, offset: 768)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1535, line: 36, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1534, file: !1535, line: 70, baseType: !1553, size: 64, offset: 832)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1534, file: !1535, line: 72, baseType: !161, size: 32, offset: 896)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1534, file: !1535, line: 73, baseType: !161, size: 32, offset: 928)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1534, file: !1535, line: 74, baseType: !1557, size: 64, offset: 960)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !135, line: 152, baseType: !1558)
!1558 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1534, file: !1535, line: 77, baseType: !140, size: 16, offset: 1024)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1534, file: !1535, line: 78, baseType: !1561, size: 8, offset: 1040)
!1561 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1534, file: !1535, line: 79, baseType: !1563, size: 8, offset: 1048)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !240)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1534, file: !1535, line: 81, baseType: !1565, size: 64, offset: 1088)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1535, line: 43, baseType: null)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1534, file: !1535, line: 89, baseType: !1568, size: 64, offset: 1152)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !135, line: 153, baseType: !1558)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1534, file: !1535, line: 91, baseType: !1570, size: 64, offset: 1216)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1535, line: 37, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1534, file: !1535, line: 92, baseType: !1573, size: 64, offset: 1280)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1535, line: 38, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1534, file: !1535, line: 93, baseType: !1553, size: 64, offset: 1344)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1534, file: !1535, line: 94, baseType: !128, size: 64, offset: 1408)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1534, file: !1535, line: 95, baseType: !199, size: 64, offset: 1472)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1534, file: !1535, line: 96, baseType: !161, size: 32, offset: 1536)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1534, file: !1535, line: 98, baseType: !1580, size: 160, offset: 1568)
!1580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !896)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1582, line: 85, baseType: !1557)
!1582 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "rawdata", scope: !1517, file: !1518, line: 54, baseType: !1584, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rawdatafunc_t", file: !18, line: 397, baseType: !1585)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !1588, !1591}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_zone_t", file: !18, line: 149, baseType: !1590)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_zone", file: !18, line: 149, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_masterrawheader_t", file: !18, line: 101, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_masterrawheader", file: !1594, line: 75, size: 192, elements: !1595)
!1594 = !DIFile(filename: "lib/dns/include/dns/master.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "9c4212df68cef85d47e8b24e204803a0")
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1593, file: !1594, line: 76, baseType: !361, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1593, file: !1594, line: 80, baseType: !361, size: 32, offset: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dumptime", scope: !1593, file: !1594, line: 82, baseType: !361, size: 32, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1593, file: !1594, line: 84, baseType: !361, size: 32, offset: 96)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "sourceserial", scope: !1593, file: !1594, line: 85, baseType: !361, size: 32, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "lastxfrin", scope: !1593, file: !1594, line: 87, baseType: !361, size: 32, offset: 160)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !1517, file: !1518, line: 55, baseType: !1588, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1517, file: !1518, line: 60, baseType: !1604, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{null, !1607, !202, null}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "warn", scope: !1517, file: !1518, line: 64, baseType: !1604, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "add_private", scope: !1517, file: !1518, line: 68, baseType: !128, size: 64, offset: 448)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "deserialize_private", scope: !1517, file: !1518, line: 69, baseType: !128, size: 64, offset: 512)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "error_private", scope: !1517, file: !1518, line: 70, baseType: !128, size: 64, offset: 576)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "warn_private", scope: !1517, file: !1518, line: 71, baseType: !128, size: 64, offset: 640)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "endload", scope: !1500, file: !1493, line: 76, baseType: !1512, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "serialize", scope: !1500, file: !1493, line: 78, baseType: !1615, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!407, !1490, !454, !1531}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !1500, file: !1493, line: 80, baseType: !1619, size: 64, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!407, !1490, !454, !202, !1622}
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_masterformat_t", file: !18, line: 218, baseType: !17)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "currentversion", scope: !1500, file: !1493, line: 83, baseType: !1624, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1490, !1627}
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "newversion", scope: !1500, file: !1493, line: 85, baseType: !1629, size: 64, offset: 448)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!407, !1490, !1627}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "attachversion", scope: !1500, file: !1493, line: 87, baseType: !1633, size: 64, offset: 512)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1490, !454, !1627}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "closeversion", scope: !1500, file: !1493, line: 89, baseType: !1637, size: 64, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !1490, !1627, !226}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "findnode", scope: !1500, file: !1493, line: 92, baseType: !1641, size: 64, offset: 640)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!407, !1490, !425, !226, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbnode_t", file: !18, line: 58, baseType: null)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !1500, file: !1493, line: 95, baseType: !1648, size: 64, offset: 704)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!407, !1490, !425, !454, !141, !13, !667, !1644, !382, !388, !388}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "findzonecut", scope: !1500, file: !1493, line: 102, baseType: !1652, size: 64, offset: 768)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!407, !1490, !425, !13, !667, !1644, !382, !382, !388, !388}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "attachnode", scope: !1500, file: !1493, line: 109, baseType: !1656, size: 64, offset: 832)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !1490, !1645, !1644}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "detachnode", scope: !1500, file: !1493, line: 112, baseType: !1660, size: 64, offset: 896)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !1490, !1644}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "expirenode", scope: !1500, file: !1493, line: 114, baseType: !1664, size: 64, offset: 960)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!407, !1490, !1645, !667}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "printnode", scope: !1500, file: !1493, line: 116, baseType: !1668, size: 64, offset: 1024)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !1490, !1645, !1531}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "createiterator", scope: !1500, file: !1493, line: 118, baseType: !1672, size: 64, offset: 1088)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!407, !1490, !13, !1675}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbiterator_t", file: !18, line: 56, baseType: !1678)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbiterator", file: !1679, line: 97, size: 256, elements: !1680)
!1679 = !DIFile(filename: "lib/dns/include/dns/dbiterator.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "e80aa0115ff591a0b9e600123d76473d")
!1680 = !{!1681, !1682, !1711, !1712, !1713}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1678, file: !1679, line: 99, baseType: !13, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !1678, file: !1679, line: 100, baseType: !1683, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbiteratormethods_t", file: !1679, line: 83, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbiteratormethods", file: !1679, line: 70, size: 576, elements: !1686)
!1686 = !{!1687, !1691, !1695, !1696, !1700, !1701, !1702, !1706, !1707}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1685, file: !1679, line: 71, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !1675}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1685, file: !1679, line: 72, baseType: !1692, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!407, !1676}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1685, file: !1679, line: 73, baseType: !1692, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !1685, file: !1679, line: 74, baseType: !1697, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!407, !1676, !425}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1685, file: !1679, line: 76, baseType: !1692, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1685, file: !1679, line: 77, baseType: !1692, size: 64, offset: 320)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1685, file: !1679, line: 78, baseType: !1703, size: 64, offset: 384)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!407, !1676, !1644, !382}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pause", scope: !1685, file: !1679, line: 80, baseType: !1692, size: 64, offset: 448)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !1685, file: !1679, line: 81, baseType: !1708, size: 64, offset: 512)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!407, !1676, !382}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1678, file: !1679, line: 101, baseType: !1490, size: 64, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "relative_names", scope: !1678, file: !1679, line: 102, baseType: !226, size: 8, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cleaning", scope: !1678, file: !1679, line: 103, baseType: !226, size: 8, offset: 200)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "findrdataset", scope: !1500, file: !1493, line: 120, baseType: !1715, size: 64, offset: 1152)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!407, !1490, !1645, !454, !141, !141, !667, !388, !388}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "allrdatasets", scope: !1500, file: !1493, line: 127, baseType: !1719, size: 64, offset: 1216)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!407, !1490, !1645, !454, !667, !1722}
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetiter_t", file: !18, line: 125, baseType: !1725)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetiter", file: !1726, line: 89, size: 384, elements: !1727)
!1726 = !DIFile(filename: "lib/dns/include/dns/rdatasetiter.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "9746ed7a00ac2faebfbf0cffc47d675f")
!1727 = !{!1728, !1729, !1747, !1748, !1749, !1750}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1725, file: !1726, line: 91, baseType: !13, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !1725, file: !1726, line: 92, baseType: !1730, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetitermethods_t", file: !1726, line: 75, baseType: !1732)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetitermethods", file: !1726, line: 69, size: 256, elements: !1733)
!1733 = !{!1734, !1738, !1742, !1743}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1732, file: !1726, line: 70, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1722}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1732, file: !1726, line: 71, baseType: !1739, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!407, !1723}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1732, file: !1726, line: 72, baseType: !1739, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1732, file: !1726, line: 73, baseType: !1744, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{null, !1723, !388}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1725, file: !1726, line: 93, baseType: !1490, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1725, file: !1726, line: 94, baseType: !1645, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1725, file: !1726, line: 95, baseType: !454, size: 64, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "now", scope: !1725, file: !1726, line: 96, baseType: !667, size: 32, offset: 320)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "addrdataset", scope: !1500, file: !1493, line: 131, baseType: !1752, size: 64, offset: 1280)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!407, !1490, !1645, !454, !667, !388, !13, !388}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "subtractrdataset", scope: !1500, file: !1493, line: 137, baseType: !1756, size: 64, offset: 1344)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!407, !1490, !1645, !454, !388, !13, !388}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "deleterdataset", scope: !1500, file: !1493, line: 142, baseType: !1760, size: 64, offset: 1408)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!407, !1490, !1645, !454, !141, !141}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "issecure", scope: !1500, file: !1493, line: 146, baseType: !1764, size: 64, offset: 1472)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!226, !1490}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "nodecount", scope: !1500, file: !1493, line: 147, baseType: !1768, size: 64, offset: 1536)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!13, !1490}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ispersistent", scope: !1500, file: !1493, line: 148, baseType: !1764, size: 64, offset: 1600)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "overmem", scope: !1500, file: !1493, line: 149, baseType: !1773, size: 64, offset: 1664)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !1490, !226}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "settask", scope: !1500, file: !1493, line: 150, baseType: !1777, size: 64, offset: 1728)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{null, !1490, !1780}
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_task_t", file: !167, line: 77, baseType: !1782)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_task", file: !167, line: 77, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "getoriginnode", scope: !1500, file: !1493, line: 151, baseType: !1784, size: 64, offset: 1792)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!407, !1490, !1644}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "transfernode", scope: !1500, file: !1493, line: 152, baseType: !1788, size: 64, offset: 1856)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{null, !1490, !1644, !1644}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "getnsec3parameters", scope: !1500, file: !1493, line: 154, baseType: !1792, size: 64, offset: 1920)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!407, !1490, !454, !1795, !1797, !1798, !142, !1799}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_hash_t", file: !18, line: 166, baseType: !24)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "findnsec3node", scope: !1500, file: !1493, line: 161, baseType: !1641, size: 64, offset: 1984)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "setsigningtime", scope: !1500, file: !1493, line: 164, baseType: !1802, size: 64, offset: 2048)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!407, !1490, !388, !667}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "getsigningtime", scope: !1500, file: !1493, line: 167, baseType: !1806, size: 64, offset: 2112)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!407, !1490, !388, !382}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "resigned", scope: !1500, file: !1493, line: 170, baseType: !1810, size: 64, offset: 2176)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !1490, !388, !454}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "isdnssec", scope: !1500, file: !1493, line: 172, baseType: !1764, size: 64, offset: 2240)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "getrrsetstats", scope: !1500, file: !1493, line: 173, baseType: !1815, size: 64, offset: 2304)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!1818, !1490}
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_stats_t", file: !18, line: 137, baseType: !1820)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_stats", file: !18, line: 137, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "rpz_attach", scope: !1500, file: !1493, line: 174, baseType: !1822, size: 64, offset: 2368)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !1490, !128, !132}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "rpz_ready", scope: !1500, file: !1493, line: 176, baseType: !1826, size: 64, offset: 2432)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!407, !1490}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "findnodeext", scope: !1500, file: !1493, line: 177, baseType: !1830, size: 64, offset: 2496)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!407, !1490, !425, !226, !1833, !1845, !1644}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfomethods_t", file: !1835, line: 68, baseType: !1836)
!1835 = !DIFile(filename: "lib/dns/include/dns/clientinfo.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f273dbbef534c5352c6d152e1993b2e9")
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_clientinfomethods", file: !1835, line: 64, size: 128, elements: !1837)
!1837 = !{!1838, !1839, !1840}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1836, file: !1835, line: 65, baseType: !138, size: 16)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !1836, file: !1835, line: 66, baseType: !138, size: 16, offset: 16)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sourceip", scope: !1836, file: !1835, line: 67, baseType: !1841, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfo_sourceip_t", file: !1835, line: 58, baseType: !1842)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!407, !1845, !1852}
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfo_t", file: !1835, line: 56, baseType: !1847)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_clientinfo", file: !1835, line: 52, size: 192, elements: !1848)
!1848 = !{!1849, !1850, !1851}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1847, file: !1835, line: 53, baseType: !138, size: 16)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1847, file: !1835, line: 54, baseType: !128, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dbversion", scope: !1847, file: !1835, line: 55, baseType: !128, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_sockaddr_t", file: !167, line: 69, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_sockaddr", file: !1856, line: 27, size: 1216, elements: !1857)
!1856 = !DIFile(filename: "lib/isc/include/isc/sockaddr.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "b46a0f057942d922d0824c5621821d46")
!1857 = !{!1858, !1921, !1922}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1855, file: !1856, line: 36, baseType: !1859, size: 1024)
!1859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1855, file: !1856, line: 28, size: 1024, elements: !1860)
!1860 = !{!1861, !1870, !1884, !1903, !1912}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1859, file: !1856, line: 29, baseType: !1862, size: 128)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !1863, line: 180, size: 128, elements: !1864)
!1863 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!1864 = !{!1865, !1868}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !1862, file: !1863, line: 182, baseType: !1866, size: 16)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !1867, line: 28, baseType: !140)
!1867 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !1862, file: !1863, line: 183, baseType: !1869, size: 112, offset: 16)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 112, elements: !230)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !1859, file: !1856, line: 30, baseType: !1871, size: 128)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !1872, line: 245, size: 128, elements: !1873)
!1872 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!1873 = !{!1874, !1875, !1877, !1882}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !1871, file: !1872, line: 247, baseType: !1866, size: 16)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !1871, file: !1872, line: 248, baseType: !1876, size: 16, offset: 16)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !1872, line: 123, baseType: !138)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1871, file: !1872, line: 249, baseType: !1878, size: 32, offset: 32)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !1872, line: 31, size: 32, elements: !1879)
!1879 = !{!1880}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1878, file: !1872, line: 33, baseType: !1881, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !1872, line: 30, baseType: !361)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !1871, file: !1872, line: 252, baseType: !1883, size: 64, offset: 64)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 64, elements: !335)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sin6", scope: !1859, file: !1856, line: 31, baseType: !1885, size: 224)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !1872, line: 260, size: 224, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1890, !1902}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !1885, file: !1872, line: 262, baseType: !1866, size: 16)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !1885, file: !1872, line: 263, baseType: !1876, size: 16, offset: 16)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !1885, file: !1872, line: 264, baseType: !361, size: 32, offset: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !1885, file: !1872, line: 265, baseType: !1891, size: 128, offset: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !1872, line: 219, size: 128, elements: !1892)
!1892 = !{!1893}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !1891, file: !1872, line: 226, baseType: !1894, size: 128)
!1894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1891, file: !1872, line: 221, size: 128, elements: !1895)
!1895 = !{!1896, !1898, !1900}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !1894, file: !1872, line: 223, baseType: !1897, size: 128)
!1897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 128, elements: !535)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !1894, file: !1872, line: 224, baseType: !1899, size: 128)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 128, elements: !335)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !1894, file: !1872, line: 225, baseType: !1901, size: 128)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 128, elements: !472)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !1885, file: !1872, line: 266, baseType: !361, size: 32, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1859, file: !1856, line: 32, baseType: !1904, size: 1024)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !1863, line: 193, size: 1024, elements: !1905)
!1905 = !{!1906, !1907, !1911}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !1904, file: !1863, line: 195, baseType: !1866, size: 16)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !1904, file: !1863, line: 196, baseType: !1908, size: 944, offset: 16)
!1908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 944, elements: !1909)
!1909 = !{!1910}
!1910 = !DISubrange(count: 118)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !1904, file: !1863, line: 197, baseType: !201, size: 64, offset: 960)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sunix", scope: !1859, file: !1856, line: 34, baseType: !1913, size: 880)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !1914, line: 29, size: 880, elements: !1915)
!1914 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !1913, file: !1914, line: 31, baseType: !1866, size: 16)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !1913, file: !1914, line: 32, baseType: !1918, size: 864, offset: 16)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 864, elements: !1919)
!1919 = !{!1920}
!1920 = !DISubrange(count: 108)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1855, file: !1856, line: 37, baseType: !13, size: 32, offset: 1024)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1855, file: !1856, line: 38, baseType: !1923, size: 128, offset: 1088)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 38, size: 128, elements: !1924)
!1924 = !{!1925, !1927}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1923, file: !1856, line: 38, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1923, file: !1856, line: 38, baseType: !1926, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "findext", scope: !1500, file: !1493, line: 182, baseType: !1929, size: 64, offset: 2560)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!407, !1490, !425, !454, !141, !13, !667, !1644, !382, !1833, !1845, !388, !388}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "setcachestats", scope: !1500, file: !1493, line: 191, baseType: !1933, size: 64, offset: 2624)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!407, !1490, !1936}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_stats_t", file: !167, line: 74, baseType: !1938)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_stats", file: !167, line: 74, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "hashsize", scope: !1500, file: !1493, line: 192, baseType: !1940, size: 64, offset: 2688)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!199, !1490}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "nodefullname", scope: !1500, file: !1493, line: 193, baseType: !1944, size: 64, offset: 2752)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!407, !1490, !1645, !382}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "getsize", scope: !1500, file: !1493, line: 195, baseType: !1948, size: 64, offset: 2816)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!407, !1490, !454, !1951, !1951}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !133, line: 27, baseType: !1953)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !135, line: 45, baseType: !201)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "setservestalettl", scope: !1500, file: !1493, line: 197, baseType: !1955, size: 64, offset: 2880)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!407, !1490, !591}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "getservestalettl", scope: !1500, file: !1493, line: 198, baseType: !1959, size: 64, offset: 2944)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!407, !1490, !1962}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "setgluecachestats", scope: !1500, file: !1493, line: 199, baseType: !1933, size: 64, offset: 3008)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1492, file: !1493, line: 227, baseType: !138, size: 16, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !1492, file: !1493, line: 228, baseType: !137, size: 16, offset: 144)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !1492, file: !1493, line: 229, baseType: !367, size: 640, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !1492, file: !1493, line: 230, baseType: !183, size: 64, offset: 832)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "update_listeners", scope: !1492, file: !1493, line: 231, baseType: !1969, size: 128, offset: 896)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1492, file: !1493, line: 231, size: 128, elements: !1970)
!1970 = !{!1971, !1987}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1969, file: !1493, line: 231, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbonupdatelistener_t", file: !18, line: 59, baseType: !1974)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbonupdatelistener", file: !1493, line: 237, size: 256, elements: !1975)
!1975 = !{!1976, !1981, !1982}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "onupdate", scope: !1974, file: !1493, line: 238, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbupdate_callback_t", file: !1493, line: 209, baseType: !1978)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!407, !1490, !128}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "onupdate_arg", scope: !1974, file: !1493, line: 239, baseType: !128, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1974, file: !1493, line: 240, baseType: !1983, size: 128, offset: 128)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1974, file: !1493, line: 240, size: 128, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1983, file: !1493, line: 240, baseType: !1972, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1983, file: !1493, line: 240, baseType: !1972, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1969, file: !1493, line: 231, baseType: !1972, size: 64, offset: 64)
!1988 = !DILocalVariable(name: "node", scope: !1485, file: !2, line: 335, type: !1645)
!1989 = !DILocalVariable(name: "modtime", scope: !1485, file: !2, line: 336, type: !1990)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_time_t", file: !167, line: 81, baseType: !1991)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_time", file: !1992, line: 86, size: 64, elements: !1993)
!1992 = !DIFile(filename: "../../lib/isc/unix/include/isc/time.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/dnssec", checksumkind: CSK_MD5, checksum: "a0595c59a7eba4194a4b687b13cdc892")
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "seconds", scope: !1991, file: !1992, line: 87, baseType: !13, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "nanoseconds", scope: !1991, file: !1992, line: 88, baseType: !13, size: 32, offset: 32)
!1996 = !DILocalVariable(name: "filename", scope: !1485, file: !2, line: 337, type: !1997)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32776, elements: !1998)
!1998 = !{!1999}
!1999 = !DISubrange(count: 4097)
!2000 = !DILocalVariable(name: "now", scope: !2001, file: !2, line: 348, type: !667)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !2, line: 347, column: 24)
!2002 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 347, column: 6)
!2003 = !DILocation(line: 332, column: 29, scope: !1485)
!2004 = !DILocation(line: 333, column: 2, scope: !1485)
!2005 = !DILocation(line: 333, column: 15, scope: !1485)
!2006 = !DILocation(line: 334, column: 2, scope: !1485)
!2007 = !DILocation(line: 334, column: 12, scope: !1485)
!2008 = !DILocation(line: 335, column: 2, scope: !1485)
!2009 = !DILocation(line: 335, column: 16, scope: !1485)
!2010 = !DILocation(line: 336, column: 2, scope: !1485)
!2011 = !DILocation(line: 336, column: 13, scope: !1485)
!2012 = !DILocation(line: 337, column: 2, scope: !1485)
!2013 = !DILocation(line: 337, column: 7, scope: !1485)
!2014 = !DILocation(line: 339, column: 17, scope: !1485)
!2015 = !DILocation(line: 339, column: 45, scope: !1485)
!2016 = !DILocation(line: 339, column: 2, scope: !1485)
!2017 = !DILocation(line: 341, column: 31, scope: !1485)
!2018 = !DILocation(line: 341, column: 11, scope: !1485)
!2019 = !DILocation(line: 341, column: 9, scope: !1485)
!2020 = !DILocation(line: 342, column: 6, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 342, column: 6)
!2022 = !DILocation(line: 342, column: 13, scope: !2021)
!2023 = !DILocation(line: 342, column: 6, scope: !1485)
!2024 = !DILocation(line: 344, column: 9, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !2, line: 342, column: 31)
!2026 = !DILocation(line: 344, column: 37, scope: !2025)
!2027 = !DILocation(line: 344, column: 19, scope: !2025)
!2028 = !DILocation(line: 343, column: 3, scope: !2025)
!2029 = !DILocation(line: 346, column: 14, scope: !1485)
!2030 = !DILocation(line: 346, column: 12, scope: !1485)
!2031 = !DILocation(line: 347, column: 6, scope: !2002)
!2032 = !DILocation(line: 347, column: 15, scope: !2002)
!2033 = !DILocation(line: 347, column: 6, scope: !1485)
!2034 = !DILocation(line: 348, column: 3, scope: !2001)
!2035 = !DILocation(line: 348, column: 17, scope: !2001)
!2036 = !DILocation(line: 349, column: 3, scope: !2001)
!2037 = !DILocation(line: 350, column: 25, scope: !2001)
!2038 = !DILocation(line: 350, column: 35, scope: !2001)
!2039 = !DILocation(line: 350, column: 40, scope: !2001)
!2040 = !DILocation(line: 350, column: 15, scope: !2001)
!2041 = !DILocation(line: 350, column: 13, scope: !2001)
!2042 = !DILocation(line: 351, column: 2, scope: !2002)
!2043 = !DILocation(line: 351, column: 2, scope: !2001)
!2044 = !DILocation(line: 352, column: 61, scope: !1485)
!2045 = !DILocation(line: 352, column: 2, scope: !1485)
!2046 = !DILocation(line: 354, column: 10, scope: !1485)
!2047 = !DILocation(line: 354, column: 2, scope: !1485)
!2048 = !DILocation(line: 355, column: 10, scope: !1485)
!2049 = !DILocation(line: 355, column: 14, scope: !1485)
!2050 = !DILocation(line: 355, column: 2, scope: !1485)
!2051 = !DILocation(line: 357, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 357, column: 6)
!2053 = !DILocation(line: 357, column: 6, scope: !1485)
!2054 = !DILocation(line: 359, column: 9, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2052, file: !2, line: 357, column: 47)
!2056 = !DILocation(line: 359, column: 18, scope: !2055)
!2057 = !DILocation(line: 358, column: 3, scope: !2055)
!2058 = !DILocation(line: 362, column: 2, scope: !1485)
!2059 = !DILocation(line: 363, column: 1, scope: !1485)
!2060 = distinct !DISubprogram(name: "load_child_sets", scope: !2, file: !2, line: 276, type: !1363, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !2061)
!2061 = !{!2062, !2063, !2064}
!2062 = !DILocalVariable(name: "file", arg: 1, scope: !2060, file: !2, line: 276, type: !202)
!2063 = !DILocalVariable(name: "db", scope: !2060, file: !2, line: 277, type: !1490)
!2064 = !DILocalVariable(name: "node", scope: !2060, file: !2, line: 278, type: !1645)
!2065 = !DILocation(line: 276, column: 29, scope: !2060)
!2066 = !DILocation(line: 277, column: 2, scope: !2060)
!2067 = !DILocation(line: 277, column: 12, scope: !2060)
!2068 = !DILocation(line: 278, column: 2, scope: !2060)
!2069 = !DILocation(line: 278, column: 16, scope: !2060)
!2070 = !DILocation(line: 280, column: 10, scope: !2060)
!2071 = !DILocation(line: 280, column: 2, scope: !2060)
!2072 = !DILocation(line: 281, column: 10, scope: !2060)
!2073 = !DILocation(line: 281, column: 14, scope: !2060)
!2074 = !DILocation(line: 281, column: 2, scope: !2060)
!2075 = !DILocation(line: 282, column: 10, scope: !2060)
!2076 = !DILocation(line: 282, column: 14, scope: !2060)
!2077 = !DILocation(line: 282, column: 2, scope: !2060)
!2078 = !DILocation(line: 283, column: 10, scope: !2060)
!2079 = !DILocation(line: 283, column: 14, scope: !2060)
!2080 = !DILocation(line: 283, column: 2, scope: !2060)
!2081 = !DILocation(line: 284, column: 2, scope: !2060)
!2082 = !DILocation(line: 285, column: 1, scope: !2060)
!2083 = !DISubprogram(name: "dns_rdataset_isassociated", scope: !391, file: !391, line: 251, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!226, !388}
!2086 = !DISubprogram(name: "vbprintf", scope: !1349, file: !1349, line: 37, type: !2087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !161, !202, null}
!2089 = distinct !DISubprogram(name: "match_keyset_dsset", scope: !2, file: !2, line: 536, type: !2090, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !2093)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!697, !388, !388, !2092}
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "strictness_t", file: !2, line: 467, baseType: !12)
!2093 = !{!2094, !2095, !2096, !2097, !2098, !2099, !2100, !2104, !2116, !2117}
!2094 = !DILocalVariable(name: "keyset", arg: 1, scope: !2089, file: !2, line: 536, type: !388)
!2095 = !DILocalVariable(name: "dsset", arg: 2, scope: !2089, file: !2, line: 536, type: !388)
!2096 = !DILocalVariable(name: "strictness", arg: 3, scope: !2089, file: !2, line: 537, type: !2092)
!2097 = !DILocalVariable(name: "result", scope: !2089, file: !2, line: 539, type: !407)
!2098 = !DILocalVariable(name: "keytable", scope: !2089, file: !2, line: 540, type: !697)
!2099 = !DILocalVariable(name: "i", scope: !2089, file: !2, line: 541, type: !161)
!2100 = !DILocalVariable(name: "ki", scope: !2101, file: !2, line: 554, type: !697)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !2, line: 553, column: 2)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !2, line: 550, column: 2)
!2103 = distinct !DILexicalBlock(scope: !2089, file: !2, line: 550, column: 2)
!2104 = !DILocalVariable(name: "dnskey", scope: !2101, file: !2, line: 555, type: !2105)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdata_dnskey_t", file: !340, line: 1437, baseType: !2106)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdata_key", file: !340, line: 746, size: 384, elements: !2107)
!2107 = !{!2108, !2109, !2110, !2111, !2113, !2114, !2115}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2106, file: !340, line: 747, baseType: !344, size: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !2106, file: !340, line: 748, baseType: !183, size: 64, offset: 192)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2106, file: !340, line: 749, baseType: !138, size: 16, offset: 256)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2106, file: !340, line: 750, baseType: !2112, size: 8, offset: 272)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_secproto_t", file: !18, line: 132, baseType: !132)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !2106, file: !340, line: 751, baseType: !358, size: 8, offset: 280)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2106, file: !340, line: 752, baseType: !138, size: 16, offset: 288)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2106, file: !340, line: 753, baseType: !142, size: 64, offset: 320)
!2116 = !DILocalVariable(name: "keyrdata", scope: !2101, file: !2, line: 556, type: !159)
!2117 = !DILocalVariable(name: "r", scope: !2101, file: !2, line: 557, type: !524)
!2118 = !DILocation(line: 536, column: 36, scope: !2089)
!2119 = !DILocation(line: 536, column: 60, scope: !2089)
!2120 = !DILocation(line: 537, column: 19, scope: !2089)
!2121 = !DILocation(line: 539, column: 2, scope: !2089)
!2122 = !DILocation(line: 539, column: 15, scope: !2089)
!2123 = !DILocation(line: 540, column: 2, scope: !2089)
!2124 = !DILocation(line: 540, column: 13, scope: !2089)
!2125 = !DILocation(line: 541, column: 2, scope: !2089)
!2126 = !DILocation(line: 541, column: 6, scope: !2089)
!2127 = !DILocation(line: 543, column: 28, scope: !2089)
!2128 = !DILocation(line: 543, column: 9, scope: !2089)
!2129 = !DILocation(line: 543, column: 7, scope: !2089)
!2130 = !DILocation(line: 545, column: 13, scope: !2089)
!2131 = !DILocation(line: 545, column: 11, scope: !2089)
!2132 = !DILocation(line: 546, column: 6, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2089, file: !2, line: 546, column: 6)
!2134 = !DILocation(line: 546, column: 15, scope: !2133)
!2135 = !DILocation(line: 546, column: 6, scope: !2089)
!2136 = !DILocation(line: 547, column: 3, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 546, column: 24)
!2138 = !DILocation(line: 550, column: 35, scope: !2103)
!2139 = !DILocation(line: 550, column: 16, scope: !2103)
!2140 = !DILocation(line: 550, column: 14, scope: !2103)
!2141 = !DILocation(line: 550, column: 46, scope: !2103)
!2142 = !DILocation(line: 550, column: 7, scope: !2103)
!2143 = !DILocation(line: 551, column: 7, scope: !2102)
!2144 = !DILocation(line: 551, column: 14, scope: !2102)
!2145 = !DILocation(line: 550, column: 2, scope: !2103)
!2146 = !DILocation(line: 554, column: 3, scope: !2101)
!2147 = !DILocation(line: 554, column: 14, scope: !2101)
!2148 = !DILocation(line: 555, column: 3, scope: !2101)
!2149 = !DILocation(line: 555, column: 22, scope: !2101)
!2150 = !DILocation(line: 556, column: 3, scope: !2101)
!2151 = !DILocation(line: 556, column: 16, scope: !2101)
!2152 = !DILocation(line: 557, column: 3, scope: !2101)
!2153 = !DILocation(line: 557, column: 16, scope: !2101)
!2154 = !DILocation(line: 559, column: 3, scope: !2101)
!2155 = !DILocation(line: 560, column: 9, scope: !2101)
!2156 = !DILocation(line: 560, column: 18, scope: !2101)
!2157 = !DILocation(line: 560, column: 6, scope: !2101)
!2158 = !DILocation(line: 561, column: 15, scope: !2101)
!2159 = !DILocation(line: 561, column: 19, scope: !2101)
!2160 = !DILocation(line: 561, column: 12, scope: !2101)
!2161 = !DILocation(line: 563, column: 18, scope: !2101)
!2162 = !DILocation(line: 563, column: 3, scope: !2101)
!2163 = !DILocation(line: 564, column: 24, scope: !2101)
!2164 = !DILocation(line: 564, column: 32, scope: !2101)
!2165 = !DILocation(line: 564, column: 3, scope: !2101)
!2166 = !DILocation(line: 566, column: 31, scope: !2101)
!2167 = !DILocation(line: 566, column: 12, scope: !2101)
!2168 = !DILocation(line: 566, column: 10, scope: !2101)
!2169 = !DILocation(line: 567, column: 16, scope: !2101)
!2170 = !DILocation(line: 567, column: 3, scope: !2101)
!2171 = !DILocation(line: 568, column: 21, scope: !2101)
!2172 = !DILocation(line: 568, column: 3, scope: !2101)
!2173 = !DILocation(line: 568, column: 7, scope: !2101)
!2174 = !DILocation(line: 568, column: 12, scope: !2101)
!2175 = !DILocation(line: 570, column: 22, scope: !2101)
!2176 = !DILocation(line: 570, column: 3, scope: !2101)
!2177 = !DILocation(line: 571, column: 13, scope: !2101)
!2178 = !DILocation(line: 571, column: 3, scope: !2101)
!2179 = !DILocation(line: 571, column: 7, scope: !2101)
!2180 = !DILocation(line: 571, column: 11, scope: !2101)
!2181 = !DILocation(line: 573, column: 3, scope: !2101)
!2182 = !DILocation(line: 573, column: 7, scope: !2101)
!2183 = !DILocation(line: 573, column: 11, scope: !2101)
!2184 = !DILocation(line: 574, column: 24, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2101, file: !2, line: 574, column: 7)
!2186 = !DILocation(line: 574, column: 28, scope: !2185)
!2187 = !DILocation(line: 574, column: 35, scope: !2185)
!2188 = !DILocation(line: 574, column: 8, scope: !2185)
!2189 = !DILocation(line: 574, column: 7, scope: !2101)
!2190 = !DILocation(line: 575, column: 4, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2185, file: !2, line: 574, column: 48)
!2192 = !DILocation(line: 578, column: 36, scope: !2101)
!2193 = !DILocation(line: 578, column: 42, scope: !2101)
!2194 = !DILocation(line: 579, column: 8, scope: !2101)
!2195 = !DILocation(line: 579, column: 15, scope: !2101)
!2196 = !DILocation(line: 579, column: 19, scope: !2101)
!2197 = !DILocation(line: 578, column: 12, scope: !2101)
!2198 = !DILocation(line: 578, column: 10, scope: !2101)
!2199 = !DILocation(line: 580, column: 7, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2101, file: !2, line: 580, column: 7)
!2201 = !DILocation(line: 580, column: 14, scope: !2200)
!2202 = !DILocation(line: 580, column: 7, scope: !2101)
!2203 = !DILocation(line: 583, column: 6, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 580, column: 32)
!2205 = !DILocation(line: 583, column: 10, scope: !2204)
!2206 = !DILocation(line: 583, column: 15, scope: !2204)
!2207 = !DILocation(line: 583, column: 19, scope: !2204)
!2208 = !DILocation(line: 584, column: 24, scope: !2204)
!2209 = !DILocation(line: 584, column: 6, scope: !2204)
!2210 = !DILocation(line: 581, column: 4, scope: !2204)
!2211 = !DILocation(line: 585, column: 3, scope: !2204)
!2212 = !DILocation(line: 586, column: 2, scope: !2102)
!2213 = !DILocation(line: 586, column: 2, scope: !2101)
!2214 = !DILocation(line: 552, column: 34, scope: !2102)
!2215 = !DILocation(line: 552, column: 16, scope: !2102)
!2216 = !DILocation(line: 552, column: 14, scope: !2102)
!2217 = !DILocation(line: 552, column: 44, scope: !2102)
!2218 = !DILocation(line: 550, column: 2, scope: !2102)
!2219 = distinct !{!2219, !2145, !2220, !1126}
!2220 = !DILocation(line: 586, column: 2, scope: !2103)
!2221 = !DILocation(line: 588, column: 10, scope: !2089)
!2222 = !DILocation(line: 589, column: 1, scope: !2089)
!2223 = !DILocation(line: 588, column: 2, scope: !2089)
!2224 = distinct !DISubprogram(name: "signed_loose", scope: !2, file: !2, line: 705, type: !2225, scopeLine: 705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !2228)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!226, !2227}
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!2228 = !{!2229, !2230, !2231}
!2229 = !DILocalVariable(name: "algo", arg: 1, scope: !2224, file: !2, line: 705, type: !2227)
!2230 = !DILocalVariable(name: "ok", scope: !2224, file: !2, line: 706, type: !226)
!2231 = !DILocalVariable(name: "i", scope: !2224, file: !2, line: 707, type: !161)
!2232 = !DILocation(line: 705, column: 28, scope: !2224)
!2233 = !DILocation(line: 706, column: 2, scope: !2224)
!2234 = !DILocation(line: 706, column: 7, scope: !2224)
!2235 = !DILocation(line: 707, column: 2, scope: !2224)
!2236 = !DILocation(line: 707, column: 6, scope: !2224)
!2237 = !DILocation(line: 708, column: 9, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 708, column: 2)
!2239 = !DILocation(line: 708, column: 7, scope: !2238)
!2240 = !DILocation(line: 708, column: 14, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 708, column: 2)
!2242 = !DILocation(line: 708, column: 18, scope: !2241)
!2243 = !DILocation(line: 708, column: 16, scope: !2241)
!2244 = !DILocation(line: 708, column: 2, scope: !2238)
!2245 = !DILocation(line: 709, column: 7, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !2, line: 709, column: 7)
!2247 = distinct !DILexicalBlock(scope: !2241, file: !2, line: 708, column: 29)
!2248 = !DILocation(line: 709, column: 12, scope: !2246)
!2249 = !DILocation(line: 709, column: 15, scope: !2246)
!2250 = !DILocation(line: 709, column: 7, scope: !2247)
!2251 = !DILocation(line: 710, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2246, file: !2, line: 709, column: 21)
!2253 = !DILocation(line: 711, column: 3, scope: !2252)
!2254 = !DILocation(line: 712, column: 2, scope: !2247)
!2255 = !DILocation(line: 708, column: 25, scope: !2241)
!2256 = !DILocation(line: 708, column: 2, scope: !2241)
!2257 = distinct !{!2257, !2244, !2258, !1126}
!2258 = !DILocation(line: 712, column: 2, scope: !2238)
!2259 = !DILocation(line: 713, column: 2, scope: !2224)
!2260 = !DILocation(line: 713, column: 2, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 713, column: 2)
!2262 = !DILocation(line: 714, column: 10, scope: !2224)
!2263 = !DILocation(line: 715, column: 1, scope: !2224)
!2264 = !DILocation(line: 714, column: 2, scope: !2224)
!2265 = distinct !DISubprogram(name: "matching_sigs", scope: !2, file: !2, line: 618, type: !2266, scopeLine: 620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!2227, !697, !388, !388}
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275, !2279, !2280}
!2269 = !DILocalVariable(name: "keytbl", arg: 1, scope: !2265, file: !2, line: 618, type: !697)
!2270 = !DILocalVariable(name: "rdataset", arg: 2, scope: !2265, file: !2, line: 618, type: !388)
!2271 = !DILocalVariable(name: "sigset", arg: 3, scope: !2265, file: !2, line: 619, type: !388)
!2272 = !DILocalVariable(name: "result", scope: !2265, file: !2, line: 621, type: !407)
!2273 = !DILocalVariable(name: "algo", scope: !2265, file: !2, line: 622, type: !2227)
!2274 = !DILocalVariable(name: "i", scope: !2265, file: !2, line: 623, type: !161)
!2275 = !DILocalVariable(name: "sigrdata", scope: !2276, file: !2, line: 636, type: !146)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !2, line: 635, column: 2)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !2, line: 632, column: 2)
!2278 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 632, column: 2)
!2279 = !DILocalVariable(name: "sig", scope: !2276, file: !2, line: 637, type: !339)
!2280 = !DILocalVariable(name: "ki", scope: !2281, file: !2, line: 653, type: !697)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !2, line: 652, column: 30)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !2, line: 652, column: 3)
!2283 = distinct !DILexicalBlock(scope: !2276, file: !2, line: 652, column: 3)
!2284 = !DILocation(line: 618, column: 26, scope: !2265)
!2285 = !DILocation(line: 618, column: 50, scope: !2265)
!2286 = !DILocation(line: 619, column: 24, scope: !2265)
!2287 = !DILocation(line: 621, column: 2, scope: !2265)
!2288 = !DILocation(line: 621, column: 15, scope: !2265)
!2289 = !DILocation(line: 622, column: 2, scope: !2265)
!2290 = !DILocation(line: 622, column: 16, scope: !2265)
!2291 = !DILocation(line: 623, column: 2, scope: !2265)
!2292 = !DILocation(line: 623, column: 6, scope: !2265)
!2293 = !DILocation(line: 625, column: 9, scope: !2265)
!2294 = !DILocation(line: 625, column: 7, scope: !2265)
!2295 = !DILocation(line: 626, column: 6, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 626, column: 6)
!2297 = !DILocation(line: 626, column: 11, scope: !2296)
!2298 = !DILocation(line: 626, column: 6, scope: !2265)
!2299 = !DILocation(line: 628, column: 9, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2296, file: !2, line: 626, column: 20)
!2301 = !DILocation(line: 627, column: 3, scope: !2300)
!2302 = !DILocation(line: 630, column: 9, scope: !2265)
!2303 = !DILocation(line: 630, column: 18, scope: !2265)
!2304 = !DILocation(line: 630, column: 2, scope: !2265)
!2305 = !DILocation(line: 632, column: 35, scope: !2278)
!2306 = !DILocation(line: 632, column: 16, scope: !2278)
!2307 = !DILocation(line: 632, column: 14, scope: !2278)
!2308 = !DILocation(line: 632, column: 7, scope: !2278)
!2309 = !DILocation(line: 633, column: 7, scope: !2277)
!2310 = !DILocation(line: 633, column: 14, scope: !2277)
!2311 = !DILocation(line: 632, column: 2, scope: !2278)
!2312 = !DILocation(line: 636, column: 3, scope: !2276)
!2313 = !DILocation(line: 636, column: 15, scope: !2276)
!2314 = !DILocation(line: 637, column: 3, scope: !2276)
!2315 = !DILocation(line: 637, column: 21, scope: !2276)
!2316 = !DILocation(line: 639, column: 24, scope: !2276)
!2317 = !DILocation(line: 639, column: 3, scope: !2276)
!2318 = !DILocation(line: 640, column: 12, scope: !2276)
!2319 = !DILocation(line: 640, column: 10, scope: !2276)
!2320 = !DILocation(line: 641, column: 16, scope: !2276)
!2321 = !DILocation(line: 641, column: 3, scope: !2276)
!2322 = !DILocation(line: 646, column: 25, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2276, file: !2, line: 646, column: 7)
!2324 = !DILocation(line: 646, column: 37, scope: !2323)
!2325 = !DILocation(line: 646, column: 7, scope: !2323)
!2326 = !DILocation(line: 646, column: 7, scope: !2276)
!2327 = !DILocation(line: 648, column: 10, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 646, column: 49)
!2329 = !DILocation(line: 648, column: 6, scope: !2328)
!2330 = !DILocation(line: 647, column: 4, scope: !2328)
!2331 = !DILocation(line: 649, column: 4, scope: !2328)
!2332 = !DILocation(line: 652, column: 10, scope: !2283)
!2333 = !DILocation(line: 652, column: 8, scope: !2283)
!2334 = !DILocation(line: 652, column: 15, scope: !2282)
!2335 = !DILocation(line: 652, column: 19, scope: !2282)
!2336 = !DILocation(line: 652, column: 17, scope: !2282)
!2337 = !DILocation(line: 652, column: 3, scope: !2283)
!2338 = !DILocation(line: 653, column: 4, scope: !2281)
!2339 = !DILocation(line: 653, column: 15, scope: !2281)
!2340 = !DILocation(line: 653, column: 21, scope: !2281)
!2341 = !DILocation(line: 653, column: 28, scope: !2281)
!2342 = !DILocation(line: 654, column: 12, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2281, file: !2, line: 654, column: 8)
!2344 = !DILocation(line: 654, column: 8, scope: !2343)
!2345 = !DILocation(line: 654, column: 21, scope: !2343)
!2346 = !DILocation(line: 654, column: 25, scope: !2343)
!2347 = !DILocation(line: 654, column: 18, scope: !2343)
!2348 = !DILocation(line: 654, column: 29, scope: !2343)
!2349 = !DILocation(line: 655, column: 12, scope: !2343)
!2350 = !DILocation(line: 655, column: 8, scope: !2343)
!2351 = !DILocation(line: 655, column: 25, scope: !2343)
!2352 = !DILocation(line: 655, column: 29, scope: !2343)
!2353 = !DILocation(line: 655, column: 22, scope: !2343)
!2354 = !DILocation(line: 655, column: 34, scope: !2343)
!2355 = !DILocation(line: 656, column: 29, scope: !2343)
!2356 = !DILocation(line: 656, column: 37, scope: !2343)
!2357 = !DILocation(line: 656, column: 9, scope: !2343)
!2358 = !DILocation(line: 654, column: 8, scope: !2281)
!2359 = !DILocation(line: 658, column: 5, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2343, file: !2, line: 657, column: 4)
!2361 = !DILocation(line: 660, column: 8, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2281, file: !2, line: 660, column: 8)
!2363 = !DILocation(line: 660, column: 12, scope: !2362)
!2364 = !DILocation(line: 660, column: 16, scope: !2362)
!2365 = !DILocation(line: 660, column: 8, scope: !2281)
!2366 = !DILocation(line: 663, column: 11, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2362, file: !2, line: 660, column: 25)
!2368 = !DILocation(line: 663, column: 7, scope: !2367)
!2369 = !DILocation(line: 661, column: 5, scope: !2367)
!2370 = !DILocation(line: 664, column: 5, scope: !2367)
!2371 = !DILocation(line: 667, column: 31, scope: !2281)
!2372 = !DILocation(line: 667, column: 37, scope: !2281)
!2373 = !DILocation(line: 667, column: 47, scope: !2281)
!2374 = !DILocation(line: 667, column: 51, scope: !2281)
!2375 = !DILocation(line: 668, column: 20, scope: !2281)
!2376 = !DILocation(line: 667, column: 13, scope: !2281)
!2377 = !DILocation(line: 667, column: 11, scope: !2281)
!2378 = !DILocation(line: 671, column: 8, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2281, file: !2, line: 671, column: 8)
!2380 = !DILocation(line: 671, column: 15, scope: !2379)
!2381 = !DILocation(line: 671, column: 32, scope: !2379)
!2382 = !DILocation(line: 672, column: 8, scope: !2379)
!2383 = !DILocation(line: 672, column: 15, scope: !2379)
!2384 = !DILocation(line: 671, column: 8, scope: !2281)
!2385 = !DILocation(line: 675, column: 11, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 672, column: 38)
!2387 = !DILocation(line: 675, column: 7, scope: !2386)
!2388 = !DILocation(line: 675, column: 36, scope: !2386)
!2389 = !DILocation(line: 675, column: 18, scope: !2386)
!2390 = !DILocation(line: 673, column: 5, scope: !2386)
!2391 = !DILocation(line: 676, column: 5, scope: !2386)
!2392 = !DILocation(line: 679, column: 43, scope: !2281)
!2393 = !DILocation(line: 679, column: 47, scope: !2281)
!2394 = !DILocation(line: 679, column: 4, scope: !2281)
!2395 = !DILocation(line: 680, column: 18, scope: !2281)
!2396 = !DILocation(line: 680, column: 4, scope: !2281)
!2397 = !DILocation(line: 680, column: 9, scope: !2281)
!2398 = !DILocation(line: 680, column: 12, scope: !2281)
!2399 = !DILocation(line: 686, column: 18, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2281, file: !2, line: 686, column: 8)
!2401 = !DILocation(line: 686, column: 29, scope: !2400)
!2402 = !DILocation(line: 686, column: 34, scope: !2400)
!2403 = !DILocation(line: 687, column: 26, scope: !2400)
!2404 = !DILocation(line: 688, column: 18, scope: !2400)
!2405 = !DILocation(line: 687, column: 8, scope: !2400)
!2406 = !DILocation(line: 686, column: 8, scope: !2281)
!2407 = !DILocation(line: 691, column: 15, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2400, file: !2, line: 689, column: 4)
!2409 = !DILocation(line: 690, column: 5, scope: !2408)
!2410 = !DILocation(line: 692, column: 17, scope: !2408)
!2411 = !DILocation(line: 693, column: 4, scope: !2408)
!2412 = !DILocation(line: 694, column: 3, scope: !2282)
!2413 = !DILocation(line: 694, column: 3, scope: !2281)
!2414 = !DILocation(line: 652, column: 26, scope: !2282)
!2415 = !DILocation(line: 652, column: 3, scope: !2282)
!2416 = distinct !{!2416, !2337, !2417, !1126}
!2417 = !DILocation(line: 694, column: 3, scope: !2283)
!2418 = !DILocation(line: 695, column: 2, scope: !2277)
!2419 = !DILocation(line: 695, column: 2, scope: !2276)
!2420 = !DILocation(line: 634, column: 34, scope: !2277)
!2421 = !DILocation(line: 634, column: 16, scope: !2277)
!2422 = !DILocation(line: 634, column: 14, scope: !2277)
!2423 = !DILocation(line: 632, column: 2, scope: !2277)
!2424 = distinct !{!2424, !2311, !2425, !1126}
!2425 = !DILocation(line: 695, column: 2, scope: !2278)
!2426 = !DILocation(line: 697, column: 10, scope: !2265)
!2427 = !DILocation(line: 698, column: 1, scope: !2265)
!2428 = !DILocation(line: 697, column: 2, scope: !2265)
!2429 = distinct !DISubprogram(name: "free_keytable", scope: !2, file: !2, line: 592, type: !2430, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !2433)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{null, !2432}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!2433 = !{!2434, !2435, !2436, !2437}
!2434 = !DILocalVariable(name: "keytable_p", arg: 1, scope: !2429, file: !2, line: 592, type: !2432)
!2435 = !DILocalVariable(name: "keytable", scope: !2429, file: !2, line: 593, type: !697)
!2436 = !DILocalVariable(name: "ki", scope: !2429, file: !2, line: 594, type: !697)
!2437 = !DILocalVariable(name: "i", scope: !2429, file: !2, line: 595, type: !161)
!2438 = !DILocation(line: 592, column: 27, scope: !2429)
!2439 = !DILocation(line: 593, column: 2, scope: !2429)
!2440 = !DILocation(line: 593, column: 13, scope: !2429)
!2441 = !DILocation(line: 593, column: 25, scope: !2429)
!2442 = !DILocation(line: 593, column: 24, scope: !2429)
!2443 = !DILocation(line: 594, column: 2, scope: !2429)
!2444 = !DILocation(line: 594, column: 13, scope: !2429)
!2445 = !DILocation(line: 595, column: 2, scope: !2429)
!2446 = !DILocation(line: 595, column: 6, scope: !2429)
!2447 = !DILocation(line: 597, column: 9, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2429, file: !2, line: 597, column: 2)
!2449 = !DILocation(line: 597, column: 7, scope: !2448)
!2450 = !DILocation(line: 597, column: 14, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !2, line: 597, column: 2)
!2452 = !DILocation(line: 597, column: 18, scope: !2451)
!2453 = !DILocation(line: 597, column: 16, scope: !2451)
!2454 = !DILocation(line: 597, column: 2, scope: !2448)
!2455 = !DILocation(line: 598, column: 9, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2451, file: !2, line: 597, column: 29)
!2457 = !DILocation(line: 598, column: 18, scope: !2456)
!2458 = !DILocation(line: 598, column: 6, scope: !2456)
!2459 = !DILocation(line: 599, column: 7, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !2, line: 599, column: 7)
!2461 = !DILocation(line: 599, column: 11, scope: !2460)
!2462 = !DILocation(line: 599, column: 15, scope: !2460)
!2463 = !DILocation(line: 599, column: 7, scope: !2456)
!2464 = !DILocation(line: 600, column: 18, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2460, file: !2, line: 599, column: 24)
!2466 = !DILocation(line: 600, column: 22, scope: !2465)
!2467 = !DILocation(line: 600, column: 4, scope: !2465)
!2468 = !DILocation(line: 601, column: 3, scope: !2465)
!2469 = !DILocation(line: 602, column: 2, scope: !2456)
!2470 = !DILocation(line: 597, column: 25, scope: !2451)
!2471 = !DILocation(line: 597, column: 2, scope: !2451)
!2472 = distinct !{!2472, !2454, !2473, !1126}
!2473 = !DILocation(line: 602, column: 2, scope: !2448)
!2474 = !DILocation(line: 604, column: 2, scope: !2429)
!2475 = !DILocation(line: 604, column: 2, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2429, file: !2, line: 604, column: 2)
!2477 = !DILocation(line: 605, column: 3, scope: !2429)
!2478 = !DILocation(line: 605, column: 14, scope: !2429)
!2479 = !DILocation(line: 606, column: 1, scope: !2429)
!2480 = !DISubprogram(name: "dns_rdatatype_format", scope: !2481, file: !2481, line: 79, type: !2482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2481 = !DIFile(filename: "lib/dns/include/dns/rdatatype.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "4060731bfe5fe2bfc52e6e897b3068ce")
!2482 = !DISubroutineType(types: !2483)
!2483 = !{null, !141, !143, !13}
!2484 = distinct !DISubprogram(name: "verbose_time", scope: !2, file: !2, line: 150, type: !2485, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{null, !161, !202, !667}
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2493, !2494, !2496, !2497}
!2488 = !DILocalVariable(name: "level", arg: 1, scope: !2484, file: !2, line: 150, type: !161)
!2489 = !DILocalVariable(name: "msg", arg: 2, scope: !2484, file: !2, line: 150, type: !202)
!2490 = !DILocalVariable(name: "time", arg: 3, scope: !2484, file: !2, line: 150, type: !667)
!2491 = !DILocalVariable(name: "result", scope: !2484, file: !2, line: 151, type: !407)
!2492 = !DILocalVariable(name: "timebuf", scope: !2484, file: !2, line: 152, type: !166)
!2493 = !DILocalVariable(name: "timestr", scope: !2484, file: !2, line: 153, type: !1028)
!2494 = !DILocalVariable(name: "_cp", scope: !2495, file: !2, line: 162, type: !142)
!2495 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 162, column: 2)
!2496 = !DILocalVariable(name: "_val2", scope: !2495, file: !2, line: 162, type: !132)
!2497 = !DILocalVariable(name: "_tmp", scope: !2498, file: !2, line: 162, type: !165)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !2, line: 162, column: 2)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 162, column: 2)
!2500 = !DILocation(line: 150, column: 18, scope: !2484)
!2501 = !DILocation(line: 150, column: 37, scope: !2484)
!2502 = !DILocation(line: 150, column: 56, scope: !2484)
!2503 = !DILocation(line: 151, column: 2, scope: !2484)
!2504 = !DILocation(line: 151, column: 15, scope: !2484)
!2505 = !DILocation(line: 152, column: 2, scope: !2484)
!2506 = !DILocation(line: 152, column: 15, scope: !2484)
!2507 = !DILocation(line: 153, column: 2, scope: !2484)
!2508 = !DILocation(line: 153, column: 7, scope: !2484)
!2509 = !DILocation(line: 155, column: 6, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 155, column: 6)
!2511 = !DILocation(line: 155, column: 16, scope: !2510)
!2512 = !DILocation(line: 155, column: 14, scope: !2510)
!2513 = !DILocation(line: 155, column: 6, scope: !2484)
!2514 = !DILocation(line: 156, column: 3, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2510, file: !2, line: 155, column: 23)
!2516 = !DILocation(line: 159, column: 2, scope: !2484)
!2517 = !DILocation(line: 159, column: 2, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 159, column: 2)
!2519 = !DILocation(line: 159, column: 2, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2518, file: !2, line: 159, column: 2)
!2521 = !DILocation(line: 160, column: 29, scope: !2484)
!2522 = !DILocation(line: 160, column: 11, scope: !2484)
!2523 = !DILocation(line: 160, column: 9, scope: !2484)
!2524 = !DILocation(line: 161, column: 15, scope: !2484)
!2525 = !DILocation(line: 161, column: 2, scope: !2484)
!2526 = !DILocation(line: 162, column: 2, scope: !2484)
!2527 = !DILocation(line: 162, column: 2, scope: !2495)
!2528 = !DILocation(line: 162, column: 2, scope: !2499)
!2529 = !DILocation(line: 162, column: 2, scope: !2498)
!2530 = !DILocation(line: 163, column: 6, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 163, column: 6)
!2532 = !DILocation(line: 163, column: 14, scope: !2531)
!2533 = !DILocation(line: 163, column: 6, scope: !2484)
!2534 = !DILocation(line: 164, column: 12, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2531, file: !2, line: 163, column: 19)
!2536 = !DILocation(line: 164, column: 30, scope: !2535)
!2537 = !DILocation(line: 164, column: 35, scope: !2535)
!2538 = !DILocation(line: 164, column: 3, scope: !2535)
!2539 = !DILocation(line: 165, column: 2, scope: !2535)
!2540 = !DILocation(line: 166, column: 12, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2531, file: !2, line: 165, column: 9)
!2542 = !DILocation(line: 167, column: 5, scope: !2541)
!2543 = !DILocation(line: 167, column: 10, scope: !2541)
!2544 = !DILocation(line: 167, column: 19, scope: !2541)
!2545 = !DILocation(line: 166, column: 3, scope: !2541)
!2546 = !DILocation(line: 169, column: 1, scope: !2484)
!2547 = distinct !DISubprogram(name: "write_parent_set", scope: !2, file: !2, line: 404, type: !2548, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !202, !202, !226, !388}
!2550 = !{!2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563}
!2551 = !DILocalVariable(name: "path", arg: 1, scope: !2547, file: !2, line: 404, type: !202)
!2552 = !DILocalVariable(name: "inplace", arg: 2, scope: !2547, file: !2, line: 404, type: !202)
!2553 = !DILocalVariable(name: "nsupdate", arg: 3, scope: !2547, file: !2, line: 405, type: !226)
!2554 = !DILocalVariable(name: "rdataset", arg: 4, scope: !2547, file: !2, line: 405, type: !388)
!2555 = !DILocalVariable(name: "result", scope: !2547, file: !2, line: 407, type: !407)
!2556 = !DILocalVariable(name: "buf", scope: !2547, file: !2, line: 408, type: !165)
!2557 = !DILocalVariable(name: "r", scope: !2547, file: !2, line: 409, type: !524)
!2558 = !DILocalVariable(name: "filetime", scope: !2547, file: !2, line: 410, type: !1990)
!2559 = !DILocalVariable(name: "backname", scope: !2547, file: !2, line: 411, type: !1997)
!2560 = !DILocalVariable(name: "filename", scope: !2547, file: !2, line: 412, type: !1997)
!2561 = !DILocalVariable(name: "tmpname", scope: !2547, file: !2, line: 413, type: !1997)
!2562 = !DILocalVariable(name: "fp", scope: !2547, file: !2, line: 414, type: !1531)
!2563 = !DILocalVariable(name: "err", scope: !2564, file: !2, line: 448, type: !161)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 447, column: 25)
!2565 = distinct !DILexicalBlock(scope: !2547, file: !2, line: 447, column: 6)
!2566 = !DILocation(line: 404, column: 30, scope: !2547)
!2567 = !DILocation(line: 404, column: 48, scope: !2547)
!2568 = !DILocation(line: 405, column: 9, scope: !2547)
!2569 = !DILocation(line: 405, column: 35, scope: !2547)
!2570 = !DILocation(line: 407, column: 2, scope: !2547)
!2571 = !DILocation(line: 407, column: 15, scope: !2547)
!2572 = !DILocation(line: 408, column: 2, scope: !2547)
!2573 = !DILocation(line: 408, column: 16, scope: !2547)
!2574 = !DILocation(line: 409, column: 2, scope: !2547)
!2575 = !DILocation(line: 409, column: 15, scope: !2547)
!2576 = !DILocation(line: 410, column: 2, scope: !2547)
!2577 = !DILocation(line: 410, column: 13, scope: !2547)
!2578 = !DILocation(line: 411, column: 2, scope: !2547)
!2579 = !DILocation(line: 411, column: 7, scope: !2547)
!2580 = !DILocation(line: 412, column: 2, scope: !2547)
!2581 = !DILocation(line: 412, column: 7, scope: !2547)
!2582 = !DILocation(line: 413, column: 2, scope: !2547)
!2583 = !DILocation(line: 413, column: 7, scope: !2547)
!2584 = !DILocation(line: 414, column: 2, scope: !2547)
!2585 = !DILocation(line: 414, column: 8, scope: !2547)
!2586 = !DILocation(line: 416, column: 6, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2547, file: !2, line: 416, column: 6)
!2588 = !DILocation(line: 416, column: 15, scope: !2587)
!2589 = !DILocation(line: 416, column: 18, scope: !2587)
!2590 = !DILocation(line: 416, column: 26, scope: !2587)
!2591 = !DILocation(line: 416, column: 6, scope: !2547)
!2592 = !DILocation(line: 417, column: 3, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2587, file: !2, line: 416, column: 35)
!2594 = !DILocation(line: 420, column: 18, scope: !2547)
!2595 = !DILocation(line: 420, column: 8, scope: !2547)
!2596 = !DILocation(line: 420, column: 6, scope: !2547)
!2597 = !DILocation(line: 421, column: 2, scope: !2547)
!2598 = !DILocation(line: 421, column: 2, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2547, file: !2, line: 421, column: 2)
!2600 = !DILocation(line: 426, column: 6, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2547, file: !2, line: 426, column: 6)
!2602 = !DILocation(line: 426, column: 14, scope: !2601)
!2603 = !DILocation(line: 426, column: 6, scope: !2547)
!2604 = !DILocation(line: 427, column: 26, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2601, file: !2, line: 426, column: 23)
!2606 = !DILocation(line: 427, column: 3, scope: !2605)
!2607 = !DILocation(line: 428, column: 3, scope: !2605)
!2608 = !DILocation(line: 429, column: 14, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !2, line: 429, column: 7)
!2610 = !DILocation(line: 429, column: 7, scope: !2609)
!2611 = !DILocation(line: 429, column: 22, scope: !2609)
!2612 = !DILocation(line: 429, column: 7, scope: !2605)
!2613 = !DILocation(line: 430, column: 50, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2609, file: !2, line: 429, column: 30)
!2615 = !DILocation(line: 430, column: 41, scope: !2614)
!2616 = !DILocation(line: 430, column: 4, scope: !2614)
!2617 = !DILocation(line: 432, column: 3, scope: !2605)
!2618 = !DILocation(line: 435, column: 6, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2547, file: !2, line: 435, column: 6)
!2620 = !DILocation(line: 435, column: 17, scope: !2619)
!2621 = !DILocation(line: 435, column: 6, scope: !2547)
!2622 = !DILocation(line: 436, column: 18, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2619, file: !2, line: 435, column: 26)
!2624 = !DILocation(line: 436, column: 46, scope: !2623)
!2625 = !DILocation(line: 436, column: 52, scope: !2623)
!2626 = !DILocation(line: 436, column: 3, scope: !2623)
!2627 = !DILocation(line: 437, column: 2, scope: !2623)
!2628 = !DILocation(line: 438, column: 17, scope: !2547)
!2629 = !DILocation(line: 438, column: 45, scope: !2547)
!2630 = !DILocation(line: 438, column: 2, scope: !2547)
!2631 = !DILocation(line: 439, column: 17, scope: !2547)
!2632 = !DILocation(line: 439, column: 43, scope: !2547)
!2633 = !DILocation(line: 439, column: 2, scope: !2547)
!2634 = !DILocation(line: 441, column: 31, scope: !2547)
!2635 = !DILocation(line: 441, column: 11, scope: !2547)
!2636 = !DILocation(line: 441, column: 9, scope: !2547)
!2637 = !DILocation(line: 442, column: 6, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2547, file: !2, line: 442, column: 6)
!2639 = !DILocation(line: 442, column: 13, scope: !2638)
!2640 = !DILocation(line: 442, column: 6, scope: !2547)
!2641 = !DILocation(line: 443, column: 24, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2638, file: !2, line: 442, column: 31)
!2643 = !DILocation(line: 443, column: 51, scope: !2642)
!2644 = !DILocation(line: 443, column: 33, scope: !2642)
!2645 = !DILocation(line: 443, column: 3, scope: !2642)
!2646 = !DILocation(line: 445, column: 10, scope: !2547)
!2647 = !DILocation(line: 445, column: 30, scope: !2547)
!2648 = !DILocation(line: 445, column: 2, scope: !2547)
!2649 = !DILocation(line: 446, column: 2, scope: !2547)
!2650 = !DILocation(line: 447, column: 13, scope: !2565)
!2651 = !DILocation(line: 447, column: 6, scope: !2565)
!2652 = !DILocation(line: 447, column: 17, scope: !2565)
!2653 = !DILocation(line: 447, column: 6, scope: !2547)
!2654 = !DILocation(line: 448, column: 3, scope: !2564)
!2655 = !DILocation(line: 448, column: 7, scope: !2564)
!2656 = !DILocation(line: 448, column: 13, scope: !2564)
!2657 = !DILocation(line: 449, column: 19, scope: !2564)
!2658 = !DILocation(line: 449, column: 3, scope: !2564)
!2659 = !DILocation(line: 450, column: 36, scope: !2564)
!2660 = !DILocation(line: 450, column: 54, scope: !2564)
!2661 = !DILocation(line: 450, column: 45, scope: !2564)
!2662 = !DILocation(line: 450, column: 3, scope: !2564)
!2663 = !DILocation(line: 453, column: 36, scope: !2547)
!2664 = !DILocation(line: 453, column: 2, scope: !2547)
!2665 = !DILocation(line: 454, column: 28, scope: !2547)
!2666 = !DILocation(line: 454, column: 11, scope: !2547)
!2667 = !DILocation(line: 454, column: 9, scope: !2547)
!2668 = !DILocation(line: 455, column: 6, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2547, file: !2, line: 455, column: 6)
!2670 = !DILocation(line: 455, column: 13, scope: !2669)
!2671 = !DILocation(line: 455, column: 6, scope: !2547)
!2672 = !DILocation(line: 456, column: 19, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !2, line: 455, column: 31)
!2674 = !DILocation(line: 456, column: 3, scope: !2673)
!2675 = !DILocation(line: 458, column: 9, scope: !2673)
!2676 = !DILocation(line: 458, column: 36, scope: !2673)
!2677 = !DILocation(line: 458, column: 18, scope: !2673)
!2678 = !DILocation(line: 457, column: 3, scope: !2673)
!2679 = !DILocation(line: 461, column: 6, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2547, file: !2, line: 461, column: 6)
!2681 = !DILocation(line: 461, column: 17, scope: !2680)
!2682 = !DILocation(line: 461, column: 6, scope: !2547)
!2683 = !DILocation(line: 462, column: 19, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2680, file: !2, line: 461, column: 26)
!2685 = !DILocation(line: 462, column: 29, scope: !2684)
!2686 = !DILocation(line: 462, column: 3, scope: !2684)
!2687 = !DILocation(line: 463, column: 2, scope: !2684)
!2688 = !DILocation(line: 464, column: 18, scope: !2547)
!2689 = !DILocation(line: 464, column: 27, scope: !2547)
!2690 = !DILocation(line: 464, column: 2, scope: !2547)
!2691 = !DILocation(line: 465, column: 1, scope: !2547)
!2692 = !DISubprogram(name: "exit", scope: !1422, file: !1422, line: 624, type: !2693, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{null, !161}
!2695 = distinct !DISubprogram(name: "make_new_ds_set", scope: !2, file: !2, line: 870, type: !2696, scopeLine: 872, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !2702)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{null, !2698, !361, !388}
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "ds_maker_func_t", file: !2, line: 138, baseType: !2700)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!407, !582, !165, !159}
!2702 = !{!2703, !2704, !2705, !2706, !2707, !2711, !2712, !2716}
!2703 = !DILocalVariable(name: "ds_from_rdata", arg: 1, scope: !2695, file: !2, line: 870, type: !2698)
!2704 = !DILocalVariable(name: "ttl", arg: 2, scope: !2695, file: !2, line: 871, type: !361)
!2705 = !DILocalVariable(name: "rdset", arg: 3, scope: !2695, file: !2, line: 871, type: !388)
!2706 = !DILocalVariable(name: "size", scope: !2695, file: !2, line: 873, type: !13)
!2707 = !DILocalVariable(name: "result", scope: !2708, file: !2, line: 875, type: !407)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !2, line: 874, column: 11)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !2, line: 874, column: 2)
!2710 = distinct !DILexicalBlock(scope: !2695, file: !2, line: 874, column: 2)
!2711 = !DILocalVariable(name: "dslist", scope: !2708, file: !2, line: 876, type: !582)
!2712 = !DILocalVariable(name: "tresult", scope: !2713, file: !2, line: 900, type: !407)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !2, line: 899, column: 3)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !2, line: 896, column: 3)
!2715 = distinct !DILexicalBlock(scope: !2708, file: !2, line: 896, column: 3)
!2716 = !DILocalVariable(name: "rdata", scope: !2713, file: !2, line: 901, type: !146)
!2717 = !DILocation(line: 870, column: 34, scope: !2695)
!2718 = !DILocation(line: 871, column: 12, scope: !2695)
!2719 = !DILocation(line: 871, column: 33, scope: !2695)
!2720 = !DILocation(line: 873, column: 2, scope: !2695)
!2721 = !DILocation(line: 873, column: 15, scope: !2695)
!2722 = !DILocation(line: 874, column: 2, scope: !2695)
!2723 = !DILocation(line: 875, column: 3, scope: !2708)
!2724 = !DILocation(line: 875, column: 16, scope: !2708)
!2725 = !DILocation(line: 876, column: 3, scope: !2708)
!2726 = !DILocation(line: 876, column: 20, scope: !2708)
!2727 = !DILocation(line: 878, column: 12, scope: !2708)
!2728 = !DILocation(line: 878, column: 10, scope: !2708)
!2729 = !DILocation(line: 879, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2708, file: !2, line: 879, column: 7)
!2731 = !DILocation(line: 879, column: 14, scope: !2730)
!2732 = !DILocation(line: 879, column: 7, scope: !2708)
!2733 = !DILocation(line: 881, column: 10, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2730, file: !2, line: 879, column: 23)
!2735 = !DILocation(line: 880, column: 4, scope: !2734)
!2736 = !DILocation(line: 884, column: 22, scope: !2708)
!2737 = !DILocation(line: 884, column: 3, scope: !2708)
!2738 = !DILocation(line: 885, column: 21, scope: !2708)
!2739 = !DILocation(line: 885, column: 3, scope: !2708)
!2740 = !DILocation(line: 885, column: 11, scope: !2708)
!2741 = !DILocation(line: 885, column: 19, scope: !2708)
!2742 = !DILocation(line: 886, column: 3, scope: !2708)
!2743 = !DILocation(line: 886, column: 11, scope: !2708)
!2744 = !DILocation(line: 886, column: 16, scope: !2708)
!2745 = !DILocation(line: 887, column: 17, scope: !2708)
!2746 = !DILocation(line: 887, column: 3, scope: !2708)
!2747 = !DILocation(line: 887, column: 11, scope: !2708)
!2748 = !DILocation(line: 887, column: 15, scope: !2708)
!2749 = !DILocation(line: 889, column: 3, scope: !2708)
!2750 = !DILocation(line: 890, column: 37, scope: !2708)
!2751 = !DILocation(line: 890, column: 12, scope: !2708)
!2752 = !DILocation(line: 890, column: 10, scope: !2708)
!2753 = !DILocation(line: 891, column: 16, scope: !2708)
!2754 = !DILocation(line: 891, column: 3, scope: !2708)
!2755 = !DILocation(line: 893, column: 32, scope: !2708)
!2756 = !DILocation(line: 893, column: 51, scope: !2708)
!2757 = !DILocation(line: 893, column: 12, scope: !2708)
!2758 = !DILocation(line: 893, column: 10, scope: !2708)
!2759 = !DILocation(line: 894, column: 16, scope: !2708)
!2760 = !DILocation(line: 894, column: 3, scope: !2708)
!2761 = !DILocation(line: 896, column: 36, scope: !2715)
!2762 = !DILocation(line: 896, column: 17, scope: !2715)
!2763 = !DILocation(line: 896, column: 15, scope: !2715)
!2764 = !DILocation(line: 896, column: 8, scope: !2715)
!2765 = !DILocation(line: 897, column: 8, scope: !2714)
!2766 = !DILocation(line: 897, column: 15, scope: !2714)
!2767 = !DILocation(line: 896, column: 3, scope: !2715)
!2768 = !DILocation(line: 900, column: 4, scope: !2713)
!2769 = !DILocation(line: 900, column: 17, scope: !2713)
!2770 = !DILocation(line: 901, column: 4, scope: !2713)
!2771 = !DILocation(line: 901, column: 16, scope: !2713)
!2772 = !DILocation(line: 903, column: 25, scope: !2713)
!2773 = !DILocation(line: 903, column: 4, scope: !2713)
!2774 = !DILocation(line: 905, column: 14, scope: !2713)
!2775 = !DILocation(line: 905, column: 28, scope: !2713)
!2776 = !DILocation(line: 905, column: 36, scope: !2713)
!2777 = !DILocation(line: 905, column: 12, scope: !2713)
!2778 = !DILocation(line: 906, column: 8, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2713, file: !2, line: 906, column: 8)
!2780 = !DILocation(line: 906, column: 16, scope: !2779)
!2781 = !DILocation(line: 906, column: 8, scope: !2713)
!2782 = !DILocation(line: 907, column: 46, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2779, file: !2, line: 906, column: 34)
!2784 = !DILocation(line: 907, column: 5, scope: !2783)
!2785 = !DILocation(line: 908, column: 5, scope: !2783)
!2786 = !DILocation(line: 909, column: 5, scope: !2783)
!2787 = !DILocation(line: 910, column: 10, scope: !2783)
!2788 = !DILocation(line: 911, column: 5, scope: !2783)
!2789 = !DILocation(line: 914, column: 17, scope: !2713)
!2790 = !DILocation(line: 914, column: 4, scope: !2713)
!2791 = !DILocation(line: 915, column: 3, scope: !2714)
!2792 = !DILocation(line: 915, column: 3, scope: !2713)
!2793 = !DILocation(line: 898, column: 35, scope: !2714)
!2794 = !DILocation(line: 898, column: 17, scope: !2714)
!2795 = !DILocation(line: 898, column: 15, scope: !2714)
!2796 = !DILocation(line: 896, column: 3, scope: !2714)
!2797 = distinct !{!2797, !2767, !2798, !1126}
!2798 = !DILocation(line: 915, column: 3, scope: !2715)
!2799 = !DILocation(line: 917, column: 7, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2708, file: !2, line: 917, column: 7)
!2801 = !DILocation(line: 917, column: 14, scope: !2800)
!2802 = !DILocation(line: 917, column: 7, scope: !2708)
!2803 = !DILocation(line: 918, column: 4, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2800, file: !2, line: 917, column: 31)
!2805 = !DILocation(line: 920, column: 2, scope: !2709)
!2806 = !DILocation(line: 874, column: 2, scope: !2709)
!2807 = distinct !{!2807, !2808, !2809}
!2808 = !DILocation(line: 874, column: 2, scope: !2710)
!2809 = !DILocation(line: 920, column: 2, scope: !2710)
!2810 = !DILocation(line: 921, column: 1, scope: !2695)
!2811 = distinct !DISubprogram(name: "ds_from_cdnskey", scope: !2, file: !2, line: 807, type: !2700, scopeLine: 809, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !2812)
!2812 = !{!2813, !2814, !2815, !2816, !2817, !2818, !2819, !2825}
!2813 = !DILocalVariable(name: "dslist", arg: 1, scope: !2811, file: !2, line: 807, type: !582)
!2814 = !DILocalVariable(name: "buf", arg: 2, scope: !2811, file: !2, line: 807, type: !165)
!2815 = !DILocalVariable(name: "cdnskey", arg: 3, scope: !2811, file: !2, line: 808, type: !159)
!2816 = !DILocalVariable(name: "result", scope: !2811, file: !2, line: 810, type: !407)
!2817 = !DILocalVariable(name: "i", scope: !2811, file: !2, line: 811, type: !13)
!2818 = !DILocalVariable(name: "n", scope: !2811, file: !2, line: 811, type: !13)
!2819 = !DILocalVariable(name: "rdata", scope: !2820, file: !2, line: 816, type: !159)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !2, line: 815, column: 22)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !2, line: 815, column: 7)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !2, line: 814, column: 26)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !2, line: 814, column: 2)
!2824 = distinct !DILexicalBlock(scope: !2811, file: !2, line: 814, column: 2)
!2825 = !DILocalVariable(name: "r", scope: !2820, file: !2, line: 817, type: !524)
!2826 = !DILocation(line: 807, column: 34, scope: !2811)
!2827 = !DILocation(line: 807, column: 56, scope: !2811)
!2828 = !DILocation(line: 808, column: 17, scope: !2811)
!2829 = !DILocation(line: 810, column: 2, scope: !2811)
!2830 = !DILocation(line: 810, column: 15, scope: !2811)
!2831 = !DILocation(line: 811, column: 2, scope: !2811)
!2832 = !DILocation(line: 811, column: 11, scope: !2811)
!2833 = !DILocation(line: 811, column: 14, scope: !2811)
!2834 = !DILocation(line: 813, column: 4, scope: !2811)
!2835 = !DILocation(line: 814, column: 9, scope: !2824)
!2836 = !DILocation(line: 814, column: 7, scope: !2824)
!2837 = !DILocation(line: 814, column: 14, scope: !2823)
!2838 = !DILocation(line: 814, column: 18, scope: !2823)
!2839 = !DILocation(line: 814, column: 16, scope: !2823)
!2840 = !DILocation(line: 814, column: 2, scope: !2824)
!2841 = !DILocation(line: 815, column: 13, scope: !2821)
!2842 = !DILocation(line: 815, column: 7, scope: !2821)
!2843 = !DILocation(line: 815, column: 16, scope: !2821)
!2844 = !DILocation(line: 815, column: 7, scope: !2822)
!2845 = !DILocation(line: 816, column: 4, scope: !2820)
!2846 = !DILocation(line: 816, column: 17, scope: !2820)
!2847 = !DILocation(line: 817, column: 4, scope: !2820)
!2848 = !DILocation(line: 817, column: 17, scope: !2820)
!2849 = !DILocation(line: 819, column: 4, scope: !2820)
!2850 = !DILocation(line: 819, column: 4, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2820, file: !2, line: 819, column: 4)
!2852 = !DILocation(line: 820, column: 10, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2820, file: !2, line: 820, column: 8)
!2854 = !DILocation(line: 820, column: 17, scope: !2853)
!2855 = !DILocation(line: 820, column: 8, scope: !2820)
!2856 = !DILocation(line: 821, column: 5, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2853, file: !2, line: 820, column: 38)
!2858 = !DILocation(line: 824, column: 12, scope: !2820)
!2859 = !DILocation(line: 824, column: 10, scope: !2820)
!2860 = !DILocation(line: 825, column: 31, scope: !2820)
!2861 = !DILocation(line: 825, column: 37, scope: !2820)
!2862 = !DILocation(line: 825, column: 52, scope: !2820)
!2863 = !DILocation(line: 825, column: 46, scope: !2820)
!2864 = !DILocation(line: 826, column: 12, scope: !2820)
!2865 = !DILocation(line: 826, column: 18, scope: !2820)
!2866 = !DILocation(line: 825, column: 13, scope: !2820)
!2867 = !DILocation(line: 825, column: 11, scope: !2820)
!2868 = !DILocation(line: 827, column: 8, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2820, file: !2, line: 827, column: 8)
!2870 = !DILocation(line: 827, column: 15, scope: !2869)
!2871 = !DILocation(line: 827, column: 8, scope: !2820)
!2872 = !DILocation(line: 828, column: 5, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2869, file: !2, line: 827, column: 33)
!2874 = !DILocation(line: 828, column: 5, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2873, file: !2, line: 828, column: 5)
!2876 = !DILocation(line: 829, column: 4, scope: !2873)
!2877 = !DILocation(line: 831, column: 23, scope: !2820)
!2878 = !DILocation(line: 831, column: 31, scope: !2820)
!2879 = !DILocation(line: 831, column: 39, scope: !2820)
!2880 = !DILocation(line: 831, column: 13, scope: !2820)
!2881 = !DILocation(line: 831, column: 11, scope: !2820)
!2882 = !DILocation(line: 832, column: 8, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2820, file: !2, line: 832, column: 8)
!2884 = !DILocation(line: 832, column: 15, scope: !2883)
!2885 = !DILocation(line: 832, column: 8, scope: !2820)
!2886 = !DILocation(line: 833, column: 13, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2883, file: !2, line: 832, column: 33)
!2888 = !DILocation(line: 833, column: 5, scope: !2887)
!2889 = !DILocation(line: 835, column: 3, scope: !2821)
!2890 = !DILocation(line: 835, column: 3, scope: !2820)
!2891 = !DILocation(line: 836, column: 2, scope: !2822)
!2892 = !DILocation(line: 814, column: 22, scope: !2823)
!2893 = !DILocation(line: 814, column: 2, scope: !2823)
!2894 = distinct !{!2894, !2840, !2895, !1126}
!2895 = !DILocation(line: 836, column: 2, scope: !2824)
!2896 = !DILocation(line: 838, column: 2, scope: !2811)
!2897 = !DILocation(line: 839, column: 1, scope: !2811)
!2898 = distinct !DISubprogram(name: "ds_from_cds", scope: !2, file: !2, line: 789, type: !2700, scopeLine: 789, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !2899)
!2899 = !{!2900, !2901, !2902, !2903, !2904, !2915}
!2900 = !DILocalVariable(name: "dslist", arg: 1, scope: !2898, file: !2, line: 789, type: !582)
!2901 = !DILocalVariable(name: "buf", arg: 2, scope: !2898, file: !2, line: 789, type: !165)
!2902 = !DILocalVariable(name: "cds", arg: 3, scope: !2898, file: !2, line: 789, type: !159)
!2903 = !DILocalVariable(name: "result", scope: !2898, file: !2, line: 790, type: !407)
!2904 = !DILocalVariable(name: "ds", scope: !2898, file: !2, line: 791, type: !2905)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdata_ds_t", file: !340, line: 1298, baseType: !2906)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdata_ds", file: !340, line: 1290, size: 384, elements: !2907)
!2907 = !{!2908, !2909, !2910, !2911, !2912, !2913, !2914}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2906, file: !340, line: 1291, baseType: !344, size: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !2906, file: !340, line: 1292, baseType: !183, size: 64, offset: 192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "key_tag", scope: !2906, file: !340, line: 1293, baseType: !138, size: 16, offset: 256)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !2906, file: !340, line: 1294, baseType: !358, size: 8, offset: 272)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "digest_type", scope: !2906, file: !340, line: 1295, baseType: !131, size: 8, offset: 280)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2906, file: !340, line: 1296, baseType: !138, size: 16, offset: 288)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !2906, file: !340, line: 1297, baseType: !142, size: 64, offset: 320)
!2915 = !DILocalVariable(name: "rdata", scope: !2898, file: !2, line: 792, type: !159)
!2916 = !DILocation(line: 789, column: 30, scope: !2898)
!2917 = !DILocation(line: 789, column: 52, scope: !2898)
!2918 = !DILocation(line: 789, column: 70, scope: !2898)
!2919 = !DILocation(line: 790, column: 2, scope: !2898)
!2920 = !DILocation(line: 790, column: 15, scope: !2898)
!2921 = !DILocation(line: 791, column: 2, scope: !2898)
!2922 = !DILocation(line: 791, column: 17, scope: !2898)
!2923 = !DILocation(line: 792, column: 2, scope: !2898)
!2924 = !DILocation(line: 792, column: 15, scope: !2898)
!2925 = !DILocation(line: 794, column: 10, scope: !2898)
!2926 = !DILocation(line: 794, column: 8, scope: !2898)
!2927 = !DILocation(line: 796, column: 30, scope: !2898)
!2928 = !DILocation(line: 796, column: 11, scope: !2898)
!2929 = !DILocation(line: 796, column: 9, scope: !2898)
!2930 = !DILocation(line: 797, column: 15, scope: !2898)
!2931 = !DILocation(line: 797, column: 2, scope: !2898)
!2932 = !DILocation(line: 798, column: 5, scope: !2898)
!2933 = !DILocation(line: 798, column: 12, scope: !2898)
!2934 = !DILocation(line: 798, column: 19, scope: !2898)
!2935 = !DILocation(line: 800, column: 32, scope: !2898)
!2936 = !DILocation(line: 800, column: 39, scope: !2898)
!2937 = !DILocation(line: 801, column: 16, scope: !2898)
!2938 = !DILocation(line: 800, column: 11, scope: !2898)
!2939 = !DILocation(line: 800, column: 9, scope: !2898)
!2940 = !DILocation(line: 803, column: 20, scope: !2898)
!2941 = !DILocation(line: 803, column: 28, scope: !2898)
!2942 = !DILocation(line: 803, column: 36, scope: !2898)
!2943 = !DILocation(line: 803, column: 10, scope: !2898)
!2944 = !DILocation(line: 804, column: 1, scope: !2898)
!2945 = !DILocation(line: 803, column: 2, scope: !2898)
!2946 = distinct !DISubprogram(name: "consistent_digests", scope: !2, file: !2, line: 934, type: !2084, scopeLine: 934, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !2947)
!2947 = !{!2948, !2949, !2950, !2951, !2953, !2954, !2955, !2956, !2957, !2958, !2959}
!2948 = !DILocalVariable(name: "dsset", arg: 1, scope: !2946, file: !2, line: 934, type: !388)
!2949 = !DILocalVariable(name: "result", scope: !2946, file: !2, line: 935, type: !407)
!2950 = !DILocalVariable(name: "arrdata", scope: !2946, file: !2, line: 936, type: !159)
!2951 = !DILocalVariable(name: "ds", scope: !2946, file: !2, line: 937, type: !2952)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2953 = !DILocalVariable(name: "key_tag", scope: !2946, file: !2, line: 938, type: !705)
!2954 = !DILocalVariable(name: "algorithm", scope: !2946, file: !2, line: 939, type: !358)
!2955 = !DILocalVariable(name: "match", scope: !2946, file: !2, line: 940, type: !226)
!2956 = !DILocalVariable(name: "i", scope: !2946, file: !2, line: 941, type: !161)
!2957 = !DILocalVariable(name: "j", scope: !2946, file: !2, line: 941, type: !161)
!2958 = !DILocalVariable(name: "n", scope: !2946, file: !2, line: 941, type: !161)
!2959 = !DILocalVariable(name: "d", scope: !2946, file: !2, line: 941, type: !161)
!2960 = !DILocation(line: 934, column: 36, scope: !2946)
!2961 = !DILocation(line: 935, column: 2, scope: !2946)
!2962 = !DILocation(line: 935, column: 15, scope: !2946)
!2963 = !DILocation(line: 936, column: 2, scope: !2946)
!2964 = !DILocation(line: 936, column: 15, scope: !2946)
!2965 = !DILocation(line: 937, column: 2, scope: !2946)
!2966 = !DILocation(line: 937, column: 18, scope: !2946)
!2967 = !DILocation(line: 938, column: 2, scope: !2946)
!2968 = !DILocation(line: 938, column: 15, scope: !2946)
!2969 = !DILocation(line: 939, column: 2, scope: !2946)
!2970 = !DILocation(line: 939, column: 15, scope: !2946)
!2971 = !DILocation(line: 940, column: 2, scope: !2946)
!2972 = !DILocation(line: 940, column: 7, scope: !2946)
!2973 = !DILocation(line: 941, column: 2, scope: !2946)
!2974 = !DILocation(line: 941, column: 6, scope: !2946)
!2975 = !DILocation(line: 941, column: 9, scope: !2946)
!2976 = !DILocation(line: 941, column: 12, scope: !2946)
!2977 = !DILocation(line: 941, column: 15, scope: !2946)
!2978 = !DILocation(line: 948, column: 25, scope: !2946)
!2979 = !DILocation(line: 948, column: 6, scope: !2946)
!2980 = !DILocation(line: 948, column: 4, scope: !2946)
!2981 = !DILocation(line: 950, column: 12, scope: !2946)
!2982 = !DILocation(line: 950, column: 10, scope: !2946)
!2983 = !DILocation(line: 951, column: 6, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 951, column: 6)
!2985 = !DILocation(line: 951, column: 14, scope: !2984)
!2986 = !DILocation(line: 951, column: 6, scope: !2946)
!2987 = !DILocation(line: 953, column: 9, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !2, line: 951, column: 23)
!2989 = !DILocation(line: 952, column: 3, scope: !2988)
!2990 = !DILocation(line: 956, column: 35, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 956, column: 2)
!2992 = !DILocation(line: 956, column: 16, scope: !2991)
!2993 = !DILocation(line: 956, column: 14, scope: !2991)
!2994 = !DILocation(line: 956, column: 45, scope: !2991)
!2995 = !DILocation(line: 956, column: 7, scope: !2991)
!2996 = !DILocation(line: 957, column: 7, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2991, file: !2, line: 956, column: 2)
!2998 = !DILocation(line: 957, column: 14, scope: !2997)
!2999 = !DILocation(line: 956, column: 2, scope: !2991)
!3000 = !DILocation(line: 960, column: 19, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2997, file: !2, line: 959, column: 2)
!3002 = !DILocation(line: 960, column: 27, scope: !3001)
!3003 = !DILocation(line: 960, column: 3, scope: !3001)
!3004 = !DILocation(line: 961, column: 24, scope: !3001)
!3005 = !DILocation(line: 961, column: 32, scope: !3001)
!3006 = !DILocation(line: 961, column: 40, scope: !3001)
!3007 = !DILocation(line: 961, column: 3, scope: !3001)
!3008 = !DILocation(line: 962, column: 2, scope: !3001)
!3009 = !DILocation(line: 958, column: 34, scope: !2997)
!3010 = !DILocation(line: 958, column: 16, scope: !2997)
!3011 = !DILocation(line: 958, column: 14, scope: !2997)
!3012 = !DILocation(line: 958, column: 43, scope: !2997)
!3013 = !DILocation(line: 956, column: 2, scope: !2997)
!3014 = distinct !{!3014, !2999, !3015, !1126}
!3015 = !DILocation(line: 962, column: 2, scope: !2991)
!3016 = !DILocation(line: 964, column: 8, scope: !2946)
!3017 = !DILocation(line: 964, column: 17, scope: !2946)
!3018 = !DILocation(line: 964, column: 2, scope: !2946)
!3019 = !DILocation(line: 969, column: 7, scope: !2946)
!3020 = !DILocation(line: 969, column: 5, scope: !2946)
!3021 = !DILocation(line: 970, column: 6, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 970, column: 6)
!3023 = !DILocation(line: 970, column: 9, scope: !3022)
!3024 = !DILocation(line: 970, column: 6, scope: !2946)
!3025 = !DILocation(line: 972, column: 9, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3022, file: !2, line: 970, column: 18)
!3027 = !DILocation(line: 971, column: 3, scope: !3026)
!3028 = !DILocation(line: 975, column: 9, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 975, column: 2)
!3030 = !DILocation(line: 975, column: 7, scope: !3029)
!3031 = !DILocation(line: 975, column: 14, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3029, file: !2, line: 975, column: 2)
!3033 = !DILocation(line: 975, column: 18, scope: !3032)
!3034 = !DILocation(line: 975, column: 16, scope: !3032)
!3035 = !DILocation(line: 975, column: 2, scope: !3029)
!3036 = !DILocation(line: 976, column: 32, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !2, line: 975, column: 26)
!3038 = !DILocation(line: 976, column: 40, scope: !3037)
!3039 = !DILocation(line: 976, column: 45, scope: !3037)
!3040 = !DILocation(line: 976, column: 48, scope: !3037)
!3041 = !DILocation(line: 976, column: 12, scope: !3037)
!3042 = !DILocation(line: 976, column: 10, scope: !3037)
!3043 = !DILocation(line: 977, column: 16, scope: !3037)
!3044 = !DILocation(line: 977, column: 3, scope: !3037)
!3045 = !DILocation(line: 978, column: 2, scope: !3037)
!3046 = !DILocation(line: 975, column: 22, scope: !3032)
!3047 = !DILocation(line: 975, column: 2, scope: !3032)
!3048 = distinct !{!3048, !3035, !3049, !1126}
!3049 = !DILocation(line: 978, column: 2, scope: !3029)
!3050 = !DILocation(line: 983, column: 12, scope: !2946)
!3051 = !DILocation(line: 983, column: 18, scope: !2946)
!3052 = !DILocation(line: 983, column: 10, scope: !2946)
!3053 = !DILocation(line: 984, column: 14, scope: !2946)
!3054 = !DILocation(line: 984, column: 20, scope: !2946)
!3055 = !DILocation(line: 984, column: 12, scope: !2946)
!3056 = !DILocation(line: 985, column: 9, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 985, column: 2)
!3058 = !DILocation(line: 985, column: 16, scope: !3057)
!3059 = !DILocation(line: 985, column: 7, scope: !3057)
!3060 = !DILocation(line: 985, column: 21, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3057, file: !2, line: 985, column: 2)
!3062 = !DILocation(line: 985, column: 25, scope: !3061)
!3063 = !DILocation(line: 985, column: 23, scope: !3061)
!3064 = !DILocation(line: 985, column: 2, scope: !3057)
!3065 = !DILocation(line: 986, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !2, line: 986, column: 7)
!3067 = distinct !DILexicalBlock(scope: !3061, file: !2, line: 985, column: 38)
!3068 = !DILocation(line: 986, column: 10, scope: !3066)
!3069 = !DILocation(line: 986, column: 13, scope: !3066)
!3070 = !DILocation(line: 986, column: 24, scope: !3066)
!3071 = !DILocation(line: 986, column: 21, scope: !3066)
!3072 = !DILocation(line: 986, column: 32, scope: !3066)
!3073 = !DILocation(line: 986, column: 35, scope: !3066)
!3074 = !DILocation(line: 986, column: 38, scope: !3066)
!3075 = !DILocation(line: 986, column: 41, scope: !3066)
!3076 = !DILocation(line: 986, column: 54, scope: !3066)
!3077 = !DILocation(line: 986, column: 51, scope: !3066)
!3078 = !DILocation(line: 986, column: 7, scope: !3067)
!3079 = !DILocation(line: 987, column: 4, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3066, file: !2, line: 986, column: 65)
!3081 = !DILocation(line: 989, column: 2, scope: !3067)
!3082 = !DILocation(line: 985, column: 29, scope: !3061)
!3083 = !DILocation(line: 985, column: 34, scope: !3061)
!3084 = !DILocation(line: 985, column: 2, scope: !3061)
!3085 = distinct !{!3085, !3064, !3086, !1126}
!3086 = !DILocation(line: 989, column: 2, scope: !3057)
!3087 = !DILocation(line: 994, column: 8, scope: !2946)
!3088 = !DILocation(line: 995, column: 2, scope: !2946)
!3089 = !DILocation(line: 995, column: 9, scope: !2946)
!3090 = !DILocation(line: 995, column: 13, scope: !2946)
!3091 = !DILocation(line: 995, column: 11, scope: !2946)
!3092 = !DILocation(line: 996, column: 13, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 995, column: 16)
!3094 = !DILocation(line: 996, column: 16, scope: !3093)
!3095 = !DILocation(line: 996, column: 19, scope: !3093)
!3096 = !DILocation(line: 996, column: 11, scope: !3093)
!3097 = !DILocation(line: 997, column: 15, scope: !3093)
!3098 = !DILocation(line: 997, column: 18, scope: !3093)
!3099 = !DILocation(line: 997, column: 21, scope: !3093)
!3100 = !DILocation(line: 997, column: 13, scope: !3093)
!3101 = !DILocation(line: 998, column: 10, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3093, file: !2, line: 998, column: 3)
!3103 = !DILocation(line: 998, column: 8, scope: !3102)
!3104 = !DILocation(line: 998, column: 15, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3102, file: !2, line: 998, column: 3)
!3106 = !DILocation(line: 998, column: 19, scope: !3105)
!3107 = !DILocation(line: 998, column: 17, scope: !3105)
!3108 = !DILocation(line: 998, column: 21, scope: !3105)
!3109 = !DILocation(line: 998, column: 24, scope: !3105)
!3110 = !DILocation(line: 998, column: 26, scope: !3105)
!3111 = !DILocation(line: 998, column: 25, scope: !3105)
!3112 = !DILocation(line: 998, column: 30, scope: !3105)
!3113 = !DILocation(line: 998, column: 28, scope: !3105)
!3114 = !DILocation(line: 0, scope: !3105)
!3115 = !DILocation(line: 998, column: 3, scope: !3102)
!3116 = !DILocation(line: 999, column: 8, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !2, line: 999, column: 8)
!3118 = distinct !DILexicalBlock(scope: !3105, file: !2, line: 998, column: 38)
!3119 = !DILocation(line: 999, column: 11, scope: !3117)
!3120 = !DILocation(line: 999, column: 13, scope: !3117)
!3121 = !DILocation(line: 999, column: 12, scope: !3117)
!3122 = !DILocation(line: 999, column: 16, scope: !3117)
!3123 = !DILocation(line: 999, column: 27, scope: !3117)
!3124 = !DILocation(line: 999, column: 24, scope: !3117)
!3125 = !DILocation(line: 999, column: 35, scope: !3117)
!3126 = !DILocation(line: 1000, column: 8, scope: !3117)
!3127 = !DILocation(line: 1000, column: 11, scope: !3117)
!3128 = !DILocation(line: 1000, column: 13, scope: !3117)
!3129 = !DILocation(line: 1000, column: 12, scope: !3117)
!3130 = !DILocation(line: 1000, column: 16, scope: !3117)
!3131 = !DILocation(line: 1000, column: 29, scope: !3117)
!3132 = !DILocation(line: 1000, column: 26, scope: !3117)
!3133 = !DILocation(line: 1000, column: 39, scope: !3117)
!3134 = !DILocation(line: 1001, column: 8, scope: !3117)
!3135 = !DILocation(line: 1001, column: 11, scope: !3117)
!3136 = !DILocation(line: 1001, column: 13, scope: !3117)
!3137 = !DILocation(line: 1001, column: 12, scope: !3117)
!3138 = !DILocation(line: 1001, column: 16, scope: !3117)
!3139 = !DILocation(line: 1001, column: 31, scope: !3117)
!3140 = !DILocation(line: 1001, column: 34, scope: !3117)
!3141 = !DILocation(line: 1001, column: 37, scope: !3117)
!3142 = !DILocation(line: 1001, column: 28, scope: !3117)
!3143 = !DILocation(line: 999, column: 8, scope: !3118)
!3144 = !DILocation(line: 1003, column: 11, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3117, file: !2, line: 1002, column: 4)
!3146 = !DILocation(line: 1004, column: 4, scope: !3145)
!3147 = !DILocation(line: 1005, column: 3, scope: !3118)
!3148 = !DILocation(line: 998, column: 34, scope: !3105)
!3149 = !DILocation(line: 998, column: 3, scope: !3105)
!3150 = distinct !{!3150, !3115, !3151, !1126}
!3151 = !DILocation(line: 1005, column: 3, scope: !3102)
!3152 = !DILocation(line: 1006, column: 8, scope: !3093)
!3153 = !DILocation(line: 1006, column: 5, scope: !3093)
!3154 = distinct !{!3154, !3088, !3155, !1126}
!3155 = !DILocation(line: 1007, column: 2, scope: !2946)
!3156 = !DILocation(line: 1012, column: 2, scope: !2946)
!3157 = !DILocation(line: 1012, column: 2, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 1012, column: 2)
!3159 = !DILocation(line: 1013, column: 2, scope: !2946)
!3160 = !DILocation(line: 1013, column: 2, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 1013, column: 2)
!3162 = !DILocation(line: 1015, column: 10, scope: !2946)
!3163 = !DILocation(line: 1016, column: 1, scope: !2946)
!3164 = !DILocation(line: 1015, column: 2, scope: !2946)
!3165 = distinct !DISubprogram(name: "signed_strict", scope: !2, file: !2, line: 724, type: !3166, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!226, !388, !2227}
!3168 = !{!3169, !3170, !3171, !3172, !3173, !3177, !3178, !3179}
!3169 = !DILocalVariable(name: "dsset", arg: 1, scope: !3165, file: !2, line: 724, type: !388)
!3170 = !DILocalVariable(name: "algo", arg: 2, scope: !3165, file: !2, line: 724, type: !2227)
!3171 = !DILocalVariable(name: "result", scope: !3165, file: !2, line: 725, type: !407)
!3172 = !DILocalVariable(name: "all_ok", scope: !3165, file: !2, line: 726, type: !226)
!3173 = !DILocalVariable(name: "dsrdata", scope: !3174, file: !2, line: 732, type: !146)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !2, line: 731, column: 2)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !2, line: 728, column: 2)
!3176 = distinct !DILexicalBlock(scope: !3165, file: !2, line: 728, column: 2)
!3177 = !DILocalVariable(name: "ds", scope: !3174, file: !2, line: 733, type: !2905)
!3178 = !DILocalVariable(name: "ds_ok", scope: !3174, file: !2, line: 734, type: !226)
!3179 = !DILocalVariable(name: "i", scope: !3174, file: !2, line: 735, type: !161)
!3180 = !DILocation(line: 724, column: 31, scope: !3165)
!3181 = !DILocation(line: 724, column: 52, scope: !3165)
!3182 = !DILocation(line: 725, column: 2, scope: !3165)
!3183 = !DILocation(line: 725, column: 15, scope: !3165)
!3184 = !DILocation(line: 726, column: 2, scope: !3165)
!3185 = !DILocation(line: 726, column: 7, scope: !3165)
!3186 = !DILocation(line: 728, column: 35, scope: !3176)
!3187 = !DILocation(line: 728, column: 16, scope: !3176)
!3188 = !DILocation(line: 728, column: 14, scope: !3176)
!3189 = !DILocation(line: 728, column: 7, scope: !3176)
!3190 = !DILocation(line: 729, column: 7, scope: !3175)
!3191 = !DILocation(line: 729, column: 14, scope: !3175)
!3192 = !DILocation(line: 728, column: 2, scope: !3176)
!3193 = !DILocation(line: 732, column: 3, scope: !3174)
!3194 = !DILocation(line: 732, column: 15, scope: !3174)
!3195 = !DILocation(line: 733, column: 3, scope: !3174)
!3196 = !DILocation(line: 733, column: 18, scope: !3174)
!3197 = !DILocation(line: 734, column: 3, scope: !3174)
!3198 = !DILocation(line: 734, column: 8, scope: !3174)
!3199 = !DILocation(line: 735, column: 3, scope: !3174)
!3200 = !DILocation(line: 735, column: 7, scope: !3174)
!3201 = !DILocation(line: 737, column: 24, scope: !3174)
!3202 = !DILocation(line: 737, column: 3, scope: !3174)
!3203 = !DILocation(line: 738, column: 12, scope: !3174)
!3204 = !DILocation(line: 738, column: 10, scope: !3174)
!3205 = !DILocation(line: 739, column: 16, scope: !3174)
!3206 = !DILocation(line: 739, column: 3, scope: !3174)
!3207 = !DILocation(line: 741, column: 9, scope: !3174)
!3208 = !DILocation(line: 742, column: 10, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3174, file: !2, line: 742, column: 3)
!3210 = !DILocation(line: 742, column: 8, scope: !3209)
!3211 = !DILocation(line: 742, column: 15, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3209, file: !2, line: 742, column: 3)
!3213 = !DILocation(line: 742, column: 19, scope: !3212)
!3214 = !DILocation(line: 742, column: 17, scope: !3212)
!3215 = !DILocation(line: 742, column: 3, scope: !3209)
!3216 = !DILocation(line: 743, column: 8, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !2, line: 743, column: 8)
!3218 = distinct !DILexicalBlock(scope: !3212, file: !2, line: 742, column: 30)
!3219 = !DILocation(line: 743, column: 13, scope: !3217)
!3220 = !DILocation(line: 743, column: 22, scope: !3217)
!3221 = !DILocation(line: 743, column: 19, scope: !3217)
!3222 = !DILocation(line: 743, column: 16, scope: !3217)
!3223 = !DILocation(line: 743, column: 8, scope: !3218)
!3224 = !DILocation(line: 744, column: 11, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3217, file: !2, line: 743, column: 33)
!3226 = !DILocation(line: 745, column: 4, scope: !3225)
!3227 = !DILocation(line: 746, column: 3, scope: !3218)
!3228 = !DILocation(line: 742, column: 26, scope: !3212)
!3229 = !DILocation(line: 742, column: 3, scope: !3212)
!3230 = distinct !{!3230, !3215, !3231, !1126}
!3231 = !DILocation(line: 746, column: 3, scope: !3209)
!3232 = !DILocation(line: 747, column: 8, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3174, file: !2, line: 747, column: 7)
!3234 = !DILocation(line: 747, column: 7, scope: !3174)
!3235 = !DILocation(line: 749, column: 23, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3233, file: !2, line: 747, column: 15)
!3237 = !DILocation(line: 749, column: 20, scope: !3236)
!3238 = !DILocation(line: 749, column: 37, scope: !3236)
!3239 = !DILocation(line: 749, column: 34, scope: !3236)
!3240 = !DILocation(line: 748, column: 4, scope: !3236)
!3241 = !DILocation(line: 750, column: 11, scope: !3236)
!3242 = !DILocation(line: 751, column: 3, scope: !3236)
!3243 = !DILocation(line: 752, column: 2, scope: !3175)
!3244 = !DILocation(line: 752, column: 2, scope: !3174)
!3245 = !DILocation(line: 730, column: 34, scope: !3175)
!3246 = !DILocation(line: 730, column: 16, scope: !3175)
!3247 = !DILocation(line: 730, column: 14, scope: !3175)
!3248 = !DILocation(line: 728, column: 2, scope: !3175)
!3249 = distinct !{!3249, !3192, !3250, !1126}
!3250 = !DILocation(line: 752, column: 2, scope: !3176)
!3251 = !DILocation(line: 754, column: 2, scope: !3165)
!3252 = !DILocation(line: 754, column: 2, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3165, file: !2, line: 754, column: 2)
!3254 = !DILocation(line: 755, column: 10, scope: !3165)
!3255 = !DILocation(line: 756, column: 1, scope: !3165)
!3256 = !DILocation(line: 755, column: 2, scope: !3165)
!3257 = distinct !DISubprogram(name: "nsdiff", scope: !2, file: !2, line: 1087, type: !3258, scopeLine: 1087, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !3260)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !361, !388, !388}
!3260 = !{!3261, !3262, !3263}
!3261 = !DILocalVariable(name: "ttl", arg: 1, scope: !3257, file: !2, line: 1087, type: !361)
!3262 = !DILocalVariable(name: "oldset", arg: 2, scope: !3257, file: !2, line: 1087, type: !388)
!3263 = !DILocalVariable(name: "newset", arg: 3, scope: !3257, file: !2, line: 1087, type: !388)
!3264 = !DILocation(line: 1087, column: 17, scope: !3257)
!3265 = !DILocation(line: 1087, column: 38, scope: !3257)
!3266 = !DILocation(line: 1087, column: 62, scope: !3257)
!3267 = !DILocation(line: 1088, column: 6, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3257, file: !2, line: 1088, column: 6)
!3269 = !DILocation(line: 1088, column: 10, scope: !3268)
!3270 = !DILocation(line: 1088, column: 6, scope: !3257)
!3271 = !DILocation(line: 1089, column: 3, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3268, file: !2, line: 1088, column: 16)
!3273 = !DILocation(line: 1090, column: 2, scope: !3272)
!3274 = !DILocation(line: 1091, column: 21, scope: !3257)
!3275 = !DILocation(line: 1091, column: 26, scope: !3257)
!3276 = !DILocation(line: 1091, column: 34, scope: !3257)
!3277 = !DILocation(line: 1091, column: 2, scope: !3257)
!3278 = !DILocation(line: 1092, column: 24, scope: !3257)
!3279 = !DILocation(line: 1092, column: 32, scope: !3257)
!3280 = !DILocation(line: 1092, column: 2, scope: !3257)
!3281 = !DILocation(line: 1093, column: 6, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3257, file: !2, line: 1093, column: 6)
!3283 = !DILocation(line: 1093, column: 14, scope: !3282)
!3284 = !DILocation(line: 1093, column: 6, scope: !3257)
!3285 = !DILocation(line: 1094, column: 3, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3282, file: !2, line: 1093, column: 19)
!3287 = !DILocation(line: 1095, column: 2, scope: !3286)
!3288 = !DILocation(line: 1096, column: 3, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3282, file: !2, line: 1095, column: 9)
!3290 = !DILocation(line: 1098, column: 13, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3257, file: !2, line: 1098, column: 6)
!3292 = !DILocation(line: 1098, column: 6, scope: !3291)
!3293 = !DILocation(line: 1098, column: 21, scope: !3291)
!3294 = !DILocation(line: 1098, column: 6, scope: !3257)
!3295 = !DILocation(line: 1099, column: 38, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3291, file: !2, line: 1098, column: 29)
!3297 = !DILocation(line: 1099, column: 29, scope: !3296)
!3298 = !DILocation(line: 1099, column: 3, scope: !3296)
!3299 = !DILocation(line: 1101, column: 1, scope: !3257)
!3300 = distinct !DISubprogram(name: "free_all_sets", scope: !2, file: !2, line: 234, type: !1354, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!3301 = !DILocation(line: 235, column: 2, scope: !3300)
!3302 = !DILocation(line: 236, column: 2, scope: !3300)
!3303 = !DILocation(line: 237, column: 2, scope: !3300)
!3304 = !DILocation(line: 238, column: 2, scope: !3300)
!3305 = !DILocation(line: 239, column: 2, scope: !3300)
!3306 = !DILocation(line: 240, column: 2, scope: !3300)
!3307 = !DILocation(line: 241, column: 2, scope: !3300)
!3308 = !DILocation(line: 242, column: 2, scope: !3300)
!3309 = !DILocation(line: 243, column: 6, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3300, file: !2, line: 243, column: 6)
!3311 = !DILocation(line: 243, column: 17, scope: !3310)
!3312 = !DILocation(line: 243, column: 6, scope: !3300)
!3313 = !DILocation(line: 244, column: 3, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3310, file: !2, line: 243, column: 26)
!3315 = !DILocation(line: 245, column: 2, scope: !3314)
!3316 = !DILocation(line: 246, column: 1, scope: !3300)
!3317 = !DISubprogram(name: "cleanup_logging", scope: !1349, file: !1349, line: 50, type: !3318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{null, !1477}
!3320 = !DISubprogram(name: "dst_lib_destroy", scope: !616, file: !616, line: 151, type: !1354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3321 = !DISubprogram(name: "isc_mem_stats", scope: !186, file: !186, line: 323, type: !3322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{null, !183, !1531}
!3324 = !DISubprogram(name: "isc_mem_destroy", scope: !186, file: !186, line: 317, type: !3325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{null, !211}
!3327 = !DISubprogram(name: "strtodsdigest", scope: !1349, file: !1349, line: 59, type: !3328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!13, !202}
!3330 = !DISubprogram(name: "qsort", scope: !1422, file: !1422, line: 838, type: !3331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{null, !128, !199, !199, !3333}
!3333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1422, line: 816, baseType: !3334)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!161, !633, !633}
!3337 = distinct !DISubprogram(name: "cmp_dtype", scope: !2, file: !2, line: 846, type: !3335, scopeLine: 846, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !3338)
!3338 = !{!3339, !3340, !3341, !3342}
!3339 = !DILocalVariable(name: "ap", arg: 1, scope: !3337, file: !2, line: 846, type: !633)
!3340 = !DILocalVariable(name: "bp", arg: 2, scope: !3337, file: !2, line: 846, type: !633)
!3341 = !DILocalVariable(name: "a", scope: !3337, file: !2, line: 847, type: !161)
!3342 = !DILocalVariable(name: "b", scope: !3337, file: !2, line: 848, type: !161)
!3343 = !DILocation(line: 846, column: 23, scope: !3337)
!3344 = !DILocation(line: 846, column: 39, scope: !3337)
!3345 = !DILocation(line: 847, column: 2, scope: !3337)
!3346 = !DILocation(line: 847, column: 6, scope: !3337)
!3347 = !DILocation(line: 847, column: 35, scope: !3337)
!3348 = !DILocation(line: 847, column: 10, scope: !3337)
!3349 = !DILocation(line: 848, column: 2, scope: !3337)
!3350 = !DILocation(line: 848, column: 6, scope: !3337)
!3351 = !DILocation(line: 848, column: 35, scope: !3337)
!3352 = !DILocation(line: 848, column: 10, scope: !3337)
!3353 = !DILocation(line: 849, column: 10, scope: !3337)
!3354 = !DILocation(line: 849, column: 14, scope: !3337)
!3355 = !DILocation(line: 849, column: 12, scope: !3337)
!3356 = !DILocation(line: 850, column: 1, scope: !3337)
!3357 = !DILocation(line: 849, column: 2, scope: !3337)
!3358 = !DISubprogram(name: "fprintf", scope: !3359, file: !3359, line: 350, type: !3360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3359 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!161, !3362, !1425, null}
!3362 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1531)
!3363 = !DISubprogram(name: "dns_fixedname_initname", scope: !748, file: !748, line: 80, type: !3364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!382, !3366}
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!3367 = !DISubprogram(name: "strlen", scope: !3368, file: !3368, line: 407, type: !3369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3368 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!201, !202}
!3371 = !DISubprogram(name: "dns_name_fromtext", scope: !369, file: !369, line: 784, type: !3372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!407, !382, !165, !425, !13, !165}
!3374 = distinct !DISubprogram(name: "get_dsset_name", scope: !2, file: !2, line: 288, type: !3375, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !3377)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{null, !143, !199, !202, !202}
!3377 = !{!3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3387, !3388, !3391, !3394, !3398, !3399, !3402, !3404, !3405, !3408, !3410, !3411, !3414, !3416, !3417}
!3378 = !DILocalVariable(name: "filename", arg: 1, scope: !3374, file: !2, line: 288, type: !143)
!3379 = !DILocalVariable(name: "size", arg: 2, scope: !3374, file: !2, line: 288, type: !199)
!3380 = !DILocalVariable(name: "path", arg: 3, scope: !3374, file: !2, line: 289, type: !202)
!3381 = !DILocalVariable(name: "suffix", arg: 4, scope: !3374, file: !2, line: 289, type: !202)
!3382 = !DILocalVariable(name: "result", scope: !3374, file: !2, line: 291, type: !407)
!3383 = !DILocalVariable(name: "buf", scope: !3374, file: !2, line: 292, type: !166)
!3384 = !DILocalVariable(name: "len", scope: !3374, file: !2, line: 293, type: !199)
!3385 = !DILocalVariable(name: "_length", scope: !3386, file: !2, line: 303, type: !13)
!3386 = distinct !DILexicalBlock(scope: !3374, file: !2, line: 303, column: 2)
!3387 = !DILocalVariable(name: "_cp", scope: !3386, file: !2, line: 303, type: !142)
!3388 = !DILocalVariable(name: "_tmp", scope: !3389, file: !2, line: 303, type: !165)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !2, line: 303, column: 2)
!3390 = distinct !DILexicalBlock(scope: !3386, file: !2, line: 303, column: 2)
!3391 = !DILocalVariable(name: "prefix", scope: !3392, file: !2, line: 306, type: !202)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !2, line: 305, column: 51)
!3393 = distinct !DILexicalBlock(scope: !3374, file: !2, line: 305, column: 6)
!3394 = !DILocalVariable(name: "_length", scope: !3395, file: !2, line: 309, type: !13)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !2, line: 309, column: 4)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !2, line: 308, column: 29)
!3397 = distinct !DILexicalBlock(scope: !3392, file: !2, line: 308, column: 7)
!3398 = !DILocalVariable(name: "_cp", scope: !3395, file: !2, line: 309, type: !142)
!3399 = !DILocalVariable(name: "_tmp", scope: !3400, file: !2, line: 309, type: !165)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !2, line: 309, column: 4)
!3401 = distinct !DILexicalBlock(scope: !3395, file: !2, line: 309, column: 4)
!3402 = !DILocalVariable(name: "_length", scope: !3403, file: !2, line: 315, type: !13)
!3403 = distinct !DILexicalBlock(scope: !3392, file: !2, line: 315, column: 3)
!3404 = !DILocalVariable(name: "_cp", scope: !3403, file: !2, line: 315, type: !142)
!3405 = !DILocalVariable(name: "_tmp", scope: !3406, file: !2, line: 315, type: !165)
!3406 = distinct !DILexicalBlock(scope: !3407, file: !2, line: 315, column: 3)
!3407 = distinct !DILexicalBlock(scope: !3403, file: !2, line: 315, column: 3)
!3408 = !DILocalVariable(name: "_length", scope: !3409, file: !2, line: 327, type: !13)
!3409 = distinct !DILexicalBlock(scope: !3374, file: !2, line: 327, column: 2)
!3410 = !DILocalVariable(name: "_cp", scope: !3409, file: !2, line: 327, type: !142)
!3411 = !DILocalVariable(name: "_tmp", scope: !3412, file: !2, line: 327, type: !165)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !2, line: 327, column: 2)
!3413 = distinct !DILexicalBlock(scope: !3409, file: !2, line: 327, column: 2)
!3414 = !DILocalVariable(name: "_cp", scope: !3415, file: !2, line: 328, type: !142)
!3415 = distinct !DILexicalBlock(scope: !3374, file: !2, line: 328, column: 2)
!3416 = !DILocalVariable(name: "_val2", scope: !3415, file: !2, line: 328, type: !132)
!3417 = !DILocalVariable(name: "_tmp", scope: !3418, file: !2, line: 328, type: !165)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !2, line: 328, column: 2)
!3419 = distinct !DILexicalBlock(scope: !3415, file: !2, line: 328, column: 2)
!3420 = !DILocation(line: 288, column: 22, scope: !3374)
!3421 = !DILocation(line: 288, column: 39, scope: !3374)
!3422 = !DILocation(line: 289, column: 21, scope: !3374)
!3423 = !DILocation(line: 289, column: 39, scope: !3374)
!3424 = !DILocation(line: 291, column: 2, scope: !3374)
!3425 = !DILocation(line: 291, column: 15, scope: !3374)
!3426 = !DILocation(line: 292, column: 2, scope: !3374)
!3427 = !DILocation(line: 292, column: 15, scope: !3374)
!3428 = !DILocation(line: 293, column: 2, scope: !3374)
!3429 = !DILocation(line: 293, column: 9, scope: !3374)
!3430 = !DILocation(line: 295, column: 2, scope: !3374)
!3431 = !DILocation(line: 295, column: 2, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3374, file: !2, line: 295, column: 2)
!3433 = !DILocation(line: 295, column: 2, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3432, file: !2, line: 295, column: 2)
!3435 = !DILocation(line: 297, column: 15, scope: !3374)
!3436 = !DILocation(line: 297, column: 8, scope: !3374)
!3437 = !DILocation(line: 297, column: 6, scope: !3374)
!3438 = !DILocation(line: 300, column: 6, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3374, file: !2, line: 300, column: 6)
!3440 = !DILocation(line: 300, column: 42, scope: !3439)
!3441 = !DILocation(line: 300, column: 39, scope: !3439)
!3442 = !DILocation(line: 300, column: 6, scope: !3374)
!3443 = !DILocation(line: 301, column: 34, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3439, file: !2, line: 300, column: 47)
!3445 = !DILocation(line: 301, column: 3, scope: !3444)
!3446 = !DILocation(line: 303, column: 2, scope: !3374)
!3447 = !DILocation(line: 303, column: 2, scope: !3386)
!3448 = !DILocation(line: 303, column: 2, scope: !3390)
!3449 = !DILocation(line: 303, column: 2, scope: !3389)
!3450 = !DILocation(line: 305, column: 27, scope: !3393)
!3451 = !DILocation(line: 305, column: 6, scope: !3393)
!3452 = !DILocation(line: 305, column: 33, scope: !3393)
!3453 = !DILocation(line: 305, column: 6, scope: !3374)
!3454 = !DILocation(line: 306, column: 3, scope: !3392)
!3455 = !DILocation(line: 306, column: 15, scope: !3392)
!3456 = !DILocation(line: 308, column: 7, scope: !3397)
!3457 = !DILocation(line: 308, column: 12, scope: !3397)
!3458 = !DILocation(line: 308, column: 16, scope: !3397)
!3459 = !DILocation(line: 308, column: 21, scope: !3397)
!3460 = !DILocation(line: 308, column: 7, scope: !3392)
!3461 = !DILocation(line: 309, column: 4, scope: !3396)
!3462 = !DILocation(line: 309, column: 4, scope: !3395)
!3463 = !DILocation(line: 309, column: 4, scope: !3401)
!3464 = !DILocation(line: 309, column: 4, scope: !3400)
!3465 = !DILocation(line: 310, column: 3, scope: !3396)
!3466 = !DILocation(line: 312, column: 7, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3392, file: !2, line: 312, column: 7)
!3468 = !DILocation(line: 312, column: 49, scope: !3467)
!3469 = !DILocation(line: 312, column: 42, scope: !3467)
!3470 = !DILocation(line: 312, column: 40, scope: !3467)
!3471 = !DILocation(line: 312, column: 7, scope: !3392)
!3472 = !DILocation(line: 313, column: 35, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3467, file: !2, line: 312, column: 58)
!3474 = !DILocation(line: 313, column: 4, scope: !3473)
!3475 = !DILocation(line: 315, column: 3, scope: !3392)
!3476 = !DILocation(line: 315, column: 3, scope: !3403)
!3477 = !DILocation(line: 315, column: 3, scope: !3407)
!3478 = !DILocation(line: 315, column: 3, scope: !3406)
!3479 = !DILocation(line: 317, column: 36, scope: !3392)
!3480 = !DILocation(line: 317, column: 12, scope: !3392)
!3481 = !DILocation(line: 317, column: 10, scope: !3392)
!3482 = !DILocation(line: 318, column: 16, scope: !3392)
!3483 = !DILocation(line: 318, column: 3, scope: !3392)
!3484 = !DILocation(line: 319, column: 7, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3392, file: !2, line: 319, column: 7)
!3486 = !DILocation(line: 319, column: 40, scope: !3485)
!3487 = !DILocation(line: 319, column: 7, scope: !3392)
!3488 = !DILocation(line: 320, column: 35, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3485, file: !2, line: 319, column: 46)
!3490 = !DILocation(line: 320, column: 4, scope: !3489)
!3491 = !DILocation(line: 322, column: 2, scope: !3393)
!3492 = !DILocation(line: 322, column: 2, scope: !3392)
!3493 = !DILocation(line: 324, column: 6, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3374, file: !2, line: 324, column: 6)
!3495 = !DILocation(line: 324, column: 49, scope: !3494)
!3496 = !DILocation(line: 324, column: 42, scope: !3494)
!3497 = !DILocation(line: 324, column: 39, scope: !3494)
!3498 = !DILocation(line: 324, column: 6, scope: !3374)
!3499 = !DILocation(line: 325, column: 34, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3494, file: !2, line: 324, column: 58)
!3501 = !DILocation(line: 325, column: 3, scope: !3500)
!3502 = !DILocation(line: 327, column: 2, scope: !3374)
!3503 = !DILocation(line: 327, column: 2, scope: !3409)
!3504 = !DILocation(line: 327, column: 2, scope: !3413)
!3505 = !DILocation(line: 327, column: 2, scope: !3412)
!3506 = !DILocation(line: 328, column: 2, scope: !3374)
!3507 = !DILocation(line: 328, column: 2, scope: !3415)
!3508 = !DILocation(line: 328, column: 2, scope: !3419)
!3509 = !DILocation(line: 328, column: 2, scope: !3418)
!3510 = !DILocation(line: 329, column: 1, scope: !3374)
!3511 = !DISubprogram(name: "isc_file_getmodtime", scope: !3512, file: !3512, line: 34, type: !3513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3512 = !DIFile(filename: "lib/isc/include/isc/file.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "5593ae1824411974c480d3213e2cfe04")
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!407, !202, !3515}
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!3516 = !DISubprogram(name: "isc_time_seconds", scope: !1992, file: !1992, line: 244, type: !3517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!361, !3519}
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1990)
!3521 = !DISubprogram(name: "isc_stdtime_get", scope: !668, file: !668, line: 31, type: !3522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{null, !3524}
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!3525 = !DISubprogram(name: "strtotime", scope: !1349, file: !1349, line: 55, type: !3526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!667, !202, !3528, !3528, !3531}
!3528 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !3529, line: 27, baseType: !3530)
!3529 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!3530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !135, line: 44, baseType: !1558)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!3532 = distinct !DISubprogram(name: "load_db", scope: !2, file: !2, line: 249, type: !3533, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !3535)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{null, !202, !1506, !1644}
!3535 = !{!3536, !3537, !3538, !3539}
!3536 = !DILocalVariable(name: "filename", arg: 1, scope: !3532, file: !2, line: 249, type: !202)
!3537 = !DILocalVariable(name: "dbp", arg: 2, scope: !3532, file: !2, line: 249, type: !1506)
!3538 = !DILocalVariable(name: "nodep", arg: 3, scope: !3532, file: !2, line: 249, type: !1644)
!3539 = !DILocalVariable(name: "result", scope: !3532, file: !2, line: 250, type: !407)
!3540 = !DILocation(line: 249, column: 21, scope: !3532)
!3541 = !DILocation(line: 249, column: 42, scope: !3532)
!3542 = !DILocation(line: 249, column: 62, scope: !3532)
!3543 = !DILocation(line: 250, column: 2, scope: !3532)
!3544 = !DILocation(line: 250, column: 15, scope: !3532)
!3545 = !DILocation(line: 252, column: 25, scope: !3532)
!3546 = !DILocation(line: 252, column: 38, scope: !3532)
!3547 = !DILocation(line: 253, column: 11, scope: !3532)
!3548 = !DILocation(line: 253, column: 29, scope: !3532)
!3549 = !DILocation(line: 252, column: 11, scope: !3532)
!3550 = !DILocation(line: 252, column: 9, scope: !3532)
!3551 = !DILocation(line: 254, column: 15, scope: !3532)
!3552 = !DILocation(line: 254, column: 2, scope: !3532)
!3553 = !DILocation(line: 256, column: 24, scope: !3532)
!3554 = !DILocation(line: 256, column: 23, scope: !3532)
!3555 = !DILocation(line: 256, column: 29, scope: !3532)
!3556 = !DILocation(line: 256, column: 11, scope: !3532)
!3557 = !DILocation(line: 256, column: 9, scope: !3532)
!3558 = !DILocation(line: 258, column: 6, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3532, file: !2, line: 258, column: 6)
!3560 = !DILocation(line: 258, column: 13, scope: !3559)
!3561 = !DILocation(line: 258, column: 30, scope: !3559)
!3562 = !DILocation(line: 258, column: 33, scope: !3559)
!3563 = !DILocation(line: 258, column: 40, scope: !3559)
!3564 = !DILocation(line: 258, column: 6, scope: !3532)
!3565 = !DILocation(line: 259, column: 30, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3559, file: !2, line: 258, column: 62)
!3567 = !DILocation(line: 260, column: 27, scope: !3566)
!3568 = !DILocation(line: 260, column: 9, scope: !3566)
!3569 = !DILocation(line: 259, column: 3, scope: !3566)
!3570 = !DILocation(line: 263, column: 28, scope: !3532)
!3571 = !DILocation(line: 263, column: 27, scope: !3532)
!3572 = !DILocation(line: 263, column: 33, scope: !3532)
!3573 = !DILocation(line: 263, column: 46, scope: !3532)
!3574 = !DILocation(line: 263, column: 11, scope: !3532)
!3575 = !DILocation(line: 263, column: 9, scope: !3532)
!3576 = !DILocation(line: 264, column: 6, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3532, file: !2, line: 264, column: 6)
!3578 = !DILocation(line: 264, column: 13, scope: !3577)
!3579 = !DILocation(line: 264, column: 6, scope: !3532)
!3580 = !DILocation(line: 265, column: 37, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3577, file: !2, line: 264, column: 31)
!3582 = !DILocation(line: 265, column: 46, scope: !3581)
!3583 = !DILocation(line: 265, column: 3, scope: !3581)
!3584 = !DILocation(line: 267, column: 1, scope: !3532)
!3585 = distinct !DISubprogram(name: "findset", scope: !2, file: !2, line: 188, type: !3586, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !3588)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{null, !1490, !1645, !141, !388, !388}
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594}
!3589 = !DILocalVariable(name: "db", arg: 1, scope: !3585, file: !2, line: 188, type: !1490)
!3590 = !DILocalVariable(name: "node", arg: 2, scope: !3585, file: !2, line: 188, type: !1645)
!3591 = !DILocalVariable(name: "type", arg: 3, scope: !3585, file: !2, line: 188, type: !141)
!3592 = !DILocalVariable(name: "rdataset", arg: 4, scope: !3585, file: !2, line: 189, type: !388)
!3593 = !DILocalVariable(name: "sigrdataset", arg: 5, scope: !3585, file: !2, line: 189, type: !388)
!3594 = !DILocalVariable(name: "result", scope: !3585, file: !2, line: 191, type: !407)
!3595 = !DILocation(line: 188, column: 19, scope: !3585)
!3596 = !DILocation(line: 188, column: 37, scope: !3585)
!3597 = !DILocation(line: 188, column: 59, scope: !3585)
!3598 = !DILocation(line: 189, column: 18, scope: !3585)
!3599 = !DILocation(line: 189, column: 44, scope: !3585)
!3600 = !DILocation(line: 191, column: 2, scope: !3585)
!3601 = !DILocation(line: 191, column: 15, scope: !3585)
!3602 = !DILocation(line: 193, column: 20, scope: !3585)
!3603 = !DILocation(line: 193, column: 2, scope: !3585)
!3604 = !DILocation(line: 194, column: 6, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3585, file: !2, line: 194, column: 6)
!3606 = !DILocation(line: 194, column: 18, scope: !3605)
!3607 = !DILocation(line: 194, column: 6, scope: !3585)
!3608 = !DILocation(line: 195, column: 21, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3605, file: !2, line: 194, column: 27)
!3610 = !DILocation(line: 195, column: 3, scope: !3609)
!3611 = !DILocation(line: 196, column: 2, scope: !3609)
!3612 = !DILocation(line: 197, column: 31, scope: !3585)
!3613 = !DILocation(line: 197, column: 35, scope: !3585)
!3614 = !DILocation(line: 197, column: 47, scope: !3585)
!3615 = !DILocation(line: 198, column: 10, scope: !3585)
!3616 = !DILocation(line: 198, column: 20, scope: !3585)
!3617 = !DILocation(line: 197, column: 11, scope: !3585)
!3618 = !DILocation(line: 197, column: 9, scope: !3585)
!3619 = !DILocation(line: 199, column: 6, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3585, file: !2, line: 199, column: 6)
!3621 = !DILocation(line: 199, column: 13, scope: !3620)
!3622 = !DILocation(line: 199, column: 6, scope: !3585)
!3623 = !DILocation(line: 200, column: 16, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3620, file: !2, line: 199, column: 32)
!3625 = !DILocation(line: 200, column: 3, scope: !3624)
!3626 = !DILocation(line: 201, column: 2, scope: !3624)
!3627 = !DILocation(line: 202, column: 1, scope: !3585)
!3628 = distinct !DISubprogram(name: "free_db", scope: !2, file: !2, line: 270, type: !3629, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !1506, !1644}
!3631 = !{!3632, !3633}
!3632 = !DILocalVariable(name: "dbp", arg: 1, scope: !3628, file: !2, line: 270, type: !1506)
!3633 = !DILocalVariable(name: "nodep", arg: 2, scope: !3628, file: !2, line: 270, type: !1644)
!3634 = !DILocation(line: 270, column: 20, scope: !3628)
!3635 = !DILocation(line: 270, column: 40, scope: !3628)
!3636 = !DILocation(line: 271, column: 21, scope: !3628)
!3637 = !DILocation(line: 271, column: 20, scope: !3628)
!3638 = !DILocation(line: 271, column: 26, scope: !3628)
!3639 = !DILocation(line: 271, column: 2, scope: !3628)
!3640 = !DILocation(line: 272, column: 16, scope: !3628)
!3641 = !DILocation(line: 272, column: 2, scope: !3628)
!3642 = !DILocation(line: 273, column: 1, scope: !3628)
!3643 = !DISubprogram(name: "isc_buffer_reserve", scope: !169, file: !169, line: 216, type: !3644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!407, !3646, !13}
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!3647 = !DISubprogram(name: "isc_assertion_failed", scope: !116, file: !116, line: 37, type: !3648, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{null, !202, !161, !3650, !202}
!3650 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_assertiontype_t", file: !116, line: 30, baseType: !115)
!3651 = !DISubprogram(name: "isc_file_isdirectory", scope: !3512, file: !3512, line: 218, type: !3652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!407, !202}
!3654 = !DISubprogram(name: "dns_name_tofilenametext", scope: !369, file: !369, line: 902, type: !3655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!407, !425, !226, !165}
!3657 = !DISubprogram(name: "check_result", scope: !1349, file: !1349, line: 34, type: !3658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{null, !407, !202}
!3660 = !DISubprogram(name: "dns_db_create", scope: !1493, file: !1493, line: 295, type: !3661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!407, !183, !202, !425, !3663, !137, !13, !1012, !1506}
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbtype_t", file: !18, line: 188, baseType: !122)
!3664 = !DISubprogram(name: "dns_db_load", scope: !1493, file: !1493, line: 525, type: !3665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!407, !1490, !202, !1622, !13}
!3667 = !DISubprogram(name: "dns_db_findnode", scope: !1493, file: !1493, line: 694, type: !1642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3668 = !DISubprogram(name: "dns_rdataset_init", scope: !391, file: !391, line: 210, type: !401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3669 = !DISubprogram(name: "dns_db_findrdataset", scope: !1493, file: !1493, line: 1113, type: !1716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3670 = !DISubprogram(name: "dns_db_detachnode", scope: !1493, file: !1493, line: 1006, type: !1661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3671 = !DISubprogram(name: "dns_db_detach", scope: !1493, file: !1493, line: 350, type: !1509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3672 = !DISubprogram(name: "dns_rdataset_count", scope: !391, file: !391, line: 295, type: !419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3673 = !DISubprogram(name: "isc__mem_get", scope: !186, file: !186, line: 630, type: !197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3674 = !DISubprogram(name: "dns_rdataset_first", scope: !391, file: !391, line: 307, type: !405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3675 = !DISubprogram(name: "dns_rdata_init", scope: !148, file: !148, line: 188, type: !3676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{null, !159}
!3678 = !DISubprogram(name: "dns_rdataset_current", scope: !391, file: !391, line: 333, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3679 = !DISubprogram(name: "dns_rdata_tostruct", scope: !148, file: !148, line: 506, type: !3680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!407, !144, !128, !183}
!3682 = !DISubprogram(name: "dns_rdata_toregion", scope: !148, file: !148, line: 272, type: !3683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !144, !3685}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!3686 = !DISubprogram(name: "dst_region_computeid", scope: !616, file: !616, line: 753, type: !3687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!138, !3689}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!3691 = distinct !DISubprogram(name: "match_key_dsset", scope: !2, file: !2, line: 473, type: !3692, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!226, !697, !388, !2092}
!3694 = !{!3695, !3696, !3697, !3698, !3699, !3701, !3705, !3706, !3707}
!3695 = !DILocalVariable(name: "ki", arg: 1, scope: !3691, file: !2, line: 473, type: !697)
!3696 = !DILocalVariable(name: "dsset", arg: 2, scope: !3691, file: !2, line: 473, type: !388)
!3697 = !DILocalVariable(name: "strictness", arg: 3, scope: !3691, file: !2, line: 473, type: !2092)
!3698 = !DILocalVariable(name: "result", scope: !3691, file: !2, line: 475, type: !407)
!3699 = !DILocalVariable(name: "dsbuf", scope: !3691, file: !2, line: 476, type: !3700)
!3700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 416, elements: !787)
!3701 = !DILocalVariable(name: "ds", scope: !3702, file: !2, line: 482, type: !2905)
!3702 = distinct !DILexicalBlock(scope: !3703, file: !2, line: 481, column: 2)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !2, line: 478, column: 2)
!3704 = distinct !DILexicalBlock(scope: !3691, file: !2, line: 478, column: 2)
!3705 = !DILocalVariable(name: "dsrdata", scope: !3702, file: !2, line: 483, type: !146)
!3706 = !DILocalVariable(name: "newdsrdata", scope: !3702, file: !2, line: 484, type: !146)
!3707 = !DILocalVariable(name: "c", scope: !3702, file: !2, line: 485, type: !226)
!3708 = !DILocation(line: 473, column: 28, scope: !3691)
!3709 = !DILocation(line: 473, column: 48, scope: !3691)
!3710 = !DILocation(line: 473, column: 68, scope: !3691)
!3711 = !DILocation(line: 475, column: 2, scope: !3691)
!3712 = !DILocation(line: 475, column: 15, scope: !3691)
!3713 = !DILocation(line: 476, column: 2, scope: !3691)
!3714 = !DILocation(line: 476, column: 16, scope: !3691)
!3715 = !DILocation(line: 478, column: 35, scope: !3704)
!3716 = !DILocation(line: 478, column: 16, scope: !3704)
!3717 = !DILocation(line: 478, column: 14, scope: !3704)
!3718 = !DILocation(line: 478, column: 7, scope: !3704)
!3719 = !DILocation(line: 479, column: 7, scope: !3703)
!3720 = !DILocation(line: 479, column: 14, scope: !3703)
!3721 = !DILocation(line: 478, column: 2, scope: !3704)
!3722 = !DILocation(line: 482, column: 3, scope: !3702)
!3723 = !DILocation(line: 482, column: 18, scope: !3702)
!3724 = !DILocation(line: 483, column: 3, scope: !3702)
!3725 = !DILocation(line: 483, column: 15, scope: !3702)
!3726 = !DILocation(line: 484, column: 3, scope: !3702)
!3727 = !DILocation(line: 484, column: 15, scope: !3702)
!3728 = !DILocation(line: 485, column: 3, scope: !3702)
!3729 = !DILocation(line: 485, column: 8, scope: !3702)
!3730 = !DILocation(line: 487, column: 24, scope: !3702)
!3731 = !DILocation(line: 487, column: 3, scope: !3702)
!3732 = !DILocation(line: 488, column: 12, scope: !3702)
!3733 = !DILocation(line: 488, column: 10, scope: !3702)
!3734 = !DILocation(line: 489, column: 16, scope: !3702)
!3735 = !DILocation(line: 489, column: 3, scope: !3702)
!3736 = !DILocation(line: 491, column: 7, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3702, file: !2, line: 491, column: 7)
!3738 = !DILocation(line: 491, column: 11, scope: !3737)
!3739 = !DILocation(line: 491, column: 21, scope: !3737)
!3740 = !DILocation(line: 491, column: 18, scope: !3737)
!3741 = !DILocation(line: 491, column: 15, scope: !3737)
!3742 = !DILocation(line: 491, column: 29, scope: !3737)
!3743 = !DILocation(line: 491, column: 32, scope: !3737)
!3744 = !DILocation(line: 491, column: 36, scope: !3737)
!3745 = !DILocation(line: 491, column: 47, scope: !3737)
!3746 = !DILocation(line: 491, column: 44, scope: !3737)
!3747 = !DILocation(line: 491, column: 41, scope: !3737)
!3748 = !DILocation(line: 491, column: 7, scope: !3702)
!3749 = !DILocation(line: 492, column: 4, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3737, file: !2, line: 491, column: 58)
!3751 = !DILocation(line: 495, column: 30, scope: !3702)
!3752 = !DILocation(line: 495, column: 37, scope: !3702)
!3753 = !DILocation(line: 495, column: 41, scope: !3702)
!3754 = !DILocation(line: 495, column: 51, scope: !3702)
!3755 = !DILocation(line: 496, column: 9, scope: !3702)
!3756 = !DILocation(line: 495, column: 12, scope: !3702)
!3757 = !DILocation(line: 495, column: 10, scope: !3702)
!3758 = !DILocation(line: 497, column: 7, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3702, file: !2, line: 497, column: 7)
!3760 = !DILocation(line: 497, column: 14, scope: !3759)
!3761 = !DILocation(line: 497, column: 7, scope: !3702)
!3762 = !DILocation(line: 500, column: 9, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3759, file: !2, line: 497, column: 32)
!3764 = !DILocation(line: 500, column: 6, scope: !3763)
!3765 = !DILocation(line: 500, column: 21, scope: !3763)
!3766 = !DILocation(line: 500, column: 18, scope: !3763)
!3767 = !DILocation(line: 500, column: 35, scope: !3763)
!3768 = !DILocation(line: 500, column: 32, scope: !3763)
!3769 = !DILocation(line: 501, column: 24, scope: !3763)
!3770 = !DILocation(line: 501, column: 6, scope: !3763)
!3771 = !DILocation(line: 498, column: 4, scope: !3763)
!3772 = !DILocation(line: 502, column: 4, scope: !3763)
!3773 = !DILocation(line: 505, column: 15, scope: !3702)
!3774 = !DILocation(line: 505, column: 7, scope: !3702)
!3775 = !DILocation(line: 505, column: 20, scope: !3702)
!3776 = !DILocation(line: 505, column: 5, scope: !3702)
!3777 = !DILocation(line: 506, column: 11, scope: !3702)
!3778 = !DILocation(line: 506, column: 16, scope: !3702)
!3779 = !DILocation(line: 507, column: 7, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3702, file: !2, line: 507, column: 7)
!3781 = !DILocation(line: 507, column: 48, scope: !3780)
!3782 = !DILocation(line: 507, column: 7, scope: !3702)
!3783 = !DILocation(line: 509, column: 6, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3780, file: !2, line: 507, column: 54)
!3785 = !DILocation(line: 510, column: 9, scope: !3784)
!3786 = !DILocation(line: 510, column: 6, scope: !3784)
!3787 = !DILocation(line: 510, column: 21, scope: !3784)
!3788 = !DILocation(line: 510, column: 18, scope: !3784)
!3789 = !DILocation(line: 510, column: 35, scope: !3784)
!3790 = !DILocation(line: 510, column: 32, scope: !3784)
!3791 = !DILocation(line: 508, column: 4, scope: !3784)
!3792 = !DILocation(line: 511, column: 4, scope: !3784)
!3793 = !DILocation(line: 512, column: 14, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3780, file: !2, line: 512, column: 14)
!3795 = !DILocation(line: 512, column: 25, scope: !3794)
!3796 = !DILocation(line: 512, column: 14, scope: !3780)
!3797 = !DILocation(line: 515, column: 6, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3794, file: !2, line: 512, column: 35)
!3799 = !DILocation(line: 516, column: 9, scope: !3798)
!3800 = !DILocation(line: 516, column: 6, scope: !3798)
!3801 = !DILocation(line: 516, column: 21, scope: !3798)
!3802 = !DILocation(line: 516, column: 18, scope: !3798)
!3803 = !DILocation(line: 516, column: 35, scope: !3798)
!3804 = !DILocation(line: 516, column: 32, scope: !3798)
!3805 = !DILocation(line: 513, column: 4, scope: !3798)
!3806 = !DILocation(line: 517, column: 4, scope: !3798)
!3807 = !DILocation(line: 519, column: 2, scope: !3703)
!3808 = !DILocation(line: 519, column: 2, scope: !3702)
!3809 = !DILocation(line: 480, column: 34, scope: !3703)
!3810 = !DILocation(line: 480, column: 16, scope: !3703)
!3811 = !DILocation(line: 480, column: 14, scope: !3703)
!3812 = !DILocation(line: 478, column: 2, scope: !3703)
!3813 = distinct !{!3813, !3721, !3814, !1126}
!3814 = !DILocation(line: 519, column: 2, scope: !3704)
!3815 = !DILocation(line: 522, column: 4, scope: !3691)
!3816 = !DILocation(line: 522, column: 11, scope: !3691)
!3817 = !DILocation(line: 522, column: 16, scope: !3691)
!3818 = !DILocation(line: 524, column: 4, scope: !3691)
!3819 = !DILocation(line: 524, column: 8, scope: !3691)
!3820 = !DILocation(line: 524, column: 14, scope: !3691)
!3821 = !DILocation(line: 524, column: 19, scope: !3691)
!3822 = !DILocation(line: 526, column: 4, scope: !3691)
!3823 = !DILocation(line: 526, column: 8, scope: !3691)
!3824 = !DILocation(line: 526, column: 13, scope: !3691)
!3825 = !DILocation(line: 526, column: 17, scope: !3691)
!3826 = !DILocation(line: 521, column: 2, scope: !3691)
!3827 = !DILocation(line: 528, column: 2, scope: !3691)
!3828 = !DILocation(line: 529, column: 1, scope: !3691)
!3829 = !DISubprogram(name: "dns_dnssec_keyfromrdata", scope: !3830, file: !3830, line: 72, type: !3831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3830 = !DIFile(filename: "lib/dns/include/dns/dnssec.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "68f00f23ffb71bd2a4aa79e5b7818c12")
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!407, !425, !144, !183, !3833}
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!3834 = !DISubprogram(name: "dns_result_totext", scope: !1353, file: !1353, line: 192, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3835 = !DISubprogram(name: "dns_rdataset_next", scope: !391, file: !391, line: 320, type: !405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3836 = !DISubprogram(name: "dns_ds_buildrdata", scope: !3837, file: !3837, line: 33, type: !3838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3837 = !DIFile(filename: "lib/dns/include/dns/ds.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "ff2ca88ac296a181db3cc909ed098f61")
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!407, !382, !159, !131, !142, !159}
!3840 = !DISubprogram(name: "dns_rdata_compare", scope: !148, file: !148, line: 220, type: !3841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!161, !144, !144}
!3843 = !DISubprogram(name: "isc__mem_put", scope: !186, file: !186, line: 634, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3844 = !DISubprogram(name: "isc_serial_lt", scope: !3845, file: !3845, line: 34, type: !3846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3845 = !DIFile(filename: "lib/isc/include/isc/serial.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "5f209e8eb0af20922b7f0cc3e968214b")
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!226, !361, !361}
!3848 = !DISubprogram(name: "dns_name_equal", scope: !369, file: !369, line: 452, type: !3849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!226, !425, !425}
!3851 = !DISubprogram(name: "dns_dnssec_verify", scope: !3830, file: !3830, line: 122, type: !3852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!407, !425, !388, !622, !226, !13, !183, !159, !382}
!3854 = !DISubprogram(name: "dst_key_free", scope: !616, file: !616, line: 648, type: !3855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{null, !3833}
!3857 = !DISubprogram(name: "dns_time64_totext", scope: !3858, file: !3858, line: 50, type: !3859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3858 = !DIFile(filename: "lib/dns/include/dns/time.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "50e3529a7a9a1c0684754778d2b56363")
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!407, !3528, !165}
!3861 = distinct !DISubprogram(name: "formatset", scope: !2, file: !2, line: 368, type: !3862, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!165, !388}
!3864 = !{!3865, !3866, !3867, !3868, !3873, !3874, !3876, !3877}
!3865 = !DILocalVariable(name: "rdataset", arg: 1, scope: !3861, file: !2, line: 368, type: !388)
!3866 = !DILocalVariable(name: "result", scope: !3861, file: !2, line: 369, type: !407)
!3867 = !DILocalVariable(name: "buf", scope: !3861, file: !2, line: 370, type: !165)
!3868 = !DILocalVariable(name: "style", scope: !3861, file: !2, line: 371, type: !3869)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_master_style_t", file: !3871, line: 32, baseType: !3872)
!3871 = !DIFile(filename: "lib/dns/include/dns/masterdump.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "ca71d9f8f00020df7306dd98e6970576")
!3872 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_master_style", file: !3871, line: 32, flags: DIFlagFwdDecl)
!3873 = !DILocalVariable(name: "styleflags", scope: !3861, file: !2, line: 372, type: !13)
!3874 = !DILocalVariable(name: "_cp", scope: !3875, file: !2, line: 396, type: !142)
!3875 = distinct !DILexicalBlock(scope: !3861, file: !2, line: 396, column: 2)
!3876 = !DILocalVariable(name: "_val2", scope: !3875, file: !2, line: 396, type: !132)
!3877 = !DILocalVariable(name: "_tmp", scope: !3878, file: !2, line: 396, type: !165)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !2, line: 396, column: 2)
!3879 = distinct !DILexicalBlock(scope: !3875, file: !2, line: 396, column: 2)
!3880 = !DILocation(line: 368, column: 27, scope: !3861)
!3881 = !DILocation(line: 369, column: 2, scope: !3861)
!3882 = !DILocation(line: 369, column: 15, scope: !3861)
!3883 = !DILocation(line: 370, column: 2, scope: !3861)
!3884 = !DILocation(line: 370, column: 16, scope: !3861)
!3885 = !DILocation(line: 371, column: 2, scope: !3861)
!3886 = !DILocation(line: 371, column: 22, scope: !3861)
!3887 = !DILocation(line: 372, column: 2, scope: !3861)
!3888 = !DILocation(line: 372, column: 15, scope: !3861)
!3889 = !DILocation(line: 374, column: 16, scope: !3861)
!3890 = !DILocation(line: 374, column: 26, scope: !3861)
!3891 = !DILocation(line: 374, column: 30, scope: !3861)
!3892 = !DILocation(line: 374, column: 15, scope: !3861)
!3893 = !DILocation(line: 374, column: 13, scope: !3861)
!3894 = !DILocation(line: 381, column: 42, scope: !3861)
!3895 = !DILocation(line: 383, column: 6, scope: !3861)
!3896 = !DILocation(line: 381, column: 11, scope: !3861)
!3897 = !DILocation(line: 381, column: 9, scope: !3861)
!3898 = !DILocation(line: 384, column: 15, scope: !3861)
!3899 = !DILocation(line: 384, column: 2, scope: !3861)
!3900 = !DILocation(line: 386, column: 31, scope: !3861)
!3901 = !DILocation(line: 386, column: 11, scope: !3861)
!3902 = !DILocation(line: 386, column: 9, scope: !3861)
!3903 = !DILocation(line: 387, column: 15, scope: !3861)
!3904 = !DILocation(line: 387, column: 2, scope: !3861)
!3905 = !DILocation(line: 388, column: 37, scope: !3861)
!3906 = !DILocation(line: 388, column: 43, scope: !3861)
!3907 = !DILocation(line: 388, column: 53, scope: !3861)
!3908 = !DILocation(line: 388, column: 60, scope: !3861)
!3909 = !DILocation(line: 388, column: 11, scope: !3861)
!3910 = !DILocation(line: 388, column: 9, scope: !3861)
!3911 = !DILocation(line: 390, column: 7, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3861, file: !2, line: 390, column: 6)
!3913 = !DILocation(line: 390, column: 14, scope: !3912)
!3914 = !DILocation(line: 390, column: 32, scope: !3912)
!3915 = !DILocation(line: 390, column: 35, scope: !3912)
!3916 = !DILocation(line: 390, column: 67, scope: !3912)
!3917 = !DILocation(line: 390, column: 6, scope: !3861)
!3918 = !DILocation(line: 391, column: 10, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3912, file: !2, line: 390, column: 72)
!3920 = !DILocation(line: 392, column: 2, scope: !3919)
!3921 = !DILocation(line: 394, column: 15, scope: !3861)
!3922 = !DILocation(line: 394, column: 2, scope: !3861)
!3923 = !DILocation(line: 396, column: 2, scope: !3861)
!3924 = !DILocation(line: 396, column: 2, scope: !3875)
!3925 = !DILocation(line: 396, column: 2, scope: !3879)
!3926 = !DILocation(line: 396, column: 2, scope: !3878)
!3927 = !DILocation(line: 398, column: 34, scope: !3861)
!3928 = !DILocation(line: 398, column: 2, scope: !3861)
!3929 = !DILocation(line: 400, column: 10, scope: !3861)
!3930 = !DILocation(line: 401, column: 1, scope: !3861)
!3931 = !DILocation(line: 400, column: 2, scope: !3861)
!3932 = !DISubprogram(name: "printf", scope: !3359, file: !3359, line: 356, type: !3933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!161, !1425, null}
!3935 = !DISubprogram(name: "isc_buffer_free", scope: !169, file: !169, line: 237, type: !3936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{null, !3646}
!3938 = !DISubprogram(name: "fflush", scope: !3359, file: !3359, line: 230, type: !3939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!161, !1531}
!3941 = !DISubprogram(name: "strerror", scope: !3368, file: !3368, line: 419, type: !3942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!143, !161}
!3944 = !DISubprogram(name: "__errno_location", scope: !3945, file: !3945, line: 37, type: !3946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3945 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!3948}
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!3949 = !DISubprogram(name: "isc_file_openunique", scope: !3512, file: !3512, line: 99, type: !3950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!407, !143, !3952}
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!3953 = !DISubprogram(name: "fclose", scope: !3359, file: !3359, line: 178, type: !3939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3954 = !DISubprogram(name: "isc_file_remove", scope: !3512, file: !3512, line: 168, type: !3652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3955 = !DISubprogram(name: "isc_time_set", scope: !1992, file: !1992, line: 94, type: !3956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{null, !3515, !13, !13}
!3958 = !DISubprogram(name: "isc_file_settime", scope: !3512, file: !3512, line: 28, type: !3513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3959 = !DISubprogram(name: "isc_file_rename", scope: !3512, file: !3512, line: 174, type: !3960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!407, !202, !202}
!3962 = !DISubprogram(name: "dns_master_stylecreate", scope: !3871, file: !3871, line: 379, type: !3963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!407, !3965, !3966, !13, !13, !13, !13, !13, !13, !13, !183}
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_masterstyle_flags_t", file: !18, line: 102, baseType: !1952)
!3967 = !DISubprogram(name: "isc_buffer_allocate", scope: !169, file: !169, line: 196, type: !3968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!407, !183, !3646, !13}
!3970 = !DISubprogram(name: "dns_master_rdatasettotext", scope: !3871, file: !3871, line: 341, type: !3971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!407, !425, !388, !3973, !165}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3870)
!3975 = !DISubprogram(name: "dns_master_styledestroy", scope: !3871, file: !3871, line: 387, type: !3976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{null, !3965, !183}
!3978 = !DISubprogram(name: "dns_rdatalist_init", scope: !585, file: !585, line: 65, type: !3979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{null, !582}
!3981 = !DISubprogram(name: "dns_rdatalist_tordataset", scope: !585, file: !585, line: 75, type: !3982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!407, !582, !388}
!3984 = distinct !DISubprogram(name: "freelist", scope: !2, file: !2, line: 212, type: !401, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !3985)
!3985 = !{!3986, !3987, !3988}
!3986 = !DILocalVariable(name: "rdataset", arg: 1, scope: !3984, file: !2, line: 212, type: !388)
!3987 = !DILocalVariable(name: "rdlist", scope: !3984, file: !2, line: 213, type: !582)
!3988 = !DILocalVariable(name: "rdata", scope: !3984, file: !2, line: 214, type: !159)
!3989 = !DILocation(line: 212, column: 26, scope: !3984)
!3990 = !DILocation(line: 213, column: 2, scope: !3984)
!3991 = !DILocation(line: 213, column: 19, scope: !3984)
!3992 = !DILocation(line: 214, column: 2, scope: !3984)
!3993 = !DILocation(line: 214, column: 15, scope: !3984)
!3994 = !DILocation(line: 216, column: 33, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3984, file: !2, line: 216, column: 6)
!3996 = !DILocation(line: 216, column: 7, scope: !3995)
!3997 = !DILocation(line: 216, column: 6, scope: !3984)
!3998 = !DILocation(line: 217, column: 3, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3995, file: !2, line: 216, column: 44)
!4000 = !DILocation(line: 220, column: 29, scope: !3984)
!4001 = !DILocation(line: 220, column: 2, scope: !3984)
!4002 = !DILocation(line: 222, column: 15, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3984, file: !2, line: 222, column: 2)
!4004 = !DILocation(line: 222, column: 13, scope: !4003)
!4005 = !DILocation(line: 222, column: 7, scope: !4003)
!4006 = !DILocation(line: 223, column: 7, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4003, file: !2, line: 222, column: 2)
!4008 = !DILocation(line: 223, column: 13, scope: !4007)
!4009 = !DILocation(line: 222, column: 2, scope: !4003)
!4010 = !DILocation(line: 226, column: 3, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4007, file: !2, line: 225, column: 2)
!4012 = !DILocation(line: 226, column: 3, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4011, file: !2, line: 226, column: 3)
!4014 = !DILocation(line: 226, column: 3, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !2, line: 226, column: 3)
!4016 = distinct !DILexicalBlock(scope: !4013, file: !2, line: 226, column: 3)
!4017 = !DILocation(line: 226, column: 3, scope: !4016)
!4018 = !DILocation(line: 226, column: 3, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4015, file: !2, line: 226, column: 3)
!4020 = !DILocation(line: 226, column: 3, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4016, file: !2, line: 226, column: 3)
!4022 = !DILocation(line: 226, column: 3, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4021, file: !2, line: 226, column: 3)
!4024 = !DILocation(line: 227, column: 3, scope: !4011)
!4025 = !DILocation(line: 227, column: 3, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4011, file: !2, line: 227, column: 3)
!4027 = !DILocation(line: 228, column: 2, scope: !4011)
!4028 = !DILocation(line: 224, column: 15, scope: !4007)
!4029 = !DILocation(line: 224, column: 13, scope: !4007)
!4030 = !DILocation(line: 222, column: 2, scope: !4007)
!4031 = distinct !{!4031, !4009, !4032, !1126}
!4032 = !DILocation(line: 228, column: 2, scope: !4003)
!4033 = !DILocation(line: 229, column: 2, scope: !3984)
!4034 = !DILocation(line: 229, column: 2, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !3984, file: !2, line: 229, column: 2)
!4036 = !DILocation(line: 230, column: 28, scope: !3984)
!4037 = !DILocation(line: 230, column: 2, scope: !3984)
!4038 = !DILocation(line: 231, column: 1, scope: !3984)
!4039 = !DISubprogram(name: "dns_rdatalist_fromrdataset", scope: !585, file: !585, line: 101, type: !4040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!407, !388, !4042}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!4043 = !DISubprogram(name: "dns_rdataset_disassociate", scope: !391, file: !391, line: 235, type: !401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4044 = distinct !DISubprogram(name: "rdata_get", scope: !2, file: !2, line: 759, type: !4045, scopeLine: 759, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!159}
!4047 = !{!4048}
!4048 = !DILocalVariable(name: "rdata", scope: !4044, file: !2, line: 760, type: !159)
!4049 = !DILocation(line: 760, column: 2, scope: !4044)
!4050 = !DILocation(line: 760, column: 15, scope: !4044)
!4051 = !DILocation(line: 762, column: 10, scope: !4044)
!4052 = !DILocation(line: 762, column: 8, scope: !4044)
!4053 = !DILocation(line: 763, column: 6, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4044, file: !2, line: 763, column: 6)
!4055 = !DILocation(line: 763, column: 12, scope: !4054)
!4056 = !DILocation(line: 763, column: 6, scope: !4044)
!4057 = !DILocation(line: 765, column: 9, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4054, file: !2, line: 763, column: 21)
!4059 = !DILocation(line: 764, column: 3, scope: !4058)
!4060 = !DILocation(line: 767, column: 17, scope: !4044)
!4061 = !DILocation(line: 767, column: 2, scope: !4044)
!4062 = !DILocation(line: 769, column: 10, scope: !4044)
!4063 = !DILocation(line: 770, column: 1, scope: !4044)
!4064 = !DILocation(line: 769, column: 2, scope: !4044)
!4065 = distinct !DISubprogram(name: "rdata_put", scope: !2, file: !2, line: 773, type: !4066, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !4068)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!407, !407, !582, !159}
!4068 = !{!4069, !4070, !4071}
!4069 = !DILocalVariable(name: "result", arg: 1, scope: !4065, file: !2, line: 773, type: !407)
!4070 = !DILocalVariable(name: "rdlist", arg: 2, scope: !4065, file: !2, line: 773, type: !582)
!4071 = !DILocalVariable(name: "rdata", arg: 3, scope: !4065, file: !2, line: 773, type: !159)
!4072 = !DILocation(line: 773, column: 24, scope: !4065)
!4073 = !DILocation(line: 773, column: 49, scope: !4065)
!4074 = !DILocation(line: 773, column: 70, scope: !4065)
!4075 = !DILocation(line: 774, column: 6, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4065, file: !2, line: 774, column: 6)
!4077 = !DILocation(line: 774, column: 13, scope: !4076)
!4078 = !DILocation(line: 774, column: 6, scope: !4065)
!4079 = !DILocation(line: 775, column: 3, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4076, file: !2, line: 774, column: 31)
!4081 = !DILocation(line: 775, column: 3, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4080, file: !2, line: 775, column: 3)
!4083 = !DILocation(line: 775, column: 3, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4085, file: !2, line: 775, column: 3)
!4085 = distinct !DILexicalBlock(scope: !4082, file: !2, line: 775, column: 3)
!4086 = !DILocation(line: 775, column: 3, scope: !4085)
!4087 = !DILocation(line: 776, column: 2, scope: !4080)
!4088 = !DILocation(line: 777, column: 3, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4076, file: !2, line: 776, column: 9)
!4090 = !DILocation(line: 777, column: 3, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4089, file: !2, line: 777, column: 3)
!4092 = !DILocation(line: 780, column: 10, scope: !4065)
!4093 = !DILocation(line: 780, column: 2, scope: !4065)
!4094 = !DISubprogram(name: "dns_rdata_fromstruct", scope: !148, file: !148, line: 474, type: !4095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!407, !159, !137, !141, !128, !165}
!4097 = distinct !DISubprogram(name: "rdata_cmp", scope: !2, file: !2, line: 924, type: !3335, scopeLine: 924, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !4098)
!4098 = !{!4099, !4100}
!4099 = !DILocalVariable(name: "rdata1", arg: 1, scope: !4097, file: !2, line: 924, type: !633)
!4100 = !DILocalVariable(name: "rdata2", arg: 2, scope: !4097, file: !2, line: 924, type: !633)
!4101 = !DILocation(line: 924, column: 23, scope: !4097)
!4102 = !DILocation(line: 924, column: 43, scope: !4097)
!4103 = !DILocation(line: 925, column: 49, scope: !4097)
!4104 = !DILocation(line: 926, column: 28, scope: !4097)
!4105 = !DILocation(line: 925, column: 10, scope: !4097)
!4106 = !DILocation(line: 925, column: 2, scope: !4097)
!4107 = distinct !DISubprogram(name: "update_diff", scope: !2, file: !2, line: 1038, type: !4108, scopeLine: 1040, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !4110)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{null, !202, !361, !388, !388}
!4110 = !{!4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120}
!4111 = !DILocalVariable(name: "cmd", arg: 1, scope: !4107, file: !2, line: 1038, type: !202)
!4112 = !DILocalVariable(name: "ttl", arg: 2, scope: !4107, file: !2, line: 1038, type: !361)
!4113 = !DILocalVariable(name: "addset", arg: 3, scope: !4107, file: !2, line: 1039, type: !388)
!4114 = !DILocalVariable(name: "delset", arg: 4, scope: !4107, file: !2, line: 1039, type: !388)
!4115 = !DILocalVariable(name: "result", scope: !4107, file: !2, line: 1041, type: !407)
!4116 = !DILocalVariable(name: "db", scope: !4107, file: !2, line: 1042, type: !1490)
!4117 = !DILocalVariable(name: "node", scope: !4107, file: !2, line: 1043, type: !1645)
!4118 = !DILocalVariable(name: "ver", scope: !4107, file: !2, line: 1044, type: !454)
!4119 = !DILocalVariable(name: "diffset", scope: !4107, file: !2, line: 1045, type: !389)
!4120 = !DILocalVariable(name: "save", scope: !4107, file: !2, line: 1046, type: !361)
!4121 = !DILocation(line: 1038, column: 25, scope: !4107)
!4122 = !DILocation(line: 1038, column: 39, scope: !4107)
!4123 = !DILocation(line: 1039, column: 22, scope: !4107)
!4124 = !DILocation(line: 1039, column: 46, scope: !4107)
!4125 = !DILocation(line: 1041, column: 2, scope: !4107)
!4126 = !DILocation(line: 1041, column: 15, scope: !4107)
!4127 = !DILocation(line: 1042, column: 2, scope: !4107)
!4128 = !DILocation(line: 1042, column: 12, scope: !4107)
!4129 = !DILocation(line: 1043, column: 2, scope: !4107)
!4130 = !DILocation(line: 1043, column: 16, scope: !4107)
!4131 = !DILocation(line: 1044, column: 2, scope: !4107)
!4132 = !DILocation(line: 1044, column: 19, scope: !4107)
!4133 = !DILocation(line: 1045, column: 2, scope: !4107)
!4134 = !DILocation(line: 1045, column: 17, scope: !4107)
!4135 = !DILocation(line: 1046, column: 2, scope: !4107)
!4136 = !DILocation(line: 1046, column: 11, scope: !4107)
!4137 = !DILocation(line: 1048, column: 5, scope: !4107)
!4138 = !DILocation(line: 1049, column: 25, scope: !4107)
!4139 = !DILocation(line: 1049, column: 38, scope: !4107)
!4140 = !DILocation(line: 1050, column: 11, scope: !4107)
!4141 = !DILocation(line: 1049, column: 11, scope: !4107)
!4142 = !DILocation(line: 1049, column: 9, scope: !4107)
!4143 = !DILocation(line: 1051, column: 15, scope: !4107)
!4144 = !DILocation(line: 1051, column: 2, scope: !4107)
!4145 = !DILocation(line: 1053, column: 6, scope: !4107)
!4146 = !DILocation(line: 1054, column: 29, scope: !4107)
!4147 = !DILocation(line: 1054, column: 11, scope: !4107)
!4148 = !DILocation(line: 1054, column: 9, scope: !4107)
!4149 = !DILocation(line: 1055, column: 15, scope: !4107)
!4150 = !DILocation(line: 1055, column: 2, scope: !4107)
!4151 = !DILocation(line: 1057, column: 7, scope: !4107)
!4152 = !DILocation(line: 1058, column: 27, scope: !4107)
!4153 = !DILocation(line: 1058, column: 31, scope: !4107)
!4154 = !DILocation(line: 1058, column: 11, scope: !4107)
!4155 = !DILocation(line: 1058, column: 9, scope: !4107)
!4156 = !DILocation(line: 1059, column: 15, scope: !4107)
!4157 = !DILocation(line: 1059, column: 2, scope: !4107)
!4158 = !DILocation(line: 1061, column: 2, scope: !4107)
!4159 = !DILocation(line: 1063, column: 30, scope: !4107)
!4160 = !DILocation(line: 1063, column: 34, scope: !4107)
!4161 = !DILocation(line: 1063, column: 40, scope: !4107)
!4162 = !DILocation(line: 1063, column: 48, scope: !4107)
!4163 = !DILocation(line: 1063, column: 11, scope: !4107)
!4164 = !DILocation(line: 1063, column: 9, scope: !4107)
!4165 = !DILocation(line: 1065, column: 15, scope: !4107)
!4166 = !DILocation(line: 1065, column: 2, scope: !4107)
!4167 = !DILocation(line: 1067, column: 35, scope: !4107)
!4168 = !DILocation(line: 1067, column: 39, scope: !4107)
!4169 = !DILocation(line: 1067, column: 45, scope: !4107)
!4170 = !DILocation(line: 1067, column: 50, scope: !4107)
!4171 = !DILocation(line: 1067, column: 11, scope: !4107)
!4172 = !DILocation(line: 1067, column: 9, scope: !4107)
!4173 = !DILocation(line: 1069, column: 6, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4107, file: !2, line: 1069, column: 6)
!4175 = !DILocation(line: 1069, column: 13, scope: !4174)
!4176 = !DILocation(line: 1069, column: 6, scope: !4107)
!4177 = !DILocation(line: 1070, column: 10, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 1069, column: 33)
!4179 = !DILocation(line: 1070, column: 18, scope: !4178)
!4180 = !DILocation(line: 1070, column: 8, scope: !4178)
!4181 = !DILocation(line: 1071, column: 17, scope: !4178)
!4182 = !DILocation(line: 1071, column: 3, scope: !4178)
!4183 = !DILocation(line: 1071, column: 11, scope: !4178)
!4184 = !DILocation(line: 1071, column: 15, scope: !4178)
!4185 = !DILocation(line: 1072, column: 14, scope: !4178)
!4186 = !DILocation(line: 1072, column: 19, scope: !4178)
!4187 = !DILocation(line: 1072, column: 3, scope: !4178)
!4188 = !DILocation(line: 1073, column: 17, scope: !4178)
!4189 = !DILocation(line: 1073, column: 3, scope: !4178)
!4190 = !DILocation(line: 1073, column: 11, scope: !4178)
!4191 = !DILocation(line: 1073, column: 15, scope: !4178)
!4192 = !DILocation(line: 1074, column: 2, scope: !4178)
!4193 = !DILocation(line: 1074, column: 13, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 1074, column: 13)
!4195 = !DILocation(line: 1074, column: 20, scope: !4194)
!4196 = !DILocation(line: 1074, column: 13, scope: !4174)
!4197 = !DILocation(line: 1075, column: 16, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4194, file: !2, line: 1074, column: 38)
!4199 = !DILocation(line: 1075, column: 3, scope: !4198)
!4200 = !DILocation(line: 1076, column: 17, scope: !4198)
!4201 = !DILocation(line: 1076, column: 11, scope: !4198)
!4202 = !DILocation(line: 1076, column: 15, scope: !4198)
!4203 = !DILocation(line: 1077, column: 14, scope: !4198)
!4204 = !DILocation(line: 1077, column: 3, scope: !4198)
!4205 = !DILocation(line: 1078, column: 3, scope: !4198)
!4206 = !DILocation(line: 1079, column: 2, scope: !4198)
!4207 = !DILocation(line: 1081, column: 20, scope: !4107)
!4208 = !DILocation(line: 1081, column: 2, scope: !4107)
!4209 = !DILocation(line: 1082, column: 22, scope: !4107)
!4210 = !DILocation(line: 1082, column: 2, scope: !4107)
!4211 = !DILocation(line: 1083, column: 2, scope: !4107)
!4212 = !DILocation(line: 1084, column: 1, scope: !4107)
!4213 = !DISubprogram(name: "dns_db_newversion", scope: !1493, file: !1493, line: 616, type: !1630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4214 = !DISubprogram(name: "dns_db_addrdataset", scope: !1493, file: !1493, line: 1201, type: !1753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4215 = !DISubprogram(name: "dns_db_subtractrdataset", scope: !1493, file: !1493, line: 1260, type: !1757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4216 = distinct !DISubprogram(name: "print_diff", scope: !2, file: !2, line: 1019, type: !4217, scopeLine: 1019, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !4219)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{null, !202, !388}
!4219 = !{!4220, !4221, !4222, !4223, !4224, !4225, !4226, !4229}
!4220 = !DILocalVariable(name: "cmd", arg: 1, scope: !4216, file: !2, line: 1019, type: !202)
!4221 = !DILocalVariable(name: "rdataset", arg: 2, scope: !4216, file: !2, line: 1019, type: !388)
!4222 = !DILocalVariable(name: "buf", scope: !4216, file: !2, line: 1020, type: !165)
!4223 = !DILocalVariable(name: "r", scope: !4216, file: !2, line: 1021, type: !524)
!4224 = !DILocalVariable(name: "nl", scope: !4216, file: !2, line: 1022, type: !142)
!4225 = !DILocalVariable(name: "len", scope: !4216, file: !2, line: 1023, type: !199)
!4226 = !DILocalVariable(name: "_r", scope: !4227, file: !2, line: 1031, type: !3685)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !2, line: 1031, column: 3)
!4228 = distinct !DILexicalBlock(scope: !4216, file: !2, line: 1028, column: 56)
!4229 = !DILocalVariable(name: "_l", scope: !4227, file: !2, line: 1031, type: !13)
!4230 = !DILocation(line: 1019, column: 24, scope: !4216)
!4231 = !DILocation(line: 1019, column: 45, scope: !4216)
!4232 = !DILocation(line: 1020, column: 2, scope: !4216)
!4233 = !DILocation(line: 1020, column: 16, scope: !4216)
!4234 = !DILocation(line: 1021, column: 2, scope: !4216)
!4235 = !DILocation(line: 1021, column: 15, scope: !4216)
!4236 = !DILocation(line: 1022, column: 2, scope: !4216)
!4237 = !DILocation(line: 1022, column: 17, scope: !4216)
!4238 = !DILocation(line: 1023, column: 2, scope: !4216)
!4239 = !DILocation(line: 1023, column: 9, scope: !4216)
!4240 = !DILocation(line: 1025, column: 18, scope: !4216)
!4241 = !DILocation(line: 1025, column: 8, scope: !4216)
!4242 = !DILocation(line: 1025, column: 6, scope: !4216)
!4243 = !DILocation(line: 1026, column: 2, scope: !4216)
!4244 = !DILocation(line: 1026, column: 2, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4216, file: !2, line: 1026, column: 2)
!4246 = !DILocation(line: 1028, column: 2, scope: !4216)
!4247 = !DILocation(line: 1028, column: 24, scope: !4216)
!4248 = !DILocation(line: 1028, column: 38, scope: !4216)
!4249 = !DILocation(line: 1028, column: 36, scope: !4216)
!4250 = !DILocation(line: 1028, column: 15, scope: !4216)
!4251 = !DILocation(line: 1028, column: 13, scope: !4216)
!4252 = !DILocation(line: 1028, column: 47, scope: !4216)
!4253 = !DILocation(line: 1029, column: 9, scope: !4228)
!4254 = !DILocation(line: 1029, column: 16, scope: !4228)
!4255 = !DILocation(line: 1029, column: 12, scope: !4228)
!4256 = !DILocation(line: 1029, column: 21, scope: !4228)
!4257 = !DILocation(line: 1029, column: 7, scope: !4228)
!4258 = !DILocation(line: 1030, column: 28, scope: !4228)
!4259 = !DILocation(line: 1030, column: 38, scope: !4228)
!4260 = !DILocation(line: 1030, column: 33, scope: !4228)
!4261 = !DILocation(line: 1030, column: 53, scope: !4228)
!4262 = !DILocation(line: 1030, column: 3, scope: !4228)
!4263 = !DILocation(line: 1031, column: 3, scope: !4228)
!4264 = !DILocation(line: 1031, column: 3, scope: !4227)
!4265 = distinct !{!4265, !4246, !4266, !1126}
!4266 = !DILocation(line: 1032, column: 2, scope: !4216)
!4267 = !DILocation(line: 1034, column: 2, scope: !4216)
!4268 = !DILocation(line: 1035, column: 1, scope: !4216)
!4269 = !DISubprogram(name: "dns_db_closeversion", scope: !1493, file: !1493, line: 659, type: !1638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4270 = !DISubprogram(name: "memchr", scope: !3368, file: !3368, line: 107, type: !4271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!128, !633, !161, !199}
!4273 = distinct !DISubprogram(name: "freeset", scope: !2, file: !2, line: 205, type: !401, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !4274)
!4274 = !{!4275}
!4275 = !DILocalVariable(name: "rdataset", arg: 1, scope: !4273, file: !2, line: 205, type: !388)
!4276 = !DILocation(line: 205, column: 25, scope: !4273)
!4277 = !DILocation(line: 206, column: 32, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4273, file: !2, line: 206, column: 6)
!4279 = !DILocation(line: 206, column: 6, scope: !4278)
!4280 = !DILocation(line: 206, column: 6, scope: !4273)
!4281 = !DILocation(line: 207, column: 29, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4278, file: !2, line: 206, column: 43)
!4283 = !DILocation(line: 207, column: 3, scope: !4282)
!4284 = !DILocation(line: 208, column: 2, scope: !4282)
!4285 = !DILocation(line: 209, column: 1, scope: !4273)

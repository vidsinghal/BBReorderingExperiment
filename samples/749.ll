; ModuleID = 'samples/749.bc'
source_filename = "controlconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_logcategory = type { ptr, i32 }
%struct.in6_addr = type { %union.anon.4 }
%union.anon.4 = type { [4 x i32] }
%struct.cfg_type = type opaque
%struct.named_controls = type { ptr, %struct.controllistenerlist_t, i8, ptr }
%struct.controllistenerlist_t = type { ptr, ptr }
%struct.controllistener = type { ptr, ptr, ptr, %struct.isc_sockaddr, ptr, ptr, i8, i8, %struct.controlkeylist_t, %struct.controlconnectionlist_t, i32, i32, i32, i32, i8, %struct.anon.6 }
%struct.isc_sockaddr = type { %union.anon, i32, %struct.anon.5 }
%union.anon = type { %struct.sockaddr_storage }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.anon.5 = type { ptr, ptr }
%struct.controlkeylist_t = type { ptr, ptr }
%struct.controlconnectionlist_t = type { ptr, ptr }
%struct.anon.6 = type { ptr, ptr }
%struct.in_addr = type { i32 }
%struct.isc_logmodule = type { ptr, i32 }
%struct.named_server = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, ptr, ptr, %struct.dns_viewlist_t, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %union.pthread_mutex_t, ptr, i8, i8, %struct.named_cachelist_t, ptr, ptr, ptr, ptr, i32, %struct.named_dispatchlist_t, %struct.named_statschannellist_t, ptr, ptr, ptr, i32, i16, i8, [32 x i8], i32, ptr, ptr }
%struct.dns_viewlist_t = type { ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.named_cachelist_t = type { ptr, ptr }
%struct.named_dispatchlist_t = type { ptr, ptr }
%struct.named_statschannellist_t = type { ptr, ptr }
%struct.controlconnection = type { ptr, %struct.isccc_ccmsg, i8, i8, ptr, ptr, ptr, i32, %struct.anon.10 }
%struct.isccc_ccmsg = type { i32, i32, %struct.isc_buffer, i32, ptr, ptr, ptr, ptr, ptr, %struct.isc_event, i32, %struct.isc_sockaddr }
%struct.isc_buffer = type { i32, ptr, i32, i32, i32, i32, %struct.anon.7, ptr, i8 }
%struct.anon.7 = type { ptr, ptr }
%struct.isc_event = type { i64, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.8, %struct.anon.9 }
%struct.anon.8 = type { ptr, ptr }
%struct.anon.9 = type { ptr, ptr }
%struct.anon.10 = type { ptr, ptr }
%struct.controlkey = type { ptr, i32, %struct.isc_region, %struct.anon.11 }
%struct.isc_region = type { ptr, i32 }
%struct.anon.11 = type { ptr, ptr }
%struct.isc_socket_newconnev = type { i64, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.12, %struct.anon.13, ptr, i32, %struct.isc_sockaddr }
%struct.anon.12 = type { ptr, ptr }
%struct.anon.13 = type { ptr, ptr }
%struct.isc_netaddr = type { i32, %union.anon.14, i32 }
%union.anon.14 = type { %struct.in6_addr, [92 x i8] }
%struct.isc_interval = type { i32, i32 }
%struct.isccc_region = type { ptr, ptr }
%struct.isc_socketevent = type { i64, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.15, %struct.anon.16, i32, i32, i32, i32, %struct.isc_region, %struct.isc_sockaddr, %struct.isc_time, %struct.in6_pktinfo, i32, ptr, i32 }
%struct.anon.15 = type { ptr, ptr }
%struct.anon.16 = type { ptr, ptr }
%struct.isc_time = type { i32, i32 }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }

@.str = private unnamed_addr constant [9 x i8] c"controls\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"inet\00", align 1, !dbg !8
@.str.2 = private unnamed_addr constant [8 x i8] c"address\00", align 1, !dbg !13
@named_g_lctx = external global ptr, align 8
@isc_categories = external global [0 x %struct.isc_logcategory], align 8
@named_g_modules = external global ptr, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"processing control channel %s\00", align 1, !dbg !18
@.str.4 = private unnamed_addr constant [14 x i8] c"controlconf.c\00", align 1, !dbg !23
@.str.5 = private unnamed_addr constant [35 x i8] c"(cp->listeners).tail == (listener)\00", align 1, !dbg !28
@.str.6 = private unnamed_addr constant [35 x i8] c"(cp->listeners).head == (listener)\00", align 1, !dbg !33
@.str.7 = private unnamed_addr constant [35 x i8] c"(cp->listeners).head != (listener)\00", align 1, !dbg !35
@.str.8 = private unnamed_addr constant [35 x i8] c"(cp->listeners).tail != (listener)\00", align 1, !dbg !37
@.str.9 = private unnamed_addr constant [5 x i8] c"unix\00", align 1, !dbg !39
@.str.10 = private unnamed_addr constant [5 x i8] c"path\00", align 1, !dbg !41
@.str.11 = private unnamed_addr constant [25 x i8] c"control channel '%s': %s\00", align 1, !dbg !43
@.str.12 = private unnamed_addr constant [32 x i8] c"processing control channel '%s'\00", align 1, !dbg !48
@in6addr_loopback = external constant %struct.in6_addr, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"((controls->listeners).head == ((void*)0))\00", align 1, !dbg !53
@.str.14 = private unnamed_addr constant [51 x i8] c"(listener->controls->listeners).tail == (listener)\00", align 1, !dbg !58
@.str.15 = private unnamed_addr constant [51 x i8] c"(listener->controls->listeners).head == (listener)\00", align 1, !dbg !63
@.str.16 = private unnamed_addr constant [51 x i8] c"(listener->controls->listeners).head != (listener)\00", align 1, !dbg !65
@.str.17 = private unnamed_addr constant [51 x i8] c"(listener->controls->listeners).tail != (listener)\00", align 1, !dbg !67
@.str.18 = private unnamed_addr constant [31 x i8] c"stopping command channel on %s\00", align 1, !dbg !69
@.str.19 = private unnamed_addr constant [39 x i8] c"(listener->connections).tail == (conn)\00", align 1, !dbg !74
@.str.20 = private unnamed_addr constant [39 x i8] c"(listener->connections).head == (conn)\00", align 1, !dbg !79
@.str.21 = private unnamed_addr constant [39 x i8] c"(listener->connections).head != (conn)\00", align 1, !dbg !81
@.str.22 = private unnamed_addr constant [39 x i8] c"(listener->connections).tail != (conn)\00", align 1, !dbg !83
@.str.23 = private unnamed_addr constant [18 x i8] c"listener->exiting\00", align 1, !dbg !85
@.str.24 = private unnamed_addr constant [21 x i8] c"!listener->listening\00", align 1, !dbg !90
@.str.25 = private unnamed_addr constant [45 x i8] c"((listener->connections).head == ((void*)0))\00", align 1, !dbg !95
@.str.26 = private unnamed_addr constant [25 x i8] c"(*keylist).tail == (key)\00", align 1, !dbg !100
@.str.27 = private unnamed_addr constant [25 x i8] c"(*keylist).head == (key)\00", align 1, !dbg !102
@.str.28 = private unnamed_addr constant [25 x i8] c"(*keylist).head != (key)\00", align 1, !dbg !104
@.str.29 = private unnamed_addr constant [25 x i8] c"(*keylist).tail != (key)\00", align 1, !dbg !106
@.str.30 = private unnamed_addr constant [29 x i8] c"global_keylist != ((void*)0)\00", align 1, !dbg !108
@.str.31 = private unnamed_addr constant [53 x i8] c"couldn't install new keys for command channel %s: %s\00", align 1, !dbg !113
@.str.32 = private unnamed_addr constant [6 x i8] c"allow\00", align 1, !dbg !118
@.str.33 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1, !dbg !123
@.str.34 = private unnamed_addr constant [52 x i8] c"couldn't install new acl for command channel %s: %s\00", align 1, !dbg !128
@.str.35 = private unnamed_addr constant [5 x i8] c"perm\00", align 1, !dbg !133
@.str.36 = private unnamed_addr constant [6 x i8] c"owner\00", align 1, !dbg !135
@.str.37 = private unnamed_addr constant [6 x i8] c"group\00", align 1, !dbg !137
@.str.38 = private unnamed_addr constant [60 x i8] c"couldn't update ownership/permission for command channel %s\00", align 1, !dbg !139
@.str.39 = private unnamed_addr constant [64 x i8] c"global_keylistp != ((void*)0) && *global_keylistp == ((void*)0)\00", align 1, !dbg !144
@.str.40 = private unnamed_addr constant [66 x i8] c"control_keylistp != ((void*)0) && *control_keylistp == ((void*)0)\00", align 1, !dbg !149
@.str.41 = private unnamed_addr constant [5 x i8] c"keys\00", align 1, !dbg !154
@.str.42 = private unnamed_addr constant [4 x i8] c"key\00", align 1, !dbg !156
@.str.43 = private unnamed_addr constant [55 x i8] c"couldn't find key '%s' for use with command channel %s\00", align 1, !dbg !161
@.str.44 = private unnamed_addr constant [26 x i8] c"(*keyids).tail == (keyid)\00", align 1, !dbg !166
@.str.45 = private unnamed_addr constant [26 x i8] c"(*keyids).head == (keyid)\00", align 1, !dbg !171
@.str.46 = private unnamed_addr constant [26 x i8] c"(*keyids).head != (keyid)\00", align 1, !dbg !173
@.str.47 = private unnamed_addr constant [26 x i8] c"(*keyids).tail != (keyid)\00", align 1, !dbg !175
@.str.48 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1, !dbg !177
@.str.49 = private unnamed_addr constant [7 x i8] c"secret\00", align 1, !dbg !179
@.str.50 = private unnamed_addr constant [48 x i8] c"algobj != ((void*)0) && secretobj != ((void*)0)\00", align 1, !dbg !184
@.str.51 = private unnamed_addr constant [71 x i8] c"unsupported algorithm '%s' in key '%s' for use with command channel %s\00", align 1, !dbg !189
@.str.52 = private unnamed_addr constant [46 x i8] c"secret for key '%s' on command channel %s: %s\00", align 1, !dbg !194
@.str.53 = private unnamed_addr constant [42 x i8] c"couldn't register key '%s': out of memory\00", align 1, !dbg !199
@.str.54 = private unnamed_addr constant [38 x i8] c"configuring command channel from '%s'\00", align 1, !dbg !204
@named_g_keyfile = external global ptr, align 8
@cfg_type_rndckey = external global %struct.cfg_type, align 1
@.str.55 = private unnamed_addr constant [68 x i8] c"unsupported algorithm '%s' in key '%s' for use with command channel\00", align 1, !dbg !209
@.str.56 = private unnamed_addr constant [43 x i8] c"secret for key '%s' on command channel: %s\00", align 1, !dbg !214
@.str.57 = private unnamed_addr constant [49 x i8] c"couldn't install keys for command channel %s: %s\00", align 1, !dbg !216
@named_g_socketmgr = external global ptr, align 8
@.str.58 = private unnamed_addr constant [8 x i8] c"control\00", align 1, !dbg !221
@.str.59 = private unnamed_addr constant [32 x i8] c"command channel listening on %s\00", align 1, !dbg !223
@.str.60 = private unnamed_addr constant [36 x i8] c"couldn't add command channel %s: %s\00", align 1, !dbg !225
@.str.61 = private unnamed_addr constant [31 x i8] c"isc_socket_listen() failed: %s\00", align 1, !dbg !230
@.str.62 = private unnamed_addr constant [31 x i8] c"isc_socket_accept() failed: %s\00", align 1, !dbg !232
@.str.63 = private unnamed_addr constant [41 x i8] c"rejected command channel message from %s\00", align 1, !dbg !234
@.str.64 = private unnamed_addr constant [36 x i8] c"dropped command channel from %s: %s\00", align 1, !dbg !239
@named_g_server = external global ptr, align 8
@named_g_timermgr = external global ptr, align 8
@.str.65 = private unnamed_addr constant [36 x i8] c"event->ev_type == (((8) << 16) + 0)\00", align 1, !dbg !241
@.str.66 = private unnamed_addr constant [6 x i8] c"_ctrl\00", align 1, !dbg !243
@.str.67 = private unnamed_addr constant [5 x i8] c"_tim\00", align 1, !dbg !245
@.str.68 = private unnamed_addr constant [5 x i8] c"_exp\00", align 1, !dbg !247
@.str.69 = private unnamed_addr constant [7 x i8] c"_nonce\00", align 1, !dbg !249
@.str.70 = private unnamed_addr constant [6 x i8] c"_data\00", align 1, !dbg !251
@.str.71 = private unnamed_addr constant [7 x i8] c"result\00", align 1, !dbg !253
@.str.72 = private unnamed_addr constant [4 x i8] c"err\00", align 1, !dbg !255
@.str.73 = private unnamed_addr constant [5 x i8] c"text\00", align 1, !dbg !257
@.str.74 = private unnamed_addr constant [46 x i8] c"isc_buffer_reserve(&_tmp, 4) == ISC_R_SUCCESS\00", align 1, !dbg !259
@.str.75 = private unnamed_addr constant [37 x i8] c"isc_buffer_availablelength(&b) >= 4U\00", align 1, !dbg !261
@.str.76 = private unnamed_addr constant [28 x i8] c"invalid command from %s: %s\00", align 1, !dbg !266
@.str.77 = private unnamed_addr constant [14 x i8] c"conn->sending\00", align 1, !dbg !271
@.str.78 = private unnamed_addr constant [41 x i8] c"error sending command response to %s: %s\00", align 1, !dbg !273

; Function Attrs: nounwind null_pointer_is_valid uwtable
define void @named_controls_shutdown(ptr noundef %controls) #0 !dbg !571 {
entry:
  %controls.addr = alloca ptr, align 8
  store ptr %controls, ptr %controls.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %controls.addr, metadata !1673, metadata !DIExpression()), !dbg !1674
  %0 = load ptr, ptr %controls.addr, align 8, !dbg !1675
  call void @controls_shutdown(ptr noundef %0), !dbg !1676
  %1 = load ptr, ptr %controls.addr, align 8, !dbg !1677
  %shuttingdown = getelementptr inbounds %struct.named_controls, ptr %1, i32 0, i32 2, !dbg !1678
  store i8 1, ptr %shuttingdown, align 8, !dbg !1679
  ret void, !dbg !1680
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @controls_shutdown(ptr noundef %controls) #0 !dbg !1681 {
entry:
  %controls.addr = alloca ptr, align 8
  %listener = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %controls, ptr %controls.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %controls.addr, metadata !1683, metadata !DIExpression()), !dbg !1686
  call void @llvm.lifetime.start.p0(i64 8, ptr %listener) #9, !dbg !1687
  tail call void @llvm.dbg.declare(metadata ptr %listener, metadata !1684, metadata !DIExpression()), !dbg !1688
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9, !dbg !1689
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !1685, metadata !DIExpression()), !dbg !1690
  %0 = load ptr, ptr %controls.addr, align 8, !dbg !1691
  %listeners = getelementptr inbounds %struct.named_controls, ptr %0, i32 0, i32 1, !dbg !1691
  %head = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners, i32 0, i32 0, !dbg !1691
  %1 = load ptr, ptr %head, align 8, !dbg !1691
  store ptr %1, ptr %listener, align 8, !dbg !1693
  br label %for.cond, !dbg !1694

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %listener, align 8, !dbg !1695
  %cmp = icmp ne ptr %2, null, !dbg !1697
  br i1 %cmp, label %for.body, label %for.end, !dbg !1698

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %listener, align 8, !dbg !1699
  %link = getelementptr inbounds %struct.controllistener, ptr %3, i32 0, i32 15, !dbg !1699
  %next1 = getelementptr inbounds %struct.anon.6, ptr %link, i32 0, i32 1, !dbg !1699
  %4 = load ptr, ptr %next1, align 8, !dbg !1699
  store ptr %4, ptr %next, align 8, !dbg !1701
  %5 = load ptr, ptr %listener, align 8, !dbg !1702
  call void @shutdown_listener(ptr noundef %5), !dbg !1703
  br label %for.inc, !dbg !1704

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %next, align 8, !dbg !1705
  store ptr %6, ptr %listener, align 8, !dbg !1706
  br label %for.cond, !dbg !1707, !llvm.loop !1708

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9, !dbg !1711
  call void @llvm.lifetime.end.p0(i64 8, ptr %listener) #9, !dbg !1711
  ret void, !dbg !1711
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @named_controls_configure(ptr noundef %cp, ptr noundef %config, ptr noundef %aclconfctx) #0 !dbg !1712 {
entry:
  %cp.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %aclconfctx.addr = alloca ptr, align 8
  %listener = alloca ptr, align 8
  %new_listeners = alloca %struct.controllistenerlist_t, align 8
  %controlslist = alloca ptr, align 8
  %element = alloca ptr, align 8
  %element2 = alloca ptr, align 8
  %socktext = alloca [63 x i8], align 16
  %controls = alloca ptr, align 8
  %inetcontrols = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %control = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %addr = alloca %struct.isc_sockaddr, align 8
  %controls150 = alloca ptr, align 8
  %unixcontrols = alloca ptr, align 8
  %control162 = alloca ptr, align 8
  %path = alloca ptr, align 8
  %addr163 = alloca %struct.isc_sockaddr, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %addr331 = alloca %struct.isc_sockaddr, align 8
  %localhost = alloca %struct.in_addr, align 4
  store ptr %cp, ptr %cp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cp.addr, metadata !1733, metadata !DIExpression()), !dbg !1783
  store ptr %config, ptr %config.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %config.addr, metadata !1734, metadata !DIExpression()), !dbg !1784
  store ptr %aclconfctx, ptr %aclconfctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %aclconfctx.addr, metadata !1735, metadata !DIExpression()), !dbg !1785
  call void @llvm.lifetime.start.p0(i64 8, ptr %listener) #9, !dbg !1786
  tail call void @llvm.dbg.declare(metadata ptr %listener, metadata !1736, metadata !DIExpression()), !dbg !1787
  call void @llvm.lifetime.start.p0(i64 16, ptr %new_listeners) #9, !dbg !1788
  tail call void @llvm.dbg.declare(metadata ptr %new_listeners, metadata !1737, metadata !DIExpression()), !dbg !1789
  call void @llvm.lifetime.start.p0(i64 8, ptr %controlslist) #9, !dbg !1790
  tail call void @llvm.dbg.declare(metadata ptr %controlslist, metadata !1738, metadata !DIExpression()), !dbg !1791
  store ptr null, ptr %controlslist, align 8, !dbg !1791
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #9, !dbg !1792
  tail call void @llvm.dbg.declare(metadata ptr %element, metadata !1739, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 8, ptr %element2) #9, !dbg !1792
  tail call void @llvm.dbg.declare(metadata ptr %element2, metadata !1744, metadata !DIExpression()), !dbg !1794
  call void @llvm.lifetime.start.p0(i64 63, ptr %socktext) #9, !dbg !1795
  tail call void @llvm.dbg.declare(metadata ptr %socktext, metadata !1745, metadata !DIExpression()), !dbg !1796
  br label %do.body, !dbg !1797

do.body:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 0, !dbg !1798
  store ptr null, ptr %head, align 8, !dbg !1798
  %tail = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !1798
  store ptr null, ptr %tail, align 8, !dbg !1798
  br label %do.cond, !dbg !1798

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1798

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %config.addr, align 8, !dbg !1800
  %call = call i32 @cfg_map_get(ptr noundef %0, ptr noundef @.str, ptr noundef %controlslist), !dbg !1801
  %1 = load ptr, ptr %controlslist, align 8, !dbg !1802
  %cmp = icmp ne ptr %1, null, !dbg !1803
  br i1 %cmp, label %if.then, label %if.else326, !dbg !1804

if.then:                                          ; preds = %do.end
  %2 = load ptr, ptr %controlslist, align 8, !dbg !1805
  %call1 = call ptr @cfg_list_first(ptr noundef %2), !dbg !1806
  store ptr %call1, ptr %element, align 8, !dbg !1807
  br label %for.cond, !dbg !1808

for.cond:                                         ; preds = %for.inc142, %if.then
  %3 = load ptr, ptr %element, align 8, !dbg !1809
  %cmp2 = icmp ne ptr %3, null, !dbg !1810
  br i1 %cmp2, label %for.body, label %for.end144, !dbg !1811

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %controls) #9, !dbg !1812
  tail call void @llvm.dbg.declare(metadata ptr %controls, metadata !1749, metadata !DIExpression()), !dbg !1813
  call void @llvm.lifetime.start.p0(i64 8, ptr %inetcontrols) #9, !dbg !1814
  tail call void @llvm.dbg.declare(metadata ptr %inetcontrols, metadata !1755, metadata !DIExpression()), !dbg !1815
  store ptr null, ptr %inetcontrols, align 8, !dbg !1815
  %4 = load ptr, ptr %element, align 8, !dbg !1816
  %call3 = call ptr @cfg_listelt_value(ptr noundef %4), !dbg !1817
  store ptr %call3, ptr %controls, align 8, !dbg !1818
  %5 = load ptr, ptr %controls, align 8, !dbg !1819
  %call4 = call i32 @cfg_map_get(ptr noundef %5, ptr noundef @.str.1, ptr noundef %inetcontrols), !dbg !1820
  %6 = load ptr, ptr %inetcontrols, align 8, !dbg !1821
  %cmp5 = icmp eq ptr %6, null, !dbg !1823
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !1824

if.then6:                                         ; preds = %for.body
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1825

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %inetcontrols, align 8, !dbg !1826
  %call7 = call ptr @cfg_list_first(ptr noundef %7), !dbg !1827
  store ptr %call7, ptr %element2, align 8, !dbg !1828
  br label %for.cond8, !dbg !1829

for.cond8:                                        ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %element2, align 8, !dbg !1830
  %cmp9 = icmp ne ptr %8, null, !dbg !1831
  br i1 %cmp9, label %for.body10, label %for.end, !dbg !1832

for.body10:                                       ; preds = %for.cond8
  call void @llvm.lifetime.start.p0(i64 8, ptr %control) #9, !dbg !1833
  tail call void @llvm.dbg.declare(metadata ptr %control, metadata !1756, metadata !DIExpression()), !dbg !1834
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #9, !dbg !1835
  tail call void @llvm.dbg.declare(metadata ptr %obj, metadata !1760, metadata !DIExpression()), !dbg !1836
  call void @llvm.lifetime.start.p0(i64 152, ptr %addr) #9, !dbg !1837
  tail call void @llvm.dbg.declare(metadata ptr %addr, metadata !1761, metadata !DIExpression()), !dbg !1838
  %9 = load ptr, ptr %element2, align 8, !dbg !1839
  %call11 = call ptr @cfg_listelt_value(ptr noundef %9), !dbg !1840
  store ptr %call11, ptr %control, align 8, !dbg !1841
  %10 = load ptr, ptr %control, align 8, !dbg !1842
  %call12 = call ptr @cfg_tuple_get(ptr noundef %10, ptr noundef @.str.2), !dbg !1843
  store ptr %call12, ptr %obj, align 8, !dbg !1844
  %11 = load ptr, ptr %obj, align 8, !dbg !1845
  %call13 = call ptr @cfg_obj_assockaddr(ptr noundef %11), !dbg !1846
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %addr, ptr align 8 %call13, i64 152, i1 false), !dbg !1847
  %call14 = call zeroext i16 @isc_sockaddr_getport(ptr noundef %addr), !dbg !1848
  %conv = zext i16 %call14 to i32, !dbg !1848
  %cmp15 = icmp eq i32 %conv, 0, !dbg !1850
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !1851

if.then17:                                        ; preds = %for.body10
  call void @isc_sockaddr_setport(ptr noundef %addr, i16 noundef zeroext 953), !dbg !1852
  br label %if.end18, !dbg !1852

if.end18:                                         ; preds = %if.then17, %for.body10
  %arraydecay = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !1853
  call void @isc_sockaddr_format(ptr noundef %addr, ptr noundef %arraydecay, i32 noundef 63), !dbg !1854
  %12 = load ptr, ptr @named_g_lctx, align 8, !dbg !1855
  %13 = load ptr, ptr @named_g_modules, align 8, !dbg !1856
  %arrayidx = getelementptr inbounds %struct.isc_logmodule, ptr %13, i64 2, !dbg !1856
  %arraydecay19 = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !1857
  call void (ptr, ptr, ptr, i32, ptr, ...) @isc_log_write(ptr noundef %12, ptr noundef getelementptr inbounds ([0 x %struct.isc_logcategory], ptr @isc_categories, i64 0, i64 1), ptr noundef %arrayidx, i32 noundef 9, ptr noundef @.str.3, ptr noundef %arraydecay19), !dbg !1858
  %14 = load ptr, ptr %cp.addr, align 8, !dbg !1859
  %15 = load ptr, ptr %control, align 8, !dbg !1860
  %16 = load ptr, ptr %config.addr, align 8, !dbg !1861
  %17 = load ptr, ptr %aclconfctx.addr, align 8, !dbg !1862
  %arraydecay20 = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !1863
  call void @update_listener(ptr noundef %14, ptr noundef %listener, ptr noundef %15, ptr noundef %16, ptr noundef %addr, ptr noundef %17, ptr noundef %arraydecay20, i32 noundef 2), !dbg !1864
  %18 = load ptr, ptr %listener, align 8, !dbg !1865
  %cmp21 = icmp ne ptr %18, null, !dbg !1867
  br i1 %cmp21, label %if.then23, label %if.else111, !dbg !1868

if.then23:                                        ; preds = %if.end18
  br label %do.body24, !dbg !1869

do.body24:                                        ; preds = %if.then23
  br label %do.body25, !dbg !1870

do.body25:                                        ; preds = %do.body24
  %19 = load ptr, ptr %listener, align 8, !dbg !1872
  %link = getelementptr inbounds %struct.controllistener, ptr %19, i32 0, i32 15, !dbg !1872
  %next = getelementptr inbounds %struct.anon.6, ptr %link, i32 0, i32 1, !dbg !1872
  %20 = load ptr, ptr %next, align 8, !dbg !1872
  %cmp26 = icmp ne ptr %20, null, !dbg !1872
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !1875

if.then28:                                        ; preds = %do.body25
  %21 = load ptr, ptr %listener, align 8, !dbg !1872
  %link29 = getelementptr inbounds %struct.controllistener, ptr %21, i32 0, i32 15, !dbg !1872
  %prev = getelementptr inbounds %struct.anon.6, ptr %link29, i32 0, i32 0, !dbg !1872
  %22 = load ptr, ptr %prev, align 8, !dbg !1872
  %23 = load ptr, ptr %listener, align 8, !dbg !1872
  %link30 = getelementptr inbounds %struct.controllistener, ptr %23, i32 0, i32 15, !dbg !1872
  %next31 = getelementptr inbounds %struct.anon.6, ptr %link30, i32 0, i32 1, !dbg !1872
  %24 = load ptr, ptr %next31, align 8, !dbg !1872
  %link32 = getelementptr inbounds %struct.controllistener, ptr %24, i32 0, i32 15, !dbg !1872
  %prev33 = getelementptr inbounds %struct.anon.6, ptr %link32, i32 0, i32 0, !dbg !1872
  store ptr %22, ptr %prev33, align 8, !dbg !1872
  br label %if.end43, !dbg !1872

if.else:                                          ; preds = %do.body25
  %25 = load ptr, ptr %cp.addr, align 8, !dbg !1876
  %listeners = getelementptr inbounds %struct.named_controls, ptr %25, i32 0, i32 1, !dbg !1876
  %tail34 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners, i32 0, i32 1, !dbg !1876
  %26 = load ptr, ptr %tail34, align 8, !dbg !1876
  %27 = load ptr, ptr %listener, align 8, !dbg !1876
  %cmp35 = icmp eq ptr %26, %27, !dbg !1876
  %lnot = xor i1 %cmp35, true, !dbg !1876
  %lnot37 = xor i1 %lnot, true, !dbg !1876
  %lnot.ext = zext i1 %lnot37 to i32, !dbg !1876
  %conv38 = sext i32 %lnot.ext to i64, !dbg !1876
  %expval = call i64 @llvm.expect.i64(i64 %conv38, i64 1), !dbg !1876
  %tobool = icmp ne i64 %expval, 0, !dbg !1876
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1876

lor.rhs:                                          ; preds = %if.else
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 1349, i32 noundef 2, ptr noundef @.str.5) #10, !dbg !1876
  unreachable, !dbg !1876

28:                                               ; No predecessors!
  br label %lor.end, !dbg !1876

lor.end:                                          ; preds = %28, %if.else
  %29 = phi i1 [ true, %if.else ], [ false, %28 ]
  %lor.ext = zext i1 %29 to i32, !dbg !1876
  %30 = load ptr, ptr %listener, align 8, !dbg !1876
  %link39 = getelementptr inbounds %struct.controllistener, ptr %30, i32 0, i32 15, !dbg !1876
  %prev40 = getelementptr inbounds %struct.anon.6, ptr %link39, i32 0, i32 0, !dbg !1876
  %31 = load ptr, ptr %prev40, align 8, !dbg !1876
  %32 = load ptr, ptr %cp.addr, align 8, !dbg !1876
  %listeners41 = getelementptr inbounds %struct.named_controls, ptr %32, i32 0, i32 1, !dbg !1876
  %tail42 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners41, i32 0, i32 1, !dbg !1876
  store ptr %31, ptr %tail42, align 8, !dbg !1876
  br label %if.end43

if.end43:                                         ; preds = %lor.end, %if.then28
  %33 = load ptr, ptr %listener, align 8, !dbg !1878
  %link44 = getelementptr inbounds %struct.controllistener, ptr %33, i32 0, i32 15, !dbg !1878
  %prev45 = getelementptr inbounds %struct.anon.6, ptr %link44, i32 0, i32 0, !dbg !1878
  %34 = load ptr, ptr %prev45, align 8, !dbg !1878
  %cmp46 = icmp ne ptr %34, null, !dbg !1878
  br i1 %cmp46, label %if.then48, label %if.else55, !dbg !1875

if.then48:                                        ; preds = %if.end43
  %35 = load ptr, ptr %listener, align 8, !dbg !1878
  %link49 = getelementptr inbounds %struct.controllistener, ptr %35, i32 0, i32 15, !dbg !1878
  %next50 = getelementptr inbounds %struct.anon.6, ptr %link49, i32 0, i32 1, !dbg !1878
  %36 = load ptr, ptr %next50, align 8, !dbg !1878
  %37 = load ptr, ptr %listener, align 8, !dbg !1878
  %link51 = getelementptr inbounds %struct.controllistener, ptr %37, i32 0, i32 15, !dbg !1878
  %prev52 = getelementptr inbounds %struct.anon.6, ptr %link51, i32 0, i32 0, !dbg !1878
  %38 = load ptr, ptr %prev52, align 8, !dbg !1878
  %link53 = getelementptr inbounds %struct.controllistener, ptr %38, i32 0, i32 15, !dbg !1878
  %next54 = getelementptr inbounds %struct.anon.6, ptr %link53, i32 0, i32 1, !dbg !1878
  store ptr %36, ptr %next54, align 8, !dbg !1878
  br label %if.end74, !dbg !1878

if.else55:                                        ; preds = %if.end43
  %39 = load ptr, ptr %cp.addr, align 8, !dbg !1880
  %listeners56 = getelementptr inbounds %struct.named_controls, ptr %39, i32 0, i32 1, !dbg !1880
  %head57 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners56, i32 0, i32 0, !dbg !1880
  %40 = load ptr, ptr %head57, align 8, !dbg !1880
  %41 = load ptr, ptr %listener, align 8, !dbg !1880
  %cmp58 = icmp eq ptr %40, %41, !dbg !1880
  %lnot60 = xor i1 %cmp58, true, !dbg !1880
  %lnot62 = xor i1 %lnot60, true, !dbg !1880
  %lnot.ext63 = zext i1 %lnot62 to i32, !dbg !1880
  %conv64 = sext i32 %lnot.ext63 to i64, !dbg !1880
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 1), !dbg !1880
  %tobool66 = icmp ne i64 %expval65, 0, !dbg !1880
  br i1 %tobool66, label %lor.end68, label %lor.rhs67, !dbg !1880

lor.rhs67:                                        ; preds = %if.else55
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 1349, i32 noundef 2, ptr noundef @.str.6) #10, !dbg !1880
  unreachable, !dbg !1880

42:                                               ; No predecessors!
  br label %lor.end68, !dbg !1880

lor.end68:                                        ; preds = %42, %if.else55
  %43 = phi i1 [ true, %if.else55 ], [ false, %42 ]
  %lor.ext69 = zext i1 %43 to i32, !dbg !1880
  %44 = load ptr, ptr %listener, align 8, !dbg !1880
  %link70 = getelementptr inbounds %struct.controllistener, ptr %44, i32 0, i32 15, !dbg !1880
  %next71 = getelementptr inbounds %struct.anon.6, ptr %link70, i32 0, i32 1, !dbg !1880
  %45 = load ptr, ptr %next71, align 8, !dbg !1880
  %46 = load ptr, ptr %cp.addr, align 8, !dbg !1880
  %listeners72 = getelementptr inbounds %struct.named_controls, ptr %46, i32 0, i32 1, !dbg !1880
  %head73 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners72, i32 0, i32 0, !dbg !1880
  store ptr %45, ptr %head73, align 8, !dbg !1880
  br label %if.end74

if.end74:                                         ; preds = %lor.end68, %if.then48
  %47 = load ptr, ptr %listener, align 8, !dbg !1875
  %link75 = getelementptr inbounds %struct.controllistener, ptr %47, i32 0, i32 15, !dbg !1875
  %prev76 = getelementptr inbounds %struct.anon.6, ptr %link75, i32 0, i32 0, !dbg !1875
  store ptr inttoptr (i64 -1 to ptr), ptr %prev76, align 8, !dbg !1875
  %48 = load ptr, ptr %listener, align 8, !dbg !1875
  %link77 = getelementptr inbounds %struct.controllistener, ptr %48, i32 0, i32 15, !dbg !1875
  %next78 = getelementptr inbounds %struct.anon.6, ptr %link77, i32 0, i32 1, !dbg !1875
  store ptr inttoptr (i64 -1 to ptr), ptr %next78, align 8, !dbg !1875
  %49 = load ptr, ptr %cp.addr, align 8, !dbg !1875
  %listeners79 = getelementptr inbounds %struct.named_controls, ptr %49, i32 0, i32 1, !dbg !1875
  %head80 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners79, i32 0, i32 0, !dbg !1875
  %50 = load ptr, ptr %head80, align 8, !dbg !1875
  %51 = load ptr, ptr %listener, align 8, !dbg !1875
  %cmp81 = icmp ne ptr %50, %51, !dbg !1875
  %lnot83 = xor i1 %cmp81, true, !dbg !1875
  %lnot85 = xor i1 %lnot83, true, !dbg !1875
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !1875
  %conv87 = sext i32 %lnot.ext86 to i64, !dbg !1875
  %expval88 = call i64 @llvm.expect.i64(i64 %conv87, i64 1), !dbg !1875
  %tobool89 = icmp ne i64 %expval88, 0, !dbg !1875
  br i1 %tobool89, label %lor.end91, label %lor.rhs90, !dbg !1875

lor.rhs90:                                        ; preds = %if.end74
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 1349, i32 noundef 2, ptr noundef @.str.7) #10, !dbg !1875
  unreachable, !dbg !1875

52:                                               ; No predecessors!
  br label %lor.end91, !dbg !1875

lor.end91:                                        ; preds = %52, %if.end74
  %53 = phi i1 [ true, %if.end74 ], [ false, %52 ]
  %lor.ext92 = zext i1 %53 to i32, !dbg !1875
  %54 = load ptr, ptr %cp.addr, align 8, !dbg !1875
  %listeners93 = getelementptr inbounds %struct.named_controls, ptr %54, i32 0, i32 1, !dbg !1875
  %tail94 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners93, i32 0, i32 1, !dbg !1875
  %55 = load ptr, ptr %tail94, align 8, !dbg !1875
  %56 = load ptr, ptr %listener, align 8, !dbg !1875
  %cmp95 = icmp ne ptr %55, %56, !dbg !1875
  %lnot97 = xor i1 %cmp95, true, !dbg !1875
  %lnot99 = xor i1 %lnot97, true, !dbg !1875
  %lnot.ext100 = zext i1 %lnot99 to i32, !dbg !1875
  %conv101 = sext i32 %lnot.ext100 to i64, !dbg !1875
  %expval102 = call i64 @llvm.expect.i64(i64 %conv101, i64 1), !dbg !1875
  %tobool103 = icmp ne i64 %expval102, 0, !dbg !1875
  br i1 %tobool103, label %lor.end105, label %lor.rhs104, !dbg !1875

lor.rhs104:                                       ; preds = %lor.end91
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 1349, i32 noundef 2, ptr noundef @.str.8) #10, !dbg !1875
  unreachable, !dbg !1875

57:                                               ; No predecessors!
  br label %lor.end105, !dbg !1875

lor.end105:                                       ; preds = %57, %lor.end91
  %58 = phi i1 [ true, %lor.end91 ], [ false, %57 ]
  %lor.ext106 = zext i1 %58 to i32, !dbg !1875
  br label %do.cond107, !dbg !1875

do.cond107:                                       ; preds = %lor.end105
  br label %do.end108, !dbg !1875

do.end108:                                        ; preds = %do.cond107
  br label %do.cond109, !dbg !1870

do.cond109:                                       ; preds = %do.end108
  br label %do.end110, !dbg !1870

do.end110:                                        ; preds = %do.cond109
  br label %if.end113, !dbg !1870

if.else111:                                       ; preds = %if.end18
  %59 = load ptr, ptr %cp.addr, align 8, !dbg !1882
  %60 = load ptr, ptr %control, align 8, !dbg !1883
  %61 = load ptr, ptr %config.addr, align 8, !dbg !1884
  %62 = load ptr, ptr %aclconfctx.addr, align 8, !dbg !1885
  %arraydecay112 = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !1886
  call void @add_listener(ptr noundef %59, ptr noundef %listener, ptr noundef %60, ptr noundef %61, ptr noundef %addr, ptr noundef %62, ptr noundef %arraydecay112, i32 noundef 2), !dbg !1887
  br label %if.end113

if.end113:                                        ; preds = %if.else111, %do.end110
  %63 = load ptr, ptr %listener, align 8, !dbg !1888
  %cmp114 = icmp ne ptr %63, null, !dbg !1890
  br i1 %cmp114, label %if.then116, label %if.end139, !dbg !1891

if.then116:                                       ; preds = %if.end113
  br label %do.body117, !dbg !1892

do.body117:                                       ; preds = %if.then116
  br label %do.body118, !dbg !1893

do.body118:                                       ; preds = %do.body117
  %tail119 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !1895
  %64 = load ptr, ptr %tail119, align 8, !dbg !1895
  %cmp120 = icmp ne ptr %64, null, !dbg !1895
  br i1 %cmp120, label %if.then122, label %if.else126, !dbg !1898

if.then122:                                       ; preds = %do.body118
  %65 = load ptr, ptr %listener, align 8, !dbg !1895
  %tail123 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !1895
  %66 = load ptr, ptr %tail123, align 8, !dbg !1895
  %link124 = getelementptr inbounds %struct.controllistener, ptr %66, i32 0, i32 15, !dbg !1895
  %next125 = getelementptr inbounds %struct.anon.6, ptr %link124, i32 0, i32 1, !dbg !1895
  store ptr %65, ptr %next125, align 8, !dbg !1895
  br label %if.end128, !dbg !1895

if.else126:                                       ; preds = %do.body118
  %67 = load ptr, ptr %listener, align 8, !dbg !1895
  %head127 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 0, !dbg !1895
  store ptr %67, ptr %head127, align 8, !dbg !1895
  br label %if.end128

if.end128:                                        ; preds = %if.else126, %if.then122
  %tail129 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !1898
  %68 = load ptr, ptr %tail129, align 8, !dbg !1898
  %69 = load ptr, ptr %listener, align 8, !dbg !1898
  %link130 = getelementptr inbounds %struct.controllistener, ptr %69, i32 0, i32 15, !dbg !1898
  %prev131 = getelementptr inbounds %struct.anon.6, ptr %link130, i32 0, i32 0, !dbg !1898
  store ptr %68, ptr %prev131, align 8, !dbg !1898
  %70 = load ptr, ptr %listener, align 8, !dbg !1898
  %link132 = getelementptr inbounds %struct.controllistener, ptr %70, i32 0, i32 15, !dbg !1898
  %next133 = getelementptr inbounds %struct.anon.6, ptr %link132, i32 0, i32 1, !dbg !1898
  store ptr null, ptr %next133, align 8, !dbg !1898
  %71 = load ptr, ptr %listener, align 8, !dbg !1898
  %tail134 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !1898
  store ptr %71, ptr %tail134, align 8, !dbg !1898
  br label %do.cond135, !dbg !1898

do.cond135:                                       ; preds = %if.end128
  br label %do.end136, !dbg !1898

do.end136:                                        ; preds = %do.cond135
  br label %do.cond137, !dbg !1893

do.cond137:                                       ; preds = %do.end136
  br label %do.end138, !dbg !1893

do.end138:                                        ; preds = %do.cond137
  br label %if.end139, !dbg !1893

if.end139:                                        ; preds = %do.end138, %if.end113
  call void @llvm.lifetime.end.p0(i64 152, ptr %addr) #9, !dbg !1899
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #9, !dbg !1899
  call void @llvm.lifetime.end.p0(i64 8, ptr %control) #9, !dbg !1899
  br label %for.inc, !dbg !1900

for.inc:                                          ; preds = %if.end139
  %72 = load ptr, ptr %element2, align 8, !dbg !1901
  %call140 = call ptr @cfg_list_next(ptr noundef %72), !dbg !1902
  store ptr %call140, ptr %element2, align 8, !dbg !1903
  br label %for.cond8, !dbg !1904, !llvm.loop !1905

for.end:                                          ; preds = %for.cond8
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1907
  br label %cleanup, !dbg !1907

cleanup:                                          ; preds = %for.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %inetcontrols) #9, !dbg !1907
  call void @llvm.lifetime.end.p0(i64 8, ptr %controls) #9, !dbg !1907
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.inc142
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc142, !dbg !1908

for.inc142:                                       ; preds = %cleanup.cont, %cleanup
  %73 = load ptr, ptr %element, align 8, !dbg !1909
  %call143 = call ptr @cfg_list_next(ptr noundef %73), !dbg !1910
  store ptr %call143, ptr %element, align 8, !dbg !1911
  br label %for.cond, !dbg !1912, !llvm.loop !1913

for.end144:                                       ; preds = %for.cond
  %74 = load ptr, ptr %controlslist, align 8, !dbg !1915
  %call145 = call ptr @cfg_list_first(ptr noundef %74), !dbg !1916
  store ptr %call145, ptr %element, align 8, !dbg !1917
  br label %for.cond146, !dbg !1918

for.cond146:                                      ; preds = %for.inc323, %for.end144
  %75 = load ptr, ptr %element, align 8, !dbg !1919
  %cmp147 = icmp ne ptr %75, null, !dbg !1920
  br i1 %cmp147, label %for.body149, label %for.end325, !dbg !1921

for.body149:                                      ; preds = %for.cond146
  call void @llvm.lifetime.start.p0(i64 8, ptr %controls150) #9, !dbg !1922
  tail call void @llvm.dbg.declare(metadata ptr %controls150, metadata !1762, metadata !DIExpression()), !dbg !1923
  call void @llvm.lifetime.start.p0(i64 8, ptr %unixcontrols) #9, !dbg !1924
  tail call void @llvm.dbg.declare(metadata ptr %unixcontrols, metadata !1766, metadata !DIExpression()), !dbg !1925
  store ptr null, ptr %unixcontrols, align 8, !dbg !1925
  %76 = load ptr, ptr %element, align 8, !dbg !1926
  %call151 = call ptr @cfg_listelt_value(ptr noundef %76), !dbg !1927
  store ptr %call151, ptr %controls150, align 8, !dbg !1928
  %77 = load ptr, ptr %controls150, align 8, !dbg !1929
  %call152 = call i32 @cfg_map_get(ptr noundef %77, ptr noundef @.str.9, ptr noundef %unixcontrols), !dbg !1930
  %78 = load ptr, ptr %unixcontrols, align 8, !dbg !1931
  %cmp153 = icmp eq ptr %78, null, !dbg !1933
  br i1 %cmp153, label %if.then155, label %if.end156, !dbg !1934

if.then155:                                       ; preds = %for.body149
  store i32 20, ptr %cleanup.dest.slot, align 4
  br label %cleanup319, !dbg !1935

if.end156:                                        ; preds = %for.body149
  %79 = load ptr, ptr %unixcontrols, align 8, !dbg !1936
  %call157 = call ptr @cfg_list_first(ptr noundef %79), !dbg !1937
  store ptr %call157, ptr %element2, align 8, !dbg !1938
  br label %for.cond158, !dbg !1939

for.cond158:                                      ; preds = %for.inc316, %if.end156
  %80 = load ptr, ptr %element2, align 8, !dbg !1940
  %cmp159 = icmp ne ptr %80, null, !dbg !1941
  br i1 %cmp159, label %for.body161, label %for.end318, !dbg !1942

for.body161:                                      ; preds = %for.cond158
  call void @llvm.lifetime.start.p0(i64 8, ptr %control162) #9, !dbg !1943
  tail call void @llvm.dbg.declare(metadata ptr %control162, metadata !1767, metadata !DIExpression()), !dbg !1944
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #9, !dbg !1945
  tail call void @llvm.dbg.declare(metadata ptr %path, metadata !1771, metadata !DIExpression()), !dbg !1946
  call void @llvm.lifetime.start.p0(i64 152, ptr %addr163) #9, !dbg !1947
  tail call void @llvm.dbg.declare(metadata ptr %addr163, metadata !1772, metadata !DIExpression()), !dbg !1948
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !1949
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1773, metadata !DIExpression()), !dbg !1950
  %81 = load ptr, ptr %element2, align 8, !dbg !1951
  %call164 = call ptr @cfg_listelt_value(ptr noundef %81), !dbg !1952
  store ptr %call164, ptr %control162, align 8, !dbg !1953
  %82 = load ptr, ptr %control162, align 8, !dbg !1954
  %call165 = call ptr @cfg_tuple_get(ptr noundef %82, ptr noundef @.str.10), !dbg !1955
  store ptr %call165, ptr %path, align 8, !dbg !1956
  %83 = load ptr, ptr %path, align 8, !dbg !1957
  %call166 = call ptr @cfg_obj_asstring(ptr noundef %83), !dbg !1958
  %call167 = call i32 @isc_sockaddr_frompath(ptr noundef %addr163, ptr noundef %call166), !dbg !1959
  store i32 %call167, ptr %result, align 4, !dbg !1960
  %84 = load i32, ptr %result, align 4, !dbg !1961
  %cmp168 = icmp ne i32 %84, 0, !dbg !1963
  br i1 %cmp168, label %if.then170, label %if.end174, !dbg !1964

if.then170:                                       ; preds = %for.body161
  %85 = load ptr, ptr @named_g_lctx, align 8, !dbg !1965
  %86 = load ptr, ptr @named_g_modules, align 8, !dbg !1967
  %arrayidx171 = getelementptr inbounds %struct.isc_logmodule, ptr %86, i64 2, !dbg !1967
  %87 = load ptr, ptr %path, align 8, !dbg !1968
  %call172 = call ptr @cfg_obj_asstring(ptr noundef %87), !dbg !1969
  %88 = load i32, ptr %result, align 4, !dbg !1970
  %call173 = call ptr @isc_result_totext(i32 noundef %88), !dbg !1971
  call void (ptr, ptr, ptr, i32, ptr, ...) @isc_log_write(ptr noundef %85, ptr noundef getelementptr inbounds ([0 x %struct.isc_logcategory], ptr @isc_categories, i64 0, i64 1), ptr noundef %arrayidx171, i32 noundef 9, ptr noundef @.str.11, ptr noundef %call172, ptr noundef %call173), !dbg !1972
  store i32 23, ptr %cleanup.dest.slot, align 4
  br label %cleanup310, !dbg !1973

if.end174:                                        ; preds = %for.body161
  %89 = load ptr, ptr @named_g_lctx, align 8, !dbg !1974
  %90 = load ptr, ptr @named_g_modules, align 8, !dbg !1975
  %arrayidx175 = getelementptr inbounds %struct.isc_logmodule, ptr %90, i64 2, !dbg !1975
  %91 = load ptr, ptr %path, align 8, !dbg !1976
  %call176 = call ptr @cfg_obj_asstring(ptr noundef %91), !dbg !1977
  call void (ptr, ptr, ptr, i32, ptr, ...) @isc_log_write(ptr noundef %89, ptr noundef getelementptr inbounds ([0 x %struct.isc_logcategory], ptr @isc_categories, i64 0, i64 1), ptr noundef %arrayidx175, i32 noundef 9, ptr noundef @.str.12, ptr noundef %call176), !dbg !1978
  %92 = load ptr, ptr %cp.addr, align 8, !dbg !1979
  %93 = load ptr, ptr %control162, align 8, !dbg !1980
  %94 = load ptr, ptr %config.addr, align 8, !dbg !1981
  %95 = load ptr, ptr %aclconfctx.addr, align 8, !dbg !1982
  %96 = load ptr, ptr %path, align 8, !dbg !1983
  %call177 = call ptr @cfg_obj_asstring(ptr noundef %96), !dbg !1984
  call void @update_listener(ptr noundef %92, ptr noundef %listener, ptr noundef %93, ptr noundef %94, ptr noundef %addr163, ptr noundef %95, ptr noundef %call177, i32 noundef 3), !dbg !1985
  %97 = load ptr, ptr %listener, align 8, !dbg !1986
  %cmp178 = icmp ne ptr %97, null, !dbg !1988
  br i1 %cmp178, label %if.then180, label %if.else281, !dbg !1989

if.then180:                                       ; preds = %if.end174
  br label %do.body181, !dbg !1990

do.body181:                                       ; preds = %if.then180
  br label %do.body182, !dbg !1991

do.body182:                                       ; preds = %do.body181
  %98 = load ptr, ptr %listener, align 8, !dbg !1993
  %link183 = getelementptr inbounds %struct.controllistener, ptr %98, i32 0, i32 15, !dbg !1993
  %next184 = getelementptr inbounds %struct.anon.6, ptr %link183, i32 0, i32 1, !dbg !1993
  %99 = load ptr, ptr %next184, align 8, !dbg !1993
  %cmp185 = icmp ne ptr %99, null, !dbg !1993
  br i1 %cmp185, label %if.then187, label %if.else194, !dbg !1996

if.then187:                                       ; preds = %do.body182
  %100 = load ptr, ptr %listener, align 8, !dbg !1993
  %link188 = getelementptr inbounds %struct.controllistener, ptr %100, i32 0, i32 15, !dbg !1993
  %prev189 = getelementptr inbounds %struct.anon.6, ptr %link188, i32 0, i32 0, !dbg !1993
  %101 = load ptr, ptr %prev189, align 8, !dbg !1993
  %102 = load ptr, ptr %listener, align 8, !dbg !1993
  %link190 = getelementptr inbounds %struct.controllistener, ptr %102, i32 0, i32 15, !dbg !1993
  %next191 = getelementptr inbounds %struct.anon.6, ptr %link190, i32 0, i32 1, !dbg !1993
  %103 = load ptr, ptr %next191, align 8, !dbg !1993
  %link192 = getelementptr inbounds %struct.controllistener, ptr %103, i32 0, i32 15, !dbg !1993
  %prev193 = getelementptr inbounds %struct.anon.6, ptr %link192, i32 0, i32 0, !dbg !1993
  store ptr %101, ptr %prev193, align 8, !dbg !1993
  br label %if.end213, !dbg !1993

if.else194:                                       ; preds = %do.body182
  %104 = load ptr, ptr %cp.addr, align 8, !dbg !1997
  %listeners195 = getelementptr inbounds %struct.named_controls, ptr %104, i32 0, i32 1, !dbg !1997
  %tail196 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners195, i32 0, i32 1, !dbg !1997
  %105 = load ptr, ptr %tail196, align 8, !dbg !1997
  %106 = load ptr, ptr %listener, align 8, !dbg !1997
  %cmp197 = icmp eq ptr %105, %106, !dbg !1997
  %lnot199 = xor i1 %cmp197, true, !dbg !1997
  %lnot201 = xor i1 %lnot199, true, !dbg !1997
  %lnot.ext202 = zext i1 %lnot201 to i32, !dbg !1997
  %conv203 = sext i32 %lnot.ext202 to i64, !dbg !1997
  %expval204 = call i64 @llvm.expect.i64(i64 %conv203, i64 1), !dbg !1997
  %tobool205 = icmp ne i64 %expval204, 0, !dbg !1997
  br i1 %tobool205, label %lor.end207, label %lor.rhs206, !dbg !1997

lor.rhs206:                                       ; preds = %if.else194
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 1422, i32 noundef 2, ptr noundef @.str.5) #10, !dbg !1997
  unreachable, !dbg !1997

107:                                              ; No predecessors!
  br label %lor.end207, !dbg !1997

lor.end207:                                       ; preds = %107, %if.else194
  %108 = phi i1 [ true, %if.else194 ], [ false, %107 ]
  %lor.ext208 = zext i1 %108 to i32, !dbg !1997
  %109 = load ptr, ptr %listener, align 8, !dbg !1997
  %link209 = getelementptr inbounds %struct.controllistener, ptr %109, i32 0, i32 15, !dbg !1997
  %prev210 = getelementptr inbounds %struct.anon.6, ptr %link209, i32 0, i32 0, !dbg !1997
  %110 = load ptr, ptr %prev210, align 8, !dbg !1997
  %111 = load ptr, ptr %cp.addr, align 8, !dbg !1997
  %listeners211 = getelementptr inbounds %struct.named_controls, ptr %111, i32 0, i32 1, !dbg !1997
  %tail212 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners211, i32 0, i32 1, !dbg !1997
  store ptr %110, ptr %tail212, align 8, !dbg !1997
  br label %if.end213

if.end213:                                        ; preds = %lor.end207, %if.then187
  %112 = load ptr, ptr %listener, align 8, !dbg !1999
  %link214 = getelementptr inbounds %struct.controllistener, ptr %112, i32 0, i32 15, !dbg !1999
  %prev215 = getelementptr inbounds %struct.anon.6, ptr %link214, i32 0, i32 0, !dbg !1999
  %113 = load ptr, ptr %prev215, align 8, !dbg !1999
  %cmp216 = icmp ne ptr %113, null, !dbg !1999
  br i1 %cmp216, label %if.then218, label %if.else225, !dbg !1996

if.then218:                                       ; preds = %if.end213
  %114 = load ptr, ptr %listener, align 8, !dbg !1999
  %link219 = getelementptr inbounds %struct.controllistener, ptr %114, i32 0, i32 15, !dbg !1999
  %next220 = getelementptr inbounds %struct.anon.6, ptr %link219, i32 0, i32 1, !dbg !1999
  %115 = load ptr, ptr %next220, align 8, !dbg !1999
  %116 = load ptr, ptr %listener, align 8, !dbg !1999
  %link221 = getelementptr inbounds %struct.controllistener, ptr %116, i32 0, i32 15, !dbg !1999
  %prev222 = getelementptr inbounds %struct.anon.6, ptr %link221, i32 0, i32 0, !dbg !1999
  %117 = load ptr, ptr %prev222, align 8, !dbg !1999
  %link223 = getelementptr inbounds %struct.controllistener, ptr %117, i32 0, i32 15, !dbg !1999
  %next224 = getelementptr inbounds %struct.anon.6, ptr %link223, i32 0, i32 1, !dbg !1999
  store ptr %115, ptr %next224, align 8, !dbg !1999
  br label %if.end244, !dbg !1999

if.else225:                                       ; preds = %if.end213
  %118 = load ptr, ptr %cp.addr, align 8, !dbg !2001
  %listeners226 = getelementptr inbounds %struct.named_controls, ptr %118, i32 0, i32 1, !dbg !2001
  %head227 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners226, i32 0, i32 0, !dbg !2001
  %119 = load ptr, ptr %head227, align 8, !dbg !2001
  %120 = load ptr, ptr %listener, align 8, !dbg !2001
  %cmp228 = icmp eq ptr %119, %120, !dbg !2001
  %lnot230 = xor i1 %cmp228, true, !dbg !2001
  %lnot232 = xor i1 %lnot230, true, !dbg !2001
  %lnot.ext233 = zext i1 %lnot232 to i32, !dbg !2001
  %conv234 = sext i32 %lnot.ext233 to i64, !dbg !2001
  %expval235 = call i64 @llvm.expect.i64(i64 %conv234, i64 1), !dbg !2001
  %tobool236 = icmp ne i64 %expval235, 0, !dbg !2001
  br i1 %tobool236, label %lor.end238, label %lor.rhs237, !dbg !2001

lor.rhs237:                                       ; preds = %if.else225
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 1422, i32 noundef 2, ptr noundef @.str.6) #10, !dbg !2001
  unreachable, !dbg !2001

121:                                              ; No predecessors!
  br label %lor.end238, !dbg !2001

lor.end238:                                       ; preds = %121, %if.else225
  %122 = phi i1 [ true, %if.else225 ], [ false, %121 ]
  %lor.ext239 = zext i1 %122 to i32, !dbg !2001
  %123 = load ptr, ptr %listener, align 8, !dbg !2001
  %link240 = getelementptr inbounds %struct.controllistener, ptr %123, i32 0, i32 15, !dbg !2001
  %next241 = getelementptr inbounds %struct.anon.6, ptr %link240, i32 0, i32 1, !dbg !2001
  %124 = load ptr, ptr %next241, align 8, !dbg !2001
  %125 = load ptr, ptr %cp.addr, align 8, !dbg !2001
  %listeners242 = getelementptr inbounds %struct.named_controls, ptr %125, i32 0, i32 1, !dbg !2001
  %head243 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners242, i32 0, i32 0, !dbg !2001
  store ptr %124, ptr %head243, align 8, !dbg !2001
  br label %if.end244

if.end244:                                        ; preds = %lor.end238, %if.then218
  %126 = load ptr, ptr %listener, align 8, !dbg !1996
  %link245 = getelementptr inbounds %struct.controllistener, ptr %126, i32 0, i32 15, !dbg !1996
  %prev246 = getelementptr inbounds %struct.anon.6, ptr %link245, i32 0, i32 0, !dbg !1996
  store ptr inttoptr (i64 -1 to ptr), ptr %prev246, align 8, !dbg !1996
  %127 = load ptr, ptr %listener, align 8, !dbg !1996
  %link247 = getelementptr inbounds %struct.controllistener, ptr %127, i32 0, i32 15, !dbg !1996
  %next248 = getelementptr inbounds %struct.anon.6, ptr %link247, i32 0, i32 1, !dbg !1996
  store ptr inttoptr (i64 -1 to ptr), ptr %next248, align 8, !dbg !1996
  %128 = load ptr, ptr %cp.addr, align 8, !dbg !1996
  %listeners249 = getelementptr inbounds %struct.named_controls, ptr %128, i32 0, i32 1, !dbg !1996
  %head250 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners249, i32 0, i32 0, !dbg !1996
  %129 = load ptr, ptr %head250, align 8, !dbg !1996
  %130 = load ptr, ptr %listener, align 8, !dbg !1996
  %cmp251 = icmp ne ptr %129, %130, !dbg !1996
  %lnot253 = xor i1 %cmp251, true, !dbg !1996
  %lnot255 = xor i1 %lnot253, true, !dbg !1996
  %lnot.ext256 = zext i1 %lnot255 to i32, !dbg !1996
  %conv257 = sext i32 %lnot.ext256 to i64, !dbg !1996
  %expval258 = call i64 @llvm.expect.i64(i64 %conv257, i64 1), !dbg !1996
  %tobool259 = icmp ne i64 %expval258, 0, !dbg !1996
  br i1 %tobool259, label %lor.end261, label %lor.rhs260, !dbg !1996

lor.rhs260:                                       ; preds = %if.end244
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 1422, i32 noundef 2, ptr noundef @.str.7) #10, !dbg !1996
  unreachable, !dbg !1996

131:                                              ; No predecessors!
  br label %lor.end261, !dbg !1996

lor.end261:                                       ; preds = %131, %if.end244
  %132 = phi i1 [ true, %if.end244 ], [ false, %131 ]
  %lor.ext262 = zext i1 %132 to i32, !dbg !1996
  %133 = load ptr, ptr %cp.addr, align 8, !dbg !1996
  %listeners263 = getelementptr inbounds %struct.named_controls, ptr %133, i32 0, i32 1, !dbg !1996
  %tail264 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners263, i32 0, i32 1, !dbg !1996
  %134 = load ptr, ptr %tail264, align 8, !dbg !1996
  %135 = load ptr, ptr %listener, align 8, !dbg !1996
  %cmp265 = icmp ne ptr %134, %135, !dbg !1996
  %lnot267 = xor i1 %cmp265, true, !dbg !1996
  %lnot269 = xor i1 %lnot267, true, !dbg !1996
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !1996
  %conv271 = sext i32 %lnot.ext270 to i64, !dbg !1996
  %expval272 = call i64 @llvm.expect.i64(i64 %conv271, i64 1), !dbg !1996
  %tobool273 = icmp ne i64 %expval272, 0, !dbg !1996
  br i1 %tobool273, label %lor.end275, label %lor.rhs274, !dbg !1996

lor.rhs274:                                       ; preds = %lor.end261
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 1422, i32 noundef 2, ptr noundef @.str.8) #10, !dbg !1996
  unreachable, !dbg !1996

136:                                              ; No predecessors!
  br label %lor.end275, !dbg !1996

lor.end275:                                       ; preds = %136, %lor.end261
  %137 = phi i1 [ true, %lor.end261 ], [ false, %136 ]
  %lor.ext276 = zext i1 %137 to i32, !dbg !1996
  br label %do.cond277, !dbg !1996

do.cond277:                                       ; preds = %lor.end275
  br label %do.end278, !dbg !1996

do.end278:                                        ; preds = %do.cond277
  br label %do.cond279, !dbg !1991

do.cond279:                                       ; preds = %do.end278
  br label %do.end280, !dbg !1991

do.end280:                                        ; preds = %do.cond279
  br label %if.end283, !dbg !1991

if.else281:                                       ; preds = %if.end174
  %138 = load ptr, ptr %cp.addr, align 8, !dbg !2003
  %139 = load ptr, ptr %control162, align 8, !dbg !2004
  %140 = load ptr, ptr %config.addr, align 8, !dbg !2005
  %141 = load ptr, ptr %aclconfctx.addr, align 8, !dbg !2006
  %142 = load ptr, ptr %path, align 8, !dbg !2007
  %call282 = call ptr @cfg_obj_asstring(ptr noundef %142), !dbg !2008
  call void @add_listener(ptr noundef %138, ptr noundef %listener, ptr noundef %139, ptr noundef %140, ptr noundef %addr163, ptr noundef %141, ptr noundef %call282, i32 noundef 3), !dbg !2009
  br label %if.end283

if.end283:                                        ; preds = %if.else281, %do.end280
  %143 = load ptr, ptr %listener, align 8, !dbg !2010
  %cmp284 = icmp ne ptr %143, null, !dbg !2012
  br i1 %cmp284, label %if.then286, label %if.end309, !dbg !2013

if.then286:                                       ; preds = %if.end283
  br label %do.body287, !dbg !2014

do.body287:                                       ; preds = %if.then286
  br label %do.body288, !dbg !2015

do.body288:                                       ; preds = %do.body287
  %tail289 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !2017
  %144 = load ptr, ptr %tail289, align 8, !dbg !2017
  %cmp290 = icmp ne ptr %144, null, !dbg !2017
  br i1 %cmp290, label %if.then292, label %if.else296, !dbg !2020

if.then292:                                       ; preds = %do.body288
  %145 = load ptr, ptr %listener, align 8, !dbg !2017
  %tail293 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !2017
  %146 = load ptr, ptr %tail293, align 8, !dbg !2017
  %link294 = getelementptr inbounds %struct.controllistener, ptr %146, i32 0, i32 15, !dbg !2017
  %next295 = getelementptr inbounds %struct.anon.6, ptr %link294, i32 0, i32 1, !dbg !2017
  store ptr %145, ptr %next295, align 8, !dbg !2017
  br label %if.end298, !dbg !2017

if.else296:                                       ; preds = %do.body288
  %147 = load ptr, ptr %listener, align 8, !dbg !2017
  %head297 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 0, !dbg !2017
  store ptr %147, ptr %head297, align 8, !dbg !2017
  br label %if.end298

if.end298:                                        ; preds = %if.else296, %if.then292
  %tail299 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !2020
  %148 = load ptr, ptr %tail299, align 8, !dbg !2020
  %149 = load ptr, ptr %listener, align 8, !dbg !2020
  %link300 = getelementptr inbounds %struct.controllistener, ptr %149, i32 0, i32 15, !dbg !2020
  %prev301 = getelementptr inbounds %struct.anon.6, ptr %link300, i32 0, i32 0, !dbg !2020
  store ptr %148, ptr %prev301, align 8, !dbg !2020
  %150 = load ptr, ptr %listener, align 8, !dbg !2020
  %link302 = getelementptr inbounds %struct.controllistener, ptr %150, i32 0, i32 15, !dbg !2020
  %next303 = getelementptr inbounds %struct.anon.6, ptr %link302, i32 0, i32 1, !dbg !2020
  store ptr null, ptr %next303, align 8, !dbg !2020
  %151 = load ptr, ptr %listener, align 8, !dbg !2020
  %tail304 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !2020
  store ptr %151, ptr %tail304, align 8, !dbg !2020
  br label %do.cond305, !dbg !2020

do.cond305:                                       ; preds = %if.end298
  br label %do.end306, !dbg !2020

do.end306:                                        ; preds = %do.cond305
  br label %do.cond307, !dbg !2015

do.cond307:                                       ; preds = %do.end306
  br label %do.end308, !dbg !2015

do.end308:                                        ; preds = %do.cond307
  br label %if.end309, !dbg !2015

if.end309:                                        ; preds = %do.end308, %if.end283
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2021
  br label %cleanup310, !dbg !2021

cleanup310:                                       ; preds = %if.end309, %if.then170
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 152, ptr %addr163) #9, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #9, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 8, ptr %control162) #9, !dbg !2021
  %cleanup.dest314 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest314, label %unreachable [
    i32 0, label %cleanup.cont315
    i32 23, label %for.inc316
  ]

cleanup.cont315:                                  ; preds = %cleanup310
  br label %for.inc316, !dbg !2022

for.inc316:                                       ; preds = %cleanup.cont315, %cleanup310
  %152 = load ptr, ptr %element2, align 8, !dbg !2023
  %call317 = call ptr @cfg_list_next(ptr noundef %152), !dbg !2024
  store ptr %call317, ptr %element2, align 8, !dbg !2025
  br label %for.cond158, !dbg !2026, !llvm.loop !2027

for.end318:                                       ; preds = %for.cond158
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2029
  br label %cleanup319, !dbg !2029

cleanup319:                                       ; preds = %for.end318, %if.then155
  call void @llvm.lifetime.end.p0(i64 8, ptr %unixcontrols) #9, !dbg !2029
  call void @llvm.lifetime.end.p0(i64 8, ptr %controls150) #9, !dbg !2029
  %cleanup.dest321 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest321, label %unreachable [
    i32 0, label %cleanup.cont322
    i32 20, label %for.inc323
  ]

cleanup.cont322:                                  ; preds = %cleanup319
  br label %for.inc323, !dbg !2030

for.inc323:                                       ; preds = %cleanup.cont322, %cleanup319
  %153 = load ptr, ptr %element, align 8, !dbg !2031
  %call324 = call ptr @cfg_list_next(ptr noundef %153), !dbg !2032
  store ptr %call324, ptr %element, align 8, !dbg !2033
  br label %for.cond146, !dbg !2034, !llvm.loop !2035

for.end325:                                       ; preds = %for.cond146
  br label %if.end490, !dbg !2037

if.else326:                                       ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !2038
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1774, metadata !DIExpression()), !dbg !2039
  store i32 0, ptr %i, align 4, !dbg !2040
  br label %for.cond327, !dbg !2041

for.cond327:                                      ; preds = %for.inc488, %if.else326
  %154 = load i32, ptr %i, align 4, !dbg !2042
  %cmp328 = icmp slt i32 %154, 2, !dbg !2043
  br i1 %cmp328, label %for.body330, label %for.end489, !dbg !2044

for.body330:                                      ; preds = %for.cond327
  call void @llvm.lifetime.start.p0(i64 152, ptr %addr331) #9, !dbg !2045
  tail call void @llvm.dbg.declare(metadata ptr %addr331, metadata !1776, metadata !DIExpression()), !dbg !2046
  %155 = load i32, ptr %i, align 4, !dbg !2047
  %cmp332 = icmp eq i32 %155, 0, !dbg !2048
  br i1 %cmp332, label %if.then334, label %if.else344, !dbg !2049

if.then334:                                       ; preds = %for.body330
  call void @llvm.lifetime.start.p0(i64 4, ptr %localhost) #9, !dbg !2050
  tail call void @llvm.dbg.declare(metadata ptr %localhost, metadata !1780, metadata !DIExpression()), !dbg !2051
  %call335 = call i32 @isc_net_probeipv4(), !dbg !2052
  %cmp336 = icmp ne i32 %call335, 0, !dbg !2054
  br i1 %cmp336, label %if.then338, label %if.end339, !dbg !2055

if.then338:                                       ; preds = %if.then334
  store i32 34, ptr %cleanup.dest.slot, align 4
  br label %cleanup341, !dbg !2056

if.end339:                                        ; preds = %if.then334
  %call340 = call i32 @__bswap_32(i32 noundef 2130706433), !dbg !2057
  %s_addr = getelementptr inbounds %struct.in_addr, ptr %localhost, i32 0, i32 0, !dbg !2058
  store i32 %call340, ptr %s_addr, align 4, !dbg !2059
  call void @isc_sockaddr_fromin(ptr noundef %addr331, ptr noundef %localhost, i16 noundef zeroext 0), !dbg !2060
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2061
  br label %cleanup341, !dbg !2061

cleanup341:                                       ; preds = %if.end339, %if.then338
  call void @llvm.lifetime.end.p0(i64 4, ptr %localhost) #9, !dbg !2061
  %cleanup.dest342 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest342, label %cleanup485 [
    i32 0, label %cleanup.cont343
  ]

cleanup.cont343:                                  ; preds = %cleanup341
  br label %if.end350, !dbg !2062

if.else344:                                       ; preds = %for.body330
  %call345 = call i32 @isc_net_probeipv6(), !dbg !2063
  %cmp346 = icmp ne i32 %call345, 0, !dbg !2066
  br i1 %cmp346, label %if.then348, label %if.end349, !dbg !2067

if.then348:                                       ; preds = %if.else344
  store i32 34, ptr %cleanup.dest.slot, align 4
  br label %cleanup485, !dbg !2068

if.end349:                                        ; preds = %if.else344
  call void @isc_sockaddr_fromin6(ptr noundef %addr331, ptr noundef @in6addr_loopback, i16 noundef zeroext 0), !dbg !2069
  br label %if.end350

if.end350:                                        ; preds = %if.end349, %cleanup.cont343
  call void @isc_sockaddr_setport(ptr noundef %addr331, i16 noundef zeroext 953), !dbg !2070
  %arraydecay351 = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !2071
  call void @isc_sockaddr_format(ptr noundef %addr331, ptr noundef %arraydecay351, i32 noundef 63), !dbg !2072
  %156 = load ptr, ptr %cp.addr, align 8, !dbg !2073
  %arraydecay352 = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !2074
  call void @update_listener(ptr noundef %156, ptr noundef %listener, ptr noundef null, ptr noundef null, ptr noundef %addr331, ptr noundef null, ptr noundef %arraydecay352, i32 noundef 2), !dbg !2075
  %157 = load ptr, ptr %listener, align 8, !dbg !2076
  %cmp353 = icmp ne ptr %157, null, !dbg !2078
  br i1 %cmp353, label %if.then355, label %if.else456, !dbg !2079

if.then355:                                       ; preds = %if.end350
  br label %do.body356, !dbg !2080

do.body356:                                       ; preds = %if.then355
  br label %do.body357, !dbg !2081

do.body357:                                       ; preds = %do.body356
  %158 = load ptr, ptr %listener, align 8, !dbg !2083
  %link358 = getelementptr inbounds %struct.controllistener, ptr %158, i32 0, i32 15, !dbg !2083
  %next359 = getelementptr inbounds %struct.anon.6, ptr %link358, i32 0, i32 1, !dbg !2083
  %159 = load ptr, ptr %next359, align 8, !dbg !2083
  %cmp360 = icmp ne ptr %159, null, !dbg !2083
  br i1 %cmp360, label %if.then362, label %if.else369, !dbg !2086

if.then362:                                       ; preds = %do.body357
  %160 = load ptr, ptr %listener, align 8, !dbg !2083
  %link363 = getelementptr inbounds %struct.controllistener, ptr %160, i32 0, i32 15, !dbg !2083
  %prev364 = getelementptr inbounds %struct.anon.6, ptr %link363, i32 0, i32 0, !dbg !2083
  %161 = load ptr, ptr %prev364, align 8, !dbg !2083
  %162 = load ptr, ptr %listener, align 8, !dbg !2083
  %link365 = getelementptr inbounds %struct.controllistener, ptr %162, i32 0, i32 15, !dbg !2083
  %next366 = getelementptr inbounds %struct.anon.6, ptr %link365, i32 0, i32 1, !dbg !2083
  %163 = load ptr, ptr %next366, align 8, !dbg !2083
  %link367 = getelementptr inbounds %struct.controllistener, ptr %163, i32 0, i32 15, !dbg !2083
  %prev368 = getelementptr inbounds %struct.anon.6, ptr %link367, i32 0, i32 0, !dbg !2083
  store ptr %161, ptr %prev368, align 8, !dbg !2083
  br label %if.end388, !dbg !2083

if.else369:                                       ; preds = %do.body357
  %164 = load ptr, ptr %cp.addr, align 8, !dbg !2087
  %listeners370 = getelementptr inbounds %struct.named_controls, ptr %164, i32 0, i32 1, !dbg !2087
  %tail371 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners370, i32 0, i32 1, !dbg !2087
  %165 = load ptr, ptr %tail371, align 8, !dbg !2087
  %166 = load ptr, ptr %listener, align 8, !dbg !2087
  %cmp372 = icmp eq ptr %165, %166, !dbg !2087
  %lnot374 = xor i1 %cmp372, true, !dbg !2087
  %lnot376 = xor i1 %lnot374, true, !dbg !2087
  %lnot.ext377 = zext i1 %lnot376 to i32, !dbg !2087
  %conv378 = sext i32 %lnot.ext377 to i64, !dbg !2087
  %expval379 = call i64 @llvm.expect.i64(i64 %conv378, i64 1), !dbg !2087
  %tobool380 = icmp ne i64 %expval379, 0, !dbg !2087
  br i1 %tobool380, label %lor.end382, label %lor.rhs381, !dbg !2087

lor.rhs381:                                       ; preds = %if.else369
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 1470, i32 noundef 2, ptr noundef @.str.5) #10, !dbg !2087
  unreachable, !dbg !2087

167:                                              ; No predecessors!
  br label %lor.end382, !dbg !2087

lor.end382:                                       ; preds = %167, %if.else369
  %168 = phi i1 [ true, %if.else369 ], [ false, %167 ]
  %lor.ext383 = zext i1 %168 to i32, !dbg !2087
  %169 = load ptr, ptr %listener, align 8, !dbg !2087
  %link384 = getelementptr inbounds %struct.controllistener, ptr %169, i32 0, i32 15, !dbg !2087
  %prev385 = getelementptr inbounds %struct.anon.6, ptr %link384, i32 0, i32 0, !dbg !2087
  %170 = load ptr, ptr %prev385, align 8, !dbg !2087
  %171 = load ptr, ptr %cp.addr, align 8, !dbg !2087
  %listeners386 = getelementptr inbounds %struct.named_controls, ptr %171, i32 0, i32 1, !dbg !2087
  %tail387 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners386, i32 0, i32 1, !dbg !2087
  store ptr %170, ptr %tail387, align 8, !dbg !2087
  br label %if.end388

if.end388:                                        ; preds = %lor.end382, %if.then362
  %172 = load ptr, ptr %listener, align 8, !dbg !2089
  %link389 = getelementptr inbounds %struct.controllistener, ptr %172, i32 0, i32 15, !dbg !2089
  %prev390 = getelementptr inbounds %struct.anon.6, ptr %link389, i32 0, i32 0, !dbg !2089
  %173 = load ptr, ptr %prev390, align 8, !dbg !2089
  %cmp391 = icmp ne ptr %173, null, !dbg !2089
  br i1 %cmp391, label %if.then393, label %if.else400, !dbg !2086

if.then393:                                       ; preds = %if.end388
  %174 = load ptr, ptr %listener, align 8, !dbg !2089
  %link394 = getelementptr inbounds %struct.controllistener, ptr %174, i32 0, i32 15, !dbg !2089
  %next395 = getelementptr inbounds %struct.anon.6, ptr %link394, i32 0, i32 1, !dbg !2089
  %175 = load ptr, ptr %next395, align 8, !dbg !2089
  %176 = load ptr, ptr %listener, align 8, !dbg !2089
  %link396 = getelementptr inbounds %struct.controllistener, ptr %176, i32 0, i32 15, !dbg !2089
  %prev397 = getelementptr inbounds %struct.anon.6, ptr %link396, i32 0, i32 0, !dbg !2089
  %177 = load ptr, ptr %prev397, align 8, !dbg !2089
  %link398 = getelementptr inbounds %struct.controllistener, ptr %177, i32 0, i32 15, !dbg !2089
  %next399 = getelementptr inbounds %struct.anon.6, ptr %link398, i32 0, i32 1, !dbg !2089
  store ptr %175, ptr %next399, align 8, !dbg !2089
  br label %if.end419, !dbg !2089

if.else400:                                       ; preds = %if.end388
  %178 = load ptr, ptr %cp.addr, align 8, !dbg !2091
  %listeners401 = getelementptr inbounds %struct.named_controls, ptr %178, i32 0, i32 1, !dbg !2091
  %head402 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners401, i32 0, i32 0, !dbg !2091
  %179 = load ptr, ptr %head402, align 8, !dbg !2091
  %180 = load ptr, ptr %listener, align 8, !dbg !2091
  %cmp403 = icmp eq ptr %179, %180, !dbg !2091
  %lnot405 = xor i1 %cmp403, true, !dbg !2091
  %lnot407 = xor i1 %lnot405, true, !dbg !2091
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !2091
  %conv409 = sext i32 %lnot.ext408 to i64, !dbg !2091
  %expval410 = call i64 @llvm.expect.i64(i64 %conv409, i64 1), !dbg !2091
  %tobool411 = icmp ne i64 %expval410, 0, !dbg !2091
  br i1 %tobool411, label %lor.end413, label %lor.rhs412, !dbg !2091

lor.rhs412:                                       ; preds = %if.else400
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 1470, i32 noundef 2, ptr noundef @.str.6) #10, !dbg !2091
  unreachable, !dbg !2091

181:                                              ; No predecessors!
  br label %lor.end413, !dbg !2091

lor.end413:                                       ; preds = %181, %if.else400
  %182 = phi i1 [ true, %if.else400 ], [ false, %181 ]
  %lor.ext414 = zext i1 %182 to i32, !dbg !2091
  %183 = load ptr, ptr %listener, align 8, !dbg !2091
  %link415 = getelementptr inbounds %struct.controllistener, ptr %183, i32 0, i32 15, !dbg !2091
  %next416 = getelementptr inbounds %struct.anon.6, ptr %link415, i32 0, i32 1, !dbg !2091
  %184 = load ptr, ptr %next416, align 8, !dbg !2091
  %185 = load ptr, ptr %cp.addr, align 8, !dbg !2091
  %listeners417 = getelementptr inbounds %struct.named_controls, ptr %185, i32 0, i32 1, !dbg !2091
  %head418 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners417, i32 0, i32 0, !dbg !2091
  store ptr %184, ptr %head418, align 8, !dbg !2091
  br label %if.end419

if.end419:                                        ; preds = %lor.end413, %if.then393
  %186 = load ptr, ptr %listener, align 8, !dbg !2086
  %link420 = getelementptr inbounds %struct.controllistener, ptr %186, i32 0, i32 15, !dbg !2086
  %prev421 = getelementptr inbounds %struct.anon.6, ptr %link420, i32 0, i32 0, !dbg !2086
  store ptr inttoptr (i64 -1 to ptr), ptr %prev421, align 8, !dbg !2086
  %187 = load ptr, ptr %listener, align 8, !dbg !2086
  %link422 = getelementptr inbounds %struct.controllistener, ptr %187, i32 0, i32 15, !dbg !2086
  %next423 = getelementptr inbounds %struct.anon.6, ptr %link422, i32 0, i32 1, !dbg !2086
  store ptr inttoptr (i64 -1 to ptr), ptr %next423, align 8, !dbg !2086
  %188 = load ptr, ptr %cp.addr, align 8, !dbg !2086
  %listeners424 = getelementptr inbounds %struct.named_controls, ptr %188, i32 0, i32 1, !dbg !2086
  %head425 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners424, i32 0, i32 0, !dbg !2086
  %189 = load ptr, ptr %head425, align 8, !dbg !2086
  %190 = load ptr, ptr %listener, align 8, !dbg !2086
  %cmp426 = icmp ne ptr %189, %190, !dbg !2086
  %lnot428 = xor i1 %cmp426, true, !dbg !2086
  %lnot430 = xor i1 %lnot428, true, !dbg !2086
  %lnot.ext431 = zext i1 %lnot430 to i32, !dbg !2086
  %conv432 = sext i32 %lnot.ext431 to i64, !dbg !2086
  %expval433 = call i64 @llvm.expect.i64(i64 %conv432, i64 1), !dbg !2086
  %tobool434 = icmp ne i64 %expval433, 0, !dbg !2086
  br i1 %tobool434, label %lor.end436, label %lor.rhs435, !dbg !2086

lor.rhs435:                                       ; preds = %if.end419
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 1470, i32 noundef 2, ptr noundef @.str.7) #10, !dbg !2086
  unreachable, !dbg !2086

191:                                              ; No predecessors!
  br label %lor.end436, !dbg !2086

lor.end436:                                       ; preds = %191, %if.end419
  %192 = phi i1 [ true, %if.end419 ], [ false, %191 ]
  %lor.ext437 = zext i1 %192 to i32, !dbg !2086
  %193 = load ptr, ptr %cp.addr, align 8, !dbg !2086
  %listeners438 = getelementptr inbounds %struct.named_controls, ptr %193, i32 0, i32 1, !dbg !2086
  %tail439 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners438, i32 0, i32 1, !dbg !2086
  %194 = load ptr, ptr %tail439, align 8, !dbg !2086
  %195 = load ptr, ptr %listener, align 8, !dbg !2086
  %cmp440 = icmp ne ptr %194, %195, !dbg !2086
  %lnot442 = xor i1 %cmp440, true, !dbg !2086
  %lnot444 = xor i1 %lnot442, true, !dbg !2086
  %lnot.ext445 = zext i1 %lnot444 to i32, !dbg !2086
  %conv446 = sext i32 %lnot.ext445 to i64, !dbg !2086
  %expval447 = call i64 @llvm.expect.i64(i64 %conv446, i64 1), !dbg !2086
  %tobool448 = icmp ne i64 %expval447, 0, !dbg !2086
  br i1 %tobool448, label %lor.end450, label %lor.rhs449, !dbg !2086

lor.rhs449:                                       ; preds = %lor.end436
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 1470, i32 noundef 2, ptr noundef @.str.8) #10, !dbg !2086
  unreachable, !dbg !2086

196:                                              ; No predecessors!
  br label %lor.end450, !dbg !2086

lor.end450:                                       ; preds = %196, %lor.end436
  %197 = phi i1 [ true, %lor.end436 ], [ false, %196 ]
  %lor.ext451 = zext i1 %197 to i32, !dbg !2086
  br label %do.cond452, !dbg !2086

do.cond452:                                       ; preds = %lor.end450
  br label %do.end453, !dbg !2086

do.end453:                                        ; preds = %do.cond452
  br label %do.cond454, !dbg !2081

do.cond454:                                       ; preds = %do.end453
  br label %do.end455, !dbg !2081

do.end455:                                        ; preds = %do.cond454
  br label %if.end458, !dbg !2081

if.else456:                                       ; preds = %if.end350
  %198 = load ptr, ptr %cp.addr, align 8, !dbg !2093
  %arraydecay457 = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !2094
  call void @add_listener(ptr noundef %198, ptr noundef %listener, ptr noundef null, ptr noundef null, ptr noundef %addr331, ptr noundef null, ptr noundef %arraydecay457, i32 noundef 2), !dbg !2095
  br label %if.end458

if.end458:                                        ; preds = %if.else456, %do.end455
  %199 = load ptr, ptr %listener, align 8, !dbg !2096
  %cmp459 = icmp ne ptr %199, null, !dbg !2098
  br i1 %cmp459, label %if.then461, label %if.end484, !dbg !2099

if.then461:                                       ; preds = %if.end458
  br label %do.body462, !dbg !2100

do.body462:                                       ; preds = %if.then461
  br label %do.body463, !dbg !2101

do.body463:                                       ; preds = %do.body462
  %tail464 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !2103
  %200 = load ptr, ptr %tail464, align 8, !dbg !2103
  %cmp465 = icmp ne ptr %200, null, !dbg !2103
  br i1 %cmp465, label %if.then467, label %if.else471, !dbg !2106

if.then467:                                       ; preds = %do.body463
  %201 = load ptr, ptr %listener, align 8, !dbg !2103
  %tail468 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !2103
  %202 = load ptr, ptr %tail468, align 8, !dbg !2103
  %link469 = getelementptr inbounds %struct.controllistener, ptr %202, i32 0, i32 15, !dbg !2103
  %next470 = getelementptr inbounds %struct.anon.6, ptr %link469, i32 0, i32 1, !dbg !2103
  store ptr %201, ptr %next470, align 8, !dbg !2103
  br label %if.end473, !dbg !2103

if.else471:                                       ; preds = %do.body463
  %203 = load ptr, ptr %listener, align 8, !dbg !2103
  %head472 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 0, !dbg !2103
  store ptr %203, ptr %head472, align 8, !dbg !2103
  br label %if.end473

if.end473:                                        ; preds = %if.else471, %if.then467
  %tail474 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !2106
  %204 = load ptr, ptr %tail474, align 8, !dbg !2106
  %205 = load ptr, ptr %listener, align 8, !dbg !2106
  %link475 = getelementptr inbounds %struct.controllistener, ptr %205, i32 0, i32 15, !dbg !2106
  %prev476 = getelementptr inbounds %struct.anon.6, ptr %link475, i32 0, i32 0, !dbg !2106
  store ptr %204, ptr %prev476, align 8, !dbg !2106
  %206 = load ptr, ptr %listener, align 8, !dbg !2106
  %link477 = getelementptr inbounds %struct.controllistener, ptr %206, i32 0, i32 15, !dbg !2106
  %next478 = getelementptr inbounds %struct.anon.6, ptr %link477, i32 0, i32 1, !dbg !2106
  store ptr null, ptr %next478, align 8, !dbg !2106
  %207 = load ptr, ptr %listener, align 8, !dbg !2106
  %tail479 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !2106
  store ptr %207, ptr %tail479, align 8, !dbg !2106
  br label %do.cond480, !dbg !2106

do.cond480:                                       ; preds = %if.end473
  br label %do.end481, !dbg !2106

do.end481:                                        ; preds = %do.cond480
  br label %do.cond482, !dbg !2101

do.cond482:                                       ; preds = %do.end481
  br label %do.end483, !dbg !2101

do.end483:                                        ; preds = %do.cond482
  br label %if.end484, !dbg !2101

if.end484:                                        ; preds = %do.end483, %if.end458
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2107
  br label %cleanup485, !dbg !2107

cleanup485:                                       ; preds = %if.end484, %if.then348, %cleanup341
  call void @llvm.lifetime.end.p0(i64 152, ptr %addr331) #9, !dbg !2107
  %cleanup.dest486 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest486, label %unreachable [
    i32 0, label %cleanup.cont487
    i32 34, label %for.inc488
  ]

cleanup.cont487:                                  ; preds = %cleanup485
  br label %for.inc488, !dbg !2108

for.inc488:                                       ; preds = %cleanup.cont487, %cleanup485
  %208 = load i32, ptr %i, align 4, !dbg !2109
  %inc = add nsw i32 %208, 1, !dbg !2109
  store i32 %inc, ptr %i, align 4, !dbg !2109
  br label %for.cond327, !dbg !2110, !llvm.loop !2111

for.end489:                                       ; preds = %for.cond327
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !2113
  br label %if.end490

if.end490:                                        ; preds = %for.end489, %for.end325
  %209 = load ptr, ptr %cp.addr, align 8, !dbg !2114
  call void @controls_shutdown(ptr noundef %209), !dbg !2115
  br label %do.body491, !dbg !2116

do.body491:                                       ; preds = %if.end490
  %210 = load ptr, ptr %cp.addr, align 8, !dbg !2117
  %listeners492 = getelementptr inbounds %struct.named_controls, ptr %210, i32 0, i32 1, !dbg !2117
  %head493 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners492, i32 0, i32 0, !dbg !2117
  %211 = load ptr, ptr %head493, align 8, !dbg !2117
  %cmp494 = icmp eq ptr %211, null, !dbg !2117
  br i1 %cmp494, label %if.then496, label %if.else498, !dbg !2120

if.then496:                                       ; preds = %do.body491
  %212 = load ptr, ptr %cp.addr, align 8, !dbg !2117
  %listeners497 = getelementptr inbounds %struct.named_controls, ptr %212, i32 0, i32 1, !dbg !2117
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %listeners497, ptr align 8 %new_listeners, i64 16, i1 false), !dbg !2117
  br label %if.end517, !dbg !2117

if.else498:                                       ; preds = %do.body491
  %head499 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 0, !dbg !2121
  %213 = load ptr, ptr %head499, align 8, !dbg !2121
  %cmp500 = icmp eq ptr %213, null, !dbg !2121
  br i1 %cmp500, label %if.end516, label %if.then502, !dbg !2117

if.then502:                                       ; preds = %if.else498
  %head503 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 0, !dbg !2123
  %214 = load ptr, ptr %head503, align 8, !dbg !2123
  %215 = load ptr, ptr %cp.addr, align 8, !dbg !2123
  %listeners504 = getelementptr inbounds %struct.named_controls, ptr %215, i32 0, i32 1, !dbg !2123
  %tail505 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners504, i32 0, i32 1, !dbg !2123
  %216 = load ptr, ptr %tail505, align 8, !dbg !2123
  %link506 = getelementptr inbounds %struct.controllistener, ptr %216, i32 0, i32 15, !dbg !2123
  %next507 = getelementptr inbounds %struct.anon.6, ptr %link506, i32 0, i32 1, !dbg !2123
  store ptr %214, ptr %next507, align 8, !dbg !2123
  %217 = load ptr, ptr %cp.addr, align 8, !dbg !2123
  %listeners508 = getelementptr inbounds %struct.named_controls, ptr %217, i32 0, i32 1, !dbg !2123
  %tail509 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners508, i32 0, i32 1, !dbg !2123
  %218 = load ptr, ptr %tail509, align 8, !dbg !2123
  %head510 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 0, !dbg !2123
  %219 = load ptr, ptr %head510, align 8, !dbg !2123
  %link511 = getelementptr inbounds %struct.controllistener, ptr %219, i32 0, i32 15, !dbg !2123
  %prev512 = getelementptr inbounds %struct.anon.6, ptr %link511, i32 0, i32 0, !dbg !2123
  store ptr %218, ptr %prev512, align 8, !dbg !2123
  %tail513 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !2123
  %220 = load ptr, ptr %tail513, align 8, !dbg !2123
  %221 = load ptr, ptr %cp.addr, align 8, !dbg !2123
  %listeners514 = getelementptr inbounds %struct.named_controls, ptr %221, i32 0, i32 1, !dbg !2123
  %tail515 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners514, i32 0, i32 1, !dbg !2123
  store ptr %220, ptr %tail515, align 8, !dbg !2123
  br label %if.end516, !dbg !2123

if.end516:                                        ; preds = %if.then502, %if.else498
  br label %if.end517

if.end517:                                        ; preds = %if.end516, %if.then496
  %head518 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 0, !dbg !2120
  store ptr null, ptr %head518, align 8, !dbg !2120
  %tail519 = getelementptr inbounds %struct.controllistenerlist_t, ptr %new_listeners, i32 0, i32 1, !dbg !2120
  store ptr null, ptr %tail519, align 8, !dbg !2120
  br label %do.cond520, !dbg !2120

do.cond520:                                       ; preds = %if.end517
  br label %do.end521, !dbg !2120

do.end521:                                        ; preds = %do.cond520
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 63, ptr %socktext) #9, !dbg !2125
  call void @llvm.lifetime.end.p0(i64 8, ptr %element2) #9, !dbg !2125
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #9, !dbg !2125
  call void @llvm.lifetime.end.p0(i64 8, ptr %controlslist) #9, !dbg !2125
  call void @llvm.lifetime.end.p0(i64 16, ptr %new_listeners) #9, !dbg !2125
  call void @llvm.lifetime.end.p0(i64 8, ptr %listener) #9, !dbg !2125
  ret i32 0, !dbg !2126

unreachable:                                      ; preds = %cleanup485, %cleanup319, %cleanup310, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare !dbg !2127 i32 @cfg_map_get(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2131 ptr @cfg_list_first(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2134 ptr @cfg_listelt_value(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2138 ptr @cfg_tuple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2141 ptr @cfg_obj_assockaddr(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !2146 zeroext i16 @isc_sockaddr_getport(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2149 void @isc_sockaddr_setport(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2152 void @isc_sockaddr_format(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2155 void @isc_log_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @update_listener(ptr noundef %cp, ptr noundef %listenerp, ptr noundef %control, ptr noundef %config, ptr noundef %addr, ptr noundef %aclconfctx, ptr noundef %socktext, i32 noundef %type) #0 !dbg !2174 {
entry:
  %cp.addr = alloca ptr, align 8
  %listenerp.addr = alloca ptr, align 8
  %control.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %aclconfctx.addr = alloca ptr, align 8
  %socktext.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %listener = alloca ptr, align 8
  %allow = alloca ptr, align 8
  %global_keylist = alloca ptr, align 8
  %control_keylist = alloca ptr, align 8
  %new_acl = alloca ptr, align 8
  %keys = alloca %struct.controlkeylist_t, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %readonly = alloca ptr, align 8
  %perm = alloca i32, align 4
  %owner = alloca i32, align 4
  %group = alloca i32, align 4
  store ptr %cp, ptr %cp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cp.addr, metadata !2179, metadata !DIExpression()), !dbg !2202
  store ptr %listenerp, ptr %listenerp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %listenerp.addr, metadata !2180, metadata !DIExpression()), !dbg !2203
  store ptr %control, ptr %control.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %control.addr, metadata !2181, metadata !DIExpression()), !dbg !2204
  store ptr %config, ptr %config.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %config.addr, metadata !2182, metadata !DIExpression()), !dbg !2205
  store ptr %addr, ptr %addr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2183, metadata !DIExpression()), !dbg !2206
  store ptr %aclconfctx, ptr %aclconfctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %aclconfctx.addr, metadata !2184, metadata !DIExpression()), !dbg !2207
  store ptr %socktext, ptr %socktext.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %socktext.addr, metadata !2185, metadata !DIExpression()), !dbg !2208
  store i32 %type, ptr %type.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2186, metadata !DIExpression()), !dbg !2209
  call void @llvm.lifetime.start.p0(i64 8, ptr %listener) #9, !dbg !2210
  tail call void @llvm.dbg.declare(metadata ptr %listener, metadata !2187, metadata !DIExpression()), !dbg !2211
  call void @llvm.lifetime.start.p0(i64 8, ptr %allow) #9, !dbg !2212
  tail call void @llvm.dbg.declare(metadata ptr %allow, metadata !2188, metadata !DIExpression()), !dbg !2213
  call void @llvm.lifetime.start.p0(i64 8, ptr %global_keylist) #9, !dbg !2214
  tail call void @llvm.dbg.declare(metadata ptr %global_keylist, metadata !2189, metadata !DIExpression()), !dbg !2215
  store ptr null, ptr %global_keylist, align 8, !dbg !2215
  call void @llvm.lifetime.start.p0(i64 8, ptr %control_keylist) #9, !dbg !2216
  tail call void @llvm.dbg.declare(metadata ptr %control_keylist, metadata !2190, metadata !DIExpression()), !dbg !2217
  store ptr null, ptr %control_keylist, align 8, !dbg !2217
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_acl) #9, !dbg !2218
  tail call void @llvm.dbg.declare(metadata ptr %new_acl, metadata !2191, metadata !DIExpression()), !dbg !2219
  store ptr null, ptr %new_acl, align 8, !dbg !2219
  call void @llvm.lifetime.start.p0(i64 16, ptr %keys) #9, !dbg !2220
  tail call void @llvm.dbg.declare(metadata ptr %keys, metadata !2192, metadata !DIExpression()), !dbg !2221
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !2222
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2193, metadata !DIExpression()), !dbg !2223
  store i32 0, ptr %result, align 4, !dbg !2223
  %0 = load ptr, ptr %cp.addr, align 8, !dbg !2224
  %listeners = getelementptr inbounds %struct.named_controls, ptr %0, i32 0, i32 1, !dbg !2224
  %head = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners, i32 0, i32 0, !dbg !2224
  %1 = load ptr, ptr %head, align 8, !dbg !2224
  store ptr %1, ptr %listener, align 8, !dbg !2226
  br label %for.cond, !dbg !2227

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %listener, align 8, !dbg !2228
  %cmp = icmp ne ptr %2, null, !dbg !2230
  br i1 %cmp, label %for.body, label %for.end, !dbg !2231

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2232
  %4 = load ptr, ptr %listener, align 8, !dbg !2234
  %address = getelementptr inbounds %struct.controllistener, ptr %4, i32 0, i32 3, !dbg !2235
  %call = call zeroext i1 @isc_sockaddr_equal(ptr noundef %3, ptr noundef %address), !dbg !2236
  br i1 %call, label %if.then, label %if.end, !dbg !2237

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !2238

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2239

for.inc:                                          ; preds = %if.end
  %5 = load ptr, ptr %listener, align 8, !dbg !2240
  %link = getelementptr inbounds %struct.controllistener, ptr %5, i32 0, i32 15, !dbg !2240
  %next = getelementptr inbounds %struct.anon.6, ptr %link, i32 0, i32 1, !dbg !2240
  %6 = load ptr, ptr %next, align 8, !dbg !2240
  store ptr %6, ptr %listener, align 8, !dbg !2241
  br label %for.cond, !dbg !2242, !llvm.loop !2243

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load ptr, ptr %listener, align 8, !dbg !2245
  %cmp1 = icmp eq ptr %7, null, !dbg !2247
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2248

if.then2:                                         ; preds = %for.end
  %8 = load ptr, ptr %listenerp.addr, align 8, !dbg !2249
  store ptr null, ptr %8, align 8, !dbg !2251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2252

if.end3:                                          ; preds = %for.end
  %9 = load ptr, ptr %control.addr, align 8, !dbg !2253
  %cmp4 = icmp ne ptr %9, null, !dbg !2255
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2256

if.then5:                                         ; preds = %if.end3
  %10 = load ptr, ptr %config.addr, align 8, !dbg !2257
  %11 = load ptr, ptr %control.addr, align 8, !dbg !2258
  call void @get_key_info(ptr noundef %10, ptr noundef %11, ptr noundef %global_keylist, ptr noundef %control_keylist), !dbg !2259
  br label %if.end6, !dbg !2259

if.end6:                                          ; preds = %if.then5, %if.end3
  %12 = load ptr, ptr %control_keylist, align 8, !dbg !2260
  %cmp7 = icmp ne ptr %12, null, !dbg !2262
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !2263

if.then8:                                         ; preds = %if.end6
  %13 = load ptr, ptr %global_keylist, align 8, !dbg !2264
  %cmp9 = icmp ne ptr %13, null, !dbg !2264
  %lnot = xor i1 %cmp9, true, !dbg !2264
  %lnot10 = xor i1 %lnot, true, !dbg !2264
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !2264
  %conv = sext i32 %lnot.ext to i64, !dbg !2264
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2264
  %tobool = icmp ne i64 %expval, 0, !dbg !2264
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2264

lor.rhs:                                          ; preds = %if.then8
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 1019, i32 noundef 2, ptr noundef @.str.30) #10, !dbg !2264
  unreachable, !dbg !2264

14:                                               ; No predecessors!
  br label %lor.end, !dbg !2264

lor.end:                                          ; preds = %14, %if.then8
  %15 = phi i1 [ true, %if.then8 ], [ false, %14 ]
  %lor.ext = zext i1 %15 to i32, !dbg !2264
  br label %do.body, !dbg !2266

do.body:                                          ; preds = %lor.end
  %head11 = getelementptr inbounds %struct.controlkeylist_t, ptr %keys, i32 0, i32 0, !dbg !2267
  store ptr null, ptr %head11, align 8, !dbg !2267
  %tail = getelementptr inbounds %struct.controlkeylist_t, ptr %keys, i32 0, i32 1, !dbg !2267
  store ptr null, ptr %tail, align 8, !dbg !2267
  br label %do.cond, !dbg !2267

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2267

do.end:                                           ; preds = %do.cond
  %16 = load ptr, ptr %control_keylist, align 8, !dbg !2269
  %17 = load ptr, ptr %listener, align 8, !dbg !2270
  %mctx = getelementptr inbounds %struct.controllistener, ptr %17, i32 0, i32 1, !dbg !2271
  %18 = load ptr, ptr %mctx, align 8, !dbg !2271
  %call12 = call i32 @controlkeylist_fromcfg(ptr noundef %16, ptr noundef %18, ptr noundef %keys), !dbg !2272
  store i32 %call12, ptr %result, align 4, !dbg !2273
  %19 = load i32, ptr %result, align 4, !dbg !2274
  %cmp13 = icmp eq i32 %19, 0, !dbg !2276
  br i1 %cmp13, label %if.then15, label %if.end21, !dbg !2277

if.then15:                                        ; preds = %do.end
  %20 = load ptr, ptr %listener, align 8, !dbg !2278
  %keys16 = getelementptr inbounds %struct.controllistener, ptr %20, i32 0, i32 8, !dbg !2280
  %21 = load ptr, ptr %listener, align 8, !dbg !2281
  %mctx17 = getelementptr inbounds %struct.controllistener, ptr %21, i32 0, i32 1, !dbg !2282
  %22 = load ptr, ptr %mctx17, align 8, !dbg !2282
  call void @free_controlkeylist(ptr noundef %keys16, ptr noundef %22), !dbg !2283
  %23 = load ptr, ptr %listener, align 8, !dbg !2284
  %keys18 = getelementptr inbounds %struct.controllistener, ptr %23, i32 0, i32 8, !dbg !2285
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %keys18, ptr align 8 %keys, i64 16, i1 false), !dbg !2286
  %24 = load ptr, ptr %control.addr, align 8, !dbg !2287
  %25 = load ptr, ptr %global_keylist, align 8, !dbg !2288
  %26 = load ptr, ptr %listener, align 8, !dbg !2289
  %keys19 = getelementptr inbounds %struct.controllistener, ptr %26, i32 0, i32 8, !dbg !2290
  %27 = load ptr, ptr %listener, align 8, !dbg !2291
  %mctx20 = getelementptr inbounds %struct.controllistener, ptr %27, i32 0, i32 1, !dbg !2292
  %28 = load ptr, ptr %mctx20, align 8, !dbg !2292
  %29 = load ptr, ptr %socktext.addr, align 8, !dbg !2293
  call void @register_keys(ptr noundef %24, ptr noundef %25, ptr noundef %keys19, ptr noundef %28, ptr noundef %29), !dbg !2294
  br label %if.end21, !dbg !2295

if.end21:                                         ; preds = %if.then15, %do.end
  br label %if.end27, !dbg !2296

if.else:                                          ; preds = %if.end6
  %30 = load ptr, ptr %listener, align 8, !dbg !2297
  %keys22 = getelementptr inbounds %struct.controllistener, ptr %30, i32 0, i32 8, !dbg !2299
  %31 = load ptr, ptr %listener, align 8, !dbg !2300
  %mctx23 = getelementptr inbounds %struct.controllistener, ptr %31, i32 0, i32 1, !dbg !2301
  %32 = load ptr, ptr %mctx23, align 8, !dbg !2301
  call void @free_controlkeylist(ptr noundef %keys22, ptr noundef %32), !dbg !2302
  %33 = load ptr, ptr %listener, align 8, !dbg !2303
  %mctx24 = getelementptr inbounds %struct.controllistener, ptr %33, i32 0, i32 1, !dbg !2304
  %34 = load ptr, ptr %mctx24, align 8, !dbg !2304
  %35 = load ptr, ptr %listener, align 8, !dbg !2305
  %keys25 = getelementptr inbounds %struct.controllistener, ptr %35, i32 0, i32 8, !dbg !2306
  %call26 = call i32 @get_rndckey(ptr noundef %34, ptr noundef %keys25), !dbg !2307
  store i32 %call26, ptr %result, align 4, !dbg !2308
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end21
  %36 = load i32, ptr %result, align 4, !dbg !2309
  %cmp28 = icmp ne i32 %36, 0, !dbg !2311
  br i1 %cmp28, label %land.lhs.true, label %if.end40, !dbg !2312

land.lhs.true:                                    ; preds = %if.end27
  %37 = load ptr, ptr %global_keylist, align 8, !dbg !2313
  %cmp30 = icmp ne ptr %37, null, !dbg !2314
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !2315

if.then32:                                        ; preds = %land.lhs.true
  %38 = load ptr, ptr %control.addr, align 8, !dbg !2316
  %cmp33 = icmp ne ptr %38, null, !dbg !2319
  br i1 %cmp33, label %if.then35, label %if.else37, !dbg !2320

if.then35:                                        ; preds = %if.then32
  %39 = load ptr, ptr %control.addr, align 8, !dbg !2321
  %40 = load ptr, ptr @named_g_lctx, align 8, !dbg !2322
  %41 = load ptr, ptr %socktext.addr, align 8, !dbg !2323
  %42 = load i32, ptr %result, align 4, !dbg !2324
  %call36 = call ptr @isc_result_totext(i32 noundef %42), !dbg !2325
  call void (ptr, ptr, i32, ptr, ...) @cfg_obj_log(ptr noundef %39, ptr noundef %40, i32 noundef -3, ptr noundef @.str.31, ptr noundef %41, ptr noundef %call36), !dbg !2326
  br label %if.end39, !dbg !2326

if.else37:                                        ; preds = %if.then32
  %43 = load ptr, ptr @named_g_lctx, align 8, !dbg !2327
  %44 = load ptr, ptr @named_g_modules, align 8, !dbg !2328
  %arrayidx = getelementptr inbounds %struct.isc_logmodule, ptr %44, i64 2, !dbg !2328
  %45 = load ptr, ptr %socktext.addr, align 8, !dbg !2329
  %46 = load i32, ptr %result, align 4, !dbg !2330
  %call38 = call ptr @isc_result_totext(i32 noundef %46), !dbg !2331
  call void (ptr, ptr, ptr, i32, ptr, ...) @isc_log_write(ptr noundef %43, ptr noundef getelementptr inbounds ([0 x %struct.isc_logcategory], ptr @isc_categories, i64 0, i64 1), ptr noundef %arrayidx, i32 noundef -3, ptr noundef @.str.31, ptr noundef %45, ptr noundef %call38), !dbg !2332
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.then35
  br label %if.end40, !dbg !2333

if.end40:                                         ; preds = %if.end39, %land.lhs.true, %if.end27
  %47 = load ptr, ptr %control.addr, align 8, !dbg !2334
  %cmp41 = icmp ne ptr %47, null, !dbg !2336
  br i1 %cmp41, label %land.lhs.true43, label %if.else50, !dbg !2337

land.lhs.true43:                                  ; preds = %if.end40
  %48 = load i32, ptr %type.addr, align 4, !dbg !2338
  %cmp44 = icmp eq i32 %48, 2, !dbg !2339
  br i1 %cmp44, label %if.then46, label %if.else50, !dbg !2340

if.then46:                                        ; preds = %land.lhs.true43
  %49 = load ptr, ptr %control.addr, align 8, !dbg !2341
  %call47 = call ptr @cfg_tuple_get(ptr noundef %49, ptr noundef @.str.32), !dbg !2343
  store ptr %call47, ptr %allow, align 8, !dbg !2344
  %50 = load ptr, ptr %allow, align 8, !dbg !2345
  %51 = load ptr, ptr %config.addr, align 8, !dbg !2346
  %52 = load ptr, ptr @named_g_lctx, align 8, !dbg !2347
  %53 = load ptr, ptr %aclconfctx.addr, align 8, !dbg !2348
  %54 = load ptr, ptr %listener, align 8, !dbg !2349
  %mctx48 = getelementptr inbounds %struct.controllistener, ptr %54, i32 0, i32 1, !dbg !2350
  %55 = load ptr, ptr %mctx48, align 8, !dbg !2350
  %call49 = call i32 @cfg_acl_fromconfig(ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %55, i32 noundef 0, ptr noundef %new_acl), !dbg !2351
  store i32 %call49, ptr %result, align 4, !dbg !2352
  br label %if.end53, !dbg !2353

if.else50:                                        ; preds = %land.lhs.true43, %if.end40
  %56 = load ptr, ptr %listener, align 8, !dbg !2354
  %mctx51 = getelementptr inbounds %struct.controllistener, ptr %56, i32 0, i32 1, !dbg !2356
  %57 = load ptr, ptr %mctx51, align 8, !dbg !2356
  %call52 = call i32 @dns_acl_any(ptr noundef %57, ptr noundef %new_acl), !dbg !2357
  store i32 %call52, ptr %result, align 4, !dbg !2358
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.then46
  %58 = load ptr, ptr %control.addr, align 8, !dbg !2359
  %cmp54 = icmp ne ptr %58, null, !dbg !2360
  br i1 %cmp54, label %if.then56, label %if.end63, !dbg !2361

if.then56:                                        ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 8, ptr %readonly) #9, !dbg !2362
  tail call void @llvm.dbg.declare(metadata ptr %readonly, metadata !2194, metadata !DIExpression()), !dbg !2363
  %59 = load ptr, ptr %control.addr, align 8, !dbg !2364
  %call57 = call ptr @cfg_tuple_get(ptr noundef %59, ptr noundef @.str.33), !dbg !2365
  store ptr %call57, ptr %readonly, align 8, !dbg !2366
  %60 = load ptr, ptr %readonly, align 8, !dbg !2367
  %call58 = call zeroext i1 @cfg_obj_isvoid(ptr noundef %60), !dbg !2369
  br i1 %call58, label %if.end62, label %if.then59, !dbg !2370

if.then59:                                        ; preds = %if.then56
  %61 = load ptr, ptr %readonly, align 8, !dbg !2371
  %call60 = call zeroext i1 @cfg_obj_asboolean(ptr noundef %61), !dbg !2372
  %62 = load ptr, ptr %listener, align 8, !dbg !2373
  %readonly61 = getelementptr inbounds %struct.controllistener, ptr %62, i32 0, i32 14, !dbg !2374
  %frombool = zext i1 %call60 to i8, !dbg !2375
  store i8 %frombool, ptr %readonly61, align 8, !dbg !2375
  br label %if.end62, !dbg !2373

if.end62:                                         ; preds = %if.then59, %if.then56
  call void @llvm.lifetime.end.p0(i64 8, ptr %readonly) #9, !dbg !2376
  br label %if.end63, !dbg !2377

if.end63:                                         ; preds = %if.end62, %if.end53
  %63 = load i32, ptr %result, align 4, !dbg !2378
  %cmp64 = icmp eq i32 %63, 0, !dbg !2380
  br i1 %cmp64, label %if.then66, label %if.else68, !dbg !2381

if.then66:                                        ; preds = %if.end63
  %64 = load ptr, ptr %listener, align 8, !dbg !2382
  %acl = getelementptr inbounds %struct.controllistener, ptr %64, i32 0, i32 5, !dbg !2384
  call void @dns_acl_detach(ptr noundef %acl), !dbg !2385
  %65 = load ptr, ptr %new_acl, align 8, !dbg !2386
  %66 = load ptr, ptr %listener, align 8, !dbg !2387
  %acl67 = getelementptr inbounds %struct.controllistener, ptr %66, i32 0, i32 5, !dbg !2388
  call void @dns_acl_attach(ptr noundef %65, ptr noundef %acl67), !dbg !2389
  call void @dns_acl_detach(ptr noundef %new_acl), !dbg !2390
  br label %if.end77, !dbg !2391

if.else68:                                        ; preds = %if.end63
  %67 = load ptr, ptr %control.addr, align 8, !dbg !2392
  %cmp69 = icmp ne ptr %67, null, !dbg !2394
  br i1 %cmp69, label %if.then71, label %if.else73, !dbg !2395

if.then71:                                        ; preds = %if.else68
  %68 = load ptr, ptr %control.addr, align 8, !dbg !2396
  %69 = load ptr, ptr @named_g_lctx, align 8, !dbg !2397
  %70 = load ptr, ptr %socktext.addr, align 8, !dbg !2398
  %71 = load i32, ptr %result, align 4, !dbg !2399
  %call72 = call ptr @isc_result_totext(i32 noundef %71), !dbg !2400
  call void (ptr, ptr, i32, ptr, ...) @cfg_obj_log(ptr noundef %68, ptr noundef %69, i32 noundef -3, ptr noundef @.str.34, ptr noundef %70, ptr noundef %call72), !dbg !2401
  br label %if.end76, !dbg !2401

if.else73:                                        ; preds = %if.else68
  %72 = load ptr, ptr @named_g_lctx, align 8, !dbg !2402
  %73 = load ptr, ptr @named_g_modules, align 8, !dbg !2403
  %arrayidx74 = getelementptr inbounds %struct.isc_logmodule, ptr %73, i64 2, !dbg !2403
  %74 = load ptr, ptr %socktext.addr, align 8, !dbg !2404
  %75 = load i32, ptr %result, align 4, !dbg !2405
  %call75 = call ptr @isc_result_totext(i32 noundef %75), !dbg !2406
  call void (ptr, ptr, ptr, i32, ptr, ...) @isc_log_write(ptr noundef %72, ptr noundef getelementptr inbounds ([0 x %struct.isc_logcategory], ptr @isc_categories, i64 0, i64 1), ptr noundef %arrayidx74, i32 noundef -3, ptr noundef @.str.34, ptr noundef %74, ptr noundef %call75), !dbg !2407
  br label %if.end76

if.end76:                                         ; preds = %if.else73, %if.then71
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then66
  %76 = load i32, ptr %result, align 4, !dbg !2408
  %cmp78 = icmp eq i32 %76, 0, !dbg !2409
  br i1 %cmp78, label %land.lhs.true80, label %if.end116, !dbg !2410

land.lhs.true80:                                  ; preds = %if.end77
  %77 = load i32, ptr %type.addr, align 4, !dbg !2411
  %cmp81 = icmp eq i32 %77, 3, !dbg !2412
  br i1 %cmp81, label %if.then83, label %if.end116, !dbg !2413

if.then83:                                        ; preds = %land.lhs.true80
  call void @llvm.lifetime.start.p0(i64 4, ptr %perm) #9, !dbg !2414
  tail call void @llvm.dbg.declare(metadata ptr %perm, metadata !2197, metadata !DIExpression()), !dbg !2415
  call void @llvm.lifetime.start.p0(i64 4, ptr %owner) #9, !dbg !2414
  tail call void @llvm.dbg.declare(metadata ptr %owner, metadata !2200, metadata !DIExpression()), !dbg !2416
  call void @llvm.lifetime.start.p0(i64 4, ptr %group) #9, !dbg !2414
  tail call void @llvm.dbg.declare(metadata ptr %group, metadata !2201, metadata !DIExpression()), !dbg !2417
  %78 = load ptr, ptr %control.addr, align 8, !dbg !2418
  %call84 = call ptr @cfg_tuple_get(ptr noundef %78, ptr noundef @.str.35), !dbg !2419
  %call85 = call i32 @cfg_obj_asuint32(ptr noundef %call84), !dbg !2420
  store i32 %call85, ptr %perm, align 4, !dbg !2421
  %79 = load ptr, ptr %control.addr, align 8, !dbg !2422
  %call86 = call ptr @cfg_tuple_get(ptr noundef %79, ptr noundef @.str.36), !dbg !2423
  %call87 = call i32 @cfg_obj_asuint32(ptr noundef %call86), !dbg !2424
  store i32 %call87, ptr %owner, align 4, !dbg !2425
  %80 = load ptr, ptr %control.addr, align 8, !dbg !2426
  %call88 = call ptr @cfg_tuple_get(ptr noundef %80, ptr noundef @.str.37), !dbg !2427
  %call89 = call i32 @cfg_obj_asuint32(ptr noundef %call88), !dbg !2428
  store i32 %call89, ptr %group, align 4, !dbg !2429
  store i32 0, ptr %result, align 4, !dbg !2430
  %81 = load ptr, ptr %listener, align 8, !dbg !2431
  %perm90 = getelementptr inbounds %struct.controllistener, ptr %81, i32 0, i32 11, !dbg !2433
  %82 = load i32, ptr %perm90, align 4, !dbg !2433
  %83 = load i32, ptr %perm, align 4, !dbg !2434
  %cmp91 = icmp ne i32 %82, %83, !dbg !2435
  br i1 %cmp91, label %if.then100, label %lor.lhs.false, !dbg !2436

lor.lhs.false:                                    ; preds = %if.then83
  %84 = load ptr, ptr %listener, align 8, !dbg !2437
  %owner93 = getelementptr inbounds %struct.controllistener, ptr %84, i32 0, i32 12, !dbg !2438
  %85 = load i32, ptr %owner93, align 8, !dbg !2438
  %86 = load i32, ptr %owner, align 4, !dbg !2439
  %cmp94 = icmp ne i32 %85, %86, !dbg !2440
  br i1 %cmp94, label %if.then100, label %lor.lhs.false96, !dbg !2441

lor.lhs.false96:                                  ; preds = %lor.lhs.false
  %87 = load ptr, ptr %listener, align 8, !dbg !2442
  %group97 = getelementptr inbounds %struct.controllistener, ptr %87, i32 0, i32 13, !dbg !2443
  %88 = load i32, ptr %group97, align 4, !dbg !2443
  %89 = load i32, ptr %group, align 4, !dbg !2444
  %cmp98 = icmp ne i32 %88, %89, !dbg !2445
  br i1 %cmp98, label %if.then100, label %if.end103, !dbg !2446

if.then100:                                       ; preds = %lor.lhs.false96, %lor.lhs.false, %if.then83
  %90 = load ptr, ptr %listener, align 8, !dbg !2447
  %address101 = getelementptr inbounds %struct.controllistener, ptr %90, i32 0, i32 3, !dbg !2448
  %91 = load i32, ptr %perm, align 4, !dbg !2449
  %92 = load i32, ptr %owner, align 4, !dbg !2450
  %93 = load i32, ptr %group, align 4, !dbg !2451
  %call102 = call i32 @isc_socket_permunix(ptr noundef %address101, i32 noundef %91, i32 noundef %92, i32 noundef %93), !dbg !2452
  store i32 %call102, ptr %result, align 4, !dbg !2453
  br label %if.end103, !dbg !2454

if.end103:                                        ; preds = %if.then100, %lor.lhs.false96
  %94 = load i32, ptr %result, align 4, !dbg !2455
  %cmp104 = icmp eq i32 %94, 0, !dbg !2457
  br i1 %cmp104, label %if.then106, label %if.else110, !dbg !2458

if.then106:                                       ; preds = %if.end103
  %95 = load i32, ptr %perm, align 4, !dbg !2459
  %96 = load ptr, ptr %listener, align 8, !dbg !2461
  %perm107 = getelementptr inbounds %struct.controllistener, ptr %96, i32 0, i32 11, !dbg !2462
  store i32 %95, ptr %perm107, align 4, !dbg !2463
  %97 = load i32, ptr %owner, align 4, !dbg !2464
  %98 = load ptr, ptr %listener, align 8, !dbg !2465
  %owner108 = getelementptr inbounds %struct.controllistener, ptr %98, i32 0, i32 12, !dbg !2466
  store i32 %97, ptr %owner108, align 8, !dbg !2467
  %99 = load i32, ptr %group, align 4, !dbg !2468
  %100 = load ptr, ptr %listener, align 8, !dbg !2469
  %group109 = getelementptr inbounds %struct.controllistener, ptr %100, i32 0, i32 13, !dbg !2470
  store i32 %99, ptr %group109, align 4, !dbg !2471
  br label %if.end115, !dbg !2472

if.else110:                                       ; preds = %if.end103
  %101 = load ptr, ptr %control.addr, align 8, !dbg !2473
  %cmp111 = icmp ne ptr %101, null, !dbg !2475
  br i1 %cmp111, label %if.then113, label %if.end114, !dbg !2476

if.then113:                                       ; preds = %if.else110
  %102 = load ptr, ptr %control.addr, align 8, !dbg !2477
  %103 = load ptr, ptr @named_g_lctx, align 8, !dbg !2478
  %104 = load ptr, ptr %socktext.addr, align 8, !dbg !2479
  call void (ptr, ptr, i32, ptr, ...) @cfg_obj_log(ptr noundef %102, ptr noundef %103, i32 noundef -3, ptr noundef @.str.38, ptr noundef %104), !dbg !2480
  br label %if.end114, !dbg !2480

if.end114:                                        ; preds = %if.then113, %if.else110
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.then106
  call void @llvm.lifetime.end.p0(i64 4, ptr %group) #9, !dbg !2481
  call void @llvm.lifetime.end.p0(i64 4, ptr %owner) #9, !dbg !2481
  call void @llvm.lifetime.end.p0(i64 4, ptr %perm) #9, !dbg !2481
  br label %if.end116, !dbg !2482

if.end116:                                        ; preds = %if.end115, %land.lhs.true80, %if.end77
  %105 = load ptr, ptr %listener, align 8, !dbg !2483
  %106 = load ptr, ptr %listenerp.addr, align 8, !dbg !2484
  store ptr %105, ptr %106, align 8, !dbg !2485
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2486
  br label %cleanup, !dbg !2486

cleanup:                                          ; preds = %if.end116, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !2486
  call void @llvm.lifetime.end.p0(i64 16, ptr %keys) #9, !dbg !2486
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_acl) #9, !dbg !2486
  call void @llvm.lifetime.end.p0(i64 8, ptr %control_keylist) #9, !dbg !2486
  call void @llvm.lifetime.end.p0(i64 8, ptr %global_keylist) #9, !dbg !2486
  call void @llvm.lifetime.end.p0(i64 8, ptr %allow) #9, !dbg !2486
  call void @llvm.lifetime.end.p0(i64 8, ptr %listener) #9, !dbg !2486
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2486

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !2487 void @isc_assertion_failed(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @add_listener(ptr noundef %cp, ptr noundef %listenerp, ptr noundef %control, ptr noundef %config, ptr noundef %addr, ptr noundef %aclconfctx, ptr noundef %socktext, i32 noundef %type) #0 !dbg !2491 {
entry:
  %cp.addr = alloca ptr, align 8
  %listenerp.addr = alloca ptr, align 8
  %control.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %aclconfctx.addr = alloca ptr, align 8
  %socktext.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mctx = alloca ptr, align 8
  %listener = alloca ptr, align 8
  %allow = alloca ptr, align 8
  %global_keylist = alloca ptr, align 8
  %control_keylist = alloca ptr, align 8
  %new_acl = alloca ptr, align 8
  %result = alloca i32, align 4
  %readonly32 = alloca ptr, align 8
  %pf = alloca i32, align 4
  store ptr %cp, ptr %cp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cp.addr, metadata !2493, metadata !DIExpression()), !dbg !2514
  store ptr %listenerp, ptr %listenerp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %listenerp.addr, metadata !2494, metadata !DIExpression()), !dbg !2515
  store ptr %control, ptr %control.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %control.addr, metadata !2495, metadata !DIExpression()), !dbg !2516
  store ptr %config, ptr %config.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %config.addr, metadata !2496, metadata !DIExpression()), !dbg !2517
  store ptr %addr, ptr %addr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2497, metadata !DIExpression()), !dbg !2518
  store ptr %aclconfctx, ptr %aclconfctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %aclconfctx.addr, metadata !2498, metadata !DIExpression()), !dbg !2519
  store ptr %socktext, ptr %socktext.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %socktext.addr, metadata !2499, metadata !DIExpression()), !dbg !2520
  store i32 %type, ptr %type.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2500, metadata !DIExpression()), !dbg !2521
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #9, !dbg !2522
  tail call void @llvm.dbg.declare(metadata ptr %mctx, metadata !2501, metadata !DIExpression()), !dbg !2523
  %0 = load ptr, ptr %cp.addr, align 8, !dbg !2524
  %server = getelementptr inbounds %struct.named_controls, ptr %0, i32 0, i32 0, !dbg !2525
  %1 = load ptr, ptr %server, align 8, !dbg !2525
  %mctx1 = getelementptr inbounds %struct.named_server, ptr %1, i32 0, i32 1, !dbg !2526
  %2 = load ptr, ptr %mctx1, align 8, !dbg !2526
  store ptr %2, ptr %mctx, align 8, !dbg !2523
  call void @llvm.lifetime.start.p0(i64 8, ptr %listener) #9, !dbg !2527
  tail call void @llvm.dbg.declare(metadata ptr %listener, metadata !2502, metadata !DIExpression()), !dbg !2528
  call void @llvm.lifetime.start.p0(i64 8, ptr %allow) #9, !dbg !2529
  tail call void @llvm.dbg.declare(metadata ptr %allow, metadata !2503, metadata !DIExpression()), !dbg !2530
  call void @llvm.lifetime.start.p0(i64 8, ptr %global_keylist) #9, !dbg !2531
  tail call void @llvm.dbg.declare(metadata ptr %global_keylist, metadata !2504, metadata !DIExpression()), !dbg !2532
  store ptr null, ptr %global_keylist, align 8, !dbg !2532
  call void @llvm.lifetime.start.p0(i64 8, ptr %control_keylist) #9, !dbg !2533
  tail call void @llvm.dbg.declare(metadata ptr %control_keylist, metadata !2505, metadata !DIExpression()), !dbg !2534
  store ptr null, ptr %control_keylist, align 8, !dbg !2534
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_acl) #9, !dbg !2535
  tail call void @llvm.dbg.declare(metadata ptr %new_acl, metadata !2506, metadata !DIExpression()), !dbg !2536
  store ptr null, ptr %new_acl, align 8, !dbg !2536
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !2537
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2507, metadata !DIExpression()), !dbg !2538
  store i32 0, ptr %result, align 4, !dbg !2538
  %3 = load ptr, ptr %mctx, align 8, !dbg !2539
  %call = call ptr @isc__mem_get(ptr noundef %3, i64 noundef 272, ptr noundef @.str.4, i32 noundef 1129), !dbg !2539
  store ptr %call, ptr %listener, align 8, !dbg !2540
  %4 = load ptr, ptr %listener, align 8, !dbg !2541
  %cmp = icmp eq ptr %4, null, !dbg !2543
  br i1 %cmp, label %if.then, label %if.end, !dbg !2544

if.then:                                          ; preds = %entry
  store i32 1, ptr %result, align 4, !dbg !2545
  br label %if.end, !dbg !2546

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %result, align 4, !dbg !2547
  %cmp2 = icmp eq i32 %5, 0, !dbg !2549
  br i1 %cmp2, label %if.then3, label %if.end27, !dbg !2550

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %listener, align 8, !dbg !2551
  %mctx4 = getelementptr inbounds %struct.controllistener, ptr %6, i32 0, i32 1, !dbg !2553
  store ptr null, ptr %mctx4, align 8, !dbg !2554
  %7 = load ptr, ptr %mctx, align 8, !dbg !2555
  %8 = load ptr, ptr %listener, align 8, !dbg !2556
  %mctx5 = getelementptr inbounds %struct.controllistener, ptr %8, i32 0, i32 1, !dbg !2557
  call void @isc_mem_attach(ptr noundef %7, ptr noundef %mctx5), !dbg !2558
  %9 = load ptr, ptr %cp.addr, align 8, !dbg !2559
  %10 = load ptr, ptr %listener, align 8, !dbg !2560
  %controls = getelementptr inbounds %struct.controllistener, ptr %10, i32 0, i32 0, !dbg !2561
  store ptr %9, ptr %controls, align 8, !dbg !2562
  %11 = load ptr, ptr %cp.addr, align 8, !dbg !2563
  %server6 = getelementptr inbounds %struct.named_controls, ptr %11, i32 0, i32 0, !dbg !2564
  %12 = load ptr, ptr %server6, align 8, !dbg !2564
  %task = getelementptr inbounds %struct.named_server, ptr %12, i32 0, i32 3, !dbg !2565
  %13 = load ptr, ptr %task, align 8, !dbg !2565
  %14 = load ptr, ptr %listener, align 8, !dbg !2566
  %task7 = getelementptr inbounds %struct.controllistener, ptr %14, i32 0, i32 2, !dbg !2567
  store ptr %13, ptr %task7, align 8, !dbg !2568
  %15 = load ptr, ptr %listener, align 8, !dbg !2569
  %address = getelementptr inbounds %struct.controllistener, ptr %15, i32 0, i32 3, !dbg !2570
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !2571
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %address, ptr align 8 %16, i64 152, i1 false), !dbg !2572
  %17 = load ptr, ptr %listener, align 8, !dbg !2573
  %sock = getelementptr inbounds %struct.controllistener, ptr %17, i32 0, i32 4, !dbg !2574
  store ptr null, ptr %sock, align 8, !dbg !2575
  %18 = load ptr, ptr %listener, align 8, !dbg !2576
  %listening = getelementptr inbounds %struct.controllistener, ptr %18, i32 0, i32 6, !dbg !2577
  store i8 0, ptr %listening, align 8, !dbg !2578
  %19 = load ptr, ptr %listener, align 8, !dbg !2579
  %exiting = getelementptr inbounds %struct.controllistener, ptr %19, i32 0, i32 7, !dbg !2580
  store i8 0, ptr %exiting, align 1, !dbg !2581
  %20 = load ptr, ptr %listener, align 8, !dbg !2582
  %acl = getelementptr inbounds %struct.controllistener, ptr %20, i32 0, i32 5, !dbg !2583
  store ptr null, ptr %acl, align 8, !dbg !2584
  %21 = load i32, ptr %type.addr, align 4, !dbg !2585
  %22 = load ptr, ptr %listener, align 8, !dbg !2586
  %type8 = getelementptr inbounds %struct.controllistener, ptr %22, i32 0, i32 10, !dbg !2587
  store i32 %21, ptr %type8, align 8, !dbg !2588
  %23 = load ptr, ptr %listener, align 8, !dbg !2589
  %perm = getelementptr inbounds %struct.controllistener, ptr %23, i32 0, i32 11, !dbg !2590
  store i32 0, ptr %perm, align 4, !dbg !2591
  %24 = load ptr, ptr %listener, align 8, !dbg !2592
  %owner = getelementptr inbounds %struct.controllistener, ptr %24, i32 0, i32 12, !dbg !2593
  store i32 0, ptr %owner, align 8, !dbg !2594
  %25 = load ptr, ptr %listener, align 8, !dbg !2595
  %group = getelementptr inbounds %struct.controllistener, ptr %25, i32 0, i32 13, !dbg !2596
  store i32 0, ptr %group, align 4, !dbg !2597
  %26 = load ptr, ptr %listener, align 8, !dbg !2598
  %readonly = getelementptr inbounds %struct.controllistener, ptr %26, i32 0, i32 14, !dbg !2599
  store i8 0, ptr %readonly, align 8, !dbg !2600
  br label %do.body, !dbg !2601

do.body:                                          ; preds = %if.then3
  %27 = load ptr, ptr %listener, align 8, !dbg !2602
  %link = getelementptr inbounds %struct.controllistener, ptr %27, i32 0, i32 15, !dbg !2602
  %prev = getelementptr inbounds %struct.anon.6, ptr %link, i32 0, i32 0, !dbg !2602
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !2602
  %28 = load ptr, ptr %listener, align 8, !dbg !2602
  %link9 = getelementptr inbounds %struct.controllistener, ptr %28, i32 0, i32 15, !dbg !2602
  %next = getelementptr inbounds %struct.anon.6, ptr %link9, i32 0, i32 1, !dbg !2602
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !2602
  br label %do.cond, !dbg !2602

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2602

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !2604

do.body10:                                        ; preds = %do.end
  %29 = load ptr, ptr %listener, align 8, !dbg !2605
  %keys = getelementptr inbounds %struct.controllistener, ptr %29, i32 0, i32 8, !dbg !2605
  %head = getelementptr inbounds %struct.controlkeylist_t, ptr %keys, i32 0, i32 0, !dbg !2605
  store ptr null, ptr %head, align 8, !dbg !2605
  %30 = load ptr, ptr %listener, align 8, !dbg !2605
  %keys11 = getelementptr inbounds %struct.controllistener, ptr %30, i32 0, i32 8, !dbg !2605
  %tail = getelementptr inbounds %struct.controlkeylist_t, ptr %keys11, i32 0, i32 1, !dbg !2605
  store ptr null, ptr %tail, align 8, !dbg !2605
  br label %do.cond12, !dbg !2605

do.cond12:                                        ; preds = %do.body10
  br label %do.end13, !dbg !2605

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2607

do.body14:                                        ; preds = %do.end13
  %31 = load ptr, ptr %listener, align 8, !dbg !2608
  %connections = getelementptr inbounds %struct.controllistener, ptr %31, i32 0, i32 9, !dbg !2608
  %head15 = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections, i32 0, i32 0, !dbg !2608
  store ptr null, ptr %head15, align 8, !dbg !2608
  %32 = load ptr, ptr %listener, align 8, !dbg !2608
  %connections16 = getelementptr inbounds %struct.controllistener, ptr %32, i32 0, i32 9, !dbg !2608
  %tail17 = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections16, i32 0, i32 1, !dbg !2608
  store ptr null, ptr %tail17, align 8, !dbg !2608
  br label %do.cond18, !dbg !2608

do.cond18:                                        ; preds = %do.body14
  br label %do.end19, !dbg !2608

do.end19:                                         ; preds = %do.cond18
  %33 = load ptr, ptr %control.addr, align 8, !dbg !2610
  %cmp20 = icmp ne ptr %33, null, !dbg !2612
  br i1 %cmp20, label %land.lhs.true, label %if.else, !dbg !2613

land.lhs.true:                                    ; preds = %do.end19
  %34 = load i32, ptr %type.addr, align 4, !dbg !2614
  %cmp21 = icmp eq i32 %34, 2, !dbg !2615
  br i1 %cmp21, label %if.then22, label %if.else, !dbg !2616

if.then22:                                        ; preds = %land.lhs.true
  %35 = load ptr, ptr %control.addr, align 8, !dbg !2617
  %call23 = call ptr @cfg_tuple_get(ptr noundef %35, ptr noundef @.str.32), !dbg !2619
  store ptr %call23, ptr %allow, align 8, !dbg !2620
  %36 = load ptr, ptr %allow, align 8, !dbg !2621
  %37 = load ptr, ptr %config.addr, align 8, !dbg !2622
  %38 = load ptr, ptr @named_g_lctx, align 8, !dbg !2623
  %39 = load ptr, ptr %aclconfctx.addr, align 8, !dbg !2624
  %40 = load ptr, ptr %mctx, align 8, !dbg !2625
  %call24 = call i32 @cfg_acl_fromconfig(ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40, i32 noundef 0, ptr noundef %new_acl), !dbg !2626
  store i32 %call24, ptr %result, align 4, !dbg !2627
  br label %if.end26, !dbg !2628

if.else:                                          ; preds = %land.lhs.true, %do.end19
  %41 = load ptr, ptr %mctx, align 8, !dbg !2629
  %call25 = call i32 @dns_acl_any(ptr noundef %41, ptr noundef %new_acl), !dbg !2631
  store i32 %call25, ptr %result, align 4, !dbg !2632
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then22
  br label %if.end27, !dbg !2633

if.end27:                                         ; preds = %if.end26, %if.end
  %42 = load i32, ptr %result, align 4, !dbg !2634
  %cmp28 = icmp eq i32 %42, 0, !dbg !2635
  br i1 %cmp28, label %land.lhs.true29, label %if.end39, !dbg !2636

land.lhs.true29:                                  ; preds = %if.end27
  %43 = load ptr, ptr %control.addr, align 8, !dbg !2637
  %cmp30 = icmp ne ptr %43, null, !dbg !2638
  br i1 %cmp30, label %if.then31, label %if.end39, !dbg !2639

if.then31:                                        ; preds = %land.lhs.true29
  call void @llvm.lifetime.start.p0(i64 8, ptr %readonly32) #9, !dbg !2640
  tail call void @llvm.dbg.declare(metadata ptr %readonly32, metadata !2508, metadata !DIExpression()), !dbg !2641
  %44 = load ptr, ptr %control.addr, align 8, !dbg !2642
  %call33 = call ptr @cfg_tuple_get(ptr noundef %44, ptr noundef @.str.33), !dbg !2643
  store ptr %call33, ptr %readonly32, align 8, !dbg !2644
  %45 = load ptr, ptr %readonly32, align 8, !dbg !2645
  %call34 = call zeroext i1 @cfg_obj_isvoid(ptr noundef %45), !dbg !2647
  br i1 %call34, label %if.end38, label %if.then35, !dbg !2648

if.then35:                                        ; preds = %if.then31
  %46 = load ptr, ptr %readonly32, align 8, !dbg !2649
  %call36 = call zeroext i1 @cfg_obj_asboolean(ptr noundef %46), !dbg !2650
  %47 = load ptr, ptr %listener, align 8, !dbg !2651
  %readonly37 = getelementptr inbounds %struct.controllistener, ptr %47, i32 0, i32 14, !dbg !2652
  %frombool = zext i1 %call36 to i8, !dbg !2653
  store i8 %frombool, ptr %readonly37, align 8, !dbg !2653
  br label %if.end38, !dbg !2651

if.end38:                                         ; preds = %if.then35, %if.then31
  call void @llvm.lifetime.end.p0(i64 8, ptr %readonly32) #9, !dbg !2654
  br label %if.end39, !dbg !2655

if.end39:                                         ; preds = %if.end38, %land.lhs.true29, %if.end27
  %48 = load i32, ptr %result, align 4, !dbg !2656
  %cmp40 = icmp eq i32 %48, 0, !dbg !2658
  br i1 %cmp40, label %if.then41, label %if.end66, !dbg !2659

if.then41:                                        ; preds = %if.end39
  %49 = load ptr, ptr %new_acl, align 8, !dbg !2660
  %50 = load ptr, ptr %listener, align 8, !dbg !2662
  %acl42 = getelementptr inbounds %struct.controllistener, ptr %50, i32 0, i32 5, !dbg !2663
  call void @dns_acl_attach(ptr noundef %49, ptr noundef %acl42), !dbg !2664
  call void @dns_acl_detach(ptr noundef %new_acl), !dbg !2665
  %51 = load ptr, ptr %config.addr, align 8, !dbg !2666
  %cmp43 = icmp ne ptr %51, null, !dbg !2668
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !2669

if.then44:                                        ; preds = %if.then41
  %52 = load ptr, ptr %config.addr, align 8, !dbg !2670
  %53 = load ptr, ptr %control.addr, align 8, !dbg !2671
  call void @get_key_info(ptr noundef %52, ptr noundef %53, ptr noundef %global_keylist, ptr noundef %control_keylist), !dbg !2672
  br label %if.end45, !dbg !2672

if.end45:                                         ; preds = %if.then44, %if.then41
  %54 = load ptr, ptr %control_keylist, align 8, !dbg !2673
  %cmp46 = icmp ne ptr %54, null, !dbg !2675
  br i1 %cmp46, label %if.then47, label %if.else56, !dbg !2676

if.then47:                                        ; preds = %if.end45
  %55 = load ptr, ptr %control_keylist, align 8, !dbg !2677
  %56 = load ptr, ptr %listener, align 8, !dbg !2679
  %mctx48 = getelementptr inbounds %struct.controllistener, ptr %56, i32 0, i32 1, !dbg !2680
  %57 = load ptr, ptr %mctx48, align 8, !dbg !2680
  %58 = load ptr, ptr %listener, align 8, !dbg !2681
  %keys49 = getelementptr inbounds %struct.controllistener, ptr %58, i32 0, i32 8, !dbg !2682
  %call50 = call i32 @controlkeylist_fromcfg(ptr noundef %55, ptr noundef %57, ptr noundef %keys49), !dbg !2683
  store i32 %call50, ptr %result, align 4, !dbg !2684
  %59 = load i32, ptr %result, align 4, !dbg !2685
  %cmp51 = icmp eq i32 %59, 0, !dbg !2687
  br i1 %cmp51, label %if.then52, label %if.end55, !dbg !2688

if.then52:                                        ; preds = %if.then47
  %60 = load ptr, ptr %control.addr, align 8, !dbg !2689
  %61 = load ptr, ptr %global_keylist, align 8, !dbg !2690
  %62 = load ptr, ptr %listener, align 8, !dbg !2691
  %keys53 = getelementptr inbounds %struct.controllistener, ptr %62, i32 0, i32 8, !dbg !2692
  %63 = load ptr, ptr %listener, align 8, !dbg !2693
  %mctx54 = getelementptr inbounds %struct.controllistener, ptr %63, i32 0, i32 1, !dbg !2694
  %64 = load ptr, ptr %mctx54, align 8, !dbg !2694
  %65 = load ptr, ptr %socktext.addr, align 8, !dbg !2695
  call void @register_keys(ptr noundef %60, ptr noundef %61, ptr noundef %keys53, ptr noundef %64, ptr noundef %65), !dbg !2696
  br label %if.end55, !dbg !2696

if.end55:                                         ; preds = %if.then52, %if.then47
  br label %if.end59, !dbg !2697

if.else56:                                        ; preds = %if.end45
  %66 = load ptr, ptr %mctx, align 8, !dbg !2698
  %67 = load ptr, ptr %listener, align 8, !dbg !2699
  %keys57 = getelementptr inbounds %struct.controllistener, ptr %67, i32 0, i32 8, !dbg !2700
  %call58 = call i32 @get_rndckey(ptr noundef %66, ptr noundef %keys57), !dbg !2701
  store i32 %call58, ptr %result, align 4, !dbg !2702
  br label %if.end59

if.end59:                                         ; preds = %if.else56, %if.end55
  %68 = load i32, ptr %result, align 4, !dbg !2703
  %cmp60 = icmp ne i32 %68, 0, !dbg !2705
  br i1 %cmp60, label %land.lhs.true61, label %if.end65, !dbg !2706

land.lhs.true61:                                  ; preds = %if.end59
  %69 = load ptr, ptr %control.addr, align 8, !dbg !2707
  %cmp62 = icmp ne ptr %69, null, !dbg !2708
  br i1 %cmp62, label %if.then63, label %if.end65, !dbg !2709

if.then63:                                        ; preds = %land.lhs.true61
  %70 = load ptr, ptr %control.addr, align 8, !dbg !2710
  %71 = load ptr, ptr @named_g_lctx, align 8, !dbg !2711
  %72 = load ptr, ptr %socktext.addr, align 8, !dbg !2712
  %73 = load i32, ptr %result, align 4, !dbg !2713
  %call64 = call ptr @isc_result_totext(i32 noundef %73), !dbg !2714
  call void (ptr, ptr, i32, ptr, ...) @cfg_obj_log(ptr noundef %70, ptr noundef %71, i32 noundef -3, ptr noundef @.str.57, ptr noundef %72, ptr noundef %call64), !dbg !2715
  br label %if.end65, !dbg !2715

if.end65:                                         ; preds = %if.then63, %land.lhs.true61, %if.end59
  br label %if.end66, !dbg !2716

if.end66:                                         ; preds = %if.end65, %if.end39
  %74 = load i32, ptr %result, align 4, !dbg !2717
  %cmp67 = icmp eq i32 %74, 0, !dbg !2718
  br i1 %cmp67, label %if.then68, label %if.end86, !dbg !2719

if.then68:                                        ; preds = %if.end66
  call void @llvm.lifetime.start.p0(i64 4, ptr %pf) #9, !dbg !2720
  tail call void @llvm.dbg.declare(metadata ptr %pf, metadata !2511, metadata !DIExpression()), !dbg !2721
  %75 = load ptr, ptr %listener, align 8, !dbg !2722
  %address69 = getelementptr inbounds %struct.controllistener, ptr %75, i32 0, i32 3, !dbg !2723
  %call70 = call i32 @isc_sockaddr_pf(ptr noundef %address69), !dbg !2724
  store i32 %call70, ptr %pf, align 4, !dbg !2721
  %76 = load i32, ptr %pf, align 4, !dbg !2725
  %cmp71 = icmp eq i32 %76, 2, !dbg !2727
  br i1 %cmp71, label %land.lhs.true72, label %lor.lhs.false, !dbg !2728

land.lhs.true72:                                  ; preds = %if.then68
  %call73 = call i32 @isc_net_probeipv4(), !dbg !2729
  %cmp74 = icmp ne i32 %call73, 0, !dbg !2730
  br i1 %cmp74, label %if.then84, label %lor.lhs.false, !dbg !2731

lor.lhs.false:                                    ; preds = %land.lhs.true72, %if.then68
  %77 = load i32, ptr %pf, align 4, !dbg !2732
  %cmp75 = icmp eq i32 %77, 1, !dbg !2733
  br i1 %cmp75, label %land.lhs.true76, label %lor.lhs.false79, !dbg !2734

land.lhs.true76:                                  ; preds = %lor.lhs.false
  %call77 = call i32 @isc_net_probeunix(), !dbg !2735
  %cmp78 = icmp ne i32 %call77, 0, !dbg !2736
  br i1 %cmp78, label %if.then84, label %lor.lhs.false79, !dbg !2737

lor.lhs.false79:                                  ; preds = %land.lhs.true76, %lor.lhs.false
  %78 = load i32, ptr %pf, align 4, !dbg !2738
  %cmp80 = icmp eq i32 %78, 10, !dbg !2739
  br i1 %cmp80, label %land.lhs.true81, label %if.end85, !dbg !2740

land.lhs.true81:                                  ; preds = %lor.lhs.false79
  %call82 = call i32 @isc_net_probeipv6(), !dbg !2741
  %cmp83 = icmp ne i32 %call82, 0, !dbg !2742
  br i1 %cmp83, label %if.then84, label %if.end85, !dbg !2743

if.then84:                                        ; preds = %land.lhs.true81, %land.lhs.true76, %land.lhs.true72
  store i32 48, ptr %result, align 4, !dbg !2744
  br label %if.end85, !dbg !2745

if.end85:                                         ; preds = %if.then84, %land.lhs.true81, %lor.lhs.false79
  call void @llvm.lifetime.end.p0(i64 4, ptr %pf) #9, !dbg !2746
  br label %if.end86, !dbg !2747

if.end86:                                         ; preds = %if.end85, %if.end66
  %79 = load i32, ptr %result, align 4, !dbg !2748
  %cmp87 = icmp eq i32 %79, 0, !dbg !2750
  br i1 %cmp87, label %land.lhs.true88, label %if.end92, !dbg !2751

land.lhs.true88:                                  ; preds = %if.end86
  %80 = load i32, ptr %type.addr, align 4, !dbg !2752
  %cmp89 = icmp eq i32 %80, 3, !dbg !2753
  br i1 %cmp89, label %if.then90, label %if.end92, !dbg !2754

if.then90:                                        ; preds = %land.lhs.true88
  %81 = load ptr, ptr %listener, align 8, !dbg !2755
  %address91 = getelementptr inbounds %struct.controllistener, ptr %81, i32 0, i32 3, !dbg !2756
  call void @isc_socket_cleanunix(ptr noundef %address91, i1 noundef zeroext false), !dbg !2757
  br label %if.end92, !dbg !2757

if.end92:                                         ; preds = %if.then90, %land.lhs.true88, %if.end86
  %82 = load i32, ptr %result, align 4, !dbg !2758
  %cmp93 = icmp eq i32 %82, 0, !dbg !2760
  br i1 %cmp93, label %if.then94, label %if.end99, !dbg !2761

if.then94:                                        ; preds = %if.end92
  %83 = load ptr, ptr @named_g_socketmgr, align 8, !dbg !2762
  %84 = load ptr, ptr %listener, align 8, !dbg !2763
  %address95 = getelementptr inbounds %struct.controllistener, ptr %84, i32 0, i32 3, !dbg !2764
  %call96 = call i32 @isc_sockaddr_pf(ptr noundef %address95), !dbg !2765
  %85 = load i32, ptr %type.addr, align 4, !dbg !2766
  %86 = load ptr, ptr %listener, align 8, !dbg !2767
  %sock97 = getelementptr inbounds %struct.controllistener, ptr %86, i32 0, i32 4, !dbg !2768
  %call98 = call i32 @isc_socket_create(ptr noundef %83, i32 noundef %call96, i32 noundef %85, ptr noundef %sock97), !dbg !2769
  store i32 %call98, ptr %result, align 4, !dbg !2770
  br label %if.end99, !dbg !2771

if.end99:                                         ; preds = %if.then94, %if.end92
  %87 = load i32, ptr %result, align 4, !dbg !2772
  %cmp100 = icmp eq i32 %87, 0, !dbg !2774
  br i1 %cmp100, label %if.then101, label %if.end103, !dbg !2775

if.then101:                                       ; preds = %if.end99
  %88 = load ptr, ptr %listener, align 8, !dbg !2776
  %sock102 = getelementptr inbounds %struct.controllistener, ptr %88, i32 0, i32 4, !dbg !2777
  %89 = load ptr, ptr %sock102, align 8, !dbg !2777
  call void @isc_socket_setname(ptr noundef %89, ptr noundef @.str.58, ptr noundef null), !dbg !2778
  br label %if.end103, !dbg !2778

if.end103:                                        ; preds = %if.then101, %if.end99
  %90 = load i32, ptr %result, align 4, !dbg !2779
  %cmp104 = icmp eq i32 %90, 0, !dbg !2781
  br i1 %cmp104, label %if.then105, label %if.end107, !dbg !2782

if.then105:                                       ; preds = %if.end103
  %91 = load ptr, ptr %listener, align 8, !dbg !2783
  %sock106 = getelementptr inbounds %struct.controllistener, ptr %91, i32 0, i32 4, !dbg !2784
  %92 = load ptr, ptr %sock106, align 8, !dbg !2784
  call void @isc_socket_ipv6only(ptr noundef %92, i1 noundef zeroext true), !dbg !2785
  br label %if.end107, !dbg !2785

if.end107:                                        ; preds = %if.then105, %if.end103
  %93 = load i32, ptr %result, align 4, !dbg !2786
  %cmp108 = icmp eq i32 %93, 0, !dbg !2788
  br i1 %cmp108, label %if.then109, label %if.end113, !dbg !2789

if.then109:                                       ; preds = %if.end107
  %94 = load ptr, ptr %listener, align 8, !dbg !2790
  %sock110 = getelementptr inbounds %struct.controllistener, ptr %94, i32 0, i32 4, !dbg !2791
  %95 = load ptr, ptr %sock110, align 8, !dbg !2791
  %96 = load ptr, ptr %listener, align 8, !dbg !2792
  %address111 = getelementptr inbounds %struct.controllistener, ptr %96, i32 0, i32 3, !dbg !2793
  %call112 = call i32 @isc_socket_bind(ptr noundef %95, ptr noundef %address111, i32 noundef 1), !dbg !2794
  store i32 %call112, ptr %result, align 4, !dbg !2795
  br label %if.end113, !dbg !2796

if.end113:                                        ; preds = %if.then109, %if.end107
  %97 = load i32, ptr %result, align 4, !dbg !2797
  %cmp114 = icmp eq i32 %97, 0, !dbg !2799
  br i1 %cmp114, label %land.lhs.true115, label %if.end132, !dbg !2800

land.lhs.true115:                                 ; preds = %if.end113
  %98 = load i32, ptr %type.addr, align 4, !dbg !2801
  %cmp116 = icmp eq i32 %98, 3, !dbg !2802
  br i1 %cmp116, label %if.then117, label %if.end132, !dbg !2803

if.then117:                                       ; preds = %land.lhs.true115
  %99 = load ptr, ptr %control.addr, align 8, !dbg !2804
  %call118 = call ptr @cfg_tuple_get(ptr noundef %99, ptr noundef @.str.35), !dbg !2806
  %call119 = call i32 @cfg_obj_asuint32(ptr noundef %call118), !dbg !2807
  %100 = load ptr, ptr %listener, align 8, !dbg !2808
  %perm120 = getelementptr inbounds %struct.controllistener, ptr %100, i32 0, i32 11, !dbg !2809
  store i32 %call119, ptr %perm120, align 4, !dbg !2810
  %101 = load ptr, ptr %control.addr, align 8, !dbg !2811
  %call121 = call ptr @cfg_tuple_get(ptr noundef %101, ptr noundef @.str.36), !dbg !2812
  %call122 = call i32 @cfg_obj_asuint32(ptr noundef %call121), !dbg !2813
  %102 = load ptr, ptr %listener, align 8, !dbg !2814
  %owner123 = getelementptr inbounds %struct.controllistener, ptr %102, i32 0, i32 12, !dbg !2815
  store i32 %call122, ptr %owner123, align 8, !dbg !2816
  %103 = load ptr, ptr %control.addr, align 8, !dbg !2817
  %call124 = call ptr @cfg_tuple_get(ptr noundef %103, ptr noundef @.str.37), !dbg !2818
  %call125 = call i32 @cfg_obj_asuint32(ptr noundef %call124), !dbg !2819
  %104 = load ptr, ptr %listener, align 8, !dbg !2820
  %group126 = getelementptr inbounds %struct.controllistener, ptr %104, i32 0, i32 13, !dbg !2821
  store i32 %call125, ptr %group126, align 4, !dbg !2822
  %105 = load ptr, ptr %listener, align 8, !dbg !2823
  %address127 = getelementptr inbounds %struct.controllistener, ptr %105, i32 0, i32 3, !dbg !2824
  %106 = load ptr, ptr %listener, align 8, !dbg !2825
  %perm128 = getelementptr inbounds %struct.controllistener, ptr %106, i32 0, i32 11, !dbg !2826
  %107 = load i32, ptr %perm128, align 4, !dbg !2826
  %108 = load ptr, ptr %listener, align 8, !dbg !2827
  %owner129 = getelementptr inbounds %struct.controllistener, ptr %108, i32 0, i32 12, !dbg !2828
  %109 = load i32, ptr %owner129, align 8, !dbg !2828
  %110 = load ptr, ptr %listener, align 8, !dbg !2829
  %group130 = getelementptr inbounds %struct.controllistener, ptr %110, i32 0, i32 13, !dbg !2830
  %111 = load i32, ptr %group130, align 4, !dbg !2830
  %call131 = call i32 @isc_socket_permunix(ptr noundef %address127, i32 noundef %107, i32 noundef %109, i32 noundef %111), !dbg !2831
  store i32 %call131, ptr %result, align 4, !dbg !2832
  br label %if.end132, !dbg !2833

if.end132:                                        ; preds = %if.then117, %land.lhs.true115, %if.end113
  %112 = load i32, ptr %result, align 4, !dbg !2834
  %cmp133 = icmp eq i32 %112, 0, !dbg !2836
  br i1 %cmp133, label %if.then134, label %if.end136, !dbg !2837

if.then134:                                       ; preds = %if.end132
  %113 = load ptr, ptr %listener, align 8, !dbg !2838
  %call135 = call i32 @control_listen(ptr noundef %113), !dbg !2839
  store i32 %call135, ptr %result, align 4, !dbg !2840
  br label %if.end136, !dbg !2841

if.end136:                                        ; preds = %if.then134, %if.end132
  %114 = load i32, ptr %result, align 4, !dbg !2842
  %cmp137 = icmp eq i32 %114, 0, !dbg !2844
  br i1 %cmp137, label %if.then138, label %if.end140, !dbg !2845

if.then138:                                       ; preds = %if.end136
  %115 = load ptr, ptr %listener, align 8, !dbg !2846
  %call139 = call i32 @control_accept(ptr noundef %115), !dbg !2847
  store i32 %call139, ptr %result, align 4, !dbg !2848
  br label %if.end140, !dbg !2849

if.end140:                                        ; preds = %if.then138, %if.end136
  %116 = load i32, ptr %result, align 4, !dbg !2850
  %cmp141 = icmp eq i32 %116, 0, !dbg !2852
  br i1 %cmp141, label %if.then142, label %if.else143, !dbg !2853

if.then142:                                       ; preds = %if.end140
  %117 = load ptr, ptr @named_g_lctx, align 8, !dbg !2854
  %118 = load ptr, ptr @named_g_modules, align 8, !dbg !2856
  %arrayidx = getelementptr inbounds %struct.isc_logmodule, ptr %118, i64 2, !dbg !2856
  %119 = load ptr, ptr %socktext.addr, align 8, !dbg !2857
  call void (ptr, ptr, ptr, i32, ptr, ...) @isc_log_write(ptr noundef %117, ptr noundef getelementptr inbounds ([0 x %struct.isc_logcategory], ptr @isc_categories, i64 0, i64 1), ptr noundef %arrayidx, i32 noundef -2, ptr noundef @.str.59, ptr noundef %119), !dbg !2858
  %120 = load ptr, ptr %listener, align 8, !dbg !2859
  %121 = load ptr, ptr %listenerp.addr, align 8, !dbg !2860
  store ptr %120, ptr %121, align 8, !dbg !2861
  br label %if.end155, !dbg !2862

if.else143:                                       ; preds = %if.end140
  %122 = load ptr, ptr %listener, align 8, !dbg !2863
  %cmp144 = icmp ne ptr %122, null, !dbg !2866
  br i1 %cmp144, label %if.then145, label %if.end147, !dbg !2867

if.then145:                                       ; preds = %if.else143
  %123 = load ptr, ptr %listener, align 8, !dbg !2868
  %exiting146 = getelementptr inbounds %struct.controllistener, ptr %123, i32 0, i32 7, !dbg !2870
  store i8 1, ptr %exiting146, align 1, !dbg !2871
  %124 = load ptr, ptr %listener, align 8, !dbg !2872
  call void @free_listener(ptr noundef %124), !dbg !2873
  br label %if.end147, !dbg !2874

if.end147:                                        ; preds = %if.then145, %if.else143
  %125 = load ptr, ptr %control.addr, align 8, !dbg !2875
  %cmp148 = icmp ne ptr %125, null, !dbg !2877
  br i1 %cmp148, label %if.then149, label %if.else151, !dbg !2878

if.then149:                                       ; preds = %if.end147
  %126 = load ptr, ptr %control.addr, align 8, !dbg !2879
  %127 = load ptr, ptr @named_g_lctx, align 8, !dbg !2880
  %128 = load ptr, ptr %socktext.addr, align 8, !dbg !2881
  %129 = load i32, ptr %result, align 4, !dbg !2882
  %call150 = call ptr @isc_result_totext(i32 noundef %129), !dbg !2883
  call void (ptr, ptr, i32, ptr, ...) @cfg_obj_log(ptr noundef %126, ptr noundef %127, i32 noundef -3, ptr noundef @.str.60, ptr noundef %128, ptr noundef %call150), !dbg !2884
  br label %if.end154, !dbg !2884

if.else151:                                       ; preds = %if.end147
  %130 = load ptr, ptr @named_g_lctx, align 8, !dbg !2885
  %131 = load ptr, ptr @named_g_modules, align 8, !dbg !2886
  %arrayidx152 = getelementptr inbounds %struct.isc_logmodule, ptr %131, i64 2, !dbg !2886
  %132 = load ptr, ptr %socktext.addr, align 8, !dbg !2887
  %133 = load i32, ptr %result, align 4, !dbg !2888
  %call153 = call ptr @isc_result_totext(i32 noundef %133), !dbg !2889
  call void (ptr, ptr, ptr, i32, ptr, ...) @isc_log_write(ptr noundef %130, ptr noundef getelementptr inbounds ([0 x %struct.isc_logcategory], ptr @isc_categories, i64 0, i64 1), ptr noundef %arrayidx152, i32 noundef -2, ptr noundef @.str.60, ptr noundef %132, ptr noundef %call153), !dbg !2890
  br label %if.end154

if.end154:                                        ; preds = %if.else151, %if.then149
  %134 = load ptr, ptr %listenerp.addr, align 8, !dbg !2891
  store ptr null, ptr %134, align 8, !dbg !2892
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.then142
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_acl) #9, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 8, ptr %control_keylist) #9, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 8, ptr %global_keylist) #9, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 8, ptr %allow) #9, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 8, ptr %listener) #9, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #9, !dbg !2893
  ret void, !dbg !2893
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare !dbg !2894 ptr @cfg_list_next(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2897 i32 @isc_sockaddr_frompath(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2900 ptr @cfg_obj_asstring(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2903 ptr @isc_result_totext(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2907 i32 @isc_net_probeipv4() #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid uwtable
define internal i32 @__bswap_32(i32 noundef %__bsx) #6 !dbg !2911 {
entry:
  %__bsx.addr = alloca i32, align 4
  store i32 %__bsx, ptr %__bsx.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %__bsx.addr, metadata !2916, metadata !DIExpression()), !dbg !2917
  %0 = load i32, ptr %__bsx.addr, align 4, !dbg !2918
  %and = and i32 %0, -16777216, !dbg !2918
  %shr = lshr i32 %and, 24, !dbg !2918
  %1 = load i32, ptr %__bsx.addr, align 4, !dbg !2918
  %and1 = and i32 %1, 16711680, !dbg !2918
  %shr2 = lshr i32 %and1, 8, !dbg !2918
  %or = or i32 %shr, %shr2, !dbg !2918
  %2 = load i32, ptr %__bsx.addr, align 4, !dbg !2918
  %and3 = and i32 %2, 65280, !dbg !2918
  %shl = shl i32 %and3, 8, !dbg !2918
  %or4 = or i32 %or, %shl, !dbg !2918
  %3 = load i32, ptr %__bsx.addr, align 4, !dbg !2918
  %and5 = and i32 %3, 255, !dbg !2918
  %shl6 = shl i32 %and5, 24, !dbg !2918
  %or7 = or i32 %or4, %shl6, !dbg !2918
  ret i32 %or7, !dbg !2919
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2920 void @isc_sockaddr_fromin(ptr noundef, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2925 i32 @isc_net_probeipv6() #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2926 void @isc_sockaddr_fromin6(ptr noundef, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @named_controls_create(ptr noundef %server, ptr noundef %ctrlsp) #0 !dbg !2931 {
entry:
  %retval = alloca i32, align 4
  %server.addr = alloca ptr, align 8
  %ctrlsp.addr = alloca ptr, align 8
  %mctx = alloca ptr, align 8
  %result = alloca i32, align 4
  %controls = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %server, ptr %server.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %server.addr, metadata !2936, metadata !DIExpression()), !dbg !2941
  store ptr %ctrlsp, ptr %ctrlsp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ctrlsp.addr, metadata !2937, metadata !DIExpression()), !dbg !2942
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #9, !dbg !2943
  tail call void @llvm.dbg.declare(metadata ptr %mctx, metadata !2938, metadata !DIExpression()), !dbg !2944
  %0 = load ptr, ptr %server.addr, align 8, !dbg !2945
  %mctx1 = getelementptr inbounds %struct.named_server, ptr %0, i32 0, i32 1, !dbg !2946
  %1 = load ptr, ptr %mctx1, align 8, !dbg !2946
  store ptr %1, ptr %mctx, align 8, !dbg !2944
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !2947
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2939, metadata !DIExpression()), !dbg !2948
  call void @llvm.lifetime.start.p0(i64 8, ptr %controls) #9, !dbg !2949
  tail call void @llvm.dbg.declare(metadata ptr %controls, metadata !2940, metadata !DIExpression()), !dbg !2950
  %2 = load ptr, ptr %mctx, align 8, !dbg !2951
  %call = call ptr @isc__mem_get(ptr noundef %2, i64 noundef 40, ptr noundef @.str.4, i32 noundef 1506), !dbg !2951
  store ptr %call, ptr %controls, align 8, !dbg !2950
  %3 = load ptr, ptr %controls, align 8, !dbg !2952
  %cmp = icmp eq ptr %3, null, !dbg !2954
  br i1 %cmp, label %if.then, label %if.end, !dbg !2955

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !2956
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2956

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %server.addr, align 8, !dbg !2957
  %5 = load ptr, ptr %controls, align 8, !dbg !2958
  %server2 = getelementptr inbounds %struct.named_controls, ptr %5, i32 0, i32 0, !dbg !2959
  store ptr %4, ptr %server2, align 8, !dbg !2960
  br label %do.body, !dbg !2961

do.body:                                          ; preds = %if.end
  %6 = load ptr, ptr %controls, align 8, !dbg !2962
  %listeners = getelementptr inbounds %struct.named_controls, ptr %6, i32 0, i32 1, !dbg !2962
  %head = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners, i32 0, i32 0, !dbg !2962
  store ptr null, ptr %head, align 8, !dbg !2962
  %7 = load ptr, ptr %controls, align 8, !dbg !2962
  %listeners3 = getelementptr inbounds %struct.named_controls, ptr %7, i32 0, i32 1, !dbg !2962
  %tail = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners3, i32 0, i32 1, !dbg !2962
  store ptr null, ptr %tail, align 8, !dbg !2962
  br label %do.cond, !dbg !2962

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2962

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %controls, align 8, !dbg !2964
  %shuttingdown = getelementptr inbounds %struct.named_controls, ptr %8, i32 0, i32 2, !dbg !2965
  store i8 0, ptr %shuttingdown, align 8, !dbg !2966
  %9 = load ptr, ptr %controls, align 8, !dbg !2967
  %symtab = getelementptr inbounds %struct.named_controls, ptr %9, i32 0, i32 3, !dbg !2968
  store ptr null, ptr %symtab, align 8, !dbg !2969
  %10 = load ptr, ptr %controls, align 8, !dbg !2970
  %symtab4 = getelementptr inbounds %struct.named_controls, ptr %10, i32 0, i32 3, !dbg !2971
  %call5 = call i32 @isccc_cc_createsymtab(ptr noundef %symtab4), !dbg !2972
  store i32 %call5, ptr %result, align 4, !dbg !2973
  %11 = load i32, ptr %result, align 4, !dbg !2974
  %cmp6 = icmp ne i32 %11, 0, !dbg !2976
  br i1 %cmp6, label %if.then7, label %if.end12, !dbg !2977

if.then7:                                         ; preds = %do.end
  br label %do.body8, !dbg !2978

do.body8:                                         ; preds = %if.then7
  %12 = load ptr, ptr %server.addr, align 8, !dbg !2980
  %mctx9 = getelementptr inbounds %struct.named_server, ptr %12, i32 0, i32 1, !dbg !2980
  %13 = load ptr, ptr %mctx9, align 8, !dbg !2980
  %14 = load ptr, ptr %controls, align 8, !dbg !2980
  call void @isc__mem_put(ptr noundef %13, ptr noundef %14, i64 noundef 40, ptr noundef @.str.4, i32 noundef 1516), !dbg !2980
  store ptr null, ptr %controls, align 8, !dbg !2980
  br label %do.cond10, !dbg !2980

do.cond10:                                        ; preds = %do.body8
  br label %do.end11, !dbg !2980

do.end11:                                         ; preds = %do.cond10
  %15 = load i32, ptr %result, align 4, !dbg !2982
  store i32 %15, ptr %retval, align 4, !dbg !2983
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2983

if.end12:                                         ; preds = %do.end
  %16 = load ptr, ptr %controls, align 8, !dbg !2984
  %17 = load ptr, ptr %ctrlsp.addr, align 8, !dbg !2985
  store ptr %16, ptr %17, align 8, !dbg !2986
  store i32 0, ptr %retval, align 4, !dbg !2987
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2987

cleanup:                                          ; preds = %if.end12, %do.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %controls) #9, !dbg !2988
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !2988
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #9, !dbg !2988
  %18 = load i32, ptr %retval, align 4, !dbg !2988
  ret i32 %18, !dbg !2988
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2989 ptr @isc__mem_get(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2990 i32 @isccc_cc_createsymtab(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2995 void @isc__mem_put(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define void @named_controls_destroy(ptr noundef %ctrlsp) #0 !dbg !2996 {
entry:
  %ctrlsp.addr = alloca ptr, align 8
  %controls = alloca ptr, align 8
  store ptr %ctrlsp, ptr %ctrlsp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ctrlsp.addr, metadata !3000, metadata !DIExpression()), !dbg !3002
  call void @llvm.lifetime.start.p0(i64 8, ptr %controls) #9, !dbg !3003
  tail call void @llvm.dbg.declare(metadata ptr %controls, metadata !3001, metadata !DIExpression()), !dbg !3004
  %0 = load ptr, ptr %ctrlsp.addr, align 8, !dbg !3005
  %1 = load ptr, ptr %0, align 8, !dbg !3006
  store ptr %1, ptr %controls, align 8, !dbg !3004
  %2 = load ptr, ptr %controls, align 8, !dbg !3007
  %listeners = getelementptr inbounds %struct.named_controls, ptr %2, i32 0, i32 1, !dbg !3007
  %head = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners, i32 0, i32 0, !dbg !3007
  %3 = load ptr, ptr %head, align 8, !dbg !3007
  %cmp = icmp eq ptr %3, null, !dbg !3007
  %lnot = xor i1 %cmp, true, !dbg !3007
  %lnot1 = xor i1 %lnot, true, !dbg !3007
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3007
  %conv = sext i32 %lnot.ext to i64, !dbg !3007
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3007
  %tobool = icmp ne i64 %expval, 0, !dbg !3007
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !3007

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 1527, i32 noundef 0, ptr noundef @.str.13) #10, !dbg !3007
  unreachable, !dbg !3007

4:                                                ; No predecessors!
  br label %lor.end, !dbg !3007

lor.end:                                          ; preds = %4, %entry
  %5 = phi i1 [ true, %entry ], [ false, %4 ]
  %lor.ext = zext i1 %5 to i32, !dbg !3007
  %6 = load ptr, ptr %controls, align 8, !dbg !3008
  %symtab = getelementptr inbounds %struct.named_controls, ptr %6, i32 0, i32 3, !dbg !3009
  call void @isccc_symtab_destroy(ptr noundef %symtab), !dbg !3010
  br label %do.body, !dbg !3011

do.body:                                          ; preds = %lor.end
  %7 = load ptr, ptr %controls, align 8, !dbg !3012
  %server = getelementptr inbounds %struct.named_controls, ptr %7, i32 0, i32 0, !dbg !3012
  %8 = load ptr, ptr %server, align 8, !dbg !3012
  %mctx = getelementptr inbounds %struct.named_server, ptr %8, i32 0, i32 1, !dbg !3012
  %9 = load ptr, ptr %mctx, align 8, !dbg !3012
  %10 = load ptr, ptr %controls, align 8, !dbg !3012
  call void @isc__mem_put(ptr noundef %9, ptr noundef %10, i64 noundef 40, ptr noundef @.str.4, i32 noundef 1530), !dbg !3012
  store ptr null, ptr %controls, align 8, !dbg !3012
  br label %do.cond, !dbg !3012

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3012

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %ctrlsp.addr, align 8, !dbg !3014
  store ptr null, ptr %11, align 8, !dbg !3015
  call void @llvm.lifetime.end.p0(i64 8, ptr %controls) #9, !dbg !3016
  ret void, !dbg !3016
}

; Function Attrs: null_pointer_is_valid
declare !dbg !3017 void @isccc_symtab_destroy(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @shutdown_listener(ptr noundef %listener) #0 !dbg !3021 {
entry:
  %listener.addr = alloca ptr, align 8
  %conn = alloca ptr, align 8
  %next = alloca ptr, align 8
  %socktext = alloca [63 x i8], align 16
  store ptr %listener, ptr %listener.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %listener.addr, metadata !3025, metadata !DIExpression()), !dbg !3031
  call void @llvm.lifetime.start.p0(i64 8, ptr %conn) #9, !dbg !3032
  tail call void @llvm.dbg.declare(metadata ptr %conn, metadata !3026, metadata !DIExpression()), !dbg !3033
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9, !dbg !3034
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !3027, metadata !DIExpression()), !dbg !3035
  %0 = load ptr, ptr %listener.addr, align 8, !dbg !3036
  %exiting = getelementptr inbounds %struct.controllistener, ptr %0, i32 0, i32 7, !dbg !3037
  %1 = load i8, ptr %exiting, align 1, !dbg !3037, !range !3038, !noundef !3039
  %tobool = trunc i8 %1 to i1, !dbg !3037
  br i1 %tobool, label %if.end92, label %if.then, !dbg !3040

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 63, ptr %socktext) #9, !dbg !3041
  tail call void @llvm.dbg.declare(metadata ptr %socktext, metadata !3028, metadata !DIExpression()), !dbg !3042
  br label %do.body, !dbg !3043

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !3044

do.body1:                                         ; preds = %do.body
  %2 = load ptr, ptr %listener.addr, align 8, !dbg !3046
  %link = getelementptr inbounds %struct.controllistener, ptr %2, i32 0, i32 15, !dbg !3046
  %next2 = getelementptr inbounds %struct.anon.6, ptr %link, i32 0, i32 1, !dbg !3046
  %3 = load ptr, ptr %next2, align 8, !dbg !3046
  %cmp = icmp ne ptr %3, null, !dbg !3046
  br i1 %cmp, label %if.then3, label %if.else, !dbg !3049

if.then3:                                         ; preds = %do.body1
  %4 = load ptr, ptr %listener.addr, align 8, !dbg !3046
  %link4 = getelementptr inbounds %struct.controllistener, ptr %4, i32 0, i32 15, !dbg !3046
  %prev = getelementptr inbounds %struct.anon.6, ptr %link4, i32 0, i32 0, !dbg !3046
  %5 = load ptr, ptr %prev, align 8, !dbg !3046
  %6 = load ptr, ptr %listener.addr, align 8, !dbg !3046
  %link5 = getelementptr inbounds %struct.controllistener, ptr %6, i32 0, i32 15, !dbg !3046
  %next6 = getelementptr inbounds %struct.anon.6, ptr %link5, i32 0, i32 1, !dbg !3046
  %7 = load ptr, ptr %next6, align 8, !dbg !3046
  %link7 = getelementptr inbounds %struct.controllistener, ptr %7, i32 0, i32 15, !dbg !3046
  %prev8 = getelementptr inbounds %struct.anon.6, ptr %link7, i32 0, i32 0, !dbg !3046
  store ptr %5, ptr %prev8, align 8, !dbg !3046
  br label %if.end, !dbg !3046

if.else:                                          ; preds = %do.body1
  %8 = load ptr, ptr %listener.addr, align 8, !dbg !3050
  %controls = getelementptr inbounds %struct.controllistener, ptr %8, i32 0, i32 0, !dbg !3050
  %9 = load ptr, ptr %controls, align 8, !dbg !3050
  %listeners = getelementptr inbounds %struct.named_controls, ptr %9, i32 0, i32 1, !dbg !3050
  %tail = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners, i32 0, i32 1, !dbg !3050
  %10 = load ptr, ptr %tail, align 8, !dbg !3050
  %11 = load ptr, ptr %listener.addr, align 8, !dbg !3050
  %cmp9 = icmp eq ptr %10, %11, !dbg !3050
  %lnot = xor i1 %cmp9, true, !dbg !3050
  %lnot10 = xor i1 %lnot, true, !dbg !3050
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !3050
  %conv = sext i32 %lnot.ext to i64, !dbg !3050
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3050
  %tobool11 = icmp ne i64 %expval, 0, !dbg !3050
  br i1 %tobool11, label %lor.end, label %lor.rhs, !dbg !3050

lor.rhs:                                          ; preds = %if.else
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 200, i32 noundef 2, ptr noundef @.str.14) #10, !dbg !3050
  unreachable, !dbg !3050

12:                                               ; No predecessors!
  br label %lor.end, !dbg !3050

lor.end:                                          ; preds = %12, %if.else
  %13 = phi i1 [ true, %if.else ], [ false, %12 ]
  %lor.ext = zext i1 %13 to i32, !dbg !3050
  %14 = load ptr, ptr %listener.addr, align 8, !dbg !3050
  %link12 = getelementptr inbounds %struct.controllistener, ptr %14, i32 0, i32 15, !dbg !3050
  %prev13 = getelementptr inbounds %struct.anon.6, ptr %link12, i32 0, i32 0, !dbg !3050
  %15 = load ptr, ptr %prev13, align 8, !dbg !3050
  %16 = load ptr, ptr %listener.addr, align 8, !dbg !3050
  %controls14 = getelementptr inbounds %struct.controllistener, ptr %16, i32 0, i32 0, !dbg !3050
  %17 = load ptr, ptr %controls14, align 8, !dbg !3050
  %listeners15 = getelementptr inbounds %struct.named_controls, ptr %17, i32 0, i32 1, !dbg !3050
  %tail16 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners15, i32 0, i32 1, !dbg !3050
  store ptr %15, ptr %tail16, align 8, !dbg !3050
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then3
  %18 = load ptr, ptr %listener.addr, align 8, !dbg !3052
  %link17 = getelementptr inbounds %struct.controllistener, ptr %18, i32 0, i32 15, !dbg !3052
  %prev18 = getelementptr inbounds %struct.anon.6, ptr %link17, i32 0, i32 0, !dbg !3052
  %19 = load ptr, ptr %prev18, align 8, !dbg !3052
  %cmp19 = icmp ne ptr %19, null, !dbg !3052
  br i1 %cmp19, label %if.then21, label %if.else28, !dbg !3049

if.then21:                                        ; preds = %if.end
  %20 = load ptr, ptr %listener.addr, align 8, !dbg !3052
  %link22 = getelementptr inbounds %struct.controllistener, ptr %20, i32 0, i32 15, !dbg !3052
  %next23 = getelementptr inbounds %struct.anon.6, ptr %link22, i32 0, i32 1, !dbg !3052
  %21 = load ptr, ptr %next23, align 8, !dbg !3052
  %22 = load ptr, ptr %listener.addr, align 8, !dbg !3052
  %link24 = getelementptr inbounds %struct.controllistener, ptr %22, i32 0, i32 15, !dbg !3052
  %prev25 = getelementptr inbounds %struct.anon.6, ptr %link24, i32 0, i32 0, !dbg !3052
  %23 = load ptr, ptr %prev25, align 8, !dbg !3052
  %link26 = getelementptr inbounds %struct.controllistener, ptr %23, i32 0, i32 15, !dbg !3052
  %next27 = getelementptr inbounds %struct.anon.6, ptr %link26, i32 0, i32 1, !dbg !3052
  store ptr %21, ptr %next27, align 8, !dbg !3052
  br label %if.end48, !dbg !3052

if.else28:                                        ; preds = %if.end
  %24 = load ptr, ptr %listener.addr, align 8, !dbg !3054
  %controls29 = getelementptr inbounds %struct.controllistener, ptr %24, i32 0, i32 0, !dbg !3054
  %25 = load ptr, ptr %controls29, align 8, !dbg !3054
  %listeners30 = getelementptr inbounds %struct.named_controls, ptr %25, i32 0, i32 1, !dbg !3054
  %head = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners30, i32 0, i32 0, !dbg !3054
  %26 = load ptr, ptr %head, align 8, !dbg !3054
  %27 = load ptr, ptr %listener.addr, align 8, !dbg !3054
  %cmp31 = icmp eq ptr %26, %27, !dbg !3054
  %lnot33 = xor i1 %cmp31, true, !dbg !3054
  %lnot35 = xor i1 %lnot33, true, !dbg !3054
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !3054
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !3054
  %expval38 = call i64 @llvm.expect.i64(i64 %conv37, i64 1), !dbg !3054
  %tobool39 = icmp ne i64 %expval38, 0, !dbg !3054
  br i1 %tobool39, label %lor.end41, label %lor.rhs40, !dbg !3054

lor.rhs40:                                        ; preds = %if.else28
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 200, i32 noundef 2, ptr noundef @.str.15) #10, !dbg !3054
  unreachable, !dbg !3054

28:                                               ; No predecessors!
  br label %lor.end41, !dbg !3054

lor.end41:                                        ; preds = %28, %if.else28
  %29 = phi i1 [ true, %if.else28 ], [ false, %28 ]
  %lor.ext42 = zext i1 %29 to i32, !dbg !3054
  %30 = load ptr, ptr %listener.addr, align 8, !dbg !3054
  %link43 = getelementptr inbounds %struct.controllistener, ptr %30, i32 0, i32 15, !dbg !3054
  %next44 = getelementptr inbounds %struct.anon.6, ptr %link43, i32 0, i32 1, !dbg !3054
  %31 = load ptr, ptr %next44, align 8, !dbg !3054
  %32 = load ptr, ptr %listener.addr, align 8, !dbg !3054
  %controls45 = getelementptr inbounds %struct.controllistener, ptr %32, i32 0, i32 0, !dbg !3054
  %33 = load ptr, ptr %controls45, align 8, !dbg !3054
  %listeners46 = getelementptr inbounds %struct.named_controls, ptr %33, i32 0, i32 1, !dbg !3054
  %head47 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners46, i32 0, i32 0, !dbg !3054
  store ptr %31, ptr %head47, align 8, !dbg !3054
  br label %if.end48

if.end48:                                         ; preds = %lor.end41, %if.then21
  %34 = load ptr, ptr %listener.addr, align 8, !dbg !3049
  %link49 = getelementptr inbounds %struct.controllistener, ptr %34, i32 0, i32 15, !dbg !3049
  %prev50 = getelementptr inbounds %struct.anon.6, ptr %link49, i32 0, i32 0, !dbg !3049
  store ptr inttoptr (i64 -1 to ptr), ptr %prev50, align 8, !dbg !3049
  %35 = load ptr, ptr %listener.addr, align 8, !dbg !3049
  %link51 = getelementptr inbounds %struct.controllistener, ptr %35, i32 0, i32 15, !dbg !3049
  %next52 = getelementptr inbounds %struct.anon.6, ptr %link51, i32 0, i32 1, !dbg !3049
  store ptr inttoptr (i64 -1 to ptr), ptr %next52, align 8, !dbg !3049
  %36 = load ptr, ptr %listener.addr, align 8, !dbg !3049
  %controls53 = getelementptr inbounds %struct.controllistener, ptr %36, i32 0, i32 0, !dbg !3049
  %37 = load ptr, ptr %controls53, align 8, !dbg !3049
  %listeners54 = getelementptr inbounds %struct.named_controls, ptr %37, i32 0, i32 1, !dbg !3049
  %head55 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners54, i32 0, i32 0, !dbg !3049
  %38 = load ptr, ptr %head55, align 8, !dbg !3049
  %39 = load ptr, ptr %listener.addr, align 8, !dbg !3049
  %cmp56 = icmp ne ptr %38, %39, !dbg !3049
  %lnot58 = xor i1 %cmp56, true, !dbg !3049
  %lnot60 = xor i1 %lnot58, true, !dbg !3049
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !3049
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !3049
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 1), !dbg !3049
  %tobool64 = icmp ne i64 %expval63, 0, !dbg !3049
  br i1 %tobool64, label %lor.end66, label %lor.rhs65, !dbg !3049

lor.rhs65:                                        ; preds = %if.end48
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 200, i32 noundef 2, ptr noundef @.str.16) #10, !dbg !3049
  unreachable, !dbg !3049

40:                                               ; No predecessors!
  br label %lor.end66, !dbg !3049

lor.end66:                                        ; preds = %40, %if.end48
  %41 = phi i1 [ true, %if.end48 ], [ false, %40 ]
  %lor.ext67 = zext i1 %41 to i32, !dbg !3049
  %42 = load ptr, ptr %listener.addr, align 8, !dbg !3049
  %controls68 = getelementptr inbounds %struct.controllistener, ptr %42, i32 0, i32 0, !dbg !3049
  %43 = load ptr, ptr %controls68, align 8, !dbg !3049
  %listeners69 = getelementptr inbounds %struct.named_controls, ptr %43, i32 0, i32 1, !dbg !3049
  %tail70 = getelementptr inbounds %struct.controllistenerlist_t, ptr %listeners69, i32 0, i32 1, !dbg !3049
  %44 = load ptr, ptr %tail70, align 8, !dbg !3049
  %45 = load ptr, ptr %listener.addr, align 8, !dbg !3049
  %cmp71 = icmp ne ptr %44, %45, !dbg !3049
  %lnot73 = xor i1 %cmp71, true, !dbg !3049
  %lnot75 = xor i1 %lnot73, true, !dbg !3049
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !3049
  %conv77 = sext i32 %lnot.ext76 to i64, !dbg !3049
  %expval78 = call i64 @llvm.expect.i64(i64 %conv77, i64 1), !dbg !3049
  %tobool79 = icmp ne i64 %expval78, 0, !dbg !3049
  br i1 %tobool79, label %lor.end81, label %lor.rhs80, !dbg !3049

lor.rhs80:                                        ; preds = %lor.end66
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 200, i32 noundef 2, ptr noundef @.str.17) #10, !dbg !3049
  unreachable, !dbg !3049

46:                                               ; No predecessors!
  br label %lor.end81, !dbg !3049

lor.end81:                                        ; preds = %46, %lor.end66
  %47 = phi i1 [ true, %lor.end66 ], [ false, %46 ]
  %lor.ext82 = zext i1 %47 to i32, !dbg !3049
  br label %do.cond, !dbg !3049

do.cond:                                          ; preds = %lor.end81
  br label %do.end, !dbg !3049

do.end:                                           ; preds = %do.cond
  br label %do.cond83, !dbg !3044

do.cond83:                                        ; preds = %do.end
  br label %do.end84, !dbg !3044

do.end84:                                         ; preds = %do.cond83
  %48 = load ptr, ptr %listener.addr, align 8, !dbg !3056
  %address = getelementptr inbounds %struct.controllistener, ptr %48, i32 0, i32 3, !dbg !3057
  %arraydecay = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !3058
  call void @isc_sockaddr_format(ptr noundef %address, ptr noundef %arraydecay, i32 noundef 63), !dbg !3059
  %49 = load ptr, ptr @named_g_lctx, align 8, !dbg !3060
  %50 = load ptr, ptr @named_g_modules, align 8, !dbg !3061
  %arrayidx = getelementptr inbounds %struct.isc_logmodule, ptr %50, i64 2, !dbg !3061
  %arraydecay85 = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !3062
  call void (ptr, ptr, ptr, i32, ptr, ...) @isc_log_write(ptr noundef %49, ptr noundef getelementptr inbounds ([0 x %struct.isc_logcategory], ptr @isc_categories, i64 0, i64 1), ptr noundef %arrayidx, i32 noundef -2, ptr noundef @.str.18, ptr noundef %arraydecay85), !dbg !3063
  %51 = load ptr, ptr %listener.addr, align 8, !dbg !3064
  %type = getelementptr inbounds %struct.controllistener, ptr %51, i32 0, i32 10, !dbg !3066
  %52 = load i32, ptr %type, align 8, !dbg !3066
  %cmp86 = icmp eq i32 %52, 3, !dbg !3067
  br i1 %cmp86, label %if.then88, label %if.end90, !dbg !3068

if.then88:                                        ; preds = %do.end84
  %53 = load ptr, ptr %listener.addr, align 8, !dbg !3069
  %address89 = getelementptr inbounds %struct.controllistener, ptr %53, i32 0, i32 3, !dbg !3070
  call void @isc_socket_cleanunix(ptr noundef %address89, i1 noundef zeroext true), !dbg !3071
  br label %if.end90, !dbg !3071

if.end90:                                         ; preds = %if.then88, %do.end84
  %54 = load ptr, ptr %listener.addr, align 8, !dbg !3072
  %exiting91 = getelementptr inbounds %struct.controllistener, ptr %54, i32 0, i32 7, !dbg !3073
  store i8 1, ptr %exiting91, align 1, !dbg !3074
  call void @llvm.lifetime.end.p0(i64 63, ptr %socktext) #9, !dbg !3075
  br label %if.end92, !dbg !3076

if.end92:                                         ; preds = %if.end90, %entry
  %55 = load ptr, ptr %listener.addr, align 8, !dbg !3077
  %connections = getelementptr inbounds %struct.controllistener, ptr %55, i32 0, i32 9, !dbg !3077
  %head93 = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections, i32 0, i32 0, !dbg !3077
  %56 = load ptr, ptr %head93, align 8, !dbg !3077
  store ptr %56, ptr %conn, align 8, !dbg !3079
  br label %for.cond, !dbg !3080

for.cond:                                         ; preds = %for.inc, %if.end92
  %57 = load ptr, ptr %conn, align 8, !dbg !3081
  %cmp94 = icmp ne ptr %57, null, !dbg !3083
  br i1 %cmp94, label %for.body, label %for.end, !dbg !3084

for.body:                                         ; preds = %for.cond
  %58 = load ptr, ptr %conn, align 8, !dbg !3085
  %link96 = getelementptr inbounds %struct.controlconnection, ptr %58, i32 0, i32 8, !dbg !3085
  %next97 = getelementptr inbounds %struct.anon.10, ptr %link96, i32 0, i32 1, !dbg !3085
  %59 = load ptr, ptr %next97, align 8, !dbg !3085
  store ptr %59, ptr %next, align 8, !dbg !3087
  %60 = load ptr, ptr %conn, align 8, !dbg !3088
  call void @maybe_free_connection(ptr noundef %60), !dbg !3089
  br label %for.inc, !dbg !3090

for.inc:                                          ; preds = %for.body
  %61 = load ptr, ptr %next, align 8, !dbg !3091
  store ptr %61, ptr %conn, align 8, !dbg !3092
  br label %for.cond, !dbg !3093, !llvm.loop !3094

for.end:                                          ; preds = %for.cond
  %62 = load ptr, ptr %listener.addr, align 8, !dbg !3096
  %listening = getelementptr inbounds %struct.controllistener, ptr %62, i32 0, i32 6, !dbg !3098
  %63 = load i8, ptr %listening, align 8, !dbg !3098, !range !3038, !noundef !3039
  %tobool98 = trunc i8 %63 to i1, !dbg !3098
  br i1 %tobool98, label %if.then99, label %if.end100, !dbg !3099

if.then99:                                        ; preds = %for.end
  %64 = load ptr, ptr %listener.addr, align 8, !dbg !3100
  %sock = getelementptr inbounds %struct.controllistener, ptr %64, i32 0, i32 4, !dbg !3101
  %65 = load ptr, ptr %sock, align 8, !dbg !3101
  %66 = load ptr, ptr %listener.addr, align 8, !dbg !3102
  %task = getelementptr inbounds %struct.controllistener, ptr %66, i32 0, i32 2, !dbg !3103
  %67 = load ptr, ptr %task, align 8, !dbg !3103
  call void @isc_socket_cancel(ptr noundef %65, ptr noundef %67, i32 noundef 4), !dbg !3104
  br label %if.end100, !dbg !3104

if.end100:                                        ; preds = %if.then99, %for.end
  %68 = load ptr, ptr %listener.addr, align 8, !dbg !3105
  call void @maybe_free_listener(ptr noundef %68), !dbg !3106
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9, !dbg !3107
  call void @llvm.lifetime.end.p0(i64 8, ptr %conn) #9, !dbg !3107
  ret void, !dbg !3107
}

; Function Attrs: null_pointer_is_valid
declare !dbg !3108 void @isc_socket_cleanunix(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @maybe_free_connection(ptr noundef %conn) #0 !dbg !3111 {
entry:
  %conn.addr = alloca ptr, align 8
  %listener = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %conn, ptr %conn.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %conn.addr, metadata !3115, metadata !DIExpression()), !dbg !3117
  call void @llvm.lifetime.start.p0(i64 8, ptr %listener) #9, !dbg !3118
  tail call void @llvm.dbg.declare(metadata ptr %listener, metadata !3116, metadata !DIExpression()), !dbg !3119
  %0 = load ptr, ptr %conn.addr, align 8, !dbg !3120
  %listener1 = getelementptr inbounds %struct.controlconnection, ptr %0, i32 0, i32 6, !dbg !3121
  %1 = load ptr, ptr %listener1, align 8, !dbg !3121
  store ptr %1, ptr %listener, align 8, !dbg !3119
  %2 = load ptr, ptr %conn.addr, align 8, !dbg !3122
  %buffer = getelementptr inbounds %struct.controlconnection, ptr %2, i32 0, i32 5, !dbg !3124
  %3 = load ptr, ptr %buffer, align 8, !dbg !3124
  %cmp = icmp ne ptr %3, null, !dbg !3125
  br i1 %cmp, label %if.then, label %if.end, !dbg !3126

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %conn.addr, align 8, !dbg !3127
  %buffer2 = getelementptr inbounds %struct.controlconnection, ptr %4, i32 0, i32 5, !dbg !3128
  call void @isc_buffer_free(ptr noundef %buffer2), !dbg !3129
  br label %if.end, !dbg !3129

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %conn.addr, align 8, !dbg !3130
  %timer = getelementptr inbounds %struct.controlconnection, ptr %5, i32 0, i32 4, !dbg !3132
  %6 = load ptr, ptr %timer, align 8, !dbg !3132
  %cmp3 = icmp ne ptr %6, null, !dbg !3133
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !3134

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %conn.addr, align 8, !dbg !3135
  %timer5 = getelementptr inbounds %struct.controlconnection, ptr %7, i32 0, i32 4, !dbg !3136
  call void @isc_timer_detach(ptr noundef %timer5), !dbg !3137
  br label %if.end6, !dbg !3137

if.end6:                                          ; preds = %if.then4, %if.end
  %8 = load ptr, ptr %conn.addr, align 8, !dbg !3138
  %ccmsg_valid = getelementptr inbounds %struct.controlconnection, ptr %8, i32 0, i32 2, !dbg !3140
  %9 = load i8, ptr %ccmsg_valid, align 8, !dbg !3140, !range !3038, !noundef !3039
  %tobool = trunc i8 %9 to i1, !dbg !3140
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !3141

if.then7:                                         ; preds = %if.end6
  %10 = load ptr, ptr %conn.addr, align 8, !dbg !3142
  %ccmsg = getelementptr inbounds %struct.controlconnection, ptr %10, i32 0, i32 1, !dbg !3144
  call void @isccc_ccmsg_cancelread(ptr noundef %ccmsg), !dbg !3145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3146

if.end8:                                          ; preds = %if.end6
  %11 = load ptr, ptr %conn.addr, align 8, !dbg !3147
  %sending = getelementptr inbounds %struct.controlconnection, ptr %11, i32 0, i32 3, !dbg !3149
  %12 = load i8, ptr %sending, align 1, !dbg !3149, !range !3038, !noundef !3039
  %tobool9 = trunc i8 %12 to i1, !dbg !3149
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3150

if.then10:                                        ; preds = %if.end8
  %13 = load ptr, ptr %conn.addr, align 8, !dbg !3151
  %sock = getelementptr inbounds %struct.controlconnection, ptr %13, i32 0, i32 0, !dbg !3153
  %14 = load ptr, ptr %sock, align 8, !dbg !3153
  %15 = load ptr, ptr %listener, align 8, !dbg !3154
  %task = getelementptr inbounds %struct.controllistener, ptr %15, i32 0, i32 2, !dbg !3155
  %16 = load ptr, ptr %task, align 8, !dbg !3155
  call void @isc_socket_cancel(ptr noundef %14, ptr noundef %16, i32 noundef 2), !dbg !3156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3157

if.end11:                                         ; preds = %if.end8
  br label %do.body, !dbg !3158

do.body:                                          ; preds = %if.end11
  br label %do.body12, !dbg !3159

do.body12:                                        ; preds = %do.body
  %17 = load ptr, ptr %conn.addr, align 8, !dbg !3161
  %link = getelementptr inbounds %struct.controlconnection, ptr %17, i32 0, i32 8, !dbg !3161
  %next = getelementptr inbounds %struct.anon.10, ptr %link, i32 0, i32 1, !dbg !3161
  %18 = load ptr, ptr %next, align 8, !dbg !3161
  %cmp13 = icmp ne ptr %18, null, !dbg !3161
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !3164

if.then14:                                        ; preds = %do.body12
  %19 = load ptr, ptr %conn.addr, align 8, !dbg !3161
  %link15 = getelementptr inbounds %struct.controlconnection, ptr %19, i32 0, i32 8, !dbg !3161
  %prev = getelementptr inbounds %struct.anon.10, ptr %link15, i32 0, i32 0, !dbg !3161
  %20 = load ptr, ptr %prev, align 8, !dbg !3161
  %21 = load ptr, ptr %conn.addr, align 8, !dbg !3161
  %link16 = getelementptr inbounds %struct.controlconnection, ptr %21, i32 0, i32 8, !dbg !3161
  %next17 = getelementptr inbounds %struct.anon.10, ptr %link16, i32 0, i32 1, !dbg !3161
  %22 = load ptr, ptr %next17, align 8, !dbg !3161
  %link18 = getelementptr inbounds %struct.controlconnection, ptr %22, i32 0, i32 8, !dbg !3161
  %prev19 = getelementptr inbounds %struct.anon.10, ptr %link18, i32 0, i32 0, !dbg !3161
  store ptr %20, ptr %prev19, align 8, !dbg !3161
  br label %if.end27, !dbg !3161

if.else:                                          ; preds = %do.body12
  %23 = load ptr, ptr %listener, align 8, !dbg !3165
  %connections = getelementptr inbounds %struct.controllistener, ptr %23, i32 0, i32 9, !dbg !3165
  %tail = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections, i32 0, i32 1, !dbg !3165
  %24 = load ptr, ptr %tail, align 8, !dbg !3165
  %25 = load ptr, ptr %conn.addr, align 8, !dbg !3165
  %cmp20 = icmp eq ptr %24, %25, !dbg !3165
  %lnot = xor i1 %cmp20, true, !dbg !3165
  %lnot21 = xor i1 %lnot, true, !dbg !3165
  %lnot.ext = zext i1 %lnot21 to i32, !dbg !3165
  %conv = sext i32 %lnot.ext to i64, !dbg !3165
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3165
  %tobool22 = icmp ne i64 %expval, 0, !dbg !3165
  br i1 %tobool22, label %lor.end, label %lor.rhs, !dbg !3165

lor.rhs:                                          ; preds = %if.else
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 183, i32 noundef 2, ptr noundef @.str.19) #10, !dbg !3165
  unreachable, !dbg !3165

26:                                               ; No predecessors!
  br label %lor.end, !dbg !3165

lor.end:                                          ; preds = %26, %if.else
  %27 = phi i1 [ true, %if.else ], [ false, %26 ]
  %lor.ext = zext i1 %27 to i32, !dbg !3165
  %28 = load ptr, ptr %conn.addr, align 8, !dbg !3165
  %link23 = getelementptr inbounds %struct.controlconnection, ptr %28, i32 0, i32 8, !dbg !3165
  %prev24 = getelementptr inbounds %struct.anon.10, ptr %link23, i32 0, i32 0, !dbg !3165
  %29 = load ptr, ptr %prev24, align 8, !dbg !3165
  %30 = load ptr, ptr %listener, align 8, !dbg !3165
  %connections25 = getelementptr inbounds %struct.controllistener, ptr %30, i32 0, i32 9, !dbg !3165
  %tail26 = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections25, i32 0, i32 1, !dbg !3165
  store ptr %29, ptr %tail26, align 8, !dbg !3165
  br label %if.end27

if.end27:                                         ; preds = %lor.end, %if.then14
  %31 = load ptr, ptr %conn.addr, align 8, !dbg !3167
  %link28 = getelementptr inbounds %struct.controlconnection, ptr %31, i32 0, i32 8, !dbg !3167
  %prev29 = getelementptr inbounds %struct.anon.10, ptr %link28, i32 0, i32 0, !dbg !3167
  %32 = load ptr, ptr %prev29, align 8, !dbg !3167
  %cmp30 = icmp ne ptr %32, null, !dbg !3167
  br i1 %cmp30, label %if.then32, label %if.else39, !dbg !3164

if.then32:                                        ; preds = %if.end27
  %33 = load ptr, ptr %conn.addr, align 8, !dbg !3167
  %link33 = getelementptr inbounds %struct.controlconnection, ptr %33, i32 0, i32 8, !dbg !3167
  %next34 = getelementptr inbounds %struct.anon.10, ptr %link33, i32 0, i32 1, !dbg !3167
  %34 = load ptr, ptr %next34, align 8, !dbg !3167
  %35 = load ptr, ptr %conn.addr, align 8, !dbg !3167
  %link35 = getelementptr inbounds %struct.controlconnection, ptr %35, i32 0, i32 8, !dbg !3167
  %prev36 = getelementptr inbounds %struct.anon.10, ptr %link35, i32 0, i32 0, !dbg !3167
  %36 = load ptr, ptr %prev36, align 8, !dbg !3167
  %link37 = getelementptr inbounds %struct.controlconnection, ptr %36, i32 0, i32 8, !dbg !3167
  %next38 = getelementptr inbounds %struct.anon.10, ptr %link37, i32 0, i32 1, !dbg !3167
  store ptr %34, ptr %next38, align 8, !dbg !3167
  br label %if.end57, !dbg !3167

if.else39:                                        ; preds = %if.end27
  %37 = load ptr, ptr %listener, align 8, !dbg !3169
  %connections40 = getelementptr inbounds %struct.controllistener, ptr %37, i32 0, i32 9, !dbg !3169
  %head = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections40, i32 0, i32 0, !dbg !3169
  %38 = load ptr, ptr %head, align 8, !dbg !3169
  %39 = load ptr, ptr %conn.addr, align 8, !dbg !3169
  %cmp41 = icmp eq ptr %38, %39, !dbg !3169
  %lnot43 = xor i1 %cmp41, true, !dbg !3169
  %lnot45 = xor i1 %lnot43, true, !dbg !3169
  %lnot.ext46 = zext i1 %lnot45 to i32, !dbg !3169
  %conv47 = sext i32 %lnot.ext46 to i64, !dbg !3169
  %expval48 = call i64 @llvm.expect.i64(i64 %conv47, i64 1), !dbg !3169
  %tobool49 = icmp ne i64 %expval48, 0, !dbg !3169
  br i1 %tobool49, label %lor.end51, label %lor.rhs50, !dbg !3169

lor.rhs50:                                        ; preds = %if.else39
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 183, i32 noundef 2, ptr noundef @.str.20) #10, !dbg !3169
  unreachable, !dbg !3169

40:                                               ; No predecessors!
  br label %lor.end51, !dbg !3169

lor.end51:                                        ; preds = %40, %if.else39
  %41 = phi i1 [ true, %if.else39 ], [ false, %40 ]
  %lor.ext52 = zext i1 %41 to i32, !dbg !3169
  %42 = load ptr, ptr %conn.addr, align 8, !dbg !3169
  %link53 = getelementptr inbounds %struct.controlconnection, ptr %42, i32 0, i32 8, !dbg !3169
  %next54 = getelementptr inbounds %struct.anon.10, ptr %link53, i32 0, i32 1, !dbg !3169
  %43 = load ptr, ptr %next54, align 8, !dbg !3169
  %44 = load ptr, ptr %listener, align 8, !dbg !3169
  %connections55 = getelementptr inbounds %struct.controllistener, ptr %44, i32 0, i32 9, !dbg !3169
  %head56 = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections55, i32 0, i32 0, !dbg !3169
  store ptr %43, ptr %head56, align 8, !dbg !3169
  br label %if.end57

if.end57:                                         ; preds = %lor.end51, %if.then32
  %45 = load ptr, ptr %conn.addr, align 8, !dbg !3164
  %link58 = getelementptr inbounds %struct.controlconnection, ptr %45, i32 0, i32 8, !dbg !3164
  %prev59 = getelementptr inbounds %struct.anon.10, ptr %link58, i32 0, i32 0, !dbg !3164
  store ptr inttoptr (i64 -1 to ptr), ptr %prev59, align 8, !dbg !3164
  %46 = load ptr, ptr %conn.addr, align 8, !dbg !3164
  %link60 = getelementptr inbounds %struct.controlconnection, ptr %46, i32 0, i32 8, !dbg !3164
  %next61 = getelementptr inbounds %struct.anon.10, ptr %link60, i32 0, i32 1, !dbg !3164
  store ptr inttoptr (i64 -1 to ptr), ptr %next61, align 8, !dbg !3164
  %47 = load ptr, ptr %listener, align 8, !dbg !3164
  %connections62 = getelementptr inbounds %struct.controllistener, ptr %47, i32 0, i32 9, !dbg !3164
  %head63 = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections62, i32 0, i32 0, !dbg !3164
  %48 = load ptr, ptr %head63, align 8, !dbg !3164
  %49 = load ptr, ptr %conn.addr, align 8, !dbg !3164
  %cmp64 = icmp ne ptr %48, %49, !dbg !3164
  %lnot66 = xor i1 %cmp64, true, !dbg !3164
  %lnot68 = xor i1 %lnot66, true, !dbg !3164
  %lnot.ext69 = zext i1 %lnot68 to i32, !dbg !3164
  %conv70 = sext i32 %lnot.ext69 to i64, !dbg !3164
  %expval71 = call i64 @llvm.expect.i64(i64 %conv70, i64 1), !dbg !3164
  %tobool72 = icmp ne i64 %expval71, 0, !dbg !3164
  br i1 %tobool72, label %lor.end74, label %lor.rhs73, !dbg !3164

lor.rhs73:                                        ; preds = %if.end57
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 183, i32 noundef 2, ptr noundef @.str.21) #10, !dbg !3164
  unreachable, !dbg !3164

50:                                               ; No predecessors!
  br label %lor.end74, !dbg !3164

lor.end74:                                        ; preds = %50, %if.end57
  %51 = phi i1 [ true, %if.end57 ], [ false, %50 ]
  %lor.ext75 = zext i1 %51 to i32, !dbg !3164
  %52 = load ptr, ptr %listener, align 8, !dbg !3164
  %connections76 = getelementptr inbounds %struct.controllistener, ptr %52, i32 0, i32 9, !dbg !3164
  %tail77 = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections76, i32 0, i32 1, !dbg !3164
  %53 = load ptr, ptr %tail77, align 8, !dbg !3164
  %54 = load ptr, ptr %conn.addr, align 8, !dbg !3164
  %cmp78 = icmp ne ptr %53, %54, !dbg !3164
  %lnot80 = xor i1 %cmp78, true, !dbg !3164
  %lnot82 = xor i1 %lnot80, true, !dbg !3164
  %lnot.ext83 = zext i1 %lnot82 to i32, !dbg !3164
  %conv84 = sext i32 %lnot.ext83 to i64, !dbg !3164
  %expval85 = call i64 @llvm.expect.i64(i64 %conv84, i64 1), !dbg !3164
  %tobool86 = icmp ne i64 %expval85, 0, !dbg !3164
  br i1 %tobool86, label %lor.end88, label %lor.rhs87, !dbg !3164

lor.rhs87:                                        ; preds = %lor.end74
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 183, i32 noundef 2, ptr noundef @.str.22) #10, !dbg !3164
  unreachable, !dbg !3164

55:                                               ; No predecessors!
  br label %lor.end88, !dbg !3164

lor.end88:                                        ; preds = %55, %lor.end74
  %56 = phi i1 [ true, %lor.end74 ], [ false, %55 ]
  %lor.ext89 = zext i1 %56 to i32, !dbg !3164
  br label %do.cond, !dbg !3164

do.cond:                                          ; preds = %lor.end88
  br label %do.end, !dbg !3164

do.end:                                           ; preds = %do.cond
  br label %do.cond90, !dbg !3159

do.cond90:                                        ; preds = %do.end
  br label %do.end91, !dbg !3159

do.end91:                                         ; preds = %do.cond90
  br label %do.body92, !dbg !3171

do.body92:                                        ; preds = %do.end91
  %57 = load ptr, ptr %listener, align 8, !dbg !3172
  %mctx = getelementptr inbounds %struct.controllistener, ptr %57, i32 0, i32 1, !dbg !3172
  %58 = load ptr, ptr %mctx, align 8, !dbg !3172
  %59 = load ptr, ptr %conn.addr, align 8, !dbg !3172
  call void @isc__mem_put(ptr noundef %58, ptr noundef %59, i64 noundef 448, ptr noundef @.str.4, i32 noundef 189), !dbg !3172
  store ptr null, ptr %conn.addr, align 8, !dbg !3172
  br label %do.cond93, !dbg !3172

do.cond93:                                        ; preds = %do.body92
  br label %do.end94, !dbg !3172

do.end94:                                         ; preds = %do.cond93
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3174
  br label %cleanup, !dbg !3174

cleanup:                                          ; preds = %do.end94, %if.then10, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %listener) #9, !dbg !3174
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3174

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare !dbg !3175 void @isc_socket_cancel(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @maybe_free_listener(ptr noundef %listener) #0 !dbg !3178 {
entry:
  %listener.addr = alloca ptr, align 8
  store ptr %listener, ptr %listener.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %listener.addr, metadata !3180, metadata !DIExpression()), !dbg !3181
  %0 = load ptr, ptr %listener.addr, align 8, !dbg !3182
  %exiting = getelementptr inbounds %struct.controllistener, ptr %0, i32 0, i32 7, !dbg !3184
  %1 = load i8, ptr %exiting, align 1, !dbg !3184, !range !3038, !noundef !3039
  %tobool = trunc i8 %1 to i1, !dbg !3184
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3185

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %listener.addr, align 8, !dbg !3186
  %listening = getelementptr inbounds %struct.controllistener, ptr %2, i32 0, i32 6, !dbg !3187
  %3 = load i8, ptr %listening, align 8, !dbg !3187, !range !3038, !noundef !3039
  %tobool1 = trunc i8 %3 to i1, !dbg !3187
  br i1 %tobool1, label %if.end, label %land.lhs.true2, !dbg !3188

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %listener.addr, align 8, !dbg !3189
  %connections = getelementptr inbounds %struct.controllistener, ptr %4, i32 0, i32 9, !dbg !3189
  %head = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections, i32 0, i32 0, !dbg !3189
  %5 = load ptr, ptr %head, align 8, !dbg !3189
  %cmp = icmp eq ptr %5, null, !dbg !3189
  br i1 %cmp, label %if.then, label %if.end, !dbg !3190

if.then:                                          ; preds = %land.lhs.true2
  %6 = load ptr, ptr %listener.addr, align 8, !dbg !3191
  call void @free_listener(ptr noundef %6), !dbg !3192
  br label %if.end, !dbg !3192

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !3193
}

; Function Attrs: null_pointer_is_valid
declare !dbg !3194 void @isc_buffer_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3198 void @isc_timer_detach(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3202 void @isccc_ccmsg_cancelread(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @free_listener(ptr noundef %listener) #0 !dbg !3206 {
entry:
  %listener.addr = alloca ptr, align 8
  store ptr %listener, ptr %listener.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %listener.addr, metadata !3208, metadata !DIExpression()), !dbg !3209
  %0 = load ptr, ptr %listener.addr, align 8, !dbg !3210
  %exiting = getelementptr inbounds %struct.controllistener, ptr %0, i32 0, i32 7, !dbg !3210
  %1 = load i8, ptr %exiting, align 1, !dbg !3210, !range !3038, !noundef !3039
  %tobool = trunc i8 %1 to i1, !dbg !3210
  %lnot = xor i1 %tobool, true, !dbg !3210
  %lnot1 = xor i1 %lnot, true, !dbg !3210
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3210
  %conv = sext i32 %lnot.ext to i64, !dbg !3210
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3210
  %tobool2 = icmp ne i64 %expval, 0, !dbg !3210
  br i1 %tobool2, label %lor.end, label %lor.rhs, !dbg !3210

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 139, i32 noundef 2, ptr noundef @.str.23) #10, !dbg !3210
  unreachable, !dbg !3210

2:                                                ; No predecessors!
  br label %lor.end, !dbg !3210

lor.end:                                          ; preds = %2, %entry
  %3 = phi i1 [ true, %entry ], [ false, %2 ]
  %lor.ext = zext i1 %3 to i32, !dbg !3210
  %4 = load ptr, ptr %listener.addr, align 8, !dbg !3211
  %listening = getelementptr inbounds %struct.controllistener, ptr %4, i32 0, i32 6, !dbg !3211
  %5 = load i8, ptr %listening, align 8, !dbg !3211, !range !3038, !noundef !3039
  %tobool3 = trunc i8 %5 to i1, !dbg !3211
  %lnot4 = xor i1 %tobool3, true, !dbg !3211
  %lnot6 = xor i1 %lnot4, true, !dbg !3211
  %lnot8 = xor i1 %lnot6, true, !dbg !3211
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !3211
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !3211
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !3211
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !3211
  br i1 %tobool12, label %lor.end14, label %lor.rhs13, !dbg !3211

lor.rhs13:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 140, i32 noundef 2, ptr noundef @.str.24) #10, !dbg !3211
  unreachable, !dbg !3211

6:                                                ; No predecessors!
  br label %lor.end14, !dbg !3211

lor.end14:                                        ; preds = %6, %lor.end
  %7 = phi i1 [ true, %lor.end ], [ false, %6 ]
  %lor.ext15 = zext i1 %7 to i32, !dbg !3211
  %8 = load ptr, ptr %listener.addr, align 8, !dbg !3212
  %connections = getelementptr inbounds %struct.controllistener, ptr %8, i32 0, i32 9, !dbg !3212
  %head = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections, i32 0, i32 0, !dbg !3212
  %9 = load ptr, ptr %head, align 8, !dbg !3212
  %cmp = icmp eq ptr %9, null, !dbg !3212
  %lnot17 = xor i1 %cmp, true, !dbg !3212
  %lnot19 = xor i1 %lnot17, true, !dbg !3212
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3212
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3212
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 1), !dbg !3212
  %tobool23 = icmp ne i64 %expval22, 0, !dbg !3212
  br i1 %tobool23, label %lor.end25, label %lor.rhs24, !dbg !3212

lor.rhs24:                                        ; preds = %lor.end14
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 141, i32 noundef 2, ptr noundef @.str.25) #10, !dbg !3212
  unreachable, !dbg !3212

10:                                               ; No predecessors!
  br label %lor.end25, !dbg !3212

lor.end25:                                        ; preds = %10, %lor.end14
  %11 = phi i1 [ true, %lor.end14 ], [ false, %10 ]
  %lor.ext26 = zext i1 %11 to i32, !dbg !3212
  %12 = load ptr, ptr %listener.addr, align 8, !dbg !3213
  %sock = getelementptr inbounds %struct.controllistener, ptr %12, i32 0, i32 4, !dbg !3215
  %13 = load ptr, ptr %sock, align 8, !dbg !3215
  %cmp27 = icmp ne ptr %13, null, !dbg !3216
  br i1 %cmp27, label %if.then, label %if.end, !dbg !3217

if.then:                                          ; preds = %lor.end25
  %14 = load ptr, ptr %listener.addr, align 8, !dbg !3218
  %sock29 = getelementptr inbounds %struct.controllistener, ptr %14, i32 0, i32 4, !dbg !3219
  call void @isc_socket_detach(ptr noundef %sock29), !dbg !3220
  br label %if.end, !dbg !3220

if.end:                                           ; preds = %if.then, %lor.end25
  %15 = load ptr, ptr %listener.addr, align 8, !dbg !3221
  %keys = getelementptr inbounds %struct.controllistener, ptr %15, i32 0, i32 8, !dbg !3222
  %16 = load ptr, ptr %listener.addr, align 8, !dbg !3223
  %mctx = getelementptr inbounds %struct.controllistener, ptr %16, i32 0, i32 1, !dbg !3224
  %17 = load ptr, ptr %mctx, align 8, !dbg !3224
  call void @free_controlkeylist(ptr noundef %keys, ptr noundef %17), !dbg !3225
  %18 = load ptr, ptr %listener.addr, align 8, !dbg !3226
  %acl = getelementptr inbounds %struct.controllistener, ptr %18, i32 0, i32 5, !dbg !3228
  %19 = load ptr, ptr %acl, align 8, !dbg !3228
  %cmp30 = icmp ne ptr %19, null, !dbg !3229
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !3230

if.then32:                                        ; preds = %if.end
  %20 = load ptr, ptr %listener.addr, align 8, !dbg !3231
  %acl33 = getelementptr inbounds %struct.controllistener, ptr %20, i32 0, i32 5, !dbg !3232
  call void @dns_acl_detach(ptr noundef %acl33), !dbg !3233
  br label %if.end34, !dbg !3233

if.end34:                                         ; preds = %if.then32, %if.end
  br label %do.body, !dbg !3234

do.body:                                          ; preds = %if.end34
  %21 = load ptr, ptr %listener.addr, align 8, !dbg !3235
  %mctx35 = getelementptr inbounds %struct.controllistener, ptr %21, i32 0, i32 1, !dbg !3235
  %22 = load ptr, ptr %listener.addr, align 8, !dbg !3235
  call void @isc__mem_putanddetach(ptr noundef %mctx35, ptr noundef %22, i64 noundef 272, ptr noundef @.str.4, i32 noundef 151), !dbg !3235
  store ptr null, ptr %listener.addr, align 8, !dbg !3235
  br label %do.end, !dbg !3235

do.end:                                           ; preds = %do.body
  ret void, !dbg !3237
}

; Function Attrs: null_pointer_is_valid
declare !dbg !3238 void @isc_socket_detach(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @free_controlkeylist(ptr noundef %keylist, ptr noundef %mctx) #0 !dbg !3242 {
entry:
  %keylist.addr = alloca ptr, align 8
  %mctx.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  store ptr %keylist, ptr %keylist.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %keylist.addr, metadata !3247, metadata !DIExpression()), !dbg !3251
  store ptr %mctx, ptr %mctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mctx.addr, metadata !3248, metadata !DIExpression()), !dbg !3252
  br label %while.cond, !dbg !3253

while.cond:                                       ; preds = %do.end75, %entry
  %0 = load ptr, ptr %keylist.addr, align 8, !dbg !3254
  %head = getelementptr inbounds %struct.controlkeylist_t, ptr %0, i32 0, i32 0, !dbg !3254
  %1 = load ptr, ptr %head, align 8, !dbg !3254
  %cmp = icmp eq ptr %1, null, !dbg !3254
  %lnot = xor i1 %cmp, true, !dbg !3255
  br i1 %lnot, label %while.body, label %while.end, !dbg !3253

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #9, !dbg !3256
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !3249, metadata !DIExpression()), !dbg !3257
  %2 = load ptr, ptr %keylist.addr, align 8, !dbg !3258
  %head1 = getelementptr inbounds %struct.controlkeylist_t, ptr %2, i32 0, i32 0, !dbg !3258
  %3 = load ptr, ptr %head1, align 8, !dbg !3258
  store ptr %3, ptr %key, align 8, !dbg !3257
  br label %do.body, !dbg !3259

do.body:                                          ; preds = %while.body
  br label %do.body2, !dbg !3260

do.body2:                                         ; preds = %do.body
  %4 = load ptr, ptr %key, align 8, !dbg !3262
  %link = getelementptr inbounds %struct.controlkey, ptr %4, i32 0, i32 3, !dbg !3262
  %next = getelementptr inbounds %struct.anon.11, ptr %link, i32 0, i32 1, !dbg !3262
  %5 = load ptr, ptr %next, align 8, !dbg !3262
  %cmp3 = icmp ne ptr %5, null, !dbg !3262
  br i1 %cmp3, label %if.then, label %if.else, !dbg !3265

if.then:                                          ; preds = %do.body2
  %6 = load ptr, ptr %key, align 8, !dbg !3262
  %link4 = getelementptr inbounds %struct.controlkey, ptr %6, i32 0, i32 3, !dbg !3262
  %prev = getelementptr inbounds %struct.anon.11, ptr %link4, i32 0, i32 0, !dbg !3262
  %7 = load ptr, ptr %prev, align 8, !dbg !3262
  %8 = load ptr, ptr %key, align 8, !dbg !3262
  %link5 = getelementptr inbounds %struct.controlkey, ptr %8, i32 0, i32 3, !dbg !3262
  %next6 = getelementptr inbounds %struct.anon.11, ptr %link5, i32 0, i32 1, !dbg !3262
  %9 = load ptr, ptr %next6, align 8, !dbg !3262
  %link7 = getelementptr inbounds %struct.controlkey, ptr %9, i32 0, i32 3, !dbg !3262
  %prev8 = getelementptr inbounds %struct.anon.11, ptr %link7, i32 0, i32 0, !dbg !3262
  store ptr %7, ptr %prev8, align 8, !dbg !3262
  br label %if.end, !dbg !3262

if.else:                                          ; preds = %do.body2
  %10 = load ptr, ptr %keylist.addr, align 8, !dbg !3266
  %tail = getelementptr inbounds %struct.controlkeylist_t, ptr %10, i32 0, i32 1, !dbg !3266
  %11 = load ptr, ptr %tail, align 8, !dbg !3266
  %12 = load ptr, ptr %key, align 8, !dbg !3266
  %cmp9 = icmp eq ptr %11, %12, !dbg !3266
  %lnot10 = xor i1 %cmp9, true, !dbg !3266
  %lnot11 = xor i1 %lnot10, true, !dbg !3266
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !3266
  %conv = sext i32 %lnot.ext to i64, !dbg !3266
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3266
  %tobool = icmp ne i64 %expval, 0, !dbg !3266
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !3266

lor.rhs:                                          ; preds = %if.else
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 132, i32 noundef 2, ptr noundef @.str.26) #10, !dbg !3266
  unreachable, !dbg !3266

13:                                               ; No predecessors!
  br label %lor.end, !dbg !3266

lor.end:                                          ; preds = %13, %if.else
  %14 = phi i1 [ true, %if.else ], [ false, %13 ]
  %lor.ext = zext i1 %14 to i32, !dbg !3266
  %15 = load ptr, ptr %key, align 8, !dbg !3266
  %link12 = getelementptr inbounds %struct.controlkey, ptr %15, i32 0, i32 3, !dbg !3266
  %prev13 = getelementptr inbounds %struct.anon.11, ptr %link12, i32 0, i32 0, !dbg !3266
  %16 = load ptr, ptr %prev13, align 8, !dbg !3266
  %17 = load ptr, ptr %keylist.addr, align 8, !dbg !3266
  %tail14 = getelementptr inbounds %struct.controlkeylist_t, ptr %17, i32 0, i32 1, !dbg !3266
  store ptr %16, ptr %tail14, align 8, !dbg !3266
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then
  %18 = load ptr, ptr %key, align 8, !dbg !3268
  %link15 = getelementptr inbounds %struct.controlkey, ptr %18, i32 0, i32 3, !dbg !3268
  %prev16 = getelementptr inbounds %struct.anon.11, ptr %link15, i32 0, i32 0, !dbg !3268
  %19 = load ptr, ptr %prev16, align 8, !dbg !3268
  %cmp17 = icmp ne ptr %19, null, !dbg !3268
  br i1 %cmp17, label %if.then19, label %if.else26, !dbg !3265

if.then19:                                        ; preds = %if.end
  %20 = load ptr, ptr %key, align 8, !dbg !3268
  %link20 = getelementptr inbounds %struct.controlkey, ptr %20, i32 0, i32 3, !dbg !3268
  %next21 = getelementptr inbounds %struct.anon.11, ptr %link20, i32 0, i32 1, !dbg !3268
  %21 = load ptr, ptr %next21, align 8, !dbg !3268
  %22 = load ptr, ptr %key, align 8, !dbg !3268
  %link22 = getelementptr inbounds %struct.controlkey, ptr %22, i32 0, i32 3, !dbg !3268
  %prev23 = getelementptr inbounds %struct.anon.11, ptr %link22, i32 0, i32 0, !dbg !3268
  %23 = load ptr, ptr %prev23, align 8, !dbg !3268
  %link24 = getelementptr inbounds %struct.controlkey, ptr %23, i32 0, i32 3, !dbg !3268
  %next25 = getelementptr inbounds %struct.anon.11, ptr %link24, i32 0, i32 1, !dbg !3268
  store ptr %21, ptr %next25, align 8, !dbg !3268
  br label %if.end43, !dbg !3268

if.else26:                                        ; preds = %if.end
  %24 = load ptr, ptr %keylist.addr, align 8, !dbg !3270
  %head27 = getelementptr inbounds %struct.controlkeylist_t, ptr %24, i32 0, i32 0, !dbg !3270
  %25 = load ptr, ptr %head27, align 8, !dbg !3270
  %26 = load ptr, ptr %key, align 8, !dbg !3270
  %cmp28 = icmp eq ptr %25, %26, !dbg !3270
  %lnot30 = xor i1 %cmp28, true, !dbg !3270
  %lnot32 = xor i1 %lnot30, true, !dbg !3270
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !3270
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !3270
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 1), !dbg !3270
  %tobool36 = icmp ne i64 %expval35, 0, !dbg !3270
  br i1 %tobool36, label %lor.end38, label %lor.rhs37, !dbg !3270

lor.rhs37:                                        ; preds = %if.else26
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 132, i32 noundef 2, ptr noundef @.str.27) #10, !dbg !3270
  unreachable, !dbg !3270

27:                                               ; No predecessors!
  br label %lor.end38, !dbg !3270

lor.end38:                                        ; preds = %27, %if.else26
  %28 = phi i1 [ true, %if.else26 ], [ false, %27 ]
  %lor.ext39 = zext i1 %28 to i32, !dbg !3270
  %29 = load ptr, ptr %key, align 8, !dbg !3270
  %link40 = getelementptr inbounds %struct.controlkey, ptr %29, i32 0, i32 3, !dbg !3270
  %next41 = getelementptr inbounds %struct.anon.11, ptr %link40, i32 0, i32 1, !dbg !3270
  %30 = load ptr, ptr %next41, align 8, !dbg !3270
  %31 = load ptr, ptr %keylist.addr, align 8, !dbg !3270
  %head42 = getelementptr inbounds %struct.controlkeylist_t, ptr %31, i32 0, i32 0, !dbg !3270
  store ptr %30, ptr %head42, align 8, !dbg !3270
  br label %if.end43

if.end43:                                         ; preds = %lor.end38, %if.then19
  %32 = load ptr, ptr %key, align 8, !dbg !3265
  %link44 = getelementptr inbounds %struct.controlkey, ptr %32, i32 0, i32 3, !dbg !3265
  %prev45 = getelementptr inbounds %struct.anon.11, ptr %link44, i32 0, i32 0, !dbg !3265
  store ptr inttoptr (i64 -1 to ptr), ptr %prev45, align 8, !dbg !3265
  %33 = load ptr, ptr %key, align 8, !dbg !3265
  %link46 = getelementptr inbounds %struct.controlkey, ptr %33, i32 0, i32 3, !dbg !3265
  %next47 = getelementptr inbounds %struct.anon.11, ptr %link46, i32 0, i32 1, !dbg !3265
  store ptr inttoptr (i64 -1 to ptr), ptr %next47, align 8, !dbg !3265
  %34 = load ptr, ptr %keylist.addr, align 8, !dbg !3265
  %head48 = getelementptr inbounds %struct.controlkeylist_t, ptr %34, i32 0, i32 0, !dbg !3265
  %35 = load ptr, ptr %head48, align 8, !dbg !3265
  %36 = load ptr, ptr %key, align 8, !dbg !3265
  %cmp49 = icmp ne ptr %35, %36, !dbg !3265
  %lnot51 = xor i1 %cmp49, true, !dbg !3265
  %lnot53 = xor i1 %lnot51, true, !dbg !3265
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !3265
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !3265
  %expval56 = call i64 @llvm.expect.i64(i64 %conv55, i64 1), !dbg !3265
  %tobool57 = icmp ne i64 %expval56, 0, !dbg !3265
  br i1 %tobool57, label %lor.end59, label %lor.rhs58, !dbg !3265

lor.rhs58:                                        ; preds = %if.end43
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 132, i32 noundef 2, ptr noundef @.str.28) #10, !dbg !3265
  unreachable, !dbg !3265

37:                                               ; No predecessors!
  br label %lor.end59, !dbg !3265

lor.end59:                                        ; preds = %37, %if.end43
  %38 = phi i1 [ true, %if.end43 ], [ false, %37 ]
  %lor.ext60 = zext i1 %38 to i32, !dbg !3265
  %39 = load ptr, ptr %keylist.addr, align 8, !dbg !3265
  %tail61 = getelementptr inbounds %struct.controlkeylist_t, ptr %39, i32 0, i32 1, !dbg !3265
  %40 = load ptr, ptr %tail61, align 8, !dbg !3265
  %41 = load ptr, ptr %key, align 8, !dbg !3265
  %cmp62 = icmp ne ptr %40, %41, !dbg !3265
  %lnot64 = xor i1 %cmp62, true, !dbg !3265
  %lnot66 = xor i1 %lnot64, true, !dbg !3265
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !3265
  %conv68 = sext i32 %lnot.ext67 to i64, !dbg !3265
  %expval69 = call i64 @llvm.expect.i64(i64 %conv68, i64 1), !dbg !3265
  %tobool70 = icmp ne i64 %expval69, 0, !dbg !3265
  br i1 %tobool70, label %lor.end72, label %lor.rhs71, !dbg !3265

lor.rhs71:                                        ; preds = %lor.end59
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 132, i32 noundef 2, ptr noundef @.str.29) #10, !dbg !3265
  unreachable, !dbg !3265

42:                                               ; No predecessors!
  br label %lor.end72, !dbg !3265

lor.end72:                                        ; preds = %42, %lor.end59
  %43 = phi i1 [ true, %lor.end59 ], [ false, %42 ]
  %lor.ext73 = zext i1 %43 to i32, !dbg !3265
  br label %do.cond, !dbg !3265

do.cond:                                          ; preds = %lor.end72
  br label %do.end, !dbg !3265

do.end:                                           ; preds = %do.cond
  br label %do.cond74, !dbg !3260

do.cond74:                                        ; preds = %do.end
  br label %do.end75, !dbg !3260

do.end75:                                         ; preds = %do.cond74
  %44 = load ptr, ptr %key, align 8, !dbg !3272
  %45 = load ptr, ptr %mctx.addr, align 8, !dbg !3273
  call void @free_controlkey(ptr noundef %44, ptr noundef %45), !dbg !3274
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #9, !dbg !3275
  br label %while.cond, !dbg !3253, !llvm.loop !3276

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3277
}

; Function Attrs: null_pointer_is_valid
declare !dbg !3278 void @dns_acl_detach(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3282 void @isc__mem_putanddetach(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @free_controlkey(ptr noundef %key, ptr noundef %mctx) #0 !dbg !3283 {
entry:
  %key.addr = alloca ptr, align 8
  %mctx.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3287, metadata !DIExpression()), !dbg !3289
  store ptr %mctx, ptr %mctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mctx.addr, metadata !3288, metadata !DIExpression()), !dbg !3290
  %0 = load ptr, ptr %key.addr, align 8, !dbg !3291
  %keyname = getelementptr inbounds %struct.controlkey, ptr %0, i32 0, i32 0, !dbg !3293
  %1 = load ptr, ptr %keyname, align 8, !dbg !3293
  %cmp = icmp ne ptr %1, null, !dbg !3294
  br i1 %cmp, label %if.then, label %if.end, !dbg !3295

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3296

do.body:                                          ; preds = %if.then
  %2 = load ptr, ptr %mctx.addr, align 8, !dbg !3297
  %3 = load ptr, ptr %key.addr, align 8, !dbg !3297
  %keyname1 = getelementptr inbounds %struct.controlkey, ptr %3, i32 0, i32 0, !dbg !3297
  %4 = load ptr, ptr %keyname1, align 8, !dbg !3297
  call void @isc__mem_free(ptr noundef %2, ptr noundef %4, ptr noundef @.str.4, i32 noundef 122), !dbg !3297
  %5 = load ptr, ptr %key.addr, align 8, !dbg !3297
  %keyname2 = getelementptr inbounds %struct.controlkey, ptr %5, i32 0, i32 0, !dbg !3297
  store ptr null, ptr %keyname2, align 8, !dbg !3297
  br label %do.end, !dbg !3297

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !3297

if.end:                                           ; preds = %do.end, %entry
  %6 = load ptr, ptr %key.addr, align 8, !dbg !3299
  %secret = getelementptr inbounds %struct.controlkey, ptr %6, i32 0, i32 2, !dbg !3301
  %base = getelementptr inbounds %struct.isc_region, ptr %secret, i32 0, i32 0, !dbg !3302
  %7 = load ptr, ptr %base, align 8, !dbg !3302
  %cmp3 = icmp ne ptr %7, null, !dbg !3303
  br i1 %cmp3, label %if.then4, label %if.end12, !dbg !3304

if.then4:                                         ; preds = %if.end
  br label %do.body5, !dbg !3305

do.body5:                                         ; preds = %if.then4
  %8 = load ptr, ptr %mctx.addr, align 8, !dbg !3306
  %9 = load ptr, ptr %key.addr, align 8, !dbg !3306
  %secret6 = getelementptr inbounds %struct.controlkey, ptr %9, i32 0, i32 2, !dbg !3306
  %base7 = getelementptr inbounds %struct.isc_region, ptr %secret6, i32 0, i32 0, !dbg !3306
  %10 = load ptr, ptr %base7, align 8, !dbg !3306
  %11 = load ptr, ptr %key.addr, align 8, !dbg !3306
  %secret8 = getelementptr inbounds %struct.controlkey, ptr %11, i32 0, i32 2, !dbg !3306
  %length = getelementptr inbounds %struct.isc_region, ptr %secret8, i32 0, i32 1, !dbg !3306
  %12 = load i32, ptr %length, align 8, !dbg !3306
  %conv = zext i32 %12 to i64, !dbg !3306
  call void @isc__mem_put(ptr noundef %8, ptr noundef %10, i64 noundef %conv, ptr noundef @.str.4, i32 noundef 124), !dbg !3306
  %13 = load ptr, ptr %key.addr, align 8, !dbg !3306
  %secret9 = getelementptr inbounds %struct.controlkey, ptr %13, i32 0, i32 2, !dbg !3306
  %base10 = getelementptr inbounds %struct.isc_region, ptr %secret9, i32 0, i32 0, !dbg !3306
  store ptr null, ptr %base10, align 8, !dbg !3306
  br label %do.end11, !dbg !3306

do.end11:                                         ; preds = %do.body5
  br label %if.end12, !dbg !3306

if.end12:                                         ; preds = %do.end11, %if.end
  br label %do.body13, !dbg !3308

do.body13:                                        ; preds = %if.end12
  %14 = load ptr, ptr %mctx.addr, align 8, !dbg !3309
  %15 = load ptr, ptr %key.addr, align 8, !dbg !3309
  call void @isc__mem_put(ptr noundef %14, ptr noundef %15, i64 noundef 48, ptr noundef @.str.4, i32 noundef 125), !dbg !3309
  store ptr null, ptr %key.addr, align 8, !dbg !3309
  br label %do.end14, !dbg !3309

do.end14:                                         ; preds = %do.body13
  ret void, !dbg !3311
}

; Function Attrs: null_pointer_is_valid
declare !dbg !3312 void @isc__mem_free(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3313 zeroext i1 @isc_sockaddr_equal(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @get_key_info(ptr noundef %config, ptr noundef %control, ptr noundef %global_keylistp, ptr noundef %control_keylistp) #0 !dbg !3316 {
entry:
  %config.addr = alloca ptr, align 8
  %control.addr = alloca ptr, align 8
  %global_keylistp.addr = alloca ptr, align 8
  %control_keylistp.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %control_keylist = alloca ptr, align 8
  %global_keylist = alloca ptr, align 8
  store ptr %config, ptr %config.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %config.addr, metadata !3320, metadata !DIExpression()), !dbg !3327
  store ptr %control, ptr %control.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %control.addr, metadata !3321, metadata !DIExpression()), !dbg !3328
  store ptr %global_keylistp, ptr %global_keylistp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %global_keylistp.addr, metadata !3322, metadata !DIExpression()), !dbg !3329
  store ptr %control_keylistp, ptr %control_keylistp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %control_keylistp.addr, metadata !3323, metadata !DIExpression()), !dbg !3330
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !3331
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !3324, metadata !DIExpression()), !dbg !3332
  call void @llvm.lifetime.start.p0(i64 8, ptr %control_keylist) #9, !dbg !3333
  tail call void @llvm.dbg.declare(metadata ptr %control_keylist, metadata !3325, metadata !DIExpression()), !dbg !3334
  store ptr null, ptr %control_keylist, align 8, !dbg !3334
  call void @llvm.lifetime.start.p0(i64 8, ptr %global_keylist) #9, !dbg !3335
  tail call void @llvm.dbg.declare(metadata ptr %global_keylist, metadata !3326, metadata !DIExpression()), !dbg !3336
  store ptr null, ptr %global_keylist, align 8, !dbg !3336
  %0 = load ptr, ptr %global_keylistp.addr, align 8, !dbg !3337
  %cmp = icmp ne ptr %0, null, !dbg !3337
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3337

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %global_keylistp.addr, align 8, !dbg !3337
  %2 = load ptr, ptr %1, align 8, !dbg !3337
  %cmp1 = icmp eq ptr %2, null, !dbg !3337
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !3338
  %lnot = xor i1 %3, true, !dbg !3337
  %lnot2 = xor i1 %lnot, true, !dbg !3337
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3337
  %conv = sext i32 %lnot.ext to i64, !dbg !3337
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3337
  %tobool = icmp ne i64 %expval, 0, !dbg !3337
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !3337

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 953, i32 noundef 0, ptr noundef @.str.39) #10, !dbg !3337
  unreachable, !dbg !3337

4:                                                ; No predecessors!
  br label %lor.end, !dbg !3337

lor.end:                                          ; preds = %4, %land.end
  %5 = phi i1 [ true, %land.end ], [ false, %4 ]
  %lor.ext = zext i1 %5 to i32, !dbg !3337
  %6 = load ptr, ptr %control_keylistp.addr, align 8, !dbg !3339
  %cmp3 = icmp ne ptr %6, null, !dbg !3339
  br i1 %cmp3, label %land.rhs5, label %land.end8, !dbg !3339

land.rhs5:                                        ; preds = %lor.end
  %7 = load ptr, ptr %control_keylistp.addr, align 8, !dbg !3339
  %8 = load ptr, ptr %7, align 8, !dbg !3339
  %cmp6 = icmp eq ptr %8, null, !dbg !3339
  br label %land.end8

land.end8:                                        ; preds = %land.rhs5, %lor.end
  %9 = phi i1 [ false, %lor.end ], [ %cmp6, %land.rhs5 ], !dbg !3338
  %lnot9 = xor i1 %9, true, !dbg !3339
  %lnot11 = xor i1 %lnot9, true, !dbg !3339
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !3339
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !3339
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 1), !dbg !3339
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !3339
  br i1 %tobool15, label %lor.end17, label %lor.rhs16, !dbg !3339

lor.rhs16:                                        ; preds = %land.end8
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 954, i32 noundef 0, ptr noundef @.str.40) #10, !dbg !3339
  unreachable, !dbg !3339

10:                                               ; No predecessors!
  br label %lor.end17, !dbg !3339

lor.end17:                                        ; preds = %10, %land.end8
  %11 = phi i1 [ true, %land.end8 ], [ false, %10 ]
  %lor.ext18 = zext i1 %11 to i32, !dbg !3339
  %12 = load ptr, ptr %control.addr, align 8, !dbg !3340
  %call = call ptr @cfg_tuple_get(ptr noundef %12, ptr noundef @.str.41), !dbg !3341
  store ptr %call, ptr %control_keylist, align 8, !dbg !3342
  %13 = load ptr, ptr %control_keylist, align 8, !dbg !3343
  %call19 = call zeroext i1 @cfg_obj_isvoid(ptr noundef %13), !dbg !3345
  br i1 %call19, label %if.end27, label %land.lhs.true, !dbg !3346

land.lhs.true:                                    ; preds = %lor.end17
  %14 = load ptr, ptr %control_keylist, align 8, !dbg !3347
  %call20 = call ptr @cfg_list_first(ptr noundef %14), !dbg !3348
  %cmp21 = icmp ne ptr %call20, null, !dbg !3349
  br i1 %cmp21, label %if.then, label %if.end27, !dbg !3350

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr %config.addr, align 8, !dbg !3351
  %call23 = call i32 @cfg_map_get(ptr noundef %15, ptr noundef @.str.42, ptr noundef %global_keylist), !dbg !3353
  store i32 %call23, ptr %result, align 4, !dbg !3354
  %16 = load i32, ptr %result, align 4, !dbg !3355
  %cmp24 = icmp eq i32 %16, 0, !dbg !3357
  br i1 %cmp24, label %if.then26, label %if.end, !dbg !3358

if.then26:                                        ; preds = %if.then
  %17 = load ptr, ptr %global_keylist, align 8, !dbg !3359
  %18 = load ptr, ptr %global_keylistp.addr, align 8, !dbg !3361
  store ptr %17, ptr %18, align 8, !dbg !3362
  %19 = load ptr, ptr %control_keylist, align 8, !dbg !3363
  %20 = load ptr, ptr %control_keylistp.addr, align 8, !dbg !3364
  store ptr %19, ptr %20, align 8, !dbg !3365
  br label %if.end, !dbg !3366

if.end:                                           ; preds = %if.then26, %if.then
  br label %if.end27, !dbg !3367

if.end27:                                         ; preds = %if.end, %land.lhs.true, %lor.end17
  call void @llvm.lifetime.end.p0(i64 8, ptr %global_keylist) #9, !dbg !3368
  call void @llvm.lifetime.end.p0(i64 8, ptr %control_keylist) #9, !dbg !3368
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !3368
  ret void, !dbg !3368
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @controlkeylist_fromcfg(ptr noundef %keylist, ptr noundef %mctx, ptr noundef %keyids) #0 !dbg !3369 {
entry:
  %retval = alloca i32, align 4
  %keylist.addr = alloca ptr, align 8
  %mctx.addr = alloca ptr, align 8
  %keyids.addr = alloca ptr, align 8
  %element = alloca ptr, align 8
  %newstr = alloca ptr, align 8
  %str = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %keylist, ptr %keylist.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %keylist.addr, metadata !3373, metadata !DIExpression()), !dbg !3382
  store ptr %mctx, ptr %mctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mctx.addr, metadata !3374, metadata !DIExpression()), !dbg !3383
  store ptr %keyids, ptr %keyids.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %keyids.addr, metadata !3375, metadata !DIExpression()), !dbg !3384
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #9, !dbg !3385
  tail call void @llvm.dbg.declare(metadata ptr %element, metadata !3376, metadata !DIExpression()), !dbg !3386
  call void @llvm.lifetime.start.p0(i64 8, ptr %newstr) #9, !dbg !3387
  tail call void @llvm.dbg.declare(metadata ptr %newstr, metadata !3377, metadata !DIExpression()), !dbg !3388
  store ptr null, ptr %newstr, align 8, !dbg !3388
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #9, !dbg !3389
  tail call void @llvm.dbg.declare(metadata ptr %str, metadata !3378, metadata !DIExpression()), !dbg !3390
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #9, !dbg !3391
  tail call void @llvm.dbg.declare(metadata ptr %obj, metadata !3379, metadata !DIExpression()), !dbg !3392
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #9, !dbg !3393
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !3380, metadata !DIExpression()), !dbg !3394
  %0 = load ptr, ptr %keylist.addr, align 8, !dbg !3395
  %call = call ptr @cfg_list_first(ptr noundef %0), !dbg !3397
  store ptr %call, ptr %element, align 8, !dbg !3398
  br label %for.cond, !dbg !3399

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %element, align 8, !dbg !3400
  %cmp = icmp ne ptr %1, null, !dbg !3402
  br i1 %cmp, label %for.body, label %for.end, !dbg !3403

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %element, align 8, !dbg !3404
  %call1 = call ptr @cfg_listelt_value(ptr noundef %2), !dbg !3406
  store ptr %call1, ptr %obj, align 8, !dbg !3407
  %3 = load ptr, ptr %obj, align 8, !dbg !3408
  %call2 = call ptr @cfg_obj_asstring(ptr noundef %3), !dbg !3409
  store ptr %call2, ptr %str, align 8, !dbg !3410
  %4 = load ptr, ptr %mctx.addr, align 8, !dbg !3411
  %5 = load ptr, ptr %str, align 8, !dbg !3411
  %call3 = call ptr @isc__mem_strdup(ptr noundef %4, ptr noundef %5, ptr noundef @.str.4, i32 noundef 730), !dbg !3411
  store ptr %call3, ptr %newstr, align 8, !dbg !3412
  %6 = load ptr, ptr %newstr, align 8, !dbg !3413
  %cmp4 = icmp eq ptr %6, null, !dbg !3415
  br i1 %cmp4, label %if.then, label %if.end, !dbg !3416

if.then:                                          ; preds = %for.body
  br label %cleanup, !dbg !3417

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %mctx.addr, align 8, !dbg !3418
  %call5 = call ptr @isc__mem_get(ptr noundef %7, i64 noundef 48, ptr noundef @.str.4, i32 noundef 733), !dbg !3418
  store ptr %call5, ptr %key, align 8, !dbg !3419
  %8 = load ptr, ptr %key, align 8, !dbg !3420
  %cmp6 = icmp eq ptr %8, null, !dbg !3422
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !3423

if.then7:                                         ; preds = %if.end
  br label %cleanup, !dbg !3424

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %newstr, align 8, !dbg !3425
  %10 = load ptr, ptr %key, align 8, !dbg !3426
  %keyname = getelementptr inbounds %struct.controlkey, ptr %10, i32 0, i32 0, !dbg !3427
  store ptr %9, ptr %keyname, align 8, !dbg !3428
  %11 = load ptr, ptr %key, align 8, !dbg !3429
  %algorithm = getelementptr inbounds %struct.controlkey, ptr %11, i32 0, i32 1, !dbg !3430
  store i32 0, ptr %algorithm, align 8, !dbg !3431
  %12 = load ptr, ptr %key, align 8, !dbg !3432
  %secret = getelementptr inbounds %struct.controlkey, ptr %12, i32 0, i32 2, !dbg !3433
  %base = getelementptr inbounds %struct.isc_region, ptr %secret, i32 0, i32 0, !dbg !3434
  store ptr null, ptr %base, align 8, !dbg !3435
  %13 = load ptr, ptr %key, align 8, !dbg !3436
  %secret9 = getelementptr inbounds %struct.controlkey, ptr %13, i32 0, i32 2, !dbg !3437
  %length = getelementptr inbounds %struct.isc_region, ptr %secret9, i32 0, i32 1, !dbg !3438
  store i32 0, ptr %length, align 8, !dbg !3439
  br label %do.body, !dbg !3440

do.body:                                          ; preds = %if.end8
  %14 = load ptr, ptr %key, align 8, !dbg !3441
  %link = getelementptr inbounds %struct.controlkey, ptr %14, i32 0, i32 3, !dbg !3441
  %prev = getelementptr inbounds %struct.anon.11, ptr %link, i32 0, i32 0, !dbg !3441
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !3441
  %15 = load ptr, ptr %key, align 8, !dbg !3441
  %link10 = getelementptr inbounds %struct.controlkey, ptr %15, i32 0, i32 3, !dbg !3441
  %next = getelementptr inbounds %struct.anon.11, ptr %link10, i32 0, i32 1, !dbg !3441
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !3441
  br label %do.cond, !dbg !3441

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3441

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !3443

do.body11:                                        ; preds = %do.end
  br label %do.body12, !dbg !3444

do.body12:                                        ; preds = %do.body11
  %16 = load ptr, ptr %keyids.addr, align 8, !dbg !3446
  %tail = getelementptr inbounds %struct.controlkeylist_t, ptr %16, i32 0, i32 1, !dbg !3446
  %17 = load ptr, ptr %tail, align 8, !dbg !3446
  %cmp13 = icmp ne ptr %17, null, !dbg !3446
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !3449

if.then14:                                        ; preds = %do.body12
  %18 = load ptr, ptr %key, align 8, !dbg !3446
  %19 = load ptr, ptr %keyids.addr, align 8, !dbg !3446
  %tail15 = getelementptr inbounds %struct.controlkeylist_t, ptr %19, i32 0, i32 1, !dbg !3446
  %20 = load ptr, ptr %tail15, align 8, !dbg !3446
  %link16 = getelementptr inbounds %struct.controlkey, ptr %20, i32 0, i32 3, !dbg !3446
  %next17 = getelementptr inbounds %struct.anon.11, ptr %link16, i32 0, i32 1, !dbg !3446
  store ptr %18, ptr %next17, align 8, !dbg !3446
  br label %if.end18, !dbg !3446

if.else:                                          ; preds = %do.body12
  %21 = load ptr, ptr %key, align 8, !dbg !3446
  %22 = load ptr, ptr %keyids.addr, align 8, !dbg !3446
  %head = getelementptr inbounds %struct.controlkeylist_t, ptr %22, i32 0, i32 0, !dbg !3446
  store ptr %21, ptr %head, align 8, !dbg !3446
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %23 = load ptr, ptr %keyids.addr, align 8, !dbg !3449
  %tail19 = getelementptr inbounds %struct.controlkeylist_t, ptr %23, i32 0, i32 1, !dbg !3449
  %24 = load ptr, ptr %tail19, align 8, !dbg !3449
  %25 = load ptr, ptr %key, align 8, !dbg !3449
  %link20 = getelementptr inbounds %struct.controlkey, ptr %25, i32 0, i32 3, !dbg !3449
  %prev21 = getelementptr inbounds %struct.anon.11, ptr %link20, i32 0, i32 0, !dbg !3449
  store ptr %24, ptr %prev21, align 8, !dbg !3449
  %26 = load ptr, ptr %key, align 8, !dbg !3449
  %link22 = getelementptr inbounds %struct.controlkey, ptr %26, i32 0, i32 3, !dbg !3449
  %next23 = getelementptr inbounds %struct.anon.11, ptr %link22, i32 0, i32 1, !dbg !3449
  store ptr null, ptr %next23, align 8, !dbg !3449
  %27 = load ptr, ptr %key, align 8, !dbg !3449
  %28 = load ptr, ptr %keyids.addr, align 8, !dbg !3449
  %tail24 = getelementptr inbounds %struct.controlkeylist_t, ptr %28, i32 0, i32 1, !dbg !3449
  store ptr %27, ptr %tail24, align 8, !dbg !3449
  br label %do.cond25, !dbg !3449

do.cond25:                                        ; preds = %if.end18
  br label %do.end26, !dbg !3449

do.end26:                                         ; preds = %do.cond25
  br label %do.cond27, !dbg !3444

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !3444

do.end28:                                         ; preds = %do.cond27
  store ptr null, ptr %newstr, align 8, !dbg !3450
  br label %for.inc, !dbg !3451

for.inc:                                          ; preds = %do.end28
  %29 = load ptr, ptr %element, align 8, !dbg !3452
  %call29 = call ptr @cfg_list_next(ptr noundef %29), !dbg !3453
  store ptr %call29, ptr %element, align 8, !dbg !3454
  br label %for.cond, !dbg !3455, !llvm.loop !3456

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !3458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !3458

cleanup:                                          ; preds = %if.then7, %if.then
  tail call void @llvm.dbg.label(metadata !3381), !dbg !3459
  %30 = load ptr, ptr %newstr, align 8, !dbg !3460
  %cmp30 = icmp ne ptr %30, null, !dbg !3462
  br i1 %cmp30, label %if.then31, label %if.end35, !dbg !3463

if.then31:                                        ; preds = %cleanup
  br label %do.body32, !dbg !3464

do.body32:                                        ; preds = %if.then31
  %31 = load ptr, ptr %mctx.addr, align 8, !dbg !3465
  %32 = load ptr, ptr %newstr, align 8, !dbg !3465
  call void @isc__mem_free(ptr noundef %31, ptr noundef %32, ptr noundef @.str.4, i32 noundef 748), !dbg !3465
  store ptr null, ptr %newstr, align 8, !dbg !3465
  br label %do.cond33, !dbg !3465

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !3465

do.end34:                                         ; preds = %do.cond33
  br label %if.end35, !dbg !3465

if.end35:                                         ; preds = %do.end34, %cleanup
  %33 = load ptr, ptr %keyids.addr, align 8, !dbg !3467
  %34 = load ptr, ptr %mctx.addr, align 8, !dbg !3468
  call void @free_controlkeylist(ptr noundef %33, ptr noundef %34), !dbg !3469
  store i32 1, ptr %retval, align 4, !dbg !3470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !3470

cleanup36:                                        ; preds = %if.end35, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #9, !dbg !3471
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #9, !dbg !3471
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #9, !dbg !3471
  call void @llvm.lifetime.end.p0(i64 8, ptr %newstr) #9, !dbg !3471
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #9, !dbg !3471
  %35 = load i32, ptr %retval, align 4, !dbg !3471
  ret i32 %35, !dbg !3471
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @register_keys(ptr noundef %control, ptr noundef %keylist, ptr noundef %keyids, ptr noundef %mctx, ptr noundef %socktext) #0 !dbg !3472 {
entry:
  %control.addr = alloca ptr, align 8
  %keylist.addr = alloca ptr, align 8
  %keyids.addr = alloca ptr, align 8
  %mctx.addr = alloca ptr, align 8
  %socktext.addr = alloca ptr, align 8
  %keyid = alloca ptr, align 8
  %next = alloca ptr, align 8
  %keydef = alloca ptr, align 8
  %secret = alloca [1024 x i8], align 16
  %b = alloca %struct.isc_buffer, align 8
  %result = alloca i32, align 4
  %algobj = alloca ptr, align 8
  %secretobj = alloca ptr, align 8
  %algstr = alloca ptr, align 8
  %secretstr = alloca ptr, align 8
  %algtype = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %control, ptr %control.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %control.addr, metadata !3476, metadata !DIExpression()), !dbg !3500
  store ptr %keylist, ptr %keylist.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %keylist.addr, metadata !3477, metadata !DIExpression()), !dbg !3501
  store ptr %keyids, ptr %keyids.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %keyids.addr, metadata !3478, metadata !DIExpression()), !dbg !3502
  store ptr %mctx, ptr %mctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mctx.addr, metadata !3479, metadata !DIExpression()), !dbg !3503
  store ptr %socktext, ptr %socktext.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %socktext.addr, metadata !3480, metadata !DIExpression()), !dbg !3504
  call void @llvm.lifetime.start.p0(i64 8, ptr %keyid) #9, !dbg !3505
  tail call void @llvm.dbg.declare(metadata ptr %keyid, metadata !3481, metadata !DIExpression()), !dbg !3506
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9, !dbg !3505
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !3482, metadata !DIExpression()), !dbg !3507
  call void @llvm.lifetime.start.p0(i64 8, ptr %keydef) #9, !dbg !3508
  tail call void @llvm.dbg.declare(metadata ptr %keydef, metadata !3483, metadata !DIExpression()), !dbg !3509
  call void @llvm.lifetime.start.p0(i64 1024, ptr %secret) #9, !dbg !3510
  tail call void @llvm.dbg.declare(metadata ptr %secret, metadata !3484, metadata !DIExpression()), !dbg !3511
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #9, !dbg !3512
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !3488, metadata !DIExpression()), !dbg !3513
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !3514
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !3489, metadata !DIExpression()), !dbg !3515
  %0 = load ptr, ptr %keyids.addr, align 8, !dbg !3516
  %head = getelementptr inbounds %struct.controlkeylist_t, ptr %0, i32 0, i32 0, !dbg !3516
  %1 = load ptr, ptr %head, align 8, !dbg !3516
  store ptr %1, ptr %keyid, align 8, !dbg !3517
  br label %for.cond, !dbg !3518

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %keyid, align 8, !dbg !3519
  %cmp = icmp ne ptr %2, null, !dbg !3520
  br i1 %cmp, label %for.body, label %for.end, !dbg !3521

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %keyid, align 8, !dbg !3522
  %link = getelementptr inbounds %struct.controlkey, ptr %3, i32 0, i32 3, !dbg !3522
  %next1 = getelementptr inbounds %struct.anon.11, ptr %link, i32 0, i32 1, !dbg !3522
  %4 = load ptr, ptr %next1, align 8, !dbg !3522
  store ptr %4, ptr %next, align 8, !dbg !3523
  %5 = load ptr, ptr %keylist.addr, align 8, !dbg !3524
  %6 = load ptr, ptr %keyid, align 8, !dbg !3525
  %keyname = getelementptr inbounds %struct.controlkey, ptr %6, i32 0, i32 0, !dbg !3526
  %7 = load ptr, ptr %keyname, align 8, !dbg !3526
  %call = call i32 @cfgkeylist_find(ptr noundef %5, ptr noundef %7, ptr noundef %keydef), !dbg !3527
  store i32 %call, ptr %result, align 4, !dbg !3528
  %8 = load i32, ptr %result, align 4, !dbg !3529
  %cmp2 = icmp ne i32 %8, 0, !dbg !3530
  br i1 %cmp2, label %if.then, label %if.else80, !dbg !3531

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %control.addr, align 8, !dbg !3532
  %10 = load ptr, ptr @named_g_lctx, align 8, !dbg !3534
  %11 = load ptr, ptr %keyid, align 8, !dbg !3535
  %keyname3 = getelementptr inbounds %struct.controlkey, ptr %11, i32 0, i32 0, !dbg !3536
  %12 = load ptr, ptr %keyname3, align 8, !dbg !3536
  %13 = load ptr, ptr %socktext.addr, align 8, !dbg !3537
  call void (ptr, ptr, i32, ptr, ...) @cfg_obj_log(ptr noundef %9, ptr noundef %10, i32 noundef -3, ptr noundef @.str.43, ptr noundef %12, ptr noundef %13), !dbg !3538
  br label %do.body, !dbg !3539

do.body:                                          ; preds = %if.then
  br label %do.body4, !dbg !3540

do.body4:                                         ; preds = %do.body
  %14 = load ptr, ptr %keyid, align 8, !dbg !3542
  %link5 = getelementptr inbounds %struct.controlkey, ptr %14, i32 0, i32 3, !dbg !3542
  %next6 = getelementptr inbounds %struct.anon.11, ptr %link5, i32 0, i32 1, !dbg !3542
  %15 = load ptr, ptr %next6, align 8, !dbg !3542
  %cmp7 = icmp ne ptr %15, null, !dbg !3542
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !3545

if.then8:                                         ; preds = %do.body4
  %16 = load ptr, ptr %keyid, align 8, !dbg !3542
  %link9 = getelementptr inbounds %struct.controlkey, ptr %16, i32 0, i32 3, !dbg !3542
  %prev = getelementptr inbounds %struct.anon.11, ptr %link9, i32 0, i32 0, !dbg !3542
  %17 = load ptr, ptr %prev, align 8, !dbg !3542
  %18 = load ptr, ptr %keyid, align 8, !dbg !3542
  %link10 = getelementptr inbounds %struct.controlkey, ptr %18, i32 0, i32 3, !dbg !3542
  %next11 = getelementptr inbounds %struct.anon.11, ptr %link10, i32 0, i32 1, !dbg !3542
  %19 = load ptr, ptr %next11, align 8, !dbg !3542
  %link12 = getelementptr inbounds %struct.controlkey, ptr %19, i32 0, i32 3, !dbg !3542
  %prev13 = getelementptr inbounds %struct.anon.11, ptr %link12, i32 0, i32 0, !dbg !3542
  store ptr %17, ptr %prev13, align 8, !dbg !3542
  br label %if.end, !dbg !3542

if.else:                                          ; preds = %do.body4
  %20 = load ptr, ptr %keyids.addr, align 8, !dbg !3546
  %tail = getelementptr inbounds %struct.controlkeylist_t, ptr %20, i32 0, i32 1, !dbg !3546
  %21 = load ptr, ptr %tail, align 8, !dbg !3546
  %22 = load ptr, ptr %keyid, align 8, !dbg !3546
  %cmp14 = icmp eq ptr %21, %22, !dbg !3546
  %lnot = xor i1 %cmp14, true, !dbg !3546
  %lnot15 = xor i1 %lnot, true, !dbg !3546
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !3546
  %conv = sext i32 %lnot.ext to i64, !dbg !3546
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3546
  %tobool = icmp ne i64 %expval, 0, !dbg !3546
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !3546

lor.rhs:                                          ; preds = %if.else
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 775, i32 noundef 2, ptr noundef @.str.44) #10, !dbg !3546
  unreachable, !dbg !3546

23:                                               ; No predecessors!
  br label %lor.end, !dbg !3546

lor.end:                                          ; preds = %23, %if.else
  %24 = phi i1 [ true, %if.else ], [ false, %23 ]
  %lor.ext = zext i1 %24 to i32, !dbg !3546
  %25 = load ptr, ptr %keyid, align 8, !dbg !3546
  %link16 = getelementptr inbounds %struct.controlkey, ptr %25, i32 0, i32 3, !dbg !3546
  %prev17 = getelementptr inbounds %struct.anon.11, ptr %link16, i32 0, i32 0, !dbg !3546
  %26 = load ptr, ptr %prev17, align 8, !dbg !3546
  %27 = load ptr, ptr %keyids.addr, align 8, !dbg !3546
  %tail18 = getelementptr inbounds %struct.controlkeylist_t, ptr %27, i32 0, i32 1, !dbg !3546
  store ptr %26, ptr %tail18, align 8, !dbg !3546
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then8
  %28 = load ptr, ptr %keyid, align 8, !dbg !3548
  %link19 = getelementptr inbounds %struct.controlkey, ptr %28, i32 0, i32 3, !dbg !3548
  %prev20 = getelementptr inbounds %struct.anon.11, ptr %link19, i32 0, i32 0, !dbg !3548
  %29 = load ptr, ptr %prev20, align 8, !dbg !3548
  %cmp21 = icmp ne ptr %29, null, !dbg !3548
  br i1 %cmp21, label %if.then23, label %if.else30, !dbg !3545

if.then23:                                        ; preds = %if.end
  %30 = load ptr, ptr %keyid, align 8, !dbg !3548
  %link24 = getelementptr inbounds %struct.controlkey, ptr %30, i32 0, i32 3, !dbg !3548
  %next25 = getelementptr inbounds %struct.anon.11, ptr %link24, i32 0, i32 1, !dbg !3548
  %31 = load ptr, ptr %next25, align 8, !dbg !3548
  %32 = load ptr, ptr %keyid, align 8, !dbg !3548
  %link26 = getelementptr inbounds %struct.controlkey, ptr %32, i32 0, i32 3, !dbg !3548
  %prev27 = getelementptr inbounds %struct.anon.11, ptr %link26, i32 0, i32 0, !dbg !3548
  %33 = load ptr, ptr %prev27, align 8, !dbg !3548
  %link28 = getelementptr inbounds %struct.controlkey, ptr %33, i32 0, i32 3, !dbg !3548
  %next29 = getelementptr inbounds %struct.anon.11, ptr %link28, i32 0, i32 1, !dbg !3548
  store ptr %31, ptr %next29, align 8, !dbg !3548
  br label %if.end47, !dbg !3548

if.else30:                                        ; preds = %if.end
  %34 = load ptr, ptr %keyids.addr, align 8, !dbg !3550
  %head31 = getelementptr inbounds %struct.controlkeylist_t, ptr %34, i32 0, i32 0, !dbg !3550
  %35 = load ptr, ptr %head31, align 8, !dbg !3550
  %36 = load ptr, ptr %keyid, align 8, !dbg !3550
  %cmp32 = icmp eq ptr %35, %36, !dbg !3550
  %lnot34 = xor i1 %cmp32, true, !dbg !3550
  %lnot36 = xor i1 %lnot34, true, !dbg !3550
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !3550
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !3550
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 1), !dbg !3550
  %tobool40 = icmp ne i64 %expval39, 0, !dbg !3550
  br i1 %tobool40, label %lor.end42, label %lor.rhs41, !dbg !3550

lor.rhs41:                                        ; preds = %if.else30
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 775, i32 noundef 2, ptr noundef @.str.45) #10, !dbg !3550
  unreachable, !dbg !3550

37:                                               ; No predecessors!
  br label %lor.end42, !dbg !3550

lor.end42:                                        ; preds = %37, %if.else30
  %38 = phi i1 [ true, %if.else30 ], [ false, %37 ]
  %lor.ext43 = zext i1 %38 to i32, !dbg !3550
  %39 = load ptr, ptr %keyid, align 8, !dbg !3550
  %link44 = getelementptr inbounds %struct.controlkey, ptr %39, i32 0, i32 3, !dbg !3550
  %next45 = getelementptr inbounds %struct.anon.11, ptr %link44, i32 0, i32 1, !dbg !3550
  %40 = load ptr, ptr %next45, align 8, !dbg !3550
  %41 = load ptr, ptr %keyids.addr, align 8, !dbg !3550
  %head46 = getelementptr inbounds %struct.controlkeylist_t, ptr %41, i32 0, i32 0, !dbg !3550
  store ptr %40, ptr %head46, align 8, !dbg !3550
  br label %if.end47

if.end47:                                         ; preds = %lor.end42, %if.then23
  %42 = load ptr, ptr %keyid, align 8, !dbg !3545
  %link48 = getelementptr inbounds %struct.controlkey, ptr %42, i32 0, i32 3, !dbg !3545
  %prev49 = getelementptr inbounds %struct.anon.11, ptr %link48, i32 0, i32 0, !dbg !3545
  store ptr inttoptr (i64 -1 to ptr), ptr %prev49, align 8, !dbg !3545
  %43 = load ptr, ptr %keyid, align 8, !dbg !3545
  %link50 = getelementptr inbounds %struct.controlkey, ptr %43, i32 0, i32 3, !dbg !3545
  %next51 = getelementptr inbounds %struct.anon.11, ptr %link50, i32 0, i32 1, !dbg !3545
  store ptr inttoptr (i64 -1 to ptr), ptr %next51, align 8, !dbg !3545
  %44 = load ptr, ptr %keyids.addr, align 8, !dbg !3545
  %head52 = getelementptr inbounds %struct.controlkeylist_t, ptr %44, i32 0, i32 0, !dbg !3545
  %45 = load ptr, ptr %head52, align 8, !dbg !3545
  %46 = load ptr, ptr %keyid, align 8, !dbg !3545
  %cmp53 = icmp ne ptr %45, %46, !dbg !3545
  %lnot55 = xor i1 %cmp53, true, !dbg !3545
  %lnot57 = xor i1 %lnot55, true, !dbg !3545
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !3545
  %conv59 = sext i32 %lnot.ext58 to i64, !dbg !3545
  %expval60 = call i64 @llvm.expect.i64(i64 %conv59, i64 1), !dbg !3545
  %tobool61 = icmp ne i64 %expval60, 0, !dbg !3545
  br i1 %tobool61, label %lor.end63, label %lor.rhs62, !dbg !3545

lor.rhs62:                                        ; preds = %if.end47
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 775, i32 noundef 2, ptr noundef @.str.46) #10, !dbg !3545
  unreachable, !dbg !3545

47:                                               ; No predecessors!
  br label %lor.end63, !dbg !3545

lor.end63:                                        ; preds = %47, %if.end47
  %48 = phi i1 [ true, %if.end47 ], [ false, %47 ]
  %lor.ext64 = zext i1 %48 to i32, !dbg !3545
  %49 = load ptr, ptr %keyids.addr, align 8, !dbg !3545
  %tail65 = getelementptr inbounds %struct.controlkeylist_t, ptr %49, i32 0, i32 1, !dbg !3545
  %50 = load ptr, ptr %tail65, align 8, !dbg !3545
  %51 = load ptr, ptr %keyid, align 8, !dbg !3545
  %cmp66 = icmp ne ptr %50, %51, !dbg !3545
  %lnot68 = xor i1 %cmp66, true, !dbg !3545
  %lnot70 = xor i1 %lnot68, true, !dbg !3545
  %lnot.ext71 = zext i1 %lnot70 to i32, !dbg !3545
  %conv72 = sext i32 %lnot.ext71 to i64, !dbg !3545
  %expval73 = call i64 @llvm.expect.i64(i64 %conv72, i64 1), !dbg !3545
  %tobool74 = icmp ne i64 %expval73, 0, !dbg !3545
  br i1 %tobool74, label %lor.end76, label %lor.rhs75, !dbg !3545

lor.rhs75:                                        ; preds = %lor.end63
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 775, i32 noundef 2, ptr noundef @.str.47) #10, !dbg !3545
  unreachable, !dbg !3545

52:                                               ; No predecessors!
  br label %lor.end76, !dbg !3545

lor.end76:                                        ; preds = %52, %lor.end63
  %53 = phi i1 [ true, %lor.end63 ], [ false, %52 ]
  %lor.ext77 = zext i1 %53 to i32, !dbg !3545
  br label %do.cond, !dbg !3545

do.cond:                                          ; preds = %lor.end76
  br label %do.end, !dbg !3545

do.end:                                           ; preds = %do.cond
  br label %do.cond78, !dbg !3540

do.cond78:                                        ; preds = %do.end
  br label %do.end79, !dbg !3540

do.end79:                                         ; preds = %do.cond78
  %54 = load ptr, ptr %keyid, align 8, !dbg !3552
  %55 = load ptr, ptr %mctx.addr, align 8, !dbg !3553
  call void @free_controlkey(ptr noundef %54, ptr noundef %55), !dbg !3554
  br label %if.end431, !dbg !3555

if.else80:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %algobj) #9, !dbg !3556
  tail call void @llvm.dbg.declare(metadata ptr %algobj, metadata !3490, metadata !DIExpression()), !dbg !3557
  store ptr null, ptr %algobj, align 8, !dbg !3557
  call void @llvm.lifetime.start.p0(i64 8, ptr %secretobj) #9, !dbg !3558
  tail call void @llvm.dbg.declare(metadata ptr %secretobj, metadata !3496, metadata !DIExpression()), !dbg !3559
  store ptr null, ptr %secretobj, align 8, !dbg !3559
  call void @llvm.lifetime.start.p0(i64 8, ptr %algstr) #9, !dbg !3560
  tail call void @llvm.dbg.declare(metadata ptr %algstr, metadata !3497, metadata !DIExpression()), !dbg !3561
  store ptr null, ptr %algstr, align 8, !dbg !3561
  call void @llvm.lifetime.start.p0(i64 8, ptr %secretstr) #9, !dbg !3562
  tail call void @llvm.dbg.declare(metadata ptr %secretstr, metadata !3498, metadata !DIExpression()), !dbg !3563
  store ptr null, ptr %secretstr, align 8, !dbg !3563
  call void @llvm.lifetime.start.p0(i64 4, ptr %algtype) #9, !dbg !3564
  tail call void @llvm.dbg.declare(metadata ptr %algtype, metadata !3499, metadata !DIExpression()), !dbg !3565
  %56 = load ptr, ptr %keydef, align 8, !dbg !3566
  %call81 = call i32 @cfg_map_get(ptr noundef %56, ptr noundef @.str.48, ptr noundef %algobj), !dbg !3567
  %57 = load ptr, ptr %keydef, align 8, !dbg !3568
  %call82 = call i32 @cfg_map_get(ptr noundef %57, ptr noundef @.str.49, ptr noundef %secretobj), !dbg !3569
  %58 = load ptr, ptr %algobj, align 8, !dbg !3570
  %cmp83 = icmp ne ptr %58, null, !dbg !3570
  br i1 %cmp83, label %land.rhs, label %land.end, !dbg !3570

land.rhs:                                         ; preds = %if.else80
  %59 = load ptr, ptr %secretobj, align 8, !dbg !3570
  %cmp85 = icmp ne ptr %59, null, !dbg !3570
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else80
  %60 = phi i1 [ false, %if.else80 ], [ %cmp85, %land.rhs ], !dbg !3571
  %lnot87 = xor i1 %60, true, !dbg !3570
  %lnot89 = xor i1 %lnot87, true, !dbg !3570
  %lnot.ext90 = zext i1 %lnot89 to i32, !dbg !3570
  %conv91 = sext i32 %lnot.ext90 to i64, !dbg !3570
  %expval92 = call i64 @llvm.expect.i64(i64 %conv91, i64 1), !dbg !3570
  %tobool93 = icmp ne i64 %expval92, 0, !dbg !3570
  br i1 %tobool93, label %lor.end95, label %lor.rhs94, !dbg !3570

lor.rhs94:                                        ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 786, i32 noundef 2, ptr noundef @.str.50) #10, !dbg !3570
  unreachable, !dbg !3570

61:                                               ; No predecessors!
  br label %lor.end95, !dbg !3570

lor.end95:                                        ; preds = %61, %land.end
  %62 = phi i1 [ true, %land.end ], [ false, %61 ]
  %lor.ext96 = zext i1 %62 to i32, !dbg !3570
  %63 = load ptr, ptr %algobj, align 8, !dbg !3572
  %call97 = call ptr @cfg_obj_asstring(ptr noundef %63), !dbg !3573
  store ptr %call97, ptr %algstr, align 8, !dbg !3574
  %64 = load ptr, ptr %secretobj, align 8, !dbg !3575
  %call98 = call ptr @cfg_obj_asstring(ptr noundef %64), !dbg !3576
  store ptr %call98, ptr %secretstr, align 8, !dbg !3577
  %65 = load ptr, ptr %algstr, align 8, !dbg !3578
  %call99 = call i32 @named_config_getkeyalgorithm2(ptr noundef %65, ptr noundef null, ptr noundef %algtype, ptr noundef null), !dbg !3580
  %cmp100 = icmp ne i32 %call99, 0, !dbg !3581
  br i1 %cmp100, label %if.then102, label %if.end198, !dbg !3582

if.then102:                                       ; preds = %lor.end95
  %66 = load ptr, ptr %control.addr, align 8, !dbg !3583
  %67 = load ptr, ptr @named_g_lctx, align 8, !dbg !3585
  %68 = load ptr, ptr %algstr, align 8, !dbg !3586
  %69 = load ptr, ptr %keyid, align 8, !dbg !3587
  %keyname103 = getelementptr inbounds %struct.controlkey, ptr %69, i32 0, i32 0, !dbg !3588
  %70 = load ptr, ptr %keyname103, align 8, !dbg !3588
  %71 = load ptr, ptr %socktext.addr, align 8, !dbg !3589
  call void (ptr, ptr, i32, ptr, ...) @cfg_obj_log(ptr noundef %66, ptr noundef %67, i32 noundef -3, ptr noundef @.str.51, ptr noundef %68, ptr noundef %70, ptr noundef %71), !dbg !3590
  br label %do.body104, !dbg !3591

do.body104:                                       ; preds = %if.then102
  br label %do.body105, !dbg !3592

do.body105:                                       ; preds = %do.body104
  %72 = load ptr, ptr %keyid, align 8, !dbg !3594
  %link106 = getelementptr inbounds %struct.controlkey, ptr %72, i32 0, i32 3, !dbg !3594
  %next107 = getelementptr inbounds %struct.anon.11, ptr %link106, i32 0, i32 1, !dbg !3594
  %73 = load ptr, ptr %next107, align 8, !dbg !3594
  %cmp108 = icmp ne ptr %73, null, !dbg !3594
  br i1 %cmp108, label %if.then110, label %if.else117, !dbg !3597

if.then110:                                       ; preds = %do.body105
  %74 = load ptr, ptr %keyid, align 8, !dbg !3594
  %link111 = getelementptr inbounds %struct.controlkey, ptr %74, i32 0, i32 3, !dbg !3594
  %prev112 = getelementptr inbounds %struct.anon.11, ptr %link111, i32 0, i32 0, !dbg !3594
  %75 = load ptr, ptr %prev112, align 8, !dbg !3594
  %76 = load ptr, ptr %keyid, align 8, !dbg !3594
  %link113 = getelementptr inbounds %struct.controlkey, ptr %76, i32 0, i32 3, !dbg !3594
  %next114 = getelementptr inbounds %struct.anon.11, ptr %link113, i32 0, i32 1, !dbg !3594
  %77 = load ptr, ptr %next114, align 8, !dbg !3594
  %link115 = getelementptr inbounds %struct.controlkey, ptr %77, i32 0, i32 3, !dbg !3594
  %prev116 = getelementptr inbounds %struct.anon.11, ptr %link115, i32 0, i32 0, !dbg !3594
  store ptr %75, ptr %prev116, align 8, !dbg !3594
  br label %if.end134, !dbg !3594

if.else117:                                       ; preds = %do.body105
  %78 = load ptr, ptr %keyids.addr, align 8, !dbg !3598
  %tail118 = getelementptr inbounds %struct.controlkeylist_t, ptr %78, i32 0, i32 1, !dbg !3598
  %79 = load ptr, ptr %tail118, align 8, !dbg !3598
  %80 = load ptr, ptr %keyid, align 8, !dbg !3598
  %cmp119 = icmp eq ptr %79, %80, !dbg !3598
  %lnot121 = xor i1 %cmp119, true, !dbg !3598
  %lnot123 = xor i1 %lnot121, true, !dbg !3598
  %lnot.ext124 = zext i1 %lnot123 to i32, !dbg !3598
  %conv125 = sext i32 %lnot.ext124 to i64, !dbg !3598
  %expval126 = call i64 @llvm.expect.i64(i64 %conv125, i64 1), !dbg !3598
  %tobool127 = icmp ne i64 %expval126, 0, !dbg !3598
  br i1 %tobool127, label %lor.end129, label %lor.rhs128, !dbg !3598

lor.rhs128:                                       ; preds = %if.else117
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 800, i32 noundef 2, ptr noundef @.str.44) #10, !dbg !3598
  unreachable, !dbg !3598

81:                                               ; No predecessors!
  br label %lor.end129, !dbg !3598

lor.end129:                                       ; preds = %81, %if.else117
  %82 = phi i1 [ true, %if.else117 ], [ false, %81 ]
  %lor.ext130 = zext i1 %82 to i32, !dbg !3598
  %83 = load ptr, ptr %keyid, align 8, !dbg !3598
  %link131 = getelementptr inbounds %struct.controlkey, ptr %83, i32 0, i32 3, !dbg !3598
  %prev132 = getelementptr inbounds %struct.anon.11, ptr %link131, i32 0, i32 0, !dbg !3598
  %84 = load ptr, ptr %prev132, align 8, !dbg !3598
  %85 = load ptr, ptr %keyids.addr, align 8, !dbg !3598
  %tail133 = getelementptr inbounds %struct.controlkeylist_t, ptr %85, i32 0, i32 1, !dbg !3598
  store ptr %84, ptr %tail133, align 8, !dbg !3598
  br label %if.end134

if.end134:                                        ; preds = %lor.end129, %if.then110
  %86 = load ptr, ptr %keyid, align 8, !dbg !3600
  %link135 = getelementptr inbounds %struct.controlkey, ptr %86, i32 0, i32 3, !dbg !3600
  %prev136 = getelementptr inbounds %struct.anon.11, ptr %link135, i32 0, i32 0, !dbg !3600
  %87 = load ptr, ptr %prev136, align 8, !dbg !3600
  %cmp137 = icmp ne ptr %87, null, !dbg !3600
  br i1 %cmp137, label %if.then139, label %if.else146, !dbg !3597

if.then139:                                       ; preds = %if.end134
  %88 = load ptr, ptr %keyid, align 8, !dbg !3600
  %link140 = getelementptr inbounds %struct.controlkey, ptr %88, i32 0, i32 3, !dbg !3600
  %next141 = getelementptr inbounds %struct.anon.11, ptr %link140, i32 0, i32 1, !dbg !3600
  %89 = load ptr, ptr %next141, align 8, !dbg !3600
  %90 = load ptr, ptr %keyid, align 8, !dbg !3600
  %link142 = getelementptr inbounds %struct.controlkey, ptr %90, i32 0, i32 3, !dbg !3600
  %prev143 = getelementptr inbounds %struct.anon.11, ptr %link142, i32 0, i32 0, !dbg !3600
  %91 = load ptr, ptr %prev143, align 8, !dbg !3600
  %link144 = getelementptr inbounds %struct.controlkey, ptr %91, i32 0, i32 3, !dbg !3600
  %next145 = getelementptr inbounds %struct.anon.11, ptr %link144, i32 0, i32 1, !dbg !3600
  store ptr %89, ptr %next145, align 8, !dbg !3600
  br label %if.end163, !dbg !3600

if.else146:                                       ; preds = %if.end134
  %92 = load ptr, ptr %keyids.addr, align 8, !dbg !3602
  %head147 = getelementptr inbounds %struct.controlkeylist_t, ptr %92, i32 0, i32 0, !dbg !3602
  %93 = load ptr, ptr %head147, align 8, !dbg !3602
  %94 = load ptr, ptr %keyid, align 8, !dbg !3602
  %cmp148 = icmp eq ptr %93, %94, !dbg !3602
  %lnot150 = xor i1 %cmp148, true, !dbg !3602
  %lnot152 = xor i1 %lnot150, true, !dbg !3602
  %lnot.ext153 = zext i1 %lnot152 to i32, !dbg !3602
  %conv154 = sext i32 %lnot.ext153 to i64, !dbg !3602
  %expval155 = call i64 @llvm.expect.i64(i64 %conv154, i64 1), !dbg !3602
  %tobool156 = icmp ne i64 %expval155, 0, !dbg !3602
  br i1 %tobool156, label %lor.end158, label %lor.rhs157, !dbg !3602

lor.rhs157:                                       ; preds = %if.else146
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 800, i32 noundef 2, ptr noundef @.str.45) #10, !dbg !3602
  unreachable, !dbg !3602

95:                                               ; No predecessors!
  br label %lor.end158, !dbg !3602

lor.end158:                                       ; preds = %95, %if.else146
  %96 = phi i1 [ true, %if.else146 ], [ false, %95 ]
  %lor.ext159 = zext i1 %96 to i32, !dbg !3602
  %97 = load ptr, ptr %keyid, align 8, !dbg !3602
  %link160 = getelementptr inbounds %struct.controlkey, ptr %97, i32 0, i32 3, !dbg !3602
  %next161 = getelementptr inbounds %struct.anon.11, ptr %link160, i32 0, i32 1, !dbg !3602
  %98 = load ptr, ptr %next161, align 8, !dbg !3602
  %99 = load ptr, ptr %keyids.addr, align 8, !dbg !3602
  %head162 = getelementptr inbounds %struct.controlkeylist_t, ptr %99, i32 0, i32 0, !dbg !3602
  store ptr %98, ptr %head162, align 8, !dbg !3602
  br label %if.end163

if.end163:                                        ; preds = %lor.end158, %if.then139
  %100 = load ptr, ptr %keyid, align 8, !dbg !3597
  %link164 = getelementptr inbounds %struct.controlkey, ptr %100, i32 0, i32 3, !dbg !3597
  %prev165 = getelementptr inbounds %struct.anon.11, ptr %link164, i32 0, i32 0, !dbg !3597
  store ptr inttoptr (i64 -1 to ptr), ptr %prev165, align 8, !dbg !3597
  %101 = load ptr, ptr %keyid, align 8, !dbg !3597
  %link166 = getelementptr inbounds %struct.controlkey, ptr %101, i32 0, i32 3, !dbg !3597
  %next167 = getelementptr inbounds %struct.anon.11, ptr %link166, i32 0, i32 1, !dbg !3597
  store ptr inttoptr (i64 -1 to ptr), ptr %next167, align 8, !dbg !3597
  %102 = load ptr, ptr %keyids.addr, align 8, !dbg !3597
  %head168 = getelementptr inbounds %struct.controlkeylist_t, ptr %102, i32 0, i32 0, !dbg !3597
  %103 = load ptr, ptr %head168, align 8, !dbg !3597
  %104 = load ptr, ptr %keyid, align 8, !dbg !3597
  %cmp169 = icmp ne ptr %103, %104, !dbg !3597
  %lnot171 = xor i1 %cmp169, true, !dbg !3597
  %lnot173 = xor i1 %lnot171, true, !dbg !3597
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !3597
  %conv175 = sext i32 %lnot.ext174 to i64, !dbg !3597
  %expval176 = call i64 @llvm.expect.i64(i64 %conv175, i64 1), !dbg !3597
  %tobool177 = icmp ne i64 %expval176, 0, !dbg !3597
  br i1 %tobool177, label %lor.end179, label %lor.rhs178, !dbg !3597

lor.rhs178:                                       ; preds = %if.end163
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 800, i32 noundef 2, ptr noundef @.str.46) #10, !dbg !3597
  unreachable, !dbg !3597

105:                                              ; No predecessors!
  br label %lor.end179, !dbg !3597

lor.end179:                                       ; preds = %105, %if.end163
  %106 = phi i1 [ true, %if.end163 ], [ false, %105 ]
  %lor.ext180 = zext i1 %106 to i32, !dbg !3597
  %107 = load ptr, ptr %keyids.addr, align 8, !dbg !3597
  %tail181 = getelementptr inbounds %struct.controlkeylist_t, ptr %107, i32 0, i32 1, !dbg !3597
  %108 = load ptr, ptr %tail181, align 8, !dbg !3597
  %109 = load ptr, ptr %keyid, align 8, !dbg !3597
  %cmp182 = icmp ne ptr %108, %109, !dbg !3597
  %lnot184 = xor i1 %cmp182, true, !dbg !3597
  %lnot186 = xor i1 %lnot184, true, !dbg !3597
  %lnot.ext187 = zext i1 %lnot186 to i32, !dbg !3597
  %conv188 = sext i32 %lnot.ext187 to i64, !dbg !3597
  %expval189 = call i64 @llvm.expect.i64(i64 %conv188, i64 1), !dbg !3597
  %tobool190 = icmp ne i64 %expval189, 0, !dbg !3597
  br i1 %tobool190, label %lor.end192, label %lor.rhs191, !dbg !3597

lor.rhs191:                                       ; preds = %lor.end179
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 800, i32 noundef 2, ptr noundef @.str.47) #10, !dbg !3597
  unreachable, !dbg !3597

110:                                              ; No predecessors!
  br label %lor.end192, !dbg !3597

lor.end192:                                       ; preds = %110, %lor.end179
  %111 = phi i1 [ true, %lor.end179 ], [ false, %110 ]
  %lor.ext193 = zext i1 %111 to i32, !dbg !3597
  br label %do.cond194, !dbg !3597

do.cond194:                                       ; preds = %lor.end192
  br label %do.end195, !dbg !3597

do.end195:                                        ; preds = %do.cond194
  br label %do.cond196, !dbg !3592

do.cond196:                                       ; preds = %do.end195
  br label %do.end197, !dbg !3592

do.end197:                                        ; preds = %do.cond196
  %112 = load ptr, ptr %keyid, align 8, !dbg !3604
  %113 = load ptr, ptr %mctx.addr, align 8, !dbg !3605
  call void @free_controlkey(ptr noundef %112, ptr noundef %113), !dbg !3606
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3607

if.end198:                                        ; preds = %lor.end95
  %114 = load i32, ptr %algtype, align 4, !dbg !3608
  %115 = load ptr, ptr %keyid, align 8, !dbg !3609
  %algorithm = getelementptr inbounds %struct.controlkey, ptr %115, i32 0, i32 1, !dbg !3610
  store i32 %114, ptr %algorithm, align 8, !dbg !3611
  br label %do.body199, !dbg !3612

do.body199:                                       ; preds = %if.end198
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %secret, i64 0, i64 0, !dbg !3613
  %base = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 1, !dbg !3613
  store ptr %arraydecay, ptr %base, align 8, !dbg !3613
  %length = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 2, !dbg !3613
  store i32 1024, ptr %length, align 8, !dbg !3613
  %used = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 3, !dbg !3613
  store i32 0, ptr %used, align 4, !dbg !3613
  %current = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 4, !dbg !3613
  store i32 0, ptr %current, align 8, !dbg !3613
  %active = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 5, !dbg !3613
  store i32 0, ptr %active, align 4, !dbg !3613
  %mctx200 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 7, !dbg !3613
  store ptr null, ptr %mctx200, align 8, !dbg !3613
  br label %do.body201, !dbg !3613

do.body201:                                       ; preds = %do.body199
  %link202 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 6, !dbg !3615
  %prev203 = getelementptr inbounds %struct.anon.7, ptr %link202, i32 0, i32 0, !dbg !3615
  store ptr inttoptr (i64 -1 to ptr), ptr %prev203, align 8, !dbg !3615
  %link204 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 6, !dbg !3615
  %next205 = getelementptr inbounds %struct.anon.7, ptr %link204, i32 0, i32 1, !dbg !3615
  store ptr inttoptr (i64 -1 to ptr), ptr %next205, align 8, !dbg !3615
  br label %do.cond206, !dbg !3615

do.cond206:                                       ; preds = %do.body201
  br label %do.end207, !dbg !3615

do.end207:                                        ; preds = %do.cond206
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 0, !dbg !3613
  store i32 1114990113, ptr %magic, align 8, !dbg !3613
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 8, !dbg !3613
  store i8 0, ptr %autore, align 8, !dbg !3613
  br label %do.cond208, !dbg !3613

do.cond208:                                       ; preds = %do.end207
  br label %do.end209, !dbg !3613

do.end209:                                        ; preds = %do.cond208
  %116 = load ptr, ptr %secretstr, align 8, !dbg !3617
  %call210 = call i32 @isc_base64_decodestring(ptr noundef %116, ptr noundef %b), !dbg !3618
  store i32 %call210, ptr %result, align 4, !dbg !3619
  %117 = load i32, ptr %result, align 4, !dbg !3620
  %cmp211 = icmp ne i32 %117, 0, !dbg !3622
  br i1 %cmp211, label %if.then213, label %if.end310, !dbg !3623

if.then213:                                       ; preds = %do.end209
  %118 = load ptr, ptr %keydef, align 8, !dbg !3624
  %119 = load ptr, ptr @named_g_lctx, align 8, !dbg !3626
  %120 = load ptr, ptr %keyid, align 8, !dbg !3627
  %keyname214 = getelementptr inbounds %struct.controlkey, ptr %120, i32 0, i32 0, !dbg !3628
  %121 = load ptr, ptr %keyname214, align 8, !dbg !3628
  %122 = load ptr, ptr %socktext.addr, align 8, !dbg !3629
  %123 = load i32, ptr %result, align 4, !dbg !3630
  %call215 = call ptr @isc_result_totext(i32 noundef %123), !dbg !3631
  call void (ptr, ptr, i32, ptr, ...) @cfg_obj_log(ptr noundef %118, ptr noundef %119, i32 noundef -3, ptr noundef @.str.52, ptr noundef %121, ptr noundef %122, ptr noundef %call215), !dbg !3632
  br label %do.body216, !dbg !3633

do.body216:                                       ; preds = %if.then213
  br label %do.body217, !dbg !3634

do.body217:                                       ; preds = %do.body216
  %124 = load ptr, ptr %keyid, align 8, !dbg !3636
  %link218 = getelementptr inbounds %struct.controlkey, ptr %124, i32 0, i32 3, !dbg !3636
  %next219 = getelementptr inbounds %struct.anon.11, ptr %link218, i32 0, i32 1, !dbg !3636
  %125 = load ptr, ptr %next219, align 8, !dbg !3636
  %cmp220 = icmp ne ptr %125, null, !dbg !3636
  br i1 %cmp220, label %if.then222, label %if.else229, !dbg !3639

if.then222:                                       ; preds = %do.body217
  %126 = load ptr, ptr %keyid, align 8, !dbg !3636
  %link223 = getelementptr inbounds %struct.controlkey, ptr %126, i32 0, i32 3, !dbg !3636
  %prev224 = getelementptr inbounds %struct.anon.11, ptr %link223, i32 0, i32 0, !dbg !3636
  %127 = load ptr, ptr %prev224, align 8, !dbg !3636
  %128 = load ptr, ptr %keyid, align 8, !dbg !3636
  %link225 = getelementptr inbounds %struct.controlkey, ptr %128, i32 0, i32 3, !dbg !3636
  %next226 = getelementptr inbounds %struct.anon.11, ptr %link225, i32 0, i32 1, !dbg !3636
  %129 = load ptr, ptr %next226, align 8, !dbg !3636
  %link227 = getelementptr inbounds %struct.controlkey, ptr %129, i32 0, i32 3, !dbg !3636
  %prev228 = getelementptr inbounds %struct.anon.11, ptr %link227, i32 0, i32 0, !dbg !3636
  store ptr %127, ptr %prev228, align 8, !dbg !3636
  br label %if.end246, !dbg !3636

if.else229:                                       ; preds = %do.body217
  %130 = load ptr, ptr %keyids.addr, align 8, !dbg !3640
  %tail230 = getelementptr inbounds %struct.controlkeylist_t, ptr %130, i32 0, i32 1, !dbg !3640
  %131 = load ptr, ptr %tail230, align 8, !dbg !3640
  %132 = load ptr, ptr %keyid, align 8, !dbg !3640
  %cmp231 = icmp eq ptr %131, %132, !dbg !3640
  %lnot233 = xor i1 %cmp231, true, !dbg !3640
  %lnot235 = xor i1 %lnot233, true, !dbg !3640
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !3640
  %conv237 = sext i32 %lnot.ext236 to i64, !dbg !3640
  %expval238 = call i64 @llvm.expect.i64(i64 %conv237, i64 1), !dbg !3640
  %tobool239 = icmp ne i64 %expval238, 0, !dbg !3640
  br i1 %tobool239, label %lor.end241, label %lor.rhs240, !dbg !3640

lor.rhs240:                                       ; preds = %if.else229
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 816, i32 noundef 2, ptr noundef @.str.44) #10, !dbg !3640
  unreachable, !dbg !3640

133:                                              ; No predecessors!
  br label %lor.end241, !dbg !3640

lor.end241:                                       ; preds = %133, %if.else229
  %134 = phi i1 [ true, %if.else229 ], [ false, %133 ]
  %lor.ext242 = zext i1 %134 to i32, !dbg !3640
  %135 = load ptr, ptr %keyid, align 8, !dbg !3640
  %link243 = getelementptr inbounds %struct.controlkey, ptr %135, i32 0, i32 3, !dbg !3640
  %prev244 = getelementptr inbounds %struct.anon.11, ptr %link243, i32 0, i32 0, !dbg !3640
  %136 = load ptr, ptr %prev244, align 8, !dbg !3640
  %137 = load ptr, ptr %keyids.addr, align 8, !dbg !3640
  %tail245 = getelementptr inbounds %struct.controlkeylist_t, ptr %137, i32 0, i32 1, !dbg !3640
  store ptr %136, ptr %tail245, align 8, !dbg !3640
  br label %if.end246

if.end246:                                        ; preds = %lor.end241, %if.then222
  %138 = load ptr, ptr %keyid, align 8, !dbg !3642
  %link247 = getelementptr inbounds %struct.controlkey, ptr %138, i32 0, i32 3, !dbg !3642
  %prev248 = getelementptr inbounds %struct.anon.11, ptr %link247, i32 0, i32 0, !dbg !3642
  %139 = load ptr, ptr %prev248, align 8, !dbg !3642
  %cmp249 = icmp ne ptr %139, null, !dbg !3642
  br i1 %cmp249, label %if.then251, label %if.else258, !dbg !3639

if.then251:                                       ; preds = %if.end246
  %140 = load ptr, ptr %keyid, align 8, !dbg !3642
  %link252 = getelementptr inbounds %struct.controlkey, ptr %140, i32 0, i32 3, !dbg !3642
  %next253 = getelementptr inbounds %struct.anon.11, ptr %link252, i32 0, i32 1, !dbg !3642
  %141 = load ptr, ptr %next253, align 8, !dbg !3642
  %142 = load ptr, ptr %keyid, align 8, !dbg !3642
  %link254 = getelementptr inbounds %struct.controlkey, ptr %142, i32 0, i32 3, !dbg !3642
  %prev255 = getelementptr inbounds %struct.anon.11, ptr %link254, i32 0, i32 0, !dbg !3642
  %143 = load ptr, ptr %prev255, align 8, !dbg !3642
  %link256 = getelementptr inbounds %struct.controlkey, ptr %143, i32 0, i32 3, !dbg !3642
  %next257 = getelementptr inbounds %struct.anon.11, ptr %link256, i32 0, i32 1, !dbg !3642
  store ptr %141, ptr %next257, align 8, !dbg !3642
  br label %if.end275, !dbg !3642

if.else258:                                       ; preds = %if.end246
  %144 = load ptr, ptr %keyids.addr, align 8, !dbg !3644
  %head259 = getelementptr inbounds %struct.controlkeylist_t, ptr %144, i32 0, i32 0, !dbg !3644
  %145 = load ptr, ptr %head259, align 8, !dbg !3644
  %146 = load ptr, ptr %keyid, align 8, !dbg !3644
  %cmp260 = icmp eq ptr %145, %146, !dbg !3644
  %lnot262 = xor i1 %cmp260, true, !dbg !3644
  %lnot264 = xor i1 %lnot262, true, !dbg !3644
  %lnot.ext265 = zext i1 %lnot264 to i32, !dbg !3644
  %conv266 = sext i32 %lnot.ext265 to i64, !dbg !3644
  %expval267 = call i64 @llvm.expect.i64(i64 %conv266, i64 1), !dbg !3644
  %tobool268 = icmp ne i64 %expval267, 0, !dbg !3644
  br i1 %tobool268, label %lor.end270, label %lor.rhs269, !dbg !3644

lor.rhs269:                                       ; preds = %if.else258
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 816, i32 noundef 2, ptr noundef @.str.45) #10, !dbg !3644
  unreachable, !dbg !3644

147:                                              ; No predecessors!
  br label %lor.end270, !dbg !3644

lor.end270:                                       ; preds = %147, %if.else258
  %148 = phi i1 [ true, %if.else258 ], [ false, %147 ]
  %lor.ext271 = zext i1 %148 to i32, !dbg !3644
  %149 = load ptr, ptr %keyid, align 8, !dbg !3644
  %link272 = getelementptr inbounds %struct.controlkey, ptr %149, i32 0, i32 3, !dbg !3644
  %next273 = getelementptr inbounds %struct.anon.11, ptr %link272, i32 0, i32 1, !dbg !3644
  %150 = load ptr, ptr %next273, align 8, !dbg !3644
  %151 = load ptr, ptr %keyids.addr, align 8, !dbg !3644
  %head274 = getelementptr inbounds %struct.controlkeylist_t, ptr %151, i32 0, i32 0, !dbg !3644
  store ptr %150, ptr %head274, align 8, !dbg !3644
  br label %if.end275

if.end275:                                        ; preds = %lor.end270, %if.then251
  %152 = load ptr, ptr %keyid, align 8, !dbg !3639
  %link276 = getelementptr inbounds %struct.controlkey, ptr %152, i32 0, i32 3, !dbg !3639
  %prev277 = getelementptr inbounds %struct.anon.11, ptr %link276, i32 0, i32 0, !dbg !3639
  store ptr inttoptr (i64 -1 to ptr), ptr %prev277, align 8, !dbg !3639
  %153 = load ptr, ptr %keyid, align 8, !dbg !3639
  %link278 = getelementptr inbounds %struct.controlkey, ptr %153, i32 0, i32 3, !dbg !3639
  %next279 = getelementptr inbounds %struct.anon.11, ptr %link278, i32 0, i32 1, !dbg !3639
  store ptr inttoptr (i64 -1 to ptr), ptr %next279, align 8, !dbg !3639
  %154 = load ptr, ptr %keyids.addr, align 8, !dbg !3639
  %head280 = getelementptr inbounds %struct.controlkeylist_t, ptr %154, i32 0, i32 0, !dbg !3639
  %155 = load ptr, ptr %head280, align 8, !dbg !3639
  %156 = load ptr, ptr %keyid, align 8, !dbg !3639
  %cmp281 = icmp ne ptr %155, %156, !dbg !3639
  %lnot283 = xor i1 %cmp281, true, !dbg !3639
  %lnot285 = xor i1 %lnot283, true, !dbg !3639
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !3639
  %conv287 = sext i32 %lnot.ext286 to i64, !dbg !3639
  %expval288 = call i64 @llvm.expect.i64(i64 %conv287, i64 1), !dbg !3639
  %tobool289 = icmp ne i64 %expval288, 0, !dbg !3639
  br i1 %tobool289, label %lor.end291, label %lor.rhs290, !dbg !3639

lor.rhs290:                                       ; preds = %if.end275
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 816, i32 noundef 2, ptr noundef @.str.46) #10, !dbg !3639
  unreachable, !dbg !3639

157:                                              ; No predecessors!
  br label %lor.end291, !dbg !3639

lor.end291:                                       ; preds = %157, %if.end275
  %158 = phi i1 [ true, %if.end275 ], [ false, %157 ]
  %lor.ext292 = zext i1 %158 to i32, !dbg !3639
  %159 = load ptr, ptr %keyids.addr, align 8, !dbg !3639
  %tail293 = getelementptr inbounds %struct.controlkeylist_t, ptr %159, i32 0, i32 1, !dbg !3639
  %160 = load ptr, ptr %tail293, align 8, !dbg !3639
  %161 = load ptr, ptr %keyid, align 8, !dbg !3639
  %cmp294 = icmp ne ptr %160, %161, !dbg !3639
  %lnot296 = xor i1 %cmp294, true, !dbg !3639
  %lnot298 = xor i1 %lnot296, true, !dbg !3639
  %lnot.ext299 = zext i1 %lnot298 to i32, !dbg !3639
  %conv300 = sext i32 %lnot.ext299 to i64, !dbg !3639
  %expval301 = call i64 @llvm.expect.i64(i64 %conv300, i64 1), !dbg !3639
  %tobool302 = icmp ne i64 %expval301, 0, !dbg !3639
  br i1 %tobool302, label %lor.end304, label %lor.rhs303, !dbg !3639

lor.rhs303:                                       ; preds = %lor.end291
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 816, i32 noundef 2, ptr noundef @.str.47) #10, !dbg !3639
  unreachable, !dbg !3639

162:                                              ; No predecessors!
  br label %lor.end304, !dbg !3639

lor.end304:                                       ; preds = %162, %lor.end291
  %163 = phi i1 [ true, %lor.end291 ], [ false, %162 ]
  %lor.ext305 = zext i1 %163 to i32, !dbg !3639
  br label %do.cond306, !dbg !3639

do.cond306:                                       ; preds = %lor.end304
  br label %do.end307, !dbg !3639

do.end307:                                        ; preds = %do.cond306
  br label %do.cond308, !dbg !3634

do.cond308:                                       ; preds = %do.end307
  br label %do.end309, !dbg !3634

do.end309:                                        ; preds = %do.cond308
  %164 = load ptr, ptr %keyid, align 8, !dbg !3646
  %165 = load ptr, ptr %mctx.addr, align 8, !dbg !3647
  call void @free_controlkey(ptr noundef %164, ptr noundef %165), !dbg !3648
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3649

if.end310:                                        ; preds = %do.end209
  %used311 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 3, !dbg !3650
  %166 = load i32, ptr %used311, align 4, !dbg !3650
  %167 = load ptr, ptr %keyid, align 8, !dbg !3651
  %secret312 = getelementptr inbounds %struct.controlkey, ptr %167, i32 0, i32 2, !dbg !3652
  %length313 = getelementptr inbounds %struct.isc_region, ptr %secret312, i32 0, i32 1, !dbg !3653
  store i32 %166, ptr %length313, align 8, !dbg !3654
  %168 = load ptr, ptr %mctx.addr, align 8, !dbg !3655
  %169 = load ptr, ptr %keyid, align 8, !dbg !3655
  %secret314 = getelementptr inbounds %struct.controlkey, ptr %169, i32 0, i32 2, !dbg !3655
  %length315 = getelementptr inbounds %struct.isc_region, ptr %secret314, i32 0, i32 1, !dbg !3655
  %170 = load i32, ptr %length315, align 8, !dbg !3655
  %conv316 = zext i32 %170 to i64, !dbg !3655
  %call317 = call ptr @isc__mem_get(ptr noundef %168, i64 noundef %conv316, ptr noundef @.str.4, i32 noundef 823), !dbg !3655
  %171 = load ptr, ptr %keyid, align 8, !dbg !3656
  %secret318 = getelementptr inbounds %struct.controlkey, ptr %171, i32 0, i32 2, !dbg !3657
  %base319 = getelementptr inbounds %struct.isc_region, ptr %secret318, i32 0, i32 0, !dbg !3658
  store ptr %call317, ptr %base319, align 8, !dbg !3659
  %172 = load ptr, ptr %keyid, align 8, !dbg !3660
  %secret320 = getelementptr inbounds %struct.controlkey, ptr %172, i32 0, i32 2, !dbg !3662
  %base321 = getelementptr inbounds %struct.isc_region, ptr %secret320, i32 0, i32 0, !dbg !3663
  %173 = load ptr, ptr %base321, align 8, !dbg !3663
  %cmp322 = icmp eq ptr %173, null, !dbg !3664
  br i1 %cmp322, label %if.then324, label %if.end420, !dbg !3665

if.then324:                                       ; preds = %if.end310
  %174 = load ptr, ptr %keydef, align 8, !dbg !3666
  %175 = load ptr, ptr @named_g_lctx, align 8, !dbg !3668
  %176 = load ptr, ptr %keyid, align 8, !dbg !3669
  %keyname325 = getelementptr inbounds %struct.controlkey, ptr %176, i32 0, i32 0, !dbg !3670
  %177 = load ptr, ptr %keyname325, align 8, !dbg !3670
  call void (ptr, ptr, i32, ptr, ...) @cfg_obj_log(ptr noundef %174, ptr noundef %175, i32 noundef -3, ptr noundef @.str.53, ptr noundef %177), !dbg !3671
  br label %do.body326, !dbg !3672

do.body326:                                       ; preds = %if.then324
  br label %do.body327, !dbg !3673

do.body327:                                       ; preds = %do.body326
  %178 = load ptr, ptr %keyid, align 8, !dbg !3675
  %link328 = getelementptr inbounds %struct.controlkey, ptr %178, i32 0, i32 3, !dbg !3675
  %next329 = getelementptr inbounds %struct.anon.11, ptr %link328, i32 0, i32 1, !dbg !3675
  %179 = load ptr, ptr %next329, align 8, !dbg !3675
  %cmp330 = icmp ne ptr %179, null, !dbg !3675
  br i1 %cmp330, label %if.then332, label %if.else339, !dbg !3678

if.then332:                                       ; preds = %do.body327
  %180 = load ptr, ptr %keyid, align 8, !dbg !3675
  %link333 = getelementptr inbounds %struct.controlkey, ptr %180, i32 0, i32 3, !dbg !3675
  %prev334 = getelementptr inbounds %struct.anon.11, ptr %link333, i32 0, i32 0, !dbg !3675
  %181 = load ptr, ptr %prev334, align 8, !dbg !3675
  %182 = load ptr, ptr %keyid, align 8, !dbg !3675
  %link335 = getelementptr inbounds %struct.controlkey, ptr %182, i32 0, i32 3, !dbg !3675
  %next336 = getelementptr inbounds %struct.anon.11, ptr %link335, i32 0, i32 1, !dbg !3675
  %183 = load ptr, ptr %next336, align 8, !dbg !3675
  %link337 = getelementptr inbounds %struct.controlkey, ptr %183, i32 0, i32 3, !dbg !3675
  %prev338 = getelementptr inbounds %struct.anon.11, ptr %link337, i32 0, i32 0, !dbg !3675
  store ptr %181, ptr %prev338, align 8, !dbg !3675
  br label %if.end356, !dbg !3675

if.else339:                                       ; preds = %do.body327
  %184 = load ptr, ptr %keyids.addr, align 8, !dbg !3679
  %tail340 = getelementptr inbounds %struct.controlkeylist_t, ptr %184, i32 0, i32 1, !dbg !3679
  %185 = load ptr, ptr %tail340, align 8, !dbg !3679
  %186 = load ptr, ptr %keyid, align 8, !dbg !3679
  %cmp341 = icmp eq ptr %185, %186, !dbg !3679
  %lnot343 = xor i1 %cmp341, true, !dbg !3679
  %lnot345 = xor i1 %lnot343, true, !dbg !3679
  %lnot.ext346 = zext i1 %lnot345 to i32, !dbg !3679
  %conv347 = sext i32 %lnot.ext346 to i64, !dbg !3679
  %expval348 = call i64 @llvm.expect.i64(i64 %conv347, i64 1), !dbg !3679
  %tobool349 = icmp ne i64 %expval348, 0, !dbg !3679
  br i1 %tobool349, label %lor.end351, label %lor.rhs350, !dbg !3679

lor.rhs350:                                       ; preds = %if.else339
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 829, i32 noundef 2, ptr noundef @.str.44) #10, !dbg !3679
  unreachable, !dbg !3679

187:                                              ; No predecessors!
  br label %lor.end351, !dbg !3679

lor.end351:                                       ; preds = %187, %if.else339
  %188 = phi i1 [ true, %if.else339 ], [ false, %187 ]
  %lor.ext352 = zext i1 %188 to i32, !dbg !3679
  %189 = load ptr, ptr %keyid, align 8, !dbg !3679
  %link353 = getelementptr inbounds %struct.controlkey, ptr %189, i32 0, i32 3, !dbg !3679
  %prev354 = getelementptr inbounds %struct.anon.11, ptr %link353, i32 0, i32 0, !dbg !3679
  %190 = load ptr, ptr %prev354, align 8, !dbg !3679
  %191 = load ptr, ptr %keyids.addr, align 8, !dbg !3679
  %tail355 = getelementptr inbounds %struct.controlkeylist_t, ptr %191, i32 0, i32 1, !dbg !3679
  store ptr %190, ptr %tail355, align 8, !dbg !3679
  br label %if.end356

if.end356:                                        ; preds = %lor.end351, %if.then332
  %192 = load ptr, ptr %keyid, align 8, !dbg !3681
  %link357 = getelementptr inbounds %struct.controlkey, ptr %192, i32 0, i32 3, !dbg !3681
  %prev358 = getelementptr inbounds %struct.anon.11, ptr %link357, i32 0, i32 0, !dbg !3681
  %193 = load ptr, ptr %prev358, align 8, !dbg !3681
  %cmp359 = icmp ne ptr %193, null, !dbg !3681
  br i1 %cmp359, label %if.then361, label %if.else368, !dbg !3678

if.then361:                                       ; preds = %if.end356
  %194 = load ptr, ptr %keyid, align 8, !dbg !3681
  %link362 = getelementptr inbounds %struct.controlkey, ptr %194, i32 0, i32 3, !dbg !3681
  %next363 = getelementptr inbounds %struct.anon.11, ptr %link362, i32 0, i32 1, !dbg !3681
  %195 = load ptr, ptr %next363, align 8, !dbg !3681
  %196 = load ptr, ptr %keyid, align 8, !dbg !3681
  %link364 = getelementptr inbounds %struct.controlkey, ptr %196, i32 0, i32 3, !dbg !3681
  %prev365 = getelementptr inbounds %struct.anon.11, ptr %link364, i32 0, i32 0, !dbg !3681
  %197 = load ptr, ptr %prev365, align 8, !dbg !3681
  %link366 = getelementptr inbounds %struct.controlkey, ptr %197, i32 0, i32 3, !dbg !3681
  %next367 = getelementptr inbounds %struct.anon.11, ptr %link366, i32 0, i32 1, !dbg !3681
  store ptr %195, ptr %next367, align 8, !dbg !3681
  br label %if.end385, !dbg !3681

if.else368:                                       ; preds = %if.end356
  %198 = load ptr, ptr %keyids.addr, align 8, !dbg !3683
  %head369 = getelementptr inbounds %struct.controlkeylist_t, ptr %198, i32 0, i32 0, !dbg !3683
  %199 = load ptr, ptr %head369, align 8, !dbg !3683
  %200 = load ptr, ptr %keyid, align 8, !dbg !3683
  %cmp370 = icmp eq ptr %199, %200, !dbg !3683
  %lnot372 = xor i1 %cmp370, true, !dbg !3683
  %lnot374 = xor i1 %lnot372, true, !dbg !3683
  %lnot.ext375 = zext i1 %lnot374 to i32, !dbg !3683
  %conv376 = sext i32 %lnot.ext375 to i64, !dbg !3683
  %expval377 = call i64 @llvm.expect.i64(i64 %conv376, i64 1), !dbg !3683
  %tobool378 = icmp ne i64 %expval377, 0, !dbg !3683
  br i1 %tobool378, label %lor.end380, label %lor.rhs379, !dbg !3683

lor.rhs379:                                       ; preds = %if.else368
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 829, i32 noundef 2, ptr noundef @.str.45) #10, !dbg !3683
  unreachable, !dbg !3683

201:                                              ; No predecessors!
  br label %lor.end380, !dbg !3683

lor.end380:                                       ; preds = %201, %if.else368
  %202 = phi i1 [ true, %if.else368 ], [ false, %201 ]
  %lor.ext381 = zext i1 %202 to i32, !dbg !3683
  %203 = load ptr, ptr %keyid, align 8, !dbg !3683
  %link382 = getelementptr inbounds %struct.controlkey, ptr %203, i32 0, i32 3, !dbg !3683
  %next383 = getelementptr inbounds %struct.anon.11, ptr %link382, i32 0, i32 1, !dbg !3683
  %204 = load ptr, ptr %next383, align 8, !dbg !3683
  %205 = load ptr, ptr %keyids.addr, align 8, !dbg !3683
  %head384 = getelementptr inbounds %struct.controlkeylist_t, ptr %205, i32 0, i32 0, !dbg !3683
  store ptr %204, ptr %head384, align 8, !dbg !3683
  br label %if.end385

if.end385:                                        ; preds = %lor.end380, %if.then361
  %206 = load ptr, ptr %keyid, align 8, !dbg !3678
  %link386 = getelementptr inbounds %struct.controlkey, ptr %206, i32 0, i32 3, !dbg !3678
  %prev387 = getelementptr inbounds %struct.anon.11, ptr %link386, i32 0, i32 0, !dbg !3678
  store ptr inttoptr (i64 -1 to ptr), ptr %prev387, align 8, !dbg !3678
  %207 = load ptr, ptr %keyid, align 8, !dbg !3678
  %link388 = getelementptr inbounds %struct.controlkey, ptr %207, i32 0, i32 3, !dbg !3678
  %next389 = getelementptr inbounds %struct.anon.11, ptr %link388, i32 0, i32 1, !dbg !3678
  store ptr inttoptr (i64 -1 to ptr), ptr %next389, align 8, !dbg !3678
  %208 = load ptr, ptr %keyids.addr, align 8, !dbg !3678
  %head390 = getelementptr inbounds %struct.controlkeylist_t, ptr %208, i32 0, i32 0, !dbg !3678
  %209 = load ptr, ptr %head390, align 8, !dbg !3678
  %210 = load ptr, ptr %keyid, align 8, !dbg !3678
  %cmp391 = icmp ne ptr %209, %210, !dbg !3678
  %lnot393 = xor i1 %cmp391, true, !dbg !3678
  %lnot395 = xor i1 %lnot393, true, !dbg !3678
  %lnot.ext396 = zext i1 %lnot395 to i32, !dbg !3678
  %conv397 = sext i32 %lnot.ext396 to i64, !dbg !3678
  %expval398 = call i64 @llvm.expect.i64(i64 %conv397, i64 1), !dbg !3678
  %tobool399 = icmp ne i64 %expval398, 0, !dbg !3678
  br i1 %tobool399, label %lor.end401, label %lor.rhs400, !dbg !3678

lor.rhs400:                                       ; preds = %if.end385
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 829, i32 noundef 2, ptr noundef @.str.46) #10, !dbg !3678
  unreachable, !dbg !3678

211:                                              ; No predecessors!
  br label %lor.end401, !dbg !3678

lor.end401:                                       ; preds = %211, %if.end385
  %212 = phi i1 [ true, %if.end385 ], [ false, %211 ]
  %lor.ext402 = zext i1 %212 to i32, !dbg !3678
  %213 = load ptr, ptr %keyids.addr, align 8, !dbg !3678
  %tail403 = getelementptr inbounds %struct.controlkeylist_t, ptr %213, i32 0, i32 1, !dbg !3678
  %214 = load ptr, ptr %tail403, align 8, !dbg !3678
  %215 = load ptr, ptr %keyid, align 8, !dbg !3678
  %cmp404 = icmp ne ptr %214, %215, !dbg !3678
  %lnot406 = xor i1 %cmp404, true, !dbg !3678
  %lnot408 = xor i1 %lnot406, true, !dbg !3678
  %lnot.ext409 = zext i1 %lnot408 to i32, !dbg !3678
  %conv410 = sext i32 %lnot.ext409 to i64, !dbg !3678
  %expval411 = call i64 @llvm.expect.i64(i64 %conv410, i64 1), !dbg !3678
  %tobool412 = icmp ne i64 %expval411, 0, !dbg !3678
  br i1 %tobool412, label %lor.end414, label %lor.rhs413, !dbg !3678

lor.rhs413:                                       ; preds = %lor.end401
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 829, i32 noundef 2, ptr noundef @.str.47) #10, !dbg !3678
  unreachable, !dbg !3678

216:                                              ; No predecessors!
  br label %lor.end414, !dbg !3678

lor.end414:                                       ; preds = %216, %lor.end401
  %217 = phi i1 [ true, %lor.end401 ], [ false, %216 ]
  %lor.ext415 = zext i1 %217 to i32, !dbg !3678
  br label %do.cond416, !dbg !3678

do.cond416:                                       ; preds = %lor.end414
  br label %do.end417, !dbg !3678

do.end417:                                        ; preds = %do.cond416
  br label %do.cond418, !dbg !3673

do.cond418:                                       ; preds = %do.end417
  br label %do.end419, !dbg !3673

do.end419:                                        ; preds = %do.cond418
  %218 = load ptr, ptr %keyid, align 8, !dbg !3685
  %219 = load ptr, ptr %mctx.addr, align 8, !dbg !3686
  call void @free_controlkey(ptr noundef %218, ptr noundef %219), !dbg !3687
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3688

if.end420:                                        ; preds = %if.end310
  %220 = load ptr, ptr %keyid, align 8, !dbg !3689
  %secret421 = getelementptr inbounds %struct.controlkey, ptr %220, i32 0, i32 2, !dbg !3690
  %base422 = getelementptr inbounds %struct.isc_region, ptr %secret421, i32 0, i32 0, !dbg !3691
  %221 = load ptr, ptr %base422, align 8, !dbg !3691
  %base423 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 1, !dbg !3692
  %222 = load ptr, ptr %base423, align 8, !dbg !3692
  %223 = load ptr, ptr %keyid, align 8, !dbg !3693
  %secret424 = getelementptr inbounds %struct.controlkey, ptr %223, i32 0, i32 2, !dbg !3694
  %length425 = getelementptr inbounds %struct.isc_region, ptr %secret424, i32 0, i32 1, !dbg !3695
  %224 = load i32, ptr %length425, align 8, !dbg !3695
  %conv426 = zext i32 %224 to i64, !dbg !3693
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %221, ptr align 1 %222, i64 %conv426, i1 false), !dbg !3696
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3697
  br label %cleanup, !dbg !3697

cleanup:                                          ; preds = %if.end420, %do.end419, %do.end309, %do.end197
  call void @llvm.lifetime.end.p0(i64 4, ptr %algtype) #9, !dbg !3697
  call void @llvm.lifetime.end.p0(i64 8, ptr %secretstr) #9, !dbg !3697
  call void @llvm.lifetime.end.p0(i64 8, ptr %algstr) #9, !dbg !3697
  call void @llvm.lifetime.end.p0(i64 8, ptr %secretobj) #9, !dbg !3697
  call void @llvm.lifetime.end.p0(i64 8, ptr %algobj) #9, !dbg !3697
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end431

if.end431:                                        ; preds = %cleanup.cont, %do.end79
  br label %for.inc, !dbg !3698

for.inc:                                          ; preds = %if.end431, %cleanup
  %225 = load ptr, ptr %next, align 8, !dbg !3699
  store ptr %225, ptr %keyid, align 8, !dbg !3700
  br label %for.cond, !dbg !3701, !llvm.loop !3702

for.end:                                          ; preds = %cleanup, %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !3704
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #9, !dbg !3704
  call void @llvm.lifetime.end.p0(i64 1024, ptr %secret) #9, !dbg !3704
  call void @llvm.lifetime.end.p0(i64 8, ptr %keydef) #9, !dbg !3704
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9, !dbg !3704
  call void @llvm.lifetime.end.p0(i64 8, ptr %keyid) #9, !dbg !3704
  ret void, !dbg !3704

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @get_rndckey(ptr noundef %mctx, ptr noundef %keyids) #0 !dbg !3705 {
entry:
  %retval = alloca i32, align 4
  %mctx.addr = alloca ptr, align 8
  %keyids.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %pctx = alloca ptr, align 8
  %config = alloca ptr, align 8
  %key = alloca ptr, align 8
  %algobj = alloca ptr, align 8
  %secretobj = alloca ptr, align 8
  %algstr = alloca ptr, align 8
  %secretstr = alloca ptr, align 8
  %keyid = alloca ptr, align 8
  %secret = alloca [1024 x i8], align 16
  %algtype = alloca i32, align 4
  %b = alloca %struct.isc_buffer, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mctx, ptr %mctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mctx.addr, metadata !3709, metadata !DIExpression()), !dbg !3727
  store ptr %keyids, ptr %keyids.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %keyids.addr, metadata !3710, metadata !DIExpression()), !dbg !3728
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !3729
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !3711, metadata !DIExpression()), !dbg !3730
  call void @llvm.lifetime.start.p0(i64 8, ptr %pctx) #9, !dbg !3731
  tail call void @llvm.dbg.declare(metadata ptr %pctx, metadata !3712, metadata !DIExpression()), !dbg !3732
  store ptr null, ptr %pctx, align 8, !dbg !3732
  call void @llvm.lifetime.start.p0(i64 8, ptr %config) #9, !dbg !3733
  tail call void @llvm.dbg.declare(metadata ptr %config, metadata !3716, metadata !DIExpression()), !dbg !3734
  store ptr null, ptr %config, align 8, !dbg !3734
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #9, !dbg !3735
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !3717, metadata !DIExpression()), !dbg !3736
  store ptr null, ptr %key, align 8, !dbg !3736
  call void @llvm.lifetime.start.p0(i64 8, ptr %algobj) #9, !dbg !3737
  tail call void @llvm.dbg.declare(metadata ptr %algobj, metadata !3718, metadata !DIExpression()), !dbg !3738
  store ptr null, ptr %algobj, align 8, !dbg !3738
  call void @llvm.lifetime.start.p0(i64 8, ptr %secretobj) #9, !dbg !3739
  tail call void @llvm.dbg.declare(metadata ptr %secretobj, metadata !3719, metadata !DIExpression()), !dbg !3740
  store ptr null, ptr %secretobj, align 8, !dbg !3740
  call void @llvm.lifetime.start.p0(i64 8, ptr %algstr) #9, !dbg !3741
  tail call void @llvm.dbg.declare(metadata ptr %algstr, metadata !3720, metadata !DIExpression()), !dbg !3742
  store ptr null, ptr %algstr, align 8, !dbg !3742
  call void @llvm.lifetime.start.p0(i64 8, ptr %secretstr) #9, !dbg !3743
  tail call void @llvm.dbg.declare(metadata ptr %secretstr, metadata !3721, metadata !DIExpression()), !dbg !3744
  store ptr null, ptr %secretstr, align 8, !dbg !3744
  call void @llvm.lifetime.start.p0(i64 8, ptr %keyid) #9, !dbg !3745
  tail call void @llvm.dbg.declare(metadata ptr %keyid, metadata !3722, metadata !DIExpression()), !dbg !3746
  store ptr null, ptr %keyid, align 8, !dbg !3746
  call void @llvm.lifetime.start.p0(i64 1024, ptr %secret) #9, !dbg !3747
  tail call void @llvm.dbg.declare(metadata ptr %secret, metadata !3723, metadata !DIExpression()), !dbg !3748
  call void @llvm.lifetime.start.p0(i64 4, ptr %algtype) #9, !dbg !3749
  tail call void @llvm.dbg.declare(metadata ptr %algtype, metadata !3724, metadata !DIExpression()), !dbg !3750
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #9, !dbg !3751
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !3725, metadata !DIExpression()), !dbg !3752
  %0 = load ptr, ptr @named_g_lctx, align 8, !dbg !3753
  %1 = load ptr, ptr @named_g_modules, align 8, !dbg !3754
  %arrayidx = getelementptr inbounds %struct.isc_logmodule, ptr %1, i64 2, !dbg !3754
  %2 = load ptr, ptr @named_g_keyfile, align 8, !dbg !3755
  call void (ptr, ptr, ptr, i32, ptr, ...) @isc_log_write(ptr noundef %0, ptr noundef getelementptr inbounds ([0 x %struct.isc_logcategory], ptr @isc_categories, i64 0, i64 1), ptr noundef %arrayidx, i32 noundef -1, ptr noundef @.str.54, ptr noundef %2), !dbg !3756
  %3 = load ptr, ptr @named_g_keyfile, align 8, !dbg !3757
  %call = call zeroext i1 @isc_file_exists(ptr noundef %3), !dbg !3759
  br i1 %call, label %if.end, label %if.then, !dbg !3760

if.then:                                          ; preds = %entry
  store i32 38, ptr %retval, align 4, !dbg !3761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148, !dbg !3761

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3762

do.body:                                          ; preds = %if.end
  %4 = load ptr, ptr %mctx.addr, align 8, !dbg !3763
  %5 = load ptr, ptr @named_g_lctx, align 8, !dbg !3763
  %call1 = call i32 @cfg_parser_create(ptr noundef %4, ptr noundef %5, ptr noundef %pctx), !dbg !3763
  store i32 %call1, ptr %result, align 4, !dbg !3763
  %6 = load i32, ptr %result, align 4, !dbg !3765
  %cmp = icmp ne i32 %6, 0, !dbg !3765
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3763

if.then2:                                         ; preds = %do.body
  br label %cleanup, !dbg !3765

if.end3:                                          ; preds = %do.body
  br label %do.cond, !dbg !3763

do.cond:                                          ; preds = %if.end3
  br label %do.end, !dbg !3763

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !3767

do.body4:                                         ; preds = %do.end
  %7 = load ptr, ptr %pctx, align 8, !dbg !3768
  %8 = load ptr, ptr @named_g_keyfile, align 8, !dbg !3768
  %call5 = call i32 @cfg_parse_file(ptr noundef %7, ptr noundef %8, ptr noundef @cfg_type_rndckey, ptr noundef %config), !dbg !3768
  store i32 %call5, ptr %result, align 4, !dbg !3768
  %9 = load i32, ptr %result, align 4, !dbg !3770
  %cmp6 = icmp ne i32 %9, 0, !dbg !3770
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !3768

if.then7:                                         ; preds = %do.body4
  br label %cleanup, !dbg !3770

if.end8:                                          ; preds = %do.body4
  br label %do.cond9, !dbg !3768

do.cond9:                                         ; preds = %if.end8
  br label %do.end10, !dbg !3768

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !3772

do.body11:                                        ; preds = %do.end10
  %10 = load ptr, ptr %config, align 8, !dbg !3773
  %call12 = call i32 @cfg_map_get(ptr noundef %10, ptr noundef @.str.42, ptr noundef %key), !dbg !3773
  store i32 %call12, ptr %result, align 4, !dbg !3773
  %11 = load i32, ptr %result, align 4, !dbg !3775
  %cmp13 = icmp ne i32 %11, 0, !dbg !3775
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !3773

if.then14:                                        ; preds = %do.body11
  br label %cleanup, !dbg !3775

if.end15:                                         ; preds = %do.body11
  br label %do.cond16, !dbg !3773

do.cond16:                                        ; preds = %if.end15
  br label %do.end17, !dbg !3773

do.end17:                                         ; preds = %do.cond16
  %12 = load ptr, ptr %mctx.addr, align 8, !dbg !3777
  %call18 = call ptr @isc__mem_get(ptr noundef %12, i64 noundef 48, ptr noundef @.str.4, i32 noundef 872), !dbg !3777
  store ptr %call18, ptr %keyid, align 8, !dbg !3778
  %13 = load ptr, ptr %keyid, align 8, !dbg !3779
  %cmp19 = icmp eq ptr %13, null, !dbg !3781
  br i1 %cmp19, label %if.then20, label %if.end27, !dbg !3782

if.then20:                                        ; preds = %do.end17
  br label %do.body21, !dbg !3783

do.body21:                                        ; preds = %if.then20
  store i32 1, ptr %result, align 4, !dbg !3784
  %14 = load i32, ptr %result, align 4, !dbg !3786
  %cmp22 = icmp ne i32 %14, 0, !dbg !3786
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !3784

if.then23:                                        ; preds = %do.body21
  br label %cleanup, !dbg !3786

if.end24:                                         ; preds = %do.body21
  br label %do.cond25, !dbg !3784

do.cond25:                                        ; preds = %if.end24
  br label %do.end26, !dbg !3784

do.end26:                                         ; preds = %do.cond25
  br label %if.end27, !dbg !3784

if.end27:                                         ; preds = %do.end26, %do.end17
  %15 = load ptr, ptr %mctx.addr, align 8, !dbg !3788
  %16 = load ptr, ptr %key, align 8, !dbg !3788
  %call28 = call ptr @cfg_map_getname(ptr noundef %16), !dbg !3788
  %call29 = call ptr @cfg_obj_asstring(ptr noundef %call28), !dbg !3788
  %call30 = call ptr @isc__mem_strdup(ptr noundef %15, ptr noundef %call29, ptr noundef @.str.4, i32 noundef 876), !dbg !3788
  %17 = load ptr, ptr %keyid, align 8, !dbg !3789
  %keyname = getelementptr inbounds %struct.controlkey, ptr %17, i32 0, i32 0, !dbg !3790
  store ptr %call30, ptr %keyname, align 8, !dbg !3791
  %18 = load ptr, ptr %keyid, align 8, !dbg !3792
  %secret31 = getelementptr inbounds %struct.controlkey, ptr %18, i32 0, i32 2, !dbg !3793
  %base = getelementptr inbounds %struct.isc_region, ptr %secret31, i32 0, i32 0, !dbg !3794
  store ptr null, ptr %base, align 8, !dbg !3795
  %19 = load ptr, ptr %keyid, align 8, !dbg !3796
  %secret32 = getelementptr inbounds %struct.controlkey, ptr %19, i32 0, i32 2, !dbg !3797
  %length = getelementptr inbounds %struct.isc_region, ptr %secret32, i32 0, i32 1, !dbg !3798
  store i32 0, ptr %length, align 8, !dbg !3799
  %20 = load ptr, ptr %keyid, align 8, !dbg !3800
  %algorithm = getelementptr inbounds %struct.controlkey, ptr %20, i32 0, i32 1, !dbg !3801
  store i32 0, ptr %algorithm, align 8, !dbg !3802
  br label %do.body33, !dbg !3803

do.body33:                                        ; preds = %if.end27
  %21 = load ptr, ptr %keyid, align 8, !dbg !3804
  %link = getelementptr inbounds %struct.controlkey, ptr %21, i32 0, i32 3, !dbg !3804
  %prev = getelementptr inbounds %struct.anon.11, ptr %link, i32 0, i32 0, !dbg !3804
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !3804
  %22 = load ptr, ptr %keyid, align 8, !dbg !3804
  %link34 = getelementptr inbounds %struct.controlkey, ptr %22, i32 0, i32 3, !dbg !3804
  %next = getelementptr inbounds %struct.anon.11, ptr %link34, i32 0, i32 1, !dbg !3804
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !3804
  br label %do.cond35, !dbg !3804

do.cond35:                                        ; preds = %do.body33
  br label %do.end36, !dbg !3804

do.end36:                                         ; preds = %do.cond35
  %23 = load ptr, ptr %keyid, align 8, !dbg !3806
  %keyname37 = getelementptr inbounds %struct.controlkey, ptr %23, i32 0, i32 0, !dbg !3808
  %24 = load ptr, ptr %keyname37, align 8, !dbg !3808
  %cmp38 = icmp eq ptr %24, null, !dbg !3809
  br i1 %cmp38, label %if.then39, label %if.end46, !dbg !3810

if.then39:                                        ; preds = %do.end36
  br label %do.body40, !dbg !3811

do.body40:                                        ; preds = %if.then39
  store i32 1, ptr %result, align 4, !dbg !3812
  %25 = load i32, ptr %result, align 4, !dbg !3814
  %cmp41 = icmp ne i32 %25, 0, !dbg !3814
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !3812

if.then42:                                        ; preds = %do.body40
  br label %cleanup, !dbg !3814

if.end43:                                         ; preds = %do.body40
  br label %do.cond44, !dbg !3812

do.cond44:                                        ; preds = %if.end43
  br label %do.end45, !dbg !3812

do.end45:                                         ; preds = %do.cond44
  br label %if.end46, !dbg !3812

if.end46:                                         ; preds = %do.end45, %do.end36
  br label %do.body47, !dbg !3816

do.body47:                                        ; preds = %if.end46
  %26 = load ptr, ptr %key, align 8, !dbg !3817
  %27 = load ptr, ptr @named_g_lctx, align 8, !dbg !3817
  %call48 = call i32 @bind9_check_key(ptr noundef %26, ptr noundef %27), !dbg !3817
  store i32 %call48, ptr %result, align 4, !dbg !3817
  %28 = load i32, ptr %result, align 4, !dbg !3819
  %cmp49 = icmp ne i32 %28, 0, !dbg !3819
  br i1 %cmp49, label %if.then50, label %if.end51, !dbg !3817

if.then50:                                        ; preds = %do.body47
  br label %cleanup, !dbg !3819

if.end51:                                         ; preds = %do.body47
  br label %do.cond52, !dbg !3817

do.cond52:                                        ; preds = %if.end51
  br label %do.end53, !dbg !3817

do.end53:                                         ; preds = %do.cond52
  %29 = load ptr, ptr %key, align 8, !dbg !3821
  %call54 = call i32 @cfg_map_get(ptr noundef %29, ptr noundef @.str.48, ptr noundef %algobj), !dbg !3822
  %30 = load ptr, ptr %key, align 8, !dbg !3823
  %call55 = call i32 @cfg_map_get(ptr noundef %30, ptr noundef @.str.49, ptr noundef %secretobj), !dbg !3824
  %31 = load ptr, ptr %algobj, align 8, !dbg !3825
  %cmp56 = icmp ne ptr %31, null, !dbg !3825
  br i1 %cmp56, label %land.rhs, label %land.end, !dbg !3825

land.rhs:                                         ; preds = %do.end53
  %32 = load ptr, ptr %secretobj, align 8, !dbg !3825
  %cmp57 = icmp ne ptr %32, null, !dbg !3825
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end53
  %33 = phi i1 [ false, %do.end53 ], [ %cmp57, %land.rhs ], !dbg !3826
  %lnot = xor i1 %33, true, !dbg !3825
  %lnot58 = xor i1 %lnot, true, !dbg !3825
  %lnot.ext = zext i1 %lnot58 to i32, !dbg !3825
  %conv = sext i32 %lnot.ext to i64, !dbg !3825
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3825
  %tobool = icmp ne i64 %expval, 0, !dbg !3825
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !3825

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 888, i32 noundef 2, ptr noundef @.str.50) #10, !dbg !3825
  unreachable, !dbg !3825

34:                                               ; No predecessors!
  br label %lor.end, !dbg !3825

lor.end:                                          ; preds = %34, %land.end
  %35 = phi i1 [ true, %land.end ], [ false, %34 ]
  %lor.ext = zext i1 %35 to i32, !dbg !3825
  %36 = load ptr, ptr %algobj, align 8, !dbg !3827
  %call59 = call ptr @cfg_obj_asstring(ptr noundef %36), !dbg !3828
  store ptr %call59, ptr %algstr, align 8, !dbg !3829
  %37 = load ptr, ptr %secretobj, align 8, !dbg !3830
  %call60 = call ptr @cfg_obj_asstring(ptr noundef %37), !dbg !3831
  store ptr %call60, ptr %secretstr, align 8, !dbg !3832
  %38 = load ptr, ptr %algstr, align 8, !dbg !3833
  %call61 = call i32 @named_config_getkeyalgorithm2(ptr noundef %38, ptr noundef null, ptr noundef %algtype, ptr noundef null), !dbg !3835
  %cmp62 = icmp ne i32 %call61, 0, !dbg !3836
  br i1 %cmp62, label %if.then64, label %if.end66, !dbg !3837

if.then64:                                        ; preds = %lor.end
  %39 = load ptr, ptr %key, align 8, !dbg !3838
  %40 = load ptr, ptr @named_g_lctx, align 8, !dbg !3840
  %41 = load ptr, ptr %algstr, align 8, !dbg !3841
  %42 = load ptr, ptr %keyid, align 8, !dbg !3842
  %keyname65 = getelementptr inbounds %struct.controlkey, ptr %42, i32 0, i32 0, !dbg !3843
  %43 = load ptr, ptr %keyname65, align 8, !dbg !3843
  call void (ptr, ptr, i32, ptr, ...) @cfg_obj_log(ptr noundef %39, ptr noundef %40, i32 noundef -3, ptr noundef @.str.55, ptr noundef %41, ptr noundef %43), !dbg !3844
  br label %cleanup, !dbg !3845

if.end66:                                         ; preds = %lor.end
  %44 = load i32, ptr %algtype, align 4, !dbg !3846
  %45 = load ptr, ptr %keyid, align 8, !dbg !3847
  %algorithm67 = getelementptr inbounds %struct.controlkey, ptr %45, i32 0, i32 1, !dbg !3848
  store i32 %44, ptr %algorithm67, align 8, !dbg !3849
  br label %do.body68, !dbg !3850

do.body68:                                        ; preds = %if.end66
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %secret, i64 0, i64 0, !dbg !3851
  %base69 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 1, !dbg !3851
  store ptr %arraydecay, ptr %base69, align 8, !dbg !3851
  %length70 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 2, !dbg !3851
  store i32 1024, ptr %length70, align 8, !dbg !3851
  %used = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 3, !dbg !3851
  store i32 0, ptr %used, align 4, !dbg !3851
  %current = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 4, !dbg !3851
  store i32 0, ptr %current, align 8, !dbg !3851
  %active = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 5, !dbg !3851
  store i32 0, ptr %active, align 4, !dbg !3851
  %mctx71 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 7, !dbg !3851
  store ptr null, ptr %mctx71, align 8, !dbg !3851
  br label %do.body72, !dbg !3851

do.body72:                                        ; preds = %do.body68
  %link73 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 6, !dbg !3853
  %prev74 = getelementptr inbounds %struct.anon.7, ptr %link73, i32 0, i32 0, !dbg !3853
  store ptr inttoptr (i64 -1 to ptr), ptr %prev74, align 8, !dbg !3853
  %link75 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 6, !dbg !3853
  %next76 = getelementptr inbounds %struct.anon.7, ptr %link75, i32 0, i32 1, !dbg !3853
  store ptr inttoptr (i64 -1 to ptr), ptr %next76, align 8, !dbg !3853
  br label %do.cond77, !dbg !3853

do.cond77:                                        ; preds = %do.body72
  br label %do.end78, !dbg !3853

do.end78:                                         ; preds = %do.cond77
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 0, !dbg !3851
  store i32 1114990113, ptr %magic, align 8, !dbg !3851
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 8, !dbg !3851
  store i8 0, ptr %autore, align 8, !dbg !3851
  br label %do.cond79, !dbg !3851

do.cond79:                                        ; preds = %do.end78
  br label %do.end80, !dbg !3851

do.end80:                                         ; preds = %do.cond79
  %46 = load ptr, ptr %secretstr, align 8, !dbg !3855
  %call81 = call i32 @isc_base64_decodestring(ptr noundef %46, ptr noundef %b), !dbg !3856
  store i32 %call81, ptr %result, align 4, !dbg !3857
  %47 = load i32, ptr %result, align 4, !dbg !3858
  %cmp82 = icmp ne i32 %47, 0, !dbg !3860
  br i1 %cmp82, label %if.then84, label %if.end87, !dbg !3861

if.then84:                                        ; preds = %do.end80
  %48 = load ptr, ptr %key, align 8, !dbg !3862
  %49 = load ptr, ptr @named_g_lctx, align 8, !dbg !3864
  %50 = load ptr, ptr %keyid, align 8, !dbg !3865
  %keyname85 = getelementptr inbounds %struct.controlkey, ptr %50, i32 0, i32 0, !dbg !3866
  %51 = load ptr, ptr %keyname85, align 8, !dbg !3866
  %52 = load i32, ptr %result, align 4, !dbg !3867
  %call86 = call ptr @isc_result_totext(i32 noundef %52), !dbg !3868
  call void (ptr, ptr, i32, ptr, ...) @cfg_obj_log(ptr noundef %48, ptr noundef %49, i32 noundef -3, ptr noundef @.str.56, ptr noundef %51, ptr noundef %call86), !dbg !3869
  br label %cleanup, !dbg !3870

if.end87:                                         ; preds = %do.end80
  %used88 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 3, !dbg !3871
  %53 = load i32, ptr %used88, align 4, !dbg !3871
  %54 = load ptr, ptr %keyid, align 8, !dbg !3872
  %secret89 = getelementptr inbounds %struct.controlkey, ptr %54, i32 0, i32 2, !dbg !3873
  %length90 = getelementptr inbounds %struct.isc_region, ptr %secret89, i32 0, i32 1, !dbg !3874
  store i32 %53, ptr %length90, align 8, !dbg !3875
  %55 = load ptr, ptr %mctx.addr, align 8, !dbg !3876
  %56 = load ptr, ptr %keyid, align 8, !dbg !3876
  %secret91 = getelementptr inbounds %struct.controlkey, ptr %56, i32 0, i32 2, !dbg !3876
  %length92 = getelementptr inbounds %struct.isc_region, ptr %secret91, i32 0, i32 1, !dbg !3876
  %57 = load i32, ptr %length92, align 8, !dbg !3876
  %conv93 = zext i32 %57 to i64, !dbg !3876
  %call94 = call ptr @isc__mem_get(ptr noundef %55, i64 noundef %conv93, ptr noundef @.str.4, i32 noundef 917), !dbg !3876
  %58 = load ptr, ptr %keyid, align 8, !dbg !3877
  %secret95 = getelementptr inbounds %struct.controlkey, ptr %58, i32 0, i32 2, !dbg !3878
  %base96 = getelementptr inbounds %struct.isc_region, ptr %secret95, i32 0, i32 0, !dbg !3879
  store ptr %call94, ptr %base96, align 8, !dbg !3880
  %59 = load ptr, ptr %keyid, align 8, !dbg !3881
  %secret97 = getelementptr inbounds %struct.controlkey, ptr %59, i32 0, i32 2, !dbg !3883
  %base98 = getelementptr inbounds %struct.isc_region, ptr %secret97, i32 0, i32 0, !dbg !3884
  %60 = load ptr, ptr %base98, align 8, !dbg !3884
  %cmp99 = icmp eq ptr %60, null, !dbg !3885
  br i1 %cmp99, label %if.then101, label %if.end110, !dbg !3886

if.then101:                                       ; preds = %if.end87
  %61 = load ptr, ptr %key, align 8, !dbg !3887
  %62 = load ptr, ptr @named_g_lctx, align 8, !dbg !3889
  %63 = load ptr, ptr %keyid, align 8, !dbg !3890
  %keyname102 = getelementptr inbounds %struct.controlkey, ptr %63, i32 0, i32 0, !dbg !3891
  %64 = load ptr, ptr %keyname102, align 8, !dbg !3891
  call void (ptr, ptr, i32, ptr, ...) @cfg_obj_log(ptr noundef %61, ptr noundef %62, i32 noundef -3, ptr noundef @.str.53, ptr noundef %64), !dbg !3892
  br label %do.body103, !dbg !3893

do.body103:                                       ; preds = %if.then101
  store i32 1, ptr %result, align 4, !dbg !3894
  %65 = load i32, ptr %result, align 4, !dbg !3896
  %cmp104 = icmp ne i32 %65, 0, !dbg !3896
  br i1 %cmp104, label %if.then106, label %if.end107, !dbg !3894

if.then106:                                       ; preds = %do.body103
  br label %cleanup, !dbg !3896

if.end107:                                        ; preds = %do.body103
  br label %do.cond108, !dbg !3894

do.cond108:                                       ; preds = %if.end107
  br label %do.end109, !dbg !3894

do.end109:                                        ; preds = %do.cond108
  br label %if.end110, !dbg !3898

if.end110:                                        ; preds = %do.end109, %if.end87
  %66 = load ptr, ptr %keyid, align 8, !dbg !3899
  %secret111 = getelementptr inbounds %struct.controlkey, ptr %66, i32 0, i32 2, !dbg !3900
  %base112 = getelementptr inbounds %struct.isc_region, ptr %secret111, i32 0, i32 0, !dbg !3901
  %67 = load ptr, ptr %base112, align 8, !dbg !3901
  %base113 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 1, !dbg !3902
  %68 = load ptr, ptr %base113, align 8, !dbg !3902
  %69 = load ptr, ptr %keyid, align 8, !dbg !3903
  %secret114 = getelementptr inbounds %struct.controlkey, ptr %69, i32 0, i32 2, !dbg !3904
  %length115 = getelementptr inbounds %struct.isc_region, ptr %secret114, i32 0, i32 1, !dbg !3905
  %70 = load i32, ptr %length115, align 8, !dbg !3905
  %conv116 = zext i32 %70 to i64, !dbg !3903
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %67, ptr align 1 %68, i64 %conv116, i1 false), !dbg !3906
  br label %do.body117, !dbg !3907

do.body117:                                       ; preds = %if.end110
  br label %do.body118, !dbg !3908

do.body118:                                       ; preds = %do.body117
  %71 = load ptr, ptr %keyids.addr, align 8, !dbg !3910
  %tail = getelementptr inbounds %struct.controlkeylist_t, ptr %71, i32 0, i32 1, !dbg !3910
  %72 = load ptr, ptr %tail, align 8, !dbg !3910
  %cmp119 = icmp ne ptr %72, null, !dbg !3910
  br i1 %cmp119, label %if.then121, label %if.else, !dbg !3913

if.then121:                                       ; preds = %do.body118
  %73 = load ptr, ptr %keyid, align 8, !dbg !3910
  %74 = load ptr, ptr %keyids.addr, align 8, !dbg !3910
  %tail122 = getelementptr inbounds %struct.controlkeylist_t, ptr %74, i32 0, i32 1, !dbg !3910
  %75 = load ptr, ptr %tail122, align 8, !dbg !3910
  %link123 = getelementptr inbounds %struct.controlkey, ptr %75, i32 0, i32 3, !dbg !3910
  %next124 = getelementptr inbounds %struct.anon.11, ptr %link123, i32 0, i32 1, !dbg !3910
  store ptr %73, ptr %next124, align 8, !dbg !3910
  br label %if.end125, !dbg !3910

if.else:                                          ; preds = %do.body118
  %76 = load ptr, ptr %keyid, align 8, !dbg !3910
  %77 = load ptr, ptr %keyids.addr, align 8, !dbg !3910
  %head = getelementptr inbounds %struct.controlkeylist_t, ptr %77, i32 0, i32 0, !dbg !3910
  store ptr %76, ptr %head, align 8, !dbg !3910
  br label %if.end125

if.end125:                                        ; preds = %if.else, %if.then121
  %78 = load ptr, ptr %keyids.addr, align 8, !dbg !3913
  %tail126 = getelementptr inbounds %struct.controlkeylist_t, ptr %78, i32 0, i32 1, !dbg !3913
  %79 = load ptr, ptr %tail126, align 8, !dbg !3913
  %80 = load ptr, ptr %keyid, align 8, !dbg !3913
  %link127 = getelementptr inbounds %struct.controlkey, ptr %80, i32 0, i32 3, !dbg !3913
  %prev128 = getelementptr inbounds %struct.anon.11, ptr %link127, i32 0, i32 0, !dbg !3913
  store ptr %79, ptr %prev128, align 8, !dbg !3913
  %81 = load ptr, ptr %keyid, align 8, !dbg !3913
  %link129 = getelementptr inbounds %struct.controlkey, ptr %81, i32 0, i32 3, !dbg !3913
  %next130 = getelementptr inbounds %struct.anon.11, ptr %link129, i32 0, i32 1, !dbg !3913
  store ptr null, ptr %next130, align 8, !dbg !3913
  %82 = load ptr, ptr %keyid, align 8, !dbg !3913
  %83 = load ptr, ptr %keyids.addr, align 8, !dbg !3913
  %tail131 = getelementptr inbounds %struct.controlkeylist_t, ptr %83, i32 0, i32 1, !dbg !3913
  store ptr %82, ptr %tail131, align 8, !dbg !3913
  br label %do.cond132, !dbg !3913

do.cond132:                                       ; preds = %if.end125
  br label %do.end133, !dbg !3913

do.end133:                                        ; preds = %do.cond132
  br label %do.cond134, !dbg !3908

do.cond134:                                       ; preds = %do.end133
  br label %do.end135, !dbg !3908

do.end135:                                        ; preds = %do.cond134
  store ptr null, ptr %keyid, align 8, !dbg !3914
  store i32 0, ptr %result, align 4, !dbg !3915
  br label %cleanup, !dbg !3916

cleanup:                                          ; preds = %do.end135, %if.then106, %if.then84, %if.then64, %if.then50, %if.then42, %if.then23, %if.then14, %if.then7, %if.then2
  tail call void @llvm.dbg.label(metadata !3726), !dbg !3917
  %84 = load ptr, ptr %keyid, align 8, !dbg !3918
  %cmp136 = icmp ne ptr %84, null, !dbg !3920
  br i1 %cmp136, label %if.then138, label %if.end139, !dbg !3921

if.then138:                                       ; preds = %cleanup
  %85 = load ptr, ptr %keyid, align 8, !dbg !3922
  %86 = load ptr, ptr %mctx.addr, align 8, !dbg !3923
  call void @free_controlkey(ptr noundef %85, ptr noundef %86), !dbg !3924
  br label %if.end139, !dbg !3924

if.end139:                                        ; preds = %if.then138, %cleanup
  %87 = load ptr, ptr %config, align 8, !dbg !3925
  %cmp140 = icmp ne ptr %87, null, !dbg !3927
  br i1 %cmp140, label %if.then142, label %if.end143, !dbg !3928

if.then142:                                       ; preds = %if.end139
  %88 = load ptr, ptr %pctx, align 8, !dbg !3929
  call void @cfg_obj_destroy(ptr noundef %88, ptr noundef %config), !dbg !3930
  br label %if.end143, !dbg !3930

if.end143:                                        ; preds = %if.then142, %if.end139
  %89 = load ptr, ptr %pctx, align 8, !dbg !3931
  %cmp144 = icmp ne ptr %89, null, !dbg !3933
  br i1 %cmp144, label %if.then146, label %if.end147, !dbg !3934

if.then146:                                       ; preds = %if.end143
  call void @cfg_parser_destroy(ptr noundef %pctx), !dbg !3935
  br label %if.end147, !dbg !3935

if.end147:                                        ; preds = %if.then146, %if.end143
  %90 = load i32, ptr %result, align 4, !dbg !3936
  store i32 %90, ptr %retval, align 4, !dbg !3937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148, !dbg !3937

cleanup148:                                       ; preds = %if.end147, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #9, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 4, ptr %algtype) #9, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 1024, ptr %secret) #9, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 8, ptr %keyid) #9, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 8, ptr %secretstr) #9, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 8, ptr %algstr) #9, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 8, ptr %secretobj) #9, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 8, ptr %algobj) #9, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #9, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 8, ptr %config) #9, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 8, ptr %pctx) #9, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !3938
  %91 = load i32, ptr %retval, align 4, !dbg !3938
  ret i32 %91, !dbg !3938
}

; Function Attrs: null_pointer_is_valid
declare !dbg !3939 void @cfg_obj_log(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3942 i32 @cfg_acl_fromconfig(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3945 i32 @dns_acl_any(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3948 zeroext i1 @cfg_obj_isvoid(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3951 zeroext i1 @cfg_obj_asboolean(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3952 void @dns_acl_attach(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3955 i32 @cfg_obj_asuint32(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3958 i32 @isc_socket_permunix(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !3961 ptr @isc__mem_strdup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @cfgkeylist_find(ptr noundef %keylist, ptr noundef %keyname, ptr noundef %objp) #0 !dbg !3962 {
entry:
  %retval = alloca i32, align 4
  %keylist.addr = alloca ptr, align 8
  %keyname.addr = alloca ptr, align 8
  %objp.addr = alloca ptr, align 8
  %element = alloca ptr, align 8
  %str = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %keylist, ptr %keylist.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %keylist.addr, metadata !3964, metadata !DIExpression()), !dbg !3970
  store ptr %keyname, ptr %keyname.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %keyname.addr, metadata !3965, metadata !DIExpression()), !dbg !3971
  store ptr %objp, ptr %objp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %objp.addr, metadata !3966, metadata !DIExpression()), !dbg !3972
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #9, !dbg !3973
  tail call void @llvm.dbg.declare(metadata ptr %element, metadata !3967, metadata !DIExpression()), !dbg !3974
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #9, !dbg !3975
  tail call void @llvm.dbg.declare(metadata ptr %str, metadata !3968, metadata !DIExpression()), !dbg !3976
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #9, !dbg !3977
  tail call void @llvm.dbg.declare(metadata ptr %obj, metadata !3969, metadata !DIExpression()), !dbg !3978
  %0 = load ptr, ptr %keylist.addr, align 8, !dbg !3979
  %call = call ptr @cfg_list_first(ptr noundef %0), !dbg !3981
  store ptr %call, ptr %element, align 8, !dbg !3982
  br label %for.cond, !dbg !3983

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %element, align 8, !dbg !3984
  %cmp = icmp ne ptr %1, null, !dbg !3986
  br i1 %cmp, label %for.body, label %for.end, !dbg !3987

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %element, align 8, !dbg !3988
  %call1 = call ptr @cfg_listelt_value(ptr noundef %2), !dbg !3990
  store ptr %call1, ptr %obj, align 8, !dbg !3991
  %3 = load ptr, ptr %obj, align 8, !dbg !3992
  %call2 = call ptr @cfg_map_getname(ptr noundef %3), !dbg !3993
  %call3 = call ptr @cfg_obj_asstring(ptr noundef %call2), !dbg !3994
  store ptr %call3, ptr %str, align 8, !dbg !3995
  %4 = load ptr, ptr %str, align 8, !dbg !3996
  %5 = load ptr, ptr %keyname.addr, align 8, !dbg !3998
  %call4 = call i32 @strcasecmp(ptr noundef %4, ptr noundef %5) #11, !dbg !3999
  %cmp5 = icmp eq i32 %call4, 0, !dbg !4000
  br i1 %cmp5, label %if.then, label %if.end, !dbg !4001

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !4002

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4003

for.inc:                                          ; preds = %if.end
  %6 = load ptr, ptr %element, align 8, !dbg !4004
  %call6 = call ptr @cfg_list_next(ptr noundef %6), !dbg !4005
  store ptr %call6, ptr %element, align 8, !dbg !4006
  br label %for.cond, !dbg !4007, !llvm.loop !4008

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load ptr, ptr %element, align 8, !dbg !4010
  %cmp7 = icmp eq ptr %7, null, !dbg !4012
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !4013

if.then8:                                         ; preds = %for.end
  store i32 23, ptr %retval, align 4, !dbg !4014
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4014

if.end9:                                          ; preds = %for.end
  %8 = load ptr, ptr %element, align 8, !dbg !4015
  %call10 = call ptr @cfg_listelt_value(ptr noundef %8), !dbg !4016
  store ptr %call10, ptr %obj, align 8, !dbg !4017
  %9 = load ptr, ptr %obj, align 8, !dbg !4018
  %10 = load ptr, ptr %objp.addr, align 8, !dbg !4019
  store ptr %9, ptr %10, align 8, !dbg !4020
  store i32 0, ptr %retval, align 4, !dbg !4021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4021

cleanup:                                          ; preds = %if.end9, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #9, !dbg !4022
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #9, !dbg !4022
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #9, !dbg !4022
  %11 = load i32, ptr %retval, align 4, !dbg !4022
  ret i32 %11, !dbg !4022
}

; Function Attrs: null_pointer_is_valid
declare !dbg !4023 i32 @named_config_getkeyalgorithm2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4029 i32 @isc_base64_decodestring(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !4033 ptr @cfg_map_getname(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !4036 i32 @strcasecmp(ptr noundef, ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare !dbg !4040 zeroext i1 @isc_file_exists(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4044 i32 @cfg_parser_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4048 i32 @cfg_parse_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4056 i32 @bind9_check_key(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4060 void @cfg_obj_destroy(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4063 void @cfg_parser_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4066 void @isc_mem_attach(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4069 i32 @isc_sockaddr_pf(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4072 i32 @isc_net_probeunix() #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4073 i32 @isc_socket_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4082 void @isc_socket_setname(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4085 void @isc_socket_ipv6only(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4088 i32 @isc_socket_bind(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @control_listen(ptr noundef %listener) #0 !dbg !4092 {
entry:
  %listener.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %listener, ptr %listener.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %listener.addr, metadata !4096, metadata !DIExpression()), !dbg !4098
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !4099
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !4097, metadata !DIExpression()), !dbg !4100
  %0 = load ptr, ptr %listener.addr, align 8, !dbg !4101
  %sock = getelementptr inbounds %struct.controllistener, ptr %0, i32 0, i32 4, !dbg !4102
  %1 = load ptr, ptr %sock, align 8, !dbg !4102
  %call = call i32 @isc_socket_listen(ptr noundef %1, i32 noundef 0), !dbg !4103
  store i32 %call, ptr %result, align 4, !dbg !4104
  %2 = load i32, ptr %result, align 4, !dbg !4105
  %cmp = icmp ne i32 %2, 0, !dbg !4107
  br i1 %cmp, label %if.then, label %if.end, !dbg !4108

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %result, align 4, !dbg !4109
  %call1 = call ptr @isc_result_totext(i32 noundef %3), !dbg !4110
  call void (ptr, i32, ptr, ...) @isc_error_unexpected(ptr noundef @.str.4, i32 noundef 262, ptr noundef @.str.61, ptr noundef %call1), !dbg !4111
  br label %if.end, !dbg !4111

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %result, align 4, !dbg !4112
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !4113
  ret i32 %4, !dbg !4114
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @control_accept(ptr noundef %listener) #0 !dbg !4115 {
entry:
  %listener.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %listener, ptr %listener.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %listener.addr, metadata !4117, metadata !DIExpression()), !dbg !4119
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !4120
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !4118, metadata !DIExpression()), !dbg !4121
  %0 = load ptr, ptr %listener.addr, align 8, !dbg !4122
  %sock = getelementptr inbounds %struct.controllistener, ptr %0, i32 0, i32 4, !dbg !4123
  %1 = load ptr, ptr %sock, align 8, !dbg !4123
  %2 = load ptr, ptr %listener.addr, align 8, !dbg !4124
  %task = getelementptr inbounds %struct.controllistener, ptr %2, i32 0, i32 2, !dbg !4125
  %3 = load ptr, ptr %task, align 8, !dbg !4125
  %4 = load ptr, ptr %listener.addr, align 8, !dbg !4126
  %call = call i32 @isc_socket_accept(ptr noundef %1, ptr noundef %3, ptr noundef @control_newconn, ptr noundef %4), !dbg !4127
  store i32 %call, ptr %result, align 4, !dbg !4128
  %5 = load i32, ptr %result, align 4, !dbg !4129
  %cmp = icmp ne i32 %5, 0, !dbg !4131
  br i1 %cmp, label %if.then, label %if.else, !dbg !4132

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %result, align 4, !dbg !4133
  %call1 = call ptr @isc_result_totext(i32 noundef %6), !dbg !4134
  call void (ptr, i32, ptr, ...) @isc_error_unexpected(ptr noundef @.str.4, i32 noundef 248, ptr noundef @.str.62, ptr noundef %call1), !dbg !4135
  br label %if.end, !dbg !4135

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %listener.addr, align 8, !dbg !4136
  %listening = getelementptr inbounds %struct.controllistener, ptr %7, i32 0, i32 6, !dbg !4137
  store i8 1, ptr %listening, align 8, !dbg !4138
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %result, align 4, !dbg !4139
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !4140
  ret i32 %8, !dbg !4141
}

; Function Attrs: null_pointer_is_valid
declare !dbg !4142 i32 @isc_socket_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4145 void @isc_error_unexpected(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4149 i32 @isc_socket_accept(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @control_newconn(ptr noundef %task, ptr noundef %event) #0 !dbg !4152 {
entry:
  %task.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  %nevent = alloca ptr, align 8
  %listener = alloca ptr, align 8
  %sock = alloca ptr, align 8
  %peeraddr = alloca %struct.isc_sockaddr, align 8
  %result = alloca i32, align 4
  %socktext = alloca [63 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %socktext14 = alloca [63 x i8], align 16
  store ptr %task, ptr %task.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4154, metadata !DIExpression()), !dbg !4169
  store ptr %event, ptr %event.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4155, metadata !DIExpression()), !dbg !4170
  call void @llvm.lifetime.start.p0(i64 8, ptr %nevent) #9, !dbg !4171
  tail call void @llvm.dbg.declare(metadata ptr %nevent, metadata !4156, metadata !DIExpression()), !dbg !4172
  %0 = load ptr, ptr %event.addr, align 8, !dbg !4173
  store ptr %0, ptr %nevent, align 8, !dbg !4172
  call void @llvm.lifetime.start.p0(i64 8, ptr %listener) #9, !dbg !4174
  tail call void @llvm.dbg.declare(metadata ptr %listener, metadata !4157, metadata !DIExpression()), !dbg !4175
  %1 = load ptr, ptr %event.addr, align 8, !dbg !4176
  %ev_arg = getelementptr inbounds %struct.isc_event, ptr %1, i32 0, i32 5, !dbg !4177
  %2 = load ptr, ptr %ev_arg, align 8, !dbg !4177
  store ptr %2, ptr %listener, align 8, !dbg !4175
  call void @llvm.lifetime.start.p0(i64 8, ptr %sock) #9, !dbg !4178
  tail call void @llvm.dbg.declare(metadata ptr %sock, metadata !4158, metadata !DIExpression()), !dbg !4179
  call void @llvm.lifetime.start.p0(i64 152, ptr %peeraddr) #9, !dbg !4180
  tail call void @llvm.dbg.declare(metadata ptr %peeraddr, metadata !4159, metadata !DIExpression()), !dbg !4181
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !4182
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !4160, metadata !DIExpression()), !dbg !4183
  %3 = load ptr, ptr %task.addr, align 8, !dbg !4184
  %4 = load ptr, ptr %listener, align 8, !dbg !4185
  %listening = getelementptr inbounds %struct.controllistener, ptr %4, i32 0, i32 6, !dbg !4186
  store i8 0, ptr %listening, align 8, !dbg !4187
  %5 = load ptr, ptr %nevent, align 8, !dbg !4188
  %result1 = getelementptr inbounds %struct.isc_socket_newconnev, ptr %5, i32 0, i32 12, !dbg !4190
  %6 = load i32, ptr %result1, align 8, !dbg !4190
  %cmp = icmp ne i32 %6, 0, !dbg !4191
  br i1 %cmp, label %if.then, label %if.end5, !dbg !4192

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %nevent, align 8, !dbg !4193
  %result2 = getelementptr inbounds %struct.isc_socket_newconnev, ptr %7, i32 0, i32 12, !dbg !4196
  %8 = load i32, ptr %result2, align 8, !dbg !4196
  %cmp3 = icmp eq i32 %8, 20, !dbg !4197
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !4198

if.then4:                                         ; preds = %if.then
  %9 = load ptr, ptr %listener, align 8, !dbg !4199
  call void @shutdown_listener(ptr noundef %9), !dbg !4201
  br label %cleanup, !dbg !4202

if.end:                                           ; preds = %if.then
  br label %restart, !dbg !4203

if.end5:                                          ; preds = %entry
  %10 = load ptr, ptr %nevent, align 8, !dbg !4204
  %newsocket = getelementptr inbounds %struct.isc_socket_newconnev, ptr %10, i32 0, i32 11, !dbg !4205
  %11 = load ptr, ptr %newsocket, align 8, !dbg !4205
  store ptr %11, ptr %sock, align 8, !dbg !4206
  %12 = load ptr, ptr %sock, align 8, !dbg !4207
  call void @isc_socket_setname(ptr noundef %12, ptr noundef @.str.58, ptr noundef null), !dbg !4208
  %13 = load ptr, ptr %sock, align 8, !dbg !4209
  %call = call i32 @isc_socket_getpeername(ptr noundef %13, ptr noundef %peeraddr), !dbg !4210
  %14 = load ptr, ptr %listener, align 8, !dbg !4211
  %type = getelementptr inbounds %struct.controllistener, ptr %14, i32 0, i32 10, !dbg !4212
  %15 = load i32, ptr %type, align 8, !dbg !4212
  %cmp6 = icmp eq i32 %15, 2, !dbg !4213
  br i1 %cmp6, label %land.lhs.true, label %if.end10, !dbg !4214

land.lhs.true:                                    ; preds = %if.end5
  %16 = load ptr, ptr %listener, align 8, !dbg !4215
  %acl = getelementptr inbounds %struct.controllistener, ptr %16, i32 0, i32 5, !dbg !4216
  %17 = load ptr, ptr %acl, align 8, !dbg !4216
  %call7 = call zeroext i1 @address_ok(ptr noundef %peeraddr, ptr noundef %17), !dbg !4217
  br i1 %call7, label %if.end10, label %if.then8, !dbg !4218

if.then8:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 63, ptr %socktext) #9, !dbg !4219
  tail call void @llvm.dbg.declare(metadata ptr %socktext, metadata !4161, metadata !DIExpression()), !dbg !4220
  %arraydecay = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !4221
  call void @isc_sockaddr_format(ptr noundef %peeraddr, ptr noundef %arraydecay, i32 noundef 63), !dbg !4222
  %18 = load ptr, ptr @named_g_lctx, align 8, !dbg !4223
  %19 = load ptr, ptr @named_g_modules, align 8, !dbg !4224
  %arrayidx = getelementptr inbounds %struct.isc_logmodule, ptr %19, i64 2, !dbg !4224
  %arraydecay9 = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !4225
  call void (ptr, ptr, ptr, i32, ptr, ...) @isc_log_write(ptr noundef %18, ptr noundef getelementptr inbounds ([0 x %struct.isc_logcategory], ptr @isc_categories, i64 0, i64 1), ptr noundef %arrayidx, i32 noundef -3, ptr noundef @.str.63, ptr noundef %arraydecay9), !dbg !4226
  call void @isc_socket_detach(ptr noundef %sock), !dbg !4227
  store i32 3, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 63, ptr %socktext) #9, !dbg !4228
  br label %restart

if.end10:                                         ; preds = %land.lhs.true, %if.end5
  %20 = load ptr, ptr %listener, align 8, !dbg !4229
  %21 = load ptr, ptr %sock, align 8, !dbg !4230
  %call11 = call i32 @newconnection(ptr noundef %20, ptr noundef %21), !dbg !4231
  store i32 %call11, ptr %result, align 4, !dbg !4232
  %22 = load i32, ptr %result, align 4, !dbg !4233
  %cmp12 = icmp ne i32 %22, 0, !dbg !4234
  br i1 %cmp12, label %if.then13, label %if.end19, !dbg !4235

if.then13:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 63, ptr %socktext14) #9, !dbg !4236
  tail call void @llvm.dbg.declare(metadata ptr %socktext14, metadata !4164, metadata !DIExpression()), !dbg !4237
  %arraydecay15 = getelementptr inbounds [63 x i8], ptr %socktext14, i64 0, i64 0, !dbg !4238
  call void @isc_sockaddr_format(ptr noundef %peeraddr, ptr noundef %arraydecay15, i32 noundef 63), !dbg !4239
  %23 = load ptr, ptr @named_g_lctx, align 8, !dbg !4240
  %24 = load ptr, ptr @named_g_modules, align 8, !dbg !4241
  %arrayidx16 = getelementptr inbounds %struct.isc_logmodule, ptr %24, i64 2, !dbg !4241
  %arraydecay17 = getelementptr inbounds [63 x i8], ptr %socktext14, i64 0, i64 0, !dbg !4242
  %25 = load i32, ptr %result, align 4, !dbg !4243
  %call18 = call ptr @isc_result_totext(i32 noundef %25), !dbg !4244
  call void (ptr, ptr, ptr, i32, ptr, ...) @isc_log_write(ptr noundef %23, ptr noundef getelementptr inbounds ([0 x %struct.isc_logcategory], ptr @isc_categories, i64 0, i64 1), ptr noundef %arrayidx16, i32 noundef -3, ptr noundef @.str.64, ptr noundef %arraydecay17, ptr noundef %call18), !dbg !4245
  call void @isc_socket_detach(ptr noundef %sock), !dbg !4246
  store i32 3, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 63, ptr %socktext14) #9, !dbg !4247
  br label %restart

if.end19:                                         ; preds = %if.end10
  br label %restart, !dbg !4248

restart:                                          ; preds = %if.then8, %if.then13, %if.end19, %if.end
  tail call void @llvm.dbg.label(metadata !4167), !dbg !4249
  %26 = load ptr, ptr %listener, align 8, !dbg !4250
  call void @control_next(ptr noundef %26), !dbg !4251
  br label %cleanup, !dbg !4251

cleanup:                                          ; preds = %restart, %if.then4
  tail call void @llvm.dbg.label(metadata !4168), !dbg !4252
  call void @isc_event_free(ptr noundef %event.addr), !dbg !4253
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !4254
  call void @llvm.lifetime.end.p0(i64 152, ptr %peeraddr) #9, !dbg !4254
  call void @llvm.lifetime.end.p0(i64 8, ptr %sock) #9, !dbg !4254
  call void @llvm.lifetime.end.p0(i64 8, ptr %listener) #9, !dbg !4254
  call void @llvm.lifetime.end.p0(i64 8, ptr %nevent) #9, !dbg !4254
  ret void, !dbg !4254
}

; Function Attrs: null_pointer_is_valid
declare !dbg !4255 i32 @isc_socket_getpeername(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @address_ok(ptr noundef %sockaddr, ptr noundef %acl) #0 !dbg !4258 {
entry:
  %sockaddr.addr = alloca ptr, align 8
  %acl.addr = alloca ptr, align 8
  %env = alloca ptr, align 8
  %netaddr = alloca %struct.isc_netaddr, align 4
  %result = alloca i32, align 4
  %match = alloca i32, align 4
  store ptr %sockaddr, ptr %sockaddr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %sockaddr.addr, metadata !4262, metadata !DIExpression()), !dbg !4268
  store ptr %acl, ptr %acl.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %acl.addr, metadata !4263, metadata !DIExpression()), !dbg !4269
  call void @llvm.lifetime.start.p0(i64 8, ptr %env) #9, !dbg !4270
  tail call void @llvm.dbg.declare(metadata ptr %env, metadata !4264, metadata !DIExpression()), !dbg !4271
  %0 = load ptr, ptr @named_g_server, align 8, !dbg !4272
  %interfacemgr = getelementptr inbounds %struct.named_server, ptr %0, i32 0, i32 16, !dbg !4273
  %1 = load ptr, ptr %interfacemgr, align 8, !dbg !4273
  %call = call ptr @ns_interfacemgr_getaclenv(ptr noundef %1), !dbg !4274
  store ptr %call, ptr %env, align 8, !dbg !4271
  call void @llvm.lifetime.start.p0(i64 116, ptr %netaddr) #9, !dbg !4275
  tail call void @llvm.dbg.declare(metadata ptr %netaddr, metadata !4265, metadata !DIExpression()), !dbg !4276
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !4277
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !4266, metadata !DIExpression()), !dbg !4278
  call void @llvm.lifetime.start.p0(i64 4, ptr %match) #9, !dbg !4279
  tail call void @llvm.dbg.declare(metadata ptr %match, metadata !4267, metadata !DIExpression()), !dbg !4280
  %2 = load ptr, ptr %sockaddr.addr, align 8, !dbg !4281
  call void @isc_netaddr_fromsockaddr(ptr noundef %netaddr, ptr noundef %2), !dbg !4282
  %3 = load ptr, ptr %acl.addr, align 8, !dbg !4283
  %4 = load ptr, ptr %env, align 8, !dbg !4284
  %call1 = call i32 @dns_acl_match(ptr noundef %netaddr, ptr noundef null, ptr noundef %3, ptr noundef %4, ptr noundef %match, ptr noundef null), !dbg !4285
  store i32 %call1, ptr %result, align 4, !dbg !4286
  %5 = load i32, ptr %result, align 4, !dbg !4287
  %cmp = icmp eq i32 %5, 0, !dbg !4288
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4289

land.rhs:                                         ; preds = %entry
  %6 = load i32, ptr %match, align 4, !dbg !4290
  %cmp2 = icmp sgt i32 %6, 0, !dbg !4291
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ], !dbg !4292
  call void @llvm.lifetime.end.p0(i64 4, ptr %match) #9, !dbg !4293
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !4293
  call void @llvm.lifetime.end.p0(i64 116, ptr %netaddr) #9, !dbg !4293
  call void @llvm.lifetime.end.p0(i64 8, ptr %env) #9, !dbg !4293
  ret i1 %7, !dbg !4294
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @newconnection(ptr noundef %listener, ptr noundef %sock) #0 !dbg !4295 {
entry:
  %retval = alloca i32, align 4
  %listener.addr = alloca ptr, align 8
  %sock.addr = alloca ptr, align 8
  %conn = alloca ptr, align 8
  %interval = alloca %struct.isc_interval, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %listener, ptr %listener.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %listener.addr, metadata !4299, metadata !DIExpression()), !dbg !4310
  store ptr %sock, ptr %sock.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %sock.addr, metadata !4300, metadata !DIExpression()), !dbg !4311
  call void @llvm.lifetime.start.p0(i64 8, ptr %conn) #9, !dbg !4312
  tail call void @llvm.dbg.declare(metadata ptr %conn, metadata !4301, metadata !DIExpression()), !dbg !4313
  call void @llvm.lifetime.start.p0(i64 8, ptr %interval) #9, !dbg !4314
  tail call void @llvm.dbg.declare(metadata ptr %interval, metadata !4302, metadata !DIExpression()), !dbg !4315
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !4316
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !4308, metadata !DIExpression()), !dbg !4317
  %0 = load ptr, ptr %listener.addr, align 8, !dbg !4318
  %mctx = getelementptr inbounds %struct.controllistener, ptr %0, i32 0, i32 1, !dbg !4318
  %1 = load ptr, ptr %mctx, align 8, !dbg !4318
  %call = call ptr @isc__mem_get(ptr noundef %1, i64 noundef 448, ptr noundef @.str.4, i32 noundef 565), !dbg !4318
  store ptr %call, ptr %conn, align 8, !dbg !4319
  %2 = load ptr, ptr %conn, align 8, !dbg !4320
  %cmp = icmp eq ptr %2, null, !dbg !4322
  br i1 %cmp, label %if.then, label %if.end, !dbg !4323

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !4324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !4324

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %sock.addr, align 8, !dbg !4325
  %4 = load ptr, ptr %conn, align 8, !dbg !4326
  %sock1 = getelementptr inbounds %struct.controlconnection, ptr %4, i32 0, i32 0, !dbg !4327
  store ptr %3, ptr %sock1, align 8, !dbg !4328
  %5 = load ptr, ptr %listener.addr, align 8, !dbg !4329
  %mctx2 = getelementptr inbounds %struct.controllistener, ptr %5, i32 0, i32 1, !dbg !4330
  %6 = load ptr, ptr %mctx2, align 8, !dbg !4330
  %7 = load ptr, ptr %sock.addr, align 8, !dbg !4331
  %8 = load ptr, ptr %conn, align 8, !dbg !4332
  %ccmsg = getelementptr inbounds %struct.controlconnection, ptr %8, i32 0, i32 1, !dbg !4333
  call void @isccc_ccmsg_init(ptr noundef %6, ptr noundef %7, ptr noundef %ccmsg), !dbg !4334
  %9 = load ptr, ptr %conn, align 8, !dbg !4335
  %ccmsg3 = getelementptr inbounds %struct.controlconnection, ptr %9, i32 0, i32 1, !dbg !4336
  call void @isccc_ccmsg_setmaxsize(ptr noundef %ccmsg3, i32 noundef 32768), !dbg !4337
  %10 = load ptr, ptr %conn, align 8, !dbg !4338
  %ccmsg_valid = getelementptr inbounds %struct.controlconnection, ptr %10, i32 0, i32 2, !dbg !4339
  store i8 1, ptr %ccmsg_valid, align 8, !dbg !4340
  %11 = load ptr, ptr %conn, align 8, !dbg !4341
  %sending = getelementptr inbounds %struct.controlconnection, ptr %11, i32 0, i32 3, !dbg !4342
  store i8 0, ptr %sending, align 1, !dbg !4343
  %12 = load ptr, ptr %conn, align 8, !dbg !4344
  %buffer = getelementptr inbounds %struct.controlconnection, ptr %12, i32 0, i32 5, !dbg !4345
  store ptr null, ptr %buffer, align 8, !dbg !4346
  %13 = load ptr, ptr %conn, align 8, !dbg !4347
  %timer = getelementptr inbounds %struct.controlconnection, ptr %13, i32 0, i32 4, !dbg !4348
  store ptr null, ptr %timer, align 8, !dbg !4349
  call void @isc_interval_set(ptr noundef %interval, i32 noundef 60, i32 noundef 0), !dbg !4350
  %14 = load ptr, ptr @named_g_timermgr, align 8, !dbg !4351
  %15 = load ptr, ptr %listener.addr, align 8, !dbg !4352
  %task = getelementptr inbounds %struct.controllistener, ptr %15, i32 0, i32 2, !dbg !4353
  %16 = load ptr, ptr %task, align 8, !dbg !4353
  %17 = load ptr, ptr %conn, align 8, !dbg !4354
  %18 = load ptr, ptr %conn, align 8, !dbg !4355
  %timer4 = getelementptr inbounds %struct.controlconnection, ptr %18, i32 0, i32 4, !dbg !4356
  %call5 = call i32 @isc_timer_create(ptr noundef %14, i32 noundef 1, ptr noundef null, ptr noundef %interval, ptr noundef %16, ptr noundef @control_timeout, ptr noundef %17, ptr noundef %timer4), !dbg !4357
  store i32 %call5, ptr %result, align 4, !dbg !4358
  %19 = load i32, ptr %result, align 4, !dbg !4359
  %cmp6 = icmp ne i32 %19, 0, !dbg !4361
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !4362

if.then7:                                         ; preds = %if.end
  br label %cleanup, !dbg !4363

if.end8:                                          ; preds = %if.end
  %20 = load ptr, ptr %listener.addr, align 8, !dbg !4364
  %21 = load ptr, ptr %conn, align 8, !dbg !4365
  %listener9 = getelementptr inbounds %struct.controlconnection, ptr %21, i32 0, i32 6, !dbg !4366
  store ptr %20, ptr %listener9, align 8, !dbg !4367
  %22 = load ptr, ptr %conn, align 8, !dbg !4368
  %nonce = getelementptr inbounds %struct.controlconnection, ptr %22, i32 0, i32 7, !dbg !4369
  store i32 0, ptr %nonce, align 8, !dbg !4370
  br label %do.body, !dbg !4371

do.body:                                          ; preds = %if.end8
  %23 = load ptr, ptr %conn, align 8, !dbg !4372
  %link = getelementptr inbounds %struct.controlconnection, ptr %23, i32 0, i32 8, !dbg !4372
  %prev = getelementptr inbounds %struct.anon.10, ptr %link, i32 0, i32 0, !dbg !4372
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !4372
  %24 = load ptr, ptr %conn, align 8, !dbg !4372
  %link10 = getelementptr inbounds %struct.controlconnection, ptr %24, i32 0, i32 8, !dbg !4372
  %next = getelementptr inbounds %struct.anon.10, ptr %link10, i32 0, i32 1, !dbg !4372
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !4372
  br label %do.cond, !dbg !4372

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4372

do.end:                                           ; preds = %do.cond
  %25 = load ptr, ptr %conn, align 8, !dbg !4374
  %ccmsg11 = getelementptr inbounds %struct.controlconnection, ptr %25, i32 0, i32 1, !dbg !4375
  %26 = load ptr, ptr %listener.addr, align 8, !dbg !4376
  %task12 = getelementptr inbounds %struct.controllistener, ptr %26, i32 0, i32 2, !dbg !4377
  %27 = load ptr, ptr %task12, align 8, !dbg !4377
  %28 = load ptr, ptr %conn, align 8, !dbg !4378
  %call13 = call i32 @isccc_ccmsg_readmessage(ptr noundef %ccmsg11, ptr noundef %27, ptr noundef @control_recvmessage, ptr noundef %28), !dbg !4379
  store i32 %call13, ptr %result, align 4, !dbg !4380
  %29 = load i32, ptr %result, align 4, !dbg !4381
  %cmp14 = icmp ne i32 %29, 0, !dbg !4383
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !4384

if.then15:                                        ; preds = %do.end
  br label %cleanup, !dbg !4385

if.end16:                                         ; preds = %do.end
  br label %do.body17, !dbg !4386

do.body17:                                        ; preds = %if.end16
  br label %do.body18, !dbg !4387

do.body18:                                        ; preds = %do.body17
  %30 = load ptr, ptr %listener.addr, align 8, !dbg !4389
  %connections = getelementptr inbounds %struct.controllistener, ptr %30, i32 0, i32 9, !dbg !4389
  %tail = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections, i32 0, i32 1, !dbg !4389
  %31 = load ptr, ptr %tail, align 8, !dbg !4389
  %cmp19 = icmp ne ptr %31, null, !dbg !4389
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !4392

if.then20:                                        ; preds = %do.body18
  %32 = load ptr, ptr %conn, align 8, !dbg !4389
  %33 = load ptr, ptr %listener.addr, align 8, !dbg !4389
  %connections21 = getelementptr inbounds %struct.controllistener, ptr %33, i32 0, i32 9, !dbg !4389
  %tail22 = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections21, i32 0, i32 1, !dbg !4389
  %34 = load ptr, ptr %tail22, align 8, !dbg !4389
  %link23 = getelementptr inbounds %struct.controlconnection, ptr %34, i32 0, i32 8, !dbg !4389
  %next24 = getelementptr inbounds %struct.anon.10, ptr %link23, i32 0, i32 1, !dbg !4389
  store ptr %32, ptr %next24, align 8, !dbg !4389
  br label %if.end26, !dbg !4389

if.else:                                          ; preds = %do.body18
  %35 = load ptr, ptr %conn, align 8, !dbg !4389
  %36 = load ptr, ptr %listener.addr, align 8, !dbg !4389
  %connections25 = getelementptr inbounds %struct.controllistener, ptr %36, i32 0, i32 9, !dbg !4389
  %head = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections25, i32 0, i32 0, !dbg !4389
  store ptr %35, ptr %head, align 8, !dbg !4389
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then20
  %37 = load ptr, ptr %listener.addr, align 8, !dbg !4392
  %connections27 = getelementptr inbounds %struct.controllistener, ptr %37, i32 0, i32 9, !dbg !4392
  %tail28 = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections27, i32 0, i32 1, !dbg !4392
  %38 = load ptr, ptr %tail28, align 8, !dbg !4392
  %39 = load ptr, ptr %conn, align 8, !dbg !4392
  %link29 = getelementptr inbounds %struct.controlconnection, ptr %39, i32 0, i32 8, !dbg !4392
  %prev30 = getelementptr inbounds %struct.anon.10, ptr %link29, i32 0, i32 0, !dbg !4392
  store ptr %38, ptr %prev30, align 8, !dbg !4392
  %40 = load ptr, ptr %conn, align 8, !dbg !4392
  %link31 = getelementptr inbounds %struct.controlconnection, ptr %40, i32 0, i32 8, !dbg !4392
  %next32 = getelementptr inbounds %struct.anon.10, ptr %link31, i32 0, i32 1, !dbg !4392
  store ptr null, ptr %next32, align 8, !dbg !4392
  %41 = load ptr, ptr %conn, align 8, !dbg !4392
  %42 = load ptr, ptr %listener.addr, align 8, !dbg !4392
  %connections33 = getelementptr inbounds %struct.controllistener, ptr %42, i32 0, i32 9, !dbg !4392
  %tail34 = getelementptr inbounds %struct.controlconnectionlist_t, ptr %connections33, i32 0, i32 1, !dbg !4392
  store ptr %41, ptr %tail34, align 8, !dbg !4392
  br label %do.cond35, !dbg !4392

do.cond35:                                        ; preds = %if.end26
  br label %do.end36, !dbg !4392

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !4387

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !4387

do.end38:                                         ; preds = %do.cond37
  store i32 0, ptr %retval, align 4, !dbg !4393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !4393

cleanup:                                          ; preds = %if.then15, %if.then7
  tail call void @llvm.dbg.label(metadata !4309), !dbg !4394
  %43 = load ptr, ptr %conn, align 8, !dbg !4395
  %buffer39 = getelementptr inbounds %struct.controlconnection, ptr %43, i32 0, i32 5, !dbg !4397
  %44 = load ptr, ptr %buffer39, align 8, !dbg !4397
  %cmp40 = icmp ne ptr %44, null, !dbg !4398
  br i1 %cmp40, label %if.then41, label %if.end43, !dbg !4399

if.then41:                                        ; preds = %cleanup
  %45 = load ptr, ptr %conn, align 8, !dbg !4400
  %buffer42 = getelementptr inbounds %struct.controlconnection, ptr %45, i32 0, i32 5, !dbg !4401
  call void @isc_buffer_free(ptr noundef %buffer42), !dbg !4402
  br label %if.end43, !dbg !4402

if.end43:                                         ; preds = %if.then41, %cleanup
  %46 = load ptr, ptr %conn, align 8, !dbg !4403
  %ccmsg44 = getelementptr inbounds %struct.controlconnection, ptr %46, i32 0, i32 1, !dbg !4404
  call void @isccc_ccmsg_invalidate(ptr noundef %ccmsg44), !dbg !4405
  %47 = load ptr, ptr %conn, align 8, !dbg !4406
  %timer45 = getelementptr inbounds %struct.controlconnection, ptr %47, i32 0, i32 4, !dbg !4408
  %48 = load ptr, ptr %timer45, align 8, !dbg !4408
  %cmp46 = icmp ne ptr %48, null, !dbg !4409
  br i1 %cmp46, label %if.then47, label %if.end49, !dbg !4410

if.then47:                                        ; preds = %if.end43
  %49 = load ptr, ptr %conn, align 8, !dbg !4411
  %timer48 = getelementptr inbounds %struct.controlconnection, ptr %49, i32 0, i32 4, !dbg !4412
  call void @isc_timer_detach(ptr noundef %timer48), !dbg !4413
  br label %if.end49, !dbg !4413

if.end49:                                         ; preds = %if.then47, %if.end43
  br label %do.body50, !dbg !4414

do.body50:                                        ; preds = %if.end49
  %50 = load ptr, ptr %listener.addr, align 8, !dbg !4415
  %mctx51 = getelementptr inbounds %struct.controllistener, ptr %50, i32 0, i32 1, !dbg !4415
  %51 = load ptr, ptr %mctx51, align 8, !dbg !4415
  %52 = load ptr, ptr %conn, align 8, !dbg !4415
  call void @isc__mem_put(ptr noundef %51, ptr noundef %52, i64 noundef 448, ptr noundef @.str.4, i32 noundef 604), !dbg !4415
  store ptr null, ptr %conn, align 8, !dbg !4415
  br label %do.cond52, !dbg !4415

do.cond52:                                        ; preds = %do.body50
  br label %do.end53, !dbg !4415

do.end53:                                         ; preds = %do.cond52
  %53 = load i32, ptr %result, align 4, !dbg !4417
  store i32 %53, ptr %retval, align 4, !dbg !4418
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !4418

cleanup54:                                        ; preds = %do.end53, %do.end38, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !4419
  call void @llvm.lifetime.end.p0(i64 8, ptr %interval) #9, !dbg !4419
  call void @llvm.lifetime.end.p0(i64 8, ptr %conn) #9, !dbg !4419
  %54 = load i32, ptr %retval, align 4, !dbg !4419
  ret i32 %54, !dbg !4419
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @control_next(ptr noundef %listener) #0 !dbg !4420 {
entry:
  %listener.addr = alloca ptr, align 8
  store ptr %listener, ptr %listener.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %listener.addr, metadata !4422, metadata !DIExpression()), !dbg !4423
  %0 = load ptr, ptr %listener.addr, align 8, !dbg !4424
  %call = call i32 @control_accept(ptr noundef %0), !dbg !4425
  ret void, !dbg !4426
}

; Function Attrs: null_pointer_is_valid
declare !dbg !4427 void @isc_event_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4431 ptr @ns_interfacemgr_getaclenv(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4435 void @isc_netaddr_fromsockaddr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4438 i32 @dns_acl_match(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4447 void @isccc_ccmsg_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4450 void @isccc_ccmsg_setmaxsize(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4453 void @isc_interval_set(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !4457 i32 @isc_timer_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @control_timeout(ptr noundef %task, ptr noundef %event) #0 !dbg !4471 {
entry:
  %task.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  %conn = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4473, metadata !DIExpression()), !dbg !4476
  store ptr %event, ptr %event.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4474, metadata !DIExpression()), !dbg !4477
  call void @llvm.lifetime.start.p0(i64 8, ptr %conn) #9, !dbg !4478
  tail call void @llvm.dbg.declare(metadata ptr %conn, metadata !4475, metadata !DIExpression()), !dbg !4479
  %0 = load ptr, ptr %event.addr, align 8, !dbg !4480
  %ev_arg = getelementptr inbounds %struct.isc_event, ptr %0, i32 0, i32 5, !dbg !4481
  %1 = load ptr, ptr %ev_arg, align 8, !dbg !4481
  store ptr %1, ptr %conn, align 8, !dbg !4479
  %2 = load ptr, ptr %task.addr, align 8, !dbg !4482
  %3 = load ptr, ptr %conn, align 8, !dbg !4483
  %timer = getelementptr inbounds %struct.controlconnection, ptr %3, i32 0, i32 4, !dbg !4484
  call void @isc_timer_detach(ptr noundef %timer), !dbg !4485
  %4 = load ptr, ptr %conn, align 8, !dbg !4486
  call void @maybe_free_connection(ptr noundef %4), !dbg !4487
  call void @isc_event_free(ptr noundef %event.addr), !dbg !4488
  call void @llvm.lifetime.end.p0(i64 8, ptr %conn) #9, !dbg !4489
  ret void, !dbg !4489
}

; Function Attrs: null_pointer_is_valid
declare !dbg !4490 i32 @isccc_ccmsg_readmessage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @control_recvmessage(ptr noundef %task, ptr noundef %event) #0 !dbg !4493 {
entry:
  %task.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  %conn = alloca ptr, align 8
  %listener = alloca ptr, align 8
  %key = alloca ptr, align 8
  %request = alloca ptr, align 8
  %response = alloca ptr, align 8
  %algorithm = alloca i32, align 4
  %secret = alloca %struct.isccc_region, align 8
  %now = alloca i32, align 4
  %b = alloca %struct.isc_buffer, align 8
  %r = alloca %struct.isc_region, align 8
  %text = alloca ptr, align 8
  %result = alloca i32, align 4
  %eresult = alloca i32, align 4
  %_ctrl = alloca ptr, align 8
  %sent = alloca i32, align 4
  %exp = alloca i32, align 4
  %nonce = alloca i32, align 4
  %data = alloca ptr, align 8
  %ccregion = alloca %struct.isccc_region, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %estr = alloca ptr, align 8
  %str = alloca ptr, align 8
  %_cp = alloca ptr, align 8
  %_val2 = alloca i32, align 4
  %_tmp = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4495, metadata !DIExpression()), !dbg !4561
  store ptr %event, ptr %event.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4496, metadata !DIExpression()), !dbg !4562
  call void @llvm.lifetime.start.p0(i64 8, ptr %conn) #9, !dbg !4563
  tail call void @llvm.dbg.declare(metadata ptr %conn, metadata !4497, metadata !DIExpression()), !dbg !4564
  store ptr null, ptr %conn, align 8, !dbg !4564
  call void @llvm.lifetime.start.p0(i64 8, ptr %listener) #9, !dbg !4565
  tail call void @llvm.dbg.declare(metadata ptr %listener, metadata !4498, metadata !DIExpression()), !dbg !4566
  store ptr null, ptr %listener, align 8, !dbg !4566
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #9, !dbg !4567
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !4499, metadata !DIExpression()), !dbg !4568
  store ptr null, ptr %key, align 8, !dbg !4568
  call void @llvm.lifetime.start.p0(i64 8, ptr %request) #9, !dbg !4569
  tail call void @llvm.dbg.declare(metadata ptr %request, metadata !4500, metadata !DIExpression()), !dbg !4570
  store ptr null, ptr %request, align 8, !dbg !4570
  call void @llvm.lifetime.start.p0(i64 8, ptr %response) #9, !dbg !4571
  tail call void @llvm.dbg.declare(metadata ptr %response, metadata !4523, metadata !DIExpression()), !dbg !4572
  store ptr null, ptr %response, align 8, !dbg !4572
  call void @llvm.lifetime.start.p0(i64 4, ptr %algorithm) #9, !dbg !4573
  tail call void @llvm.dbg.declare(metadata ptr %algorithm, metadata !4524, metadata !DIExpression()), !dbg !4574
  call void @llvm.lifetime.start.p0(i64 16, ptr %secret) #9, !dbg !4575
  tail call void @llvm.dbg.declare(metadata ptr %secret, metadata !4525, metadata !DIExpression()), !dbg !4576
  call void @llvm.lifetime.start.p0(i64 4, ptr %now) #9, !dbg !4577
  tail call void @llvm.dbg.declare(metadata ptr %now, metadata !4526, metadata !DIExpression()), !dbg !4578
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #9, !dbg !4579
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !4527, metadata !DIExpression()), !dbg !4580
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #9, !dbg !4581
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !4528, metadata !DIExpression()), !dbg !4582
  call void @llvm.lifetime.start.p0(i64 8, ptr %text) #9, !dbg !4583
  tail call void @llvm.dbg.declare(metadata ptr %text, metadata !4529, metadata !DIExpression()), !dbg !4584
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !4585
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !4530, metadata !DIExpression()), !dbg !4586
  call void @llvm.lifetime.start.p0(i64 4, ptr %eresult) #9, !dbg !4587
  tail call void @llvm.dbg.declare(metadata ptr %eresult, metadata !4531, metadata !DIExpression()), !dbg !4588
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ctrl) #9, !dbg !4589
  tail call void @llvm.dbg.declare(metadata ptr %_ctrl, metadata !4532, metadata !DIExpression()), !dbg !4590
  store ptr null, ptr %_ctrl, align 8, !dbg !4590
  call void @llvm.lifetime.start.p0(i64 4, ptr %sent) #9, !dbg !4591
  tail call void @llvm.dbg.declare(metadata ptr %sent, metadata !4533, metadata !DIExpression()), !dbg !4592
  call void @llvm.lifetime.start.p0(i64 4, ptr %exp) #9, !dbg !4593
  tail call void @llvm.dbg.declare(metadata ptr %exp, metadata !4535, metadata !DIExpression()), !dbg !4594
  call void @llvm.lifetime.start.p0(i64 4, ptr %nonce) #9, !dbg !4595
  tail call void @llvm.dbg.declare(metadata ptr %nonce, metadata !4536, metadata !DIExpression()), !dbg !4596
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #9, !dbg !4597
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !4537, metadata !DIExpression()), !dbg !4598
  store ptr null, ptr %data, align 8, !dbg !4598
  %0 = load ptr, ptr %event.addr, align 8, !dbg !4599
  %ev_type = getelementptr inbounds %struct.isc_event, ptr %0, i32 0, i32 3, !dbg !4599
  %1 = load i32, ptr %ev_type, align 8, !dbg !4599
  %cmp = icmp eq i32 %1, 524288, !dbg !4599
  %lnot = xor i1 %cmp, true, !dbg !4599
  %lnot1 = xor i1 %lnot, true, !dbg !4599
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4599
  %conv = sext i32 %lnot.ext to i64, !dbg !4599
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4599
  %tobool = icmp ne i64 %expval, 0, !dbg !4599
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !4599

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 345, i32 noundef 0, ptr noundef @.str.65) #10, !dbg !4599
  unreachable, !dbg !4599

2:                                                ; No predecessors!
  br label %lor.end, !dbg !4599

lor.end:                                          ; preds = %2, %entry
  %3 = phi i1 [ true, %entry ], [ false, %2 ]
  %lor.ext = zext i1 %3 to i32, !dbg !4599
  %4 = load ptr, ptr %event.addr, align 8, !dbg !4600
  %ev_arg = getelementptr inbounds %struct.isc_event, ptr %4, i32 0, i32 5, !dbg !4601
  %5 = load ptr, ptr %ev_arg, align 8, !dbg !4601
  store ptr %5, ptr %conn, align 8, !dbg !4602
  %6 = load ptr, ptr %conn, align 8, !dbg !4603
  %listener2 = getelementptr inbounds %struct.controlconnection, ptr %6, i32 0, i32 6, !dbg !4604
  %7 = load ptr, ptr %listener2, align 8, !dbg !4604
  store ptr %7, ptr %listener, align 8, !dbg !4605
  store i32 0, ptr %algorithm, align 4, !dbg !4606
  %rstart = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 0, !dbg !4607
  store ptr null, ptr %rstart, align 8, !dbg !4608
  store ptr null, ptr %text, align 8, !dbg !4609
  %8 = load ptr, ptr %listener, align 8, !dbg !4610
  %controls = getelementptr inbounds %struct.controllistener, ptr %8, i32 0, i32 0, !dbg !4612
  %9 = load ptr, ptr %controls, align 8, !dbg !4612
  %shuttingdown = getelementptr inbounds %struct.named_controls, ptr %9, i32 0, i32 2, !dbg !4613
  %10 = load i8, ptr %shuttingdown, align 8, !dbg !4613, !range !3038, !noundef !3039
  %tobool3 = trunc i8 %10 to i1, !dbg !4613
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4614

if.then:                                          ; preds = %lor.end
  br label %cleanup360, !dbg !4615

if.end:                                           ; preds = %lor.end
  %11 = load ptr, ptr %conn, align 8, !dbg !4616
  %ccmsg = getelementptr inbounds %struct.controlconnection, ptr %11, i32 0, i32 1, !dbg !4618
  %result4 = getelementptr inbounds %struct.isccc_ccmsg, ptr %ccmsg, i32 0, i32 10, !dbg !4619
  %12 = load i32, ptr %result4, align 8, !dbg !4619
  %cmp5 = icmp ne i32 %12, 0, !dbg !4620
  br i1 %cmp5, label %if.then7, label %if.end21, !dbg !4621

if.then7:                                         ; preds = %if.end
  %13 = load ptr, ptr %conn, align 8, !dbg !4622
  %ccmsg8 = getelementptr inbounds %struct.controlconnection, ptr %13, i32 0, i32 1, !dbg !4625
  %result9 = getelementptr inbounds %struct.isccc_ccmsg, ptr %ccmsg8, i32 0, i32 10, !dbg !4626
  %14 = load i32, ptr %result9, align 8, !dbg !4626
  %cmp10 = icmp ne i32 %14, 20, !dbg !4627
  br i1 %cmp10, label %land.lhs.true, label %if.end20, !dbg !4628

land.lhs.true:                                    ; preds = %if.then7
  %15 = load ptr, ptr %conn, align 8, !dbg !4629
  %ccmsg12 = getelementptr inbounds %struct.controlconnection, ptr %15, i32 0, i32 1, !dbg !4630
  %result13 = getelementptr inbounds %struct.isccc_ccmsg, ptr %ccmsg12, i32 0, i32 10, !dbg !4631
  %16 = load i32, ptr %result13, align 8, !dbg !4631
  %cmp14 = icmp ne i32 %16, 14, !dbg !4632
  br i1 %cmp14, label %if.then16, label %if.end20, !dbg !4633

if.then16:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %conn, align 8, !dbg !4634
  %ccmsg17 = getelementptr inbounds %struct.controlconnection, ptr %17, i32 0, i32 1, !dbg !4635
  %18 = load ptr, ptr %conn, align 8, !dbg !4636
  %ccmsg18 = getelementptr inbounds %struct.controlconnection, ptr %18, i32 0, i32 1, !dbg !4637
  %result19 = getelementptr inbounds %struct.isccc_ccmsg, ptr %ccmsg18, i32 0, i32 10, !dbg !4638
  %19 = load i32, ptr %result19, align 8, !dbg !4638
  call void @log_invalid(ptr noundef %ccmsg17, i32 noundef %19), !dbg !4639
  br label %if.end20, !dbg !4639

if.end20:                                         ; preds = %if.then16, %land.lhs.true, %if.then7
  br label %cleanup360, !dbg !4640

if.end21:                                         ; preds = %if.end
  store ptr null, ptr %request, align 8, !dbg !4641
  %20 = load ptr, ptr %listener, align 8, !dbg !4642
  %keys = getelementptr inbounds %struct.controllistener, ptr %20, i32 0, i32 8, !dbg !4642
  %head = getelementptr inbounds %struct.controlkeylist_t, ptr %keys, i32 0, i32 0, !dbg !4642
  %21 = load ptr, ptr %head, align 8, !dbg !4642
  store ptr %21, ptr %key, align 8, !dbg !4643
  br label %for.cond, !dbg !4644

for.cond:                                         ; preds = %for.inc, %if.end21
  %22 = load ptr, ptr %key, align 8, !dbg !4645
  %cmp22 = icmp ne ptr %22, null, !dbg !4646
  br i1 %cmp22, label %for.body, label %for.end, !dbg !4647

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %ccregion) #9, !dbg !4648
  tail call void @llvm.dbg.declare(metadata ptr %ccregion, metadata !4538, metadata !DIExpression()), !dbg !4649
  %23 = load ptr, ptr %conn, align 8, !dbg !4650
  %ccmsg24 = getelementptr inbounds %struct.controlconnection, ptr %23, i32 0, i32 1, !dbg !4650
  %buffer = getelementptr inbounds %struct.isccc_ccmsg, ptr %ccmsg24, i32 0, i32 2, !dbg !4650
  %base = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 1, !dbg !4650
  %24 = load ptr, ptr %base, align 8, !dbg !4650
  %rstart25 = getelementptr inbounds %struct.isccc_region, ptr %ccregion, i32 0, i32 0, !dbg !4651
  store ptr %24, ptr %rstart25, align 8, !dbg !4652
  %25 = load ptr, ptr %conn, align 8, !dbg !4653
  %ccmsg26 = getelementptr inbounds %struct.controlconnection, ptr %25, i32 0, i32 1, !dbg !4653
  %buffer27 = getelementptr inbounds %struct.isccc_ccmsg, ptr %ccmsg26, i32 0, i32 2, !dbg !4653
  %base28 = getelementptr inbounds %struct.isc_buffer, ptr %buffer27, i32 0, i32 1, !dbg !4653
  %26 = load ptr, ptr %base28, align 8, !dbg !4653
  %27 = load ptr, ptr %conn, align 8, !dbg !4653
  %ccmsg29 = getelementptr inbounds %struct.controlconnection, ptr %27, i32 0, i32 1, !dbg !4653
  %buffer30 = getelementptr inbounds %struct.isccc_ccmsg, ptr %ccmsg29, i32 0, i32 2, !dbg !4653
  %used = getelementptr inbounds %struct.isc_buffer, ptr %buffer30, i32 0, i32 3, !dbg !4653
  %28 = load i32, ptr %used, align 4, !dbg !4653
  %idx.ext = zext i32 %28 to i64, !dbg !4653
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 %idx.ext, !dbg !4653
  %rend = getelementptr inbounds %struct.isccc_region, ptr %ccregion, i32 0, i32 1, !dbg !4654
  store ptr %add.ptr, ptr %rend, align 8, !dbg !4655
  %29 = load ptr, ptr %listener, align 8, !dbg !4656
  %mctx = getelementptr inbounds %struct.controllistener, ptr %29, i32 0, i32 1, !dbg !4656
  %30 = load ptr, ptr %mctx, align 8, !dbg !4656
  %31 = load ptr, ptr %key, align 8, !dbg !4656
  %secret31 = getelementptr inbounds %struct.controlkey, ptr %31, i32 0, i32 2, !dbg !4656
  %length = getelementptr inbounds %struct.isc_region, ptr %secret31, i32 0, i32 1, !dbg !4656
  %32 = load i32, ptr %length, align 8, !dbg !4656
  %conv32 = zext i32 %32 to i64, !dbg !4656
  %call = call ptr @isc__mem_get(ptr noundef %30, i64 noundef %conv32, ptr noundef @.str.4, i32 noundef 374), !dbg !4656
  %rstart33 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 0, !dbg !4657
  store ptr %call, ptr %rstart33, align 8, !dbg !4658
  %rstart34 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 0, !dbg !4659
  %33 = load ptr, ptr %rstart34, align 8, !dbg !4659
  %cmp35 = icmp eq ptr %33, null, !dbg !4661
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !4662

if.then37:                                        ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4663

if.end38:                                         ; preds = %for.body
  %rstart39 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 0, !dbg !4664
  %34 = load ptr, ptr %rstart39, align 8, !dbg !4664
  %35 = load ptr, ptr %key, align 8, !dbg !4665
  %secret40 = getelementptr inbounds %struct.controlkey, ptr %35, i32 0, i32 2, !dbg !4666
  %base41 = getelementptr inbounds %struct.isc_region, ptr %secret40, i32 0, i32 0, !dbg !4667
  %36 = load ptr, ptr %base41, align 8, !dbg !4667
  %37 = load ptr, ptr %key, align 8, !dbg !4668
  %secret42 = getelementptr inbounds %struct.controlkey, ptr %37, i32 0, i32 2, !dbg !4669
  %length43 = getelementptr inbounds %struct.isc_region, ptr %secret42, i32 0, i32 1, !dbg !4670
  %38 = load i32, ptr %length43, align 8, !dbg !4670
  %conv44 = zext i32 %38 to i64, !dbg !4668
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %34, ptr align 1 %36, i64 %conv44, i1 false), !dbg !4671
  %rstart45 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 0, !dbg !4672
  %39 = load ptr, ptr %rstart45, align 8, !dbg !4672
  %40 = load ptr, ptr %key, align 8, !dbg !4673
  %secret46 = getelementptr inbounds %struct.controlkey, ptr %40, i32 0, i32 2, !dbg !4674
  %length47 = getelementptr inbounds %struct.isc_region, ptr %secret46, i32 0, i32 1, !dbg !4675
  %41 = load i32, ptr %length47, align 8, !dbg !4675
  %idx.ext48 = zext i32 %41 to i64, !dbg !4676
  %add.ptr49 = getelementptr inbounds i8, ptr %39, i64 %idx.ext48, !dbg !4676
  %rend50 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 1, !dbg !4677
  store ptr %add.ptr49, ptr %rend50, align 8, !dbg !4678
  %42 = load ptr, ptr %key, align 8, !dbg !4679
  %algorithm51 = getelementptr inbounds %struct.controlkey, ptr %42, i32 0, i32 1, !dbg !4680
  %43 = load i32, ptr %algorithm51, align 8, !dbg !4680
  store i32 %43, ptr %algorithm, align 4, !dbg !4681
  %44 = load i32, ptr %algorithm, align 4, !dbg !4682
  %call52 = call i32 @isccc_cc_fromwire(ptr noundef %ccregion, ptr noundef %request, i32 noundef %44, ptr noundef %secret), !dbg !4683
  store i32 %call52, ptr %result, align 4, !dbg !4684
  %45 = load i32, ptr %result, align 4, !dbg !4685
  %cmp53 = icmp eq i32 %45, 0, !dbg !4687
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !4688

if.then55:                                        ; preds = %if.end38
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4689

if.end56:                                         ; preds = %if.end38
  br label %do.body, !dbg !4690

do.body:                                          ; preds = %if.end56
  %46 = load ptr, ptr %listener, align 8, !dbg !4691
  %mctx57 = getelementptr inbounds %struct.controllistener, ptr %46, i32 0, i32 1, !dbg !4691
  %47 = load ptr, ptr %mctx57, align 8, !dbg !4691
  %rstart58 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 0, !dbg !4691
  %48 = load ptr, ptr %rstart58, align 8, !dbg !4691
  %rend59 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 1, !dbg !4691
  %49 = load ptr, ptr %rend59, align 8, !dbg !4691
  %rstart60 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 0, !dbg !4691
  %50 = load ptr, ptr %rstart60, align 8, !dbg !4691
  %sub.ptr.lhs.cast = ptrtoint ptr %49 to i64, !dbg !4691
  %sub.ptr.rhs.cast = ptrtoint ptr %50 to i64, !dbg !4691
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4691
  %conv61 = trunc i64 %sub.ptr.sub to i32, !dbg !4691
  %conv62 = zext i32 %conv61 to i64, !dbg !4691
  call void @isc__mem_put(ptr noundef %47, ptr noundef %48, i64 noundef %conv62, ptr noundef @.str.4, i32 noundef 384), !dbg !4691
  %rstart63 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 0, !dbg !4691
  store ptr null, ptr %rstart63, align 8, !dbg !4691
  br label %do.cond, !dbg !4691

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4691

do.end:                                           ; preds = %do.cond
  %51 = load i32, ptr %result, align 4, !dbg !4693
  %cmp64 = icmp ne i32 %51, 327682, !dbg !4695
  br i1 %cmp64, label %if.then66, label %if.end68, !dbg !4696

if.then66:                                        ; preds = %do.end
  %52 = load ptr, ptr %conn, align 8, !dbg !4697
  %ccmsg67 = getelementptr inbounds %struct.controlconnection, ptr %52, i32 0, i32 1, !dbg !4699
  %53 = load i32, ptr %result, align 4, !dbg !4700
  call void @log_invalid(ptr noundef %ccmsg67, i32 noundef %53), !dbg !4701
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4702

if.end68:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4703
  br label %cleanup, !dbg !4703

cleanup:                                          ; preds = %if.then66, %if.then37, %if.end68, %if.then55
  call void @llvm.lifetime.end.p0(i64 16, ptr %ccregion) #9, !dbg !4703
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup363 [
    i32 0, label %cleanup.cont
    i32 3, label %for.end
    i32 2, label %cleanup360
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4704

for.inc:                                          ; preds = %cleanup.cont
  %54 = load ptr, ptr %key, align 8, !dbg !4705
  %link = getelementptr inbounds %struct.controlkey, ptr %54, i32 0, i32 3, !dbg !4705
  %next = getelementptr inbounds %struct.anon.11, ptr %link, i32 0, i32 1, !dbg !4705
  %55 = load ptr, ptr %next, align 8, !dbg !4705
  store ptr %55, ptr %key, align 8, !dbg !4706
  br label %for.cond, !dbg !4707, !llvm.loop !4708

for.end:                                          ; preds = %cleanup, %for.cond
  %56 = load ptr, ptr %key, align 8, !dbg !4710
  %cmp69 = icmp eq ptr %56, null, !dbg !4712
  br i1 %cmp69, label %if.then71, label %if.end73, !dbg !4713

if.then71:                                        ; preds = %for.end
  %57 = load ptr, ptr %conn, align 8, !dbg !4714
  %ccmsg72 = getelementptr inbounds %struct.controlconnection, ptr %57, i32 0, i32 1, !dbg !4716
  call void @log_invalid(ptr noundef %ccmsg72, i32 noundef 327682), !dbg !4717
  br label %cleanup360, !dbg !4718

if.end73:                                         ; preds = %for.end
  %58 = load ptr, ptr %request, align 8, !dbg !4719
  %call74 = call zeroext i1 @isccc_cc_isreply(ptr noundef %58), !dbg !4721
  br i1 %call74, label %if.then75, label %if.end77, !dbg !4722

if.then75:                                        ; preds = %if.end73
  %59 = load ptr, ptr %conn, align 8, !dbg !4723
  %ccmsg76 = getelementptr inbounds %struct.controlconnection, ptr %59, i32 0, i32 1, !dbg !4725
  call void @log_invalid(ptr noundef %ccmsg76, i32 noundef 25), !dbg !4726
  br label %cleanup_request, !dbg !4727

if.end77:                                         ; preds = %if.end73
  call void @isc_stdtime_get(ptr noundef %now), !dbg !4728
  %60 = load ptr, ptr %request, align 8, !dbg !4729
  %call78 = call ptr @isccc_alist_lookup(ptr noundef %60, ptr noundef @.str.66), !dbg !4730
  store ptr %call78, ptr %_ctrl, align 8, !dbg !4731
  %61 = load ptr, ptr %_ctrl, align 8, !dbg !4732
  %call79 = call zeroext i1 @isccc_alist_alistp(ptr noundef %61), !dbg !4734
  br i1 %call79, label %if.end82, label %if.then80, !dbg !4735

if.then80:                                        ; preds = %if.end77
  %62 = load ptr, ptr %conn, align 8, !dbg !4736
  %ccmsg81 = getelementptr inbounds %struct.controlconnection, ptr %62, i32 0, i32 1, !dbg !4738
  call void @log_invalid(ptr noundef %ccmsg81, i32 noundef 25), !dbg !4739
  br label %cleanup_request, !dbg !4740

if.end82:                                         ; preds = %if.end77
  %63 = load ptr, ptr %_ctrl, align 8, !dbg !4741
  %call83 = call i32 @isccc_cc_lookupuint32(ptr noundef %63, ptr noundef @.str.67, ptr noundef %sent), !dbg !4743
  %cmp84 = icmp eq i32 %call83, 0, !dbg !4744
  br i1 %cmp84, label %if.then86, label %if.else, !dbg !4745

if.then86:                                        ; preds = %if.end82
  %64 = load i32, ptr %sent, align 4, !dbg !4746
  %add = add i32 %64, 300, !dbg !4749
  %65 = load i32, ptr %now, align 4, !dbg !4750
  %cmp87 = icmp ult i32 %add, %65, !dbg !4751
  br i1 %cmp87, label %if.then91, label %lor.lhs.false, !dbg !4752

lor.lhs.false:                                    ; preds = %if.then86
  %66 = load i32, ptr %sent, align 4, !dbg !4753
  %sub = sub i32 %66, 300, !dbg !4754
  %67 = load i32, ptr %now, align 4, !dbg !4755
  %cmp89 = icmp ugt i32 %sub, %67, !dbg !4756
  br i1 %cmp89, label %if.then91, label %if.end93, !dbg !4757

if.then91:                                        ; preds = %lor.lhs.false, %if.then86
  %68 = load ptr, ptr %conn, align 8, !dbg !4758
  %ccmsg92 = getelementptr inbounds %struct.controlconnection, ptr %68, i32 0, i32 1, !dbg !4760
  call void @log_invalid(ptr noundef %ccmsg92, i32 noundef 327684), !dbg !4761
  br label %cleanup_request, !dbg !4762

if.end93:                                         ; preds = %lor.lhs.false
  br label %if.end95, !dbg !4763

if.else:                                          ; preds = %if.end82
  %69 = load ptr, ptr %conn, align 8, !dbg !4764
  %ccmsg94 = getelementptr inbounds %struct.controlconnection, ptr %69, i32 0, i32 1, !dbg !4766
  call void @log_invalid(ptr noundef %ccmsg94, i32 noundef 25), !dbg !4767
  br label %cleanup_request, !dbg !4768

if.end95:                                         ; preds = %if.end93
  %70 = load ptr, ptr %_ctrl, align 8, !dbg !4769
  %call96 = call i32 @isccc_cc_lookupuint32(ptr noundef %70, ptr noundef @.str.68, ptr noundef %exp), !dbg !4771
  %cmp97 = icmp eq i32 %call96, 0, !dbg !4772
  br i1 %cmp97, label %land.lhs.true99, label %if.end104, !dbg !4773

land.lhs.true99:                                  ; preds = %if.end95
  %71 = load i32, ptr %now, align 4, !dbg !4774
  %72 = load i32, ptr %exp, align 4, !dbg !4775
  %cmp100 = icmp ugt i32 %71, %72, !dbg !4776
  br i1 %cmp100, label %if.then102, label %if.end104, !dbg !4777

if.then102:                                       ; preds = %land.lhs.true99
  %73 = load ptr, ptr %conn, align 8, !dbg !4778
  %ccmsg103 = getelementptr inbounds %struct.controlconnection, ptr %73, i32 0, i32 1, !dbg !4780
  call void @log_invalid(ptr noundef %ccmsg103, i32 noundef 327683), !dbg !4781
  br label %cleanup_request, !dbg !4782

if.end104:                                        ; preds = %land.lhs.true99, %if.end95
  %74 = load ptr, ptr %listener, align 8, !dbg !4783
  %controls105 = getelementptr inbounds %struct.controllistener, ptr %74, i32 0, i32 0, !dbg !4784
  %75 = load ptr, ptr %controls105, align 8, !dbg !4784
  %symtab = getelementptr inbounds %struct.named_controls, ptr %75, i32 0, i32 3, !dbg !4785
  %76 = load ptr, ptr %symtab, align 8, !dbg !4785
  %77 = load i32, ptr %now, align 4, !dbg !4786
  call void @isccc_cc_cleansymtab(ptr noundef %76, i32 noundef %77), !dbg !4787
  %78 = load ptr, ptr %listener, align 8, !dbg !4788
  %controls106 = getelementptr inbounds %struct.controllistener, ptr %78, i32 0, i32 0, !dbg !4789
  %79 = load ptr, ptr %controls106, align 8, !dbg !4789
  %symtab107 = getelementptr inbounds %struct.named_controls, ptr %79, i32 0, i32 3, !dbg !4790
  %80 = load ptr, ptr %symtab107, align 8, !dbg !4790
  %81 = load ptr, ptr %request, align 8, !dbg !4791
  %82 = load i32, ptr %now, align 4, !dbg !4792
  %call108 = call i32 @isccc_cc_checkdup(ptr noundef %80, ptr noundef %81, i32 noundef %82), !dbg !4793
  store i32 %call108, ptr %result, align 4, !dbg !4794
  %83 = load i32, ptr %result, align 4, !dbg !4795
  %cmp109 = icmp ne i32 %83, 0, !dbg !4797
  br i1 %cmp109, label %if.then111, label %if.end117, !dbg !4798

if.then111:                                       ; preds = %if.end104
  %84 = load i32, ptr %result, align 4, !dbg !4799
  %cmp112 = icmp eq i32 %84, 18, !dbg !4802
  br i1 %cmp112, label %if.then114, label %if.end115, !dbg !4803

if.then114:                                       ; preds = %if.then111
  store i32 327685, ptr %result, align 4, !dbg !4804
  br label %if.end115, !dbg !4805

if.end115:                                        ; preds = %if.then114, %if.then111
  %85 = load ptr, ptr %conn, align 8, !dbg !4806
  %ccmsg116 = getelementptr inbounds %struct.controlconnection, ptr %85, i32 0, i32 1, !dbg !4807
  %86 = load i32, ptr %result, align 4, !dbg !4808
  call void @log_invalid(ptr noundef %ccmsg116, i32 noundef %86), !dbg !4809
  br label %cleanup_request, !dbg !4810

if.end117:                                        ; preds = %if.end104
  %87 = load ptr, ptr %conn, align 8, !dbg !4811
  %nonce118 = getelementptr inbounds %struct.controlconnection, ptr %87, i32 0, i32 7, !dbg !4813
  %88 = load i32, ptr %nonce118, align 8, !dbg !4813
  %cmp119 = icmp ne i32 %88, 0, !dbg !4814
  br i1 %cmp119, label %land.lhs.true121, label %if.end131, !dbg !4815

land.lhs.true121:                                 ; preds = %if.end117
  %89 = load ptr, ptr %_ctrl, align 8, !dbg !4816
  %call122 = call i32 @isccc_cc_lookupuint32(ptr noundef %89, ptr noundef @.str.69, ptr noundef %nonce), !dbg !4817
  %cmp123 = icmp ne i32 %call122, 0, !dbg !4818
  br i1 %cmp123, label %if.then129, label %lor.lhs.false125, !dbg !4819

lor.lhs.false125:                                 ; preds = %land.lhs.true121
  %90 = load ptr, ptr %conn, align 8, !dbg !4820
  %nonce126 = getelementptr inbounds %struct.controlconnection, ptr %90, i32 0, i32 7, !dbg !4821
  %91 = load i32, ptr %nonce126, align 8, !dbg !4821
  %92 = load i32, ptr %nonce, align 4, !dbg !4822
  %cmp127 = icmp ne i32 %91, %92, !dbg !4823
  br i1 %cmp127, label %if.then129, label %if.end131, !dbg !4824

if.then129:                                       ; preds = %lor.lhs.false125, %land.lhs.true121
  %93 = load ptr, ptr %conn, align 8, !dbg !4825
  %ccmsg130 = getelementptr inbounds %struct.controlconnection, ptr %93, i32 0, i32 1, !dbg !4827
  call void @log_invalid(ptr noundef %ccmsg130, i32 noundef 327682), !dbg !4828
  br label %cleanup_request, !dbg !4829

if.end131:                                        ; preds = %lor.lhs.false125, %if.end117
  %94 = load ptr, ptr %listener, align 8, !dbg !4830
  %mctx132 = getelementptr inbounds %struct.controllistener, ptr %94, i32 0, i32 1, !dbg !4831
  %95 = load ptr, ptr %mctx132, align 8, !dbg !4831
  %call133 = call i32 @isc_buffer_allocate(ptr noundef %95, ptr noundef %text, i32 noundef 4096), !dbg !4832
  store i32 %call133, ptr %result, align 4, !dbg !4833
  %96 = load i32, ptr %result, align 4, !dbg !4834
  %cmp134 = icmp ne i32 %96, 0, !dbg !4836
  br i1 %cmp134, label %if.then136, label %if.end137, !dbg !4837

if.then136:                                       ; preds = %if.end131
  br label %cleanup_request, !dbg !4838

if.end137:                                        ; preds = %if.end131
  %97 = load ptr, ptr %conn, align 8, !dbg !4839
  %nonce138 = getelementptr inbounds %struct.controlconnection, ptr %97, i32 0, i32 7, !dbg !4841
  %98 = load i32, ptr %nonce138, align 8, !dbg !4841
  %cmp139 = icmp eq i32 %98, 0, !dbg !4842
  br i1 %cmp139, label %if.then141, label %if.else146, !dbg !4843

if.then141:                                       ; preds = %if.end137
  br label %while.cond, !dbg !4844

while.cond:                                       ; preds = %while.body, %if.then141
  %99 = load ptr, ptr %conn, align 8, !dbg !4846
  %nonce142 = getelementptr inbounds %struct.controlconnection, ptr %99, i32 0, i32 7, !dbg !4847
  %100 = load i32, ptr %nonce142, align 8, !dbg !4847
  %cmp143 = icmp eq i32 %100, 0, !dbg !4848
  br i1 %cmp143, label %while.body, label %while.end, !dbg !4844

while.body:                                       ; preds = %while.cond
  %101 = load ptr, ptr %conn, align 8, !dbg !4849
  %nonce145 = getelementptr inbounds %struct.controlconnection, ptr %101, i32 0, i32 7, !dbg !4851
  call void @isc_nonce_buf(ptr noundef %nonce145, i64 noundef 4), !dbg !4852
  br label %while.cond, !dbg !4844, !llvm.loop !4853

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %eresult, align 4, !dbg !4855
  br label %if.end149, !dbg !4856

if.else146:                                       ; preds = %if.end137
  %102 = load ptr, ptr %request, align 8, !dbg !4857
  %103 = load ptr, ptr %listener, align 8, !dbg !4858
  %readonly = getelementptr inbounds %struct.controllistener, ptr %103, i32 0, i32 14, !dbg !4859
  %104 = load i8, ptr %readonly, align 8, !dbg !4859, !range !3038, !noundef !3039
  %tobool147 = trunc i8 %104 to i1, !dbg !4859
  %call148 = call i32 @named_control_docommand(ptr noundef %102, i1 noundef zeroext %tobool147, ptr noundef %text), !dbg !4860
  store i32 %call148, ptr %eresult, align 4, !dbg !4861
  br label %if.end149

if.end149:                                        ; preds = %if.else146, %while.end
  %105 = load ptr, ptr %request, align 8, !dbg !4862
  %106 = load i32, ptr %now, align 4, !dbg !4863
  %107 = load i32, ptr %now, align 4, !dbg !4864
  %add150 = add i32 %107, 60, !dbg !4865
  %call151 = call i32 @isccc_cc_createresponse(ptr noundef %105, i32 noundef %106, i32 noundef %add150, ptr noundef %response), !dbg !4866
  store i32 %call151, ptr %result, align 4, !dbg !4867
  %108 = load i32, ptr %result, align 4, !dbg !4868
  %cmp152 = icmp ne i32 %108, 0, !dbg !4870
  br i1 %cmp152, label %if.then154, label %if.end155, !dbg !4871

if.then154:                                       ; preds = %if.end149
  br label %cleanup_request, !dbg !4872

if.end155:                                        ; preds = %if.end149
  %109 = load ptr, ptr %response, align 8, !dbg !4873
  %call156 = call ptr @isccc_alist_lookup(ptr noundef %109, ptr noundef @.str.70), !dbg !4874
  store ptr %call156, ptr %data, align 8, !dbg !4875
  %110 = load ptr, ptr %data, align 8, !dbg !4876
  %cmp157 = icmp ne ptr %110, null, !dbg !4878
  br i1 %cmp157, label %if.then159, label %if.end165, !dbg !4879

if.then159:                                       ; preds = %if.end155
  %111 = load ptr, ptr %data, align 8, !dbg !4880
  %112 = load i32, ptr %eresult, align 4, !dbg !4883
  %call160 = call ptr @isccc_cc_defineuint32(ptr noundef %111, ptr noundef @.str.71, i32 noundef %112), !dbg !4884
  %cmp161 = icmp eq ptr %call160, null, !dbg !4885
  br i1 %cmp161, label %if.then163, label %if.end164, !dbg !4886

if.then163:                                       ; preds = %if.then159
  br label %cleanup_response, !dbg !4887

if.end164:                                        ; preds = %if.then159
  br label %if.end165, !dbg !4888

if.end165:                                        ; preds = %if.end164, %if.end155
  %113 = load i32, ptr %eresult, align 4, !dbg !4889
  %cmp166 = icmp ne i32 %113, 0, !dbg !4890
  br i1 %cmp166, label %if.then168, label %if.end182, !dbg !4891

if.then168:                                       ; preds = %if.end165
  %114 = load ptr, ptr %data, align 8, !dbg !4892
  %cmp169 = icmp ne ptr %114, null, !dbg !4893
  br i1 %cmp169, label %if.then171, label %if.end181, !dbg !4894

if.then171:                                       ; preds = %if.then168
  call void @llvm.lifetime.start.p0(i64 8, ptr %estr) #9, !dbg !4895
  tail call void @llvm.dbg.declare(metadata ptr %estr, metadata !4542, metadata !DIExpression()), !dbg !4896
  %115 = load i32, ptr %eresult, align 4, !dbg !4897
  %call172 = call ptr @isc_result_totext(i32 noundef %115), !dbg !4898
  store ptr %call172, ptr %estr, align 8, !dbg !4896
  %116 = load ptr, ptr %data, align 8, !dbg !4899
  %117 = load ptr, ptr %estr, align 8, !dbg !4901
  %call173 = call ptr @isccc_cc_definestring(ptr noundef %116, ptr noundef @.str.72, ptr noundef %117), !dbg !4902
  %cmp174 = icmp eq ptr %call173, null, !dbg !4903
  br i1 %cmp174, label %if.then176, label %if.end177, !dbg !4904

if.then176:                                       ; preds = %if.then171
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup178, !dbg !4905

if.end177:                                        ; preds = %if.then171
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4906
  br label %cleanup178, !dbg !4906

cleanup178:                                       ; preds = %if.then176, %if.end177
  call void @llvm.lifetime.end.p0(i64 8, ptr %estr) #9, !dbg !4906
  %cleanup.dest179 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest179, label %cleanup363 [
    i32 0, label %cleanup.cont180
    i32 11, label %cleanup_response
  ]

cleanup.cont180:                                  ; preds = %cleanup178
  br label %if.end181, !dbg !4907

if.end181:                                        ; preds = %cleanup.cont180, %if.then168
  br label %if.end182, !dbg !4908

if.end182:                                        ; preds = %if.end181, %if.end165
  %118 = load ptr, ptr %text, align 8, !dbg !4909
  %used183 = getelementptr inbounds %struct.isc_buffer, ptr %118, i32 0, i32 3, !dbg !4909
  %119 = load i32, ptr %used183, align 4, !dbg !4909
  %cmp184 = icmp ugt i32 %119, 0, !dbg !4910
  br i1 %cmp184, label %if.then186, label %if.end200, !dbg !4911

if.then186:                                       ; preds = %if.end182
  %120 = load ptr, ptr %data, align 8, !dbg !4912
  %cmp187 = icmp ne ptr %120, null, !dbg !4913
  br i1 %cmp187, label %if.then189, label %if.end199, !dbg !4914

if.then189:                                       ; preds = %if.then186
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #9, !dbg !4915
  tail call void @llvm.dbg.declare(metadata ptr %str, metadata !4547, metadata !DIExpression()), !dbg !4916
  %121 = load ptr, ptr %text, align 8, !dbg !4917
  %base190 = getelementptr inbounds %struct.isc_buffer, ptr %121, i32 0, i32 1, !dbg !4917
  %122 = load ptr, ptr %base190, align 8, !dbg !4917
  store ptr %122, ptr %str, align 8, !dbg !4916
  %123 = load ptr, ptr %data, align 8, !dbg !4918
  %124 = load ptr, ptr %str, align 8, !dbg !4920
  %call191 = call ptr @isccc_cc_definestring(ptr noundef %123, ptr noundef @.str.73, ptr noundef %124), !dbg !4921
  %cmp192 = icmp eq ptr %call191, null, !dbg !4922
  br i1 %cmp192, label %if.then194, label %if.end195, !dbg !4923

if.then194:                                       ; preds = %if.then189
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup196, !dbg !4924

if.end195:                                        ; preds = %if.then189
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4925
  br label %cleanup196, !dbg !4925

cleanup196:                                       ; preds = %if.then194, %if.end195
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #9, !dbg !4925
  %cleanup.dest197 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest197, label %cleanup363 [
    i32 0, label %cleanup.cont198
    i32 11, label %cleanup_response
  ]

cleanup.cont198:                                  ; preds = %cleanup196
  br label %if.end199, !dbg !4926

if.end199:                                        ; preds = %cleanup.cont198, %if.then186
  br label %if.end200, !dbg !4927

if.end200:                                        ; preds = %if.end199, %if.end182
  %125 = load ptr, ptr %response, align 8, !dbg !4928
  %call201 = call ptr @isccc_alist_lookup(ptr noundef %125, ptr noundef @.str.66), !dbg !4929
  store ptr %call201, ptr %_ctrl, align 8, !dbg !4930
  %126 = load ptr, ptr %_ctrl, align 8, !dbg !4931
  %cmp202 = icmp eq ptr %126, null, !dbg !4933
  br i1 %cmp202, label %if.then209, label %lor.lhs.false204, !dbg !4934

lor.lhs.false204:                                 ; preds = %if.end200
  %127 = load ptr, ptr %_ctrl, align 8, !dbg !4935
  %128 = load ptr, ptr %conn, align 8, !dbg !4936
  %nonce205 = getelementptr inbounds %struct.controlconnection, ptr %128, i32 0, i32 7, !dbg !4937
  %129 = load i32, ptr %nonce205, align 8, !dbg !4937
  %call206 = call ptr @isccc_cc_defineuint32(ptr noundef %127, ptr noundef @.str.69, i32 noundef %129), !dbg !4938
  %cmp207 = icmp eq ptr %call206, null, !dbg !4939
  br i1 %cmp207, label %if.then209, label %if.end210, !dbg !4940

if.then209:                                       ; preds = %lor.lhs.false204, %if.end200
  br label %cleanup_response, !dbg !4941

if.end210:                                        ; preds = %lor.lhs.false204
  %130 = load ptr, ptr %conn, align 8, !dbg !4942
  %buffer211 = getelementptr inbounds %struct.controlconnection, ptr %130, i32 0, i32 5, !dbg !4944
  %131 = load ptr, ptr %buffer211, align 8, !dbg !4944
  %cmp212 = icmp eq ptr %131, null, !dbg !4945
  br i1 %cmp212, label %if.then214, label %if.end222, !dbg !4946

if.then214:                                       ; preds = %if.end210
  %132 = load ptr, ptr %listener, align 8, !dbg !4947
  %mctx215 = getelementptr inbounds %struct.controllistener, ptr %132, i32 0, i32 1, !dbg !4949
  %133 = load ptr, ptr %mctx215, align 8, !dbg !4949
  %134 = load ptr, ptr %conn, align 8, !dbg !4950
  %buffer216 = getelementptr inbounds %struct.controlconnection, ptr %134, i32 0, i32 5, !dbg !4951
  %call217 = call i32 @isc_buffer_allocate(ptr noundef %133, ptr noundef %buffer216, i32 noundef 4096), !dbg !4952
  store i32 %call217, ptr %result, align 4, !dbg !4953
  %135 = load i32, ptr %result, align 4, !dbg !4954
  %cmp218 = icmp ne i32 %135, 0, !dbg !4956
  br i1 %cmp218, label %if.then220, label %if.end221, !dbg !4957

if.then220:                                       ; preds = %if.then214
  br label %cleanup_response, !dbg !4958

if.end221:                                        ; preds = %if.then214
  br label %if.end222, !dbg !4959

if.end222:                                        ; preds = %if.end221, %if.end210
  br label %do.body223, !dbg !4960

do.body223:                                       ; preds = %if.end222
  %136 = load ptr, ptr %conn, align 8, !dbg !4961
  %buffer224 = getelementptr inbounds %struct.controlconnection, ptr %136, i32 0, i32 5, !dbg !4961
  %137 = load ptr, ptr %buffer224, align 8, !dbg !4961
  %used225 = getelementptr inbounds %struct.isc_buffer, ptr %137, i32 0, i32 3, !dbg !4961
  store i32 0, ptr %used225, align 4, !dbg !4961
  %138 = load ptr, ptr %conn, align 8, !dbg !4961
  %buffer226 = getelementptr inbounds %struct.controlconnection, ptr %138, i32 0, i32 5, !dbg !4961
  %139 = load ptr, ptr %buffer226, align 8, !dbg !4961
  %current = getelementptr inbounds %struct.isc_buffer, ptr %139, i32 0, i32 4, !dbg !4961
  store i32 0, ptr %current, align 8, !dbg !4961
  %140 = load ptr, ptr %conn, align 8, !dbg !4961
  %buffer227 = getelementptr inbounds %struct.controlconnection, ptr %140, i32 0, i32 5, !dbg !4961
  %141 = load ptr, ptr %buffer227, align 8, !dbg !4961
  %active = getelementptr inbounds %struct.isc_buffer, ptr %141, i32 0, i32 5, !dbg !4961
  store i32 0, ptr %active, align 4, !dbg !4961
  br label %do.cond228, !dbg !4961

do.cond228:                                       ; preds = %do.body223
  br label %do.end229, !dbg !4961

do.end229:                                        ; preds = %do.cond228
  br label %do.body230, !dbg !4963

do.body230:                                       ; preds = %do.end229
  %142 = load ptr, ptr %conn, align 8, !dbg !4964
  %buffer231 = getelementptr inbounds %struct.controlconnection, ptr %142, i32 0, i32 5, !dbg !4964
  %143 = load ptr, ptr %buffer231, align 8, !dbg !4964
  %used232 = getelementptr inbounds %struct.isc_buffer, ptr %143, i32 0, i32 3, !dbg !4964
  %144 = load i32, ptr %used232, align 4, !dbg !4964
  %add233 = add i32 %144, 4, !dbg !4964
  store i32 %add233, ptr %used232, align 4, !dbg !4964
  br label %do.cond234, !dbg !4964

do.cond234:                                       ; preds = %do.body230
  br label %do.end235, !dbg !4964

do.end235:                                        ; preds = %do.cond234
  %145 = load ptr, ptr %response, align 8, !dbg !4966
  %146 = load ptr, ptr %conn, align 8, !dbg !4967
  %buffer236 = getelementptr inbounds %struct.controlconnection, ptr %146, i32 0, i32 5, !dbg !4968
  %147 = load i32, ptr %algorithm, align 4, !dbg !4969
  %call237 = call i32 @isccc_cc_towire(ptr noundef %145, ptr noundef %buffer236, i32 noundef %147, ptr noundef %secret), !dbg !4970
  store i32 %call237, ptr %result, align 4, !dbg !4971
  %148 = load i32, ptr %result, align 4, !dbg !4972
  %cmp238 = icmp ne i32 %148, 0, !dbg !4974
  br i1 %cmp238, label %if.then240, label %if.end241, !dbg !4975

if.then240:                                       ; preds = %do.end235
  br label %cleanup_response, !dbg !4976

if.end241:                                        ; preds = %do.end235
  br label %do.body242, !dbg !4977

do.body242:                                       ; preds = %if.end241
  %149 = load ptr, ptr %conn, align 8, !dbg !4978
  %buffer243 = getelementptr inbounds %struct.controlconnection, ptr %149, i32 0, i32 5, !dbg !4978
  %150 = load ptr, ptr %buffer243, align 8, !dbg !4978
  %base244 = getelementptr inbounds %struct.isc_buffer, ptr %150, i32 0, i32 1, !dbg !4978
  %151 = load ptr, ptr %base244, align 8, !dbg !4978
  %base245 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 1, !dbg !4978
  store ptr %151, ptr %base245, align 8, !dbg !4978
  %length246 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 2, !dbg !4978
  store i32 4, ptr %length246, align 8, !dbg !4978
  %used247 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 3, !dbg !4978
  store i32 0, ptr %used247, align 4, !dbg !4978
  %current248 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 4, !dbg !4978
  store i32 0, ptr %current248, align 8, !dbg !4978
  %active249 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 5, !dbg !4978
  store i32 0, ptr %active249, align 4, !dbg !4978
  %mctx250 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 7, !dbg !4978
  store ptr null, ptr %mctx250, align 8, !dbg !4978
  br label %do.body251, !dbg !4978

do.body251:                                       ; preds = %do.body242
  %link252 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 6, !dbg !4980
  %prev = getelementptr inbounds %struct.anon.7, ptr %link252, i32 0, i32 0, !dbg !4980
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !4980
  %link253 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 6, !dbg !4980
  %next254 = getelementptr inbounds %struct.anon.7, ptr %link253, i32 0, i32 1, !dbg !4980
  store ptr inttoptr (i64 -1 to ptr), ptr %next254, align 8, !dbg !4980
  br label %do.cond255, !dbg !4980

do.cond255:                                       ; preds = %do.body251
  br label %do.end256, !dbg !4980

do.end256:                                        ; preds = %do.cond255
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 0, !dbg !4978
  store i32 1114990113, ptr %magic, align 8, !dbg !4978
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 8, !dbg !4978
  store i8 0, ptr %autore, align 8, !dbg !4978
  br label %do.cond257, !dbg !4978

do.cond257:                                       ; preds = %do.end256
  br label %do.end258, !dbg !4978

do.end258:                                        ; preds = %do.cond257
  br label %do.body259, !dbg !4982

do.body259:                                       ; preds = %do.end258
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cp) #9, !dbg !4983
  tail call void @llvm.dbg.declare(metadata ptr %_cp, metadata !4552, metadata !DIExpression()), !dbg !4983
  call void @llvm.lifetime.start.p0(i64 4, ptr %_val2) #9, !dbg !4983
  tail call void @llvm.dbg.declare(metadata ptr %_val2, metadata !4554, metadata !DIExpression()), !dbg !4983
  %152 = load ptr, ptr %conn, align 8, !dbg !4983
  %buffer260 = getelementptr inbounds %struct.controlconnection, ptr %152, i32 0, i32 5, !dbg !4983
  %153 = load ptr, ptr %buffer260, align 8, !dbg !4983
  %used261 = getelementptr inbounds %struct.isc_buffer, ptr %153, i32 0, i32 3, !dbg !4983
  %154 = load i32, ptr %used261, align 4, !dbg !4983
  %sub262 = sub i32 %154, 4, !dbg !4983
  store i32 %sub262, ptr %_val2, align 4, !dbg !4983
  %autore263 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 8, !dbg !4984
  %155 = load i8, ptr %autore263, align 8, !dbg !4984, !range !3038, !noundef !3039
  %tobool264 = trunc i8 %155 to i1, !dbg !4984
  %lnot265 = xor i1 %tobool264, true, !dbg !4984
  %lnot267 = xor i1 %lnot265, true, !dbg !4984
  %lnot.ext268 = zext i1 %lnot267 to i32, !dbg !4984
  %conv269 = sext i32 %lnot.ext268 to i64, !dbg !4984
  %expval270 = call i64 @llvm.expect.i64(i64 %conv269, i64 0), !dbg !4984
  %tobool271 = icmp ne i64 %expval270, 0, !dbg !4984
  br i1 %tobool271, label %if.then272, label %if.end286, !dbg !4983

if.then272:                                       ; preds = %do.body259
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp) #9, !dbg !4985
  tail call void @llvm.dbg.declare(metadata ptr %_tmp, metadata !4555, metadata !DIExpression()), !dbg !4985
  store ptr %b, ptr %_tmp, align 8, !dbg !4985
  %call273 = call i32 @isc_buffer_reserve(ptr noundef %_tmp, i32 noundef 4), !dbg !4985
  %cmp274 = icmp eq i32 %call273, 0, !dbg !4985
  %lnot276 = xor i1 %cmp274, true, !dbg !4985
  %lnot278 = xor i1 %lnot276, true, !dbg !4985
  %lnot.ext279 = zext i1 %lnot278 to i32, !dbg !4985
  %conv280 = sext i32 %lnot.ext279 to i64, !dbg !4985
  %expval281 = call i64 @llvm.expect.i64(i64 %conv280, i64 1), !dbg !4985
  %tobool282 = icmp ne i64 %expval281, 0, !dbg !4985
  br i1 %tobool282, label %lor.end284, label %lor.rhs283, !dbg !4985

lor.rhs283:                                       ; preds = %if.then272
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 514, i32 noundef 0, ptr noundef @.str.74) #10, !dbg !4985
  unreachable, !dbg !4985

156:                                              ; No predecessors!
  br label %lor.end284, !dbg !4985

lor.end284:                                       ; preds = %156, %if.then272
  %157 = phi i1 [ true, %if.then272 ], [ false, %156 ]
  %lor.ext285 = zext i1 %157 to i32, !dbg !4985
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp) #9, !dbg !4984
  br label %if.end286, !dbg !4985

if.end286:                                        ; preds = %lor.end284, %do.body259
  %length287 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 2, !dbg !4983
  %158 = load i32, ptr %length287, align 8, !dbg !4983
  %used288 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 3, !dbg !4983
  %159 = load i32, ptr %used288, align 4, !dbg !4983
  %sub289 = sub i32 %158, %159, !dbg !4983
  %cmp290 = icmp uge i32 %sub289, 4, !dbg !4983
  %lnot292 = xor i1 %cmp290, true, !dbg !4983
  %lnot294 = xor i1 %lnot292, true, !dbg !4983
  %lnot.ext295 = zext i1 %lnot294 to i32, !dbg !4983
  %conv296 = sext i32 %lnot.ext295 to i64, !dbg !4983
  %expval297 = call i64 @llvm.expect.i64(i64 %conv296, i64 1), !dbg !4983
  %tobool298 = icmp ne i64 %expval297, 0, !dbg !4983
  br i1 %tobool298, label %lor.end300, label %lor.rhs299, !dbg !4983

lor.rhs299:                                       ; preds = %if.end286
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 514, i32 noundef 0, ptr noundef @.str.75) #10, !dbg !4983
  unreachable, !dbg !4983

160:                                              ; No predecessors!
  br label %lor.end300, !dbg !4983

lor.end300:                                       ; preds = %160, %if.end286
  %161 = phi i1 [ true, %if.end286 ], [ false, %160 ]
  %lor.ext301 = zext i1 %161 to i32, !dbg !4983
  %base302 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 1, !dbg !4983
  %162 = load ptr, ptr %base302, align 8, !dbg !4983
  %used303 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 3, !dbg !4983
  %163 = load i32, ptr %used303, align 4, !dbg !4983
  %idx.ext304 = zext i32 %163 to i64, !dbg !4983
  %add.ptr305 = getelementptr inbounds i8, ptr %162, i64 %idx.ext304, !dbg !4983
  store ptr %add.ptr305, ptr %_cp, align 8, !dbg !4983
  %used306 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 3, !dbg !4983
  %164 = load i32, ptr %used306, align 4, !dbg !4983
  %add307 = add i32 %164, 4, !dbg !4983
  store i32 %add307, ptr %used306, align 4, !dbg !4983
  %165 = load i32, ptr %_val2, align 4, !dbg !4983
  %shr = lshr i32 %165, 24, !dbg !4983
  %conv308 = trunc i32 %shr to i8, !dbg !4983
  %166 = load ptr, ptr %_cp, align 8, !dbg !4983
  %arrayidx = getelementptr inbounds i8, ptr %166, i64 0, !dbg !4983
  store i8 %conv308, ptr %arrayidx, align 1, !dbg !4983
  %167 = load i32, ptr %_val2, align 4, !dbg !4983
  %shr309 = lshr i32 %167, 16, !dbg !4983
  %conv310 = trunc i32 %shr309 to i8, !dbg !4983
  %168 = load ptr, ptr %_cp, align 8, !dbg !4983
  %arrayidx311 = getelementptr inbounds i8, ptr %168, i64 1, !dbg !4983
  store i8 %conv310, ptr %arrayidx311, align 1, !dbg !4983
  %169 = load i32, ptr %_val2, align 4, !dbg !4983
  %shr312 = lshr i32 %169, 8, !dbg !4983
  %conv313 = trunc i32 %shr312 to i8, !dbg !4983
  %170 = load ptr, ptr %_cp, align 8, !dbg !4983
  %arrayidx314 = getelementptr inbounds i8, ptr %170, i64 2, !dbg !4983
  store i8 %conv313, ptr %arrayidx314, align 1, !dbg !4983
  %171 = load i32, ptr %_val2, align 4, !dbg !4983
  %conv315 = trunc i32 %171 to i8, !dbg !4983
  %172 = load ptr, ptr %_cp, align 8, !dbg !4983
  %arrayidx316 = getelementptr inbounds i8, ptr %172, i64 3, !dbg !4983
  store i8 %conv315, ptr %arrayidx316, align 1, !dbg !4983
  call void @llvm.lifetime.end.p0(i64 4, ptr %_val2) #9, !dbg !4982
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cp) #9, !dbg !4982
  br label %do.cond317, !dbg !4983

do.cond317:                                       ; preds = %lor.end300
  br label %do.end318, !dbg !4983

do.end318:                                        ; preds = %do.cond317
  %173 = load ptr, ptr %conn, align 8, !dbg !4986
  %buffer319 = getelementptr inbounds %struct.controlconnection, ptr %173, i32 0, i32 5, !dbg !4987
  %174 = load ptr, ptr %buffer319, align 8, !dbg !4987
  %base320 = getelementptr inbounds %struct.isc_buffer, ptr %174, i32 0, i32 1, !dbg !4988
  %175 = load ptr, ptr %base320, align 8, !dbg !4988
  %base321 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !4989
  store ptr %175, ptr %base321, align 8, !dbg !4990
  %176 = load ptr, ptr %conn, align 8, !dbg !4991
  %buffer322 = getelementptr inbounds %struct.controlconnection, ptr %176, i32 0, i32 5, !dbg !4992
  %177 = load ptr, ptr %buffer322, align 8, !dbg !4992
  %used323 = getelementptr inbounds %struct.isc_buffer, ptr %177, i32 0, i32 3, !dbg !4993
  %178 = load i32, ptr %used323, align 4, !dbg !4993
  %length324 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !4994
  store i32 %178, ptr %length324, align 8, !dbg !4995
  %179 = load ptr, ptr %conn, align 8, !dbg !4996
  %sock = getelementptr inbounds %struct.controlconnection, ptr %179, i32 0, i32 0, !dbg !4997
  %180 = load ptr, ptr %sock, align 8, !dbg !4997
  %181 = load ptr, ptr %task.addr, align 8, !dbg !4998
  %182 = load ptr, ptr %conn, align 8, !dbg !4999
  %call325 = call i32 @isc_socket_send(ptr noundef %180, ptr noundef %r, ptr noundef %181, ptr noundef @control_senddone, ptr noundef %182), !dbg !5000
  store i32 %call325, ptr %result, align 4, !dbg !5001
  %183 = load i32, ptr %result, align 4, !dbg !5002
  %cmp326 = icmp ne i32 %183, 0, !dbg !5004
  br i1 %cmp326, label %if.then328, label %if.end329, !dbg !5005

if.then328:                                       ; preds = %do.end318
  br label %cleanup_response, !dbg !5006

if.end329:                                        ; preds = %do.end318
  %184 = load ptr, ptr %conn, align 8, !dbg !5007
  %sending = getelementptr inbounds %struct.controlconnection, ptr %184, i32 0, i32 3, !dbg !5008
  store i8 1, ptr %sending, align 1, !dbg !5009
  br label %do.body330, !dbg !5010

do.body330:                                       ; preds = %if.end329
  %185 = load ptr, ptr %listener, align 8, !dbg !5011
  %mctx331 = getelementptr inbounds %struct.controllistener, ptr %185, i32 0, i32 1, !dbg !5011
  %186 = load ptr, ptr %mctx331, align 8, !dbg !5011
  %rstart332 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 0, !dbg !5011
  %187 = load ptr, ptr %rstart332, align 8, !dbg !5011
  %rend333 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 1, !dbg !5011
  %188 = load ptr, ptr %rend333, align 8, !dbg !5011
  %rstart334 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 0, !dbg !5011
  %189 = load ptr, ptr %rstart334, align 8, !dbg !5011
  %sub.ptr.lhs.cast335 = ptrtoint ptr %188 to i64, !dbg !5011
  %sub.ptr.rhs.cast336 = ptrtoint ptr %189 to i64, !dbg !5011
  %sub.ptr.sub337 = sub i64 %sub.ptr.lhs.cast335, %sub.ptr.rhs.cast336, !dbg !5011
  %conv338 = trunc i64 %sub.ptr.sub337 to i32, !dbg !5011
  %conv339 = zext i32 %conv338 to i64, !dbg !5011
  call void @isc__mem_put(ptr noundef %186, ptr noundef %187, i64 noundef %conv339, ptr noundef @.str.4, i32 noundef 524), !dbg !5011
  %rstart340 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 0, !dbg !5011
  store ptr null, ptr %rstart340, align 8, !dbg !5011
  br label %do.cond341, !dbg !5011

do.cond341:                                       ; preds = %do.body330
  br label %do.end342, !dbg !5011

do.end342:                                        ; preds = %do.cond341
  call void @isccc_sexpr_free(ptr noundef %request), !dbg !5013
  call void @isccc_sexpr_free(ptr noundef %response), !dbg !5014
  call void @isc_buffer_free(ptr noundef %text), !dbg !5015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup363, !dbg !5016

cleanup_response:                                 ; preds = %cleanup196, %cleanup178, %if.then328, %if.then240, %if.then220, %if.then209, %if.then163
  tail call void @llvm.dbg.label(metadata !4558), !dbg !5017
  call void @isccc_sexpr_free(ptr noundef %response), !dbg !5018
  br label %cleanup_request, !dbg !5018

cleanup_request:                                  ; preds = %cleanup_response, %if.then154, %if.then136, %if.then129, %if.end115, %if.then102, %if.else, %if.then91, %if.then80, %if.then75
  tail call void @llvm.dbg.label(metadata !4559), !dbg !5019
  call void @isccc_sexpr_free(ptr noundef %request), !dbg !5020
  br label %do.body343, !dbg !5021

do.body343:                                       ; preds = %cleanup_request
  %190 = load ptr, ptr %listener, align 8, !dbg !5022
  %mctx344 = getelementptr inbounds %struct.controllistener, ptr %190, i32 0, i32 1, !dbg !5022
  %191 = load ptr, ptr %mctx344, align 8, !dbg !5022
  %rstart345 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 0, !dbg !5022
  %192 = load ptr, ptr %rstart345, align 8, !dbg !5022
  %rend346 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 1, !dbg !5022
  %193 = load ptr, ptr %rend346, align 8, !dbg !5022
  %rstart347 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 0, !dbg !5022
  %194 = load ptr, ptr %rstart347, align 8, !dbg !5022
  %sub.ptr.lhs.cast348 = ptrtoint ptr %193 to i64, !dbg !5022
  %sub.ptr.rhs.cast349 = ptrtoint ptr %194 to i64, !dbg !5022
  %sub.ptr.sub350 = sub i64 %sub.ptr.lhs.cast348, %sub.ptr.rhs.cast349, !dbg !5022
  %conv351 = trunc i64 %sub.ptr.sub350 to i32, !dbg !5022
  %conv352 = zext i32 %conv351 to i64, !dbg !5022
  call void @isc__mem_put(ptr noundef %191, ptr noundef %192, i64 noundef %conv352, ptr noundef @.str.4, i32 noundef 535), !dbg !5022
  %rstart353 = getelementptr inbounds %struct.isccc_region, ptr %secret, i32 0, i32 0, !dbg !5022
  store ptr null, ptr %rstart353, align 8, !dbg !5022
  br label %do.cond354, !dbg !5022

do.cond354:                                       ; preds = %do.body343
  br label %do.end355, !dbg !5022

do.end355:                                        ; preds = %do.cond354
  %195 = load ptr, ptr %text, align 8, !dbg !5024
  %cmp356 = icmp ne ptr %195, null, !dbg !5026
  br i1 %cmp356, label %if.then358, label %if.end359, !dbg !5027

if.then358:                                       ; preds = %do.end355
  call void @isc_buffer_free(ptr noundef %text), !dbg !5028
  br label %if.end359, !dbg !5028

if.end359:                                        ; preds = %if.then358, %do.end355
  br label %cleanup360, !dbg !5029

cleanup360:                                       ; preds = %if.end359, %cleanup, %if.then71, %if.end20, %if.then
  tail call void @llvm.dbg.label(metadata !4560), !dbg !5030
  %196 = load ptr, ptr %conn, align 8, !dbg !5031
  %sock361 = getelementptr inbounds %struct.controlconnection, ptr %196, i32 0, i32 0, !dbg !5032
  call void @isc_socket_detach(ptr noundef %sock361), !dbg !5033
  %197 = load ptr, ptr %conn, align 8, !dbg !5034
  %ccmsg362 = getelementptr inbounds %struct.controlconnection, ptr %197, i32 0, i32 1, !dbg !5035
  call void @isccc_ccmsg_invalidate(ptr noundef %ccmsg362), !dbg !5036
  %198 = load ptr, ptr %conn, align 8, !dbg !5037
  %ccmsg_valid = getelementptr inbounds %struct.controlconnection, ptr %198, i32 0, i32 2, !dbg !5038
  store i8 0, ptr %ccmsg_valid, align 8, !dbg !5039
  %199 = load ptr, ptr %conn, align 8, !dbg !5040
  call void @maybe_free_connection(ptr noundef %199), !dbg !5041
  %200 = load ptr, ptr %listener, align 8, !dbg !5042
  call void @maybe_free_listener(ptr noundef %200), !dbg !5043
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5044
  br label %cleanup363, !dbg !5044

cleanup363:                                       ; preds = %cleanup360, %do.end342, %cleanup196, %cleanup178, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 4, ptr %nonce) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 4, ptr %exp) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 4, ptr %sent) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ctrl) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 4, ptr %eresult) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 8, ptr %text) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 4, ptr %now) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 16, ptr %secret) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 4, ptr %algorithm) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 8, ptr %response) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 8, ptr %request) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 8, ptr %listener) #9, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 8, ptr %conn) #9, !dbg !5044
  %cleanup.dest381 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest381, label %unreachable [
    i32 0, label %cleanup.cont382
    i32 1, label %cleanup.cont382
  ]

cleanup.cont382:                                  ; preds = %cleanup363, %cleanup363
  ret void, !dbg !5044

unreachable:                                      ; preds = %cleanup363
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare !dbg !5045 void @isccc_ccmsg_invalidate(ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid uwtable
define internal void @log_invalid(ptr noundef %ccmsg, i32 noundef %result) #6 !dbg !5046 {
entry:
  %ccmsg.addr = alloca ptr, align 8
  %result.addr = alloca i32, align 4
  %socktext = alloca [63 x i8], align 16
  %peeraddr = alloca %struct.isc_sockaddr, align 8
  store ptr %ccmsg, ptr %ccmsg.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ccmsg.addr, metadata !5050, metadata !DIExpression()), !dbg !5054
  store i32 %result, ptr %result.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !5051, metadata !DIExpression()), !dbg !5055
  call void @llvm.lifetime.start.p0(i64 63, ptr %socktext) #9, !dbg !5056
  tail call void @llvm.dbg.declare(metadata ptr %socktext, metadata !5052, metadata !DIExpression()), !dbg !5057
  call void @llvm.lifetime.start.p0(i64 152, ptr %peeraddr) #9, !dbg !5058
  tail call void @llvm.dbg.declare(metadata ptr %peeraddr, metadata !5053, metadata !DIExpression()), !dbg !5059
  %0 = load ptr, ptr %ccmsg.addr, align 8, !dbg !5060
  %sock = getelementptr inbounds %struct.isccc_ccmsg, ptr %0, i32 0, i32 5, !dbg !5061
  %1 = load ptr, ptr %sock, align 8, !dbg !5061
  %call = call i32 @isc_socket_getpeername(ptr noundef %1, ptr noundef %peeraddr), !dbg !5062
  %arraydecay = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !5063
  call void @isc_sockaddr_format(ptr noundef %peeraddr, ptr noundef %arraydecay, i32 noundef 63), !dbg !5064
  %2 = load ptr, ptr @named_g_lctx, align 8, !dbg !5065
  %3 = load ptr, ptr @named_g_modules, align 8, !dbg !5066
  %arrayidx = getelementptr inbounds %struct.isc_logmodule, ptr %3, i64 2, !dbg !5066
  %arraydecay1 = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !5067
  %4 = load i32, ptr %result.addr, align 4, !dbg !5068
  %call2 = call ptr @isc_result_totext(i32 noundef %4), !dbg !5069
  call void (ptr, ptr, ptr, i32, ptr, ...) @isc_log_write(ptr noundef %2, ptr noundef getelementptr inbounds ([0 x %struct.isc_logcategory], ptr @isc_categories, i64 0, i64 1), ptr noundef %arrayidx, i32 noundef -4, ptr noundef @.str.76, ptr noundef %arraydecay1, ptr noundef %call2), !dbg !5070
  call void @llvm.lifetime.end.p0(i64 152, ptr %peeraddr) #9, !dbg !5071
  call void @llvm.lifetime.end.p0(i64 63, ptr %socktext) #9, !dbg !5071
  ret void, !dbg !5071
}

; Function Attrs: null_pointer_is_valid
declare !dbg !5072 i32 @isccc_cc_fromwire(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5077 zeroext i1 @isccc_cc_isreply(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5080 void @isc_stdtime_get(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5084 ptr @isccc_alist_lookup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5088 zeroext i1 @isccc_alist_alistp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5089 i32 @isccc_cc_lookupuint32(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5093 void @isccc_cc_cleansymtab(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5096 i32 @isccc_cc_checkdup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5099 i32 @isc_buffer_allocate(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5102 void @isc_nonce_buf(ptr noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5106 i32 @named_control_docommand(ptr noundef, i1 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5110 i32 @isccc_cc_createresponse(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5113 ptr @isccc_cc_defineuint32(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5116 ptr @isccc_cc_definestring(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5119 i32 @isccc_cc_towire(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5122 i32 @isc_buffer_reserve(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !5125 i32 @isc_socket_send(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @control_senddone(ptr noundef %task, ptr noundef %event) #0 !dbg !5129 {
entry:
  %task.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  %sevent = alloca ptr, align 8
  %conn = alloca ptr, align 8
  %listener = alloca ptr, align 8
  %sock = alloca ptr, align 8
  %result = alloca i32, align 4
  %socktext = alloca [63 x i8], align 16
  %peeraddr = alloca %struct.isc_sockaddr, align 8
  store ptr %task, ptr %task.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5131, metadata !DIExpression()), !dbg !5142
  store ptr %event, ptr %event.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !5132, metadata !DIExpression()), !dbg !5143
  call void @llvm.lifetime.start.p0(i64 8, ptr %sevent) #9, !dbg !5144
  tail call void @llvm.dbg.declare(metadata ptr %sevent, metadata !5133, metadata !DIExpression()), !dbg !5145
  %0 = load ptr, ptr %event.addr, align 8, !dbg !5146
  store ptr %0, ptr %sevent, align 8, !dbg !5145
  call void @llvm.lifetime.start.p0(i64 8, ptr %conn) #9, !dbg !5147
  tail call void @llvm.dbg.declare(metadata ptr %conn, metadata !5134, metadata !DIExpression()), !dbg !5148
  %1 = load ptr, ptr %event.addr, align 8, !dbg !5149
  %ev_arg = getelementptr inbounds %struct.isc_event, ptr %1, i32 0, i32 5, !dbg !5150
  %2 = load ptr, ptr %ev_arg, align 8, !dbg !5150
  store ptr %2, ptr %conn, align 8, !dbg !5148
  call void @llvm.lifetime.start.p0(i64 8, ptr %listener) #9, !dbg !5151
  tail call void @llvm.dbg.declare(metadata ptr %listener, metadata !5135, metadata !DIExpression()), !dbg !5152
  %3 = load ptr, ptr %conn, align 8, !dbg !5153
  %listener1 = getelementptr inbounds %struct.controlconnection, ptr %3, i32 0, i32 6, !dbg !5154
  %4 = load ptr, ptr %listener1, align 8, !dbg !5154
  store ptr %4, ptr %listener, align 8, !dbg !5152
  call void @llvm.lifetime.start.p0(i64 8, ptr %sock) #9, !dbg !5155
  tail call void @llvm.dbg.declare(metadata ptr %sock, metadata !5136, metadata !DIExpression()), !dbg !5156
  %5 = load ptr, ptr %sevent, align 8, !dbg !5157
  %ev_sender = getelementptr inbounds %struct.isc_socketevent, ptr %5, i32 0, i32 6, !dbg !5158
  %6 = load ptr, ptr %ev_sender, align 8, !dbg !5158
  store ptr %6, ptr %sock, align 8, !dbg !5156
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !5159
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !5137, metadata !DIExpression()), !dbg !5160
  %7 = load ptr, ptr %conn, align 8, !dbg !5161
  %sending = getelementptr inbounds %struct.controlconnection, ptr %7, i32 0, i32 3, !dbg !5161
  %8 = load i8, ptr %sending, align 1, !dbg !5161, !range !3038, !noundef !3039
  %tobool = trunc i8 %8 to i1, !dbg !5161
  %lnot = xor i1 %tobool, true, !dbg !5161
  %lnot2 = xor i1 %lnot, true, !dbg !5161
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5161
  %conv = sext i32 %lnot.ext to i64, !dbg !5161
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5161
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5161
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !5161

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str.4, i32 noundef 281, i32 noundef 0, ptr noundef @.str.77) #10, !dbg !5161
  unreachable, !dbg !5161

9:                                                ; No predecessors!
  br label %lor.end, !dbg !5161

lor.end:                                          ; preds = %9, %entry
  %10 = phi i1 [ true, %entry ], [ false, %9 ]
  %lor.ext = zext i1 %10 to i32, !dbg !5161
  %11 = load ptr, ptr %task.addr, align 8, !dbg !5162
  %12 = load ptr, ptr %conn, align 8, !dbg !5163
  %sending4 = getelementptr inbounds %struct.controlconnection, ptr %12, i32 0, i32 3, !dbg !5164
  store i8 0, ptr %sending4, align 1, !dbg !5165
  %13 = load ptr, ptr %sevent, align 8, !dbg !5166
  %result5 = getelementptr inbounds %struct.isc_socketevent, ptr %13, i32 0, i32 11, !dbg !5167
  %14 = load i32, ptr %result5, align 8, !dbg !5167
  %cmp = icmp ne i32 %14, 0, !dbg !5168
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5169

land.lhs.true:                                    ; preds = %lor.end
  %15 = load ptr, ptr %sevent, align 8, !dbg !5170
  %result7 = getelementptr inbounds %struct.isc_socketevent, ptr %15, i32 0, i32 11, !dbg !5171
  %16 = load i32, ptr %result7, align 8, !dbg !5171
  %cmp8 = icmp ne i32 %16, 20, !dbg !5172
  br i1 %cmp8, label %if.then, label %if.end, !dbg !5173

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 63, ptr %socktext) #9, !dbg !5174
  tail call void @llvm.dbg.declare(metadata ptr %socktext, metadata !5138, metadata !DIExpression()), !dbg !5175
  call void @llvm.lifetime.start.p0(i64 152, ptr %peeraddr) #9, !dbg !5176
  tail call void @llvm.dbg.declare(metadata ptr %peeraddr, metadata !5141, metadata !DIExpression()), !dbg !5177
  %17 = load ptr, ptr %sock, align 8, !dbg !5178
  %call = call i32 @isc_socket_getpeername(ptr noundef %17, ptr noundef %peeraddr), !dbg !5179
  %arraydecay = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !5180
  call void @isc_sockaddr_format(ptr noundef %peeraddr, ptr noundef %arraydecay, i32 noundef 63), !dbg !5181
  %18 = load ptr, ptr @named_g_lctx, align 8, !dbg !5182
  %19 = load ptr, ptr @named_g_modules, align 8, !dbg !5183
  %arrayidx = getelementptr inbounds %struct.isc_logmodule, ptr %19, i64 2, !dbg !5183
  %arraydecay10 = getelementptr inbounds [63 x i8], ptr %socktext, i64 0, i64 0, !dbg !5184
  %20 = load ptr, ptr %sevent, align 8, !dbg !5185
  %result11 = getelementptr inbounds %struct.isc_socketevent, ptr %20, i32 0, i32 11, !dbg !5186
  %21 = load i32, ptr %result11, align 8, !dbg !5186
  %call12 = call ptr @isc_result_totext(i32 noundef %21), !dbg !5187
  call void (ptr, ptr, ptr, i32, ptr, ...) @isc_log_write(ptr noundef %18, ptr noundef getelementptr inbounds ([0 x %struct.isc_logcategory], ptr @isc_categories, i64 0, i64 1), ptr noundef %arrayidx, i32 noundef -3, ptr noundef @.str.78, ptr noundef %arraydecay10, ptr noundef %call12), !dbg !5188
  call void @llvm.lifetime.end.p0(i64 152, ptr %peeraddr) #9, !dbg !5189
  call void @llvm.lifetime.end.p0(i64 63, ptr %socktext) #9, !dbg !5189
  br label %if.end, !dbg !5190

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.end
  call void @isc_event_free(ptr noundef %event.addr), !dbg !5191
  %22 = load ptr, ptr %conn, align 8, !dbg !5192
  %ccmsg = getelementptr inbounds %struct.controlconnection, ptr %22, i32 0, i32 1, !dbg !5193
  %23 = load ptr, ptr %listener, align 8, !dbg !5194
  %task13 = getelementptr inbounds %struct.controllistener, ptr %23, i32 0, i32 2, !dbg !5195
  %24 = load ptr, ptr %task13, align 8, !dbg !5195
  %25 = load ptr, ptr %conn, align 8, !dbg !5196
  %call14 = call i32 @isccc_ccmsg_readmessage(ptr noundef %ccmsg, ptr noundef %24, ptr noundef @control_recvmessage, ptr noundef %25), !dbg !5197
  store i32 %call14, ptr %result, align 4, !dbg !5198
  %26 = load i32, ptr %result, align 4, !dbg !5199
  %cmp15 = icmp ne i32 %26, 0, !dbg !5201
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !5202

if.then17:                                        ; preds = %if.end
  %27 = load ptr, ptr %conn, align 8, !dbg !5203
  %sock18 = getelementptr inbounds %struct.controlconnection, ptr %27, i32 0, i32 0, !dbg !5205
  call void @isc_socket_detach(ptr noundef %sock18), !dbg !5206
  %28 = load ptr, ptr %conn, align 8, !dbg !5207
  call void @maybe_free_connection(ptr noundef %28), !dbg !5208
  %29 = load ptr, ptr %listener, align 8, !dbg !5209
  call void @maybe_free_listener(ptr noundef %29), !dbg !5210
  br label %if.end19, !dbg !5211

if.end19:                                         ; preds = %if.then17, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 8, ptr %sock) #9, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 8, ptr %listener) #9, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 8, ptr %conn) #9, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 8, ptr %sevent) #9, !dbg !5212
  ret void, !dbg !5212
}

; Function Attrs: null_pointer_is_valid
declare !dbg !5213 void @isccc_sexpr_free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #8

attributes #0 = { nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!275}
!llvm.module.flags = !{!565, !566, !567, !568, !569}
!llvm.ident = !{!570}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1287, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "controlconf.c", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/named", checksumkind: CSK_MD5, checksum: "6078f9f7b88d8e13f91e7cd499630531")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 9)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1305, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 5)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1323, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 8)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1336, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 30)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1348, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 14)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1348, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 35)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1348, type: !30, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1348, type: !30, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1348, type: !30, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1371, type: !10, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1390, type: !10, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1398, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 25)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1408, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 32)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1527, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 43)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 51)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !60, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !60, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !60, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 31)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 39)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !76, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !76, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !76, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 18)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 21)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 45)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !45, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !45, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !45, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !45, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1019, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 29)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1044, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 53)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1059, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 6)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1070, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 10)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1082, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 52)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1094, type: !10, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1095, type: !120, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1096, type: !120, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1108, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 60)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 953, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 64)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 954, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 66)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 956, type: !10, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 960, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 4)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !2, line: 772, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 55)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !2, line: 775, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 26)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !2, line: 775, type: !168, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !2, line: 775, type: !168, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 775, type: !168, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !2, line: 784, type: !125, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 785, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 7)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !2, line: 786, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 48)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !2, line: 796, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 71)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 812, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 46)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !2, line: 827, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 42)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 863, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 38)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 897, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 544, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 68)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 910, type: !55, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1194, type: !218, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 49)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1217, type: !15, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1247, type: !50, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1258, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 36)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 263, type: !71, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !71, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 642, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 41)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 654, type: !227, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 345, type: !227, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !120, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !2, line: 413, type: !10, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !2, line: 426, type: !10, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !2, line: 445, type: !181, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !2, line: 471, type: !120, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !2, line: 473, type: !181, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !158, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !2, line: 488, type: !10, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !2, line: 514, type: !196, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !2, line: 514, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 37)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !2, line: 320, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 28)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !25, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !2, line: 297, type: !236, isLocal: true, isDefinition: true)
!275 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, retainedTypes: !349, globals: !564, splitDebugInlining: false, nameTableKind: None)
!276 = !{!277, !285, !294, !303, !310, !313, !320, !327, !330, !339}
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !278, line: 29, baseType: !279, size: 32, elements: !280)
!278 = !DIFile(filename: "lib/ns/include/ns/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "741676fd61bb76e3a4b06825bd61f1d2")
!279 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!280 = !{!281, !282, !283, !284}
!281 = !DIEnumerator(name: "ns_cookiealg_aes", value: 0)
!282 = !DIEnumerator(name: "ns_cookiealg_sha1", value: 1)
!283 = !DIEnumerator(name: "ns_cookiealg_sha256", value: 2)
!284 = !DIEnumerator(name: "ns_cookiealg_siphash24", value: 3)
!285 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !286, line: 46, baseType: !279, size: 32, elements: !287)
!286 = !DIFile(filename: "lib/dns/include/dns/acl.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "8449665ae1220470df829fb8ddc3551d")
!287 = !{!288, !289, !290, !291, !292, !293}
!288 = !DIEnumerator(name: "dns_aclelementtype_ipprefix", value: 0)
!289 = !DIEnumerator(name: "dns_aclelementtype_keyname", value: 1)
!290 = !DIEnumerator(name: "dns_aclelementtype_nestedacl", value: 2)
!291 = !DIEnumerator(name: "dns_aclelementtype_localhost", value: 3)
!292 = !DIEnumerator(name: "dns_aclelementtype_localnets", value: 4)
!293 = !DIEnumerator(name: "dns_aclelementtype_any", value: 5)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !295, line: 15, baseType: !279, size: 32, elements: !296)
!295 = !DIFile(filename: "lib/isc/include/isc/fuzz.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "7e3d34fc712bb7cc246c6050a158d8ef")
!296 = !{!297, !298, !299, !300, !301, !302}
!297 = !DIEnumerator(name: "isc_fuzz_none", value: 0)
!298 = !DIEnumerator(name: "isc_fuzz_client", value: 1)
!299 = !DIEnumerator(name: "isc_fuzz_tcpclient", value: 2)
!300 = !DIEnumerator(name: "isc_fuzz_resolver", value: 3)
!301 = !DIEnumerator(name: "isc_fuzz_http", value: 4)
!302 = !DIEnumerator(name: "isc_fuzz_rndc", value: 5)
!303 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !304, line: 213, baseType: !279, size: 32, elements: !305)
!304 = !DIFile(filename: "lib/dns/include/dns/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f35a187441d60b1b4301c816339e75b0")
!305 = !{!306, !307, !308, !309}
!306 = !DIEnumerator(name: "dns_masterformat_none", value: 0)
!307 = !DIEnumerator(name: "dns_masterformat_text", value: 1)
!308 = !DIEnumerator(name: "dns_masterformat_raw", value: 2)
!309 = !DIEnumerator(name: "dns_masterformat_map", value: 3)
!310 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !304, line: 164, baseType: !279, size: 32, elements: !311)
!311 = !{!312}
!312 = !DIEnumerator(name: "dns_hash_sha1", value: 1)
!313 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !314, line: 242, baseType: !279, size: 32, elements: !315)
!314 = !DIFile(filename: "lib/isc/include/isc/socket.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "839d8202853f11cf2eee5c6ae0e29df0")
!315 = !{!316, !317, !318, !319}
!316 = !DIEnumerator(name: "isc_sockettype_udp", value: 1)
!317 = !DIEnumerator(name: "isc_sockettype_tcp", value: 2)
!318 = !DIEnumerator(name: "isc_sockettype_unix", value: 3)
!319 = !DIEnumerator(name: "isc_sockettype_raw", value: 4)
!320 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !321, line: 25, baseType: !279, size: 32, elements: !322)
!321 = !DIFile(filename: "lib/isc/include/isc/assertions.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "d437064b1a440cf5712e89d244b6208d")
!322 = !{!323, !324, !325, !326}
!323 = !DIEnumerator(name: "isc_assertiontype_require", value: 0)
!324 = !DIEnumerator(name: "isc_assertiontype_ensure", value: 1)
!325 = !DIEnumerator(name: "isc_assertiontype_insist", value: 2)
!326 = !DIEnumerator(name: "isc_assertiontype_invariant", value: 3)
!327 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !314, line: 85, baseType: !279, size: 32, elements: !328)
!328 = !{!329}
!329 = !DIEnumerator(name: "ISC_SOCKET_REUSEADDRESS", value: 1)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !331, line: 83, baseType: !332, size: 32, elements: !333)
!331 = !DIFile(filename: "lib/isc/include/isc/timer.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "fb32aeeb353e38cff055b720a3f7e611")
!332 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!333 = !{!334, !335, !336, !337, !338}
!334 = !DIEnumerator(name: "isc_timertype_undefined", value: -1)
!335 = !DIEnumerator(name: "isc_timertype_ticker", value: 0)
!336 = !DIEnumerator(name: "isc_timertype_once", value: 1)
!337 = !DIEnumerator(name: "isc_timertype_limited", value: 2)
!338 = !DIEnumerator(name: "isc_timertype_inactive", value: 3)
!339 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !314, line: 184, baseType: !279, size: 32, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348}
!341 = !DIEnumerator(name: "ISC_SOCKEVENTATTR_ATTACHED", value: 268435456)
!342 = !DIEnumerator(name: "ISC_SOCKEVENTATTR_TRUNC", value: 8388608)
!343 = !DIEnumerator(name: "ISC_SOCKEVENTATTR_CTRUNC", value: 4194304)
!344 = !DIEnumerator(name: "ISC_SOCKEVENTATTR_TIMESTAMP", value: 2097152)
!345 = !DIEnumerator(name: "ISC_SOCKEVENTATTR_PKTINFO", value: 1048576)
!346 = !DIEnumerator(name: "ISC_SOCKEVENTATTR_MULTICAST", value: 524288)
!347 = !DIEnumerator(name: "ISC_SOCKEVENTATTR_DSCP", value: 262144)
!348 = !DIEnumerator(name: "ISC_SOCKEVENTATTR_USEMINMTU", value: 131072)
!349 = !{!350, !351, !357, !511, !279, !512, !462, !513, !422}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !352, line: 30, baseType: !353)
!352 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !354, line: 26, baseType: !355)
!354 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !356, line: 42, baseType: !279)
!356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_socket_newconnev_t", file: !314, line: 216, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_socket_newconnev", file: !314, line: 217, size: 2176, elements: !360)
!360 = !{!361, !365, !366, !367, !370, !407, !408, !409, !410, !411, !416, !421, !428, !430}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ev_size", scope: !359, file: !314, line: 218, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !363, line: 70, baseType: !364)
!363 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!364 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ev_attributes", scope: !359, file: !314, line: 218, baseType: !279, size: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ev_tag", scope: !359, file: !314, line: 218, baseType: !350, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ev_type", scope: !359, file: !314, line: 218, baseType: !368, size: 32, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_eventtype_t", file: !369, line: 43, baseType: !279)
!369 = !DIFile(filename: "lib/isc/include/isc/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "6a355582c4f962c465b18bab43b68c96")
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ev_action", scope: !359, file: !314, line: 218, baseType: !371, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_taskaction_t", file: !369, line: 85, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375, !378}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_task_t", file: !369, line: 77, baseType: !377)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_task", file: !369, line: 77, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_event_t", file: !369, line: 41, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_event", file: !381, line: 75, size: 832, elements: !382)
!381 = !DIFile(filename: "lib/isc/include/isc/event.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "d58366ca324676a5c39720df6fa77dae")
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !395, !396, !402}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ev_size", scope: !380, file: !381, line: 76, baseType: !362, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ev_attributes", scope: !380, file: !381, line: 76, baseType: !279, size: 32, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ev_tag", scope: !380, file: !381, line: 76, baseType: !350, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ev_type", scope: !380, file: !381, line: 76, baseType: !368, size: 32, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ev_action", scope: !380, file: !381, line: 76, baseType: !371, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ev_arg", scope: !380, file: !381, line: 76, baseType: !350, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ev_sender", scope: !380, file: !381, line: 76, baseType: !350, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ev_destroy", scope: !380, file: !381, line: 76, baseType: !391, size: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_eventdestructor_t", file: !381, line: 25, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !378}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ev_destroy_arg", scope: !380, file: !381, line: 76, baseType: !350, size: 64, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ev_link", scope: !380, file: !381, line: 76, baseType: !397, size: 128, offset: 576)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !381, line: 76, size: 128, elements: !398)
!398 = !{!399, !401}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !397, file: !381, line: 76, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !381, line: 76, baseType: !400, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ev_ratelink", scope: !380, file: !381, line: 76, baseType: !403, size: 128, offset: 704)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !381, line: 76, size: 128, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !403, file: !381, line: 76, baseType: !400, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !381, line: 76, baseType: !400, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ev_arg", scope: !359, file: !314, line: 218, baseType: !350, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ev_sender", scope: !359, file: !314, line: 218, baseType: !350, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ev_destroy", scope: !359, file: !314, line: 218, baseType: !391, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ev_destroy_arg", scope: !359, file: !314, line: 218, baseType: !350, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "ev_link", scope: !359, file: !314, line: 218, baseType: !412, size: 128, offset: 576)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !359, file: !314, line: 218, size: 128, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !412, file: !314, line: 218, baseType: !357, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !314, line: 218, baseType: !357, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ev_ratelink", scope: !359, file: !314, line: 218, baseType: !417, size: 128, offset: 704)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !359, file: !314, line: 218, size: 128, elements: !418)
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !417, file: !314, line: 218, baseType: !357, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !314, line: 218, baseType: !357, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "newsocket", scope: !359, file: !314, line: 219, baseType: !422, size: 64, offset: 832)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_socket_t", file: !369, line: 71, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_socket", file: !314, line: 306, size: 64, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !424, file: !314, line: 307, baseType: !279, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !424, file: !314, line: 308, baseType: !279, size: 32, offset: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !359, file: !314, line: 220, baseType: !429, size: 32, offset: 896)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_result_t", file: !369, line: 67, baseType: !279)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !359, file: !314, line: 221, baseType: !431, size: 1216, offset: 960)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_sockaddr_t", file: !369, line: 69, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_sockaddr", file: !433, line: 27, size: 1216, elements: !434)
!433 = !DIFile(filename: "lib/isc/include/isc/sockaddr.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "b46a0f057942d922d0824c5621821d46")
!434 = !{!435, !504, !505}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !432, file: !433, line: 36, baseType: !436, size: 1024)
!436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !433, line: 28, size: 1024, elements: !437)
!437 = !{!438, !448, !463, !486, !495}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !436, file: !433, line: 29, baseType: !439, size: 128)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !440, line: 180, size: 128, elements: !441)
!440 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!441 = !{!442, !446}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !439, file: !440, line: 182, baseType: !443, size: 16)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !444, line: 28, baseType: !445)
!444 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!445 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !439, file: !440, line: 183, baseType: !447, size: 112, offset: 16)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 112, elements: !26)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !436, file: !433, line: 30, baseType: !449, size: 128)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !352, line: 245, size: 128, elements: !450)
!450 = !{!451, !452, !456, !460}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !449, file: !352, line: 247, baseType: !443, size: 16)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !449, file: !352, line: 248, baseType: !453, size: 16, offset: 16)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !352, line: 123, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !354, line: 25, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !356, line: 40, baseType: !445)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !449, file: !352, line: 249, baseType: !457, size: 32, offset: 32)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !352, line: 31, size: 32, elements: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !457, file: !352, line: 33, baseType: !351, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !449, file: !352, line: 252, baseType: !461, size: 64, offset: 64)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 64, elements: !16)
!462 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sin6", scope: !436, file: !433, line: 31, baseType: !464, size: 224)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !352, line: 260, size: 224, elements: !465)
!465 = !{!466, !467, !468, !469, !485}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !464, file: !352, line: 262, baseType: !443, size: 16)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !464, file: !352, line: 263, baseType: !453, size: 16, offset: 16)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !464, file: !352, line: 264, baseType: !353, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !464, file: !352, line: 265, baseType: !470, size: 128, offset: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !352, line: 219, size: 128, elements: !471)
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !470, file: !352, line: 226, baseType: !473, size: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !352, line: 221, size: 128, elements: !474)
!474 = !{!475, !481, !483}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !473, file: !352, line: 223, baseType: !476, size: 128)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 128, elements: !479)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !354, line: 24, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !356, line: 38, baseType: !462)
!479 = !{!480}
!480 = !DISubrange(count: 16)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !473, file: !352, line: 224, baseType: !482, size: 128)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 128, elements: !16)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !473, file: !352, line: 225, baseType: !484, size: 128)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 128, elements: !159)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !464, file: !352, line: 266, baseType: !353, size: 32, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !436, file: !433, line: 32, baseType: !487, size: 1024)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !440, line: 193, size: 1024, elements: !488)
!488 = !{!489, !490, !494}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !487, file: !440, line: 195, baseType: !443, size: 16)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !487, file: !440, line: 196, baseType: !491, size: 944, offset: 16)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 944, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 118)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !487, file: !440, line: 197, baseType: !364, size: 64, offset: 960)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sunix", scope: !436, file: !433, line: 34, baseType: !496, size: 880)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !497, line: 29, size: 880, elements: !498)
!497 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !496, file: !497, line: 31, baseType: !443, size: 16)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !496, file: !497, line: 32, baseType: !501, size: 864, offset: 16)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 864, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 108)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !432, file: !433, line: 37, baseType: !279, size: 32, offset: 1024)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !432, file: !433, line: 38, baseType: !506, size: 128, offset: 1088)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !432, file: !433, line: 38, size: 128, elements: !507)
!507 = !{!508, !510}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !506, file: !433, line: 38, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !433, line: 38, baseType: !509, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_socketevent_t", file: !369, line: 72, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_socketevent", file: !314, line: 200, size: 2688, elements: !516)
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !531, !536, !537, !538, !539, !540, !547, !548, !555, !560, !562, !563}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ev_size", scope: !515, file: !314, line: 201, baseType: !362, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ev_attributes", scope: !515, file: !314, line: 201, baseType: !279, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ev_tag", scope: !515, file: !314, line: 201, baseType: !350, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ev_type", scope: !515, file: !314, line: 201, baseType: !368, size: 32, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ev_action", scope: !515, file: !314, line: 201, baseType: !371, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ev_arg", scope: !515, file: !314, line: 201, baseType: !350, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ev_sender", scope: !515, file: !314, line: 201, baseType: !350, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ev_destroy", scope: !515, file: !314, line: 201, baseType: !391, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ev_destroy_arg", scope: !515, file: !314, line: 201, baseType: !350, size: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ev_link", scope: !515, file: !314, line: 201, baseType: !527, size: 128, offset: 576)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !515, file: !314, line: 201, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !527, file: !314, line: 201, baseType: !513, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !314, line: 201, baseType: !513, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ev_ratelink", scope: !515, file: !314, line: 201, baseType: !532, size: 128, offset: 704)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !515, file: !314, line: 201, size: 128, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !532, file: !314, line: 201, baseType: !513, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !532, file: !314, line: 201, baseType: !513, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !515, file: !314, line: 202, baseType: !429, size: 32, offset: 832)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !515, file: !314, line: 203, baseType: !279, size: 32, offset: 864)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !515, file: !314, line: 204, baseType: !279, size: 32, offset: 896)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !515, file: !314, line: 205, baseType: !279, size: 32, offset: 928)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !515, file: !314, line: 206, baseType: !541, size: 128, offset: 960)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_region_t", file: !369, line: 65, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_region", file: !543, line: 21, size: 128, elements: !544)
!543 = !DIFile(filename: "lib/isc/include/isc/region.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "2ed4a07dc05ddbd48f51e2dc9be9f317")
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !542, file: !543, line: 22, baseType: !511, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !542, file: !543, line: 23, baseType: !279, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !515, file: !314, line: 207, baseType: !431, size: 1216, offset: 1088)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !515, file: !314, line: 208, baseType: !549, size: 64, offset: 2304)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_time_t", file: !369, line: 81, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_time", file: !551, line: 86, size: 64, elements: !552)
!551 = !DIFile(filename: "../../lib/isc/unix/include/isc/time.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/named", checksumkind: CSK_MD5, checksum: "a0595c59a7eba4194a4b687b13cdc892")
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "seconds", scope: !550, file: !551, line: 87, baseType: !279, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nanoseconds", scope: !550, file: !551, line: 88, baseType: !279, size: 32, offset: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "pktinfo", scope: !515, file: !314, line: 209, baseType: !556, size: 160, offset: 2368)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_pktinfo", file: !352, line: 544, size: 160, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ipi6_addr", scope: !556, file: !352, line: 546, baseType: !470, size: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ipi6_ifindex", scope: !556, file: !352, line: 547, baseType: !279, size: 32, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !515, file: !314, line: 210, baseType: !561, size: 32, offset: 2528)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_sockeventattr_t", file: !314, line: 193, baseType: !339)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !515, file: !314, line: 212, baseType: !391, size: 64, offset: 2560)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dscp", scope: !515, file: !314, line: 213, baseType: !279, size: 32, offset: 2624)
!564 = !{!0, !8, !13, !18, !23, !28, !33, !35, !37, !39, !41, !43, !48, !53, !58, !63, !65, !67, !69, !74, !79, !81, !83, !85, !90, !95, !100, !102, !104, !106, !108, !113, !118, !123, !128, !133, !135, !137, !139, !144, !149, !154, !156, !161, !166, !171, !173, !175, !177, !179, !184, !189, !194, !199, !204, !209, !214, !216, !221, !223, !225, !230, !232, !234, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !266, !271, !273}
!565 = !{i32 7, !"Dwarf Version", i32 5}
!566 = !{i32 2, !"Debug Info Version", i32 3}
!567 = !{i32 1, !"wchar_size", i32 4}
!568 = !{i32 8, !"PIC Level", i32 2}
!569 = !{i32 7, !"uwtable", i32 2}
!570 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!571 = distinct !DISubprogram(name: "named_controls_shutdown", scope: !2, file: !2, line: 685, type: !572, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !1672)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "named_controls_t", file: !576, line: 24, baseType: !577)
!576 = !DIFile(filename: "./include/named/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/named", checksumkind: CSK_MD5, checksum: "10261bb0a5a535c3531ce24c2fbc481e")
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_controls", file: !2, line: 107, size: 320, elements: !578)
!578 = !{!579, !1580, !1666, !1667}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !577, file: !2, line: 108, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "named_server_t", file: !576, line: 21, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_server", file: !583, line: 46, size: 3392, elements: !584)
!583 = !DIFile(filename: "./include/named/server.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/named", checksumkind: CSK_MD5, checksum: "092f587cc43b48ab53d3523be40a56dc")
!584 = !{!585, !586, !626, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1159, !1163, !1169, !1173, !1488, !1495, !1496, !1497, !1498, !1499, !1500, !1532, !1533, !1534, !1535, !1544, !1545, !1546, !1547, !1548, !1549, !1558, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1579}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !582, file: !583, line: 47, baseType: !279, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !582, file: !583, line: 48, baseType: !587, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mem_t", file: !369, line: 59, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mem", file: !590, line: 191, size: 128, elements: !591)
!590 = !DIFile(filename: "lib/isc/include/isc/mem.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "587a841195795b087519b89f298822b2")
!591 = !{!592, !593, !594}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !589, file: !590, line: 192, baseType: !279, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !589, file: !590, line: 193, baseType: !279, size: 32, offset: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !589, file: !590, line: 194, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_memmethods_t", file: !590, line: 180, baseType: !597)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_memmethods", file: !590, line: 170, size: 448, elements: !598)
!598 = !{!599, !604, !608, !613, !614, !618, !622}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "memget", scope: !597, file: !590, line: 171, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!350, !587, !362, !603, !279}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "memput", scope: !597, file: !590, line: 172, baseType: !605, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !587, !350, !362, !603, !279}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "memputanddetach", scope: !597, file: !590, line: 173, baseType: !609, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !612, !350, !362, !603, !279}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "memallocate", scope: !597, file: !590, line: 175, baseType: !600, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "memreallocate", scope: !597, file: !590, line: 176, baseType: !615, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!350, !587, !350, !362, !603, !279}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "memstrdup", scope: !597, file: !590, line: 178, baseType: !619, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!512, !587, !603, !603, !279}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "memfree", scope: !597, file: !590, line: 179, baseType: !623, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !587, !350, !603, !279}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sctx", scope: !582, file: !583, line: 50, baseType: !627, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "ns_server_t", file: !278, line: 26, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_server", file: !630, line: 75, size: 2816, elements: !631)
!630 = !DIFile(filename: "lib/ns/include/ns/server.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "084f652828816dc138a60eb3ef03eaca")
!631 = !{!632, !633, !634, !642, !644, !646, !662, !664, !672, !673, !674, !675, !676, !677, !678, !679, !680, !1080, !1081, !1082, !1083, !1084, !1088, !1089, !1094, !1096, !1101, !1124, !1128, !1132, !1133, !1134, !1138, !1139, !1140, !1141, !1142, !1143, !1144}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !629, file: !630, line: 76, baseType: !279, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !629, file: !630, line: 77, baseType: !587, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !629, file: !630, line: 79, baseType: !635, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_refcount_t", file: !636, line: 33, baseType: !637)
!636 = !DIFile(filename: "lib/isc/include/isc/refcount.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "91efe302f7658e72e20c0f8ed1bea09f")
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_uint_fast32_t", file: !638, line: 123, baseType: !639)
!638 = !DIFile(filename: "/usr/lib/clang/18/include/stdatomic.h", directory: "", checksumkind: CSK_MD5, checksum: "1c2aee2a953dfc5407753d1f439b6977")
!639 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !641, line: 74, baseType: !364)
!641 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!642 = !DIDerivedType(tag: DW_TAG_member, name: "secret", scope: !629, file: !630, line: 82, baseType: !643, size: 256, offset: 192)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 256, elements: !51)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cookiealg", scope: !629, file: !630, line: 83, baseType: !645, size: 32, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "ns_cookiealg_t", file: !278, line: 34, baseType: !277)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "altsecrets", scope: !629, file: !630, line: 84, baseType: !647, size: 128, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "ns_altsecretlist_t", file: !278, line: 18, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !278, line: 18, size: 128, elements: !649)
!649 = !{!650, !661}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !648, file: !278, line: 18, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "ns_altsecret_t", file: !278, line: 17, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_altsecret", file: !630, line: 136, size: 384, elements: !654)
!654 = !{!655, !660}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !653, file: !630, line: 137, baseType: !656, size: 128)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !653, file: !630, line: 137, size: 128, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !656, file: !630, line: 137, baseType: !651, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !656, file: !630, line: 137, baseType: !651, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "secret", scope: !653, file: !630, line: 138, baseType: !643, size: 256, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !648, file: !278, line: 18, baseType: !651, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "answercookie", scope: !629, file: !630, line: 85, baseType: !663, size: 8, offset: 640)
!663 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "recursionquota", scope: !629, file: !630, line: 88, baseType: !665, size: 192, offset: 704)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_quota_t", file: !369, line: 63, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_quota", file: !667, line: 45, size: 192, elements: !668)
!667 = !DIFile(filename: "lib/isc/include/isc/quota.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "08fac01d96524b90a5cd1eebb02bedf2")
!668 = !{!669, !670, !671}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !666, file: !667, line: 46, baseType: !637, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !666, file: !667, line: 47, baseType: !637, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !666, file: !667, line: 48, baseType: !637, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tcpquota", scope: !629, file: !630, line: 89, baseType: !665, size: 192, offset: 896)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "xfroutquota", scope: !629, file: !630, line: 90, baseType: !665, size: 192, offset: 1088)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !629, file: !630, line: 93, baseType: !353, size: 32, offset: 1280)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !629, file: !630, line: 94, baseType: !279, size: 32, offset: 1312)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "initialtimo", scope: !629, file: !630, line: 96, baseType: !279, size: 32, offset: 1344)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "idletimo", scope: !629, file: !630, line: 97, baseType: !279, size: 32, offset: 1376)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "keepalivetimo", scope: !629, file: !630, line: 98, baseType: !279, size: 32, offset: 1408)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "advertisedtimo", scope: !629, file: !630, line: 99, baseType: !279, size: 32, offset: 1440)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "blackholeacl", scope: !629, file: !630, line: 101, baseType: !681, size: 64, offset: 1472)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_acl_t", file: !304, line: 30, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_acl", file: !286, line: 76, size: 640, elements: !684)
!684 = !{!685, !686, !687, !688, !744, !1071, !1072, !1073, !1074, !1075}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !683, file: !286, line: 77, baseType: !279, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !683, file: !286, line: 78, baseType: !587, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !683, file: !286, line: 79, baseType: !635, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "iptable", scope: !683, file: !286, line: 80, baseType: !689, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_iptable_t", file: !304, line: 92, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_iptable", file: !692, line: 24, size: 384, elements: !693)
!692 = !DIFile(filename: "lib/dns/include/dns/iptable.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "44ddbfe18541d6c9d7b36fcfec983270")
!693 = !{!694, !695, !696, !697, !739}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !691, file: !692, line: 25, baseType: !279, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !691, file: !692, line: 26, baseType: !587, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !691, file: !692, line: 27, baseType: !635, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "radix", scope: !691, file: !692, line: 28, baseType: !698, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_radix_tree_t", file: !700, line: 108, baseType: !701)
!700 = !DIFile(filename: "lib/isc/include/isc/radix.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "349efdba94ad90663f1e49de2024c1c4")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_radix_tree", file: !700, line: 101, size: 320, elements: !702)
!702 = !{!703, !704, !705, !736, !737, !738}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !701, file: !700, line: 102, baseType: !279, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !701, file: !700, line: 103, baseType: !587, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !701, file: !700, line: 104, baseType: !706, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_radix_node_t", file: !700, line: 96, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_radix_node", file: !700, line: 87, size: 576, elements: !709)
!709 = !{!710, !711, !712, !726, !728, !729, !730, !734}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !708, file: !700, line: 88, baseType: !587, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "bit", scope: !708, file: !700, line: 89, baseType: !353, size: 32, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !708, file: !700, line: 90, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_prefix_t", file: !700, line: 54, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_prefix", file: !700, line: 45, size: 320, elements: !716)
!716 = !{!717, !718, !719, !720, !721}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !715, file: !700, line: 46, baseType: !587, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !715, file: !700, line: 47, baseType: !279, size: 32, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "bitlen", scope: !715, file: !700, line: 48, baseType: !279, size: 32, offset: 96)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !715, file: !700, line: 49, baseType: !635, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !715, file: !700, line: 53, baseType: !722, size: 128, offset: 192)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !700, line: 50, size: 128, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !722, file: !700, line: 51, baseType: !457, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sin6", scope: !722, file: !700, line: 52, baseType: !470, size: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !708, file: !700, line: 91, baseType: !727, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !708, file: !700, line: 91, baseType: !727, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !708, file: !700, line: 92, baseType: !727, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !708, file: !700, line: 93, baseType: !731, size: 128, offset: 384)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 128, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 2)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "node_num", scope: !708, file: !700, line: 94, baseType: !735, size: 64, offset: 512)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 64, elements: !732)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "maxbits", scope: !701, file: !700, line: 105, baseType: !353, size: 32, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_node", scope: !701, file: !700, line: 106, baseType: !332, size: 32, offset: 224)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "num_added_node", scope: !701, file: !700, line: 107, baseType: !332, size: 32, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "nextincache", scope: !691, file: !692, line: 29, baseType: !740, size: 128, offset: 256)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !692, line: 29, size: 128, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !740, file: !692, line: 29, baseType: !689, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !740, file: !692, line: 29, baseType: !689, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !683, file: !286, line: 82, baseType: !745, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_aclelement_t", file: !304, line: 31, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_aclelement", file: !286, line: 65, size: 832, elements: !748)
!748 = !{!749, !751, !752, !1069, !1070}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !286, line: 66, baseType: !750, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_aclelementtype_t", file: !286, line: 56, baseType: !285)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "negative", scope: !747, file: !286, line: 67, baseType: !663, size: 8, offset: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "keyname", scope: !747, file: !286, line: 68, baseType: !753, size: 640, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_name_t", file: !304, line: 107, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_name", file: !755, line: 104, size: 640, elements: !756)
!755 = !DIFile(filename: "lib/dns/include/dns/name.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "ec64c9a43875cd86cb4b0e37c1191a89")
!756 = !{!757, !758, !759, !760, !761, !762, !763, !782, !788}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !754, file: !755, line: 105, baseType: !279, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ndata", scope: !754, file: !755, line: 106, baseType: !511, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !754, file: !755, line: 107, baseType: !279, size: 32, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !754, file: !755, line: 108, baseType: !279, size: 32, offset: 160)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !754, file: !755, line: 109, baseType: !279, size: 32, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !754, file: !755, line: 110, baseType: !511, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !754, file: !755, line: 111, baseType: !764, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_buffer_t", file: !369, line: 35, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_buffer", file: !767, line: 173, size: 512, elements: !768)
!767 = !DIFile(filename: "lib/isc/include/isc/buffer.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "feec9784066f3891a27281dd5bdccd55")
!768 = !{!769, !770, !771, !772, !773, !774, !775, !780, !781}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !766, file: !767, line: 174, baseType: !279, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !766, file: !767, line: 175, baseType: !350, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !766, file: !767, line: 178, baseType: !279, size: 32, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !766, file: !767, line: 179, baseType: !279, size: 32, offset: 160)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !766, file: !767, line: 180, baseType: !279, size: 32, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !766, file: !767, line: 181, baseType: !279, size: 32, offset: 224)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !766, file: !767, line: 184, baseType: !776, size: 128, offset: 256)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !767, line: 184, size: 128, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !776, file: !767, line: 184, baseType: !764, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !776, file: !767, line: 184, baseType: !764, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !766, file: !767, line: 186, baseType: !587, size: 64, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "autore", scope: !766, file: !767, line: 188, baseType: !663, size: 8, offset: 448)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !754, file: !755, line: 112, baseType: !783, size: 128, offset: 384)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !754, file: !755, line: 112, size: 128, elements: !784)
!784 = !{!785, !787}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !783, file: !755, line: 112, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !783, file: !755, line: 112, baseType: !786, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !754, file: !755, line: 113, baseType: !789, size: 128, offset: 512)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !754, file: !755, line: 113, size: 128, elements: !790)
!790 = !{!791, !1068}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !789, file: !755, line: 113, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataset_t", file: !304, line: 123, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdataset", file: !795, line: 107, size: 960, elements: !796)
!795 = !DIFile(filename: "lib/dns/include/dns/rdataset.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "a2414fd23f718a363582354673aed6a8")
!796 = !{!797, !798, !1044, !1049, !1050, !1051, !1053, !1054, !1055, !1056, !1057, !1058, !1061, !1062, !1063, !1064, !1065, !1066, !1067}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !794, file: !795, line: 108, baseType: !279, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !794, file: !795, line: 109, baseType: !799, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetmethods_t", file: !795, line: 96, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetmethods", file: !795, line: 64, size: 1024, elements: !802)
!802 = !{!803, !807, !811, !812, !833, !837, !841, !847, !851, !852, !853, !858, !859, !860, !864, !870}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "disassociate", scope: !801, file: !795, line: 65, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !792}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !801, file: !795, line: 66, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!429, !792}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !801, file: !795, line: 67, baseType: !808, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !801, file: !795, line: 68, baseType: !813, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !792, !816}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdata_t", file: !304, line: 119, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdata", file: !819, line: 112, size: 320, elements: !820)
!819 = !DIFile(filename: "lib/dns/include/dns/rdata.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "e790fb4f336bc4fdcd566550403b32a6")
!820 = !{!821, !822, !823, !825, !827, !828}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !818, file: !819, line: 113, baseType: !511, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !818, file: !819, line: 114, baseType: !279, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !818, file: !819, line: 115, baseType: !824, size: 16, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataclass_t", file: !304, line: 121, baseType: !454)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !818, file: !819, line: 116, baseType: !826, size: 16, offset: 112)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatatype_t", file: !304, line: 126, baseType: !454)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !818, file: !819, line: 117, baseType: !279, size: 32, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !818, file: !819, line: 118, baseType: !829, size: 128, offset: 192)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !818, file: !819, line: 118, size: 128, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !829, file: !819, line: 118, baseType: !816, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !829, file: !819, line: 118, baseType: !816, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !801, file: !795, line: 70, baseType: !834, size: 64, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !792, !792}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !801, file: !795, line: 72, baseType: !838, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!279, !792}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "addnoqname", scope: !801, file: !795, line: 73, baseType: !842, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!429, !792, !845}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "getnoqname", scope: !801, file: !795, line: 75, baseType: !848, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!429, !792, !786, !792, !792}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "addclosest", scope: !801, file: !795, line: 79, baseType: !842, size: 64, offset: 512)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "getclosest", scope: !801, file: !795, line: 81, baseType: !848, size: 64, offset: 576)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "settrust", scope: !801, file: !795, line: 85, baseType: !854, size: 64, offset: 640)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !792, !857}
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_trust_t", file: !304, line: 140, baseType: !454)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !801, file: !795, line: 87, baseType: !804, size: 64, offset: 704)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "clearprefetch", scope: !801, file: !795, line: 88, baseType: !804, size: 64, offset: 768)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "setownercase", scope: !801, file: !795, line: 89, baseType: !861, size: 64, offset: 832)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !792, !845}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "getownercase", scope: !801, file: !795, line: 91, baseType: !865, size: 64, offset: 896)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !868, !786}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "addglue", scope: !801, file: !795, line: 93, baseType: !871, size: 64, offset: 960)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!429, !792, !874, !876}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbversion_t", file: !304, line: 61, baseType: null)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_message_t", file: !304, line: 103, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_message", file: !879, line: 197, size: 3840, elements: !880)
!879 = !DIFile(filename: "lib/dns/include/dns/message.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "6416f0e57c4314c86bb1ccbb29bdbc0d")
!880 = !{!881, !882, !884, !885, !887, !889, !890, !892, !899, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !947, !948, !955, !956, !962, !963, !971, !976, !981, !986, !994, !995, !996, !997, !998, !1002, !1007, !1008, !1009, !1010, !1014, !1015, !1016, !1017, !1026}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !878, file: !879, line: 199, baseType: !279, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !878, file: !879, line: 201, baseType: !883, size: 16, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_messageid_t", file: !304, line: 104, baseType: !454)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !878, file: !879, line: 202, baseType: !279, size: 32, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "rcode", scope: !878, file: !879, line: 203, baseType: !886, size: 16, offset: 96)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rcode_t", file: !304, line: 118, baseType: !454)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !878, file: !879, line: 204, baseType: !888, size: 16, offset: 112)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_opcode_t", file: !304, line: 111, baseType: !454)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !878, file: !879, line: 205, baseType: !824, size: 16, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !878, file: !879, line: 208, baseType: !891, size: 128, offset: 160)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 128, elements: !159)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "sections", scope: !878, file: !879, line: 211, baseType: !893, size: 512, offset: 320)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, size: 512, elements: !159)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_namelist_t", file: !304, line: 108, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !304, line: 108, size: 128, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !895, file: !304, line: 108, baseType: !786, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !895, file: !304, line: 108, baseType: !786, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "cursors", scope: !878, file: !879, line: 212, baseType: !900, size: 256, offset: 832)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 256, elements: !159)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !878, file: !879, line: 213, baseType: !792, size: 64, offset: 1088)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sig0", scope: !878, file: !879, line: 214, baseType: !792, size: 64, offset: 1152)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "tsig", scope: !878, file: !879, line: 215, baseType: !792, size: 64, offset: 1216)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !878, file: !879, line: 217, baseType: !332, size: 32, offset: 1280)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "from_to_wire", scope: !878, file: !879, line: 218, baseType: !279, size: 2, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "header_ok", scope: !878, file: !879, line: 219, baseType: !279, size: 1, offset: 1314, flags: DIFlagBitField, extraData: i64 1312)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "question_ok", scope: !878, file: !879, line: 220, baseType: !279, size: 1, offset: 1315, flags: DIFlagBitField, extraData: i64 1312)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_continuation", scope: !878, file: !879, line: 221, baseType: !279, size: 1, offset: 1316, flags: DIFlagBitField, extraData: i64 1312)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "verified_sig", scope: !878, file: !879, line: 222, baseType: !279, size: 1, offset: 1317, flags: DIFlagBitField, extraData: i64 1312)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "verify_attempted", scope: !878, file: !879, line: 223, baseType: !279, size: 1, offset: 1318, flags: DIFlagBitField, extraData: i64 1312)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "free_query", scope: !878, file: !879, line: 224, baseType: !279, size: 1, offset: 1319, flags: DIFlagBitField, extraData: i64 1312)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "free_saved", scope: !878, file: !879, line: 225, baseType: !279, size: 1, offset: 1320, flags: DIFlagBitField, extraData: i64 1312)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "cc_ok", scope: !878, file: !879, line: 226, baseType: !279, size: 1, offset: 1321, flags: DIFlagBitField, extraData: i64 1312)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "cc_bad", scope: !878, file: !879, line: 227, baseType: !279, size: 1, offset: 1322, flags: DIFlagBitField, extraData: i64 1312)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "tkey", scope: !878, file: !879, line: 228, baseType: !279, size: 1, offset: 1323, flags: DIFlagBitField, extraData: i64 1312)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass_set", scope: !878, file: !879, line: 229, baseType: !279, size: 1, offset: 1324, flags: DIFlagBitField, extraData: i64 1312)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "opt_reserved", scope: !878, file: !879, line: 231, baseType: !279, size: 32, offset: 1344)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "sig_reserved", scope: !878, file: !879, line: 232, baseType: !279, size: 32, offset: 1376)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !878, file: !879, line: 233, baseType: !279, size: 32, offset: 1408)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !878, file: !879, line: 235, baseType: !454, size: 16, offset: 1440)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "padding_off", scope: !878, file: !879, line: 236, baseType: !279, size: 32, offset: 1472)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !878, file: !879, line: 238, baseType: !764, size: 64, offset: 1536)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "cctx", scope: !878, file: !879, line: 239, baseType: !924, size: 64, offset: 1600)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_compress_t", file: !304, line: 53, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_compress", file: !927, line: 66, size: 18688, elements: !928)
!927 = !DIFile(filename: "lib/dns/include/dns/compress.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "ae360072e6dd15c4fe76c4efa2dcea4c")
!928 = !{!929, !930, !931, !932, !943, !945, !946}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !926, file: !927, line: 67, baseType: !279, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !926, file: !927, line: 68, baseType: !279, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "edns", scope: !926, file: !927, line: 69, baseType: !332, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !926, file: !927, line: 71, baseType: !933, size: 4096, offset: 128)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !934, size: 4096, elements: !147)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_compressnode_t", file: !927, line: 56, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_compressnode", file: !927, line: 58, size: 896, elements: !937)
!937 = !{!938, !939, !940, !941, !942}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !936, file: !927, line: 59, baseType: !934, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !936, file: !927, line: 60, baseType: !454, size: 16, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !936, file: !927, line: 61, baseType: !454, size: 16, offset: 80)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !936, file: !927, line: 62, baseType: !541, size: 128, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !936, file: !927, line: 63, baseType: !753, size: 640, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "initialnodes", scope: !926, file: !927, line: 73, baseType: !944, size: 14336, offset: 4224)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 14336, elements: !479)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !926, file: !927, line: 74, baseType: !454, size: 16, offset: 18560)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !926, file: !927, line: 75, baseType: !587, size: 64, offset: 18624)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !878, file: !879, line: 241, baseType: !587, size: 64, offset: 1664)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "namepool", scope: !878, file: !879, line: 242, baseType: !949, size: 64, offset: 1728)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mempool_t", file: !369, line: 60, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mempool", file: !590, line: 205, size: 64, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !951, file: !590, line: 206, baseType: !279, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !951, file: !590, line: 207, baseType: !279, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "rdspool", scope: !878, file: !879, line: 243, baseType: !949, size: 64, offset: 1792)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "scratchpad", scope: !878, file: !879, line: 245, baseType: !957, size: 128, offset: 1856)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_bufferlist_t", file: !369, line: 36, baseType: !958)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !369, line: 36, size: 128, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !958, file: !369, line: 36, baseType: !764, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !958, file: !369, line: 36, baseType: !764, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !878, file: !879, line: 246, baseType: !957, size: 128, offset: 1984)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rdatas", scope: !878, file: !879, line: 248, baseType: !964, size: 128, offset: 2112)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !879, line: 248, size: 128, elements: !965)
!965 = !{!966, !970}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !964, file: !879, line: 248, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_msgblock_t", file: !879, line: 189, baseType: !969)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_msgblock", file: !879, line: 189, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !964, file: !879, line: 248, baseType: !967, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rdatalists", scope: !878, file: !879, line: 249, baseType: !972, size: 128, offset: 2240)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !879, line: 249, size: 128, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !972, file: !879, line: 249, baseType: !967, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !972, file: !879, line: 249, baseType: !967, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !878, file: !879, line: 250, baseType: !977, size: 128, offset: 2368)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !879, line: 250, size: 128, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !977, file: !879, line: 250, baseType: !967, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !977, file: !879, line: 250, baseType: !967, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "freerdata", scope: !878, file: !879, line: 252, baseType: !982, size: 128, offset: 2496)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !879, line: 252, size: 128, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !982, file: !879, line: 252, baseType: !816, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !982, file: !879, line: 252, baseType: !816, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "freerdatalist", scope: !878, file: !879, line: 253, baseType: !987, size: 128, offset: 2624)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !879, line: 253, size: 128, elements: !988)
!988 = !{!989, !993}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !987, file: !879, line: 253, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatalist_t", file: !304, line: 122, baseType: !992)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatalist", file: !304, line: 122, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !987, file: !879, line: 253, baseType: !990, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "tsigstatus", scope: !878, file: !879, line: 255, baseType: !886, size: 16, offset: 2752)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "querytsigstatus", scope: !878, file: !879, line: 256, baseType: !886, size: 16, offset: 2768)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "tsigname", scope: !878, file: !879, line: 257, baseType: !786, size: 64, offset: 2816)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "querytsig", scope: !878, file: !879, line: 258, baseType: !792, size: 64, offset: 2880)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "tsigkey", scope: !878, file: !879, line: 259, baseType: !999, size: 64, offset: 2944)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_tsigkey_t", file: !304, line: 143, baseType: !1001)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_tsigkey", file: !304, line: 143, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "tsigctx", scope: !878, file: !879, line: 260, baseType: !1003, size: 64, offset: 3008)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_context_t", file: !1005, line: 45, baseType: !1006)
!1005 = !DIFile(filename: "lib/dns/include/dst/dst.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "10e76bcacbe005e6cc7dee2ac6ffac9a")
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_context", file: !1005, line: 45, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "sigstart", scope: !878, file: !879, line: 261, baseType: !332, size: 32, offset: 3072)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "timeadjust", scope: !878, file: !879, line: 262, baseType: !332, size: 32, offset: 3104)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "sig0name", scope: !878, file: !879, line: 264, baseType: !786, size: 64, offset: 3136)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "sig0key", scope: !878, file: !879, line: 265, baseType: !1011, size: 64, offset: 3200)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_key_t", file: !1005, line: 44, baseType: !1013)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_key", file: !1005, line: 44, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "sig0status", scope: !878, file: !879, line: 266, baseType: !886, size: 16, offset: 3264)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !878, file: !879, line: 267, baseType: !541, size: 128, offset: 3328)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "saved", scope: !878, file: !879, line: 268, baseType: !541, size: 128, offset: 3456)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !878, file: !879, line: 270, baseType: !1018, size: 64, offset: 3584)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetorderfunc_t", file: !304, line: 415, baseType: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!332, !1022, !1024}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "order_arg", scope: !878, file: !879, line: 271, baseType: !1027, size: 192, offset: 3648)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_sortlist_arg_t", file: !304, line: 134, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_sortlist_arg", file: !879, line: 191, size: 192, elements: !1029)
!1029 = !{!1030, !1038, !1041}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !1028, file: !879, line: 192, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_aclenv_t", file: !304, line: 32, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_aclenv", file: !286, line: 90, size: 192, elements: !1034)
!1034 = !{!1035, !1036, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "localhost", scope: !1033, file: !286, line: 91, baseType: !681, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "localnets", scope: !1033, file: !286, line: 92, baseType: !681, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "match_mapped", scope: !1033, file: !286, line: 93, baseType: !663, size: 8, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "acl", scope: !1028, file: !879, line: 193, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !1028, file: !879, line: 194, baseType: !1042, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !794, file: !795, line: 110, baseType: !1045, size: 128, offset: 128)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !794, file: !795, line: 110, size: 128, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1045, file: !795, line: 110, baseType: !792, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1045, file: !795, line: 110, baseType: !792, size: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !794, file: !795, line: 117, baseType: !824, size: 16, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !794, file: !795, line: 118, baseType: !826, size: 16, offset: 272)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !794, file: !795, line: 119, baseType: !1052, size: 32, offset: 288)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_ttl_t", file: !304, line: 144, baseType: !353)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "stale_ttl", scope: !794, file: !795, line: 124, baseType: !1052, size: 32, offset: 320)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !794, file: !795, line: 125, baseType: !857, size: 16, offset: 352)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "covers", scope: !794, file: !795, line: 126, baseType: !826, size: 16, offset: 368)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !794, file: !795, line: 131, baseType: !279, size: 32, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !794, file: !795, line: 139, baseType: !353, size: 32, offset: 416)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "resign", scope: !794, file: !795, line: 145, baseType: !1059, size: 32, offset: 448)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_stdtime_t", file: !1060, line: 26, baseType: !353)
!1060 = !DIFile(filename: "../../lib/isc/unix/include/isc/stdtime.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/named", checksumkind: CSK_MD5, checksum: "b8868fded6c0eb282ad50986c628a693")
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "private1", scope: !794, file: !795, line: 152, baseType: !350, size: 64, offset: 512)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "private2", scope: !794, file: !795, line: 153, baseType: !350, size: 64, offset: 576)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "private3", scope: !794, file: !795, line: 154, baseType: !350, size: 64, offset: 640)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "privateuint4", scope: !794, file: !795, line: 155, baseType: !279, size: 32, offset: 704)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "private5", scope: !794, file: !795, line: 156, baseType: !350, size: 64, offset: 768)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "private6", scope: !794, file: !795, line: 157, baseType: !1024, size: 64, offset: 832)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "private7", scope: !794, file: !795, line: 158, baseType: !1024, size: 64, offset: 896)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !789, file: !755, line: 113, baseType: !792, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "nestedacl", scope: !747, file: !286, line: 72, baseType: !681, size: 64, offset: 704)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "node_num", scope: !747, file: !286, line: 73, baseType: !332, size: 32, offset: 768)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "has_negatives", scope: !683, file: !286, line: 83, baseType: !663, size: 8, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !683, file: !286, line: 84, baseType: !279, size: 32, offset: 352)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !683, file: !286, line: 85, baseType: !279, size: 32, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !683, file: !286, line: 86, baseType: !512, size: 64, offset: 448)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "nextincache", scope: !683, file: !286, line: 87, baseType: !1076, size: 128, offset: 512)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !683, file: !286, line: 87, size: 128, elements: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1076, file: !286, line: 87, baseType: !681, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1076, file: !286, line: 87, baseType: !681, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "keepresporder", scope: !629, file: !630, line: 102, baseType: !681, size: 64, offset: 1536)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "udpsize", scope: !629, file: !630, line: 103, baseType: !454, size: 16, offset: 1600)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_tcp_message_size", scope: !629, file: !630, line: 104, baseType: !454, size: 16, offset: 1616)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "interface_auto", scope: !629, file: !630, line: 105, baseType: !663, size: 8, offset: 1632)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "tkeyctx", scope: !629, file: !630, line: 106, baseType: !1085, size: 64, offset: 1664)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_tkeyctx_t", file: !304, line: 139, baseType: !1087)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_tkeyctx", file: !304, line: 139, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "server_id", scope: !629, file: !630, line: 109, baseType: !512, size: 64, offset: 1728)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "gethostname", scope: !629, file: !630, line: 110, baseType: !1090, size: 64, offset: 1792)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "ns_hostnamecb_t", file: !630, line: 55, baseType: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!429, !512, !362}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "fuzztype", scope: !629, file: !630, line: 113, baseType: !1095, size: 32, offset: 1856)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_fuzztype_t", file: !295, line: 22, baseType: !294)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "fuzznotify", scope: !629, file: !630, line: 114, baseType: !1097, size: 64, offset: 1920)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "ns_fuzzcb_t", file: !630, line: 62, baseType: !1098)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "matchingview", scope: !629, file: !630, line: 117, baseType: !1102, size: 64, offset: 1984)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "ns_matchview_t", file: !630, line: 68, baseType: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!429, !1106, !1106, !876, !1031, !1119, !1120}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_netaddr_t", file: !369, line: 61, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_netaddr", file: !1109, line: 32, size: 928, elements: !1110)
!1109 = !DIFile(filename: "lib/isc/include/isc/netaddr.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "32c674d5a712846b6ad38c7272a5fe0e")
!1110 = !{!1111, !1112, !1118}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1108, file: !1109, line: 33, baseType: !279, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1108, file: !1109, line: 40, baseType: !1113, size: 864, offset: 32)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !1109, line: 34, size: 864, elements: !1114)
!1114 = !{!1115, !1116, !1117}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1113, file: !1109, line: 35, baseType: !457, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "in6", scope: !1113, file: !1109, line: 36, baseType: !470, size: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "un", scope: !1113, file: !1109, line: 38, baseType: !501, size: 864)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !1108, file: !1109, line: 41, baseType: !353, size: 32, offset: 896)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_view_t", file: !304, line: 147, baseType: !1123)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_view", file: !304, line: 147, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "nsstats", scope: !629, file: !630, line: 120, baseType: !1125, size: 64, offset: 2048)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "ns_stats_t", file: !278, line: 27, baseType: !1127)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "ns_stats", file: !278, line: 27, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rcvquerystats", scope: !629, file: !630, line: 121, baseType: !1129, size: 64, offset: 2112)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_stats_t", file: !304, line: 137, baseType: !1131)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_stats", file: !304, line: 137, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "opcodestats", scope: !629, file: !630, line: 122, baseType: !1129, size: 64, offset: 2176)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rcodestats", scope: !629, file: !630, line: 123, baseType: !1129, size: 64, offset: 2240)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "udpinstats4", scope: !629, file: !630, line: 125, baseType: !1135, size: 64, offset: 2304)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_stats_t", file: !369, line: 74, baseType: !1137)
!1137 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_stats", file: !369, line: 74, flags: DIFlagFwdDecl)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "udpoutstats4", scope: !629, file: !630, line: 126, baseType: !1135, size: 64, offset: 2368)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "udpinstats6", scope: !629, file: !630, line: 127, baseType: !1135, size: 64, offset: 2432)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "udpoutstats6", scope: !629, file: !630, line: 128, baseType: !1135, size: 64, offset: 2496)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "tcpinstats4", scope: !629, file: !630, line: 130, baseType: !1135, size: 64, offset: 2560)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "tcpoutstats4", scope: !629, file: !630, line: 131, baseType: !1135, size: 64, offset: 2624)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "tcpinstats6", scope: !629, file: !630, line: 132, baseType: !1135, size: 64, offset: 2688)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "tcpoutstats6", scope: !629, file: !630, line: 133, baseType: !1135, size: 64, offset: 2752)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !582, file: !583, line: 52, baseType: !375, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "statsfile", scope: !582, file: !583, line: 54, baseType: !512, size: 64, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dumpfile", scope: !582, file: !583, line: 55, baseType: !512, size: 64, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "secrootsfile", scope: !582, file: !583, line: 56, baseType: !512, size: 64, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "bindkeysfile", scope: !582, file: !583, line: 57, baseType: !512, size: 64, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "recfile", scope: !582, file: !583, line: 58, baseType: !512, size: 64, offset: 512)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "version_set", scope: !582, file: !583, line: 59, baseType: !663, size: 8, offset: 576)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !582, file: !583, line: 60, baseType: !512, size: 64, offset: 640)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "hostname_set", scope: !582, file: !583, line: 61, baseType: !663, size: 8, offset: 704)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !582, file: !583, line: 62, baseType: !512, size: 64, offset: 768)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "loadmgr", scope: !582, file: !583, line: 65, baseType: !1156, size: 64, offset: 832)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_loadmgr_t", file: !304, line: 100, baseType: !1158)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_loadmgr", file: !304, line: 100, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "zonemgr", scope: !582, file: !583, line: 66, baseType: !1160, size: 64, offset: 896)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_zonemgr_t", file: !304, line: 151, baseType: !1162)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_zonemgr", file: !304, line: 151, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "viewlist", scope: !582, file: !583, line: 67, baseType: !1164, size: 128, offset: 960)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_viewlist_t", file: !304, line: 148, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !304, line: 148, size: 128, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1165, file: !304, line: 148, baseType: !1121, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1165, file: !304, line: 148, baseType: !1121, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "interfacemgr", scope: !582, file: !583, line: 68, baseType: !1170, size: 64, offset: 1088)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "ns_interfacemgr_t", file: !278, line: 24, baseType: !1172)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "ns_interfacemgr", file: !278, line: 24, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "in_roothints", scope: !582, file: !583, line: 69, baseType: !1174, size: 64, offset: 1152)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_db_t", file: !304, line: 54, baseType: !1176)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_db", file: !1177, line: 223, size: 1024, elements: !1178)
!1177 = !DIFile(filename: "lib/dns/include/dns/db.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f7341a6445a0da00d6edbc7f74bf2ce5")
!1178 = !{!1179, !1180, !1181, !1464, !1465, !1466, !1467, !1468}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1176, file: !1177, line: 224, baseType: !279, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !1176, file: !1177, line: 225, baseType: !279, size: 32, offset: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !1176, file: !1177, line: 226, baseType: !1182, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbmethods_t", file: !1177, line: 200, baseType: !1184)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbmethods", file: !1177, line: 71, size: 3072, elements: !1185)
!1185 = !{!1186, !1191, !1195, !1202, !1203, !1261, !1266, !1271, !1275, !1279, !1283, !1290, !1294, !1298, !1302, !1306, !1310, !1314, !1322, !1326, !1334, !1338, !1342, !1346, !1350, !1354, !1355, !1359, !1363, !1367, !1371, !1380, !1381, !1385, !1389, !1393, !1394, !1398, !1402, !1406, !1431, !1435, !1439, !1443, !1447, !1454, !1458, !1463}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1184, file: !1177, line: 72, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !1174, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1184, file: !1177, line: 73, baseType: !1192, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !1190}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "beginload", scope: !1184, file: !1177, line: 74, baseType: !1196, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!429, !1174, !1199}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatacallbacks_t", file: !304, line: 120, baseType: !1201)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatacallbacks", file: !304, line: 120, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "endload", scope: !1184, file: !1177, line: 76, baseType: !1196, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "serialize", scope: !1184, file: !1177, line: 78, baseType: !1204, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!429, !1174, !874, !1207}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1209, line: 7, baseType: !1210)
!1209 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1211, line: 49, size: 1728, elements: !1212)
!1211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1228, !1230, !1231, !1232, !1235, !1236, !1238, !1242, !1245, !1247, !1250, !1253, !1254, !1255, !1256, !1257}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1210, file: !1211, line: 51, baseType: !332, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1210, file: !1211, line: 54, baseType: !512, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1210, file: !1211, line: 55, baseType: !512, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1210, file: !1211, line: 56, baseType: !512, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1210, file: !1211, line: 57, baseType: !512, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1210, file: !1211, line: 58, baseType: !512, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1210, file: !1211, line: 59, baseType: !512, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1210, file: !1211, line: 60, baseType: !512, size: 64, offset: 448)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1210, file: !1211, line: 61, baseType: !512, size: 64, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1210, file: !1211, line: 64, baseType: !512, size: 64, offset: 576)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1210, file: !1211, line: 65, baseType: !512, size: 64, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1210, file: !1211, line: 66, baseType: !512, size: 64, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1210, file: !1211, line: 68, baseType: !1226, size: 64, offset: 768)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1211, line: 36, flags: DIFlagFwdDecl)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1210, file: !1211, line: 70, baseType: !1229, size: 64, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1210, file: !1211, line: 72, baseType: !332, size: 32, offset: 896)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1210, file: !1211, line: 73, baseType: !332, size: 32, offset: 928)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1210, file: !1211, line: 74, baseType: !1233, size: 64, offset: 960)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !356, line: 152, baseType: !1234)
!1234 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1210, file: !1211, line: 77, baseType: !445, size: 16, offset: 1024)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1210, file: !1211, line: 78, baseType: !1237, size: 8, offset: 1040)
!1237 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1210, file: !1211, line: 79, baseType: !1239, size: 8, offset: 1048)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 1)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1210, file: !1211, line: 81, baseType: !1243, size: 64, offset: 1088)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1211, line: 43, baseType: null)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1210, file: !1211, line: 89, baseType: !1246, size: 64, offset: 1152)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !356, line: 153, baseType: !1234)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1210, file: !1211, line: 91, baseType: !1248, size: 64, offset: 1216)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1211, line: 37, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1210, file: !1211, line: 92, baseType: !1251, size: 64, offset: 1280)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1211, line: 38, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1210, file: !1211, line: 93, baseType: !1229, size: 64, offset: 1344)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1210, file: !1211, line: 94, baseType: !350, size: 64, offset: 1408)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1210, file: !1211, line: 95, baseType: !362, size: 64, offset: 1472)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1210, file: !1211, line: 96, baseType: !332, size: 32, offset: 1536)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1210, file: !1211, line: 98, baseType: !1258, size: 160, offset: 1568)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !1259)
!1259 = !{!1260}
!1260 = !DISubrange(count: 20)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !1184, file: !1177, line: 80, baseType: !1262, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!429, !1174, !874, !603, !1265}
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_masterformat_t", file: !304, line: 218, baseType: !303)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "currentversion", scope: !1184, file: !1177, line: 83, baseType: !1267, size: 64, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !1174, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "newversion", scope: !1184, file: !1177, line: 85, baseType: !1272, size: 64, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!429, !1174, !1270}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "attachversion", scope: !1184, file: !1177, line: 87, baseType: !1276, size: 64, offset: 512)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !1174, !874, !1270}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "closeversion", scope: !1184, file: !1177, line: 89, baseType: !1280, size: 64, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !1174, !1270, !663}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "findnode", scope: !1184, file: !1177, line: 92, baseType: !1284, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!429, !1174, !845, !663, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbnode_t", file: !304, line: 58, baseType: null)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !1184, file: !1177, line: 95, baseType: !1291, size: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!429, !1174, !845, !874, !826, !279, !1059, !1287, !786, !792, !792}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "findzonecut", scope: !1184, file: !1177, line: 102, baseType: !1295, size: 64, offset: 768)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!429, !1174, !845, !279, !1059, !1287, !786, !786, !792, !792}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "attachnode", scope: !1184, file: !1177, line: 109, baseType: !1299, size: 64, offset: 832)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1174, !1288, !1287}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "detachnode", scope: !1184, file: !1177, line: 112, baseType: !1303, size: 64, offset: 896)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !1174, !1287}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "expirenode", scope: !1184, file: !1177, line: 114, baseType: !1307, size: 64, offset: 960)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!429, !1174, !1288, !1059}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "printnode", scope: !1184, file: !1177, line: 116, baseType: !1311, size: 64, offset: 1024)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !1174, !1288, !1207}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "createiterator", scope: !1184, file: !1177, line: 118, baseType: !1315, size: 64, offset: 1088)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!429, !1174, !279, !1318}
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbiterator_t", file: !304, line: 56, baseType: !1321)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbiterator", file: !304, line: 56, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "findrdataset", scope: !1184, file: !1177, line: 120, baseType: !1323, size: 64, offset: 1152)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!429, !1174, !1288, !874, !826, !826, !1059, !792, !792}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "allrdatasets", scope: !1184, file: !1177, line: 127, baseType: !1327, size: 64, offset: 1216)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!429, !1174, !1288, !874, !1059, !1330}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetiter_t", file: !304, line: 125, baseType: !1333)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetiter", file: !304, line: 125, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "addrdataset", scope: !1184, file: !1177, line: 131, baseType: !1335, size: 64, offset: 1280)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!429, !1174, !1288, !874, !1059, !792, !279, !792}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "subtractrdataset", scope: !1184, file: !1177, line: 137, baseType: !1339, size: 64, offset: 1344)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!429, !1174, !1288, !874, !792, !279, !792}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "deleterdataset", scope: !1184, file: !1177, line: 142, baseType: !1343, size: 64, offset: 1408)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!429, !1174, !1288, !874, !826, !826}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "issecure", scope: !1184, file: !1177, line: 146, baseType: !1347, size: 64, offset: 1472)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!663, !1174}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "nodecount", scope: !1184, file: !1177, line: 147, baseType: !1351, size: 64, offset: 1536)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!279, !1174}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ispersistent", scope: !1184, file: !1177, line: 148, baseType: !1347, size: 64, offset: 1600)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "overmem", scope: !1184, file: !1177, line: 149, baseType: !1356, size: 64, offset: 1664)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !1174, !663}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "settask", scope: !1184, file: !1177, line: 150, baseType: !1360, size: 64, offset: 1728)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !1174, !375}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "getoriginnode", scope: !1184, file: !1177, line: 151, baseType: !1364, size: 64, offset: 1792)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!429, !1174, !1287}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "transfernode", scope: !1184, file: !1177, line: 152, baseType: !1368, size: 64, offset: 1856)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !1174, !1287, !1287}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "getnsec3parameters", scope: !1184, file: !1177, line: 154, baseType: !1372, size: 64, offset: 1920)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!429, !1174, !874, !1375, !1377, !1378, !511, !1379}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_hash_t", file: !304, line: 166, baseType: !310)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "findnsec3node", scope: !1184, file: !1177, line: 161, baseType: !1284, size: 64, offset: 1984)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "setsigningtime", scope: !1184, file: !1177, line: 164, baseType: !1382, size: 64, offset: 2048)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!429, !1174, !792, !1059}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "getsigningtime", scope: !1184, file: !1177, line: 167, baseType: !1386, size: 64, offset: 2112)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!429, !1174, !792, !786}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "resigned", scope: !1184, file: !1177, line: 170, baseType: !1390, size: 64, offset: 2176)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !1174, !792, !874}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "isdnssec", scope: !1184, file: !1177, line: 172, baseType: !1347, size: 64, offset: 2240)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "getrrsetstats", scope: !1184, file: !1177, line: 173, baseType: !1395, size: 64, offset: 2304)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!1129, !1174}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "rpz_attach", scope: !1184, file: !1177, line: 174, baseType: !1399, size: 64, offset: 2368)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !1174, !350, !477}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rpz_ready", scope: !1184, file: !1177, line: 176, baseType: !1403, size: 64, offset: 2432)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!429, !1174}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "findnodeext", scope: !1184, file: !1177, line: 177, baseType: !1407, size: 64, offset: 2496)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!429, !1174, !845, !663, !1410, !1422, !1287}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfomethods_t", file: !1412, line: 68, baseType: !1413)
!1412 = !DIFile(filename: "lib/dns/include/dns/clientinfo.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f273dbbef534c5352c6d152e1993b2e9")
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_clientinfomethods", file: !1412, line: 64, size: 128, elements: !1414)
!1414 = !{!1415, !1416, !1417}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1413, file: !1412, line: 65, baseType: !454, size: 16)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !1413, file: !1412, line: 66, baseType: !454, size: 16, offset: 16)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sourceip", scope: !1413, file: !1412, line: 67, baseType: !1418, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfo_sourceip_t", file: !1412, line: 58, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!429, !1422, !1429}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfo_t", file: !1412, line: 56, baseType: !1424)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_clientinfo", file: !1412, line: 52, size: 192, elements: !1425)
!1425 = !{!1426, !1427, !1428}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1424, file: !1412, line: 53, baseType: !454, size: 16)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1424, file: !1412, line: 54, baseType: !350, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dbversion", scope: !1424, file: !1412, line: 55, baseType: !350, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "findext", scope: !1184, file: !1177, line: 182, baseType: !1432, size: 64, offset: 2560)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!429, !1174, !845, !874, !826, !279, !1059, !1287, !786, !1410, !1422, !792, !792}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "setcachestats", scope: !1184, file: !1177, line: 191, baseType: !1436, size: 64, offset: 2624)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!429, !1174, !1135}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "hashsize", scope: !1184, file: !1177, line: 192, baseType: !1440, size: 64, offset: 2688)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!362, !1174}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nodefullname", scope: !1184, file: !1177, line: 193, baseType: !1444, size: 64, offset: 2752)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!429, !1174, !1288, !786}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "getsize", scope: !1184, file: !1177, line: 195, baseType: !1448, size: 64, offset: 2816)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!429, !1174, !874, !1451, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !354, line: 27, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !356, line: 45, baseType: !364)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "setservestalettl", scope: !1184, file: !1177, line: 197, baseType: !1455, size: 64, offset: 2880)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!429, !1174, !1052}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "getservestalettl", scope: !1184, file: !1177, line: 198, baseType: !1459, size: 64, offset: 2944)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!429, !1174, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "setgluecachestats", scope: !1184, file: !1177, line: 199, baseType: !1436, size: 64, offset: 3008)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1176, file: !1177, line: 227, baseType: !454, size: 16, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !1176, file: !1177, line: 228, baseType: !824, size: 16, offset: 144)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !1176, file: !1177, line: 229, baseType: !753, size: 640, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !1176, file: !1177, line: 230, baseType: !587, size: 64, offset: 832)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "update_listeners", scope: !1176, file: !1177, line: 231, baseType: !1469, size: 128, offset: 896)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !1177, line: 231, size: 128, elements: !1470)
!1470 = !{!1471, !1487}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1469, file: !1177, line: 231, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbonupdatelistener_t", file: !304, line: 59, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbonupdatelistener", file: !1177, line: 237, size: 256, elements: !1475)
!1475 = !{!1476, !1481, !1482}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "onupdate", scope: !1474, file: !1177, line: 238, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbupdate_callback_t", file: !1177, line: 209, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!429, !1174, !350}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "onupdate_arg", scope: !1474, file: !1177, line: 239, baseType: !350, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1474, file: !1177, line: 240, baseType: !1483, size: 128, offset: 128)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !1177, line: 240, size: 128, elements: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1483, file: !1177, line: 240, baseType: !1472, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1483, file: !1177, line: 240, baseType: !1472, size: 64, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1469, file: !1177, line: 231, baseType: !1472, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "interface_timer", scope: !582, file: !583, line: 71, baseType: !1489, size: 64, offset: 1216)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_timer_t", file: !369, line: 82, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_timer", file: !331, line: 124, size: 64, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !1491, file: !331, line: 125, baseType: !279, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1491, file: !331, line: 126, baseType: !279, size: 32, offset: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "heartbeat_timer", scope: !582, file: !583, line: 72, baseType: !1489, size: 64, offset: 1280)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "pps_timer", scope: !582, file: !583, line: 73, baseType: !1489, size: 64, offset: 1344)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "tat_timer", scope: !582, file: !583, line: 74, baseType: !1489, size: 64, offset: 1408)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "interface_interval", scope: !582, file: !583, line: 76, baseType: !353, size: 32, offset: 1472)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "heartbeat_interval", scope: !582, file: !583, line: 77, baseType: !353, size: 32, offset: 1504)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "reload_event_lock", scope: !582, file: !583, line: 79, baseType: !1501, size: 320, offset: 1536)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mutex_t", file: !1502, line: 58, baseType: !1503)
!1502 = !DIFile(filename: "../../lib/isc/pthreads/include/isc/mutex.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/named", checksumkind: CSK_MD5, checksum: "6b7e8979b3639d755e3f6ba516d0d52d")
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !1504, line: 72, baseType: !1505)
!1504 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !1504, line: 67, size: 320, elements: !1506)
!1506 = !{!1507, !1527, !1531}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !1505, file: !1504, line: 69, baseType: !1508, size: 320)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !1509, line: 22, size: 320, elements: !1510)
!1509 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1516, !1518, !1519}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !1508, file: !1509, line: 24, baseType: !332, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1508, file: !1509, line: 25, baseType: !279, size: 32, offset: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !1508, file: !1509, line: 26, baseType: !332, size: 32, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !1508, file: !1509, line: 28, baseType: !279, size: 32, offset: 96)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !1508, file: !1509, line: 32, baseType: !332, size: 32, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !1508, file: !1509, line: 34, baseType: !1517, size: 16, offset: 160)
!1517 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !1508, file: !1509, line: 35, baseType: !1517, size: 16, offset: 176)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !1508, file: !1509, line: 36, baseType: !1520, size: 128, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !1521, line: 55, baseType: !1522)
!1521 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !1521, line: 51, size: 128, elements: !1523)
!1523 = !{!1524, !1526}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !1522, file: !1521, line: 53, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !1522, file: !1521, line: 54, baseType: !1525, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1505, file: !1504, line: 70, baseType: !1528, size: 320)
!1528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 320, elements: !1529)
!1529 = !{!1530}
!1530 = !DISubrange(count: 40)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1505, file: !1504, line: 71, baseType: !1234, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "reload_event", scope: !582, file: !583, line: 80, baseType: !378, size: 64, offset: 1856)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "reload_in_progress", scope: !582, file: !583, line: 81, baseType: !663, size: 8, offset: 1920)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flushonshutdown", scope: !582, file: !583, line: 83, baseType: !663, size: 8, offset: 1928)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cachelist", scope: !582, file: !583, line: 85, baseType: !1536, size: 128, offset: 1984)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "named_cachelist_t", file: !576, line: 20, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !576, line: 20, size: 128, elements: !1538)
!1538 = !{!1539, !1543}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1537, file: !576, line: 20, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "named_cache_t", file: !576, line: 19, baseType: !1542)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "named_cache", file: !576, line: 19, flags: DIFlagFwdDecl)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1537, file: !576, line: 20, baseType: !1540, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "zonestats", scope: !582, file: !583, line: 86, baseType: !1135, size: 64, offset: 2112)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "resolverstats", scope: !582, file: !583, line: 87, baseType: !1135, size: 64, offset: 2176)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "sockstats", scope: !582, file: !583, line: 88, baseType: !1135, size: 64, offset: 2240)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !582, file: !583, line: 90, baseType: !574, size: 64, offset: 2304)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dispatchgen", scope: !582, file: !583, line: 91, baseType: !279, size: 32, offset: 2368)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dispatches", scope: !582, file: !583, line: 92, baseType: !1550, size: 128, offset: 2432)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "named_dispatchlist_t", file: !576, line: 26, baseType: !1551)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !576, line: 26, size: 128, elements: !1552)
!1552 = !{!1553, !1557}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1551, file: !576, line: 26, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "named_dispatch_t", file: !576, line: 25, baseType: !1556)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "named_dispatch", file: !576, line: 25, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1551, file: !576, line: 26, baseType: !1554, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "statschannels", scope: !582, file: !583, line: 94, baseType: !1559, size: 128, offset: 2560)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "named_statschannellist_t", file: !576, line: 28, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !576, line: 28, size: 128, elements: !1561)
!1561 = !{!1562, !1566}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1560, file: !576, line: 28, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "named_statschannel_t", file: !576, line: 27, baseType: !1565)
!1565 = !DICompositeType(tag: DW_TAG_structure_type, name: "named_statschannel", file: !576, line: 27, flags: DIFlagFwdDecl)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1560, file: !576, line: 28, baseType: !1563, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "sessionkey", scope: !582, file: !583, line: 96, baseType: !999, size: 64, offset: 2688)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyfile", scope: !582, file: !583, line: 97, baseType: !512, size: 64, offset: 2752)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyname", scope: !582, file: !583, line: 98, baseType: !786, size: 64, offset: 2816)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyalg", scope: !582, file: !583, line: 99, baseType: !279, size: 32, offset: 2880)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "session_keybits", scope: !582, file: !583, line: 100, baseType: !454, size: 16, offset: 2912)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "interface_auto", scope: !582, file: !583, line: 101, baseType: !663, size: 8, offset: 2928)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "secret", scope: !582, file: !583, line: 102, baseType: !643, size: 256, offset: 2936)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cookiealg", scope: !582, file: !583, line: 103, baseType: !645, size: 32, offset: 3200)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "dtenv", scope: !582, file: !583, line: 105, baseType: !1576, size: 64, offset: 3264)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dtenv_t", file: !304, line: 80, baseType: !1578)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dtenv", file: !304, line: 80, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lockfile", scope: !582, file: !583, line: 107, baseType: !512, size: 64, offset: 3328)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "listeners", scope: !577, file: !2, line: 109, baseType: !1581, size: 128, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "controllistenerlist_t", file: !2, line: 67, baseType: !1582)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 67, size: 128, elements: !1583)
!1583 = !{!1584, !1665}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1582, file: !2, line: 67, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "controllistener_t", file: !2, line: 66, baseType: !1587)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "controllistener", file: !2, line: 88, size: 2176, elements: !1588)
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1615, !1654, !1656, !1657, !1658, !1659, !1660}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !1587, file: !2, line: 89, baseType: !574, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !1587, file: !2, line: 90, baseType: !587, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1587, file: !2, line: 91, baseType: !375, size: 64, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1587, file: !2, line: 92, baseType: !431, size: 1216, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !1587, file: !2, line: 93, baseType: !422, size: 64, offset: 1408)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "acl", scope: !1587, file: !2, line: 94, baseType: !681, size: 64, offset: 1472)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !1587, file: !2, line: 95, baseType: !663, size: 8, offset: 1536)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "exiting", scope: !1587, file: !2, line: 96, baseType: !663, size: 8, offset: 1544)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1587, file: !2, line: 97, baseType: !1598, size: 128, offset: 1600)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "controlkeylist_t", file: !2, line: 61, baseType: !1599)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 61, size: 128, elements: !1600)
!1600 = !{!1601, !1614}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1599, file: !2, line: 61, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "controlkey_t", file: !2, line: 60, baseType: !1604)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "controlkey", file: !2, line: 69, size: 384, elements: !1605)
!1605 = !{!1606, !1607, !1608, !1609}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "keyname", scope: !1604, file: !2, line: 70, baseType: !512, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !1604, file: !2, line: 71, baseType: !353, size: 32, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "secret", scope: !1604, file: !2, line: 72, baseType: !541, size: 128, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1604, file: !2, line: 73, baseType: !1610, size: 128, offset: 256)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1604, file: !2, line: 73, size: 128, elements: !1611)
!1611 = !{!1612, !1613}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1610, file: !2, line: 73, baseType: !1602, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1610, file: !2, line: 73, baseType: !1602, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1599, file: !2, line: 61, baseType: !1602, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !1587, file: !2, line: 98, baseType: !1616, size: 128, offset: 1728)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "controlconnectionlist_t", file: !2, line: 64, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 64, size: 128, elements: !1618)
!1618 = !{!1619, !1653}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1617, file: !2, line: 64, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "controlconnection_t", file: !2, line: 63, baseType: !1622)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "controlconnection", file: !2, line: 76, size: 3584, elements: !1623)
!1623 = !{!1624, !1625, !1642, !1643, !1644, !1645, !1646, !1647, !1648}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !1622, file: !2, line: 77, baseType: !422, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ccmsg", scope: !1622, file: !2, line: 78, baseType: !1626, size: 3072, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "isccc_ccmsg_t", file: !1627, line: 54, baseType: !1628)
!1627 = !DIFile(filename: "lib/isccc/include/isccc/ccmsg.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "46bfb84bb22e53b996149672285e8d74")
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isccc_ccmsg", file: !1627, line: 39, size: 3072, elements: !1629)
!1629 = !{!1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1628, file: !1627, line: 41, baseType: !279, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1628, file: !1627, line: 42, baseType: !353, size: 32, offset: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1628, file: !1627, line: 43, baseType: !765, size: 512, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !1628, file: !1627, line: 44, baseType: !279, size: 32, offset: 576)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !1628, file: !1627, line: 45, baseType: !587, size: 64, offset: 640)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !1628, file: !1627, line: 46, baseType: !422, size: 64, offset: 704)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1628, file: !1627, line: 47, baseType: !375, size: 64, offset: 768)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1628, file: !1627, line: 48, baseType: !371, size: 64, offset: 832)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1628, file: !1627, line: 49, baseType: !350, size: 64, offset: 896)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1628, file: !1627, line: 50, baseType: !379, size: 832, offset: 960)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1628, file: !1627, line: 52, baseType: !429, size: 32, offset: 1792)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1628, file: !1627, line: 53, baseType: !431, size: 1216, offset: 1856)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ccmsg_valid", scope: !1622, file: !2, line: 79, baseType: !663, size: 8, offset: 3136)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "sending", scope: !1622, file: !2, line: 80, baseType: !663, size: 8, offset: 3144)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1622, file: !2, line: 81, baseType: !1489, size: 64, offset: 3200)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1622, file: !2, line: 82, baseType: !764, size: 64, offset: 3264)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !1622, file: !2, line: 83, baseType: !1585, size: 64, offset: 3328)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !1622, file: !2, line: 84, baseType: !353, size: 32, offset: 3392)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1622, file: !2, line: 85, baseType: !1649, size: 128, offset: 3456)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1622, file: !2, line: 85, size: 128, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1649, file: !2, line: 85, baseType: !1620, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1649, file: !2, line: 85, baseType: !1620, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1617, file: !2, line: 64, baseType: !1620, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1587, file: !2, line: 99, baseType: !1655, size: 32, offset: 1856)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_sockettype_t", file: !314, line: 247, baseType: !313)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1587, file: !2, line: 100, baseType: !353, size: 32, offset: 1888)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1587, file: !2, line: 101, baseType: !353, size: 32, offset: 1920)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1587, file: !2, line: 102, baseType: !353, size: 32, offset: 1952)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !1587, file: !2, line: 103, baseType: !663, size: 8, offset: 1984)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1587, file: !2, line: 104, baseType: !1661, size: 128, offset: 2048)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1587, file: !2, line: 104, size: 128, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1661, file: !2, line: 104, baseType: !1585, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1661, file: !2, line: 104, baseType: !1585, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1582, file: !2, line: 67, baseType: !1585, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "shuttingdown", scope: !577, file: !2, line: 110, baseType: !663, size: 8, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !577, file: !2, line: 111, baseType: !1668, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "isccc_symtab_t", file: !1670, line: 44, baseType: !1671)
!1670 = !DIFile(filename: "lib/isccc/include/isccc/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "1dede9ab35c3ffee0269aabcd9174902")
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "isccc_symtab", file: !1670, line: 44, flags: DIFlagFwdDecl)
!1672 = !{!1673}
!1673 = !DILocalVariable(name: "controls", arg: 1, scope: !571, file: !2, line: 685, type: !574)
!1674 = !DILocation(line: 685, column: 43, scope: !571)
!1675 = !DILocation(line: 686, column: 20, scope: !571)
!1676 = !DILocation(line: 686, column: 2, scope: !571)
!1677 = !DILocation(line: 687, column: 2, scope: !571)
!1678 = !DILocation(line: 687, column: 12, scope: !571)
!1679 = !DILocation(line: 687, column: 25, scope: !571)
!1680 = !DILocation(line: 688, column: 1, scope: !571)
!1681 = distinct !DISubprogram(name: "controls_shutdown", scope: !2, file: !2, line: 667, type: !572, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !1682)
!1682 = !{!1683, !1684, !1685}
!1683 = !DILocalVariable(name: "controls", arg: 1, scope: !1681, file: !2, line: 667, type: !574)
!1684 = !DILocalVariable(name: "listener", scope: !1681, file: !2, line: 668, type: !1585)
!1685 = !DILocalVariable(name: "next", scope: !1681, file: !2, line: 669, type: !1585)
!1686 = !DILocation(line: 667, column: 37, scope: !1681)
!1687 = !DILocation(line: 668, column: 2, scope: !1681)
!1688 = !DILocation(line: 668, column: 21, scope: !1681)
!1689 = !DILocation(line: 669, column: 2, scope: !1681)
!1690 = !DILocation(line: 669, column: 21, scope: !1681)
!1691 = !DILocation(line: 671, column: 18, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 671, column: 2)
!1693 = !DILocation(line: 671, column: 16, scope: !1692)
!1694 = !DILocation(line: 671, column: 7, scope: !1692)
!1695 = !DILocation(line: 672, column: 7, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 671, column: 2)
!1697 = !DILocation(line: 672, column: 16, scope: !1696)
!1698 = !DILocation(line: 671, column: 2, scope: !1692)
!1699 = !DILocation(line: 679, column: 10, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !2, line: 674, column: 2)
!1701 = !DILocation(line: 679, column: 8, scope: !1700)
!1702 = !DILocation(line: 680, column: 21, scope: !1700)
!1703 = !DILocation(line: 680, column: 3, scope: !1700)
!1704 = !DILocation(line: 681, column: 2, scope: !1700)
!1705 = !DILocation(line: 673, column: 18, scope: !1696)
!1706 = !DILocation(line: 673, column: 16, scope: !1696)
!1707 = !DILocation(line: 671, column: 2, scope: !1696)
!1708 = distinct !{!1708, !1698, !1709, !1710}
!1709 = !DILocation(line: 681, column: 2, scope: !1692)
!1710 = !{!"llvm.loop.mustprogress"}
!1711 = !DILocation(line: 682, column: 1, scope: !1681)
!1712 = distinct !DISubprogram(name: "named_controls_configure", scope: !2, file: !2, line: 1273, type: !1713, scopeLine: 1275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !1732)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!429, !574, !1715, !1720}
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "cfg_obj_t", file: !1718, line: 60, baseType: !1719)
!1718 = !DIFile(filename: "lib/isccfg/include/isccfg/cfg.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "3dbd6747db634155dabecba5c2288c8c")
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfg_obj", file: !1718, line: 60, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "cfg_aclconfctx_t", file: !1722, line: 32, baseType: !1723)
!1722 = !DIFile(filename: "lib/isccfg/include/isccfg/aclconf.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f460fd5882e735eaa60da6bed334f5f7")
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cfg_aclconfctx", file: !1722, line: 25, size: 256, elements: !1724)
!1724 = !{!1725, !1730, !1731}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "named_acl_cache", scope: !1723, file: !1722, line: 26, baseType: !1726, size: 128)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1723, file: !1722, line: 26, size: 128, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1726, file: !1722, line: 26, baseType: !681, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1726, file: !1722, line: 26, baseType: !681, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !1723, file: !1722, line: 27, baseType: !587, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1723, file: !1722, line: 31, baseType: !635, size: 64, offset: 192)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1744, !1745, !1749, !1755, !1756, !1760, !1761, !1762, !1766, !1767, !1771, !1772, !1773, !1774, !1776, !1780}
!1733 = !DILocalVariable(name: "cp", arg: 1, scope: !1712, file: !2, line: 1273, type: !574)
!1734 = !DILocalVariable(name: "config", arg: 2, scope: !1712, file: !2, line: 1273, type: !1715)
!1735 = !DILocalVariable(name: "aclconfctx", arg: 3, scope: !1712, file: !2, line: 1274, type: !1720)
!1736 = !DILocalVariable(name: "listener", scope: !1712, file: !2, line: 1276, type: !1585)
!1737 = !DILocalVariable(name: "new_listeners", scope: !1712, file: !2, line: 1277, type: !1581)
!1738 = !DILocalVariable(name: "controlslist", scope: !1712, file: !2, line: 1278, type: !1715)
!1739 = !DILocalVariable(name: "element", scope: !1712, file: !2, line: 1279, type: !1740)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1742)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "cfg_listelt_t", file: !1718, line: 65, baseType: !1743)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfg_listelt", file: !1718, line: 65, flags: DIFlagFwdDecl)
!1744 = !DILocalVariable(name: "element2", scope: !1712, file: !2, line: 1279, type: !1740)
!1745 = !DILocalVariable(name: "socktext", scope: !1712, file: !2, line: 1280, type: !1746)
!1746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 504, elements: !1747)
!1747 = !{!1748}
!1748 = !DISubrange(count: 63)
!1749 = !DILocalVariable(name: "controls", scope: !1750, file: !2, line: 1301, type: !1715)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 1300, column: 42)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !2, line: 1298, column: 3)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 1298, column: 3)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 1297, column: 28)
!1754 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 1297, column: 6)
!1755 = !DILocalVariable(name: "inetcontrols", scope: !1750, file: !2, line: 1302, type: !1715)
!1756 = !DILocalVariable(name: "control", scope: !1757, file: !2, line: 1312, type: !1715)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 1311, column: 45)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !2, line: 1309, column: 4)
!1759 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 1309, column: 4)
!1760 = !DILocalVariable(name: "obj", scope: !1757, file: !2, line: 1313, type: !1715)
!1761 = !DILocalVariable(name: "addr", scope: !1757, file: !2, line: 1314, type: !431)
!1762 = !DILocalVariable(name: "controls", scope: !1763, file: !2, line: 1367, type: !1715)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 1366, column: 42)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !2, line: 1364, column: 3)
!1765 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 1364, column: 3)
!1766 = !DILocalVariable(name: "unixcontrols", scope: !1763, file: !2, line: 1368, type: !1715)
!1767 = !DILocalVariable(name: "control", scope: !1768, file: !2, line: 1378, type: !1715)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 1377, column: 45)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 1375, column: 4)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 1375, column: 4)
!1771 = !DILocalVariable(name: "path", scope: !1768, file: !2, line: 1379, type: !1715)
!1772 = !DILocalVariable(name: "addr", scope: !1768, file: !2, line: 1380, type: !431)
!1773 = !DILocalVariable(name: "result", scope: !1768, file: !2, line: 1381, type: !429)
!1774 = !DILocalVariable(name: "i", scope: !1775, file: !2, line: 1438, type: !332)
!1775 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 1437, column: 9)
!1776 = !DILocalVariable(name: "addr", scope: !1777, file: !2, line: 1441, type: !431)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !2, line: 1440, column: 27)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 1440, column: 3)
!1779 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 1440, column: 3)
!1780 = !DILocalVariable(name: "localhost", scope: !1781, file: !2, line: 1444, type: !457)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !2, line: 1443, column: 16)
!1782 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 1443, column: 8)
!1783 = !DILocation(line: 1273, column: 44, scope: !1712)
!1784 = !DILocation(line: 1273, column: 65, scope: !1712)
!1785 = !DILocation(line: 1274, column: 23, scope: !1712)
!1786 = !DILocation(line: 1276, column: 2, scope: !1712)
!1787 = !DILocation(line: 1276, column: 21, scope: !1712)
!1788 = !DILocation(line: 1277, column: 2, scope: !1712)
!1789 = !DILocation(line: 1277, column: 24, scope: !1712)
!1790 = !DILocation(line: 1278, column: 2, scope: !1712)
!1791 = !DILocation(line: 1278, column: 19, scope: !1712)
!1792 = !DILocation(line: 1279, column: 2, scope: !1712)
!1793 = !DILocation(line: 1279, column: 23, scope: !1712)
!1794 = !DILocation(line: 1279, column: 33, scope: !1712)
!1795 = !DILocation(line: 1280, column: 2, scope: !1712)
!1796 = !DILocation(line: 1280, column: 7, scope: !1712)
!1797 = !DILocation(line: 1282, column: 2, scope: !1712)
!1798 = !DILocation(line: 1282, column: 2, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 1282, column: 2)
!1800 = !DILocation(line: 1287, column: 20, scope: !1712)
!1801 = !DILocation(line: 1287, column: 8, scope: !1712)
!1802 = !DILocation(line: 1297, column: 6, scope: !1754)
!1803 = !DILocation(line: 1297, column: 19, scope: !1754)
!1804 = !DILocation(line: 1297, column: 6, scope: !1712)
!1805 = !DILocation(line: 1298, column: 33, scope: !1752)
!1806 = !DILocation(line: 1298, column: 18, scope: !1752)
!1807 = !DILocation(line: 1298, column: 16, scope: !1752)
!1808 = !DILocation(line: 1298, column: 8, scope: !1752)
!1809 = !DILocation(line: 1299, column: 8, scope: !1751)
!1810 = !DILocation(line: 1299, column: 16, scope: !1751)
!1811 = !DILocation(line: 1298, column: 3, scope: !1752)
!1812 = !DILocation(line: 1301, column: 4, scope: !1750)
!1813 = !DILocation(line: 1301, column: 21, scope: !1750)
!1814 = !DILocation(line: 1302, column: 4, scope: !1750)
!1815 = !DILocation(line: 1302, column: 21, scope: !1750)
!1816 = !DILocation(line: 1304, column: 33, scope: !1750)
!1817 = !DILocation(line: 1304, column: 15, scope: !1750)
!1818 = !DILocation(line: 1304, column: 13, scope: !1750)
!1819 = !DILocation(line: 1305, column: 22, scope: !1750)
!1820 = !DILocation(line: 1305, column: 10, scope: !1750)
!1821 = !DILocation(line: 1306, column: 8, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 1306, column: 8)
!1823 = !DILocation(line: 1306, column: 21, scope: !1822)
!1824 = !DILocation(line: 1306, column: 8, scope: !1750)
!1825 = !DILocation(line: 1307, column: 5, scope: !1822)
!1826 = !DILocation(line: 1309, column: 35, scope: !1759)
!1827 = !DILocation(line: 1309, column: 20, scope: !1759)
!1828 = !DILocation(line: 1309, column: 18, scope: !1759)
!1829 = !DILocation(line: 1309, column: 9, scope: !1759)
!1830 = !DILocation(line: 1310, column: 9, scope: !1758)
!1831 = !DILocation(line: 1310, column: 18, scope: !1758)
!1832 = !DILocation(line: 1309, column: 4, scope: !1759)
!1833 = !DILocation(line: 1312, column: 5, scope: !1757)
!1834 = !DILocation(line: 1312, column: 22, scope: !1757)
!1835 = !DILocation(line: 1313, column: 5, scope: !1757)
!1836 = !DILocation(line: 1313, column: 22, scope: !1757)
!1837 = !DILocation(line: 1314, column: 5, scope: !1757)
!1838 = !DILocation(line: 1314, column: 20, scope: !1757)
!1839 = !DILocation(line: 1321, column: 33, scope: !1757)
!1840 = !DILocation(line: 1321, column: 15, scope: !1757)
!1841 = !DILocation(line: 1321, column: 13, scope: !1757)
!1842 = !DILocation(line: 1323, column: 25, scope: !1757)
!1843 = !DILocation(line: 1323, column: 11, scope: !1757)
!1844 = !DILocation(line: 1323, column: 9, scope: !1757)
!1845 = !DILocation(line: 1324, column: 32, scope: !1757)
!1846 = !DILocation(line: 1324, column: 13, scope: !1757)
!1847 = !DILocation(line: 1324, column: 12, scope: !1757)
!1848 = !DILocation(line: 1325, column: 9, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 1325, column: 9)
!1850 = !DILocation(line: 1325, column: 37, scope: !1849)
!1851 = !DILocation(line: 1325, column: 9, scope: !1757)
!1852 = !DILocation(line: 1326, column: 6, scope: !1849)
!1853 = !DILocation(line: 1329, column: 32, scope: !1757)
!1854 = !DILocation(line: 1329, column: 5, scope: !1757)
!1855 = !DILocation(line: 1332, column: 19, scope: !1757)
!1856 = !DILocation(line: 1334, column: 12, scope: !1757)
!1857 = !DILocation(line: 1337, column: 12, scope: !1757)
!1858 = !DILocation(line: 1332, column: 5, scope: !1757)
!1859 = !DILocation(line: 1339, column: 21, scope: !1757)
!1860 = !DILocation(line: 1339, column: 36, scope: !1757)
!1861 = !DILocation(line: 1339, column: 45, scope: !1757)
!1862 = !DILocation(line: 1340, column: 14, scope: !1757)
!1863 = !DILocation(line: 1340, column: 26, scope: !1757)
!1864 = !DILocation(line: 1339, column: 5, scope: !1757)
!1865 = !DILocation(line: 1343, column: 9, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 1343, column: 9)
!1867 = !DILocation(line: 1343, column: 18, scope: !1866)
!1868 = !DILocation(line: 1343, column: 9, scope: !1757)
!1869 = !DILocation(line: 1348, column: 6, scope: !1866)
!1870 = !DILocation(line: 1348, column: 6, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 1348, column: 6)
!1872 = !DILocation(line: 1348, column: 6, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 1348, column: 6)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 1348, column: 6)
!1875 = !DILocation(line: 1348, column: 6, scope: !1874)
!1876 = !DILocation(line: 1348, column: 6, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1873, file: !2, line: 1348, column: 6)
!1878 = !DILocation(line: 1348, column: 6, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 1348, column: 6)
!1880 = !DILocation(line: 1348, column: 6, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 1348, column: 6)
!1882 = !DILocation(line: 1354, column: 19, scope: !1866)
!1883 = !DILocation(line: 1354, column: 34, scope: !1866)
!1884 = !DILocation(line: 1355, column: 12, scope: !1866)
!1885 = !DILocation(line: 1355, column: 27, scope: !1866)
!1886 = !DILocation(line: 1356, column: 12, scope: !1866)
!1887 = !DILocation(line: 1354, column: 6, scope: !1866)
!1888 = !DILocation(line: 1359, column: 9, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 1359, column: 9)
!1890 = !DILocation(line: 1359, column: 18, scope: !1889)
!1891 = !DILocation(line: 1359, column: 9, scope: !1757)
!1892 = !DILocation(line: 1360, column: 6, scope: !1889)
!1893 = !DILocation(line: 1360, column: 6, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1889, file: !2, line: 1360, column: 6)
!1895 = !DILocation(line: 1360, column: 6, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 1360, column: 6)
!1897 = distinct !DILexicalBlock(scope: !1894, file: !2, line: 1360, column: 6)
!1898 = !DILocation(line: 1360, column: 6, scope: !1897)
!1899 = !DILocation(line: 1362, column: 4, scope: !1758)
!1900 = !DILocation(line: 1362, column: 4, scope: !1757)
!1901 = !DILocation(line: 1311, column: 34, scope: !1758)
!1902 = !DILocation(line: 1311, column: 20, scope: !1758)
!1903 = !DILocation(line: 1311, column: 18, scope: !1758)
!1904 = !DILocation(line: 1309, column: 4, scope: !1758)
!1905 = distinct !{!1905, !1832, !1906, !1710}
!1906 = !DILocation(line: 1362, column: 4, scope: !1759)
!1907 = !DILocation(line: 1363, column: 3, scope: !1751)
!1908 = !DILocation(line: 1363, column: 3, scope: !1750)
!1909 = !DILocation(line: 1300, column: 32, scope: !1751)
!1910 = !DILocation(line: 1300, column: 18, scope: !1751)
!1911 = !DILocation(line: 1300, column: 16, scope: !1751)
!1912 = !DILocation(line: 1298, column: 3, scope: !1751)
!1913 = distinct !{!1913, !1811, !1914, !1710}
!1914 = !DILocation(line: 1363, column: 3, scope: !1752)
!1915 = !DILocation(line: 1364, column: 33, scope: !1765)
!1916 = !DILocation(line: 1364, column: 18, scope: !1765)
!1917 = !DILocation(line: 1364, column: 16, scope: !1765)
!1918 = !DILocation(line: 1364, column: 8, scope: !1765)
!1919 = !DILocation(line: 1365, column: 8, scope: !1764)
!1920 = !DILocation(line: 1365, column: 16, scope: !1764)
!1921 = !DILocation(line: 1364, column: 3, scope: !1765)
!1922 = !DILocation(line: 1367, column: 4, scope: !1763)
!1923 = !DILocation(line: 1367, column: 21, scope: !1763)
!1924 = !DILocation(line: 1368, column: 4, scope: !1763)
!1925 = !DILocation(line: 1368, column: 21, scope: !1763)
!1926 = !DILocation(line: 1370, column: 33, scope: !1763)
!1927 = !DILocation(line: 1370, column: 15, scope: !1763)
!1928 = !DILocation(line: 1370, column: 13, scope: !1763)
!1929 = !DILocation(line: 1371, column: 22, scope: !1763)
!1930 = !DILocation(line: 1371, column: 10, scope: !1763)
!1931 = !DILocation(line: 1372, column: 8, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 1372, column: 8)
!1933 = !DILocation(line: 1372, column: 21, scope: !1932)
!1934 = !DILocation(line: 1372, column: 8, scope: !1763)
!1935 = !DILocation(line: 1373, column: 5, scope: !1932)
!1936 = !DILocation(line: 1375, column: 35, scope: !1770)
!1937 = !DILocation(line: 1375, column: 20, scope: !1770)
!1938 = !DILocation(line: 1375, column: 18, scope: !1770)
!1939 = !DILocation(line: 1375, column: 9, scope: !1770)
!1940 = !DILocation(line: 1376, column: 9, scope: !1769)
!1941 = !DILocation(line: 1376, column: 18, scope: !1769)
!1942 = !DILocation(line: 1375, column: 4, scope: !1770)
!1943 = !DILocation(line: 1378, column: 5, scope: !1768)
!1944 = !DILocation(line: 1378, column: 22, scope: !1768)
!1945 = !DILocation(line: 1379, column: 5, scope: !1768)
!1946 = !DILocation(line: 1379, column: 22, scope: !1768)
!1947 = !DILocation(line: 1380, column: 5, scope: !1768)
!1948 = !DILocation(line: 1380, column: 20, scope: !1768)
!1949 = !DILocation(line: 1381, column: 5, scope: !1768)
!1950 = !DILocation(line: 1381, column: 18, scope: !1768)
!1951 = !DILocation(line: 1388, column: 33, scope: !1768)
!1952 = !DILocation(line: 1388, column: 15, scope: !1768)
!1953 = !DILocation(line: 1388, column: 13, scope: !1768)
!1954 = !DILocation(line: 1390, column: 26, scope: !1768)
!1955 = !DILocation(line: 1390, column: 12, scope: !1768)
!1956 = !DILocation(line: 1390, column: 10, scope: !1768)
!1957 = !DILocation(line: 1392, column: 30, scope: !1768)
!1958 = !DILocation(line: 1392, column: 13, scope: !1768)
!1959 = !DILocation(line: 1391, column: 14, scope: !1768)
!1960 = !DILocation(line: 1391, column: 12, scope: !1768)
!1961 = !DILocation(line: 1393, column: 9, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1768, file: !2, line: 1393, column: 9)
!1963 = !DILocation(line: 1393, column: 16, scope: !1962)
!1964 = !DILocation(line: 1393, column: 9, scope: !1768)
!1965 = !DILocation(line: 1394, column: 20, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !2, line: 1393, column: 34)
!1967 = !DILocation(line: 1396, column: 12, scope: !1966)
!1968 = !DILocation(line: 1399, column: 29, scope: !1966)
!1969 = !DILocation(line: 1399, column: 12, scope: !1966)
!1970 = !DILocation(line: 1400, column: 30, scope: !1966)
!1971 = !DILocation(line: 1400, column: 12, scope: !1966)
!1972 = !DILocation(line: 1394, column: 6, scope: !1966)
!1973 = !DILocation(line: 1401, column: 6, scope: !1966)
!1974 = !DILocation(line: 1404, column: 19, scope: !1768)
!1975 = !DILocation(line: 1406, column: 12, scope: !1768)
!1976 = !DILocation(line: 1409, column: 29, scope: !1768)
!1977 = !DILocation(line: 1409, column: 12, scope: !1768)
!1978 = !DILocation(line: 1404, column: 5, scope: !1768)
!1979 = !DILocation(line: 1411, column: 21, scope: !1768)
!1980 = !DILocation(line: 1411, column: 36, scope: !1768)
!1981 = !DILocation(line: 1411, column: 45, scope: !1768)
!1982 = !DILocation(line: 1412, column: 14, scope: !1768)
!1983 = !DILocation(line: 1413, column: 24, scope: !1768)
!1984 = !DILocation(line: 1413, column: 7, scope: !1768)
!1985 = !DILocation(line: 1411, column: 5, scope: !1768)
!1986 = !DILocation(line: 1416, column: 9, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1768, file: !2, line: 1416, column: 9)
!1988 = !DILocation(line: 1416, column: 18, scope: !1987)
!1989 = !DILocation(line: 1416, column: 9, scope: !1768)
!1990 = !DILocation(line: 1421, column: 6, scope: !1987)
!1991 = !DILocation(line: 1421, column: 6, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 1421, column: 6)
!1993 = !DILocation(line: 1421, column: 6, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !2, line: 1421, column: 6)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !2, line: 1421, column: 6)
!1996 = !DILocation(line: 1421, column: 6, scope: !1995)
!1997 = !DILocation(line: 1421, column: 6, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 1421, column: 6)
!1999 = !DILocation(line: 1421, column: 6, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1995, file: !2, line: 1421, column: 6)
!2001 = !DILocation(line: 1421, column: 6, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 1421, column: 6)
!2003 = !DILocation(line: 1427, column: 19, scope: !1987)
!2004 = !DILocation(line: 1427, column: 34, scope: !1987)
!2005 = !DILocation(line: 1428, column: 12, scope: !1987)
!2006 = !DILocation(line: 1428, column: 27, scope: !1987)
!2007 = !DILocation(line: 1429, column: 29, scope: !1987)
!2008 = !DILocation(line: 1429, column: 12, scope: !1987)
!2009 = !DILocation(line: 1427, column: 6, scope: !1987)
!2010 = !DILocation(line: 1432, column: 9, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1768, file: !2, line: 1432, column: 9)
!2012 = !DILocation(line: 1432, column: 18, scope: !2011)
!2013 = !DILocation(line: 1432, column: 9, scope: !1768)
!2014 = !DILocation(line: 1433, column: 6, scope: !2011)
!2015 = !DILocation(line: 1433, column: 6, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 1433, column: 6)
!2017 = !DILocation(line: 1433, column: 6, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 1433, column: 6)
!2019 = distinct !DILexicalBlock(scope: !2016, file: !2, line: 1433, column: 6)
!2020 = !DILocation(line: 1433, column: 6, scope: !2019)
!2021 = !DILocation(line: 1435, column: 4, scope: !1769)
!2022 = !DILocation(line: 1435, column: 4, scope: !1768)
!2023 = !DILocation(line: 1377, column: 34, scope: !1769)
!2024 = !DILocation(line: 1377, column: 20, scope: !1769)
!2025 = !DILocation(line: 1377, column: 18, scope: !1769)
!2026 = !DILocation(line: 1375, column: 4, scope: !1769)
!2027 = distinct !{!2027, !1942, !2028, !1710}
!2028 = !DILocation(line: 1435, column: 4, scope: !1770)
!2029 = !DILocation(line: 1436, column: 3, scope: !1764)
!2030 = !DILocation(line: 1436, column: 3, scope: !1763)
!2031 = !DILocation(line: 1366, column: 32, scope: !1764)
!2032 = !DILocation(line: 1366, column: 18, scope: !1764)
!2033 = !DILocation(line: 1366, column: 16, scope: !1764)
!2034 = !DILocation(line: 1364, column: 3, scope: !1764)
!2035 = distinct !{!2035, !1921, !2036, !1710}
!2036 = !DILocation(line: 1436, column: 3, scope: !1765)
!2037 = !DILocation(line: 1437, column: 2, scope: !1753)
!2038 = !DILocation(line: 1438, column: 3, scope: !1775)
!2039 = !DILocation(line: 1438, column: 7, scope: !1775)
!2040 = !DILocation(line: 1440, column: 10, scope: !1779)
!2041 = !DILocation(line: 1440, column: 8, scope: !1779)
!2042 = !DILocation(line: 1440, column: 15, scope: !1778)
!2043 = !DILocation(line: 1440, column: 17, scope: !1778)
!2044 = !DILocation(line: 1440, column: 3, scope: !1779)
!2045 = !DILocation(line: 1441, column: 4, scope: !1777)
!2046 = !DILocation(line: 1441, column: 19, scope: !1777)
!2047 = !DILocation(line: 1443, column: 8, scope: !1782)
!2048 = !DILocation(line: 1443, column: 10, scope: !1782)
!2049 = !DILocation(line: 1443, column: 8, scope: !1777)
!2050 = !DILocation(line: 1444, column: 5, scope: !1781)
!2051 = !DILocation(line: 1444, column: 20, scope: !1781)
!2052 = !DILocation(line: 1446, column: 9, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1781, file: !2, line: 1446, column: 9)
!2054 = !DILocation(line: 1446, column: 29, scope: !2053)
!2055 = !DILocation(line: 1446, column: 9, scope: !1781)
!2056 = !DILocation(line: 1447, column: 6, scope: !2053)
!2057 = !DILocation(line: 1448, column: 24, scope: !1781)
!2058 = !DILocation(line: 1448, column: 15, scope: !1781)
!2059 = !DILocation(line: 1448, column: 22, scope: !1781)
!2060 = !DILocation(line: 1449, column: 5, scope: !1781)
!2061 = !DILocation(line: 1450, column: 4, scope: !1782)
!2062 = !DILocation(line: 1450, column: 4, scope: !1781)
!2063 = !DILocation(line: 1451, column: 9, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !2, line: 1451, column: 9)
!2065 = distinct !DILexicalBlock(scope: !1782, file: !2, line: 1450, column: 11)
!2066 = !DILocation(line: 1451, column: 29, scope: !2064)
!2067 = !DILocation(line: 1451, column: 9, scope: !2065)
!2068 = !DILocation(line: 1452, column: 6, scope: !2064)
!2069 = !DILocation(line: 1453, column: 5, scope: !2065)
!2070 = !DILocation(line: 1456, column: 4, scope: !1777)
!2071 = !DILocation(line: 1458, column: 31, scope: !1777)
!2072 = !DILocation(line: 1458, column: 4, scope: !1777)
!2073 = !DILocation(line: 1460, column: 20, scope: !1777)
!2074 = !DILocation(line: 1461, column: 19, scope: !1777)
!2075 = !DILocation(line: 1460, column: 4, scope: !1777)
!2076 = !DILocation(line: 1464, column: 8, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 1464, column: 8)
!2078 = !DILocation(line: 1464, column: 17, scope: !2077)
!2079 = !DILocation(line: 1464, column: 8, scope: !1777)
!2080 = !DILocation(line: 1469, column: 5, scope: !2077)
!2081 = !DILocation(line: 1469, column: 5, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2077, file: !2, line: 1469, column: 5)
!2083 = !DILocation(line: 1469, column: 5, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !2, line: 1469, column: 5)
!2085 = distinct !DILexicalBlock(scope: !2082, file: !2, line: 1469, column: 5)
!2086 = !DILocation(line: 1469, column: 5, scope: !2085)
!2087 = !DILocation(line: 1469, column: 5, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !2, line: 1469, column: 5)
!2089 = !DILocation(line: 1469, column: 5, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2085, file: !2, line: 1469, column: 5)
!2091 = !DILocation(line: 1469, column: 5, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2090, file: !2, line: 1469, column: 5)
!2093 = !DILocation(line: 1475, column: 18, scope: !2077)
!2094 = !DILocation(line: 1476, column: 24, scope: !2077)
!2095 = !DILocation(line: 1475, column: 5, scope: !2077)
!2096 = !DILocation(line: 1479, column: 8, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 1479, column: 8)
!2098 = !DILocation(line: 1479, column: 17, scope: !2097)
!2099 = !DILocation(line: 1479, column: 8, scope: !1777)
!2100 = !DILocation(line: 1480, column: 5, scope: !2097)
!2101 = !DILocation(line: 1480, column: 5, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2097, file: !2, line: 1480, column: 5)
!2103 = !DILocation(line: 1480, column: 5, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 1480, column: 5)
!2105 = distinct !DILexicalBlock(scope: !2102, file: !2, line: 1480, column: 5)
!2106 = !DILocation(line: 1480, column: 5, scope: !2105)
!2107 = !DILocation(line: 1482, column: 3, scope: !1778)
!2108 = !DILocation(line: 1482, column: 3, scope: !1777)
!2109 = !DILocation(line: 1440, column: 23, scope: !1778)
!2110 = !DILocation(line: 1440, column: 3, scope: !1778)
!2111 = distinct !{!2111, !2044, !2112, !1710}
!2112 = !DILocation(line: 1482, column: 3, scope: !1779)
!2113 = !DILocation(line: 1483, column: 2, scope: !1754)
!2114 = !DILocation(line: 1491, column: 20, scope: !1712)
!2115 = !DILocation(line: 1491, column: 2, scope: !1712)
!2116 = !DILocation(line: 1498, column: 2, scope: !1712)
!2117 = !DILocation(line: 1498, column: 2, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !2, line: 1498, column: 2)
!2119 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 1498, column: 2)
!2120 = !DILocation(line: 1498, column: 2, scope: !2119)
!2121 = !DILocation(line: 1498, column: 2, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2118, file: !2, line: 1498, column: 2)
!2123 = !DILocation(line: 1498, column: 2, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 1498, column: 2)
!2125 = !DILocation(line: 1500, column: 1, scope: !1712)
!2126 = !DILocation(line: 1499, column: 2, scope: !1712)
!2127 = !DISubprogram(name: "cfg_map_get", scope: !1718, file: !1718, line: 205, type: !2128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!429, !1715, !603, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!2131 = !DISubprogram(name: "cfg_list_first", scope: !1718, file: !1718, line: 419, type: !2132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!1740, !1715}
!2134 = !DISubprogram(name: "cfg_listelt_value", scope: !1718, file: !1718, line: 454, type: !2135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!2137, !1740}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!2138 = !DISubprogram(name: "cfg_tuple_get", scope: !1718, file: !1718, line: 252, type: !2139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!1715, !1715, !603}
!2141 = !DISubprogram(name: "cfg_obj_assockaddr", scope: !1718, file: !1718, line: 367, type: !2142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!2144, !1715}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!2146 = !DISubprogram(name: "isc_sockaddr_getport", scope: !433, file: !433, line: 166, type: !2147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!453, !2144}
!2149 = !DISubprogram(name: "isc_sockaddr_setport", scope: !433, file: !433, line: 160, type: !2150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !1430, !453}
!2152 = !DISubprogram(name: "isc_sockaddr_format", scope: !433, file: !433, line: 185, type: !2153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !2144, !512, !279}
!2155 = !DISubprogram(name: "isc_log_write", scope: !2156, file: !2156, line: 576, type: !2157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2156 = !DIFile(filename: "lib/isc/include/isc/log.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "6c5d6bf932d34a38240a36d83b90e60a")
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null, !2159, !2162, !2168, !332, !603, null}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_log_t", file: !369, line: 55, baseType: !2161)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_log", file: !369, line: 55, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_logcategory_t", file: !369, line: 56, baseType: !2164)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_logcategory", file: !2156, line: 104, size: 128, elements: !2165)
!2165 = !{!2166, !2167}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2164, file: !2156, line: 105, baseType: !603, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2164, file: !2156, line: 106, baseType: !279, size: 32, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_logmodule_t", file: !369, line: 58, baseType: !2170)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_logmodule", file: !2156, line: 112, size: 128, elements: !2171)
!2171 = !{!2172, !2173}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2170, file: !2156, line: 113, baseType: !603, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2170, file: !2156, line: 114, baseType: !279, size: 32, offset: 64)
!2174 = distinct !DISubprogram(name: "update_listener", scope: !2, file: !2, line: 970, type: !2175, scopeLine: 974, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !2178)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !574, !2177, !1715, !1715, !1430, !1720, !603, !1655}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!2178 = !{!2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2197, !2200, !2201}
!2179 = !DILocalVariable(name: "cp", arg: 1, scope: !2174, file: !2, line: 970, type: !574)
!2180 = !DILocalVariable(name: "listenerp", arg: 2, scope: !2174, file: !2, line: 970, type: !2177)
!2181 = !DILocalVariable(name: "control", arg: 3, scope: !2174, file: !2, line: 971, type: !1715)
!2182 = !DILocalVariable(name: "config", arg: 4, scope: !2174, file: !2, line: 971, type: !1715)
!2183 = !DILocalVariable(name: "addr", arg: 5, scope: !2174, file: !2, line: 972, type: !1430)
!2184 = !DILocalVariable(name: "aclconfctx", arg: 6, scope: !2174, file: !2, line: 972, type: !1720)
!2185 = !DILocalVariable(name: "socktext", arg: 7, scope: !2174, file: !2, line: 973, type: !603)
!2186 = !DILocalVariable(name: "type", arg: 8, scope: !2174, file: !2, line: 973, type: !1655)
!2187 = !DILocalVariable(name: "listener", scope: !2174, file: !2, line: 975, type: !1585)
!2188 = !DILocalVariable(name: "allow", scope: !2174, file: !2, line: 976, type: !1715)
!2189 = !DILocalVariable(name: "global_keylist", scope: !2174, file: !2, line: 977, type: !1715)
!2190 = !DILocalVariable(name: "control_keylist", scope: !2174, file: !2, line: 978, type: !1715)
!2191 = !DILocalVariable(name: "new_acl", scope: !2174, file: !2, line: 979, type: !681)
!2192 = !DILocalVariable(name: "keys", scope: !2174, file: !2, line: 980, type: !1598)
!2193 = !DILocalVariable(name: "result", scope: !2174, file: !2, line: 981, type: !429)
!2194 = !DILocalVariable(name: "readonly", scope: !2195, file: !2, line: 1068, type: !1715)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !2, line: 1067, column: 23)
!2196 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 1067, column: 6)
!2197 = !DILocalVariable(name: "perm", scope: !2198, file: !2, line: 1093, type: !353)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !2, line: 1092, column: 62)
!2199 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 1092, column: 6)
!2200 = !DILocalVariable(name: "owner", scope: !2198, file: !2, line: 1093, type: !353)
!2201 = !DILocalVariable(name: "group", scope: !2198, file: !2, line: 1093, type: !353)
!2202 = !DILocation(line: 970, column: 35, scope: !2174)
!2203 = !DILocation(line: 970, column: 59, scope: !2174)
!2204 = !DILocation(line: 971, column: 20, scope: !2174)
!2205 = !DILocation(line: 971, column: 46, scope: !2174)
!2206 = !DILocation(line: 972, column: 19, scope: !2174)
!2207 = !DILocation(line: 972, column: 43, scope: !2174)
!2208 = !DILocation(line: 973, column: 15, scope: !2174)
!2209 = !DILocation(line: 973, column: 42, scope: !2174)
!2210 = !DILocation(line: 975, column: 2, scope: !2174)
!2211 = !DILocation(line: 975, column: 21, scope: !2174)
!2212 = !DILocation(line: 976, column: 2, scope: !2174)
!2213 = !DILocation(line: 976, column: 19, scope: !2174)
!2214 = !DILocation(line: 977, column: 2, scope: !2174)
!2215 = !DILocation(line: 977, column: 19, scope: !2174)
!2216 = !DILocation(line: 978, column: 2, scope: !2174)
!2217 = !DILocation(line: 978, column: 19, scope: !2174)
!2218 = !DILocation(line: 979, column: 2, scope: !2174)
!2219 = !DILocation(line: 979, column: 13, scope: !2174)
!2220 = !DILocation(line: 980, column: 2, scope: !2174)
!2221 = !DILocation(line: 980, column: 19, scope: !2174)
!2222 = !DILocation(line: 981, column: 2, scope: !2174)
!2223 = !DILocation(line: 981, column: 15, scope: !2174)
!2224 = !DILocation(line: 983, column: 18, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 983, column: 2)
!2226 = !DILocation(line: 983, column: 16, scope: !2225)
!2227 = !DILocation(line: 983, column: 7, scope: !2225)
!2228 = !DILocation(line: 984, column: 7, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 983, column: 2)
!2230 = !DILocation(line: 984, column: 16, scope: !2229)
!2231 = !DILocation(line: 983, column: 2, scope: !2225)
!2232 = !DILocation(line: 986, column: 26, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !2, line: 986, column: 7)
!2234 = !DILocation(line: 986, column: 33, scope: !2233)
!2235 = !DILocation(line: 986, column: 43, scope: !2233)
!2236 = !DILocation(line: 986, column: 7, scope: !2233)
!2237 = !DILocation(line: 986, column: 7, scope: !2229)
!2238 = !DILocation(line: 987, column: 4, scope: !2233)
!2239 = !DILocation(line: 986, column: 50, scope: !2233)
!2240 = !DILocation(line: 985, column: 18, scope: !2229)
!2241 = !DILocation(line: 985, column: 16, scope: !2229)
!2242 = !DILocation(line: 983, column: 2, scope: !2229)
!2243 = distinct !{!2243, !2231, !2244, !1710}
!2244 = !DILocation(line: 987, column: 4, scope: !2225)
!2245 = !DILocation(line: 989, column: 6, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 989, column: 6)
!2247 = !DILocation(line: 989, column: 15, scope: !2246)
!2248 = !DILocation(line: 989, column: 6, scope: !2174)
!2249 = !DILocation(line: 990, column: 4, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2246, file: !2, line: 989, column: 24)
!2251 = !DILocation(line: 990, column: 14, scope: !2250)
!2252 = !DILocation(line: 991, column: 3, scope: !2250)
!2253 = !DILocation(line: 1014, column: 6, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 1014, column: 6)
!2255 = !DILocation(line: 1014, column: 14, scope: !2254)
!2256 = !DILocation(line: 1014, column: 6, scope: !2174)
!2257 = !DILocation(line: 1015, column: 16, scope: !2254)
!2258 = !DILocation(line: 1015, column: 24, scope: !2254)
!2259 = !DILocation(line: 1015, column: 3, scope: !2254)
!2260 = !DILocation(line: 1018, column: 6, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 1018, column: 6)
!2262 = !DILocation(line: 1018, column: 22, scope: !2261)
!2263 = !DILocation(line: 1018, column: 6, scope: !2174)
!2264 = !DILocation(line: 1019, column: 3, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 1018, column: 31)
!2266 = !DILocation(line: 1021, column: 3, scope: !2265)
!2267 = !DILocation(line: 1021, column: 3, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 1021, column: 3)
!2269 = !DILocation(line: 1022, column: 35, scope: !2265)
!2270 = !DILocation(line: 1023, column: 7, scope: !2265)
!2271 = !DILocation(line: 1023, column: 17, scope: !2265)
!2272 = !DILocation(line: 1022, column: 12, scope: !2265)
!2273 = !DILocation(line: 1022, column: 10, scope: !2265)
!2274 = !DILocation(line: 1024, column: 7, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 1024, column: 7)
!2276 = !DILocation(line: 1024, column: 14, scope: !2275)
!2277 = !DILocation(line: 1024, column: 7, scope: !2265)
!2278 = !DILocation(line: 1025, column: 25, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2275, file: !2, line: 1024, column: 32)
!2280 = !DILocation(line: 1025, column: 35, scope: !2279)
!2281 = !DILocation(line: 1025, column: 41, scope: !2279)
!2282 = !DILocation(line: 1025, column: 51, scope: !2279)
!2283 = !DILocation(line: 1025, column: 4, scope: !2279)
!2284 = !DILocation(line: 1026, column: 4, scope: !2279)
!2285 = !DILocation(line: 1026, column: 14, scope: !2279)
!2286 = !DILocation(line: 1026, column: 21, scope: !2279)
!2287 = !DILocation(line: 1027, column: 18, scope: !2279)
!2288 = !DILocation(line: 1027, column: 27, scope: !2279)
!2289 = !DILocation(line: 1027, column: 44, scope: !2279)
!2290 = !DILocation(line: 1027, column: 54, scope: !2279)
!2291 = !DILocation(line: 1028, column: 11, scope: !2279)
!2292 = !DILocation(line: 1028, column: 21, scope: !2279)
!2293 = !DILocation(line: 1028, column: 27, scope: !2279)
!2294 = !DILocation(line: 1027, column: 4, scope: !2279)
!2295 = !DILocation(line: 1029, column: 3, scope: !2279)
!2296 = !DILocation(line: 1030, column: 2, scope: !2265)
!2297 = !DILocation(line: 1031, column: 24, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 1030, column: 9)
!2299 = !DILocation(line: 1031, column: 34, scope: !2298)
!2300 = !DILocation(line: 1031, column: 40, scope: !2298)
!2301 = !DILocation(line: 1031, column: 50, scope: !2298)
!2302 = !DILocation(line: 1031, column: 3, scope: !2298)
!2303 = !DILocation(line: 1032, column: 24, scope: !2298)
!2304 = !DILocation(line: 1032, column: 34, scope: !2298)
!2305 = !DILocation(line: 1032, column: 41, scope: !2298)
!2306 = !DILocation(line: 1032, column: 51, scope: !2298)
!2307 = !DILocation(line: 1032, column: 12, scope: !2298)
!2308 = !DILocation(line: 1032, column: 10, scope: !2298)
!2309 = !DILocation(line: 1035, column: 6, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 1035, column: 6)
!2311 = !DILocation(line: 1035, column: 13, scope: !2310)
!2312 = !DILocation(line: 1035, column: 30, scope: !2310)
!2313 = !DILocation(line: 1035, column: 33, scope: !2310)
!2314 = !DILocation(line: 1035, column: 48, scope: !2310)
!2315 = !DILocation(line: 1035, column: 6, scope: !2174)
!2316 = !DILocation(line: 1042, column: 7, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !2, line: 1042, column: 7)
!2318 = distinct !DILexicalBlock(scope: !2310, file: !2, line: 1035, column: 57)
!2319 = !DILocation(line: 1042, column: 15, scope: !2317)
!2320 = !DILocation(line: 1042, column: 7, scope: !2318)
!2321 = !DILocation(line: 1043, column: 16, scope: !2317)
!2322 = !DILocation(line: 1043, column: 25, scope: !2317)
!2323 = !DILocation(line: 1046, column: 9, scope: !2317)
!2324 = !DILocation(line: 1046, column: 37, scope: !2317)
!2325 = !DILocation(line: 1046, column: 19, scope: !2317)
!2326 = !DILocation(line: 1043, column: 4, scope: !2317)
!2327 = !DILocation(line: 1048, column: 18, scope: !2317)
!2328 = !DILocation(line: 1049, column: 11, scope: !2317)
!2329 = !DILocation(line: 1052, column: 11, scope: !2317)
!2330 = !DILocation(line: 1052, column: 39, scope: !2317)
!2331 = !DILocation(line: 1052, column: 21, scope: !2317)
!2332 = !DILocation(line: 1048, column: 4, scope: !2317)
!2333 = !DILocation(line: 1053, column: 2, scope: !2318)
!2334 = !DILocation(line: 1058, column: 6, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 1058, column: 6)
!2336 = !DILocation(line: 1058, column: 14, scope: !2335)
!2337 = !DILocation(line: 1058, column: 22, scope: !2335)
!2338 = !DILocation(line: 1058, column: 25, scope: !2335)
!2339 = !DILocation(line: 1058, column: 30, scope: !2335)
!2340 = !DILocation(line: 1058, column: 6, scope: !2174)
!2341 = !DILocation(line: 1059, column: 25, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2335, file: !2, line: 1058, column: 53)
!2343 = !DILocation(line: 1059, column: 11, scope: !2342)
!2344 = !DILocation(line: 1059, column: 9, scope: !2342)
!2345 = !DILocation(line: 1060, column: 31, scope: !2342)
!2346 = !DILocation(line: 1060, column: 38, scope: !2342)
!2347 = !DILocation(line: 1060, column: 46, scope: !2342)
!2348 = !DILocation(line: 1061, column: 10, scope: !2342)
!2349 = !DILocation(line: 1061, column: 22, scope: !2342)
!2350 = !DILocation(line: 1061, column: 32, scope: !2342)
!2351 = !DILocation(line: 1060, column: 12, scope: !2342)
!2352 = !DILocation(line: 1060, column: 10, scope: !2342)
!2353 = !DILocation(line: 1063, column: 2, scope: !2342)
!2354 = !DILocation(line: 1064, column: 24, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2335, file: !2, line: 1063, column: 9)
!2356 = !DILocation(line: 1064, column: 34, scope: !2355)
!2357 = !DILocation(line: 1064, column: 12, scope: !2355)
!2358 = !DILocation(line: 1064, column: 10, scope: !2355)
!2359 = !DILocation(line: 1067, column: 6, scope: !2196)
!2360 = !DILocation(line: 1067, column: 14, scope: !2196)
!2361 = !DILocation(line: 1067, column: 6, scope: !2174)
!2362 = !DILocation(line: 1068, column: 3, scope: !2195)
!2363 = !DILocation(line: 1068, column: 20, scope: !2195)
!2364 = !DILocation(line: 1070, column: 28, scope: !2195)
!2365 = !DILocation(line: 1070, column: 14, scope: !2195)
!2366 = !DILocation(line: 1070, column: 12, scope: !2195)
!2367 = !DILocation(line: 1071, column: 23, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2195, file: !2, line: 1071, column: 7)
!2369 = !DILocation(line: 1071, column: 8, scope: !2368)
!2370 = !DILocation(line: 1071, column: 7, scope: !2195)
!2371 = !DILocation(line: 1072, column: 43, scope: !2368)
!2372 = !DILocation(line: 1072, column: 25, scope: !2368)
!2373 = !DILocation(line: 1072, column: 4, scope: !2368)
!2374 = !DILocation(line: 1072, column: 14, scope: !2368)
!2375 = !DILocation(line: 1072, column: 23, scope: !2368)
!2376 = !DILocation(line: 1073, column: 2, scope: !2196)
!2377 = !DILocation(line: 1073, column: 2, scope: !2195)
!2378 = !DILocation(line: 1075, column: 6, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 1075, column: 6)
!2380 = !DILocation(line: 1075, column: 13, scope: !2379)
!2381 = !DILocation(line: 1075, column: 6, scope: !2174)
!2382 = !DILocation(line: 1076, column: 19, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 1075, column: 31)
!2384 = !DILocation(line: 1076, column: 29, scope: !2383)
!2385 = !DILocation(line: 1076, column: 3, scope: !2383)
!2386 = !DILocation(line: 1077, column: 18, scope: !2383)
!2387 = !DILocation(line: 1077, column: 28, scope: !2383)
!2388 = !DILocation(line: 1077, column: 38, scope: !2383)
!2389 = !DILocation(line: 1077, column: 3, scope: !2383)
!2390 = !DILocation(line: 1078, column: 3, scope: !2383)
!2391 = !DILocation(line: 1080, column: 2, scope: !2383)
!2392 = !DILocation(line: 1080, column: 13, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 1080, column: 13)
!2394 = !DILocation(line: 1080, column: 21, scope: !2393)
!2395 = !DILocation(line: 1080, column: 13, scope: !2379)
!2396 = !DILocation(line: 1081, column: 15, scope: !2393)
!2397 = !DILocation(line: 1081, column: 24, scope: !2393)
!2398 = !DILocation(line: 1084, column: 8, scope: !2393)
!2399 = !DILocation(line: 1084, column: 36, scope: !2393)
!2400 = !DILocation(line: 1084, column: 18, scope: !2393)
!2401 = !DILocation(line: 1081, column: 3, scope: !2393)
!2402 = !DILocation(line: 1086, column: 17, scope: !2393)
!2403 = !DILocation(line: 1087, column: 10, scope: !2393)
!2404 = !DILocation(line: 1090, column: 10, scope: !2393)
!2405 = !DILocation(line: 1090, column: 38, scope: !2393)
!2406 = !DILocation(line: 1090, column: 20, scope: !2393)
!2407 = !DILocation(line: 1086, column: 3, scope: !2393)
!2408 = !DILocation(line: 1092, column: 6, scope: !2199)
!2409 = !DILocation(line: 1092, column: 13, scope: !2199)
!2410 = !DILocation(line: 1092, column: 30, scope: !2199)
!2411 = !DILocation(line: 1092, column: 33, scope: !2199)
!2412 = !DILocation(line: 1092, column: 38, scope: !2199)
!2413 = !DILocation(line: 1092, column: 6, scope: !2174)
!2414 = !DILocation(line: 1093, column: 3, scope: !2198)
!2415 = !DILocation(line: 1093, column: 12, scope: !2198)
!2416 = !DILocation(line: 1093, column: 18, scope: !2198)
!2417 = !DILocation(line: 1093, column: 25, scope: !2198)
!2418 = !DILocation(line: 1094, column: 42, scope: !2198)
!2419 = !DILocation(line: 1094, column: 28, scope: !2198)
!2420 = !DILocation(line: 1094, column: 11, scope: !2198)
!2421 = !DILocation(line: 1094, column: 9, scope: !2198)
!2422 = !DILocation(line: 1095, column: 42, scope: !2198)
!2423 = !DILocation(line: 1095, column: 28, scope: !2198)
!2424 = !DILocation(line: 1095, column: 11, scope: !2198)
!2425 = !DILocation(line: 1095, column: 9, scope: !2198)
!2426 = !DILocation(line: 1096, column: 42, scope: !2198)
!2427 = !DILocation(line: 1096, column: 28, scope: !2198)
!2428 = !DILocation(line: 1096, column: 11, scope: !2198)
!2429 = !DILocation(line: 1096, column: 9, scope: !2198)
!2430 = !DILocation(line: 1097, column: 10, scope: !2198)
!2431 = !DILocation(line: 1098, column: 7, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 1098, column: 7)
!2433 = !DILocation(line: 1098, column: 17, scope: !2432)
!2434 = !DILocation(line: 1098, column: 25, scope: !2432)
!2435 = !DILocation(line: 1098, column: 22, scope: !2432)
!2436 = !DILocation(line: 1098, column: 30, scope: !2432)
!2437 = !DILocation(line: 1098, column: 33, scope: !2432)
!2438 = !DILocation(line: 1098, column: 43, scope: !2432)
!2439 = !DILocation(line: 1098, column: 52, scope: !2432)
!2440 = !DILocation(line: 1098, column: 49, scope: !2432)
!2441 = !DILocation(line: 1098, column: 58, scope: !2432)
!2442 = !DILocation(line: 1099, column: 7, scope: !2432)
!2443 = !DILocation(line: 1099, column: 17, scope: !2432)
!2444 = !DILocation(line: 1099, column: 26, scope: !2432)
!2445 = !DILocation(line: 1099, column: 23, scope: !2432)
!2446 = !DILocation(line: 1098, column: 7, scope: !2198)
!2447 = !DILocation(line: 1100, column: 34, scope: !2432)
!2448 = !DILocation(line: 1100, column: 44, scope: !2432)
!2449 = !DILocation(line: 1100, column: 53, scope: !2432)
!2450 = !DILocation(line: 1101, column: 12, scope: !2432)
!2451 = !DILocation(line: 1101, column: 19, scope: !2432)
!2452 = !DILocation(line: 1100, column: 13, scope: !2432)
!2453 = !DILocation(line: 1100, column: 11, scope: !2432)
!2454 = !DILocation(line: 1100, column: 4, scope: !2432)
!2455 = !DILocation(line: 1102, column: 7, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 1102, column: 7)
!2457 = !DILocation(line: 1102, column: 14, scope: !2456)
!2458 = !DILocation(line: 1102, column: 7, scope: !2198)
!2459 = !DILocation(line: 1103, column: 21, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !2, line: 1102, column: 32)
!2461 = !DILocation(line: 1103, column: 4, scope: !2460)
!2462 = !DILocation(line: 1103, column: 14, scope: !2460)
!2463 = !DILocation(line: 1103, column: 19, scope: !2460)
!2464 = !DILocation(line: 1104, column: 22, scope: !2460)
!2465 = !DILocation(line: 1104, column: 4, scope: !2460)
!2466 = !DILocation(line: 1104, column: 14, scope: !2460)
!2467 = !DILocation(line: 1104, column: 20, scope: !2460)
!2468 = !DILocation(line: 1105, column: 22, scope: !2460)
!2469 = !DILocation(line: 1105, column: 4, scope: !2460)
!2470 = !DILocation(line: 1105, column: 14, scope: !2460)
!2471 = !DILocation(line: 1105, column: 20, scope: !2460)
!2472 = !DILocation(line: 1106, column: 3, scope: !2460)
!2473 = !DILocation(line: 1106, column: 14, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2456, file: !2, line: 1106, column: 14)
!2475 = !DILocation(line: 1106, column: 22, scope: !2474)
!2476 = !DILocation(line: 1106, column: 14, scope: !2456)
!2477 = !DILocation(line: 1107, column: 16, scope: !2474)
!2478 = !DILocation(line: 1107, column: 25, scope: !2474)
!2479 = !DILocation(line: 1109, column: 31, scope: !2474)
!2480 = !DILocation(line: 1107, column: 4, scope: !2474)
!2481 = !DILocation(line: 1110, column: 2, scope: !2199)
!2482 = !DILocation(line: 1110, column: 2, scope: !2198)
!2483 = !DILocation(line: 1112, column: 15, scope: !2174)
!2484 = !DILocation(line: 1112, column: 3, scope: !2174)
!2485 = !DILocation(line: 1112, column: 13, scope: !2174)
!2486 = !DILocation(line: 1113, column: 1, scope: !2174)
!2487 = !DISubprogram(name: "isc_assertion_failed", scope: !321, file: !321, line: 37, type: !2488, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !603, !332, !2490, !603}
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_assertiontype_t", file: !321, line: 30, baseType: !320)
!2491 = distinct !DISubprogram(name: "add_listener", scope: !2, file: !2, line: 1116, type: !2175, scopeLine: 1120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !2492)
!2492 = !{!2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2511}
!2493 = !DILocalVariable(name: "cp", arg: 1, scope: !2491, file: !2, line: 1116, type: !574)
!2494 = !DILocalVariable(name: "listenerp", arg: 2, scope: !2491, file: !2, line: 1116, type: !2177)
!2495 = !DILocalVariable(name: "control", arg: 3, scope: !2491, file: !2, line: 1117, type: !1715)
!2496 = !DILocalVariable(name: "config", arg: 4, scope: !2491, file: !2, line: 1117, type: !1715)
!2497 = !DILocalVariable(name: "addr", arg: 5, scope: !2491, file: !2, line: 1118, type: !1430)
!2498 = !DILocalVariable(name: "aclconfctx", arg: 6, scope: !2491, file: !2, line: 1118, type: !1720)
!2499 = !DILocalVariable(name: "socktext", arg: 7, scope: !2491, file: !2, line: 1119, type: !603)
!2500 = !DILocalVariable(name: "type", arg: 8, scope: !2491, file: !2, line: 1119, type: !1655)
!2501 = !DILocalVariable(name: "mctx", scope: !2491, file: !2, line: 1121, type: !587)
!2502 = !DILocalVariable(name: "listener", scope: !2491, file: !2, line: 1122, type: !1585)
!2503 = !DILocalVariable(name: "allow", scope: !2491, file: !2, line: 1123, type: !1715)
!2504 = !DILocalVariable(name: "global_keylist", scope: !2491, file: !2, line: 1124, type: !1715)
!2505 = !DILocalVariable(name: "control_keylist", scope: !2491, file: !2, line: 1125, type: !1715)
!2506 = !DILocalVariable(name: "new_acl", scope: !2491, file: !2, line: 1126, type: !681)
!2507 = !DILocalVariable(name: "result", scope: !2491, file: !2, line: 1127, type: !429)
!2508 = !DILocalVariable(name: "readonly", scope: !2509, file: !2, line: 1166, type: !1715)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !2, line: 1165, column: 54)
!2510 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 1165, column: 6)
!2511 = !DILocalVariable(name: "pf", scope: !2512, file: !2, line: 1200, type: !332)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !2, line: 1199, column: 31)
!2513 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 1199, column: 6)
!2514 = !DILocation(line: 1116, column: 32, scope: !2491)
!2515 = !DILocation(line: 1116, column: 56, scope: !2491)
!2516 = !DILocation(line: 1117, column: 24, scope: !2491)
!2517 = !DILocation(line: 1117, column: 50, scope: !2491)
!2518 = !DILocation(line: 1118, column: 23, scope: !2491)
!2519 = !DILocation(line: 1118, column: 47, scope: !2491)
!2520 = !DILocation(line: 1119, column: 19, scope: !2491)
!2521 = !DILocation(line: 1119, column: 46, scope: !2491)
!2522 = !DILocation(line: 1121, column: 2, scope: !2491)
!2523 = !DILocation(line: 1121, column: 13, scope: !2491)
!2524 = !DILocation(line: 1121, column: 20, scope: !2491)
!2525 = !DILocation(line: 1121, column: 24, scope: !2491)
!2526 = !DILocation(line: 1121, column: 32, scope: !2491)
!2527 = !DILocation(line: 1122, column: 2, scope: !2491)
!2528 = !DILocation(line: 1122, column: 21, scope: !2491)
!2529 = !DILocation(line: 1123, column: 2, scope: !2491)
!2530 = !DILocation(line: 1123, column: 19, scope: !2491)
!2531 = !DILocation(line: 1124, column: 2, scope: !2491)
!2532 = !DILocation(line: 1124, column: 19, scope: !2491)
!2533 = !DILocation(line: 1125, column: 2, scope: !2491)
!2534 = !DILocation(line: 1125, column: 19, scope: !2491)
!2535 = !DILocation(line: 1126, column: 2, scope: !2491)
!2536 = !DILocation(line: 1126, column: 13, scope: !2491)
!2537 = !DILocation(line: 1127, column: 2, scope: !2491)
!2538 = !DILocation(line: 1127, column: 15, scope: !2491)
!2539 = !DILocation(line: 1129, column: 13, scope: !2491)
!2540 = !DILocation(line: 1129, column: 11, scope: !2491)
!2541 = !DILocation(line: 1130, column: 6, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 1130, column: 6)
!2543 = !DILocation(line: 1130, column: 15, scope: !2542)
!2544 = !DILocation(line: 1130, column: 6, scope: !2491)
!2545 = !DILocation(line: 1131, column: 10, scope: !2542)
!2546 = !DILocation(line: 1131, column: 3, scope: !2542)
!2547 = !DILocation(line: 1133, column: 6, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 1133, column: 6)
!2549 = !DILocation(line: 1133, column: 13, scope: !2548)
!2550 = !DILocation(line: 1133, column: 6, scope: !2491)
!2551 = !DILocation(line: 1134, column: 3, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2548, file: !2, line: 1133, column: 31)
!2553 = !DILocation(line: 1134, column: 13, scope: !2552)
!2554 = !DILocation(line: 1134, column: 18, scope: !2552)
!2555 = !DILocation(line: 1135, column: 18, scope: !2552)
!2556 = !DILocation(line: 1135, column: 25, scope: !2552)
!2557 = !DILocation(line: 1135, column: 35, scope: !2552)
!2558 = !DILocation(line: 1135, column: 3, scope: !2552)
!2559 = !DILocation(line: 1136, column: 24, scope: !2552)
!2560 = !DILocation(line: 1136, column: 3, scope: !2552)
!2561 = !DILocation(line: 1136, column: 13, scope: !2552)
!2562 = !DILocation(line: 1136, column: 22, scope: !2552)
!2563 = !DILocation(line: 1137, column: 20, scope: !2552)
!2564 = !DILocation(line: 1137, column: 24, scope: !2552)
!2565 = !DILocation(line: 1137, column: 32, scope: !2552)
!2566 = !DILocation(line: 1137, column: 3, scope: !2552)
!2567 = !DILocation(line: 1137, column: 13, scope: !2552)
!2568 = !DILocation(line: 1137, column: 18, scope: !2552)
!2569 = !DILocation(line: 1138, column: 3, scope: !2552)
!2570 = !DILocation(line: 1138, column: 13, scope: !2552)
!2571 = !DILocation(line: 1138, column: 24, scope: !2552)
!2572 = !DILocation(line: 1138, column: 23, scope: !2552)
!2573 = !DILocation(line: 1139, column: 3, scope: !2552)
!2574 = !DILocation(line: 1139, column: 13, scope: !2552)
!2575 = !DILocation(line: 1139, column: 18, scope: !2552)
!2576 = !DILocation(line: 1140, column: 3, scope: !2552)
!2577 = !DILocation(line: 1140, column: 13, scope: !2552)
!2578 = !DILocation(line: 1140, column: 23, scope: !2552)
!2579 = !DILocation(line: 1141, column: 3, scope: !2552)
!2580 = !DILocation(line: 1141, column: 13, scope: !2552)
!2581 = !DILocation(line: 1141, column: 21, scope: !2552)
!2582 = !DILocation(line: 1142, column: 3, scope: !2552)
!2583 = !DILocation(line: 1142, column: 13, scope: !2552)
!2584 = !DILocation(line: 1142, column: 17, scope: !2552)
!2585 = !DILocation(line: 1143, column: 20, scope: !2552)
!2586 = !DILocation(line: 1143, column: 3, scope: !2552)
!2587 = !DILocation(line: 1143, column: 13, scope: !2552)
!2588 = !DILocation(line: 1143, column: 18, scope: !2552)
!2589 = !DILocation(line: 1144, column: 3, scope: !2552)
!2590 = !DILocation(line: 1144, column: 13, scope: !2552)
!2591 = !DILocation(line: 1144, column: 18, scope: !2552)
!2592 = !DILocation(line: 1145, column: 3, scope: !2552)
!2593 = !DILocation(line: 1145, column: 13, scope: !2552)
!2594 = !DILocation(line: 1145, column: 19, scope: !2552)
!2595 = !DILocation(line: 1146, column: 3, scope: !2552)
!2596 = !DILocation(line: 1146, column: 13, scope: !2552)
!2597 = !DILocation(line: 1146, column: 19, scope: !2552)
!2598 = !DILocation(line: 1147, column: 3, scope: !2552)
!2599 = !DILocation(line: 1147, column: 13, scope: !2552)
!2600 = !DILocation(line: 1147, column: 22, scope: !2552)
!2601 = !DILocation(line: 1148, column: 3, scope: !2552)
!2602 = !DILocation(line: 1148, column: 3, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2552, file: !2, line: 1148, column: 3)
!2604 = !DILocation(line: 1149, column: 3, scope: !2552)
!2605 = !DILocation(line: 1149, column: 3, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2552, file: !2, line: 1149, column: 3)
!2607 = !DILocation(line: 1150, column: 3, scope: !2552)
!2608 = !DILocation(line: 1150, column: 3, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2552, file: !2, line: 1150, column: 3)
!2610 = !DILocation(line: 1155, column: 7, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2552, file: !2, line: 1155, column: 7)
!2612 = !DILocation(line: 1155, column: 15, scope: !2611)
!2613 = !DILocation(line: 1155, column: 23, scope: !2611)
!2614 = !DILocation(line: 1155, column: 26, scope: !2611)
!2615 = !DILocation(line: 1155, column: 31, scope: !2611)
!2616 = !DILocation(line: 1155, column: 7, scope: !2552)
!2617 = !DILocation(line: 1156, column: 26, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2611, file: !2, line: 1155, column: 54)
!2619 = !DILocation(line: 1156, column: 12, scope: !2618)
!2620 = !DILocation(line: 1156, column: 10, scope: !2618)
!2621 = !DILocation(line: 1157, column: 32, scope: !2618)
!2622 = !DILocation(line: 1157, column: 39, scope: !2618)
!2623 = !DILocation(line: 1157, column: 47, scope: !2618)
!2624 = !DILocation(line: 1158, column: 11, scope: !2618)
!2625 = !DILocation(line: 1158, column: 23, scope: !2618)
!2626 = !DILocation(line: 1157, column: 13, scope: !2618)
!2627 = !DILocation(line: 1157, column: 11, scope: !2618)
!2628 = !DILocation(line: 1160, column: 3, scope: !2618)
!2629 = !DILocation(line: 1161, column: 25, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2611, file: !2, line: 1160, column: 10)
!2631 = !DILocation(line: 1161, column: 13, scope: !2630)
!2632 = !DILocation(line: 1161, column: 11, scope: !2630)
!2633 = !DILocation(line: 1163, column: 2, scope: !2552)
!2634 = !DILocation(line: 1165, column: 7, scope: !2510)
!2635 = !DILocation(line: 1165, column: 14, scope: !2510)
!2636 = !DILocation(line: 1165, column: 32, scope: !2510)
!2637 = !DILocation(line: 1165, column: 36, scope: !2510)
!2638 = !DILocation(line: 1165, column: 44, scope: !2510)
!2639 = !DILocation(line: 1165, column: 6, scope: !2491)
!2640 = !DILocation(line: 1166, column: 3, scope: !2509)
!2641 = !DILocation(line: 1166, column: 20, scope: !2509)
!2642 = !DILocation(line: 1168, column: 28, scope: !2509)
!2643 = !DILocation(line: 1168, column: 14, scope: !2509)
!2644 = !DILocation(line: 1168, column: 12, scope: !2509)
!2645 = !DILocation(line: 1169, column: 23, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2509, file: !2, line: 1169, column: 7)
!2647 = !DILocation(line: 1169, column: 8, scope: !2646)
!2648 = !DILocation(line: 1169, column: 7, scope: !2509)
!2649 = !DILocation(line: 1170, column: 43, scope: !2646)
!2650 = !DILocation(line: 1170, column: 25, scope: !2646)
!2651 = !DILocation(line: 1170, column: 4, scope: !2646)
!2652 = !DILocation(line: 1170, column: 14, scope: !2646)
!2653 = !DILocation(line: 1170, column: 23, scope: !2646)
!2654 = !DILocation(line: 1171, column: 2, scope: !2510)
!2655 = !DILocation(line: 1171, column: 2, scope: !2509)
!2656 = !DILocation(line: 1173, column: 6, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 1173, column: 6)
!2658 = !DILocation(line: 1173, column: 13, scope: !2657)
!2659 = !DILocation(line: 1173, column: 6, scope: !2491)
!2660 = !DILocation(line: 1174, column: 18, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2657, file: !2, line: 1173, column: 31)
!2662 = !DILocation(line: 1174, column: 28, scope: !2661)
!2663 = !DILocation(line: 1174, column: 38, scope: !2661)
!2664 = !DILocation(line: 1174, column: 3, scope: !2661)
!2665 = !DILocation(line: 1175, column: 3, scope: !2661)
!2666 = !DILocation(line: 1177, column: 7, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2661, file: !2, line: 1177, column: 7)
!2668 = !DILocation(line: 1177, column: 14, scope: !2667)
!2669 = !DILocation(line: 1177, column: 7, scope: !2661)
!2670 = !DILocation(line: 1178, column: 17, scope: !2667)
!2671 = !DILocation(line: 1178, column: 25, scope: !2667)
!2672 = !DILocation(line: 1178, column: 4, scope: !2667)
!2673 = !DILocation(line: 1181, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2661, file: !2, line: 1181, column: 7)
!2675 = !DILocation(line: 1181, column: 23, scope: !2674)
!2676 = !DILocation(line: 1181, column: 7, scope: !2661)
!2677 = !DILocation(line: 1182, column: 36, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2674, file: !2, line: 1181, column: 32)
!2679 = !DILocation(line: 1183, column: 8, scope: !2678)
!2680 = !DILocation(line: 1183, column: 18, scope: !2678)
!2681 = !DILocation(line: 1184, column: 9, scope: !2678)
!2682 = !DILocation(line: 1184, column: 19, scope: !2678)
!2683 = !DILocation(line: 1182, column: 13, scope: !2678)
!2684 = !DILocation(line: 1182, column: 11, scope: !2678)
!2685 = !DILocation(line: 1185, column: 8, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2678, file: !2, line: 1185, column: 8)
!2687 = !DILocation(line: 1185, column: 15, scope: !2686)
!2688 = !DILocation(line: 1185, column: 8, scope: !2678)
!2689 = !DILocation(line: 1186, column: 19, scope: !2686)
!2690 = !DILocation(line: 1186, column: 28, scope: !2686)
!2691 = !DILocation(line: 1187, column: 13, scope: !2686)
!2692 = !DILocation(line: 1187, column: 23, scope: !2686)
!2693 = !DILocation(line: 1188, column: 12, scope: !2686)
!2694 = !DILocation(line: 1188, column: 22, scope: !2686)
!2695 = !DILocation(line: 1188, column: 28, scope: !2686)
!2696 = !DILocation(line: 1186, column: 5, scope: !2686)
!2697 = !DILocation(line: 1189, column: 3, scope: !2678)
!2698 = !DILocation(line: 1190, column: 25, scope: !2674)
!2699 = !DILocation(line: 1190, column: 32, scope: !2674)
!2700 = !DILocation(line: 1190, column: 42, scope: !2674)
!2701 = !DILocation(line: 1190, column: 13, scope: !2674)
!2702 = !DILocation(line: 1190, column: 11, scope: !2674)
!2703 = !DILocation(line: 1192, column: 7, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2661, file: !2, line: 1192, column: 7)
!2705 = !DILocation(line: 1192, column: 14, scope: !2704)
!2706 = !DILocation(line: 1192, column: 31, scope: !2704)
!2707 = !DILocation(line: 1192, column: 34, scope: !2704)
!2708 = !DILocation(line: 1192, column: 42, scope: !2704)
!2709 = !DILocation(line: 1192, column: 7, scope: !2661)
!2710 = !DILocation(line: 1193, column: 16, scope: !2704)
!2711 = !DILocation(line: 1193, column: 25, scope: !2704)
!2712 = !DILocation(line: 1196, column: 9, scope: !2704)
!2713 = !DILocation(line: 1196, column: 37, scope: !2704)
!2714 = !DILocation(line: 1196, column: 19, scope: !2704)
!2715 = !DILocation(line: 1193, column: 4, scope: !2704)
!2716 = !DILocation(line: 1197, column: 2, scope: !2661)
!2717 = !DILocation(line: 1199, column: 6, scope: !2513)
!2718 = !DILocation(line: 1199, column: 13, scope: !2513)
!2719 = !DILocation(line: 1199, column: 6, scope: !2491)
!2720 = !DILocation(line: 1200, column: 3, scope: !2512)
!2721 = !DILocation(line: 1200, column: 7, scope: !2512)
!2722 = !DILocation(line: 1200, column: 29, scope: !2512)
!2723 = !DILocation(line: 1200, column: 39, scope: !2512)
!2724 = !DILocation(line: 1200, column: 12, scope: !2512)
!2725 = !DILocation(line: 1201, column: 8, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2512, file: !2, line: 1201, column: 7)
!2727 = !DILocation(line: 1201, column: 11, scope: !2726)
!2728 = !DILocation(line: 1201, column: 22, scope: !2726)
!2729 = !DILocation(line: 1201, column: 25, scope: !2726)
!2730 = !DILocation(line: 1201, column: 45, scope: !2726)
!2731 = !DILocation(line: 1201, column: 63, scope: !2726)
!2732 = !DILocation(line: 1203, column: 8, scope: !2726)
!2733 = !DILocation(line: 1203, column: 11, scope: !2726)
!2734 = !DILocation(line: 1203, column: 22, scope: !2726)
!2735 = !DILocation(line: 1203, column: 25, scope: !2726)
!2736 = !DILocation(line: 1203, column: 45, scope: !2726)
!2737 = !DILocation(line: 1203, column: 63, scope: !2726)
!2738 = !DILocation(line: 1205, column: 8, scope: !2726)
!2739 = !DILocation(line: 1205, column: 11, scope: !2726)
!2740 = !DILocation(line: 1205, column: 23, scope: !2726)
!2741 = !DILocation(line: 1205, column: 26, scope: !2726)
!2742 = !DILocation(line: 1205, column: 46, scope: !2726)
!2743 = !DILocation(line: 1201, column: 7, scope: !2512)
!2744 = !DILocation(line: 1206, column: 11, scope: !2726)
!2745 = !DILocation(line: 1206, column: 4, scope: !2726)
!2746 = !DILocation(line: 1207, column: 2, scope: !2513)
!2747 = !DILocation(line: 1207, column: 2, scope: !2512)
!2748 = !DILocation(line: 1209, column: 6, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 1209, column: 6)
!2750 = !DILocation(line: 1209, column: 13, scope: !2749)
!2751 = !DILocation(line: 1209, column: 30, scope: !2749)
!2752 = !DILocation(line: 1209, column: 33, scope: !2749)
!2753 = !DILocation(line: 1209, column: 38, scope: !2749)
!2754 = !DILocation(line: 1209, column: 6, scope: !2491)
!2755 = !DILocation(line: 1210, column: 25, scope: !2749)
!2756 = !DILocation(line: 1210, column: 35, scope: !2749)
!2757 = !DILocation(line: 1210, column: 3, scope: !2749)
!2758 = !DILocation(line: 1212, column: 6, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 1212, column: 6)
!2760 = !DILocation(line: 1212, column: 13, scope: !2759)
!2761 = !DILocation(line: 1212, column: 6, scope: !2491)
!2762 = !DILocation(line: 1213, column: 30, scope: !2759)
!2763 = !DILocation(line: 1214, column: 26, scope: !2759)
!2764 = !DILocation(line: 1214, column: 36, scope: !2759)
!2765 = !DILocation(line: 1214, column: 9, scope: !2759)
!2766 = !DILocation(line: 1215, column: 9, scope: !2759)
!2767 = !DILocation(line: 1215, column: 16, scope: !2759)
!2768 = !DILocation(line: 1215, column: 26, scope: !2759)
!2769 = !DILocation(line: 1213, column: 12, scope: !2759)
!2770 = !DILocation(line: 1213, column: 10, scope: !2759)
!2771 = !DILocation(line: 1213, column: 3, scope: !2759)
!2772 = !DILocation(line: 1216, column: 6, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 1216, column: 6)
!2774 = !DILocation(line: 1216, column: 13, scope: !2773)
!2775 = !DILocation(line: 1216, column: 6, scope: !2491)
!2776 = !DILocation(line: 1217, column: 22, scope: !2773)
!2777 = !DILocation(line: 1217, column: 32, scope: !2773)
!2778 = !DILocation(line: 1217, column: 3, scope: !2773)
!2779 = !DILocation(line: 1220, column: 6, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 1220, column: 6)
!2781 = !DILocation(line: 1220, column: 13, scope: !2780)
!2782 = !DILocation(line: 1220, column: 6, scope: !2491)
!2783 = !DILocation(line: 1221, column: 23, scope: !2780)
!2784 = !DILocation(line: 1221, column: 33, scope: !2780)
!2785 = !DILocation(line: 1221, column: 3, scope: !2780)
!2786 = !DILocation(line: 1224, column: 6, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 1224, column: 6)
!2788 = !DILocation(line: 1224, column: 13, scope: !2787)
!2789 = !DILocation(line: 1224, column: 6, scope: !2491)
!2790 = !DILocation(line: 1225, column: 28, scope: !2787)
!2791 = !DILocation(line: 1225, column: 38, scope: !2787)
!2792 = !DILocation(line: 1225, column: 45, scope: !2787)
!2793 = !DILocation(line: 1225, column: 55, scope: !2787)
!2794 = !DILocation(line: 1225, column: 12, scope: !2787)
!2795 = !DILocation(line: 1225, column: 10, scope: !2787)
!2796 = !DILocation(line: 1225, column: 3, scope: !2787)
!2797 = !DILocation(line: 1228, column: 6, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 1228, column: 6)
!2799 = !DILocation(line: 1228, column: 13, scope: !2798)
!2800 = !DILocation(line: 1228, column: 30, scope: !2798)
!2801 = !DILocation(line: 1228, column: 33, scope: !2798)
!2802 = !DILocation(line: 1228, column: 38, scope: !2798)
!2803 = !DILocation(line: 1228, column: 6, scope: !2491)
!2804 = !DILocation(line: 1229, column: 51, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2798, file: !2, line: 1228, column: 62)
!2806 = !DILocation(line: 1229, column: 37, scope: !2805)
!2807 = !DILocation(line: 1229, column: 20, scope: !2805)
!2808 = !DILocation(line: 1229, column: 3, scope: !2805)
!2809 = !DILocation(line: 1229, column: 13, scope: !2805)
!2810 = !DILocation(line: 1229, column: 18, scope: !2805)
!2811 = !DILocation(line: 1231, column: 52, scope: !2805)
!2812 = !DILocation(line: 1231, column: 38, scope: !2805)
!2813 = !DILocation(line: 1231, column: 21, scope: !2805)
!2814 = !DILocation(line: 1231, column: 3, scope: !2805)
!2815 = !DILocation(line: 1231, column: 13, scope: !2805)
!2816 = !DILocation(line: 1231, column: 19, scope: !2805)
!2817 = !DILocation(line: 1233, column: 52, scope: !2805)
!2818 = !DILocation(line: 1233, column: 38, scope: !2805)
!2819 = !DILocation(line: 1233, column: 21, scope: !2805)
!2820 = !DILocation(line: 1233, column: 3, scope: !2805)
!2821 = !DILocation(line: 1233, column: 13, scope: !2805)
!2822 = !DILocation(line: 1233, column: 19, scope: !2805)
!2823 = !DILocation(line: 1235, column: 33, scope: !2805)
!2824 = !DILocation(line: 1235, column: 43, scope: !2805)
!2825 = !DILocation(line: 1235, column: 52, scope: !2805)
!2826 = !DILocation(line: 1235, column: 62, scope: !2805)
!2827 = !DILocation(line: 1236, column: 11, scope: !2805)
!2828 = !DILocation(line: 1236, column: 21, scope: !2805)
!2829 = !DILocation(line: 1236, column: 28, scope: !2805)
!2830 = !DILocation(line: 1236, column: 38, scope: !2805)
!2831 = !DILocation(line: 1235, column: 12, scope: !2805)
!2832 = !DILocation(line: 1235, column: 10, scope: !2805)
!2833 = !DILocation(line: 1237, column: 2, scope: !2805)
!2834 = !DILocation(line: 1238, column: 6, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 1238, column: 6)
!2836 = !DILocation(line: 1238, column: 13, scope: !2835)
!2837 = !DILocation(line: 1238, column: 6, scope: !2491)
!2838 = !DILocation(line: 1239, column: 27, scope: !2835)
!2839 = !DILocation(line: 1239, column: 12, scope: !2835)
!2840 = !DILocation(line: 1239, column: 10, scope: !2835)
!2841 = !DILocation(line: 1239, column: 3, scope: !2835)
!2842 = !DILocation(line: 1241, column: 6, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 1241, column: 6)
!2844 = !DILocation(line: 1241, column: 13, scope: !2843)
!2845 = !DILocation(line: 1241, column: 6, scope: !2491)
!2846 = !DILocation(line: 1242, column: 27, scope: !2843)
!2847 = !DILocation(line: 1242, column: 12, scope: !2843)
!2848 = !DILocation(line: 1242, column: 10, scope: !2843)
!2849 = !DILocation(line: 1242, column: 3, scope: !2843)
!2850 = !DILocation(line: 1244, column: 6, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 1244, column: 6)
!2852 = !DILocation(line: 1244, column: 13, scope: !2851)
!2853 = !DILocation(line: 1244, column: 6, scope: !2491)
!2854 = !DILocation(line: 1245, column: 17, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2851, file: !2, line: 1244, column: 31)
!2856 = !DILocation(line: 1246, column: 10, scope: !2855)
!2857 = !DILocation(line: 1247, column: 45, scope: !2855)
!2858 = !DILocation(line: 1245, column: 3, scope: !2855)
!2859 = !DILocation(line: 1248, column: 16, scope: !2855)
!2860 = !DILocation(line: 1248, column: 4, scope: !2855)
!2861 = !DILocation(line: 1248, column: 14, scope: !2855)
!2862 = !DILocation(line: 1250, column: 2, scope: !2855)
!2863 = !DILocation(line: 1251, column: 7, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !2, line: 1251, column: 7)
!2865 = distinct !DILexicalBlock(scope: !2851, file: !2, line: 1250, column: 9)
!2866 = !DILocation(line: 1251, column: 16, scope: !2864)
!2867 = !DILocation(line: 1251, column: 7, scope: !2865)
!2868 = !DILocation(line: 1252, column: 4, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2864, file: !2, line: 1251, column: 25)
!2870 = !DILocation(line: 1252, column: 14, scope: !2869)
!2871 = !DILocation(line: 1252, column: 22, scope: !2869)
!2872 = !DILocation(line: 1253, column: 18, scope: !2869)
!2873 = !DILocation(line: 1253, column: 4, scope: !2869)
!2874 = !DILocation(line: 1254, column: 3, scope: !2869)
!2875 = !DILocation(line: 1256, column: 7, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2865, file: !2, line: 1256, column: 7)
!2877 = !DILocation(line: 1256, column: 15, scope: !2876)
!2878 = !DILocation(line: 1256, column: 7, scope: !2865)
!2879 = !DILocation(line: 1257, column: 16, scope: !2876)
!2880 = !DILocation(line: 1257, column: 25, scope: !2876)
!2881 = !DILocation(line: 1259, column: 9, scope: !2876)
!2882 = !DILocation(line: 1259, column: 37, scope: !2876)
!2883 = !DILocation(line: 1259, column: 19, scope: !2876)
!2884 = !DILocation(line: 1257, column: 4, scope: !2876)
!2885 = !DILocation(line: 1261, column: 18, scope: !2876)
!2886 = !DILocation(line: 1262, column: 11, scope: !2876)
!2887 = !DILocation(line: 1264, column: 11, scope: !2876)
!2888 = !DILocation(line: 1264, column: 39, scope: !2876)
!2889 = !DILocation(line: 1264, column: 21, scope: !2876)
!2890 = !DILocation(line: 1261, column: 4, scope: !2876)
!2891 = !DILocation(line: 1266, column: 4, scope: !2865)
!2892 = !DILocation(line: 1266, column: 14, scope: !2865)
!2893 = !DILocation(line: 1270, column: 1, scope: !2491)
!2894 = !DISubprogram(name: "cfg_list_next", scope: !1718, file: !1718, line: 432, type: !2895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!1740, !1740}
!2897 = !DISubprogram(name: "isc_sockaddr_frompath", scope: !433, file: !433, line: 223, type: !2898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!429, !1430, !603}
!2900 = !DISubprogram(name: "cfg_obj_asstring", scope: !1718, file: !1718, line: 330, type: !2901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!603, !1715}
!2903 = !DISubprogram(name: "isc_result_totext", scope: !2904, file: !2904, line: 97, type: !2905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2904 = !DIFile(filename: "lib/isc/include/isc/result.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "b66e2fce4d36f26ced5288e76c5bf05c")
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!603, !429}
!2907 = !DISubprogram(name: "isc_net_probeipv4", scope: !2908, file: !2908, line: 189, type: !2909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2908 = !DIFile(filename: "../../lib/isc/unix/include/isc/net.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/named", checksumkind: CSK_MD5, checksum: "045049e2cbc8dda248ec86ca317b0158")
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!429}
!2911 = distinct !DISubprogram(name: "__bswap_32", scope: !2912, file: !2912, line: 49, type: !2913, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !2915)
!2912 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!355, !355}
!2915 = !{!2916}
!2916 = !DILocalVariable(name: "__bsx", arg: 1, scope: !2911, file: !2912, line: 49, type: !355)
!2917 = !DILocation(line: 49, column: 24, scope: !2911)
!2918 = !DILocation(line: 54, column: 10, scope: !2911)
!2919 = !DILocation(line: 54, column: 3, scope: !2911)
!2920 = !DISubprogram(name: "isc_sockaddr_fromin", scope: !433, file: !433, line: 117, type: !2921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{null, !1430, !2923, !453}
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!2925 = !DISubprogram(name: "isc_net_probeipv6", scope: !2908, file: !2908, line: 202, type: !2909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2926 = !DISubprogram(name: "isc_sockaddr_fromin6", scope: !433, file: !433, line: 124, type: !2927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{null, !1430, !2929, !453}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!2931 = distinct !DISubprogram(name: "named_controls_create", scope: !2, file: !2, line: 1503, type: !2932, scopeLine: 1503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !2935)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!429, !580, !2934}
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!2935 = !{!2936, !2937, !2938, !2939, !2940}
!2936 = !DILocalVariable(name: "server", arg: 1, scope: !2931, file: !2, line: 1503, type: !580)
!2937 = !DILocalVariable(name: "ctrlsp", arg: 2, scope: !2931, file: !2, line: 1503, type: !2934)
!2938 = !DILocalVariable(name: "mctx", scope: !2931, file: !2, line: 1504, type: !587)
!2939 = !DILocalVariable(name: "result", scope: !2931, file: !2, line: 1505, type: !429)
!2940 = !DILocalVariable(name: "controls", scope: !2931, file: !2, line: 1506, type: !574)
!2941 = !DILocation(line: 1503, column: 39, scope: !2931)
!2942 = !DILocation(line: 1503, column: 66, scope: !2931)
!2943 = !DILocation(line: 1504, column: 2, scope: !2931)
!2944 = !DILocation(line: 1504, column: 13, scope: !2931)
!2945 = !DILocation(line: 1504, column: 20, scope: !2931)
!2946 = !DILocation(line: 1504, column: 28, scope: !2931)
!2947 = !DILocation(line: 1505, column: 2, scope: !2931)
!2948 = !DILocation(line: 1505, column: 15, scope: !2931)
!2949 = !DILocation(line: 1506, column: 2, scope: !2931)
!2950 = !DILocation(line: 1506, column: 20, scope: !2931)
!2951 = !DILocation(line: 1506, column: 31, scope: !2931)
!2952 = !DILocation(line: 1508, column: 6, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2931, file: !2, line: 1508, column: 6)
!2954 = !DILocation(line: 1508, column: 15, scope: !2953)
!2955 = !DILocation(line: 1508, column: 6, scope: !2931)
!2956 = !DILocation(line: 1509, column: 3, scope: !2953)
!2957 = !DILocation(line: 1510, column: 21, scope: !2931)
!2958 = !DILocation(line: 1510, column: 2, scope: !2931)
!2959 = !DILocation(line: 1510, column: 12, scope: !2931)
!2960 = !DILocation(line: 1510, column: 19, scope: !2931)
!2961 = !DILocation(line: 1511, column: 2, scope: !2931)
!2962 = !DILocation(line: 1511, column: 2, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2931, file: !2, line: 1511, column: 2)
!2964 = !DILocation(line: 1512, column: 2, scope: !2931)
!2965 = !DILocation(line: 1512, column: 12, scope: !2931)
!2966 = !DILocation(line: 1512, column: 25, scope: !2931)
!2967 = !DILocation(line: 1513, column: 2, scope: !2931)
!2968 = !DILocation(line: 1513, column: 12, scope: !2931)
!2969 = !DILocation(line: 1513, column: 19, scope: !2931)
!2970 = !DILocation(line: 1514, column: 34, scope: !2931)
!2971 = !DILocation(line: 1514, column: 44, scope: !2931)
!2972 = !DILocation(line: 1514, column: 11, scope: !2931)
!2973 = !DILocation(line: 1514, column: 9, scope: !2931)
!2974 = !DILocation(line: 1515, column: 6, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2931, file: !2, line: 1515, column: 6)
!2976 = !DILocation(line: 1515, column: 13, scope: !2975)
!2977 = !DILocation(line: 1515, column: 6, scope: !2931)
!2978 = !DILocation(line: 1516, column: 3, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2975, file: !2, line: 1515, column: 31)
!2980 = !DILocation(line: 1516, column: 3, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2979, file: !2, line: 1516, column: 3)
!2982 = !DILocation(line: 1517, column: 11, scope: !2979)
!2983 = !DILocation(line: 1517, column: 3, scope: !2979)
!2984 = !DILocation(line: 1519, column: 12, scope: !2931)
!2985 = !DILocation(line: 1519, column: 3, scope: !2931)
!2986 = !DILocation(line: 1519, column: 10, scope: !2931)
!2987 = !DILocation(line: 1520, column: 2, scope: !2931)
!2988 = !DILocation(line: 1521, column: 1, scope: !2931)
!2989 = !DISubprogram(name: "isc__mem_get", scope: !590, file: !590, line: 630, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2990 = !DISubprogram(name: "isccc_cc_createsymtab", scope: !2991, file: !2991, line: 116, type: !2992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2991 = !DIFile(filename: "lib/isccc/include/isccc/cc.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "d5616014fb621049dd609cbd5771267a")
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!429, !2994}
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!2995 = !DISubprogram(name: "isc__mem_put", scope: !590, file: !590, line: 634, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2996 = distinct !DISubprogram(name: "named_controls_destroy", scope: !2, file: !2, line: 1524, type: !2997, scopeLine: 1524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{null, !2934}
!2999 = !{!3000, !3001}
!3000 = !DILocalVariable(name: "ctrlsp", arg: 1, scope: !2996, file: !2, line: 1524, type: !2934)
!3001 = !DILocalVariable(name: "controls", scope: !2996, file: !2, line: 1525, type: !574)
!3002 = !DILocation(line: 1524, column: 43, scope: !2996)
!3003 = !DILocation(line: 1525, column: 2, scope: !2996)
!3004 = !DILocation(line: 1525, column: 20, scope: !2996)
!3005 = !DILocation(line: 1525, column: 32, scope: !2996)
!3006 = !DILocation(line: 1525, column: 31, scope: !2996)
!3007 = !DILocation(line: 1527, column: 2, scope: !2996)
!3008 = !DILocation(line: 1529, column: 24, scope: !2996)
!3009 = !DILocation(line: 1529, column: 34, scope: !2996)
!3010 = !DILocation(line: 1529, column: 2, scope: !2996)
!3011 = !DILocation(line: 1530, column: 2, scope: !2996)
!3012 = !DILocation(line: 1530, column: 2, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2996, file: !2, line: 1530, column: 2)
!3014 = !DILocation(line: 1531, column: 3, scope: !2996)
!3015 = !DILocation(line: 1531, column: 10, scope: !2996)
!3016 = !DILocation(line: 1532, column: 1, scope: !2996)
!3017 = !DISubprogram(name: "isccc_symtab_destroy", scope: !3018, file: !3018, line: 111, type: !3019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3018 = !DIFile(filename: "lib/isccc/include/isccc/symtab.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "1da2b5af457758489ffe780aaae885d1")
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !2994}
!3021 = distinct !DISubprogram(name: "shutdown_listener", scope: !2, file: !2, line: 193, type: !3022, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{null, !1585}
!3024 = !{!3025, !3026, !3027, !3028}
!3025 = !DILocalVariable(name: "listener", arg: 1, scope: !3021, file: !2, line: 193, type: !1585)
!3026 = !DILocalVariable(name: "conn", scope: !3021, file: !2, line: 194, type: !1620)
!3027 = !DILocalVariable(name: "next", scope: !3021, file: !2, line: 195, type: !1620)
!3028 = !DILocalVariable(name: "socktext", scope: !3029, file: !2, line: 198, type: !1746)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !2, line: 197, column: 26)
!3030 = distinct !DILexicalBlock(scope: !3021, file: !2, line: 197, column: 6)
!3031 = !DILocation(line: 193, column: 38, scope: !3021)
!3032 = !DILocation(line: 194, column: 2, scope: !3021)
!3033 = !DILocation(line: 194, column: 23, scope: !3021)
!3034 = !DILocation(line: 195, column: 2, scope: !3021)
!3035 = !DILocation(line: 195, column: 23, scope: !3021)
!3036 = !DILocation(line: 197, column: 7, scope: !3030)
!3037 = !DILocation(line: 197, column: 17, scope: !3030)
!3038 = !{i8 0, i8 2}
!3039 = !{}
!3040 = !DILocation(line: 197, column: 6, scope: !3021)
!3041 = !DILocation(line: 198, column: 3, scope: !3029)
!3042 = !DILocation(line: 198, column: 8, scope: !3029)
!3043 = !DILocation(line: 200, column: 3, scope: !3029)
!3044 = !DILocation(line: 200, column: 3, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3029, file: !2, line: 200, column: 3)
!3046 = !DILocation(line: 200, column: 3, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !2, line: 200, column: 3)
!3048 = distinct !DILexicalBlock(scope: !3045, file: !2, line: 200, column: 3)
!3049 = !DILocation(line: 200, column: 3, scope: !3048)
!3050 = !DILocation(line: 200, column: 3, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3047, file: !2, line: 200, column: 3)
!3052 = !DILocation(line: 200, column: 3, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3048, file: !2, line: 200, column: 3)
!3054 = !DILocation(line: 200, column: 3, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3053, file: !2, line: 200, column: 3)
!3056 = !DILocation(line: 202, column: 24, scope: !3029)
!3057 = !DILocation(line: 202, column: 34, scope: !3029)
!3058 = !DILocation(line: 202, column: 43, scope: !3029)
!3059 = !DILocation(line: 202, column: 3, scope: !3029)
!3060 = !DILocation(line: 204, column: 17, scope: !3029)
!3061 = !DILocation(line: 205, column: 10, scope: !3029)
!3062 = !DILocation(line: 206, column: 44, scope: !3029)
!3063 = !DILocation(line: 204, column: 3, scope: !3029)
!3064 = !DILocation(line: 207, column: 7, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3029, file: !2, line: 207, column: 7)
!3066 = !DILocation(line: 207, column: 17, scope: !3065)
!3067 = !DILocation(line: 207, column: 22, scope: !3065)
!3068 = !DILocation(line: 207, column: 7, scope: !3029)
!3069 = !DILocation(line: 208, column: 26, scope: !3065)
!3070 = !DILocation(line: 208, column: 36, scope: !3065)
!3071 = !DILocation(line: 208, column: 4, scope: !3065)
!3072 = !DILocation(line: 209, column: 3, scope: !3029)
!3073 = !DILocation(line: 209, column: 13, scope: !3029)
!3074 = !DILocation(line: 209, column: 21, scope: !3029)
!3075 = !DILocation(line: 210, column: 2, scope: !3030)
!3076 = !DILocation(line: 210, column: 2, scope: !3029)
!3077 = !DILocation(line: 212, column: 14, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3021, file: !2, line: 212, column: 2)
!3079 = !DILocation(line: 212, column: 12, scope: !3078)
!3080 = !DILocation(line: 212, column: 7, scope: !3078)
!3081 = !DILocation(line: 213, column: 7, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3078, file: !2, line: 212, column: 2)
!3083 = !DILocation(line: 213, column: 12, scope: !3082)
!3084 = !DILocation(line: 212, column: 2, scope: !3078)
!3085 = !DILocation(line: 216, column: 10, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3082, file: !2, line: 215, column: 2)
!3087 = !DILocation(line: 216, column: 8, scope: !3086)
!3088 = !DILocation(line: 217, column: 25, scope: !3086)
!3089 = !DILocation(line: 217, column: 3, scope: !3086)
!3090 = !DILocation(line: 218, column: 2, scope: !3086)
!3091 = !DILocation(line: 214, column: 14, scope: !3082)
!3092 = !DILocation(line: 214, column: 12, scope: !3082)
!3093 = !DILocation(line: 212, column: 2, scope: !3082)
!3094 = distinct !{!3094, !3084, !3095, !1710}
!3095 = !DILocation(line: 218, column: 2, scope: !3078)
!3096 = !DILocation(line: 220, column: 6, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3021, file: !2, line: 220, column: 6)
!3098 = !DILocation(line: 220, column: 16, scope: !3097)
!3099 = !DILocation(line: 220, column: 6, scope: !3021)
!3100 = !DILocation(line: 221, column: 21, scope: !3097)
!3101 = !DILocation(line: 221, column: 31, scope: !3097)
!3102 = !DILocation(line: 221, column: 37, scope: !3097)
!3103 = !DILocation(line: 221, column: 47, scope: !3097)
!3104 = !DILocation(line: 221, column: 3, scope: !3097)
!3105 = !DILocation(line: 224, column: 22, scope: !3021)
!3106 = !DILocation(line: 224, column: 2, scope: !3021)
!3107 = !DILocation(line: 225, column: 1, scope: !3021)
!3108 = !DISubprogram(name: "isc_socket_cleanunix", scope: !314, file: !314, line: 944, type: !3109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{null, !2144, !663}
!3111 = distinct !DISubprogram(name: "maybe_free_connection", scope: !2, file: !2, line: 163, type: !3112, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !1620}
!3114 = !{!3115, !3116}
!3115 = !DILocalVariable(name: "conn", arg: 1, scope: !3111, file: !2, line: 163, type: !1620)
!3116 = !DILocalVariable(name: "listener", scope: !3111, file: !2, line: 164, type: !1585)
!3117 = !DILocation(line: 163, column: 44, scope: !3111)
!3118 = !DILocation(line: 164, column: 2, scope: !3111)
!3119 = !DILocation(line: 164, column: 21, scope: !3111)
!3120 = !DILocation(line: 164, column: 32, scope: !3111)
!3121 = !DILocation(line: 164, column: 38, scope: !3111)
!3122 = !DILocation(line: 166, column: 6, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3111, file: !2, line: 166, column: 6)
!3124 = !DILocation(line: 166, column: 12, scope: !3123)
!3125 = !DILocation(line: 166, column: 19, scope: !3123)
!3126 = !DILocation(line: 166, column: 6, scope: !3111)
!3127 = !DILocation(line: 167, column: 20, scope: !3123)
!3128 = !DILocation(line: 167, column: 26, scope: !3123)
!3129 = !DILocation(line: 167, column: 3, scope: !3123)
!3130 = !DILocation(line: 169, column: 6, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3111, file: !2, line: 169, column: 6)
!3132 = !DILocation(line: 169, column: 12, scope: !3131)
!3133 = !DILocation(line: 169, column: 18, scope: !3131)
!3134 = !DILocation(line: 169, column: 6, scope: !3111)
!3135 = !DILocation(line: 170, column: 21, scope: !3131)
!3136 = !DILocation(line: 170, column: 27, scope: !3131)
!3137 = !DILocation(line: 170, column: 3, scope: !3131)
!3138 = !DILocation(line: 172, column: 6, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3111, file: !2, line: 172, column: 6)
!3140 = !DILocation(line: 172, column: 12, scope: !3139)
!3141 = !DILocation(line: 172, column: 6, scope: !3111)
!3142 = !DILocation(line: 173, column: 27, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3139, file: !2, line: 172, column: 25)
!3144 = !DILocation(line: 173, column: 33, scope: !3143)
!3145 = !DILocation(line: 173, column: 3, scope: !3143)
!3146 = !DILocation(line: 174, column: 3, scope: !3143)
!3147 = !DILocation(line: 177, column: 6, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3111, file: !2, line: 177, column: 6)
!3149 = !DILocation(line: 177, column: 12, scope: !3148)
!3150 = !DILocation(line: 177, column: 6, scope: !3111)
!3151 = !DILocation(line: 178, column: 21, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !2, line: 177, column: 21)
!3153 = !DILocation(line: 178, column: 27, scope: !3152)
!3154 = !DILocation(line: 178, column: 33, scope: !3152)
!3155 = !DILocation(line: 178, column: 43, scope: !3152)
!3156 = !DILocation(line: 178, column: 3, scope: !3152)
!3157 = !DILocation(line: 180, column: 3, scope: !3152)
!3158 = !DILocation(line: 183, column: 2, scope: !3111)
!3159 = !DILocation(line: 183, column: 2, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3111, file: !2, line: 183, column: 2)
!3161 = !DILocation(line: 183, column: 2, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !2, line: 183, column: 2)
!3163 = distinct !DILexicalBlock(scope: !3160, file: !2, line: 183, column: 2)
!3164 = !DILocation(line: 183, column: 2, scope: !3163)
!3165 = !DILocation(line: 183, column: 2, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3162, file: !2, line: 183, column: 2)
!3167 = !DILocation(line: 183, column: 2, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3163, file: !2, line: 183, column: 2)
!3169 = !DILocation(line: 183, column: 2, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3168, file: !2, line: 183, column: 2)
!3171 = !DILocation(line: 189, column: 2, scope: !3111)
!3172 = !DILocation(line: 189, column: 2, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3111, file: !2, line: 189, column: 2)
!3174 = !DILocation(line: 190, column: 1, scope: !3111)
!3175 = !DISubprogram(name: "isc_socket_cancel", scope: !314, file: !314, line: 360, type: !3176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{null, !422, !375, !279}
!3178 = distinct !DISubprogram(name: "maybe_free_listener", scope: !2, file: !2, line: 155, type: !3022, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !3179)
!3179 = !{!3180}
!3180 = !DILocalVariable(name: "listener", arg: 1, scope: !3178, file: !2, line: 155, type: !1585)
!3181 = !DILocation(line: 155, column: 40, scope: !3178)
!3182 = !DILocation(line: 156, column: 6, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3178, file: !2, line: 156, column: 6)
!3184 = !DILocation(line: 156, column: 16, scope: !3183)
!3185 = !DILocation(line: 156, column: 24, scope: !3183)
!3186 = !DILocation(line: 157, column: 7, scope: !3183)
!3187 = !DILocation(line: 157, column: 17, scope: !3183)
!3188 = !DILocation(line: 157, column: 27, scope: !3183)
!3189 = !DILocation(line: 158, column: 6, scope: !3183)
!3190 = !DILocation(line: 156, column: 6, scope: !3178)
!3191 = !DILocation(line: 159, column: 17, scope: !3183)
!3192 = !DILocation(line: 159, column: 3, scope: !3183)
!3193 = !DILocation(line: 160, column: 1, scope: !3178)
!3194 = !DISubprogram(name: "isc_buffer_free", scope: !767, file: !767, line: 237, type: !3195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !3197}
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!3198 = !DISubprogram(name: "isc_timer_detach", scope: !331, file: !331, line: 279, type: !3199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{null, !3201}
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!3202 = !DISubprogram(name: "isccc_ccmsg_cancelread", scope: !1627, file: !1627, line: 116, type: !3203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{null, !3205}
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!3206 = distinct !DISubprogram(name: "free_listener", scope: !2, file: !2, line: 138, type: !3022, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !3207)
!3207 = !{!3208}
!3208 = !DILocalVariable(name: "listener", arg: 1, scope: !3206, file: !2, line: 138, type: !1585)
!3209 = !DILocation(line: 138, column: 34, scope: !3206)
!3210 = !DILocation(line: 139, column: 2, scope: !3206)
!3211 = !DILocation(line: 140, column: 2, scope: !3206)
!3212 = !DILocation(line: 141, column: 2, scope: !3206)
!3213 = !DILocation(line: 143, column: 6, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3206, file: !2, line: 143, column: 6)
!3215 = !DILocation(line: 143, column: 16, scope: !3214)
!3216 = !DILocation(line: 143, column: 21, scope: !3214)
!3217 = !DILocation(line: 143, column: 6, scope: !3206)
!3218 = !DILocation(line: 144, column: 22, scope: !3214)
!3219 = !DILocation(line: 144, column: 32, scope: !3214)
!3220 = !DILocation(line: 144, column: 3, scope: !3214)
!3221 = !DILocation(line: 146, column: 23, scope: !3206)
!3222 = !DILocation(line: 146, column: 33, scope: !3206)
!3223 = !DILocation(line: 146, column: 39, scope: !3206)
!3224 = !DILocation(line: 146, column: 49, scope: !3206)
!3225 = !DILocation(line: 146, column: 2, scope: !3206)
!3226 = !DILocation(line: 148, column: 6, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3206, file: !2, line: 148, column: 6)
!3228 = !DILocation(line: 148, column: 16, scope: !3227)
!3229 = !DILocation(line: 148, column: 20, scope: !3227)
!3230 = !DILocation(line: 148, column: 6, scope: !3206)
!3231 = !DILocation(line: 149, column: 19, scope: !3227)
!3232 = !DILocation(line: 149, column: 29, scope: !3227)
!3233 = !DILocation(line: 149, column: 3, scope: !3227)
!3234 = !DILocation(line: 151, column: 2, scope: !3206)
!3235 = !DILocation(line: 151, column: 2, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3206, file: !2, line: 151, column: 2)
!3237 = !DILocation(line: 152, column: 1, scope: !3206)
!3238 = !DISubprogram(name: "isc_socket_detach", scope: !314, file: !314, line: 432, type: !3239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{null, !3241}
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!3242 = distinct !DISubprogram(name: "free_controlkeylist", scope: !2, file: !2, line: 129, type: !3243, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !3246)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !3245, !587}
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!3246 = !{!3247, !3248, !3249}
!3247 = !DILocalVariable(name: "keylist", arg: 1, scope: !3242, file: !2, line: 129, type: !3245)
!3248 = !DILocalVariable(name: "mctx", arg: 2, scope: !3242, file: !2, line: 129, type: !587)
!3249 = !DILocalVariable(name: "key", scope: !3250, file: !2, line: 131, type: !1602)
!3250 = distinct !DILexicalBlock(scope: !3242, file: !2, line: 130, column: 36)
!3251 = !DILocation(line: 129, column: 39, scope: !3242)
!3252 = !DILocation(line: 129, column: 59, scope: !3242)
!3253 = !DILocation(line: 130, column: 2, scope: !3242)
!3254 = !DILocation(line: 130, column: 10, scope: !3242)
!3255 = !DILocation(line: 130, column: 9, scope: !3242)
!3256 = !DILocation(line: 131, column: 3, scope: !3250)
!3257 = !DILocation(line: 131, column: 17, scope: !3250)
!3258 = !DILocation(line: 131, column: 23, scope: !3250)
!3259 = !DILocation(line: 132, column: 3, scope: !3250)
!3260 = !DILocation(line: 132, column: 3, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3250, file: !2, line: 132, column: 3)
!3262 = !DILocation(line: 132, column: 3, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !2, line: 132, column: 3)
!3264 = distinct !DILexicalBlock(scope: !3261, file: !2, line: 132, column: 3)
!3265 = !DILocation(line: 132, column: 3, scope: !3264)
!3266 = !DILocation(line: 132, column: 3, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3263, file: !2, line: 132, column: 3)
!3268 = !DILocation(line: 132, column: 3, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3264, file: !2, line: 132, column: 3)
!3270 = !DILocation(line: 132, column: 3, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3269, file: !2, line: 132, column: 3)
!3272 = !DILocation(line: 133, column: 19, scope: !3250)
!3273 = !DILocation(line: 133, column: 24, scope: !3250)
!3274 = !DILocation(line: 133, column: 3, scope: !3250)
!3275 = !DILocation(line: 134, column: 2, scope: !3242)
!3276 = distinct !{!3276, !3253, !3275, !1710}
!3277 = !DILocation(line: 135, column: 1, scope: !3242)
!3278 = !DISubprogram(name: "dns_acl_detach", scope: !286, file: !286, line: 163, type: !3279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{null, !3281}
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!3282 = !DISubprogram(name: "isc__mem_putanddetach", scope: !590, file: !590, line: 632, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3283 = distinct !DISubprogram(name: "free_controlkey", scope: !2, file: !2, line: 120, type: !3284, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{null, !1602, !587}
!3286 = !{!3287, !3288}
!3287 = !DILocalVariable(name: "key", arg: 1, scope: !3283, file: !2, line: 120, type: !1602)
!3288 = !DILocalVariable(name: "mctx", arg: 2, scope: !3283, file: !2, line: 120, type: !587)
!3289 = !DILocation(line: 120, column: 31, scope: !3283)
!3290 = !DILocation(line: 120, column: 47, scope: !3283)
!3291 = !DILocation(line: 121, column: 6, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3283, file: !2, line: 121, column: 6)
!3293 = !DILocation(line: 121, column: 11, scope: !3292)
!3294 = !DILocation(line: 121, column: 19, scope: !3292)
!3295 = !DILocation(line: 121, column: 6, scope: !3283)
!3296 = !DILocation(line: 122, column: 3, scope: !3292)
!3297 = !DILocation(line: 122, column: 3, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3292, file: !2, line: 122, column: 3)
!3299 = !DILocation(line: 123, column: 6, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3283, file: !2, line: 123, column: 6)
!3301 = !DILocation(line: 123, column: 11, scope: !3300)
!3302 = !DILocation(line: 123, column: 18, scope: !3300)
!3303 = !DILocation(line: 123, column: 23, scope: !3300)
!3304 = !DILocation(line: 123, column: 6, scope: !3283)
!3305 = !DILocation(line: 124, column: 3, scope: !3300)
!3306 = !DILocation(line: 124, column: 3, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3300, file: !2, line: 124, column: 3)
!3308 = !DILocation(line: 125, column: 2, scope: !3283)
!3309 = !DILocation(line: 125, column: 2, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3283, file: !2, line: 125, column: 2)
!3311 = !DILocation(line: 126, column: 1, scope: !3283)
!3312 = !DISubprogram(name: "isc__mem_free", scope: !590, file: !590, line: 640, type: !624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3313 = !DISubprogram(name: "isc_sockaddr_equal", scope: !433, file: !433, line: 63, type: !3314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!663, !2144, !2144}
!3316 = distinct !DISubprogram(name: "get_key_info", scope: !2, file: !2, line: 945, type: !3317, scopeLine: 948, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{null, !1715, !1715, !2130, !2130}
!3319 = !{!3320, !3321, !3322, !3323, !3324, !3325, !3326}
!3320 = !DILocalVariable(name: "config", arg: 1, scope: !3316, file: !2, line: 945, type: !1715)
!3321 = !DILocalVariable(name: "control", arg: 2, scope: !3316, file: !2, line: 945, type: !1715)
!3322 = !DILocalVariable(name: "global_keylistp", arg: 3, scope: !3316, file: !2, line: 946, type: !2130)
!3323 = !DILocalVariable(name: "control_keylistp", arg: 4, scope: !3316, file: !2, line: 947, type: !2130)
!3324 = !DILocalVariable(name: "result", scope: !3316, file: !2, line: 949, type: !429)
!3325 = !DILocalVariable(name: "control_keylist", scope: !3316, file: !2, line: 950, type: !1715)
!3326 = !DILocalVariable(name: "global_keylist", scope: !3316, file: !2, line: 951, type: !1715)
!3327 = !DILocation(line: 945, column: 31, scope: !3316)
!3328 = !DILocation(line: 945, column: 56, scope: !3316)
!3329 = !DILocation(line: 946, column: 25, scope: !3316)
!3330 = !DILocation(line: 947, column: 25, scope: !3316)
!3331 = !DILocation(line: 949, column: 2, scope: !3316)
!3332 = !DILocation(line: 949, column: 15, scope: !3316)
!3333 = !DILocation(line: 950, column: 2, scope: !3316)
!3334 = !DILocation(line: 950, column: 19, scope: !3316)
!3335 = !DILocation(line: 951, column: 2, scope: !3316)
!3336 = !DILocation(line: 951, column: 19, scope: !3316)
!3337 = !DILocation(line: 953, column: 2, scope: !3316)
!3338 = !DILocation(line: 0, scope: !3316)
!3339 = !DILocation(line: 954, column: 2, scope: !3316)
!3340 = !DILocation(line: 956, column: 34, scope: !3316)
!3341 = !DILocation(line: 956, column: 20, scope: !3316)
!3342 = !DILocation(line: 956, column: 18, scope: !3316)
!3343 = !DILocation(line: 958, column: 22, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3316, file: !2, line: 958, column: 6)
!3345 = !DILocation(line: 958, column: 7, scope: !3344)
!3346 = !DILocation(line: 958, column: 39, scope: !3344)
!3347 = !DILocation(line: 959, column: 21, scope: !3344)
!3348 = !DILocation(line: 959, column: 6, scope: !3344)
!3349 = !DILocation(line: 959, column: 38, scope: !3344)
!3350 = !DILocation(line: 958, column: 6, scope: !3316)
!3351 = !DILocation(line: 960, column: 24, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3344, file: !2, line: 959, column: 47)
!3353 = !DILocation(line: 960, column: 12, scope: !3352)
!3354 = !DILocation(line: 960, column: 10, scope: !3352)
!3355 = !DILocation(line: 962, column: 7, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3352, file: !2, line: 962, column: 7)
!3357 = !DILocation(line: 962, column: 14, scope: !3356)
!3358 = !DILocation(line: 962, column: 7, scope: !3352)
!3359 = !DILocation(line: 963, column: 23, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3356, file: !2, line: 962, column: 32)
!3361 = !DILocation(line: 963, column: 5, scope: !3360)
!3362 = !DILocation(line: 963, column: 21, scope: !3360)
!3363 = !DILocation(line: 964, column: 24, scope: !3360)
!3364 = !DILocation(line: 964, column: 5, scope: !3360)
!3365 = !DILocation(line: 964, column: 22, scope: !3360)
!3366 = !DILocation(line: 965, column: 3, scope: !3360)
!3367 = !DILocation(line: 966, column: 2, scope: !3352)
!3368 = !DILocation(line: 967, column: 1, scope: !3316)
!3369 = distinct !DISubprogram(name: "controlkeylist_fromcfg", scope: !2, file: !2, line: 715, type: !3370, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !3372)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!429, !1715, !587, !3245}
!3372 = !{!3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381}
!3373 = !DILocalVariable(name: "keylist", arg: 1, scope: !3369, file: !2, line: 715, type: !1715)
!3374 = !DILocalVariable(name: "mctx", arg: 2, scope: !3369, file: !2, line: 715, type: !587)
!3375 = !DILocalVariable(name: "keyids", arg: 3, scope: !3369, file: !2, line: 716, type: !3245)
!3376 = !DILocalVariable(name: "element", scope: !3369, file: !2, line: 718, type: !1740)
!3377 = !DILocalVariable(name: "newstr", scope: !3369, file: !2, line: 719, type: !512)
!3378 = !DILocalVariable(name: "str", scope: !3369, file: !2, line: 720, type: !603)
!3379 = !DILocalVariable(name: "obj", scope: !3369, file: !2, line: 721, type: !1715)
!3380 = !DILocalVariable(name: "key", scope: !3369, file: !2, line: 722, type: !1602)
!3381 = !DILabel(scope: !3369, name: "cleanup", file: !2, line: 746)
!3382 = !DILocation(line: 715, column: 41, scope: !3369)
!3383 = !DILocation(line: 715, column: 61, scope: !3369)
!3384 = !DILocation(line: 716, column: 28, scope: !3369)
!3385 = !DILocation(line: 718, column: 2, scope: !3369)
!3386 = !DILocation(line: 718, column: 23, scope: !3369)
!3387 = !DILocation(line: 719, column: 2, scope: !3369)
!3388 = !DILocation(line: 719, column: 8, scope: !3369)
!3389 = !DILocation(line: 720, column: 2, scope: !3369)
!3390 = !DILocation(line: 720, column: 14, scope: !3369)
!3391 = !DILocation(line: 721, column: 2, scope: !3369)
!3392 = !DILocation(line: 721, column: 19, scope: !3369)
!3393 = !DILocation(line: 722, column: 2, scope: !3369)
!3394 = !DILocation(line: 722, column: 16, scope: !3369)
!3395 = !DILocation(line: 724, column: 32, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3369, file: !2, line: 724, column: 2)
!3397 = !DILocation(line: 724, column: 17, scope: !3396)
!3398 = !DILocation(line: 724, column: 15, scope: !3396)
!3399 = !DILocation(line: 724, column: 7, scope: !3396)
!3400 = !DILocation(line: 725, column: 7, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3396, file: !2, line: 724, column: 2)
!3402 = !DILocation(line: 725, column: 15, scope: !3401)
!3403 = !DILocation(line: 724, column: 2, scope: !3396)
!3404 = !DILocation(line: 728, column: 27, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3401, file: !2, line: 727, column: 2)
!3406 = !DILocation(line: 728, column: 9, scope: !3405)
!3407 = !DILocation(line: 728, column: 7, scope: !3405)
!3408 = !DILocation(line: 729, column: 26, scope: !3405)
!3409 = !DILocation(line: 729, column: 9, scope: !3405)
!3410 = !DILocation(line: 729, column: 7, scope: !3405)
!3411 = !DILocation(line: 730, column: 12, scope: !3405)
!3412 = !DILocation(line: 730, column: 10, scope: !3405)
!3413 = !DILocation(line: 731, column: 7, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3405, file: !2, line: 731, column: 7)
!3415 = !DILocation(line: 731, column: 14, scope: !3414)
!3416 = !DILocation(line: 731, column: 7, scope: !3405)
!3417 = !DILocation(line: 732, column: 4, scope: !3414)
!3418 = !DILocation(line: 733, column: 9, scope: !3405)
!3419 = !DILocation(line: 733, column: 7, scope: !3405)
!3420 = !DILocation(line: 734, column: 7, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3405, file: !2, line: 734, column: 7)
!3422 = !DILocation(line: 734, column: 11, scope: !3421)
!3423 = !DILocation(line: 734, column: 7, scope: !3405)
!3424 = !DILocation(line: 735, column: 4, scope: !3421)
!3425 = !DILocation(line: 736, column: 18, scope: !3405)
!3426 = !DILocation(line: 736, column: 3, scope: !3405)
!3427 = !DILocation(line: 736, column: 8, scope: !3405)
!3428 = !DILocation(line: 736, column: 16, scope: !3405)
!3429 = !DILocation(line: 737, column: 3, scope: !3405)
!3430 = !DILocation(line: 737, column: 8, scope: !3405)
!3431 = !DILocation(line: 737, column: 18, scope: !3405)
!3432 = !DILocation(line: 738, column: 3, scope: !3405)
!3433 = !DILocation(line: 738, column: 8, scope: !3405)
!3434 = !DILocation(line: 738, column: 15, scope: !3405)
!3435 = !DILocation(line: 738, column: 20, scope: !3405)
!3436 = !DILocation(line: 739, column: 3, scope: !3405)
!3437 = !DILocation(line: 739, column: 8, scope: !3405)
!3438 = !DILocation(line: 739, column: 15, scope: !3405)
!3439 = !DILocation(line: 739, column: 22, scope: !3405)
!3440 = !DILocation(line: 740, column: 3, scope: !3405)
!3441 = !DILocation(line: 740, column: 3, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3405, file: !2, line: 740, column: 3)
!3443 = !DILocation(line: 741, column: 3, scope: !3405)
!3444 = !DILocation(line: 741, column: 3, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3405, file: !2, line: 741, column: 3)
!3446 = !DILocation(line: 741, column: 3, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !2, line: 741, column: 3)
!3448 = distinct !DILexicalBlock(scope: !3445, file: !2, line: 741, column: 3)
!3449 = !DILocation(line: 741, column: 3, scope: !3448)
!3450 = !DILocation(line: 742, column: 10, scope: !3405)
!3451 = !DILocation(line: 743, column: 2, scope: !3405)
!3452 = !DILocation(line: 726, column: 31, scope: !3401)
!3453 = !DILocation(line: 726, column: 17, scope: !3401)
!3454 = !DILocation(line: 726, column: 15, scope: !3401)
!3455 = !DILocation(line: 724, column: 2, scope: !3401)
!3456 = distinct !{!3456, !3403, !3457, !1710}
!3457 = !DILocation(line: 743, column: 2, scope: !3396)
!3458 = !DILocation(line: 744, column: 2, scope: !3369)
!3459 = !DILocation(line: 746, column: 2, scope: !3369)
!3460 = !DILocation(line: 747, column: 6, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3369, file: !2, line: 747, column: 6)
!3462 = !DILocation(line: 747, column: 13, scope: !3461)
!3463 = !DILocation(line: 747, column: 6, scope: !3369)
!3464 = !DILocation(line: 748, column: 3, scope: !3461)
!3465 = !DILocation(line: 748, column: 3, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3461, file: !2, line: 748, column: 3)
!3467 = !DILocation(line: 749, column: 22, scope: !3369)
!3468 = !DILocation(line: 749, column: 30, scope: !3369)
!3469 = !DILocation(line: 749, column: 2, scope: !3369)
!3470 = !DILocation(line: 750, column: 2, scope: !3369)
!3471 = !DILocation(line: 751, column: 1, scope: !3369)
!3472 = distinct !DISubprogram(name: "register_keys", scope: !2, file: !2, line: 754, type: !3473, scopeLine: 756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{null, !1715, !1715, !3245, !587, !603}
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3488, !3489, !3490, !3496, !3497, !3498, !3499}
!3476 = !DILocalVariable(name: "control", arg: 1, scope: !3472, file: !2, line: 754, type: !1715)
!3477 = !DILocalVariable(name: "keylist", arg: 2, scope: !3472, file: !2, line: 754, type: !1715)
!3478 = !DILocalVariable(name: "keyids", arg: 3, scope: !3472, file: !2, line: 755, type: !3245)
!3479 = !DILocalVariable(name: "mctx", arg: 4, scope: !3472, file: !2, line: 755, type: !587)
!3480 = !DILocalVariable(name: "socktext", arg: 5, scope: !3472, file: !2, line: 755, type: !603)
!3481 = !DILocalVariable(name: "keyid", scope: !3472, file: !2, line: 757, type: !1602)
!3482 = !DILocalVariable(name: "next", scope: !3472, file: !2, line: 757, type: !1602)
!3483 = !DILocalVariable(name: "keydef", scope: !3472, file: !2, line: 758, type: !1715)
!3484 = !DILocalVariable(name: "secret", scope: !3472, file: !2, line: 759, type: !3485)
!3485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, elements: !3486)
!3486 = !{!3487}
!3487 = !DISubrange(count: 1024)
!3488 = !DILocalVariable(name: "b", scope: !3472, file: !2, line: 760, type: !765)
!3489 = !DILocalVariable(name: "result", scope: !3472, file: !2, line: 761, type: !429)
!3490 = !DILocalVariable(name: "algobj", scope: !3491, file: !2, line: 778, type: !1715)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !2, line: 777, column: 10)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !2, line: 770, column: 7)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !2, line: 766, column: 68)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !2, line: 766, column: 2)
!3495 = distinct !DILexicalBlock(scope: !3472, file: !2, line: 766, column: 2)
!3496 = !DILocalVariable(name: "secretobj", scope: !3491, file: !2, line: 779, type: !1715)
!3497 = !DILocalVariable(name: "algstr", scope: !3491, file: !2, line: 780, type: !603)
!3498 = !DILocalVariable(name: "secretstr", scope: !3491, file: !2, line: 781, type: !603)
!3499 = !DILocalVariable(name: "algtype", scope: !3491, file: !2, line: 782, type: !279)
!3500 = !DILocation(line: 754, column: 32, scope: !3472)
!3501 = !DILocation(line: 754, column: 58, scope: !3472)
!3502 = !DILocation(line: 755, column: 26, scope: !3472)
!3503 = !DILocation(line: 755, column: 45, scope: !3472)
!3504 = !DILocation(line: 755, column: 63, scope: !3472)
!3505 = !DILocation(line: 757, column: 2, scope: !3472)
!3506 = !DILocation(line: 757, column: 16, scope: !3472)
!3507 = !DILocation(line: 757, column: 24, scope: !3472)
!3508 = !DILocation(line: 758, column: 2, scope: !3472)
!3509 = !DILocation(line: 758, column: 19, scope: !3472)
!3510 = !DILocation(line: 759, column: 2, scope: !3472)
!3511 = !DILocation(line: 759, column: 7, scope: !3472)
!3512 = !DILocation(line: 760, column: 2, scope: !3472)
!3513 = !DILocation(line: 760, column: 15, scope: !3472)
!3514 = !DILocation(line: 761, column: 2, scope: !3472)
!3515 = !DILocation(line: 761, column: 15, scope: !3472)
!3516 = !DILocation(line: 766, column: 15, scope: !3495)
!3517 = !DILocation(line: 766, column: 13, scope: !3495)
!3518 = !DILocation(line: 766, column: 7, scope: !3495)
!3519 = !DILocation(line: 766, column: 39, scope: !3494)
!3520 = !DILocation(line: 766, column: 45, scope: !3494)
!3521 = !DILocation(line: 766, column: 2, scope: !3495)
!3522 = !DILocation(line: 767, column: 10, scope: !3493)
!3523 = !DILocation(line: 767, column: 8, scope: !3493)
!3524 = !DILocation(line: 769, column: 28, scope: !3493)
!3525 = !DILocation(line: 769, column: 37, scope: !3493)
!3526 = !DILocation(line: 769, column: 44, scope: !3493)
!3527 = !DILocation(line: 769, column: 12, scope: !3493)
!3528 = !DILocation(line: 769, column: 10, scope: !3493)
!3529 = !DILocation(line: 770, column: 7, scope: !3492)
!3530 = !DILocation(line: 770, column: 14, scope: !3492)
!3531 = !DILocation(line: 770, column: 7, scope: !3493)
!3532 = !DILocation(line: 771, column: 16, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3492, file: !2, line: 770, column: 32)
!3534 = !DILocation(line: 771, column: 25, scope: !3533)
!3535 = !DILocation(line: 774, column: 9, scope: !3533)
!3536 = !DILocation(line: 774, column: 16, scope: !3533)
!3537 = !DILocation(line: 774, column: 25, scope: !3533)
!3538 = !DILocation(line: 771, column: 4, scope: !3533)
!3539 = !DILocation(line: 775, column: 4, scope: !3533)
!3540 = !DILocation(line: 775, column: 4, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3533, file: !2, line: 775, column: 4)
!3542 = !DILocation(line: 775, column: 4, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !2, line: 775, column: 4)
!3544 = distinct !DILexicalBlock(scope: !3541, file: !2, line: 775, column: 4)
!3545 = !DILocation(line: 775, column: 4, scope: !3544)
!3546 = !DILocation(line: 775, column: 4, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3543, file: !2, line: 775, column: 4)
!3548 = !DILocation(line: 775, column: 4, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3544, file: !2, line: 775, column: 4)
!3550 = !DILocation(line: 775, column: 4, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3549, file: !2, line: 775, column: 4)
!3552 = !DILocation(line: 776, column: 20, scope: !3533)
!3553 = !DILocation(line: 776, column: 27, scope: !3533)
!3554 = !DILocation(line: 776, column: 4, scope: !3533)
!3555 = !DILocation(line: 777, column: 3, scope: !3533)
!3556 = !DILocation(line: 778, column: 4, scope: !3491)
!3557 = !DILocation(line: 778, column: 21, scope: !3491)
!3558 = !DILocation(line: 779, column: 4, scope: !3491)
!3559 = !DILocation(line: 779, column: 21, scope: !3491)
!3560 = !DILocation(line: 780, column: 4, scope: !3491)
!3561 = !DILocation(line: 780, column: 16, scope: !3491)
!3562 = !DILocation(line: 781, column: 4, scope: !3491)
!3563 = !DILocation(line: 781, column: 16, scope: !3491)
!3564 = !DILocation(line: 782, column: 4, scope: !3491)
!3565 = !DILocation(line: 782, column: 17, scope: !3491)
!3566 = !DILocation(line: 784, column: 22, scope: !3491)
!3567 = !DILocation(line: 784, column: 10, scope: !3491)
!3568 = !DILocation(line: 785, column: 22, scope: !3491)
!3569 = !DILocation(line: 785, column: 10, scope: !3491)
!3570 = !DILocation(line: 786, column: 4, scope: !3491)
!3571 = !DILocation(line: 0, scope: !3491)
!3572 = !DILocation(line: 788, column: 30, scope: !3491)
!3573 = !DILocation(line: 788, column: 13, scope: !3491)
!3574 = !DILocation(line: 788, column: 11, scope: !3491)
!3575 = !DILocation(line: 789, column: 33, scope: !3491)
!3576 = !DILocation(line: 789, column: 16, scope: !3491)
!3577 = !DILocation(line: 789, column: 14, scope: !3491)
!3578 = !DILocation(line: 791, column: 38, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3491, file: !2, line: 791, column: 8)
!3580 = !DILocation(line: 791, column: 8, scope: !3579)
!3581 = !DILocation(line: 792, column: 24, scope: !3579)
!3582 = !DILocation(line: 791, column: 8, scope: !3491)
!3583 = !DILocation(line: 794, column: 17, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3579, file: !2, line: 793, column: 4)
!3585 = !DILocation(line: 794, column: 26, scope: !3584)
!3586 = !DILocation(line: 799, column: 10, scope: !3584)
!3587 = !DILocation(line: 799, column: 18, scope: !3584)
!3588 = !DILocation(line: 799, column: 25, scope: !3584)
!3589 = !DILocation(line: 799, column: 34, scope: !3584)
!3590 = !DILocation(line: 794, column: 5, scope: !3584)
!3591 = !DILocation(line: 800, column: 5, scope: !3584)
!3592 = !DILocation(line: 800, column: 5, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3584, file: !2, line: 800, column: 5)
!3594 = !DILocation(line: 800, column: 5, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !2, line: 800, column: 5)
!3596 = distinct !DILexicalBlock(scope: !3593, file: !2, line: 800, column: 5)
!3597 = !DILocation(line: 800, column: 5, scope: !3596)
!3598 = !DILocation(line: 800, column: 5, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3595, file: !2, line: 800, column: 5)
!3600 = !DILocation(line: 800, column: 5, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3596, file: !2, line: 800, column: 5)
!3602 = !DILocation(line: 800, column: 5, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3601, file: !2, line: 800, column: 5)
!3604 = !DILocation(line: 801, column: 21, scope: !3584)
!3605 = !DILocation(line: 801, column: 28, scope: !3584)
!3606 = !DILocation(line: 801, column: 5, scope: !3584)
!3607 = !DILocation(line: 802, column: 5, scope: !3584)
!3608 = !DILocation(line: 805, column: 23, scope: !3491)
!3609 = !DILocation(line: 805, column: 4, scope: !3491)
!3610 = !DILocation(line: 805, column: 11, scope: !3491)
!3611 = !DILocation(line: 805, column: 21, scope: !3491)
!3612 = !DILocation(line: 806, column: 4, scope: !3491)
!3613 = !DILocation(line: 806, column: 4, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3491, file: !2, line: 806, column: 4)
!3615 = !DILocation(line: 806, column: 4, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3614, file: !2, line: 806, column: 4)
!3617 = !DILocation(line: 807, column: 37, scope: !3491)
!3618 = !DILocation(line: 807, column: 13, scope: !3491)
!3619 = !DILocation(line: 807, column: 11, scope: !3491)
!3620 = !DILocation(line: 809, column: 8, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3491, file: !2, line: 809, column: 8)
!3622 = !DILocation(line: 809, column: 15, scope: !3621)
!3623 = !DILocation(line: 809, column: 8, scope: !3491)
!3624 = !DILocation(line: 810, column: 17, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3621, file: !2, line: 809, column: 33)
!3626 = !DILocation(line: 810, column: 25, scope: !3625)
!3627 = !DILocation(line: 814, column: 10, scope: !3625)
!3628 = !DILocation(line: 814, column: 17, scope: !3625)
!3629 = !DILocation(line: 814, column: 26, scope: !3625)
!3630 = !DILocation(line: 815, column: 28, scope: !3625)
!3631 = !DILocation(line: 815, column: 10, scope: !3625)
!3632 = !DILocation(line: 810, column: 5, scope: !3625)
!3633 = !DILocation(line: 816, column: 5, scope: !3625)
!3634 = !DILocation(line: 816, column: 5, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3625, file: !2, line: 816, column: 5)
!3636 = !DILocation(line: 816, column: 5, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !2, line: 816, column: 5)
!3638 = distinct !DILexicalBlock(scope: !3635, file: !2, line: 816, column: 5)
!3639 = !DILocation(line: 816, column: 5, scope: !3638)
!3640 = !DILocation(line: 816, column: 5, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3637, file: !2, line: 816, column: 5)
!3642 = !DILocation(line: 816, column: 5, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3638, file: !2, line: 816, column: 5)
!3644 = !DILocation(line: 816, column: 5, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3643, file: !2, line: 816, column: 5)
!3646 = !DILocation(line: 817, column: 21, scope: !3625)
!3647 = !DILocation(line: 817, column: 28, scope: !3625)
!3648 = !DILocation(line: 817, column: 5, scope: !3625)
!3649 = !DILocation(line: 818, column: 5, scope: !3625)
!3650 = !DILocation(line: 821, column: 27, scope: !3491)
!3651 = !DILocation(line: 821, column: 4, scope: !3491)
!3652 = !DILocation(line: 821, column: 11, scope: !3491)
!3653 = !DILocation(line: 821, column: 18, scope: !3491)
!3654 = !DILocation(line: 821, column: 25, scope: !3491)
!3655 = !DILocation(line: 822, column: 25, scope: !3491)
!3656 = !DILocation(line: 822, column: 4, scope: !3491)
!3657 = !DILocation(line: 822, column: 11, scope: !3491)
!3658 = !DILocation(line: 822, column: 18, scope: !3491)
!3659 = !DILocation(line: 822, column: 23, scope: !3491)
!3660 = !DILocation(line: 824, column: 8, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3491, file: !2, line: 824, column: 8)
!3662 = !DILocation(line: 824, column: 15, scope: !3661)
!3663 = !DILocation(line: 824, column: 22, scope: !3661)
!3664 = !DILocation(line: 824, column: 27, scope: !3661)
!3665 = !DILocation(line: 824, column: 8, scope: !3491)
!3666 = !DILocation(line: 825, column: 17, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3661, file: !2, line: 824, column: 36)
!3668 = !DILocation(line: 825, column: 25, scope: !3667)
!3669 = !DILocation(line: 828, column: 26, scope: !3667)
!3670 = !DILocation(line: 828, column: 33, scope: !3667)
!3671 = !DILocation(line: 825, column: 5, scope: !3667)
!3672 = !DILocation(line: 829, column: 5, scope: !3667)
!3673 = !DILocation(line: 829, column: 5, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3667, file: !2, line: 829, column: 5)
!3675 = !DILocation(line: 829, column: 5, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !2, line: 829, column: 5)
!3677 = distinct !DILexicalBlock(scope: !3674, file: !2, line: 829, column: 5)
!3678 = !DILocation(line: 829, column: 5, scope: !3677)
!3679 = !DILocation(line: 829, column: 5, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3676, file: !2, line: 829, column: 5)
!3681 = !DILocation(line: 829, column: 5, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3677, file: !2, line: 829, column: 5)
!3683 = !DILocation(line: 829, column: 5, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3682, file: !2, line: 829, column: 5)
!3685 = !DILocation(line: 830, column: 21, scope: !3667)
!3686 = !DILocation(line: 830, column: 28, scope: !3667)
!3687 = !DILocation(line: 830, column: 5, scope: !3667)
!3688 = !DILocation(line: 831, column: 5, scope: !3667)
!3689 = !DILocation(line: 833, column: 12, scope: !3491)
!3690 = !DILocation(line: 833, column: 19, scope: !3491)
!3691 = !DILocation(line: 833, column: 26, scope: !3491)
!3692 = !DILocation(line: 833, column: 32, scope: !3491)
!3693 = !DILocation(line: 834, column: 5, scope: !3491)
!3694 = !DILocation(line: 834, column: 12, scope: !3491)
!3695 = !DILocation(line: 834, column: 19, scope: !3491)
!3696 = !DILocation(line: 833, column: 4, scope: !3491)
!3697 = !DILocation(line: 835, column: 3, scope: !3492)
!3698 = !DILocation(line: 836, column: 2, scope: !3493)
!3699 = !DILocation(line: 766, column: 62, scope: !3494)
!3700 = !DILocation(line: 766, column: 60, scope: !3494)
!3701 = !DILocation(line: 766, column: 2, scope: !3494)
!3702 = distinct !{!3702, !3521, !3703, !1710}
!3703 = !DILocation(line: 836, column: 2, scope: !3495)
!3704 = !DILocation(line: 837, column: 1, scope: !3472)
!3705 = distinct !DISubprogram(name: "get_rndckey", scope: !2, file: !2, line: 847, type: !3706, scopeLine: 847, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !3708)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!429, !587, !3245}
!3708 = !{!3709, !3710, !3711, !3712, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726}
!3709 = !DILocalVariable(name: "mctx", arg: 1, scope: !3705, file: !2, line: 847, type: !587)
!3710 = !DILocalVariable(name: "keyids", arg: 2, scope: !3705, file: !2, line: 847, type: !3245)
!3711 = !DILocalVariable(name: "result", scope: !3705, file: !2, line: 848, type: !429)
!3712 = !DILocalVariable(name: "pctx", scope: !3705, file: !2, line: 849, type: !3713)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_typedef, name: "cfg_parser_t", file: !1718, line: 44, baseType: !3715)
!3715 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfg_parser", file: !1718, line: 44, flags: DIFlagFwdDecl)
!3716 = !DILocalVariable(name: "config", scope: !3705, file: !2, line: 850, type: !2137)
!3717 = !DILocalVariable(name: "key", scope: !3705, file: !2, line: 851, type: !1715)
!3718 = !DILocalVariable(name: "algobj", scope: !3705, file: !2, line: 852, type: !1715)
!3719 = !DILocalVariable(name: "secretobj", scope: !3705, file: !2, line: 853, type: !1715)
!3720 = !DILocalVariable(name: "algstr", scope: !3705, file: !2, line: 854, type: !603)
!3721 = !DILocalVariable(name: "secretstr", scope: !3705, file: !2, line: 855, type: !603)
!3722 = !DILocalVariable(name: "keyid", scope: !3705, file: !2, line: 856, type: !1602)
!3723 = !DILocalVariable(name: "secret", scope: !3705, file: !2, line: 857, type: !3485)
!3724 = !DILocalVariable(name: "algtype", scope: !3705, file: !2, line: 858, type: !279)
!3725 = !DILocalVariable(name: "b", scope: !3705, file: !2, line: 859, type: !765)
!3726 = !DILabel(scope: !3705, name: "cleanup", file: !2, line: 930)
!3727 = !DILocation(line: 847, column: 24, scope: !3705)
!3728 = !DILocation(line: 847, column: 48, scope: !3705)
!3729 = !DILocation(line: 848, column: 2, scope: !3705)
!3730 = !DILocation(line: 848, column: 15, scope: !3705)
!3731 = !DILocation(line: 849, column: 2, scope: !3705)
!3732 = !DILocation(line: 849, column: 16, scope: !3705)
!3733 = !DILocation(line: 850, column: 2, scope: !3705)
!3734 = !DILocation(line: 850, column: 13, scope: !3705)
!3735 = !DILocation(line: 851, column: 2, scope: !3705)
!3736 = !DILocation(line: 851, column: 19, scope: !3705)
!3737 = !DILocation(line: 852, column: 2, scope: !3705)
!3738 = !DILocation(line: 852, column: 19, scope: !3705)
!3739 = !DILocation(line: 853, column: 2, scope: !3705)
!3740 = !DILocation(line: 853, column: 19, scope: !3705)
!3741 = !DILocation(line: 854, column: 2, scope: !3705)
!3742 = !DILocation(line: 854, column: 14, scope: !3705)
!3743 = !DILocation(line: 855, column: 2, scope: !3705)
!3744 = !DILocation(line: 855, column: 14, scope: !3705)
!3745 = !DILocation(line: 856, column: 2, scope: !3705)
!3746 = !DILocation(line: 856, column: 16, scope: !3705)
!3747 = !DILocation(line: 857, column: 2, scope: !3705)
!3748 = !DILocation(line: 857, column: 7, scope: !3705)
!3749 = !DILocation(line: 858, column: 2, scope: !3705)
!3750 = !DILocation(line: 858, column: 15, scope: !3705)
!3751 = !DILocation(line: 859, column: 2, scope: !3705)
!3752 = !DILocation(line: 859, column: 15, scope: !3705)
!3753 = !DILocation(line: 861, column: 16, scope: !3705)
!3754 = !DILocation(line: 862, column: 9, scope: !3705)
!3755 = !DILocation(line: 864, column: 9, scope: !3705)
!3756 = !DILocation(line: 861, column: 2, scope: !3705)
!3757 = !DILocation(line: 865, column: 24, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 865, column: 6)
!3759 = !DILocation(line: 865, column: 8, scope: !3758)
!3760 = !DILocation(line: 865, column: 6, scope: !3705)
!3761 = !DILocation(line: 866, column: 3, scope: !3758)
!3762 = !DILocation(line: 868, column: 2, scope: !3705)
!3763 = !DILocation(line: 868, column: 2, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 868, column: 2)
!3765 = !DILocation(line: 868, column: 2, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3764, file: !2, line: 868, column: 2)
!3767 = !DILocation(line: 869, column: 2, scope: !3705)
!3768 = !DILocation(line: 869, column: 2, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 869, column: 2)
!3770 = !DILocation(line: 869, column: 2, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3769, file: !2, line: 869, column: 2)
!3772 = !DILocation(line: 870, column: 2, scope: !3705)
!3773 = !DILocation(line: 870, column: 2, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 870, column: 2)
!3775 = !DILocation(line: 870, column: 2, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3774, file: !2, line: 870, column: 2)
!3777 = !DILocation(line: 872, column: 10, scope: !3705)
!3778 = !DILocation(line: 872, column: 8, scope: !3705)
!3779 = !DILocation(line: 873, column: 6, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 873, column: 6)
!3781 = !DILocation(line: 873, column: 12, scope: !3780)
!3782 = !DILocation(line: 873, column: 6, scope: !3705)
!3783 = !DILocation(line: 874, column: 3, scope: !3780)
!3784 = !DILocation(line: 874, column: 3, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3780, file: !2, line: 874, column: 3)
!3786 = !DILocation(line: 874, column: 3, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3785, file: !2, line: 874, column: 3)
!3788 = !DILocation(line: 875, column: 19, scope: !3705)
!3789 = !DILocation(line: 875, column: 2, scope: !3705)
!3790 = !DILocation(line: 875, column: 9, scope: !3705)
!3791 = !DILocation(line: 875, column: 17, scope: !3705)
!3792 = !DILocation(line: 877, column: 2, scope: !3705)
!3793 = !DILocation(line: 877, column: 9, scope: !3705)
!3794 = !DILocation(line: 877, column: 16, scope: !3705)
!3795 = !DILocation(line: 877, column: 21, scope: !3705)
!3796 = !DILocation(line: 878, column: 2, scope: !3705)
!3797 = !DILocation(line: 878, column: 9, scope: !3705)
!3798 = !DILocation(line: 878, column: 16, scope: !3705)
!3799 = !DILocation(line: 878, column: 23, scope: !3705)
!3800 = !DILocation(line: 879, column: 2, scope: !3705)
!3801 = !DILocation(line: 879, column: 9, scope: !3705)
!3802 = !DILocation(line: 879, column: 19, scope: !3705)
!3803 = !DILocation(line: 880, column: 2, scope: !3705)
!3804 = !DILocation(line: 880, column: 2, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 880, column: 2)
!3806 = !DILocation(line: 881, column: 6, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 881, column: 6)
!3808 = !DILocation(line: 881, column: 13, scope: !3807)
!3809 = !DILocation(line: 881, column: 21, scope: !3807)
!3810 = !DILocation(line: 881, column: 6, scope: !3705)
!3811 = !DILocation(line: 882, column: 3, scope: !3807)
!3812 = !DILocation(line: 882, column: 3, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3807, file: !2, line: 882, column: 3)
!3814 = !DILocation(line: 882, column: 3, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3813, file: !2, line: 882, column: 3)
!3816 = !DILocation(line: 884, column: 2, scope: !3705)
!3817 = !DILocation(line: 884, column: 2, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 884, column: 2)
!3819 = !DILocation(line: 884, column: 2, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3818, file: !2, line: 884, column: 2)
!3821 = !DILocation(line: 886, column: 20, scope: !3705)
!3822 = !DILocation(line: 886, column: 8, scope: !3705)
!3823 = !DILocation(line: 887, column: 20, scope: !3705)
!3824 = !DILocation(line: 887, column: 8, scope: !3705)
!3825 = !DILocation(line: 888, column: 2, scope: !3705)
!3826 = !DILocation(line: 0, scope: !3705)
!3827 = !DILocation(line: 890, column: 28, scope: !3705)
!3828 = !DILocation(line: 890, column: 11, scope: !3705)
!3829 = !DILocation(line: 890, column: 9, scope: !3705)
!3830 = !DILocation(line: 891, column: 31, scope: !3705)
!3831 = !DILocation(line: 891, column: 14, scope: !3705)
!3832 = !DILocation(line: 891, column: 12, scope: !3705)
!3833 = !DILocation(line: 893, column: 36, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 893, column: 6)
!3835 = !DILocation(line: 893, column: 6, scope: !3834)
!3836 = !DILocation(line: 894, column: 24, scope: !3834)
!3837 = !DILocation(line: 893, column: 6, scope: !3705)
!3838 = !DILocation(line: 895, column: 15, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3834, file: !2, line: 894, column: 42)
!3840 = !DILocation(line: 895, column: 20, scope: !3839)
!3841 = !DILocation(line: 900, column: 8, scope: !3839)
!3842 = !DILocation(line: 900, column: 16, scope: !3839)
!3843 = !DILocation(line: 900, column: 23, scope: !3839)
!3844 = !DILocation(line: 895, column: 3, scope: !3839)
!3845 = !DILocation(line: 901, column: 3, scope: !3839)
!3846 = !DILocation(line: 904, column: 21, scope: !3705)
!3847 = !DILocation(line: 904, column: 2, scope: !3705)
!3848 = !DILocation(line: 904, column: 9, scope: !3705)
!3849 = !DILocation(line: 904, column: 19, scope: !3705)
!3850 = !DILocation(line: 905, column: 2, scope: !3705)
!3851 = !DILocation(line: 905, column: 2, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 905, column: 2)
!3853 = !DILocation(line: 905, column: 2, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3852, file: !2, line: 905, column: 2)
!3855 = !DILocation(line: 906, column: 35, scope: !3705)
!3856 = !DILocation(line: 906, column: 11, scope: !3705)
!3857 = !DILocation(line: 906, column: 9, scope: !3705)
!3858 = !DILocation(line: 908, column: 6, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 908, column: 6)
!3860 = !DILocation(line: 908, column: 13, scope: !3859)
!3861 = !DILocation(line: 908, column: 6, scope: !3705)
!3862 = !DILocation(line: 909, column: 15, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3859, file: !2, line: 908, column: 31)
!3864 = !DILocation(line: 909, column: 20, scope: !3863)
!3865 = !DILocation(line: 911, column: 8, scope: !3863)
!3866 = !DILocation(line: 911, column: 15, scope: !3863)
!3867 = !DILocation(line: 911, column: 42, scope: !3863)
!3868 = !DILocation(line: 911, column: 24, scope: !3863)
!3869 = !DILocation(line: 909, column: 3, scope: !3863)
!3870 = !DILocation(line: 912, column: 3, scope: !3863)
!3871 = !DILocation(line: 915, column: 25, scope: !3705)
!3872 = !DILocation(line: 915, column: 2, scope: !3705)
!3873 = !DILocation(line: 915, column: 9, scope: !3705)
!3874 = !DILocation(line: 915, column: 16, scope: !3705)
!3875 = !DILocation(line: 915, column: 23, scope: !3705)
!3876 = !DILocation(line: 916, column: 23, scope: !3705)
!3877 = !DILocation(line: 916, column: 2, scope: !3705)
!3878 = !DILocation(line: 916, column: 9, scope: !3705)
!3879 = !DILocation(line: 916, column: 16, scope: !3705)
!3880 = !DILocation(line: 916, column: 21, scope: !3705)
!3881 = !DILocation(line: 918, column: 6, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 918, column: 6)
!3883 = !DILocation(line: 918, column: 13, scope: !3882)
!3884 = !DILocation(line: 918, column: 20, scope: !3882)
!3885 = !DILocation(line: 918, column: 25, scope: !3882)
!3886 = !DILocation(line: 918, column: 6, scope: !3705)
!3887 = !DILocation(line: 919, column: 15, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3882, file: !2, line: 918, column: 34)
!3889 = !DILocation(line: 919, column: 20, scope: !3888)
!3890 = !DILocation(line: 921, column: 24, scope: !3888)
!3891 = !DILocation(line: 921, column: 31, scope: !3888)
!3892 = !DILocation(line: 919, column: 3, scope: !3888)
!3893 = !DILocation(line: 922, column: 3, scope: !3888)
!3894 = !DILocation(line: 922, column: 3, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3888, file: !2, line: 922, column: 3)
!3896 = !DILocation(line: 922, column: 3, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3895, file: !2, line: 922, column: 3)
!3898 = !DILocation(line: 923, column: 2, scope: !3888)
!3899 = !DILocation(line: 924, column: 10, scope: !3705)
!3900 = !DILocation(line: 924, column: 17, scope: !3705)
!3901 = !DILocation(line: 924, column: 24, scope: !3705)
!3902 = !DILocation(line: 924, column: 30, scope: !3705)
!3903 = !DILocation(line: 925, column: 3, scope: !3705)
!3904 = !DILocation(line: 925, column: 10, scope: !3705)
!3905 = !DILocation(line: 925, column: 17, scope: !3705)
!3906 = !DILocation(line: 924, column: 2, scope: !3705)
!3907 = !DILocation(line: 926, column: 2, scope: !3705)
!3908 = !DILocation(line: 926, column: 2, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 926, column: 2)
!3910 = !DILocation(line: 926, column: 2, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !2, line: 926, column: 2)
!3912 = distinct !DILexicalBlock(scope: !3909, file: !2, line: 926, column: 2)
!3913 = !DILocation(line: 926, column: 2, scope: !3912)
!3914 = !DILocation(line: 927, column: 8, scope: !3705)
!3915 = !DILocation(line: 928, column: 9, scope: !3705)
!3916 = !DILocation(line: 928, column: 2, scope: !3705)
!3917 = !DILocation(line: 930, column: 3, scope: !3705)
!3918 = !DILocation(line: 931, column: 6, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 931, column: 6)
!3920 = !DILocation(line: 931, column: 12, scope: !3919)
!3921 = !DILocation(line: 931, column: 6, scope: !3705)
!3922 = !DILocation(line: 932, column: 19, scope: !3919)
!3923 = !DILocation(line: 932, column: 26, scope: !3919)
!3924 = !DILocation(line: 932, column: 3, scope: !3919)
!3925 = !DILocation(line: 933, column: 6, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 933, column: 6)
!3927 = !DILocation(line: 933, column: 13, scope: !3926)
!3928 = !DILocation(line: 933, column: 6, scope: !3705)
!3929 = !DILocation(line: 934, column: 19, scope: !3926)
!3930 = !DILocation(line: 934, column: 3, scope: !3926)
!3931 = !DILocation(line: 935, column: 6, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 935, column: 6)
!3933 = !DILocation(line: 935, column: 11, scope: !3932)
!3934 = !DILocation(line: 935, column: 6, scope: !3705)
!3935 = !DILocation(line: 936, column: 3, scope: !3932)
!3936 = !DILocation(line: 937, column: 10, scope: !3705)
!3937 = !DILocation(line: 937, column: 2, scope: !3705)
!3938 = !DILocation(line: 938, column: 1, scope: !3705)
!3939 = !DISubprogram(name: "cfg_obj_log", scope: !1718, file: !1718, line: 519, type: !3940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{null, !1715, !2159, !332, !603, null}
!3942 = !DISubprogram(name: "cfg_acl_fromconfig", scope: !1722, file: !1722, line: 60, type: !3943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!429, !1715, !1715, !2159, !1720, !587, !279, !3281}
!3945 = !DISubprogram(name: "dns_acl_any", scope: !286, file: !286, line: 117, type: !3946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!429, !587, !3281}
!3948 = !DISubprogram(name: "cfg_obj_isvoid", scope: !1718, file: !1718, line: 180, type: !3949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!663, !1715}
!3951 = !DISubprogram(name: "cfg_obj_asboolean", scope: !1718, file: !1718, line: 349, type: !3949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3952 = !DISubprogram(name: "dns_acl_attach", scope: !286, file: !286, line: 153, type: !3953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{null, !681, !3281}
!3955 = !DISubprogram(name: "cfg_obj_asuint32", scope: !1718, file: !1718, line: 270, type: !3956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!353, !1715}
!3958 = !DISubprogram(name: "isc_socket_permunix", scope: !314, file: !314, line: 962, type: !3959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!429, !2144, !353, !353, !353}
!3961 = !DISubprogram(name: "isc__mem_strdup", scope: !590, file: !590, line: 642, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3962 = distinct !DISubprogram(name: "cfgkeylist_find", scope: !2, file: !2, line: 691, type: !2128, scopeLine: 693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !3963)
!3963 = !{!3964, !3965, !3966, !3967, !3968, !3969}
!3964 = !DILocalVariable(name: "keylist", arg: 1, scope: !3962, file: !2, line: 691, type: !1715)
!3965 = !DILocalVariable(name: "keyname", arg: 2, scope: !3962, file: !2, line: 691, type: !603)
!3966 = !DILocalVariable(name: "objp", arg: 3, scope: !3962, file: !2, line: 692, type: !2130)
!3967 = !DILocalVariable(name: "element", scope: !3962, file: !2, line: 694, type: !1740)
!3968 = !DILocalVariable(name: "str", scope: !3962, file: !2, line: 695, type: !603)
!3969 = !DILocalVariable(name: "obj", scope: !3962, file: !2, line: 696, type: !1715)
!3970 = !DILocation(line: 691, column: 34, scope: !3962)
!3971 = !DILocation(line: 691, column: 55, scope: !3962)
!3972 = !DILocation(line: 692, column: 21, scope: !3962)
!3973 = !DILocation(line: 694, column: 2, scope: !3962)
!3974 = !DILocation(line: 694, column: 23, scope: !3962)
!3975 = !DILocation(line: 695, column: 2, scope: !3962)
!3976 = !DILocation(line: 695, column: 14, scope: !3962)
!3977 = !DILocation(line: 696, column: 2, scope: !3962)
!3978 = !DILocation(line: 696, column: 19, scope: !3962)
!3979 = !DILocation(line: 698, column: 32, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3962, file: !2, line: 698, column: 2)
!3981 = !DILocation(line: 698, column: 17, scope: !3980)
!3982 = !DILocation(line: 698, column: 15, scope: !3980)
!3983 = !DILocation(line: 698, column: 7, scope: !3980)
!3984 = !DILocation(line: 699, column: 7, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3980, file: !2, line: 698, column: 2)
!3986 = !DILocation(line: 699, column: 15, scope: !3985)
!3987 = !DILocation(line: 698, column: 2, scope: !3980)
!3988 = !DILocation(line: 702, column: 27, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3985, file: !2, line: 701, column: 2)
!3990 = !DILocation(line: 702, column: 9, scope: !3989)
!3991 = !DILocation(line: 702, column: 7, scope: !3989)
!3992 = !DILocation(line: 703, column: 42, scope: !3989)
!3993 = !DILocation(line: 703, column: 26, scope: !3989)
!3994 = !DILocation(line: 703, column: 9, scope: !3989)
!3995 = !DILocation(line: 703, column: 7, scope: !3989)
!3996 = !DILocation(line: 704, column: 18, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3989, file: !2, line: 704, column: 7)
!3998 = !DILocation(line: 704, column: 23, scope: !3997)
!3999 = !DILocation(line: 704, column: 7, scope: !3997)
!4000 = !DILocation(line: 704, column: 32, scope: !3997)
!4001 = !DILocation(line: 704, column: 7, scope: !3989)
!4002 = !DILocation(line: 705, column: 4, scope: !3997)
!4003 = !DILocation(line: 706, column: 2, scope: !3989)
!4004 = !DILocation(line: 700, column: 31, scope: !3985)
!4005 = !DILocation(line: 700, column: 17, scope: !3985)
!4006 = !DILocation(line: 700, column: 15, scope: !3985)
!4007 = !DILocation(line: 698, column: 2, scope: !3985)
!4008 = distinct !{!4008, !3987, !4009, !1710}
!4009 = !DILocation(line: 706, column: 2, scope: !3980)
!4010 = !DILocation(line: 707, column: 6, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3962, file: !2, line: 707, column: 6)
!4012 = !DILocation(line: 707, column: 14, scope: !4011)
!4013 = !DILocation(line: 707, column: 6, scope: !3962)
!4014 = !DILocation(line: 708, column: 3, scope: !4011)
!4015 = !DILocation(line: 709, column: 26, scope: !3962)
!4016 = !DILocation(line: 709, column: 8, scope: !3962)
!4017 = !DILocation(line: 709, column: 6, scope: !3962)
!4018 = !DILocation(line: 710, column: 10, scope: !3962)
!4019 = !DILocation(line: 710, column: 3, scope: !3962)
!4020 = !DILocation(line: 710, column: 8, scope: !3962)
!4021 = !DILocation(line: 711, column: 2, scope: !3962)
!4022 = !DILocation(line: 712, column: 1, scope: !3962)
!4023 = !DISubprogram(name: "named_config_getkeyalgorithm2", scope: !4024, file: !4024, line: 77, type: !4025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4024 = !DIFile(filename: "./include/named/config.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/named", checksumkind: CSK_MD5, checksum: "af64dcfde18663593c3bfcd74a86d898")
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!429, !603, !4027, !4028, !1378}
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!4029 = !DISubprogram(name: "isc_base64_decodestring", scope: !4030, file: !4030, line: 52, type: !4031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4030 = !DIFile(filename: "lib/isc/include/isc/base64.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "4ceb48f3331eddbf77a8163e7ba32beb")
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!429, !603, !764}
!4033 = !DISubprogram(name: "cfg_map_getname", scope: !1718, file: !1718, line: 221, type: !4034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!1715, !1715}
!4036 = !DISubprogram(name: "strcasecmp", scope: !4037, file: !4037, line: 116, type: !4038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4037 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "7444da68ad94ab9f25ff447750787173")
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!332, !603, !603}
!4040 = !DISubprogram(name: "isc_file_exists", scope: !4041, file: !4041, line: 180, type: !4042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4041 = !DIFile(filename: "lib/isc/include/isc/file.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "5593ae1824411974c480d3213e2cfe04")
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!663, !603}
!4044 = !DISubprogram(name: "cfg_parser_create", scope: !1718, file: !1718, line: 88, type: !4045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!429, !587, !2159, !4047}
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!4048 = !DISubprogram(name: "cfg_parse_file", scope: !1718, file: !1718, line: 113, type: !4049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!429, !3713, !603, !4051, !4055}
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4053)
!4053 = !DIDerivedType(tag: DW_TAG_typedef, name: "cfg_type_t", file: !1718, line: 51, baseType: !4054)
!4054 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfg_type", file: !1718, line: 51, flags: DIFlagFwdDecl)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!4056 = !DISubprogram(name: "bind9_check_key", scope: !4057, file: !4057, line: 58, type: !4058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4057 = !DIFile(filename: "lib/bind9/include/bind9/check.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "8414f4d90b1cdebcc9facba744a6c054")
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!429, !1715, !2159}
!4060 = !DISubprogram(name: "cfg_obj_destroy", scope: !1718, file: !1718, line: 508, type: !4061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !3713, !4055}
!4063 = !DISubprogram(name: "cfg_parser_destroy", scope: !1718, file: !1718, line: 173, type: !4064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{null, !4047}
!4066 = !DISubprogram(name: "isc_mem_attach", scope: !590, file: !590, line: 299, type: !4067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{null, !587, !612}
!4069 = !DISubprogram(name: "isc_sockaddr_pf", scope: !433, file: !433, line: 145, type: !4070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!332, !2144}
!4072 = !DISubprogram(name: "isc_net_probeunix", scope: !2908, file: !2908, line: 252, type: !2909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4073 = !DISubprogram(name: "isc_socket_create", scope: !314, file: !314, line: 324, type: !4074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!429, !4076, !332, !1655, !3241}
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_socketmgr_t", file: !369, line: 73, baseType: !4078)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_socketmgr", file: !314, line: 291, size: 64, elements: !4079)
!4079 = !{!4080, !4081}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !4078, file: !314, line: 292, baseType: !279, size: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4078, file: !314, line: 293, baseType: !279, size: 32, offset: 32)
!4082 = !DISubprogram(name: "isc_socket_setname", scope: !314, file: !314, line: 979, type: !4083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{null, !422, !603, !350}
!4085 = !DISubprogram(name: "isc_socket_ipv6only", scope: !314, file: !314, line: 915, type: !4086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{null, !422, !663}
!4088 = !DISubprogram(name: "isc_socket_bind", scope: !314, file: !314, line: 504, type: !4089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!429, !422, !2144, !4091}
!4091 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_socket_options_t", file: !314, line: 87, baseType: !327)
!4092 = distinct !DISubprogram(name: "control_listen", scope: !2, file: !2, line: 257, type: !4093, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!429, !1585}
!4095 = !{!4096, !4097}
!4096 = !DILocalVariable(name: "listener", arg: 1, scope: !4092, file: !2, line: 257, type: !1585)
!4097 = !DILocalVariable(name: "result", scope: !4092, file: !2, line: 258, type: !429)
!4098 = !DILocation(line: 257, column: 35, scope: !4092)
!4099 = !DILocation(line: 258, column: 2, scope: !4092)
!4100 = !DILocation(line: 258, column: 15, scope: !4092)
!4101 = !DILocation(line: 260, column: 29, scope: !4092)
!4102 = !DILocation(line: 260, column: 39, scope: !4092)
!4103 = !DILocation(line: 260, column: 11, scope: !4092)
!4104 = !DILocation(line: 260, column: 9, scope: !4092)
!4105 = !DILocation(line: 261, column: 6, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4092, file: !2, line: 261, column: 6)
!4107 = !DILocation(line: 261, column: 13, scope: !4106)
!4108 = !DILocation(line: 261, column: 6, scope: !4092)
!4109 = !DILocation(line: 264, column: 24, scope: !4106)
!4110 = !DILocation(line: 264, column: 6, scope: !4106)
!4111 = !DILocation(line: 262, column: 3, scope: !4106)
!4112 = !DILocation(line: 265, column: 10, scope: !4092)
!4113 = !DILocation(line: 266, column: 1, scope: !4092)
!4114 = !DILocation(line: 265, column: 2, scope: !4092)
!4115 = distinct !DISubprogram(name: "control_accept", scope: !2, file: !2, line: 242, type: !4093, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !4116)
!4116 = !{!4117, !4118}
!4117 = !DILocalVariable(name: "listener", arg: 1, scope: !4115, file: !2, line: 242, type: !1585)
!4118 = !DILocalVariable(name: "result", scope: !4115, file: !2, line: 243, type: !429)
!4119 = !DILocation(line: 242, column: 35, scope: !4115)
!4120 = !DILocation(line: 243, column: 2, scope: !4115)
!4121 = !DILocation(line: 243, column: 15, scope: !4115)
!4122 = !DILocation(line: 244, column: 29, scope: !4115)
!4123 = !DILocation(line: 244, column: 39, scope: !4115)
!4124 = !DILocation(line: 245, column: 8, scope: !4115)
!4125 = !DILocation(line: 245, column: 18, scope: !4115)
!4126 = !DILocation(line: 246, column: 25, scope: !4115)
!4127 = !DILocation(line: 244, column: 11, scope: !4115)
!4128 = !DILocation(line: 244, column: 9, scope: !4115)
!4129 = !DILocation(line: 247, column: 6, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4115, file: !2, line: 247, column: 6)
!4131 = !DILocation(line: 247, column: 13, scope: !4130)
!4132 = !DILocation(line: 247, column: 6, scope: !4115)
!4133 = !DILocation(line: 250, column: 24, scope: !4130)
!4134 = !DILocation(line: 250, column: 6, scope: !4130)
!4135 = !DILocation(line: 248, column: 3, scope: !4130)
!4136 = !DILocation(line: 252, column: 3, scope: !4130)
!4137 = !DILocation(line: 252, column: 13, scope: !4130)
!4138 = !DILocation(line: 252, column: 23, scope: !4130)
!4139 = !DILocation(line: 253, column: 10, scope: !4115)
!4140 = !DILocation(line: 254, column: 1, scope: !4115)
!4141 = !DILocation(line: 253, column: 2, scope: !4115)
!4142 = !DISubprogram(name: "isc_socket_listen", scope: !314, file: !314, line: 533, type: !4143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!429, !422, !279}
!4145 = !DISubprogram(name: "isc_error_unexpected", scope: !4146, file: !4146, line: 39, type: !4147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4146 = !DIFile(filename: "lib/isc/include/isc/error.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "e90b8298ea6c947397fab383c61a094d")
!4147 = !DISubroutineType(types: !4148)
!4148 = !{null, !603, !332, !603, null}
!4149 = !DISubprogram(name: "isc_socket_accept", scope: !314, file: !314, line: 557, type: !4150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!429, !422, !375, !371, !350}
!4152 = distinct !DISubprogram(name: "control_newconn", scope: !2, file: !2, line: 614, type: !373, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !4153)
!4153 = !{!4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4164, !4167, !4168}
!4154 = !DILocalVariable(name: "task", arg: 1, scope: !4152, file: !2, line: 614, type: !375)
!4155 = !DILocalVariable(name: "event", arg: 2, scope: !4152, file: !2, line: 614, type: !378)
!4156 = !DILocalVariable(name: "nevent", scope: !4152, file: !2, line: 615, type: !357)
!4157 = !DILocalVariable(name: "listener", scope: !4152, file: !2, line: 616, type: !1585)
!4158 = !DILocalVariable(name: "sock", scope: !4152, file: !2, line: 617, type: !422)
!4159 = !DILocalVariable(name: "peeraddr", scope: !4152, file: !2, line: 618, type: !431)
!4160 = !DILocalVariable(name: "result", scope: !4152, file: !2, line: 619, type: !429)
!4161 = !DILocalVariable(name: "socktext", scope: !4162, file: !2, line: 638, type: !1746)
!4162 = distinct !DILexicalBlock(scope: !4163, file: !2, line: 637, column: 45)
!4163 = distinct !DILexicalBlock(scope: !4152, file: !2, line: 636, column: 6)
!4164 = !DILocalVariable(name: "socktext", scope: !4165, file: !2, line: 650, type: !1746)
!4165 = distinct !DILexicalBlock(scope: !4166, file: !2, line: 649, column: 31)
!4166 = distinct !DILexicalBlock(scope: !4152, file: !2, line: 649, column: 6)
!4167 = !DILabel(scope: !4152, name: "restart", file: !2, line: 660)
!4168 = !DILabel(scope: !4152, name: "cleanup", file: !2, line: 662)
!4169 = !DILocation(line: 614, column: 29, scope: !4152)
!4170 = !DILocation(line: 614, column: 48, scope: !4152)
!4171 = !DILocation(line: 615, column: 2, scope: !4152)
!4172 = !DILocation(line: 615, column: 26, scope: !4152)
!4173 = !DILocation(line: 615, column: 61, scope: !4152)
!4174 = !DILocation(line: 616, column: 2, scope: !4152)
!4175 = !DILocation(line: 616, column: 21, scope: !4152)
!4176 = !DILocation(line: 616, column: 32, scope: !4152)
!4177 = !DILocation(line: 616, column: 39, scope: !4152)
!4178 = !DILocation(line: 617, column: 2, scope: !4152)
!4179 = !DILocation(line: 617, column: 16, scope: !4152)
!4180 = !DILocation(line: 618, column: 2, scope: !4152)
!4181 = !DILocation(line: 618, column: 17, scope: !4152)
!4182 = !DILocation(line: 619, column: 2, scope: !4152)
!4183 = !DILocation(line: 619, column: 15, scope: !4152)
!4184 = !DILocation(line: 621, column: 2, scope: !4152)
!4185 = !DILocation(line: 623, column: 2, scope: !4152)
!4186 = !DILocation(line: 623, column: 12, scope: !4152)
!4187 = !DILocation(line: 623, column: 22, scope: !4152)
!4188 = !DILocation(line: 625, column: 6, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4152, file: !2, line: 625, column: 6)
!4190 = !DILocation(line: 625, column: 14, scope: !4189)
!4191 = !DILocation(line: 625, column: 21, scope: !4189)
!4192 = !DILocation(line: 625, column: 6, scope: !4152)
!4193 = !DILocation(line: 626, column: 7, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4195, file: !2, line: 626, column: 7)
!4195 = distinct !DILexicalBlock(scope: !4189, file: !2, line: 625, column: 39)
!4196 = !DILocation(line: 626, column: 15, scope: !4194)
!4197 = !DILocation(line: 626, column: 22, scope: !4194)
!4198 = !DILocation(line: 626, column: 7, scope: !4195)
!4199 = !DILocation(line: 627, column: 22, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4194, file: !2, line: 626, column: 41)
!4201 = !DILocation(line: 627, column: 4, scope: !4200)
!4202 = !DILocation(line: 628, column: 4, scope: !4200)
!4203 = !DILocation(line: 630, column: 3, scope: !4195)
!4204 = !DILocation(line: 633, column: 9, scope: !4152)
!4205 = !DILocation(line: 633, column: 17, scope: !4152)
!4206 = !DILocation(line: 633, column: 7, scope: !4152)
!4207 = !DILocation(line: 634, column: 21, scope: !4152)
!4208 = !DILocation(line: 634, column: 2, scope: !4152)
!4209 = !DILocation(line: 635, column: 31, scope: !4152)
!4210 = !DILocation(line: 635, column: 8, scope: !4152)
!4211 = !DILocation(line: 636, column: 6, scope: !4163)
!4212 = !DILocation(line: 636, column: 16, scope: !4163)
!4213 = !DILocation(line: 636, column: 21, scope: !4163)
!4214 = !DILocation(line: 636, column: 43, scope: !4163)
!4215 = !DILocation(line: 637, column: 29, scope: !4163)
!4216 = !DILocation(line: 637, column: 39, scope: !4163)
!4217 = !DILocation(line: 637, column: 7, scope: !4163)
!4218 = !DILocation(line: 636, column: 6, scope: !4152)
!4219 = !DILocation(line: 638, column: 3, scope: !4162)
!4220 = !DILocation(line: 638, column: 8, scope: !4162)
!4221 = !DILocation(line: 639, column: 34, scope: !4162)
!4222 = !DILocation(line: 639, column: 3, scope: !4162)
!4223 = !DILocation(line: 640, column: 17, scope: !4162)
!4224 = !DILocation(line: 641, column: 10, scope: !4162)
!4225 = !DILocation(line: 643, column: 10, scope: !4162)
!4226 = !DILocation(line: 640, column: 3, scope: !4162)
!4227 = !DILocation(line: 644, column: 3, scope: !4162)
!4228 = !DILocation(line: 646, column: 2, scope: !4163)
!4229 = !DILocation(line: 648, column: 25, scope: !4152)
!4230 = !DILocation(line: 648, column: 35, scope: !4152)
!4231 = !DILocation(line: 648, column: 11, scope: !4152)
!4232 = !DILocation(line: 648, column: 9, scope: !4152)
!4233 = !DILocation(line: 649, column: 6, scope: !4166)
!4234 = !DILocation(line: 649, column: 13, scope: !4166)
!4235 = !DILocation(line: 649, column: 6, scope: !4152)
!4236 = !DILocation(line: 650, column: 3, scope: !4165)
!4237 = !DILocation(line: 650, column: 8, scope: !4165)
!4238 = !DILocation(line: 651, column: 34, scope: !4165)
!4239 = !DILocation(line: 651, column: 3, scope: !4165)
!4240 = !DILocation(line: 652, column: 17, scope: !4165)
!4241 = !DILocation(line: 653, column: 10, scope: !4165)
!4242 = !DILocation(line: 655, column: 10, scope: !4165)
!4243 = !DILocation(line: 655, column: 38, scope: !4165)
!4244 = !DILocation(line: 655, column: 20, scope: !4165)
!4245 = !DILocation(line: 652, column: 3, scope: !4165)
!4246 = !DILocation(line: 656, column: 3, scope: !4165)
!4247 = !DILocation(line: 658, column: 2, scope: !4166)
!4248 = !DILocation(line: 649, column: 16, scope: !4166)
!4249 = !DILocation(line: 660, column: 2, scope: !4152)
!4250 = !DILocation(line: 661, column: 15, scope: !4152)
!4251 = !DILocation(line: 661, column: 2, scope: !4152)
!4252 = !DILocation(line: 662, column: 2, scope: !4152)
!4253 = !DILocation(line: 663, column: 2, scope: !4152)
!4254 = !DILocation(line: 664, column: 1, scope: !4152)
!4255 = !DISubprogram(name: "isc_socket_getpeername", scope: !314, file: !314, line: 614, type: !4256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!429, !422, !1430}
!4258 = distinct !DISubprogram(name: "address_ok", scope: !2, file: !2, line: 228, type: !4259, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !4261)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!663, !1430, !681}
!4261 = !{!4262, !4263, !4264, !4265, !4266, !4267}
!4262 = !DILocalVariable(name: "sockaddr", arg: 1, scope: !4258, file: !2, line: 228, type: !1430)
!4263 = !DILocalVariable(name: "acl", arg: 2, scope: !4258, file: !2, line: 228, type: !681)
!4264 = !DILocalVariable(name: "env", scope: !4258, file: !2, line: 229, type: !1031)
!4265 = !DILocalVariable(name: "netaddr", scope: !4258, file: !2, line: 231, type: !1107)
!4266 = !DILocalVariable(name: "result", scope: !4258, file: !2, line: 232, type: !429)
!4267 = !DILocalVariable(name: "match", scope: !4258, file: !2, line: 233, type: !332)
!4268 = !DILocation(line: 228, column: 28, scope: !4258)
!4269 = !DILocation(line: 228, column: 49, scope: !4258)
!4270 = !DILocation(line: 229, column: 2, scope: !4258)
!4271 = !DILocation(line: 229, column: 16, scope: !4258)
!4272 = !DILocation(line: 230, column: 29, scope: !4258)
!4273 = !DILocation(line: 230, column: 45, scope: !4258)
!4274 = !DILocation(line: 230, column: 3, scope: !4258)
!4275 = !DILocation(line: 231, column: 2, scope: !4258)
!4276 = !DILocation(line: 231, column: 16, scope: !4258)
!4277 = !DILocation(line: 232, column: 2, scope: !4258)
!4278 = !DILocation(line: 232, column: 15, scope: !4258)
!4279 = !DILocation(line: 233, column: 2, scope: !4258)
!4280 = !DILocation(line: 233, column: 6, scope: !4258)
!4281 = !DILocation(line: 235, column: 37, scope: !4258)
!4282 = !DILocation(line: 235, column: 2, scope: !4258)
!4283 = !DILocation(line: 237, column: 41, scope: !4258)
!4284 = !DILocation(line: 237, column: 46, scope: !4258)
!4285 = !DILocation(line: 237, column: 11, scope: !4258)
!4286 = !DILocation(line: 237, column: 9, scope: !4258)
!4287 = !DILocation(line: 238, column: 10, scope: !4258)
!4288 = !DILocation(line: 238, column: 17, scope: !4258)
!4289 = !DILocation(line: 238, column: 34, scope: !4258)
!4290 = !DILocation(line: 238, column: 37, scope: !4258)
!4291 = !DILocation(line: 238, column: 43, scope: !4258)
!4292 = !DILocation(line: 0, scope: !4258)
!4293 = !DILocation(line: 239, column: 1, scope: !4258)
!4294 = !DILocation(line: 238, column: 2, scope: !4258)
!4295 = distinct !DISubprogram(name: "newconnection", scope: !2, file: !2, line: 560, type: !4296, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !4298)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!429, !1585, !422}
!4298 = !{!4299, !4300, !4301, !4302, !4308, !4309}
!4299 = !DILocalVariable(name: "listener", arg: 1, scope: !4295, file: !2, line: 560, type: !1585)
!4300 = !DILocalVariable(name: "sock", arg: 2, scope: !4295, file: !2, line: 560, type: !422)
!4301 = !DILocalVariable(name: "conn", scope: !4295, file: !2, line: 561, type: !1620)
!4302 = !DILocalVariable(name: "interval", scope: !4295, file: !2, line: 562, type: !4303)
!4303 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_interval_t", file: !369, line: 53, baseType: !4304)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_interval", file: !551, line: 35, size: 64, elements: !4305)
!4305 = !{!4306, !4307}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "seconds", scope: !4304, file: !551, line: 36, baseType: !279, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "nanoseconds", scope: !4304, file: !551, line: 37, baseType: !279, size: 32, offset: 32)
!4308 = !DILocalVariable(name: "result", scope: !4295, file: !2, line: 563, type: !429)
!4309 = !DILabel(scope: !4295, name: "cleanup", file: !2, line: 598)
!4310 = !DILocation(line: 560, column: 34, scope: !4295)
!4311 = !DILocation(line: 560, column: 58, scope: !4295)
!4312 = !DILocation(line: 561, column: 2, scope: !4295)
!4313 = !DILocation(line: 561, column: 23, scope: !4295)
!4314 = !DILocation(line: 562, column: 2, scope: !4295)
!4315 = !DILocation(line: 562, column: 17, scope: !4295)
!4316 = !DILocation(line: 563, column: 2, scope: !4295)
!4317 = !DILocation(line: 563, column: 15, scope: !4295)
!4318 = !DILocation(line: 565, column: 9, scope: !4295)
!4319 = !DILocation(line: 565, column: 7, scope: !4295)
!4320 = !DILocation(line: 566, column: 6, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4295, file: !2, line: 566, column: 6)
!4322 = !DILocation(line: 566, column: 11, scope: !4321)
!4323 = !DILocation(line: 566, column: 6, scope: !4295)
!4324 = !DILocation(line: 567, column: 3, scope: !4321)
!4325 = !DILocation(line: 569, column: 15, scope: !4295)
!4326 = !DILocation(line: 569, column: 2, scope: !4295)
!4327 = !DILocation(line: 569, column: 8, scope: !4295)
!4328 = !DILocation(line: 569, column: 13, scope: !4295)
!4329 = !DILocation(line: 570, column: 19, scope: !4295)
!4330 = !DILocation(line: 570, column: 29, scope: !4295)
!4331 = !DILocation(line: 570, column: 35, scope: !4295)
!4332 = !DILocation(line: 570, column: 42, scope: !4295)
!4333 = !DILocation(line: 570, column: 48, scope: !4295)
!4334 = !DILocation(line: 570, column: 2, scope: !4295)
!4335 = !DILocation(line: 573, column: 26, scope: !4295)
!4336 = !DILocation(line: 573, column: 32, scope: !4295)
!4337 = !DILocation(line: 573, column: 2, scope: !4295)
!4338 = !DILocation(line: 575, column: 2, scope: !4295)
!4339 = !DILocation(line: 575, column: 8, scope: !4295)
!4340 = !DILocation(line: 575, column: 20, scope: !4295)
!4341 = !DILocation(line: 576, column: 2, scope: !4295)
!4342 = !DILocation(line: 576, column: 8, scope: !4295)
!4343 = !DILocation(line: 576, column: 16, scope: !4295)
!4344 = !DILocation(line: 577, column: 2, scope: !4295)
!4345 = !DILocation(line: 577, column: 8, scope: !4295)
!4346 = !DILocation(line: 577, column: 15, scope: !4295)
!4347 = !DILocation(line: 578, column: 2, scope: !4295)
!4348 = !DILocation(line: 578, column: 8, scope: !4295)
!4349 = !DILocation(line: 578, column: 14, scope: !4295)
!4350 = !DILocation(line: 579, column: 2, scope: !4295)
!4351 = !DILocation(line: 580, column: 28, scope: !4295)
!4352 = !DILocation(line: 581, column: 24, scope: !4295)
!4353 = !DILocation(line: 581, column: 34, scope: !4295)
!4354 = !DILocation(line: 582, column: 24, scope: !4295)
!4355 = !DILocation(line: 582, column: 31, scope: !4295)
!4356 = !DILocation(line: 582, column: 37, scope: !4295)
!4357 = !DILocation(line: 580, column: 11, scope: !4295)
!4358 = !DILocation(line: 580, column: 9, scope: !4295)
!4359 = !DILocation(line: 583, column: 6, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4295, file: !2, line: 583, column: 6)
!4361 = !DILocation(line: 583, column: 13, scope: !4360)
!4362 = !DILocation(line: 583, column: 6, scope: !4295)
!4363 = !DILocation(line: 584, column: 3, scope: !4360)
!4364 = !DILocation(line: 586, column: 19, scope: !4295)
!4365 = !DILocation(line: 586, column: 2, scope: !4295)
!4366 = !DILocation(line: 586, column: 8, scope: !4295)
!4367 = !DILocation(line: 586, column: 17, scope: !4295)
!4368 = !DILocation(line: 587, column: 2, scope: !4295)
!4369 = !DILocation(line: 587, column: 8, scope: !4295)
!4370 = !DILocation(line: 587, column: 14, scope: !4295)
!4371 = !DILocation(line: 588, column: 2, scope: !4295)
!4372 = !DILocation(line: 588, column: 2, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4295, file: !2, line: 588, column: 2)
!4374 = !DILocation(line: 590, column: 36, scope: !4295)
!4375 = !DILocation(line: 590, column: 42, scope: !4295)
!4376 = !DILocation(line: 590, column: 49, scope: !4295)
!4377 = !DILocation(line: 590, column: 59, scope: !4295)
!4378 = !DILocation(line: 591, column: 28, scope: !4295)
!4379 = !DILocation(line: 590, column: 11, scope: !4295)
!4380 = !DILocation(line: 590, column: 9, scope: !4295)
!4381 = !DILocation(line: 592, column: 6, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4295, file: !2, line: 592, column: 6)
!4383 = !DILocation(line: 592, column: 13, scope: !4382)
!4384 = !DILocation(line: 592, column: 6, scope: !4295)
!4385 = !DILocation(line: 593, column: 3, scope: !4382)
!4386 = !DILocation(line: 595, column: 2, scope: !4295)
!4387 = !DILocation(line: 595, column: 2, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4295, file: !2, line: 595, column: 2)
!4389 = !DILocation(line: 595, column: 2, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4391, file: !2, line: 595, column: 2)
!4391 = distinct !DILexicalBlock(scope: !4388, file: !2, line: 595, column: 2)
!4392 = !DILocation(line: 595, column: 2, scope: !4391)
!4393 = !DILocation(line: 596, column: 2, scope: !4295)
!4394 = !DILocation(line: 598, column: 2, scope: !4295)
!4395 = !DILocation(line: 599, column: 6, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4295, file: !2, line: 599, column: 6)
!4397 = !DILocation(line: 599, column: 12, scope: !4396)
!4398 = !DILocation(line: 599, column: 19, scope: !4396)
!4399 = !DILocation(line: 599, column: 6, scope: !4295)
!4400 = !DILocation(line: 600, column: 20, scope: !4396)
!4401 = !DILocation(line: 600, column: 26, scope: !4396)
!4402 = !DILocation(line: 600, column: 3, scope: !4396)
!4403 = !DILocation(line: 601, column: 26, scope: !4295)
!4404 = !DILocation(line: 601, column: 32, scope: !4295)
!4405 = !DILocation(line: 601, column: 2, scope: !4295)
!4406 = !DILocation(line: 602, column: 6, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4295, file: !2, line: 602, column: 6)
!4408 = !DILocation(line: 602, column: 12, scope: !4407)
!4409 = !DILocation(line: 602, column: 18, scope: !4407)
!4410 = !DILocation(line: 602, column: 6, scope: !4295)
!4411 = !DILocation(line: 603, column: 21, scope: !4407)
!4412 = !DILocation(line: 603, column: 27, scope: !4407)
!4413 = !DILocation(line: 603, column: 3, scope: !4407)
!4414 = !DILocation(line: 604, column: 2, scope: !4295)
!4415 = !DILocation(line: 604, column: 2, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4295, file: !2, line: 604, column: 2)
!4417 = !DILocation(line: 610, column: 10, scope: !4295)
!4418 = !DILocation(line: 610, column: 2, scope: !4295)
!4419 = !DILocation(line: 611, column: 1, scope: !4295)
!4420 = distinct !DISubprogram(name: "control_next", scope: !2, file: !2, line: 269, type: !3022, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !4421)
!4421 = !{!4422}
!4422 = !DILocalVariable(name: "listener", arg: 1, scope: !4420, file: !2, line: 269, type: !1585)
!4423 = !DILocation(line: 269, column: 33, scope: !4420)
!4424 = !DILocation(line: 270, column: 23, scope: !4420)
!4425 = !DILocation(line: 270, column: 8, scope: !4420)
!4426 = !DILocation(line: 271, column: 1, scope: !4420)
!4427 = !DISubprogram(name: "isc_event_free", scope: !381, file: !381, line: 115, type: !4428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{null, !4430}
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!4431 = !DISubprogram(name: "ns_interfacemgr_getaclenv", scope: !4432, file: !4432, line: 179, type: !4433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4432 = !DIFile(filename: "lib/ns/include/ns/interfacemgr.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "e303b44c509d3e2971a3d59ef3a33478")
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!1031, !1170}
!4435 = !DISubprogram(name: "isc_netaddr_fromsockaddr", scope: !1109, file: !1109, line: 101, type: !4436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{null, !1106, !2144}
!4438 = !DISubprogram(name: "dns_acl_match", scope: !286, file: !286, line: 207, type: !4439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!429, !4441, !845, !1039, !4443, !4445, !4446}
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1032)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!4447 = !DISubprogram(name: "isccc_ccmsg_init", scope: !1627, file: !1627, line: 59, type: !4448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{null, !587, !422, !3205}
!4450 = !DISubprogram(name: "isccc_ccmsg_setmaxsize", scope: !1627, file: !1627, line: 78, type: !4451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{null, !3205, !279}
!4453 = !DISubprogram(name: "isc_interval_set", scope: !551, file: !551, line: 52, type: !4454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{null, !4456, !279, !279}
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4457 = !DISubprogram(name: "isc_timer_create", scope: !331, file: !331, line: 141, type: !4458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!429, !4460, !4466, !4467, !4469, !375, !371, !350, !3201}
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_timermgr_t", file: !369, line: 83, baseType: !4462)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_timermgr", file: !331, line: 111, size: 64, elements: !4463)
!4463 = !{!4464, !4465}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !4462, file: !331, line: 112, baseType: !279, size: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4462, file: !331, line: 113, baseType: !279, size: 32, offset: 32)
!4466 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_timertype_t", file: !331, line: 89, baseType: !330)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4303)
!4471 = distinct !DISubprogram(name: "control_timeout", scope: !2, file: !2, line: 548, type: !373, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !4472)
!4472 = !{!4473, !4474, !4475}
!4473 = !DILocalVariable(name: "task", arg: 1, scope: !4471, file: !2, line: 548, type: !375)
!4474 = !DILocalVariable(name: "event", arg: 2, scope: !4471, file: !2, line: 548, type: !378)
!4475 = !DILocalVariable(name: "conn", scope: !4471, file: !2, line: 549, type: !1620)
!4476 = !DILocation(line: 548, column: 29, scope: !4471)
!4477 = !DILocation(line: 548, column: 48, scope: !4471)
!4478 = !DILocation(line: 549, column: 2, scope: !4471)
!4479 = !DILocation(line: 549, column: 23, scope: !4471)
!4480 = !DILocation(line: 549, column: 30, scope: !4471)
!4481 = !DILocation(line: 549, column: 37, scope: !4471)
!4482 = !DILocation(line: 551, column: 2, scope: !4471)
!4483 = !DILocation(line: 553, column: 20, scope: !4471)
!4484 = !DILocation(line: 553, column: 26, scope: !4471)
!4485 = !DILocation(line: 553, column: 2, scope: !4471)
!4486 = !DILocation(line: 554, column: 24, scope: !4471)
!4487 = !DILocation(line: 554, column: 2, scope: !4471)
!4488 = !DILocation(line: 556, column: 2, scope: !4471)
!4489 = !DILocation(line: 557, column: 1, scope: !4471)
!4490 = !DISubprogram(name: "isccc_ccmsg_readmessage", scope: !1627, file: !1627, line: 90, type: !4491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!429, !3205, !375, !371, !350}
!4493 = distinct !DISubprogram(name: "control_recvmessage", scope: !2, file: !2, line: 325, type: !373, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !4494)
!4494 = !{!4495, !4496, !4497, !4498, !4499, !4500, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4535, !4536, !4537, !4538, !4542, !4547, !4552, !4554, !4555, !4558, !4559, !4560}
!4495 = !DILocalVariable(name: "task", arg: 1, scope: !4493, file: !2, line: 325, type: !375)
!4496 = !DILocalVariable(name: "event", arg: 2, scope: !4493, file: !2, line: 325, type: !378)
!4497 = !DILocalVariable(name: "conn", scope: !4493, file: !2, line: 326, type: !1620)
!4498 = !DILocalVariable(name: "listener", scope: !4493, file: !2, line: 327, type: !1585)
!4499 = !DILocalVariable(name: "key", scope: !4493, file: !2, line: 328, type: !1602)
!4500 = !DILocalVariable(name: "request", scope: !4493, file: !2, line: 329, type: !4501)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_typedef, name: "isccc_sexpr_t", file: !1670, line: 40, baseType: !4503)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isccc_sexpr", file: !4504, line: 47, size: 192, elements: !4505)
!4504 = !DIFile(filename: "lib/isccc/include/isccc/sexpr.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f1e7f04d87b3bab80b39b390f2cd060d")
!4505 = !{!4506, !4507}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4503, file: !4504, line: 48, baseType: !279, size: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4503, file: !4504, line: 53, baseType: !4508, size: 128, offset: 64)
!4508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4503, file: !4504, line: 49, size: 128, elements: !4509)
!4509 = !{!4510, !4511, !4517}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "as_string", scope: !4508, file: !4504, line: 50, baseType: !512, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "as_dottedpair", scope: !4508, file: !4504, line: 51, baseType: !4512, size: 128)
!4512 = !DIDerivedType(tag: DW_TAG_typedef, name: "isccc_dottedpair_t", file: !1670, line: 42, baseType: !4513)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isccc_dottedpair", file: !4504, line: 41, size: 128, elements: !4514)
!4514 = !{!4515, !4516}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "car", scope: !4513, file: !4504, line: 42, baseType: !4501, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "cdr", scope: !4513, file: !4504, line: 43, baseType: !4501, size: 64, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "as_region", scope: !4508, file: !4504, line: 52, baseType: !4518, size: 128)
!4518 = !DIDerivedType(tag: DW_TAG_typedef, name: "isccc_region_t", file: !1670, line: 50, baseType: !4519)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isccc_region", file: !1670, line: 47, size: 128, elements: !4520)
!4520 = !{!4521, !4522}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "rstart", scope: !4519, file: !1670, line: 48, baseType: !511, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "rend", scope: !4519, file: !1670, line: 49, baseType: !511, size: 64, offset: 64)
!4523 = !DILocalVariable(name: "response", scope: !4493, file: !2, line: 330, type: !4501)
!4524 = !DILocalVariable(name: "algorithm", scope: !4493, file: !2, line: 331, type: !353)
!4525 = !DILocalVariable(name: "secret", scope: !4493, file: !2, line: 332, type: !4518)
!4526 = !DILocalVariable(name: "now", scope: !4493, file: !2, line: 333, type: !1059)
!4527 = !DILocalVariable(name: "b", scope: !4493, file: !2, line: 334, type: !765)
!4528 = !DILocalVariable(name: "r", scope: !4493, file: !2, line: 335, type: !541)
!4529 = !DILocalVariable(name: "text", scope: !4493, file: !2, line: 336, type: !764)
!4530 = !DILocalVariable(name: "result", scope: !4493, file: !2, line: 337, type: !429)
!4531 = !DILocalVariable(name: "eresult", scope: !4493, file: !2, line: 338, type: !429)
!4532 = !DILocalVariable(name: "_ctrl", scope: !4493, file: !2, line: 339, type: !4501)
!4533 = !DILocalVariable(name: "sent", scope: !4493, file: !2, line: 340, type: !4534)
!4534 = !DIDerivedType(tag: DW_TAG_typedef, name: "isccc_time_t", file: !1670, line: 37, baseType: !353)
!4535 = !DILocalVariable(name: "exp", scope: !4493, file: !2, line: 341, type: !4534)
!4536 = !DILocalVariable(name: "nonce", scope: !4493, file: !2, line: 342, type: !353)
!4537 = !DILocalVariable(name: "data", scope: !4493, file: !2, line: 343, type: !4501)
!4538 = !DILocalVariable(name: "ccregion", scope: !4539, file: !2, line: 370, type: !4518)
!4539 = distinct !DILexicalBlock(scope: !4540, file: !2, line: 369, column: 2)
!4540 = distinct !DILexicalBlock(scope: !4541, file: !2, line: 366, column: 2)
!4541 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 366, column: 2)
!4542 = !DILocalVariable(name: "estr", scope: !4543, file: !2, line: 479, type: !603)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !2, line: 478, column: 21)
!4544 = distinct !DILexicalBlock(scope: !4545, file: !2, line: 478, column: 7)
!4545 = distinct !DILexicalBlock(scope: !4546, file: !2, line: 477, column: 32)
!4546 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 477, column: 6)
!4547 = !DILocalVariable(name: "str", scope: !4548, file: !2, line: 487, type: !512)
!4548 = distinct !DILexicalBlock(scope: !4549, file: !2, line: 486, column: 21)
!4549 = distinct !DILexicalBlock(scope: !4550, file: !2, line: 486, column: 7)
!4550 = distinct !DILexicalBlock(scope: !4551, file: !2, line: 485, column: 39)
!4551 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 485, column: 6)
!4552 = !DILocalVariable(name: "_cp", scope: !4553, file: !2, line: 514, type: !511)
!4553 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 514, column: 2)
!4554 = !DILocalVariable(name: "_val2", scope: !4553, file: !2, line: 514, type: !353)
!4555 = !DILocalVariable(name: "_tmp", scope: !4556, file: !2, line: 514, type: !764)
!4556 = distinct !DILexicalBlock(scope: !4557, file: !2, line: 514, column: 2)
!4557 = distinct !DILexicalBlock(scope: !4553, file: !2, line: 514, column: 2)
!4558 = !DILabel(scope: !4493, name: "cleanup_response", file: !2, line: 530)
!4559 = !DILabel(scope: !4493, name: "cleanup_request", file: !2, line: 533)
!4560 = !DILabel(scope: !4493, name: "cleanup", file: !2, line: 539)
!4561 = !DILocation(line: 325, column: 33, scope: !4493)
!4562 = !DILocation(line: 325, column: 52, scope: !4493)
!4563 = !DILocation(line: 326, column: 2, scope: !4493)
!4564 = !DILocation(line: 326, column: 23, scope: !4493)
!4565 = !DILocation(line: 327, column: 2, scope: !4493)
!4566 = !DILocation(line: 327, column: 21, scope: !4493)
!4567 = !DILocation(line: 328, column: 2, scope: !4493)
!4568 = !DILocation(line: 328, column: 16, scope: !4493)
!4569 = !DILocation(line: 329, column: 2, scope: !4493)
!4570 = !DILocation(line: 329, column: 17, scope: !4493)
!4571 = !DILocation(line: 330, column: 2, scope: !4493)
!4572 = !DILocation(line: 330, column: 17, scope: !4493)
!4573 = !DILocation(line: 331, column: 2, scope: !4493)
!4574 = !DILocation(line: 331, column: 11, scope: !4493)
!4575 = !DILocation(line: 332, column: 2, scope: !4493)
!4576 = !DILocation(line: 332, column: 17, scope: !4493)
!4577 = !DILocation(line: 333, column: 2, scope: !4493)
!4578 = !DILocation(line: 333, column: 16, scope: !4493)
!4579 = !DILocation(line: 334, column: 2, scope: !4493)
!4580 = !DILocation(line: 334, column: 15, scope: !4493)
!4581 = !DILocation(line: 335, column: 2, scope: !4493)
!4582 = !DILocation(line: 335, column: 15, scope: !4493)
!4583 = !DILocation(line: 336, column: 2, scope: !4493)
!4584 = !DILocation(line: 336, column: 16, scope: !4493)
!4585 = !DILocation(line: 337, column: 2, scope: !4493)
!4586 = !DILocation(line: 337, column: 15, scope: !4493)
!4587 = !DILocation(line: 338, column: 2, scope: !4493)
!4588 = !DILocation(line: 338, column: 15, scope: !4493)
!4589 = !DILocation(line: 339, column: 2, scope: !4493)
!4590 = !DILocation(line: 339, column: 17, scope: !4493)
!4591 = !DILocation(line: 340, column: 2, scope: !4493)
!4592 = !DILocation(line: 340, column: 15, scope: !4493)
!4593 = !DILocation(line: 341, column: 2, scope: !4493)
!4594 = !DILocation(line: 341, column: 15, scope: !4493)
!4595 = !DILocation(line: 342, column: 2, scope: !4493)
!4596 = !DILocation(line: 342, column: 11, scope: !4493)
!4597 = !DILocation(line: 343, column: 2, scope: !4493)
!4598 = !DILocation(line: 343, column: 17, scope: !4493)
!4599 = !DILocation(line: 345, column: 2, scope: !4493)
!4600 = !DILocation(line: 347, column: 9, scope: !4493)
!4601 = !DILocation(line: 347, column: 16, scope: !4493)
!4602 = !DILocation(line: 347, column: 7, scope: !4493)
!4603 = !DILocation(line: 348, column: 13, scope: !4493)
!4604 = !DILocation(line: 348, column: 19, scope: !4493)
!4605 = !DILocation(line: 348, column: 11, scope: !4493)
!4606 = !DILocation(line: 349, column: 12, scope: !4493)
!4607 = !DILocation(line: 350, column: 9, scope: !4493)
!4608 = !DILocation(line: 350, column: 16, scope: !4493)
!4609 = !DILocation(line: 351, column: 7, scope: !4493)
!4610 = !DILocation(line: 354, column: 6, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 354, column: 6)
!4612 = !DILocation(line: 354, column: 16, scope: !4611)
!4613 = !DILocation(line: 354, column: 26, scope: !4611)
!4614 = !DILocation(line: 354, column: 6, scope: !4493)
!4615 = !DILocation(line: 355, column: 3, scope: !4611)
!4616 = !DILocation(line: 357, column: 6, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 357, column: 6)
!4618 = !DILocation(line: 357, column: 12, scope: !4617)
!4619 = !DILocation(line: 357, column: 18, scope: !4617)
!4620 = !DILocation(line: 357, column: 25, scope: !4617)
!4621 = !DILocation(line: 357, column: 6, scope: !4493)
!4622 = !DILocation(line: 358, column: 7, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4624, file: !2, line: 358, column: 7)
!4624 = distinct !DILexicalBlock(scope: !4617, file: !2, line: 357, column: 43)
!4625 = !DILocation(line: 358, column: 13, scope: !4623)
!4626 = !DILocation(line: 358, column: 19, scope: !4623)
!4627 = !DILocation(line: 358, column: 26, scope: !4623)
!4628 = !DILocation(line: 358, column: 44, scope: !4623)
!4629 = !DILocation(line: 359, column: 7, scope: !4623)
!4630 = !DILocation(line: 359, column: 13, scope: !4623)
!4631 = !DILocation(line: 359, column: 19, scope: !4623)
!4632 = !DILocation(line: 359, column: 26, scope: !4623)
!4633 = !DILocation(line: 358, column: 7, scope: !4624)
!4634 = !DILocation(line: 360, column: 17, scope: !4623)
!4635 = !DILocation(line: 360, column: 23, scope: !4623)
!4636 = !DILocation(line: 360, column: 30, scope: !4623)
!4637 = !DILocation(line: 360, column: 36, scope: !4623)
!4638 = !DILocation(line: 360, column: 42, scope: !4623)
!4639 = !DILocation(line: 360, column: 4, scope: !4623)
!4640 = !DILocation(line: 361, column: 3, scope: !4624)
!4641 = !DILocation(line: 364, column: 10, scope: !4493)
!4642 = !DILocation(line: 366, column: 13, scope: !4541)
!4643 = !DILocation(line: 366, column: 11, scope: !4541)
!4644 = !DILocation(line: 366, column: 7, scope: !4541)
!4645 = !DILocation(line: 367, column: 7, scope: !4540)
!4646 = !DILocation(line: 367, column: 11, scope: !4540)
!4647 = !DILocation(line: 366, column: 2, scope: !4541)
!4648 = !DILocation(line: 370, column: 3, scope: !4539)
!4649 = !DILocation(line: 370, column: 18, scope: !4539)
!4650 = !DILocation(line: 372, column: 21, scope: !4539)
!4651 = !DILocation(line: 372, column: 12, scope: !4539)
!4652 = !DILocation(line: 372, column: 19, scope: !4539)
!4653 = !DILocation(line: 373, column: 19, scope: !4539)
!4654 = !DILocation(line: 373, column: 12, scope: !4539)
!4655 = !DILocation(line: 373, column: 17, scope: !4539)
!4656 = !DILocation(line: 374, column: 19, scope: !4539)
!4657 = !DILocation(line: 374, column: 10, scope: !4539)
!4658 = !DILocation(line: 374, column: 17, scope: !4539)
!4659 = !DILocation(line: 375, column: 14, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4539, file: !2, line: 375, column: 7)
!4661 = !DILocation(line: 375, column: 21, scope: !4660)
!4662 = !DILocation(line: 375, column: 7, scope: !4539)
!4663 = !DILocation(line: 376, column: 4, scope: !4660)
!4664 = !DILocation(line: 377, column: 18, scope: !4539)
!4665 = !DILocation(line: 377, column: 26, scope: !4539)
!4666 = !DILocation(line: 377, column: 31, scope: !4539)
!4667 = !DILocation(line: 377, column: 38, scope: !4539)
!4668 = !DILocation(line: 377, column: 44, scope: !4539)
!4669 = !DILocation(line: 377, column: 49, scope: !4539)
!4670 = !DILocation(line: 377, column: 56, scope: !4539)
!4671 = !DILocation(line: 377, column: 3, scope: !4539)
!4672 = !DILocation(line: 378, column: 24, scope: !4539)
!4673 = !DILocation(line: 378, column: 33, scope: !4539)
!4674 = !DILocation(line: 378, column: 38, scope: !4539)
!4675 = !DILocation(line: 378, column: 45, scope: !4539)
!4676 = !DILocation(line: 378, column: 31, scope: !4539)
!4677 = !DILocation(line: 378, column: 10, scope: !4539)
!4678 = !DILocation(line: 378, column: 15, scope: !4539)
!4679 = !DILocation(line: 379, column: 15, scope: !4539)
!4680 = !DILocation(line: 379, column: 20, scope: !4539)
!4681 = !DILocation(line: 379, column: 13, scope: !4539)
!4682 = !DILocation(line: 381, column: 9, scope: !4539)
!4683 = !DILocation(line: 380, column: 12, scope: !4539)
!4684 = !DILocation(line: 380, column: 10, scope: !4539)
!4685 = !DILocation(line: 382, column: 7, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4539, file: !2, line: 382, column: 7)
!4687 = !DILocation(line: 382, column: 14, scope: !4686)
!4688 = !DILocation(line: 382, column: 7, scope: !4539)
!4689 = !DILocation(line: 383, column: 4, scope: !4686)
!4690 = !DILocation(line: 384, column: 3, scope: !4539)
!4691 = !DILocation(line: 384, column: 3, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4539, file: !2, line: 384, column: 3)
!4693 = !DILocation(line: 385, column: 7, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4539, file: !2, line: 385, column: 7)
!4695 = !DILocation(line: 385, column: 14, scope: !4694)
!4696 = !DILocation(line: 385, column: 7, scope: !4539)
!4697 = !DILocation(line: 386, column: 17, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4694, file: !2, line: 385, column: 34)
!4699 = !DILocation(line: 386, column: 23, scope: !4698)
!4700 = !DILocation(line: 386, column: 30, scope: !4698)
!4701 = !DILocation(line: 386, column: 4, scope: !4698)
!4702 = !DILocation(line: 387, column: 4, scope: !4698)
!4703 = !DILocation(line: 389, column: 2, scope: !4540)
!4704 = !DILocation(line: 389, column: 2, scope: !4539)
!4705 = !DILocation(line: 368, column: 13, scope: !4540)
!4706 = !DILocation(line: 368, column: 11, scope: !4540)
!4707 = !DILocation(line: 366, column: 2, scope: !4540)
!4708 = distinct !{!4708, !4647, !4709, !1710}
!4709 = !DILocation(line: 389, column: 2, scope: !4541)
!4710 = !DILocation(line: 391, column: 6, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 391, column: 6)
!4712 = !DILocation(line: 391, column: 10, scope: !4711)
!4713 = !DILocation(line: 391, column: 6, scope: !4493)
!4714 = !DILocation(line: 392, column: 16, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4711, file: !2, line: 391, column: 19)
!4716 = !DILocation(line: 392, column: 22, scope: !4715)
!4717 = !DILocation(line: 392, column: 3, scope: !4715)
!4718 = !DILocation(line: 393, column: 3, scope: !4715)
!4719 = !DILocation(line: 397, column: 23, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 397, column: 6)
!4721 = !DILocation(line: 397, column: 6, scope: !4720)
!4722 = !DILocation(line: 397, column: 6, scope: !4493)
!4723 = !DILocation(line: 398, column: 16, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4720, file: !2, line: 397, column: 33)
!4725 = !DILocation(line: 398, column: 22, scope: !4724)
!4726 = !DILocation(line: 398, column: 3, scope: !4724)
!4727 = !DILocation(line: 399, column: 3, scope: !4724)
!4728 = !DILocation(line: 402, column: 2, scope: !4493)
!4729 = !DILocation(line: 407, column: 29, scope: !4493)
!4730 = !DILocation(line: 407, column: 10, scope: !4493)
!4731 = !DILocation(line: 407, column: 8, scope: !4493)
!4732 = !DILocation(line: 408, column: 26, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 408, column: 6)
!4734 = !DILocation(line: 408, column: 7, scope: !4733)
!4735 = !DILocation(line: 408, column: 6, scope: !4493)
!4736 = !DILocation(line: 409, column: 16, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4733, file: !2, line: 408, column: 34)
!4738 = !DILocation(line: 409, column: 22, scope: !4737)
!4739 = !DILocation(line: 409, column: 3, scope: !4737)
!4740 = !DILocation(line: 410, column: 3, scope: !4737)
!4741 = !DILocation(line: 413, column: 28, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 413, column: 6)
!4743 = !DILocation(line: 413, column: 6, scope: !4742)
!4744 = !DILocation(line: 413, column: 50, scope: !4742)
!4745 = !DILocation(line: 413, column: 6, scope: !4493)
!4746 = !DILocation(line: 414, column: 8, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4748, file: !2, line: 414, column: 7)
!4748 = distinct !DILexicalBlock(scope: !4742, file: !2, line: 413, column: 68)
!4749 = !DILocation(line: 414, column: 13, scope: !4747)
!4750 = !DILocation(line: 414, column: 28, scope: !4747)
!4751 = !DILocation(line: 414, column: 26, scope: !4747)
!4752 = !DILocation(line: 414, column: 32, scope: !4747)
!4753 = !DILocation(line: 414, column: 36, scope: !4747)
!4754 = !DILocation(line: 414, column: 41, scope: !4747)
!4755 = !DILocation(line: 414, column: 56, scope: !4747)
!4756 = !DILocation(line: 414, column: 54, scope: !4747)
!4757 = !DILocation(line: 414, column: 7, scope: !4748)
!4758 = !DILocation(line: 415, column: 17, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4747, file: !2, line: 414, column: 61)
!4760 = !DILocation(line: 415, column: 23, scope: !4759)
!4761 = !DILocation(line: 415, column: 4, scope: !4759)
!4762 = !DILocation(line: 416, column: 4, scope: !4759)
!4763 = !DILocation(line: 418, column: 2, scope: !4748)
!4764 = !DILocation(line: 419, column: 16, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4742, file: !2, line: 418, column: 9)
!4766 = !DILocation(line: 419, column: 22, scope: !4765)
!4767 = !DILocation(line: 419, column: 3, scope: !4765)
!4768 = !DILocation(line: 420, column: 3, scope: !4765)
!4769 = !DILocation(line: 426, column: 28, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 426, column: 6)
!4771 = !DILocation(line: 426, column: 6, scope: !4770)
!4772 = !DILocation(line: 426, column: 49, scope: !4770)
!4773 = !DILocation(line: 426, column: 66, scope: !4770)
!4774 = !DILocation(line: 427, column: 6, scope: !4770)
!4775 = !DILocation(line: 427, column: 12, scope: !4770)
!4776 = !DILocation(line: 427, column: 10, scope: !4770)
!4777 = !DILocation(line: 426, column: 6, scope: !4493)
!4778 = !DILocation(line: 428, column: 16, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4770, file: !2, line: 427, column: 17)
!4780 = !DILocation(line: 428, column: 22, scope: !4779)
!4781 = !DILocation(line: 428, column: 3, scope: !4779)
!4782 = !DILocation(line: 429, column: 3, scope: !4779)
!4783 = !DILocation(line: 435, column: 23, scope: !4493)
!4784 = !DILocation(line: 435, column: 33, scope: !4493)
!4785 = !DILocation(line: 435, column: 43, scope: !4493)
!4786 = !DILocation(line: 435, column: 51, scope: !4493)
!4787 = !DILocation(line: 435, column: 2, scope: !4493)
!4788 = !DILocation(line: 436, column: 29, scope: !4493)
!4789 = !DILocation(line: 436, column: 39, scope: !4493)
!4790 = !DILocation(line: 436, column: 49, scope: !4493)
!4791 = !DILocation(line: 436, column: 57, scope: !4493)
!4792 = !DILocation(line: 436, column: 66, scope: !4493)
!4793 = !DILocation(line: 436, column: 11, scope: !4493)
!4794 = !DILocation(line: 436, column: 9, scope: !4493)
!4795 = !DILocation(line: 437, column: 6, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 437, column: 6)
!4797 = !DILocation(line: 437, column: 13, scope: !4796)
!4798 = !DILocation(line: 437, column: 6, scope: !4493)
!4799 = !DILocation(line: 438, column: 7, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4801, file: !2, line: 438, column: 7)
!4801 = distinct !DILexicalBlock(scope: !4796, file: !2, line: 437, column: 31)
!4802 = !DILocation(line: 438, column: 14, scope: !4800)
!4803 = !DILocation(line: 438, column: 7, scope: !4801)
!4804 = !DILocation(line: 439, column: 11, scope: !4800)
!4805 = !DILocation(line: 439, column: 4, scope: !4800)
!4806 = !DILocation(line: 440, column: 16, scope: !4801)
!4807 = !DILocation(line: 440, column: 22, scope: !4801)
!4808 = !DILocation(line: 440, column: 29, scope: !4801)
!4809 = !DILocation(line: 440, column: 3, scope: !4801)
!4810 = !DILocation(line: 441, column: 3, scope: !4801)
!4811 = !DILocation(line: 444, column: 6, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 444, column: 6)
!4813 = !DILocation(line: 444, column: 12, scope: !4812)
!4814 = !DILocation(line: 444, column: 18, scope: !4812)
!4815 = !DILocation(line: 444, column: 23, scope: !4812)
!4816 = !DILocation(line: 445, column: 29, scope: !4812)
!4817 = !DILocation(line: 445, column: 7, scope: !4812)
!4818 = !DILocation(line: 445, column: 54, scope: !4812)
!4819 = !DILocation(line: 445, column: 71, scope: !4812)
!4820 = !DILocation(line: 446, column: 7, scope: !4812)
!4821 = !DILocation(line: 446, column: 13, scope: !4812)
!4822 = !DILocation(line: 446, column: 22, scope: !4812)
!4823 = !DILocation(line: 446, column: 19, scope: !4812)
!4824 = !DILocation(line: 444, column: 6, scope: !4493)
!4825 = !DILocation(line: 447, column: 16, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4812, file: !2, line: 446, column: 30)
!4827 = !DILocation(line: 447, column: 22, scope: !4826)
!4828 = !DILocation(line: 447, column: 3, scope: !4826)
!4829 = !DILocation(line: 448, column: 3, scope: !4826)
!4830 = !DILocation(line: 451, column: 31, scope: !4493)
!4831 = !DILocation(line: 451, column: 41, scope: !4493)
!4832 = !DILocation(line: 451, column: 11, scope: !4493)
!4833 = !DILocation(line: 451, column: 9, scope: !4493)
!4834 = !DILocation(line: 452, column: 6, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 452, column: 6)
!4836 = !DILocation(line: 452, column: 13, scope: !4835)
!4837 = !DILocation(line: 452, column: 6, scope: !4493)
!4838 = !DILocation(line: 453, column: 3, scope: !4835)
!4839 = !DILocation(line: 458, column: 6, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 458, column: 6)
!4841 = !DILocation(line: 458, column: 12, scope: !4840)
!4842 = !DILocation(line: 458, column: 18, scope: !4840)
!4843 = !DILocation(line: 458, column: 6, scope: !4493)
!4844 = !DILocation(line: 459, column: 3, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4840, file: !2, line: 458, column: 24)
!4846 = !DILocation(line: 459, column: 10, scope: !4845)
!4847 = !DILocation(line: 459, column: 16, scope: !4845)
!4848 = !DILocation(line: 459, column: 22, scope: !4845)
!4849 = !DILocation(line: 460, column: 19, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4845, file: !2, line: 459, column: 28)
!4851 = !DILocation(line: 460, column: 25, scope: !4850)
!4852 = !DILocation(line: 460, column: 4, scope: !4850)
!4853 = distinct !{!4853, !4844, !4854, !1710}
!4854 = !DILocation(line: 461, column: 3, scope: !4845)
!4855 = !DILocation(line: 462, column: 11, scope: !4845)
!4856 = !DILocation(line: 463, column: 2, scope: !4845)
!4857 = !DILocation(line: 464, column: 37, scope: !4840)
!4858 = !DILocation(line: 464, column: 46, scope: !4840)
!4859 = !DILocation(line: 464, column: 56, scope: !4840)
!4860 = !DILocation(line: 464, column: 13, scope: !4840)
!4861 = !DILocation(line: 464, column: 11, scope: !4840)
!4862 = !DILocation(line: 467, column: 35, scope: !4493)
!4863 = !DILocation(line: 467, column: 44, scope: !4493)
!4864 = !DILocation(line: 467, column: 49, scope: !4493)
!4865 = !DILocation(line: 467, column: 53, scope: !4493)
!4866 = !DILocation(line: 467, column: 11, scope: !4493)
!4867 = !DILocation(line: 467, column: 9, scope: !4493)
!4868 = !DILocation(line: 468, column: 6, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 468, column: 6)
!4870 = !DILocation(line: 468, column: 13, scope: !4869)
!4871 = !DILocation(line: 468, column: 6, scope: !4493)
!4872 = !DILocation(line: 469, column: 3, scope: !4869)
!4873 = !DILocation(line: 471, column: 28, scope: !4493)
!4874 = !DILocation(line: 471, column: 9, scope: !4493)
!4875 = !DILocation(line: 471, column: 7, scope: !4493)
!4876 = !DILocation(line: 472, column: 6, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 472, column: 6)
!4878 = !DILocation(line: 472, column: 11, scope: !4877)
!4879 = !DILocation(line: 472, column: 6, scope: !4493)
!4880 = !DILocation(line: 473, column: 29, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4882, file: !2, line: 473, column: 7)
!4882 = distinct !DILexicalBlock(scope: !4877, file: !2, line: 472, column: 20)
!4883 = !DILocation(line: 473, column: 45, scope: !4881)
!4884 = !DILocation(line: 473, column: 7, scope: !4881)
!4885 = !DILocation(line: 473, column: 54, scope: !4881)
!4886 = !DILocation(line: 473, column: 7, scope: !4882)
!4887 = !DILocation(line: 474, column: 4, scope: !4881)
!4888 = !DILocation(line: 475, column: 2, scope: !4882)
!4889 = !DILocation(line: 477, column: 6, scope: !4546)
!4890 = !DILocation(line: 477, column: 14, scope: !4546)
!4891 = !DILocation(line: 477, column: 6, scope: !4493)
!4892 = !DILocation(line: 478, column: 7, scope: !4544)
!4893 = !DILocation(line: 478, column: 12, scope: !4544)
!4894 = !DILocation(line: 478, column: 7, scope: !4545)
!4895 = !DILocation(line: 479, column: 4, scope: !4543)
!4896 = !DILocation(line: 479, column: 16, scope: !4543)
!4897 = !DILocation(line: 479, column: 41, scope: !4543)
!4898 = !DILocation(line: 479, column: 23, scope: !4543)
!4899 = !DILocation(line: 480, column: 30, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4543, file: !2, line: 480, column: 8)
!4901 = !DILocation(line: 480, column: 43, scope: !4900)
!4902 = !DILocation(line: 480, column: 8, scope: !4900)
!4903 = !DILocation(line: 480, column: 49, scope: !4900)
!4904 = !DILocation(line: 480, column: 8, scope: !4543)
!4905 = !DILocation(line: 481, column: 5, scope: !4900)
!4906 = !DILocation(line: 482, column: 3, scope: !4544)
!4907 = !DILocation(line: 482, column: 3, scope: !4543)
!4908 = !DILocation(line: 483, column: 2, scope: !4545)
!4909 = !DILocation(line: 485, column: 6, scope: !4551)
!4910 = !DILocation(line: 485, column: 34, scope: !4551)
!4911 = !DILocation(line: 485, column: 6, scope: !4493)
!4912 = !DILocation(line: 486, column: 7, scope: !4549)
!4913 = !DILocation(line: 486, column: 12, scope: !4549)
!4914 = !DILocation(line: 486, column: 7, scope: !4550)
!4915 = !DILocation(line: 487, column: 4, scope: !4548)
!4916 = !DILocation(line: 487, column: 10, scope: !4548)
!4917 = !DILocation(line: 487, column: 24, scope: !4548)
!4918 = !DILocation(line: 488, column: 30, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4548, file: !2, line: 488, column: 8)
!4920 = !DILocation(line: 488, column: 44, scope: !4919)
!4921 = !DILocation(line: 488, column: 8, scope: !4919)
!4922 = !DILocation(line: 488, column: 49, scope: !4919)
!4923 = !DILocation(line: 488, column: 8, scope: !4548)
!4924 = !DILocation(line: 489, column: 5, scope: !4919)
!4925 = !DILocation(line: 490, column: 3, scope: !4549)
!4926 = !DILocation(line: 490, column: 3, scope: !4548)
!4927 = !DILocation(line: 491, column: 2, scope: !4550)
!4928 = !DILocation(line: 493, column: 29, scope: !4493)
!4929 = !DILocation(line: 493, column: 10, scope: !4493)
!4930 = !DILocation(line: 493, column: 8, scope: !4493)
!4931 = !DILocation(line: 494, column: 6, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 494, column: 6)
!4933 = !DILocation(line: 494, column: 12, scope: !4932)
!4934 = !DILocation(line: 494, column: 20, scope: !4932)
!4935 = !DILocation(line: 495, column: 28, scope: !4932)
!4936 = !DILocation(line: 495, column: 45, scope: !4932)
!4937 = !DILocation(line: 495, column: 51, scope: !4932)
!4938 = !DILocation(line: 495, column: 6, scope: !4932)
!4939 = !DILocation(line: 495, column: 58, scope: !4932)
!4940 = !DILocation(line: 494, column: 6, scope: !4493)
!4941 = !DILocation(line: 496, column: 3, scope: !4932)
!4942 = !DILocation(line: 498, column: 6, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 498, column: 6)
!4944 = !DILocation(line: 498, column: 12, scope: !4943)
!4945 = !DILocation(line: 498, column: 19, scope: !4943)
!4946 = !DILocation(line: 498, column: 6, scope: !4493)
!4947 = !DILocation(line: 499, column: 32, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4943, file: !2, line: 498, column: 28)
!4949 = !DILocation(line: 499, column: 42, scope: !4948)
!4950 = !DILocation(line: 500, column: 12, scope: !4948)
!4951 = !DILocation(line: 500, column: 18, scope: !4948)
!4952 = !DILocation(line: 499, column: 12, scope: !4948)
!4953 = !DILocation(line: 499, column: 10, scope: !4948)
!4954 = !DILocation(line: 501, column: 7, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4948, file: !2, line: 501, column: 7)
!4956 = !DILocation(line: 501, column: 14, scope: !4955)
!4957 = !DILocation(line: 501, column: 7, scope: !4948)
!4958 = !DILocation(line: 502, column: 4, scope: !4955)
!4959 = !DILocation(line: 503, column: 2, scope: !4948)
!4960 = !DILocation(line: 505, column: 2, scope: !4493)
!4961 = !DILocation(line: 505, column: 2, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 505, column: 2)
!4963 = !DILocation(line: 507, column: 2, scope: !4493)
!4964 = !DILocation(line: 507, column: 2, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 507, column: 2)
!4966 = !DILocation(line: 509, column: 27, scope: !4493)
!4967 = !DILocation(line: 509, column: 38, scope: !4493)
!4968 = !DILocation(line: 509, column: 44, scope: !4493)
!4969 = !DILocation(line: 509, column: 52, scope: !4493)
!4970 = !DILocation(line: 509, column: 11, scope: !4493)
!4971 = !DILocation(line: 509, column: 9, scope: !4493)
!4972 = !DILocation(line: 510, column: 6, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 510, column: 6)
!4974 = !DILocation(line: 510, column: 13, scope: !4973)
!4975 = !DILocation(line: 510, column: 6, scope: !4493)
!4976 = !DILocation(line: 511, column: 3, scope: !4973)
!4977 = !DILocation(line: 513, column: 2, scope: !4493)
!4978 = !DILocation(line: 513, column: 2, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 513, column: 2)
!4980 = !DILocation(line: 513, column: 2, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4979, file: !2, line: 513, column: 2)
!4982 = !DILocation(line: 514, column: 2, scope: !4493)
!4983 = !DILocation(line: 514, column: 2, scope: !4553)
!4984 = !DILocation(line: 514, column: 2, scope: !4557)
!4985 = !DILocation(line: 514, column: 2, scope: !4556)
!4986 = !DILocation(line: 516, column: 11, scope: !4493)
!4987 = !DILocation(line: 516, column: 17, scope: !4493)
!4988 = !DILocation(line: 516, column: 25, scope: !4493)
!4989 = !DILocation(line: 516, column: 4, scope: !4493)
!4990 = !DILocation(line: 516, column: 9, scope: !4493)
!4991 = !DILocation(line: 517, column: 13, scope: !4493)
!4992 = !DILocation(line: 517, column: 19, scope: !4493)
!4993 = !DILocation(line: 517, column: 27, scope: !4493)
!4994 = !DILocation(line: 517, column: 4, scope: !4493)
!4995 = !DILocation(line: 517, column: 11, scope: !4493)
!4996 = !DILocation(line: 519, column: 27, scope: !4493)
!4997 = !DILocation(line: 519, column: 33, scope: !4493)
!4998 = !DILocation(line: 519, column: 43, scope: !4493)
!4999 = !DILocation(line: 519, column: 67, scope: !4493)
!5000 = !DILocation(line: 519, column: 11, scope: !4493)
!5001 = !DILocation(line: 519, column: 9, scope: !4493)
!5002 = !DILocation(line: 520, column: 6, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 520, column: 6)
!5004 = !DILocation(line: 520, column: 13, scope: !5003)
!5005 = !DILocation(line: 520, column: 6, scope: !4493)
!5006 = !DILocation(line: 521, column: 3, scope: !5003)
!5007 = !DILocation(line: 522, column: 2, scope: !4493)
!5008 = !DILocation(line: 522, column: 8, scope: !4493)
!5009 = !DILocation(line: 522, column: 16, scope: !4493)
!5010 = !DILocation(line: 524, column: 2, scope: !4493)
!5011 = !DILocation(line: 524, column: 2, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 524, column: 2)
!5013 = !DILocation(line: 525, column: 2, scope: !4493)
!5014 = !DILocation(line: 526, column: 2, scope: !4493)
!5015 = !DILocation(line: 527, column: 2, scope: !4493)
!5016 = !DILocation(line: 528, column: 2, scope: !4493)
!5017 = !DILocation(line: 530, column: 2, scope: !4493)
!5018 = !DILocation(line: 531, column: 2, scope: !4493)
!5019 = !DILocation(line: 533, column: 2, scope: !4493)
!5020 = !DILocation(line: 534, column: 2, scope: !4493)
!5021 = !DILocation(line: 535, column: 2, scope: !4493)
!5022 = !DILocation(line: 535, column: 2, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 535, column: 2)
!5024 = !DILocation(line: 536, column: 6, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 536, column: 6)
!5026 = !DILocation(line: 536, column: 11, scope: !5025)
!5027 = !DILocation(line: 536, column: 6, scope: !4493)
!5028 = !DILocation(line: 537, column: 3, scope: !5025)
!5029 = !DILocation(line: 536, column: 14, scope: !5025)
!5030 = !DILocation(line: 539, column: 2, scope: !4493)
!5031 = !DILocation(line: 540, column: 21, scope: !4493)
!5032 = !DILocation(line: 540, column: 27, scope: !4493)
!5033 = !DILocation(line: 540, column: 2, scope: !4493)
!5034 = !DILocation(line: 541, column: 26, scope: !4493)
!5035 = !DILocation(line: 541, column: 32, scope: !4493)
!5036 = !DILocation(line: 541, column: 2, scope: !4493)
!5037 = !DILocation(line: 542, column: 2, scope: !4493)
!5038 = !DILocation(line: 542, column: 8, scope: !4493)
!5039 = !DILocation(line: 542, column: 20, scope: !4493)
!5040 = !DILocation(line: 543, column: 24, scope: !4493)
!5041 = !DILocation(line: 543, column: 2, scope: !4493)
!5042 = !DILocation(line: 544, column: 22, scope: !4493)
!5043 = !DILocation(line: 544, column: 2, scope: !4493)
!5044 = !DILocation(line: 545, column: 1, scope: !4493)
!5045 = !DISubprogram(name: "isccc_ccmsg_invalidate", scope: !1627, file: !1627, line: 127, type: !3203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5046 = distinct !DISubprogram(name: "log_invalid", scope: !2, file: !2, line: 312, type: !5047, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !5049)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{null, !3205, !429}
!5049 = !{!5050, !5051, !5052, !5053}
!5050 = !DILocalVariable(name: "ccmsg", arg: 1, scope: !5046, file: !2, line: 312, type: !3205)
!5051 = !DILocalVariable(name: "result", arg: 2, scope: !5046, file: !2, line: 312, type: !429)
!5052 = !DILocalVariable(name: "socktext", scope: !5046, file: !2, line: 313, type: !1746)
!5053 = !DILocalVariable(name: "peeraddr", scope: !5046, file: !2, line: 314, type: !431)
!5054 = !DILocation(line: 312, column: 28, scope: !5046)
!5055 = !DILocation(line: 312, column: 48, scope: !5046)
!5056 = !DILocation(line: 313, column: 2, scope: !5046)
!5057 = !DILocation(line: 313, column: 7, scope: !5046)
!5058 = !DILocation(line: 314, column: 2, scope: !5046)
!5059 = !DILocation(line: 314, column: 17, scope: !5046)
!5060 = !DILocation(line: 316, column: 31, scope: !5046)
!5061 = !DILocation(line: 316, column: 38, scope: !5046)
!5062 = !DILocation(line: 316, column: 8, scope: !5046)
!5063 = !DILocation(line: 317, column: 33, scope: !5046)
!5064 = !DILocation(line: 317, column: 2, scope: !5046)
!5065 = !DILocation(line: 318, column: 16, scope: !5046)
!5066 = !DILocation(line: 319, column: 9, scope: !5046)
!5067 = !DILocation(line: 321, column: 9, scope: !5046)
!5068 = !DILocation(line: 321, column: 37, scope: !5046)
!5069 = !DILocation(line: 321, column: 19, scope: !5046)
!5070 = !DILocation(line: 318, column: 2, scope: !5046)
!5071 = !DILocation(line: 322, column: 1, scope: !5046)
!5072 = !DISubprogram(name: "isccc_cc_fromwire", scope: !2991, file: !2991, line: 70, type: !5073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!429, !5075, !5076, !353, !5075}
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!5077 = !DISubprogram(name: "isccc_cc_isreply", scope: !2991, file: !2991, line: 90, type: !5078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!663, !4501}
!5080 = !DISubprogram(name: "isc_stdtime_get", scope: !1060, file: !1060, line: 31, type: !5081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{null, !5083}
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!5084 = !DISubprogram(name: "isccc_alist_lookup", scope: !5085, file: !5085, line: 68, type: !5086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5085 = !DIFile(filename: "lib/isccc/include/isccc/alist.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "b52fd21ab606562240707e86e6530b47")
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!4501, !4501, !603}
!5088 = !DISubprogram(name: "isccc_alist_alistp", scope: !5085, file: !5085, line: 44, type: !5078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5089 = !DISubprogram(name: "isccc_cc_lookupuint32", scope: !2991, file: !2991, line: 111, type: !5090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!429, !4501, !603, !5092}
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!5093 = !DISubprogram(name: "isccc_cc_cleansymtab", scope: !2991, file: !2991, line: 120, type: !5094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{null, !1668, !4534}
!5096 = !DISubprogram(name: "isccc_cc_checkdup", scope: !2991, file: !2991, line: 124, type: !5097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{!429, !1668, !4501, !4534}
!5099 = !DISubprogram(name: "isc_buffer_allocate", scope: !767, file: !767, line: 196, type: !5100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!429, !587, !3197, !279}
!5102 = !DISubprogram(name: "isc_nonce_buf", scope: !5103, file: !5103, line: 25, type: !5104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5103 = !DIFile(filename: "lib/isc/include/isc/nonce.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "3f859da876c965ff2f5caac7222b9137")
!5104 = !DISubroutineType(types: !5105)
!5105 = !{null, !350, !362}
!5106 = !DISubprogram(name: "named_control_docommand", scope: !5107, file: !5107, line: 106, type: !5108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5107 = !DIFile(filename: "./include/named/control.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/named", checksumkind: CSK_MD5, checksum: "d2704aa278d37deb97e57894bd9a94a0")
!5108 = !DISubroutineType(types: !5109)
!5109 = !{!429, !4501, !663, !3197}
!5110 = !DISubprogram(name: "isccc_cc_createresponse", scope: !2991, file: !2991, line: 94, type: !5111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!429, !4501, !4534, !4534, !5076}
!5113 = !DISubprogram(name: "isccc_cc_defineuint32", scope: !2991, file: !2991, line: 103, type: !5114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!4501, !4501, !603, !353}
!5116 = !DISubprogram(name: "isccc_cc_definestring", scope: !2991, file: !2991, line: 99, type: !5117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5117 = !DISubroutineType(types: !5118)
!5118 = !{!4501, !4501, !603, !603}
!5119 = !DISubprogram(name: "isccc_cc_towire", scope: !2991, file: !2991, line: 65, type: !5120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!429, !4501, !3197, !353, !5075}
!5122 = !DISubprogram(name: "isc_buffer_reserve", scope: !767, file: !767, line: 216, type: !5123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5123 = !DISubroutineType(types: !5124)
!5124 = !{!429, !3197, !279}
!5125 = !DISubprogram(name: "isc_socket_send", scope: !314, file: !314, line: 726, type: !5126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{!429, !422, !5128, !375, !371, !350}
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!5129 = distinct !DISubprogram(name: "control_senddone", scope: !2, file: !2, line: 274, type: !373, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !5130)
!5130 = !{!5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5141}
!5131 = !DILocalVariable(name: "task", arg: 1, scope: !5129, file: !2, line: 274, type: !375)
!5132 = !DILocalVariable(name: "event", arg: 2, scope: !5129, file: !2, line: 274, type: !378)
!5133 = !DILocalVariable(name: "sevent", scope: !5129, file: !2, line: 275, type: !513)
!5134 = !DILocalVariable(name: "conn", scope: !5129, file: !2, line: 276, type: !1620)
!5135 = !DILocalVariable(name: "listener", scope: !5129, file: !2, line: 277, type: !1585)
!5136 = !DILocalVariable(name: "sock", scope: !5129, file: !2, line: 278, type: !422)
!5137 = !DILocalVariable(name: "result", scope: !5129, file: !2, line: 279, type: !429)
!5138 = !DILocalVariable(name: "socktext", scope: !5139, file: !2, line: 290, type: !1746)
!5139 = distinct !DILexicalBlock(scope: !5140, file: !2, line: 289, column: 2)
!5140 = distinct !DILexicalBlock(scope: !5129, file: !2, line: 287, column: 6)
!5141 = !DILocalVariable(name: "peeraddr", scope: !5139, file: !2, line: 291, type: !431)
!5142 = !DILocation(line: 274, column: 30, scope: !5129)
!5143 = !DILocation(line: 274, column: 49, scope: !5129)
!5144 = !DILocation(line: 275, column: 2, scope: !5129)
!5145 = !DILocation(line: 275, column: 21, scope: !5129)
!5146 = !DILocation(line: 275, column: 52, scope: !5129)
!5147 = !DILocation(line: 276, column: 2, scope: !5129)
!5148 = !DILocation(line: 276, column: 23, scope: !5129)
!5149 = !DILocation(line: 276, column: 30, scope: !5129)
!5150 = !DILocation(line: 276, column: 37, scope: !5129)
!5151 = !DILocation(line: 277, column: 2, scope: !5129)
!5152 = !DILocation(line: 277, column: 21, scope: !5129)
!5153 = !DILocation(line: 277, column: 32, scope: !5129)
!5154 = !DILocation(line: 277, column: 38, scope: !5129)
!5155 = !DILocation(line: 278, column: 2, scope: !5129)
!5156 = !DILocation(line: 278, column: 16, scope: !5129)
!5157 = !DILocation(line: 278, column: 39, scope: !5129)
!5158 = !DILocation(line: 278, column: 47, scope: !5129)
!5159 = !DILocation(line: 279, column: 2, scope: !5129)
!5160 = !DILocation(line: 279, column: 15, scope: !5129)
!5161 = !DILocation(line: 281, column: 2, scope: !5129)
!5162 = !DILocation(line: 283, column: 2, scope: !5129)
!5163 = !DILocation(line: 285, column: 2, scope: !5129)
!5164 = !DILocation(line: 285, column: 8, scope: !5129)
!5165 = !DILocation(line: 285, column: 16, scope: !5129)
!5166 = !DILocation(line: 287, column: 6, scope: !5140)
!5167 = !DILocation(line: 287, column: 14, scope: !5140)
!5168 = !DILocation(line: 287, column: 21, scope: !5140)
!5169 = !DILocation(line: 287, column: 38, scope: !5140)
!5170 = !DILocation(line: 288, column: 6, scope: !5140)
!5171 = !DILocation(line: 288, column: 14, scope: !5140)
!5172 = !DILocation(line: 288, column: 21, scope: !5140)
!5173 = !DILocation(line: 287, column: 6, scope: !5129)
!5174 = !DILocation(line: 290, column: 3, scope: !5139)
!5175 = !DILocation(line: 290, column: 8, scope: !5139)
!5176 = !DILocation(line: 291, column: 3, scope: !5139)
!5177 = !DILocation(line: 291, column: 18, scope: !5139)
!5178 = !DILocation(line: 293, column: 32, scope: !5139)
!5179 = !DILocation(line: 293, column: 9, scope: !5139)
!5180 = !DILocation(line: 294, column: 34, scope: !5139)
!5181 = !DILocation(line: 294, column: 3, scope: !5139)
!5182 = !DILocation(line: 295, column: 17, scope: !5139)
!5183 = !DILocation(line: 296, column: 10, scope: !5139)
!5184 = !DILocation(line: 298, column: 10, scope: !5139)
!5185 = !DILocation(line: 298, column: 38, scope: !5139)
!5186 = !DILocation(line: 298, column: 46, scope: !5139)
!5187 = !DILocation(line: 298, column: 20, scope: !5139)
!5188 = !DILocation(line: 295, column: 3, scope: !5139)
!5189 = !DILocation(line: 299, column: 2, scope: !5140)
!5190 = !DILocation(line: 299, column: 2, scope: !5139)
!5191 = !DILocation(line: 300, column: 2, scope: !5129)
!5192 = !DILocation(line: 302, column: 36, scope: !5129)
!5193 = !DILocation(line: 302, column: 42, scope: !5129)
!5194 = !DILocation(line: 302, column: 49, scope: !5129)
!5195 = !DILocation(line: 302, column: 59, scope: !5129)
!5196 = !DILocation(line: 303, column: 28, scope: !5129)
!5197 = !DILocation(line: 302, column: 11, scope: !5129)
!5198 = !DILocation(line: 302, column: 9, scope: !5129)
!5199 = !DILocation(line: 304, column: 6, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5129, file: !2, line: 304, column: 6)
!5201 = !DILocation(line: 304, column: 13, scope: !5200)
!5202 = !DILocation(line: 304, column: 6, scope: !5129)
!5203 = !DILocation(line: 305, column: 22, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5200, file: !2, line: 304, column: 31)
!5205 = !DILocation(line: 305, column: 28, scope: !5204)
!5206 = !DILocation(line: 305, column: 3, scope: !5204)
!5207 = !DILocation(line: 306, column: 25, scope: !5204)
!5208 = !DILocation(line: 306, column: 3, scope: !5204)
!5209 = !DILocation(line: 307, column: 23, scope: !5204)
!5210 = !DILocation(line: 307, column: 3, scope: !5204)
!5211 = !DILocation(line: 308, column: 2, scope: !5204)
!5212 = !DILocation(line: 309, column: 1, scope: !5129)
!5213 = !DISubprogram(name: "isccc_sexpr_free", scope: !4504, file: !4504, line: 78, type: !5214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5214 = !DISubroutineType(types: !5215)
!5215 = !{null, !5076}

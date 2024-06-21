; ModuleID = 'samples/414.bc'
source_filename = "http_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr }
%struct.module_struct = type { i32, i32, i32, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ap_LINK_insert_error_filter_t = type { ptr, ptr, ptr, ptr, i32 }
%struct.apr_array_header_t = type { ptr, i32, i32, i32, ptr }
%struct.request_rec = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i64, ptr, i32, i32, ptr, i64, ptr, ptr, i64, i64, i64, ptr, i64, i32, i32, i32, i32, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.apr_uri_t, %struct.apr_finfo_t, ptr, ptr, ptr, ptr, ptr, i32, i64 }
%struct.apr_uri_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.apr_finfo_t = type { ptr, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.server_rec = type { ptr, ptr, ptr, ptr, %struct.ap_logconf, ptr, ptr, ptr, i32, i8, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8 }
%struct.ap_logconf = type { ptr, i32 }
%struct.conn_rec = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.ap_method_list_t = type { i64, ptr }
%struct.core_server_config = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8, i32, i64, i32, i32 }
%struct.core_dir_config = type { ptr, i32, i8, i8, i8, i32, i8, ptr, i16, ptr, ptr, ptr, ptr, i64, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i64, i16, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i8, ptr, ptr, i64 }
%struct.core_request_config = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@_hooks = internal global %struct.anon zeroinitializer, align 8, !dbg !0
@apr_hook_global_pool = external global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"insert_error_filter\00", align 1, !dbg !629
@apr_hook_debug_current = external global ptr, align 8
@apr_hook_debug_enabled = external global i32, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1, !dbg !634
@.str.2 = private unnamed_addr constant [6 x i8] c"close\00", align 1, !dbg !639
@.str.3 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1, !dbg !644
@.str.4 = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1, !dbg !649
@.str.5 = private unnamed_addr constant [12 x i8] c"nokeepalive\00", align 1, !dbg !654
@.str.6 = private unnamed_addr constant [4 x i8] c"Via\00", align 1, !dbg !659
@.str.7 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1, !dbg !662
@.str.8 = private unnamed_addr constant [11 x i8] c"Keep-Alive\00", align 1, !dbg !664
@.str.9 = private unnamed_addr constant [19 x i8] c"timeout=%d, max=%d\00", align 1, !dbg !666
@.str.10 = private unnamed_addr constant [11 x i8] c"timeout=%d\00", align 1, !dbg !671
@.str.11 = private unnamed_addr constant [9 x i8] c"If-Match\00", align 1, !dbg !673
@.str.12 = private unnamed_addr constant [5 x i8] c"ETag\00", align 1, !dbg !678
@.str.13 = private unnamed_addr constant [20 x i8] c"If-Unmodified-Since\00", align 1, !dbg !683
@.str.14 = private unnamed_addr constant [14 x i8] c"Last-Modified\00", align 1, !dbg !685
@.str.15 = private unnamed_addr constant [5 x i8] c"Date\00", align 1, !dbg !690
@.str.16 = private unnamed_addr constant [6 x i8] c"Range\00", align 1, !dbg !692
@.str.17 = private unnamed_addr constant [14 x i8] c"If-None-Match\00", align 1, !dbg !694
@.str.18 = private unnamed_addr constant [18 x i8] c"If-Modified-Since\00", align 1, !dbg !696
@.str.19 = private unnamed_addr constant [9 x i8] c"If-Range\00", align 1, !dbg !698
@methods_registry = internal global ptr null, align 8, !dbg !834
@.str.20 = private unnamed_addr constant [4 x i8] c"GET\00", align 1, !dbg !700
@.str.21 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1, !dbg !702
@.str.22 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1, !dbg !704
@.str.23 = private unnamed_addr constant [5 x i8] c"POST\00", align 1, !dbg !706
@.str.24 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1, !dbg !708
@.str.25 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1, !dbg !713
@.str.26 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1, !dbg !716
@.str.27 = private unnamed_addr constant [6 x i8] c"TRACE\00", align 1, !dbg !718
@.str.28 = private unnamed_addr constant [6 x i8] c"PATCH\00", align 1, !dbg !720
@.str.29 = private unnamed_addr constant [9 x i8] c"PROPFIND\00", align 1, !dbg !722
@.str.30 = private unnamed_addr constant [10 x i8] c"PROPPATCH\00", align 1, !dbg !724
@.str.31 = private unnamed_addr constant [6 x i8] c"MKCOL\00", align 1, !dbg !729
@.str.32 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1, !dbg !731
@.str.33 = private unnamed_addr constant [5 x i8] c"MOVE\00", align 1, !dbg !733
@.str.34 = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1, !dbg !735
@.str.35 = private unnamed_addr constant [7 x i8] c"UNLOCK\00", align 1, !dbg !737
@.str.36 = private unnamed_addr constant [16 x i8] c"VERSION-CONTROL\00", align 1, !dbg !739
@.str.37 = private unnamed_addr constant [9 x i8] c"CHECKOUT\00", align 1, !dbg !742
@.str.38 = private unnamed_addr constant [11 x i8] c"UNCHECKOUT\00", align 1, !dbg !744
@.str.39 = private unnamed_addr constant [8 x i8] c"CHECKIN\00", align 1, !dbg !746
@.str.40 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1, !dbg !748
@.str.41 = private unnamed_addr constant [6 x i8] c"LABEL\00", align 1, !dbg !750
@.str.42 = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1, !dbg !752
@.str.43 = private unnamed_addr constant [12 x i8] c"MKWORKSPACE\00", align 1, !dbg !754
@.str.44 = private unnamed_addr constant [11 x i8] c"MKACTIVITY\00", align 1, !dbg !756
@.str.45 = private unnamed_addr constant [17 x i8] c"BASELINE-CONTROL\00", align 1, !dbg !758
@.str.46 = private unnamed_addr constant [6 x i8] c"MERGE\00", align 1, !dbg !763
@cur_method_number = internal global i32 27, align 4, !dbg !840
@.str.47 = private unnamed_addr constant [16 x i8] c"http_protocol.c\00", align 1, !dbg !765
@http_module = external global %struct.module_struct, align 8
@.str.48 = private unnamed_addr constant [77 x i8] c"AH01610: Maximum new request methods %d reached while registering method %s.\00", align 1, !dbg !770
@status_lines = internal constant [103 x ptr] [ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr null, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr null, ptr null, ptr null, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr null, ptr @.str.111, ptr null, ptr @.str.112, ptr @.str.113, ptr null, ptr @.str.114, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr null, ptr @.str.125, ptr @.str.126], align 16, !dbg !1000
@.str.49 = private unnamed_addr constant [13 x i8] c"%i Status %i\00", align 1, !dbg !775
@.str.50 = private unnamed_addr constant [6 x i8] c"Allow\00", align 1, !dbg !780
@.str.51 = private unnamed_addr constant [14 x i8] c"Accept-Ranges\00", align 1, !dbg !782
@.str.52 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !784
@.str.53 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1, !dbg !786
@.str.54 = private unnamed_addr constant [9 x i8] c"Location\00", align 1, !dbg !788
@.str.55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !790
@.str.56 = private unnamed_addr constant [23 x i8] c"suppress-error-charset\00", align 1, !dbg !795
@.str.57 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1, !dbg !800
@.str.58 = private unnamed_addr constant [30 x i8] c"text/html; charset=iso-8859-1\00", align 1, !dbg !802
@.str.59 = private unnamed_addr constant [16 x i8] c" Unknown Reason\00", align 1, !dbg !807
@.str.60 = private unnamed_addr constant [15 x i8] c"Unknown Reason\00", align 1, !dbg !809
@.str.61 = private unnamed_addr constant [72 x i8] c"<!DOCTYPE HTML PUBLIC \22-//IETF//DTD HTML 2.0//EN\22>\0A<html><head>\0A<title>\00", align 1, !dbg !811
@.str.62 = private unnamed_addr constant [28 x i8] c"</title>\0A</head><body>\0A<h1>\00", align 1, !dbg !816
@.str.63 = private unnamed_addr constant [7 x i8] c"</h1>\0A\00", align 1, !dbg !821
@.str.64 = private unnamed_addr constant [20 x i8] c"<p>Additionally, a \00", align 1, !dbg !823
@.str.65 = private unnamed_addr constant [88 x i8] c"\0Aerror was encountered while trying to use an ErrorDocument to handle the request.</p>\0A\00", align 1, !dbg !825
@.str.66 = private unnamed_addr constant [6 x i8] c"<hr>\0A\00", align 1, !dbg !830
@.str.67 = private unnamed_addr constant [16 x i8] c"</body></html>\0A\00", align 1, !dbg !832
@index_of_response.shortcut = internal global [6 x i32] [i32 0, i32 3, i32 30, i32 39, i32 91, i32 103], align 16, !dbg !842
@.str.68 = private unnamed_addr constant [13 x i8] c"100 Continue\00", align 1, !dbg !852
@.str.69 = private unnamed_addr constant [24 x i8] c"101 Switching Protocols\00", align 1, !dbg !854
@.str.70 = private unnamed_addr constant [15 x i8] c"102 Processing\00", align 1, !dbg !859
@.str.71 = private unnamed_addr constant [7 x i8] c"200 OK\00", align 1, !dbg !861
@.str.72 = private unnamed_addr constant [12 x i8] c"201 Created\00", align 1, !dbg !863
@.str.73 = private unnamed_addr constant [13 x i8] c"202 Accepted\00", align 1, !dbg !865
@.str.74 = private unnamed_addr constant [34 x i8] c"203 Non-Authoritative Information\00", align 1, !dbg !867
@.str.75 = private unnamed_addr constant [15 x i8] c"204 No Content\00", align 1, !dbg !872
@.str.76 = private unnamed_addr constant [18 x i8] c"205 Reset Content\00", align 1, !dbg !874
@.str.77 = private unnamed_addr constant [20 x i8] c"206 Partial Content\00", align 1, !dbg !876
@.str.78 = private unnamed_addr constant [17 x i8] c"207 Multi-Status\00", align 1, !dbg !878
@.str.79 = private unnamed_addr constant [21 x i8] c"208 Already Reported\00", align 1, !dbg !880
@.str.80 = private unnamed_addr constant [12 x i8] c"226 IM Used\00", align 1, !dbg !885
@.str.81 = private unnamed_addr constant [21 x i8] c"300 Multiple Choices\00", align 1, !dbg !887
@.str.82 = private unnamed_addr constant [22 x i8] c"301 Moved Permanently\00", align 1, !dbg !889
@.str.83 = private unnamed_addr constant [10 x i8] c"302 Found\00", align 1, !dbg !894
@.str.84 = private unnamed_addr constant [14 x i8] c"303 See Other\00", align 1, !dbg !896
@.str.85 = private unnamed_addr constant [17 x i8] c"304 Not Modified\00", align 1, !dbg !898
@.str.86 = private unnamed_addr constant [14 x i8] c"305 Use Proxy\00", align 1, !dbg !900
@.str.87 = private unnamed_addr constant [23 x i8] c"307 Temporary Redirect\00", align 1, !dbg !902
@.str.88 = private unnamed_addr constant [23 x i8] c"308 Permanent Redirect\00", align 1, !dbg !904
@.str.89 = private unnamed_addr constant [16 x i8] c"400 Bad Request\00", align 1, !dbg !906
@.str.90 = private unnamed_addr constant [17 x i8] c"401 Unauthorized\00", align 1, !dbg !908
@.str.91 = private unnamed_addr constant [21 x i8] c"402 Payment Required\00", align 1, !dbg !910
@.str.92 = private unnamed_addr constant [14 x i8] c"403 Forbidden\00", align 1, !dbg !912
@.str.93 = private unnamed_addr constant [14 x i8] c"404 Not Found\00", align 1, !dbg !914
@.str.94 = private unnamed_addr constant [23 x i8] c"405 Method Not Allowed\00", align 1, !dbg !916
@.str.95 = private unnamed_addr constant [19 x i8] c"406 Not Acceptable\00", align 1, !dbg !918
@.str.96 = private unnamed_addr constant [34 x i8] c"407 Proxy Authentication Required\00", align 1, !dbg !920
@.str.97 = private unnamed_addr constant [20 x i8] c"408 Request Timeout\00", align 1, !dbg !922
@.str.98 = private unnamed_addr constant [13 x i8] c"409 Conflict\00", align 1, !dbg !924
@.str.99 = private unnamed_addr constant [9 x i8] c"410 Gone\00", align 1, !dbg !926
@.str.100 = private unnamed_addr constant [20 x i8] c"411 Length Required\00", align 1, !dbg !928
@.str.101 = private unnamed_addr constant [24 x i8] c"412 Precondition Failed\00", align 1, !dbg !930
@.str.102 = private unnamed_addr constant [29 x i8] c"413 Request Entity Too Large\00", align 1, !dbg !932
@.str.103 = private unnamed_addr constant [25 x i8] c"414 Request-URI Too Long\00", align 1, !dbg !937
@.str.104 = private unnamed_addr constant [27 x i8] c"415 Unsupported Media Type\00", align 1, !dbg !942
@.str.105 = private unnamed_addr constant [36 x i8] c"416 Requested Range Not Satisfiable\00", align 1, !dbg !947
@.str.106 = private unnamed_addr constant [23 x i8] c"417 Expectation Failed\00", align 1, !dbg !952
@.str.107 = private unnamed_addr constant [24 x i8] c"421 Misdirected Request\00", align 1, !dbg !954
@.str.108 = private unnamed_addr constant [25 x i8] c"422 Unprocessable Entity\00", align 1, !dbg !956
@.str.109 = private unnamed_addr constant [11 x i8] c"423 Locked\00", align 1, !dbg !958
@.str.110 = private unnamed_addr constant [22 x i8] c"424 Failed Dependency\00", align 1, !dbg !960
@.str.111 = private unnamed_addr constant [21 x i8] c"426 Upgrade Required\00", align 1, !dbg !962
@.str.112 = private unnamed_addr constant [26 x i8] c"428 Precondition Required\00", align 1, !dbg !964
@.str.113 = private unnamed_addr constant [22 x i8] c"429 Too Many Requests\00", align 1, !dbg !969
@.str.114 = private unnamed_addr constant [36 x i8] c"431 Request Header Fields Too Large\00", align 1, !dbg !971
@.str.115 = private unnamed_addr constant [34 x i8] c"451 Unavailable For Legal Reasons\00", align 1, !dbg !973
@.str.116 = private unnamed_addr constant [26 x i8] c"500 Internal Server Error\00", align 1, !dbg !975
@.str.117 = private unnamed_addr constant [20 x i8] c"501 Not Implemented\00", align 1, !dbg !977
@.str.118 = private unnamed_addr constant [16 x i8] c"502 Bad Gateway\00", align 1, !dbg !979
@.str.119 = private unnamed_addr constant [24 x i8] c"503 Service Unavailable\00", align 1, !dbg !981
@.str.120 = private unnamed_addr constant [20 x i8] c"504 Gateway Timeout\00", align 1, !dbg !983
@.str.121 = private unnamed_addr constant [31 x i8] c"505 HTTP Version Not Supported\00", align 1, !dbg !985
@.str.122 = private unnamed_addr constant [28 x i8] c"506 Variant Also Negotiates\00", align 1, !dbg !990
@.str.123 = private unnamed_addr constant [25 x i8] c"507 Insufficient Storage\00", align 1, !dbg !992
@.str.124 = private unnamed_addr constant [18 x i8] c"508 Loop Detected\00", align 1, !dbg !994
@.str.125 = private unnamed_addr constant [17 x i8] c"510 Not Extended\00", align 1, !dbg !996
@.str.126 = private unnamed_addr constant [36 x i8] c"511 Network Authentication Required\00", align 1, !dbg !998
@.str.127 = private unnamed_addr constant [36 x i8] c"<p>The document has moved <a href=\22\00", align 1, !dbg !1005
@.str.128 = private unnamed_addr constant [17 x i8] c"\22>here</a>.</p>\0A\00", align 1, !dbg !1007
@.str.129 = private unnamed_addr constant [51 x i8] c"<p>The answer to your request is located <a href=\22\00", align 1, !dbg !1009
@.str.130 = private unnamed_addr constant [124 x i8] c"<p>This resource is only accessible through the proxy\0A<br />\0AYou will need to configure your client to use that proxy.</p>\0A\00", align 1, !dbg !1014
@.str.131 = private unnamed_addr constant [235 x i8] c"<p>This server could not verify that you\0Aare authorized to access the document\0Arequested.  Either you supplied the wrong\0Acredentials (e.g., bad password), or your\0Abrowser doesn't understand how to supply\0Athe credentials required.</p>\0A\00", align 1, !dbg !1019
@.str.132 = private unnamed_addr constant [77 x i8] c"<p>Your browser sent a request that this server could not understand.<br />\0A\00", align 1, !dbg !1024
@.str.133 = private unnamed_addr constant [12 x i8] c"error-notes\00", align 1, !dbg !1026
@.str.134 = private unnamed_addr constant [6 x i8] c"</p>\0A\00", align 1, !dbg !1028
@.str.135 = private unnamed_addr constant [54 x i8] c"<p>You don't have permission to access this resource.\00", align 1, !dbg !1030
@.str.136 = private unnamed_addr constant [56 x i8] c"<p>The requested URL was not found on this server.</p>\0A\00", align 1, !dbg !1035
@.str.137 = private unnamed_addr constant [25 x i8] c"<p>The requested method \00", align 1, !dbg !1040
@.str.138 = private unnamed_addr constant [35 x i8] c" is not allowed for this URL.</p>\0A\00", align 1, !dbg !1042
@.str.139 = private unnamed_addr constant [99 x i8] c"<p>An appropriate representation of the requested resource could not be found on this server.</p>\0A\00", align 1, !dbg !1047
@.str.140 = private unnamed_addr constant [13 x i8] c"variant-list\00", align 1, !dbg !1052
@.str.141 = private unnamed_addr constant [38 x i8] c"<p>A request of the requested method \00", align 1, !dbg !1054
@.str.142 = private unnamed_addr constant [41 x i8] c" requires a valid Content-length.<br />\0A\00", align 1, !dbg !1059
@.str.143 = private unnamed_addr constant [73 x i8] c"<p>The precondition on the request for this URL evaluated to false.</p>\0A\00", align 1, !dbg !1064
@.str.144 = private unnamed_addr constant [4 x i8] c"<p>\00", align 1, !dbg !1069
@.str.145 = private unnamed_addr constant [39 x i8] c" not supported for current URL.<br />\0A\00", align 1, !dbg !1071
@.str.146 = private unnamed_addr constant [83 x i8] c"<p>The proxy server received an invalid\0D\0Aresponse from an upstream server.<br />\0D\0A\00", align 1, !dbg !1076
@.str.147 = private unnamed_addr constant [130 x i8] c"<p>A variant for the requested resource\0A<pre>\0A\0A</pre>\0Ais itself a negotiable resource. This indicates a configuration error.</p>\0A\00", align 1, !dbg !1081
@.str.148 = private unnamed_addr constant [69 x i8] c"<p>Server timeout waiting for the HTTP request from the client.</p>\0A\00", align 1, !dbg !1086
@.str.149 = private unnamed_addr constant [152 x i8] c"<p>The requested resource is no longer available on this server and there is no forwarding address.\0APlease remove all references to this resource.</p>\0A\00", align 1, !dbg !1091
@.str.150 = private unnamed_addr constant [57 x i8] c"The requested resource does not allow request data with \00", align 1, !dbg !1096
@.str.151 = private unnamed_addr constant [86 x i8] c" requests, or the amount of data provided in\0Athe request exceeds the capacity limit.\0A\00", align 1, !dbg !1101
@.str.152 = private unnamed_addr constant [81 x i8] c"<p>The requested URL's length exceeds the capacity\0Alimit for this server.<br />\0A\00", align 1, !dbg !1106
@.str.153 = private unnamed_addr constant [97 x i8] c"<p>The supplied request data is not in a format\0Aacceptable for processing by this resource.</p>\0A\00", align 1, !dbg !1111
@.str.154 = private unnamed_addr constant [130 x i8] c"<p>None of the range-specifier values in the Range\0Arequest-header field overlap the current extent\0Aof the selected resource.</p>\0A\00", align 1, !dbg !1116
@.str.155 = private unnamed_addr constant [7 x i8] c"Expect\00", align 1, !dbg !1118
@.str.156 = private unnamed_addr constant [127 x i8] c"<p>The expectation given in the Expect request-header\0Afield could not be met by this server.\0AThe client sent<pre>\0A    Expect: \00", align 1, !dbg !1120
@.str.157 = private unnamed_addr constant [9 x i8] c"\0A</pre>\0A\00", align 1, !dbg !1125
@.str.158 = private unnamed_addr constant [95 x i8] c"<p>No expectation was seen, the Expect request-header \0Afield was not presented by the client.\0A\00", align 1, !dbg !1127
@.str.159 = private unnamed_addr constant [60 x i8] c"</p><p>Only the 100-continue expectation is supported.</p>\0A\00", align 1, !dbg !1132
@.str.160 = private unnamed_addr constant [123 x i8] c"<p>The server understands the media type of the\0Arequest entity, but was unable to process the\0Acontained instructions.</p>\0A\00", align 1, !dbg !1137
@.str.161 = private unnamed_addr constant [143 x i8] c"<p>The requested resource is currently locked.\0AThe lock must be released or proper identification\0Agiven before the method can be applied.</p>\0A\00", align 1, !dbg !1142
@.str.162 = private unnamed_addr constant [144 x i8] c"<p>The method could not be performed on the resource\0Abecause the requested action depended on another\0Aaction and that other action failed.</p>\0A\00", align 1, !dbg !1147
@.str.163 = private unnamed_addr constant [231 x i8] c"<p>The requested resource can only be retrieved\0Ausing SSL.  The server is willing to upgrade the current\0Aconnection to SSL, but your client doesn't support it.\0AEither upgrade your client, or try requesting the page\0Ausing https://\0A\00", align 1, !dbg !1152
@.str.164 = private unnamed_addr constant [51 x i8] c"<p>The request is required to be conditional.</p>\0A\00", align 1, !dbg !1157
@.str.165 = private unnamed_addr constant [71 x i8] c"<p>The user has sent too many requests\0Ain a given amount of time.</p>\0A\00", align 1, !dbg !1159
@.str.166 = private unnamed_addr constant [89 x i8] c"<p>The server refused this request because\0Athe request header fields are too large.</p>\0A\00", align 1, !dbg !1164
@.str.167 = private unnamed_addr constant [227 x i8] c"<p>The method could not be performed on the resource\0Abecause the server is unable to store the\0Arepresentation needed to successfully complete the\0Arequest.  There is insufficient free space left in\0Ayour storage allocation.</p>\0A\00", align 1, !dbg !1169
@.str.168 = private unnamed_addr constant [139 x i8] c"<p>The server is temporarily unable to service your\0Arequest due to maintenance downtime or capacity\0Aproblems. Please try again later.</p>\0A\00", align 1, !dbg !1174
@.str.169 = private unnamed_addr constant [95 x i8] c"<p>The gateway did not receive a timely response\0Afrom the upstream server or application.</p>\0A\00", align 1, !dbg !1179
@.str.170 = private unnamed_addr constant [84 x i8] c"<p>The server terminated an operation because\0Ait encountered an infinite loop.</p>\0A\00", align 1, !dbg !1181
@.str.171 = private unnamed_addr constant [101 x i8] c"<p>A mandatory extension policy in the request is not\0Aaccepted by the server for this resource.</p>\0A\00", align 1, !dbg !1186
@.str.172 = private unnamed_addr constant [65 x i8] c"<p>The client needs to authenticate to gain\0Anetwork access.</p>\0A\00", align 1, !dbg !1191
@.str.173 = private unnamed_addr constant [162 x i8] c"<p>The client needs a new connection for this\0Arequest as the requested host name does not match\0Athe Server Name Indication (SNI) in use for this\0Aconnection.</p>\0A\00", align 1, !dbg !1196
@.str.174 = private unnamed_addr constant [64 x i8] c"<p>Access to this URL has been denied for legal reasons.<br />\0A\00", align 1, !dbg !1201
@.str.175 = private unnamed_addr constant [17 x i8] c"verbose-error-to\00", align 1, !dbg !1206
@.str.176 = private unnamed_addr constant [2 x i8] c"*\00", align 1, !dbg !1208
@.str.177 = private unnamed_addr constant [7 x i8] c"<p />\0A\00", align 1, !dbg !1213
@.str.178 = private unnamed_addr constant [158 x i8] c"<p>The server encountered an internal error or\0Amisconfiguration and was unable to complete\0Ayour request.</p>\0A<p>Please contact the server administrator at \0A \00", align 1, !dbg !1215
@.str.179 = private unnamed_addr constant [192 x i8] c" to inform them of the time this error occurred,\0A and the actions you performed just before this error.</p>\0A<p>More information about this error may be available\0Ain the server error log.</p>\0A\00", align 1, !dbg !1220

; Function Attrs: nounwind uwtable
define dso_local void @ap_hook_insert_error_filter(ptr noundef %pf, ptr noundef %aszPre, ptr noundef %aszSucc, i32 noundef %nOrder) #0 !dbg !1235 {
entry:
  %pf.addr = alloca ptr, align 8
  %aszPre.addr = alloca ptr, align 8
  %aszSucc.addr = alloca ptr, align 8
  %nOrder.addr = alloca i32, align 4
  %pHook = alloca ptr, align 8
  store ptr %pf, ptr %pf.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %pf.addr, metadata !1239, metadata !DIExpression()), !dbg !1248
  store ptr %aszPre, ptr %aszPre.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %aszPre.addr, metadata !1240, metadata !DIExpression()), !dbg !1248
  store ptr %aszSucc, ptr %aszSucc.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %aszSucc.addr, metadata !1241, metadata !DIExpression()), !dbg !1248
  store i32 %nOrder, ptr %nOrder.addr, align 4, !tbaa !1249
  tail call void @llvm.dbg.declare(metadata ptr %nOrder.addr, metadata !1242, metadata !DIExpression()), !dbg !1248
  call void @llvm.lifetime.start.p0(i64 8, ptr %pHook) #7, !dbg !1248
  tail call void @llvm.dbg.declare(metadata ptr %pHook, metadata !1243, metadata !DIExpression()), !dbg !1248
  %0 = load ptr, ptr @_hooks, align 8, !dbg !1251, !tbaa !1253
  %tobool = icmp ne ptr %0, null, !dbg !1251
  br i1 %tobool, label %if.end, label %if.then, !dbg !1248

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @apr_hook_global_pool, align 8, !dbg !1255, !tbaa !1244
  %call = call ptr @apr_array_make(ptr noundef %1, i32 noundef 1, i32 noundef 40), !dbg !1255
  store ptr %call, ptr @_hooks, align 8, !dbg !1255, !tbaa !1253
  call void @apr_hook_sort_register(ptr noundef @.str, ptr noundef @_hooks), !dbg !1255
  br label %if.end, !dbg !1255

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr @_hooks, align 8, !dbg !1248, !tbaa !1253
  %call1 = call ptr @apr_array_push(ptr noundef %2), !dbg !1248
  store ptr %call1, ptr %pHook, align 8, !dbg !1248, !tbaa !1244
  %3 = load ptr, ptr %pf.addr, align 8, !dbg !1248, !tbaa !1244
  %4 = load ptr, ptr %pHook, align 8, !dbg !1248, !tbaa !1244
  %pFunc = getelementptr inbounds %struct.ap_LINK_insert_error_filter_t, ptr %4, i32 0, i32 0, !dbg !1248
  store ptr %3, ptr %pFunc, align 8, !dbg !1248, !tbaa !1257
  %5 = load ptr, ptr %aszPre.addr, align 8, !dbg !1248, !tbaa !1244
  %6 = load ptr, ptr %pHook, align 8, !dbg !1248, !tbaa !1244
  %aszPredecessors = getelementptr inbounds %struct.ap_LINK_insert_error_filter_t, ptr %6, i32 0, i32 2, !dbg !1248
  store ptr %5, ptr %aszPredecessors, align 8, !dbg !1248, !tbaa !1259
  %7 = load ptr, ptr %aszSucc.addr, align 8, !dbg !1248, !tbaa !1244
  %8 = load ptr, ptr %pHook, align 8, !dbg !1248, !tbaa !1244
  %aszSuccessors = getelementptr inbounds %struct.ap_LINK_insert_error_filter_t, ptr %8, i32 0, i32 3, !dbg !1248
  store ptr %7, ptr %aszSuccessors, align 8, !dbg !1248, !tbaa !1260
  %9 = load i32, ptr %nOrder.addr, align 4, !dbg !1248, !tbaa !1249
  %10 = load ptr, ptr %pHook, align 8, !dbg !1248, !tbaa !1244
  %nOrder2 = getelementptr inbounds %struct.ap_LINK_insert_error_filter_t, ptr %10, i32 0, i32 4, !dbg !1248
  store i32 %9, ptr %nOrder2, align 8, !dbg !1248, !tbaa !1261
  %11 = load ptr, ptr @apr_hook_debug_current, align 8, !dbg !1248, !tbaa !1244
  %12 = load ptr, ptr %pHook, align 8, !dbg !1248, !tbaa !1244
  %szName = getelementptr inbounds %struct.ap_LINK_insert_error_filter_t, ptr %12, i32 0, i32 1, !dbg !1248
  store ptr %11, ptr %szName, align 8, !dbg !1248, !tbaa !1262
  %13 = load i32, ptr @apr_hook_debug_enabled, align 4, !dbg !1263, !tbaa !1249
  %tobool3 = icmp ne i32 %13, 0, !dbg !1263
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1248

if.then4:                                         ; preds = %if.end
  %14 = load ptr, ptr %aszPre.addr, align 8, !dbg !1263, !tbaa !1244
  %15 = load ptr, ptr %aszSucc.addr, align 8, !dbg !1263, !tbaa !1244
  call void @apr_hook_debug_show(ptr noundef @.str, ptr noundef %14, ptr noundef %15), !dbg !1263
  br label %if.end5, !dbg !1263

if.end5:                                          ; preds = %if.then4, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %pHook) #7, !dbg !1248
  ret void, !dbg !1248
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !1265 ptr @apr_array_make(ptr noundef, i32 noundef, i32 noundef) #2

declare !dbg !1268 void @apr_hook_sort_register(ptr noundef, ptr noundef) #2

declare !dbg !1273 ptr @apr_array_push(ptr noundef) #2

declare !dbg !1276 void @apr_hook_debug_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ap_hook_get_insert_error_filter() #0 !dbg !1279 {
entry:
  %0 = load ptr, ptr @_hooks, align 8, !dbg !1282, !tbaa !1253
  ret ptr %0, !dbg !1282
}

; Function Attrs: nounwind uwtable
define dso_local void @ap_run_insert_error_filter(ptr noundef %r) #0 !dbg !1283 {
entry:
  %r.addr = alloca ptr, align 8
  %pHook = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1285, metadata !DIExpression()), !dbg !1288
  call void @llvm.lifetime.start.p0(i64 8, ptr %pHook) #7, !dbg !1288
  tail call void @llvm.dbg.declare(metadata ptr %pHook, metadata !1286, metadata !DIExpression()), !dbg !1288
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1288
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1287, metadata !DIExpression()), !dbg !1288
  %0 = load ptr, ptr @_hooks, align 8, !dbg !1289, !tbaa !1253
  %tobool = icmp ne ptr %0, null, !dbg !1289
  br i1 %tobool, label %if.then, label %if.end, !dbg !1288

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @_hooks, align 8, !dbg !1291, !tbaa !1253
  %elts = getelementptr inbounds %struct.apr_array_header_t, ptr %1, i32 0, i32 4, !dbg !1291
  %2 = load ptr, ptr %elts, align 8, !dbg !1291, !tbaa !1293
  store ptr %2, ptr %pHook, align 8, !dbg !1291, !tbaa !1244
  store i32 0, ptr %n, align 4, !dbg !1295, !tbaa !1249
  br label %for.cond, !dbg !1295

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %n, align 4, !dbg !1297, !tbaa !1249
  %4 = load ptr, ptr @_hooks, align 8, !dbg !1297, !tbaa !1253
  %nelts = getelementptr inbounds %struct.apr_array_header_t, ptr %4, i32 0, i32 2, !dbg !1297
  %5 = load i32, ptr %nelts, align 4, !dbg !1297, !tbaa !1299
  %cmp = icmp slt i32 %3, %5, !dbg !1297
  br i1 %cmp, label %for.body, label %for.end, !dbg !1295

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pHook, align 8, !dbg !1300, !tbaa !1244
  %7 = load i32, ptr %n, align 4, !dbg !1300, !tbaa !1249
  %idxprom = sext i32 %7 to i64, !dbg !1300
  %arrayidx = getelementptr inbounds %struct.ap_LINK_insert_error_filter_t, ptr %6, i64 %idxprom, !dbg !1300
  %pFunc = getelementptr inbounds %struct.ap_LINK_insert_error_filter_t, ptr %arrayidx, i32 0, i32 0, !dbg !1300
  %8 = load ptr, ptr %pFunc, align 8, !dbg !1300, !tbaa !1257
  %9 = load ptr, ptr %r.addr, align 8, !dbg !1300, !tbaa !1244
  call void %8(ptr noundef %9), !dbg !1300
  br label %for.inc, !dbg !1300

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %n, align 4, !dbg !1297, !tbaa !1249
  %inc = add nsw i32 %10, 1, !dbg !1297
  store i32 %inc, ptr %n, align 4, !dbg !1297, !tbaa !1249
  br label %for.cond, !dbg !1297, !llvm.loop !1302

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !1291

if.end:                                           ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1288
  call void @llvm.lifetime.end.p0(i64 8, ptr %pHook) #7, !dbg !1288
  ret void, !dbg !1288
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_set_keepalive(ptr noundef %r) #0 !dbg !1304 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %ka_sent = alloca i32, align 4
  %left = alloca i32, align 4
  %wimpy = alloca i32, align 4
  %conn = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1308, metadata !DIExpression()), !dbg !1313
  call void @llvm.lifetime.start.p0(i64 4, ptr %ka_sent) #7, !dbg !1314
  tail call void @llvm.dbg.declare(metadata ptr %ka_sent, metadata !1309, metadata !DIExpression()), !dbg !1315
  store i32 0, ptr %ka_sent, align 4, !dbg !1315, !tbaa !1249
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #7, !dbg !1316
  tail call void @llvm.dbg.declare(metadata ptr %left, metadata !1310, metadata !DIExpression()), !dbg !1317
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1318, !tbaa !1244
  %server = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 2, !dbg !1319
  %1 = load ptr, ptr %server, align 8, !dbg !1319, !tbaa !1320
  %keep_alive_max = getelementptr inbounds %struct.server_rec, ptr %1, i32 0, i32 17, !dbg !1326
  %2 = load i32, ptr %keep_alive_max, align 8, !dbg !1326, !tbaa !1327
  %3 = load ptr, ptr %r.addr, align 8, !dbg !1330, !tbaa !1244
  %connection = getelementptr inbounds %struct.request_rec, ptr %3, i32 0, i32 1, !dbg !1331
  %4 = load ptr, ptr %connection, align 8, !dbg !1331, !tbaa !1332
  %keepalives = getelementptr inbounds %struct.conn_rec, ptr %4, i32 0, i32 23, !dbg !1333
  %5 = load i32, ptr %keepalives, align 4, !dbg !1333, !tbaa !1334
  %sub = sub nsw i32 %2, %5, !dbg !1336
  store i32 %sub, ptr %left, align 4, !dbg !1317, !tbaa !1249
  call void @llvm.lifetime.start.p0(i64 4, ptr %wimpy) #7, !dbg !1337
  tail call void @llvm.dbg.declare(metadata ptr %wimpy, metadata !1311, metadata !DIExpression()), !dbg !1338
  %6 = load ptr, ptr %r.addr, align 8, !dbg !1339, !tbaa !1244
  %pool = getelementptr inbounds %struct.request_rec, ptr %6, i32 0, i32 0, !dbg !1340
  %7 = load ptr, ptr %pool, align 8, !dbg !1340, !tbaa !1341
  %8 = load ptr, ptr %r.addr, align 8, !dbg !1342, !tbaa !1244
  %headers_out = getelementptr inbounds %struct.request_rec, ptr %8, i32 0, i32 35, !dbg !1343
  %9 = load ptr, ptr %headers_out, align 8, !dbg !1343, !tbaa !1344
  %call = call ptr @apr_table_get(ptr noundef %9, ptr noundef @.str.1), !dbg !1345
  %call1 = call i32 @ap_find_token(ptr noundef %7, ptr noundef %call, ptr noundef @.str.2), !dbg !1346
  store i32 %call1, ptr %wimpy, align 4, !dbg !1338, !tbaa !1249
  call void @llvm.lifetime.start.p0(i64 8, ptr %conn) #7, !dbg !1347
  tail call void @llvm.dbg.declare(metadata ptr %conn, metadata !1312, metadata !DIExpression()), !dbg !1348
  %10 = load ptr, ptr %r.addr, align 8, !dbg !1349, !tbaa !1244
  %headers_in = getelementptr inbounds %struct.request_rec, ptr %10, i32 0, i32 34, !dbg !1350
  %11 = load ptr, ptr %headers_in, align 8, !dbg !1350, !tbaa !1351
  %call2 = call ptr @apr_table_get(ptr noundef %11, ptr noundef @.str.1), !dbg !1352
  store ptr %call2, ptr %conn, align 8, !dbg !1348, !tbaa !1244
  %12 = load ptr, ptr %r.addr, align 8, !dbg !1353, !tbaa !1244
  %connection3 = getelementptr inbounds %struct.request_rec, ptr %12, i32 0, i32 1, !dbg !1355
  %13 = load ptr, ptr %connection3, align 8, !dbg !1355, !tbaa !1332
  %keepalive = getelementptr inbounds %struct.conn_rec, ptr %13, i32 0, i32 22, !dbg !1356
  %14 = load i32, ptr %keepalive, align 8, !dbg !1356, !tbaa !1357
  %cmp = icmp ne i32 %14, 1, !dbg !1358
  br i1 %cmp, label %land.lhs.true, label %if.end106, !dbg !1359

land.lhs.true:                                    ; preds = %entry
  %15 = load ptr, ptr %r.addr, align 8, !dbg !1360, !tbaa !1244
  %expecting_100 = getelementptr inbounds %struct.request_rec, ptr %15, i32 0, i32 29, !dbg !1361
  %16 = load i32, ptr %expecting_100, align 4, !dbg !1361, !tbaa !1362
  %tobool = icmp ne i32 %16, 0, !dbg !1360
  br i1 %tobool, label %if.end106, label %land.lhs.true4, !dbg !1363

land.lhs.true4:                                   ; preds = %land.lhs.true
  %17 = load ptr, ptr %r.addr, align 8, !dbg !1364, !tbaa !1244
  %header_only = getelementptr inbounds %struct.request_rec, ptr %17, i32 0, i32 9, !dbg !1365
  %18 = load i32, ptr %header_only, align 8, !dbg !1365, !tbaa !1366
  %tobool5 = icmp ne i32 %18, 0, !dbg !1364
  br i1 %tobool5, label %land.lhs.true23, label %lor.lhs.false, !dbg !1367

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %19 = load ptr, ptr %r.addr, align 8, !dbg !1368, !tbaa !1244
  %status = getelementptr inbounds %struct.request_rec, ptr %19, i32 0, i32 15, !dbg !1368
  %20 = load i32, ptr %status, align 8, !dbg !1368, !tbaa !1369
  %cmp6 = icmp eq i32 %20, 204, !dbg !1368
  br i1 %cmp6, label %land.lhs.true23, label %lor.lhs.false7, !dbg !1368

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %21 = load ptr, ptr %r.addr, align 8, !dbg !1368, !tbaa !1244
  %status8 = getelementptr inbounds %struct.request_rec, ptr %21, i32 0, i32 15, !dbg !1368
  %22 = load i32, ptr %status8, align 8, !dbg !1368, !tbaa !1369
  %cmp9 = icmp eq i32 %22, 304, !dbg !1368
  br i1 %cmp9, label %land.lhs.true23, label %lor.lhs.false10, !dbg !1370

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %23 = load ptr, ptr %r.addr, align 8, !dbg !1371, !tbaa !1244
  %headers_out11 = getelementptr inbounds %struct.request_rec, ptr %23, i32 0, i32 35, !dbg !1372
  %24 = load ptr, ptr %headers_out11, align 8, !dbg !1372, !tbaa !1344
  %call12 = call ptr @apr_table_get(ptr noundef %24, ptr noundef @.str.3), !dbg !1373
  %tobool13 = icmp ne ptr %call12, null, !dbg !1373
  br i1 %tobool13, label %land.lhs.true23, label %lor.lhs.false14, !dbg !1374

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %25 = load ptr, ptr %r.addr, align 8, !dbg !1375, !tbaa !1244
  %pool15 = getelementptr inbounds %struct.request_rec, ptr %25, i32 0, i32 0, !dbg !1376
  %26 = load ptr, ptr %pool15, align 8, !dbg !1376, !tbaa !1341
  %27 = load ptr, ptr %r.addr, align 8, !dbg !1377, !tbaa !1244
  %headers_out16 = getelementptr inbounds %struct.request_rec, ptr %27, i32 0, i32 35, !dbg !1378
  %28 = load ptr, ptr %headers_out16, align 8, !dbg !1378, !tbaa !1344
  %call17 = call ptr @apr_table_get(ptr noundef %28, ptr noundef @.str.4), !dbg !1379
  %call18 = call i32 @ap_is_chunked(ptr noundef %26, ptr noundef %call17), !dbg !1380
  %tobool19 = icmp ne i32 %call18, 0, !dbg !1380
  br i1 %tobool19, label %land.lhs.true23, label %lor.lhs.false20, !dbg !1381

lor.lhs.false20:                                  ; preds = %lor.lhs.false14
  %29 = load ptr, ptr %r.addr, align 8, !dbg !1382, !tbaa !1244
  %proto_num = getelementptr inbounds %struct.request_rec, ptr %29, i32 0, i32 10, !dbg !1383
  %30 = load i32, ptr %proto_num, align 4, !dbg !1383, !tbaa !1384
  %cmp21 = icmp sge i32 %30, 1001, !dbg !1385
  br i1 %cmp21, label %land.lhs.true22, label %if.end106, !dbg !1386

land.lhs.true22:                                  ; preds = %lor.lhs.false20
  %31 = load ptr, ptr %r.addr, align 8, !dbg !1387, !tbaa !1244
  %chunked = getelementptr inbounds %struct.request_rec, ptr %31, i32 0, i32 26, !dbg !1388
  store i32 1, ptr %chunked, align 8, !dbg !1389, !tbaa !1390
  br i1 true, label %land.lhs.true23, label %if.end106, !dbg !1391

land.lhs.true23:                                  ; preds = %land.lhs.true22, %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false7, %lor.lhs.false, %land.lhs.true4
  %32 = load ptr, ptr %r.addr, align 8, !dbg !1392, !tbaa !1244
  %server24 = getelementptr inbounds %struct.request_rec, ptr %32, i32 0, i32 2, !dbg !1393
  %33 = load ptr, ptr %server24, align 8, !dbg !1393, !tbaa !1320
  %keep_alive = getelementptr inbounds %struct.server_rec, ptr %33, i32 0, i32 18, !dbg !1394
  %34 = load i32, ptr %keep_alive, align 4, !dbg !1394, !tbaa !1395
  %tobool25 = icmp ne i32 %34, 0, !dbg !1392
  br i1 %tobool25, label %land.lhs.true26, label %if.end106, !dbg !1396

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %35 = load ptr, ptr %r.addr, align 8, !dbg !1397, !tbaa !1244
  %server27 = getelementptr inbounds %struct.request_rec, ptr %35, i32 0, i32 2, !dbg !1398
  %36 = load ptr, ptr %server27, align 8, !dbg !1398, !tbaa !1320
  %keep_alive_timeout = getelementptr inbounds %struct.server_rec, ptr %36, i32 0, i32 16, !dbg !1399
  %37 = load i64, ptr %keep_alive_timeout, align 8, !dbg !1399, !tbaa !1400
  %cmp28 = icmp sgt i64 %37, 0, !dbg !1401
  br i1 %cmp28, label %land.lhs.true29, label %if.end106, !dbg !1402

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %38 = load ptr, ptr %r.addr, align 8, !dbg !1403, !tbaa !1244
  %server30 = getelementptr inbounds %struct.request_rec, ptr %38, i32 0, i32 2, !dbg !1404
  %39 = load ptr, ptr %server30, align 8, !dbg !1404, !tbaa !1320
  %keep_alive_max31 = getelementptr inbounds %struct.server_rec, ptr %39, i32 0, i32 17, !dbg !1405
  %40 = load i32, ptr %keep_alive_max31, align 8, !dbg !1405, !tbaa !1327
  %cmp32 = icmp eq i32 %40, 0, !dbg !1406
  br i1 %cmp32, label %land.lhs.true35, label %lor.lhs.false33, !dbg !1407

lor.lhs.false33:                                  ; preds = %land.lhs.true29
  %41 = load i32, ptr %left, align 4, !dbg !1408, !tbaa !1249
  %cmp34 = icmp sgt i32 %41, 0, !dbg !1409
  br i1 %cmp34, label %land.lhs.true35, label %if.end106, !dbg !1410

land.lhs.true35:                                  ; preds = %lor.lhs.false33, %land.lhs.true29
  %42 = load ptr, ptr %r.addr, align 8, !dbg !1411, !tbaa !1244
  %status36 = getelementptr inbounds %struct.request_rec, ptr %42, i32 0, i32 15, !dbg !1411
  %43 = load i32, ptr %status36, align 8, !dbg !1411, !tbaa !1369
  %cmp37 = icmp eq i32 %43, 400, !dbg !1411
  br i1 %cmp37, label %if.end106, label %lor.lhs.false38, !dbg !1411

lor.lhs.false38:                                  ; preds = %land.lhs.true35
  %44 = load ptr, ptr %r.addr, align 8, !dbg !1411, !tbaa !1244
  %status39 = getelementptr inbounds %struct.request_rec, ptr %44, i32 0, i32 15, !dbg !1411
  %45 = load i32, ptr %status39, align 8, !dbg !1411, !tbaa !1369
  %cmp40 = icmp eq i32 %45, 408, !dbg !1411
  br i1 %cmp40, label %if.end106, label %lor.lhs.false41, !dbg !1411

lor.lhs.false41:                                  ; preds = %lor.lhs.false38
  %46 = load ptr, ptr %r.addr, align 8, !dbg !1411, !tbaa !1244
  %status42 = getelementptr inbounds %struct.request_rec, ptr %46, i32 0, i32 15, !dbg !1411
  %47 = load i32, ptr %status42, align 8, !dbg !1411, !tbaa !1369
  %cmp43 = icmp eq i32 %47, 411, !dbg !1411
  br i1 %cmp43, label %if.end106, label %lor.lhs.false44, !dbg !1411

lor.lhs.false44:                                  ; preds = %lor.lhs.false41
  %48 = load ptr, ptr %r.addr, align 8, !dbg !1411, !tbaa !1244
  %status45 = getelementptr inbounds %struct.request_rec, ptr %48, i32 0, i32 15, !dbg !1411
  %49 = load i32, ptr %status45, align 8, !dbg !1411, !tbaa !1369
  %cmp46 = icmp eq i32 %49, 413, !dbg !1411
  br i1 %cmp46, label %if.end106, label %lor.lhs.false47, !dbg !1411

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  %50 = load ptr, ptr %r.addr, align 8, !dbg !1411, !tbaa !1244
  %status48 = getelementptr inbounds %struct.request_rec, ptr %50, i32 0, i32 15, !dbg !1411
  %51 = load i32, ptr %status48, align 8, !dbg !1411, !tbaa !1369
  %cmp49 = icmp eq i32 %51, 414, !dbg !1411
  br i1 %cmp49, label %if.end106, label %lor.lhs.false50, !dbg !1411

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %52 = load ptr, ptr %r.addr, align 8, !dbg !1411, !tbaa !1244
  %status51 = getelementptr inbounds %struct.request_rec, ptr %52, i32 0, i32 15, !dbg !1411
  %53 = load i32, ptr %status51, align 8, !dbg !1411, !tbaa !1369
  %cmp52 = icmp eq i32 %53, 500, !dbg !1411
  br i1 %cmp52, label %if.end106, label %lor.lhs.false53, !dbg !1411

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %54 = load ptr, ptr %r.addr, align 8, !dbg !1411, !tbaa !1244
  %status54 = getelementptr inbounds %struct.request_rec, ptr %54, i32 0, i32 15, !dbg !1411
  %55 = load i32, ptr %status54, align 8, !dbg !1411, !tbaa !1369
  %cmp55 = icmp eq i32 %55, 503, !dbg !1411
  br i1 %cmp55, label %if.end106, label %lor.lhs.false56, !dbg !1411

lor.lhs.false56:                                  ; preds = %lor.lhs.false53
  %56 = load ptr, ptr %r.addr, align 8, !dbg !1411, !tbaa !1244
  %status57 = getelementptr inbounds %struct.request_rec, ptr %56, i32 0, i32 15, !dbg !1411
  %57 = load i32, ptr %status57, align 8, !dbg !1411, !tbaa !1369
  %cmp58 = icmp eq i32 %57, 501, !dbg !1411
  br i1 %cmp58, label %if.end106, label %land.lhs.true59, !dbg !1412

land.lhs.true59:                                  ; preds = %lor.lhs.false56
  %58 = load i32, ptr %wimpy, align 4, !dbg !1413, !tbaa !1249
  %tobool60 = icmp ne i32 %58, 0, !dbg !1413
  br i1 %tobool60, label %if.end106, label %land.lhs.true61, !dbg !1414

land.lhs.true61:                                  ; preds = %land.lhs.true59
  %59 = load ptr, ptr %r.addr, align 8, !dbg !1415, !tbaa !1244
  %pool62 = getelementptr inbounds %struct.request_rec, ptr %59, i32 0, i32 0, !dbg !1416
  %60 = load ptr, ptr %pool62, align 8, !dbg !1416, !tbaa !1341
  %61 = load ptr, ptr %conn, align 8, !dbg !1417, !tbaa !1244
  %call63 = call i32 @ap_find_token(ptr noundef %60, ptr noundef %61, ptr noundef @.str.2), !dbg !1418
  %tobool64 = icmp ne i32 %call63, 0, !dbg !1418
  br i1 %tobool64, label %if.end106, label %land.lhs.true65, !dbg !1419

land.lhs.true65:                                  ; preds = %land.lhs.true61
  %62 = load ptr, ptr %r.addr, align 8, !dbg !1420, !tbaa !1244
  %subprocess_env = getelementptr inbounds %struct.request_rec, ptr %62, i32 0, i32 37, !dbg !1421
  %63 = load ptr, ptr %subprocess_env, align 8, !dbg !1421, !tbaa !1422
  %call66 = call ptr @apr_table_get(ptr noundef %63, ptr noundef @.str.5), !dbg !1423
  %tobool67 = icmp ne ptr %call66, null, !dbg !1423
  br i1 %tobool67, label %lor.lhs.false68, label %land.lhs.true72, !dbg !1424

lor.lhs.false68:                                  ; preds = %land.lhs.true65
  %64 = load ptr, ptr %r.addr, align 8, !dbg !1425, !tbaa !1244
  %headers_in69 = getelementptr inbounds %struct.request_rec, ptr %64, i32 0, i32 34, !dbg !1426
  %65 = load ptr, ptr %headers_in69, align 8, !dbg !1426, !tbaa !1351
  %call70 = call ptr @apr_table_get(ptr noundef %65, ptr noundef @.str.6), !dbg !1427
  %tobool71 = icmp ne ptr %call70, null, !dbg !1427
  br i1 %tobool71, label %land.lhs.true72, label %if.end106, !dbg !1428

land.lhs.true72:                                  ; preds = %lor.lhs.false68, %land.lhs.true65
  %66 = load ptr, ptr %r.addr, align 8, !dbg !1429, !tbaa !1244
  %pool73 = getelementptr inbounds %struct.request_rec, ptr %66, i32 0, i32 0, !dbg !1430
  %67 = load ptr, ptr %pool73, align 8, !dbg !1430, !tbaa !1341
  %68 = load ptr, ptr %conn, align 8, !dbg !1431, !tbaa !1244
  %call74 = call i32 @ap_find_token(ptr noundef %67, ptr noundef %68, ptr noundef @.str.7), !dbg !1432
  store i32 %call74, ptr %ka_sent, align 4, !dbg !1433, !tbaa !1249
  %tobool75 = icmp ne i32 %call74, 0, !dbg !1433
  br i1 %tobool75, label %land.lhs.true79, label %lor.lhs.false76, !dbg !1434

lor.lhs.false76:                                  ; preds = %land.lhs.true72
  %69 = load ptr, ptr %r.addr, align 8, !dbg !1435, !tbaa !1244
  %proto_num77 = getelementptr inbounds %struct.request_rec, ptr %69, i32 0, i32 10, !dbg !1436
  %70 = load i32, ptr %proto_num77, align 4, !dbg !1436, !tbaa !1384
  %cmp78 = icmp sge i32 %70, 1001, !dbg !1437
  br i1 %cmp78, label %land.lhs.true79, label %if.end106, !dbg !1438

land.lhs.true79:                                  ; preds = %lor.lhs.false76, %land.lhs.true72
  %call80 = call i32 @is_mpm_running(), !dbg !1439
  %tobool81 = icmp ne i32 %call80, 0, !dbg !1439
  br i1 %tobool81, label %if.then, label %if.end106, !dbg !1440

if.then:                                          ; preds = %land.lhs.true79
  %71 = load ptr, ptr %r.addr, align 8, !dbg !1441, !tbaa !1244
  %connection82 = getelementptr inbounds %struct.request_rec, ptr %71, i32 0, i32 1, !dbg !1443
  %72 = load ptr, ptr %connection82, align 8, !dbg !1443, !tbaa !1332
  %keepalive83 = getelementptr inbounds %struct.conn_rec, ptr %72, i32 0, i32 22, !dbg !1444
  store i32 2, ptr %keepalive83, align 8, !dbg !1445, !tbaa !1357
  %73 = load ptr, ptr %r.addr, align 8, !dbg !1446, !tbaa !1244
  %connection84 = getelementptr inbounds %struct.request_rec, ptr %73, i32 0, i32 1, !dbg !1447
  %74 = load ptr, ptr %connection84, align 8, !dbg !1447, !tbaa !1332
  %keepalives85 = getelementptr inbounds %struct.conn_rec, ptr %74, i32 0, i32 23, !dbg !1448
  %75 = load i32, ptr %keepalives85, align 4, !dbg !1449, !tbaa !1334
  %inc = add nsw i32 %75, 1, !dbg !1449
  store i32 %inc, ptr %keepalives85, align 4, !dbg !1449, !tbaa !1334
  %76 = load i32, ptr %ka_sent, align 4, !dbg !1450, !tbaa !1249
  %tobool86 = icmp ne i32 %76, 0, !dbg !1450
  br i1 %tobool86, label %if.then87, label %if.end105, !dbg !1452

if.then87:                                        ; preds = %if.then
  %77 = load ptr, ptr %r.addr, align 8, !dbg !1453, !tbaa !1244
  %server88 = getelementptr inbounds %struct.request_rec, ptr %77, i32 0, i32 2, !dbg !1456
  %78 = load ptr, ptr %server88, align 8, !dbg !1456, !tbaa !1320
  %keep_alive_max89 = getelementptr inbounds %struct.server_rec, ptr %78, i32 0, i32 17, !dbg !1457
  %79 = load i32, ptr %keep_alive_max89, align 8, !dbg !1457, !tbaa !1327
  %tobool90 = icmp ne i32 %79, 0, !dbg !1453
  br i1 %tobool90, label %if.then91, label %if.else, !dbg !1458

if.then91:                                        ; preds = %if.then87
  %80 = load ptr, ptr %r.addr, align 8, !dbg !1459, !tbaa !1244
  %headers_out92 = getelementptr inbounds %struct.request_rec, ptr %80, i32 0, i32 35, !dbg !1461
  %81 = load ptr, ptr %headers_out92, align 8, !dbg !1461, !tbaa !1344
  %82 = load ptr, ptr %r.addr, align 8, !dbg !1462, !tbaa !1244
  %pool93 = getelementptr inbounds %struct.request_rec, ptr %82, i32 0, i32 0, !dbg !1463
  %83 = load ptr, ptr %pool93, align 8, !dbg !1463, !tbaa !1341
  %84 = load ptr, ptr %r.addr, align 8, !dbg !1464, !tbaa !1244
  %server94 = getelementptr inbounds %struct.request_rec, ptr %84, i32 0, i32 2, !dbg !1464
  %85 = load ptr, ptr %server94, align 8, !dbg !1464, !tbaa !1320
  %keep_alive_timeout95 = getelementptr inbounds %struct.server_rec, ptr %85, i32 0, i32 16, !dbg !1464
  %86 = load i64, ptr %keep_alive_timeout95, align 8, !dbg !1464, !tbaa !1400
  %div = sdiv i64 %86, 1000000, !dbg !1464
  %conv = trunc i64 %div to i32, !dbg !1465
  %87 = load i32, ptr %left, align 4, !dbg !1466, !tbaa !1249
  %call96 = call ptr (ptr, ptr, ...) @apr_psprintf(ptr noundef %83, ptr noundef @.str.9, i32 noundef %conv, i32 noundef %87), !dbg !1467
  call void @apr_table_setn(ptr noundef %81, ptr noundef @.str.8, ptr noundef %call96), !dbg !1468
  br label %if.end, !dbg !1469

if.else:                                          ; preds = %if.then87
  %88 = load ptr, ptr %r.addr, align 8, !dbg !1470, !tbaa !1244
  %headers_out97 = getelementptr inbounds %struct.request_rec, ptr %88, i32 0, i32 35, !dbg !1472
  %89 = load ptr, ptr %headers_out97, align 8, !dbg !1472, !tbaa !1344
  %90 = load ptr, ptr %r.addr, align 8, !dbg !1473, !tbaa !1244
  %pool98 = getelementptr inbounds %struct.request_rec, ptr %90, i32 0, i32 0, !dbg !1474
  %91 = load ptr, ptr %pool98, align 8, !dbg !1474, !tbaa !1341
  %92 = load ptr, ptr %r.addr, align 8, !dbg !1475, !tbaa !1244
  %server99 = getelementptr inbounds %struct.request_rec, ptr %92, i32 0, i32 2, !dbg !1475
  %93 = load ptr, ptr %server99, align 8, !dbg !1475, !tbaa !1320
  %keep_alive_timeout100 = getelementptr inbounds %struct.server_rec, ptr %93, i32 0, i32 16, !dbg !1475
  %94 = load i64, ptr %keep_alive_timeout100, align 8, !dbg !1475, !tbaa !1400
  %div101 = sdiv i64 %94, 1000000, !dbg !1475
  %conv102 = trunc i64 %div101 to i32, !dbg !1476
  %call103 = call ptr (ptr, ptr, ...) @apr_psprintf(ptr noundef %91, ptr noundef @.str.10, i32 noundef %conv102), !dbg !1477
  call void @apr_table_setn(ptr noundef %89, ptr noundef @.str.8, ptr noundef %call103), !dbg !1478
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then91
  %95 = load ptr, ptr %r.addr, align 8, !dbg !1479, !tbaa !1244
  %headers_out104 = getelementptr inbounds %struct.request_rec, ptr %95, i32 0, i32 35, !dbg !1480
  %96 = load ptr, ptr %headers_out104, align 8, !dbg !1480, !tbaa !1344
  call void @apr_table_mergen(ptr noundef %96, ptr noundef @.str.1, ptr noundef @.str.8), !dbg !1481
  br label %if.end105, !dbg !1482

if.end105:                                        ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1483

if.end106:                                        ; preds = %land.lhs.true79, %lor.lhs.false76, %lor.lhs.false68, %land.lhs.true61, %land.lhs.true59, %lor.lhs.false56, %lor.lhs.false53, %lor.lhs.false50, %lor.lhs.false47, %lor.lhs.false44, %lor.lhs.false41, %lor.lhs.false38, %land.lhs.true35, %lor.lhs.false33, %land.lhs.true26, %land.lhs.true23, %land.lhs.true22, %lor.lhs.false20, %land.lhs.true, %entry
  %97 = load i32, ptr %wimpy, align 4, !dbg !1484, !tbaa !1249
  %tobool107 = icmp ne i32 %97, 0, !dbg !1484
  br i1 %tobool107, label %if.end110, label %if.then108, !dbg !1486

if.then108:                                       ; preds = %if.end106
  %98 = load ptr, ptr %r.addr, align 8, !dbg !1487, !tbaa !1244
  %headers_out109 = getelementptr inbounds %struct.request_rec, ptr %98, i32 0, i32 35, !dbg !1489
  %99 = load ptr, ptr %headers_out109, align 8, !dbg !1489, !tbaa !1344
  call void @apr_table_mergen(ptr noundef %99, ptr noundef @.str.1, ptr noundef @.str.2), !dbg !1490
  br label %if.end110, !dbg !1491

if.end110:                                        ; preds = %if.then108, %if.end106
  %100 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !1244
  %connection111 = getelementptr inbounds %struct.request_rec, ptr %100, i32 0, i32 1, !dbg !1494
  %101 = load ptr, ptr %connection111, align 8, !dbg !1494, !tbaa !1332
  %keepalive112 = getelementptr inbounds %struct.conn_rec, ptr %101, i32 0, i32 22, !dbg !1495
  %102 = load i32, ptr %keepalive112, align 8, !dbg !1495, !tbaa !1357
  %cmp113 = icmp ne i32 %102, 1, !dbg !1496
  br i1 %cmp113, label %land.lhs.true115, label %if.end125, !dbg !1497

land.lhs.true115:                                 ; preds = %if.end110
  %103 = load ptr, ptr %r.addr, align 8, !dbg !1498, !tbaa !1244
  %server116 = getelementptr inbounds %struct.request_rec, ptr %103, i32 0, i32 2, !dbg !1499
  %104 = load ptr, ptr %server116, align 8, !dbg !1499, !tbaa !1320
  %keep_alive_max117 = getelementptr inbounds %struct.server_rec, ptr %104, i32 0, i32 17, !dbg !1500
  %105 = load i32, ptr %keep_alive_max117, align 8, !dbg !1500, !tbaa !1327
  %tobool118 = icmp ne i32 %105, 0, !dbg !1498
  br i1 %tobool118, label %land.lhs.true119, label %if.end125, !dbg !1501

land.lhs.true119:                                 ; preds = %land.lhs.true115
  %106 = load i32, ptr %left, align 4, !dbg !1502, !tbaa !1249
  %tobool120 = icmp ne i32 %106, 0, !dbg !1502
  br i1 %tobool120, label %if.end125, label %if.then121, !dbg !1503

if.then121:                                       ; preds = %land.lhs.true119
  %107 = load ptr, ptr %r.addr, align 8, !dbg !1504, !tbaa !1244
  %connection122 = getelementptr inbounds %struct.request_rec, ptr %107, i32 0, i32 1, !dbg !1506
  %108 = load ptr, ptr %connection122, align 8, !dbg !1506, !tbaa !1332
  %keepalives123 = getelementptr inbounds %struct.conn_rec, ptr %108, i32 0, i32 23, !dbg !1507
  %109 = load i32, ptr %keepalives123, align 4, !dbg !1508, !tbaa !1334
  %inc124 = add nsw i32 %109, 1, !dbg !1508
  store i32 %inc124, ptr %keepalives123, align 4, !dbg !1508, !tbaa !1334
  br label %if.end125, !dbg !1509

if.end125:                                        ; preds = %if.then121, %land.lhs.true119, %land.lhs.true115, %if.end110
  %110 = load ptr, ptr %r.addr, align 8, !dbg !1510, !tbaa !1244
  %connection126 = getelementptr inbounds %struct.request_rec, ptr %110, i32 0, i32 1, !dbg !1511
  %111 = load ptr, ptr %connection126, align 8, !dbg !1511, !tbaa !1332
  %keepalive127 = getelementptr inbounds %struct.conn_rec, ptr %111, i32 0, i32 22, !dbg !1512
  store i32 1, ptr %keepalive127, align 8, !dbg !1513, !tbaa !1357
  store i32 0, ptr %retval, align 4, !dbg !1514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1514

cleanup:                                          ; preds = %if.end125, %if.end105
  call void @llvm.lifetime.end.p0(i64 8, ptr %conn) #7, !dbg !1515
  call void @llvm.lifetime.end.p0(i64 4, ptr %wimpy) #7, !dbg !1515
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #7, !dbg !1515
  call void @llvm.lifetime.end.p0(i64 4, ptr %ka_sent) #7, !dbg !1515
  %112 = load i32, ptr %retval, align 4, !dbg !1515
  ret i32 %112, !dbg !1515
}

declare !dbg !1516 i32 @ap_find_token(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1519 ptr @apr_table_get(ptr noundef, ptr noundef) #2

declare !dbg !1524 i32 @ap_is_chunked(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @is_mpm_running() #0 !dbg !1527 {
entry:
  %retval = alloca i32, align 4
  %mpm_state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mpm_state) #7, !dbg !1532
  tail call void @llvm.dbg.declare(metadata ptr %mpm_state, metadata !1531, metadata !DIExpression()), !dbg !1533
  store i32 0, ptr %mpm_state, align 4, !dbg !1533, !tbaa !1249
  %call = call i32 @ap_mpm_query(i32 noundef 13, ptr noundef %mpm_state), !dbg !1534
  %tobool = icmp ne i32 %call, 0, !dbg !1534
  br i1 %tobool, label %if.then, label %if.end, !dbg !1536

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1537

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %mpm_state, align 4, !dbg !1539, !tbaa !1249
  %cmp = icmp eq i32 %0, 2, !dbg !1541
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1542

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1543

if.end2:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1545
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1545

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %mpm_state) #7, !dbg !1546
  %1 = load i32, ptr %retval, align 4, !dbg !1546
  ret i32 %1, !dbg !1546
}

declare !dbg !1547 void @apr_table_setn(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1550 ptr @apr_psprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !1554 void @apr_table_mergen(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_condition_if_match(ptr noundef %r, ptr noundef %headers) #0 !dbg !1555 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %headers.addr = alloca ptr, align 8
  %if_match = alloca ptr, align 8
  %etag = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1560, metadata !DIExpression()), !dbg !1564
  store ptr %headers, ptr %headers.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %headers.addr, metadata !1561, metadata !DIExpression()), !dbg !1565
  call void @llvm.lifetime.start.p0(i64 8, ptr %if_match) #7, !dbg !1566
  tail call void @llvm.dbg.declare(metadata ptr %if_match, metadata !1562, metadata !DIExpression()), !dbg !1567
  call void @llvm.lifetime.start.p0(i64 8, ptr %etag) #7, !dbg !1566
  tail call void @llvm.dbg.declare(metadata ptr %etag, metadata !1563, metadata !DIExpression()), !dbg !1568
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1569, !tbaa !1244
  %headers_in = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 34, !dbg !1571
  %1 = load ptr, ptr %headers_in, align 8, !dbg !1571, !tbaa !1351
  %call = call ptr @apr_table_get(ptr noundef %1, ptr noundef @.str.11), !dbg !1572
  store ptr %call, ptr %if_match, align 8, !dbg !1573, !tbaa !1244
  %cmp = icmp ne ptr %call, null, !dbg !1574
  br i1 %cmp, label %if.then, label %if.end, !dbg !1575

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %if_match, align 8, !dbg !1576, !tbaa !1244
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0, !dbg !1576
  %3 = load i8, ptr %arrayidx, align 1, !dbg !1576, !tbaa !1579
  %conv = sext i8 %3 to i32, !dbg !1576
  %cmp1 = icmp eq i32 %conv, 42, !dbg !1580
  br i1 %cmp1, label %if.then7, label %lor.lhs.false, !dbg !1581

lor.lhs.false:                                    ; preds = %if.then
  %4 = load ptr, ptr %headers.addr, align 8, !dbg !1582, !tbaa !1244
  %call3 = call ptr @apr_table_get(ptr noundef %4, ptr noundef @.str.12), !dbg !1583
  store ptr %call3, ptr %etag, align 8, !dbg !1584, !tbaa !1244
  %cmp4 = icmp ne ptr %call3, null, !dbg !1585
  br i1 %cmp4, label %land.lhs.true, label %if.else, !dbg !1586

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load ptr, ptr %r.addr, align 8, !dbg !1587, !tbaa !1244
  %pool = getelementptr inbounds %struct.request_rec, ptr %5, i32 0, i32 0, !dbg !1588
  %6 = load ptr, ptr %pool, align 8, !dbg !1588, !tbaa !1341
  %7 = load ptr, ptr %if_match, align 8, !dbg !1589, !tbaa !1244
  %8 = load ptr, ptr %etag, align 8, !dbg !1590, !tbaa !1244
  %call6 = call i32 @ap_find_etag_strong(ptr noundef %6, ptr noundef %7, ptr noundef %8), !dbg !1591
  %tobool = icmp ne i32 %call6, 0, !dbg !1591
  br i1 %tobool, label %if.then7, label %if.else, !dbg !1592

if.then7:                                         ; preds = %land.lhs.true, %if.then
  store i32 3, ptr %retval, align 4, !dbg !1593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1593

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  store i32 1, ptr %retval, align 4, !dbg !1595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1595

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1597

cleanup:                                          ; preds = %if.end, %if.else, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %etag) #7, !dbg !1598
  call void @llvm.lifetime.end.p0(i64 8, ptr %if_match) #7, !dbg !1598
  %9 = load i32, ptr %retval, align 4, !dbg !1598
  ret i32 %9, !dbg !1598
}

declare !dbg !1599 i32 @ap_find_etag_strong(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_condition_if_unmodified_since(ptr noundef %r, ptr noundef %headers) #0 !dbg !1600 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %headers.addr = alloca ptr, align 8
  %if_unmodified = alloca ptr, align 8
  %mtime = alloca i64, align 8
  %reqtime = alloca i64, align 8
  %ius = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1602, metadata !DIExpression()), !dbg !1610
  store ptr %headers, ptr %headers.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %headers.addr, metadata !1603, metadata !DIExpression()), !dbg !1611
  call void @llvm.lifetime.start.p0(i64 8, ptr %if_unmodified) #7, !dbg !1612
  tail call void @llvm.dbg.declare(metadata ptr %if_unmodified, metadata !1604, metadata !DIExpression()), !dbg !1613
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1614, !tbaa !1244
  %headers_in = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 34, !dbg !1615
  %1 = load ptr, ptr %headers_in, align 8, !dbg !1615, !tbaa !1351
  %call = call ptr @apr_table_get(ptr noundef %1, ptr noundef @.str.13), !dbg !1616
  store ptr %call, ptr %if_unmodified, align 8, !dbg !1617, !tbaa !1244
  %2 = load ptr, ptr %if_unmodified, align 8, !dbg !1618, !tbaa !1244
  %tobool = icmp ne ptr %2, null, !dbg !1618
  br i1 %tobool, label %if.then, label %if.end31, !dbg !1619

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %mtime) #7, !dbg !1620
  tail call void @llvm.dbg.declare(metadata ptr %mtime, metadata !1605, metadata !DIExpression()), !dbg !1621
  call void @llvm.lifetime.start.p0(i64 8, ptr %reqtime) #7, !dbg !1620
  tail call void @llvm.dbg.declare(metadata ptr %reqtime, metadata !1608, metadata !DIExpression()), !dbg !1622
  call void @llvm.lifetime.start.p0(i64 8, ptr %ius) #7, !dbg !1623
  tail call void @llvm.dbg.declare(metadata ptr %ius, metadata !1609, metadata !DIExpression()), !dbg !1624
  %3 = load ptr, ptr %if_unmodified, align 8, !dbg !1625, !tbaa !1244
  %call1 = call i64 @apr_date_parse_http(ptr noundef %3), !dbg !1625
  %div = sdiv i64 %call1, 1000000, !dbg !1625
  store i64 %div, ptr %ius, align 8, !dbg !1624, !tbaa !1626
  %4 = load ptr, ptr %headers.addr, align 8, !dbg !1627, !tbaa !1244
  %call2 = call ptr @apr_table_get(ptr noundef %4, ptr noundef @.str.14), !dbg !1627
  %call3 = call i64 @apr_date_parse_http(ptr noundef %call2), !dbg !1627
  %div4 = sdiv i64 %call3, 1000000, !dbg !1627
  store i64 %div4, ptr %mtime, align 8, !dbg !1628, !tbaa !1626
  %5 = load i64, ptr %mtime, align 8, !dbg !1629, !tbaa !1626
  %cmp = icmp eq i64 %5, 0, !dbg !1631
  br i1 %cmp, label %if.then5, label %if.end, !dbg !1632

if.then5:                                         ; preds = %if.then
  %6 = load ptr, ptr %r.addr, align 8, !dbg !1633, !tbaa !1244
  %mtime6 = getelementptr inbounds %struct.request_rec, ptr %6, i32 0, i32 23, !dbg !1633
  %7 = load i64, ptr %mtime6, align 8, !dbg !1633, !tbaa !1635
  %tobool7 = icmp ne i64 %7, 0, !dbg !1633
  br i1 %tobool7, label %cond.true, label %cond.false, !dbg !1633

cond.true:                                        ; preds = %if.then5
  %8 = load ptr, ptr %r.addr, align 8, !dbg !1633, !tbaa !1244
  %mtime8 = getelementptr inbounds %struct.request_rec, ptr %8, i32 0, i32 23, !dbg !1633
  %9 = load i64, ptr %mtime8, align 8, !dbg !1633, !tbaa !1635
  br label %cond.end, !dbg !1633

cond.false:                                       ; preds = %if.then5
  %call9 = call i64 @apr_time_now(), !dbg !1633
  br label %cond.end, !dbg !1633

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %call9, %cond.false ], !dbg !1633
  %div10 = sdiv i64 %cond, 1000000, !dbg !1633
  store i64 %div10, ptr %mtime, align 8, !dbg !1636, !tbaa !1626
  br label %if.end, !dbg !1637

if.end:                                           ; preds = %cond.end, %if.then
  %10 = load ptr, ptr %headers.addr, align 8, !dbg !1638, !tbaa !1244
  %call11 = call ptr @apr_table_get(ptr noundef %10, ptr noundef @.str.15), !dbg !1638
  %call12 = call i64 @apr_date_parse_http(ptr noundef %call11), !dbg !1638
  %div13 = sdiv i64 %call12, 1000000, !dbg !1638
  store i64 %div13, ptr %reqtime, align 8, !dbg !1639, !tbaa !1626
  %11 = load i64, ptr %reqtime, align 8, !dbg !1640, !tbaa !1626
  %tobool14 = icmp ne i64 %11, 0, !dbg !1640
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !1642

if.then15:                                        ; preds = %if.end
  %12 = load ptr, ptr %r.addr, align 8, !dbg !1643, !tbaa !1244
  %request_time = getelementptr inbounds %struct.request_rec, ptr %12, i32 0, i32 13, !dbg !1643
  %13 = load i64, ptr %request_time, align 8, !dbg !1643, !tbaa !1645
  %div16 = sdiv i64 %13, 1000000, !dbg !1643
  store i64 %div16, ptr %reqtime, align 8, !dbg !1646, !tbaa !1626
  br label %if.end17, !dbg !1647

if.end17:                                         ; preds = %if.then15, %if.end
  %14 = load i64, ptr %ius, align 8, !dbg !1648, !tbaa !1626
  %cmp18 = icmp ne i64 %14, 0, !dbg !1650
  br i1 %cmp18, label %land.lhs.true, label %if.else28, !dbg !1651

land.lhs.true:                                    ; preds = %if.end17
  %15 = load i64, ptr %mtime, align 8, !dbg !1652, !tbaa !1626
  %16 = load i64, ptr %ius, align 8, !dbg !1653, !tbaa !1626
  %cmp19 = icmp sgt i64 %15, %16, !dbg !1654
  br i1 %cmp19, label %if.then20, label %if.else28, !dbg !1655

if.then20:                                        ; preds = %land.lhs.true
  %17 = load i64, ptr %reqtime, align 8, !dbg !1656, !tbaa !1626
  %18 = load i64, ptr %mtime, align 8, !dbg !1659, !tbaa !1626
  %add = add nsw i64 %18, 60, !dbg !1660
  %cmp21 = icmp slt i64 %17, %add, !dbg !1661
  br i1 %cmp21, label %if.then22, label %if.else27, !dbg !1662

if.then22:                                        ; preds = %if.then20
  %19 = load ptr, ptr %r.addr, align 8, !dbg !1663, !tbaa !1244
  %headers_in23 = getelementptr inbounds %struct.request_rec, ptr %19, i32 0, i32 34, !dbg !1666
  %20 = load ptr, ptr %headers_in23, align 8, !dbg !1666, !tbaa !1351
  %call24 = call ptr @apr_table_get(ptr noundef %20, ptr noundef @.str.16), !dbg !1667
  %tobool25 = icmp ne ptr %call24, null, !dbg !1667
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !1668

if.then26:                                        ; preds = %if.then22
  store i32 1, ptr %retval, align 4, !dbg !1669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1669

if.else:                                          ; preds = %if.then22
  store i32 2, ptr %retval, align 4, !dbg !1671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1671

if.else27:                                        ; preds = %if.then20
  store i32 3, ptr %retval, align 4, !dbg !1673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1673

if.else28:                                        ; preds = %land.lhs.true, %if.end17
  store i32 1, ptr %retval, align 4, !dbg !1675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1675

cleanup:                                          ; preds = %if.else28, %if.else27, %if.else, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %ius) #7, !dbg !1677
  call void @llvm.lifetime.end.p0(i64 8, ptr %reqtime) #7, !dbg !1677
  call void @llvm.lifetime.end.p0(i64 8, ptr %mtime) #7, !dbg !1677
  br label %cleanup32

if.end31:                                         ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1678

cleanup32:                                        ; preds = %if.end31, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %if_unmodified) #7, !dbg !1679
  %21 = load i32, ptr %retval, align 4, !dbg !1679
  ret i32 %21, !dbg !1679
}

declare !dbg !1680 i64 @apr_date_parse_http(ptr noundef) #2

declare !dbg !1684 i64 @apr_time_now() #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_condition_if_none_match(ptr noundef %r, ptr noundef %headers) #0 !dbg !1687 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %headers.addr = alloca ptr, align 8
  %if_nonematch = alloca ptr, align 8
  %etag = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1689, metadata !DIExpression()), !dbg !1693
  store ptr %headers, ptr %headers.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %headers.addr, metadata !1690, metadata !DIExpression()), !dbg !1694
  call void @llvm.lifetime.start.p0(i64 8, ptr %if_nonematch) #7, !dbg !1695
  tail call void @llvm.dbg.declare(metadata ptr %if_nonematch, metadata !1691, metadata !DIExpression()), !dbg !1696
  call void @llvm.lifetime.start.p0(i64 8, ptr %etag) #7, !dbg !1695
  tail call void @llvm.dbg.declare(metadata ptr %etag, metadata !1692, metadata !DIExpression()), !dbg !1697
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1698, !tbaa !1244
  %headers_in = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 34, !dbg !1699
  %1 = load ptr, ptr %headers_in, align 8, !dbg !1699, !tbaa !1351
  %call = call ptr @apr_table_get(ptr noundef %1, ptr noundef @.str.17), !dbg !1700
  store ptr %call, ptr %if_nonematch, align 8, !dbg !1701, !tbaa !1244
  %2 = load ptr, ptr %if_nonematch, align 8, !dbg !1702, !tbaa !1244
  %cmp = icmp ne ptr %2, null, !dbg !1704
  br i1 %cmp, label %if.then, label %if.end35, !dbg !1705

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %if_nonematch, align 8, !dbg !1706, !tbaa !1244
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0, !dbg !1706
  %4 = load i8, ptr %arrayidx, align 1, !dbg !1706, !tbaa !1579
  %conv = sext i8 %4 to i32, !dbg !1706
  %cmp1 = icmp eq i32 %conv, 42, !dbg !1709
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !1710

if.then3:                                         ; preds = %if.then
  store i32 3, ptr %retval, align 4, !dbg !1711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1711

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %r.addr, align 8, !dbg !1713, !tbaa !1244
  %method_number = getelementptr inbounds %struct.request_rec, ptr %5, i32 0, i32 16, !dbg !1715
  %6 = load i32, ptr %method_number, align 4, !dbg !1715, !tbaa !1716
  %cmp4 = icmp eq i32 %6, 0, !dbg !1717
  br i1 %cmp4, label %if.then6, label %if.else25, !dbg !1718

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %headers.addr, align 8, !dbg !1719, !tbaa !1244
  %call7 = call ptr @apr_table_get(ptr noundef %7, ptr noundef @.str.12), !dbg !1722
  store ptr %call7, ptr %etag, align 8, !dbg !1723, !tbaa !1244
  %cmp8 = icmp ne ptr %call7, null, !dbg !1724
  br i1 %cmp8, label %if.then10, label %if.end24, !dbg !1725

if.then10:                                        ; preds = %if.then6
  %8 = load ptr, ptr %r.addr, align 8, !dbg !1726, !tbaa !1244
  %headers_in11 = getelementptr inbounds %struct.request_rec, ptr %8, i32 0, i32 34, !dbg !1729
  %9 = load ptr, ptr %headers_in11, align 8, !dbg !1729, !tbaa !1351
  %call12 = call ptr @apr_table_get(ptr noundef %9, ptr noundef @.str.16), !dbg !1730
  %tobool = icmp ne ptr %call12, null, !dbg !1730
  br i1 %tobool, label %if.then13, label %if.else, !dbg !1731

if.then13:                                        ; preds = %if.then10
  %10 = load ptr, ptr %r.addr, align 8, !dbg !1732, !tbaa !1244
  %pool = getelementptr inbounds %struct.request_rec, ptr %10, i32 0, i32 0, !dbg !1735
  %11 = load ptr, ptr %pool, align 8, !dbg !1735, !tbaa !1341
  %12 = load ptr, ptr %if_nonematch, align 8, !dbg !1736, !tbaa !1244
  %13 = load ptr, ptr %etag, align 8, !dbg !1737, !tbaa !1244
  %call14 = call i32 @ap_find_etag_strong(ptr noundef %11, ptr noundef %12, ptr noundef %13), !dbg !1738
  %tobool15 = icmp ne i32 %call14, 0, !dbg !1738
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1739

if.then16:                                        ; preds = %if.then13
  store i32 3, ptr %retval, align 4, !dbg !1740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1740

if.end17:                                         ; preds = %if.then13
  br label %if.end23, !dbg !1742

if.else:                                          ; preds = %if.then10
  %14 = load ptr, ptr %r.addr, align 8, !dbg !1743, !tbaa !1244
  %pool18 = getelementptr inbounds %struct.request_rec, ptr %14, i32 0, i32 0, !dbg !1746
  %15 = load ptr, ptr %pool18, align 8, !dbg !1746, !tbaa !1341
  %16 = load ptr, ptr %if_nonematch, align 8, !dbg !1747, !tbaa !1244
  %17 = load ptr, ptr %etag, align 8, !dbg !1748, !tbaa !1244
  %call19 = call i32 @ap_find_etag_weak(ptr noundef %15, ptr noundef %16, ptr noundef %17), !dbg !1749
  %tobool20 = icmp ne i32 %call19, 0, !dbg !1749
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !1750

if.then21:                                        ; preds = %if.else
  store i32 2, ptr %retval, align 4, !dbg !1751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1751

if.end22:                                         ; preds = %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end17
  br label %if.end24, !dbg !1753

if.end24:                                         ; preds = %if.end23, %if.then6
  br label %if.end34, !dbg !1754

if.else25:                                        ; preds = %if.end
  %18 = load ptr, ptr %headers.addr, align 8, !dbg !1755, !tbaa !1244
  %call26 = call ptr @apr_table_get(ptr noundef %18, ptr noundef @.str.12), !dbg !1757
  store ptr %call26, ptr %etag, align 8, !dbg !1758, !tbaa !1244
  %cmp27 = icmp ne ptr %call26, null, !dbg !1759
  br i1 %cmp27, label %land.lhs.true, label %if.end33, !dbg !1760

land.lhs.true:                                    ; preds = %if.else25
  %19 = load ptr, ptr %r.addr, align 8, !dbg !1761, !tbaa !1244
  %pool29 = getelementptr inbounds %struct.request_rec, ptr %19, i32 0, i32 0, !dbg !1762
  %20 = load ptr, ptr %pool29, align 8, !dbg !1762, !tbaa !1341
  %21 = load ptr, ptr %if_nonematch, align 8, !dbg !1763, !tbaa !1244
  %22 = load ptr, ptr %etag, align 8, !dbg !1764, !tbaa !1244
  %call30 = call i32 @ap_find_etag_strong(ptr noundef %20, ptr noundef %21, ptr noundef %22), !dbg !1765
  %tobool31 = icmp ne i32 %call30, 0, !dbg !1765
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !1766

if.then32:                                        ; preds = %land.lhs.true
  store i32 3, ptr %retval, align 4, !dbg !1767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1767

if.end33:                                         ; preds = %land.lhs.true, %if.else25
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end24
  store i32 1, ptr %retval, align 4, !dbg !1769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1769

if.end35:                                         ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1770

cleanup:                                          ; preds = %if.end35, %if.end34, %if.then32, %if.then21, %if.then16, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %etag) #7, !dbg !1771
  call void @llvm.lifetime.end.p0(i64 8, ptr %if_nonematch) #7, !dbg !1771
  %23 = load i32, ptr %retval, align 4, !dbg !1771
  ret i32 %23, !dbg !1771
}

declare !dbg !1772 i32 @ap_find_etag_weak(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_condition_if_modified_since(ptr noundef %r, ptr noundef %headers) #0 !dbg !1773 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %headers.addr = alloca ptr, align 8
  %if_modified_since = alloca ptr, align 8
  %mtime = alloca i64, align 8
  %ims = alloca i64, align 8
  %reqtime = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1775, metadata !DIExpression()), !dbg !1783
  store ptr %headers, ptr %headers.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %headers.addr, metadata !1776, metadata !DIExpression()), !dbg !1784
  call void @llvm.lifetime.start.p0(i64 8, ptr %if_modified_since) #7, !dbg !1785
  tail call void @llvm.dbg.declare(metadata ptr %if_modified_since, metadata !1777, metadata !DIExpression()), !dbg !1786
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1787, !tbaa !1244
  %headers_in = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 34, !dbg !1788
  %1 = load ptr, ptr %headers_in, align 8, !dbg !1788, !tbaa !1351
  %call = call ptr @apr_table_get(ptr noundef %1, ptr noundef @.str.18), !dbg !1789
  store ptr %call, ptr %if_modified_since, align 8, !dbg !1790, !tbaa !1244
  %cmp = icmp ne ptr %call, null, !dbg !1791
  br i1 %cmp, label %if.then, label %if.end31, !dbg !1792

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %mtime) #7, !dbg !1793
  tail call void @llvm.dbg.declare(metadata ptr %mtime, metadata !1778, metadata !DIExpression()), !dbg !1794
  call void @llvm.lifetime.start.p0(i64 8, ptr %ims) #7, !dbg !1795
  tail call void @llvm.dbg.declare(metadata ptr %ims, metadata !1781, metadata !DIExpression()), !dbg !1796
  call void @llvm.lifetime.start.p0(i64 8, ptr %reqtime) #7, !dbg !1795
  tail call void @llvm.dbg.declare(metadata ptr %reqtime, metadata !1782, metadata !DIExpression()), !dbg !1797
  %2 = load ptr, ptr %headers.addr, align 8, !dbg !1798, !tbaa !1244
  %call1 = call ptr @apr_table_get(ptr noundef %2, ptr noundef @.str.14), !dbg !1798
  %call2 = call i64 @apr_date_parse_http(ptr noundef %call1), !dbg !1798
  %div = sdiv i64 %call2, 1000000, !dbg !1798
  store i64 %div, ptr %mtime, align 8, !dbg !1799, !tbaa !1626
  %3 = load i64, ptr %mtime, align 8, !dbg !1800, !tbaa !1626
  %cmp3 = icmp eq i64 %3, 0, !dbg !1802
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1803

if.then4:                                         ; preds = %if.then
  %4 = load ptr, ptr %r.addr, align 8, !dbg !1804, !tbaa !1244
  %mtime5 = getelementptr inbounds %struct.request_rec, ptr %4, i32 0, i32 23, !dbg !1804
  %5 = load i64, ptr %mtime5, align 8, !dbg !1804, !tbaa !1635
  %tobool = icmp ne i64 %5, 0, !dbg !1804
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1804

cond.true:                                        ; preds = %if.then4
  %6 = load ptr, ptr %r.addr, align 8, !dbg !1804, !tbaa !1244
  %mtime6 = getelementptr inbounds %struct.request_rec, ptr %6, i32 0, i32 23, !dbg !1804
  %7 = load i64, ptr %mtime6, align 8, !dbg !1804, !tbaa !1635
  br label %cond.end, !dbg !1804

cond.false:                                       ; preds = %if.then4
  %call7 = call i64 @apr_time_now(), !dbg !1804
  br label %cond.end, !dbg !1804

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %call7, %cond.false ], !dbg !1804
  %div8 = sdiv i64 %cond, 1000000, !dbg !1804
  store i64 %div8, ptr %mtime, align 8, !dbg !1806, !tbaa !1626
  br label %if.end, !dbg !1807

if.end:                                           ; preds = %cond.end, %if.then
  %8 = load ptr, ptr %headers.addr, align 8, !dbg !1808, !tbaa !1244
  %call9 = call ptr @apr_table_get(ptr noundef %8, ptr noundef @.str.15), !dbg !1808
  %call10 = call i64 @apr_date_parse_http(ptr noundef %call9), !dbg !1808
  %div11 = sdiv i64 %call10, 1000000, !dbg !1808
  store i64 %div11, ptr %reqtime, align 8, !dbg !1809, !tbaa !1626
  %9 = load i64, ptr %reqtime, align 8, !dbg !1810, !tbaa !1626
  %tobool12 = icmp ne i64 %9, 0, !dbg !1810
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !1812

if.then13:                                        ; preds = %if.end
  %10 = load ptr, ptr %r.addr, align 8, !dbg !1813, !tbaa !1244
  %request_time = getelementptr inbounds %struct.request_rec, ptr %10, i32 0, i32 13, !dbg !1813
  %11 = load i64, ptr %request_time, align 8, !dbg !1813, !tbaa !1645
  %div14 = sdiv i64 %11, 1000000, !dbg !1813
  store i64 %div14, ptr %reqtime, align 8, !dbg !1815, !tbaa !1626
  br label %if.end15, !dbg !1816

if.end15:                                         ; preds = %if.then13, %if.end
  %12 = load ptr, ptr %if_modified_since, align 8, !dbg !1817, !tbaa !1244
  %call16 = call i64 @apr_date_parse_http(ptr noundef %12), !dbg !1817
  %div17 = sdiv i64 %call16, 1000000, !dbg !1817
  store i64 %div17, ptr %ims, align 8, !dbg !1818, !tbaa !1626
  %13 = load i64, ptr %ims, align 8, !dbg !1819, !tbaa !1626
  %14 = load i64, ptr %mtime, align 8, !dbg !1821, !tbaa !1626
  %cmp18 = icmp sge i64 %13, %14, !dbg !1822
  br i1 %cmp18, label %land.lhs.true, label %if.else28, !dbg !1823

land.lhs.true:                                    ; preds = %if.end15
  %15 = load i64, ptr %ims, align 8, !dbg !1824, !tbaa !1626
  %16 = load i64, ptr %reqtime, align 8, !dbg !1825, !tbaa !1626
  %cmp19 = icmp sle i64 %15, %16, !dbg !1826
  br i1 %cmp19, label %if.then20, label %if.else28, !dbg !1827

if.then20:                                        ; preds = %land.lhs.true
  %17 = load i64, ptr %reqtime, align 8, !dbg !1828, !tbaa !1626
  %18 = load i64, ptr %mtime, align 8, !dbg !1831, !tbaa !1626
  %add = add nsw i64 %18, 60, !dbg !1832
  %cmp21 = icmp slt i64 %17, %add, !dbg !1833
  br i1 %cmp21, label %if.then22, label %if.else27, !dbg !1834

if.then22:                                        ; preds = %if.then20
  %19 = load ptr, ptr %r.addr, align 8, !dbg !1835, !tbaa !1244
  %headers_in23 = getelementptr inbounds %struct.request_rec, ptr %19, i32 0, i32 34, !dbg !1838
  %20 = load ptr, ptr %headers_in23, align 8, !dbg !1838, !tbaa !1351
  %call24 = call ptr @apr_table_get(ptr noundef %20, ptr noundef @.str.16), !dbg !1839
  %tobool25 = icmp ne ptr %call24, null, !dbg !1839
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !1840

if.then26:                                        ; preds = %if.then22
  store i32 1, ptr %retval, align 4, !dbg !1841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1841

if.else:                                          ; preds = %if.then22
  store i32 2, ptr %retval, align 4, !dbg !1843
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1843

if.else27:                                        ; preds = %if.then20
  store i32 3, ptr %retval, align 4, !dbg !1845
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1845

if.else28:                                        ; preds = %land.lhs.true, %if.end15
  store i32 1, ptr %retval, align 4, !dbg !1847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1847

cleanup:                                          ; preds = %if.else28, %if.else27, %if.else, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %reqtime) #7, !dbg !1849
  call void @llvm.lifetime.end.p0(i64 8, ptr %ims) #7, !dbg !1849
  call void @llvm.lifetime.end.p0(i64 8, ptr %mtime) #7, !dbg !1849
  br label %cleanup32

if.end31:                                         ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1850

cleanup32:                                        ; preds = %if.end31, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %if_modified_since) #7, !dbg !1851
  %21 = load i32, ptr %retval, align 4, !dbg !1851
  ret i32 %21, !dbg !1851
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_condition_if_range(ptr noundef %r, ptr noundef %headers) #0 !dbg !1852 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %headers.addr = alloca ptr, align 8
  %if_range = alloca ptr, align 8
  %etag = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %mtime = alloca i64, align 8
  %rtime = alloca i64, align 8
  %reqtime = alloca i64, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1854, metadata !DIExpression()), !dbg !1865
  store ptr %headers, ptr %headers.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %headers.addr, metadata !1855, metadata !DIExpression()), !dbg !1866
  call void @llvm.lifetime.start.p0(i64 8, ptr %if_range) #7, !dbg !1867
  tail call void @llvm.dbg.declare(metadata ptr %if_range, metadata !1856, metadata !DIExpression()), !dbg !1868
  call void @llvm.lifetime.start.p0(i64 8, ptr %etag) #7, !dbg !1867
  tail call void @llvm.dbg.declare(metadata ptr %etag, metadata !1857, metadata !DIExpression()), !dbg !1869
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1870, !tbaa !1244
  %headers_in = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 34, !dbg !1871
  %1 = load ptr, ptr %headers_in, align 8, !dbg !1871, !tbaa !1351
  %call = call ptr @apr_table_get(ptr noundef %1, ptr noundef @.str.19), !dbg !1872
  store ptr %call, ptr %if_range, align 8, !dbg !1873, !tbaa !1244
  %tobool = icmp ne ptr %call, null, !dbg !1873
  br i1 %tobool, label %land.lhs.true, label %if.end42, !dbg !1874

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %r.addr, align 8, !dbg !1875, !tbaa !1244
  %headers_in1 = getelementptr inbounds %struct.request_rec, ptr %2, i32 0, i32 34, !dbg !1876
  %3 = load ptr, ptr %headers_in1, align 8, !dbg !1876, !tbaa !1351
  %call2 = call ptr @apr_table_get(ptr noundef %3, ptr noundef @.str.16), !dbg !1877
  %tobool3 = icmp ne ptr %call2, null, !dbg !1877
  br i1 %tobool3, label %if.then, label %if.end42, !dbg !1878

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %if_range, align 8, !dbg !1879, !tbaa !1244
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 0, !dbg !1879
  %5 = load i8, ptr %arrayidx, align 1, !dbg !1879, !tbaa !1579
  %conv = sext i8 %5 to i32, !dbg !1879
  %cmp = icmp eq i32 %conv, 34, !dbg !1880
  br i1 %cmp, label %if.then5, label %if.else12, !dbg !1881

if.then5:                                         ; preds = %if.then
  %6 = load ptr, ptr %headers.addr, align 8, !dbg !1882, !tbaa !1244
  %call6 = call ptr @apr_table_get(ptr noundef %6, ptr noundef @.str.12), !dbg !1885
  store ptr %call6, ptr %etag, align 8, !dbg !1886, !tbaa !1244
  %tobool7 = icmp ne ptr %call6, null, !dbg !1886
  br i1 %tobool7, label %land.lhs.true8, label %if.else, !dbg !1887

land.lhs.true8:                                   ; preds = %if.then5
  %7 = load ptr, ptr %if_range, align 8, !dbg !1888, !tbaa !1244
  %8 = load ptr, ptr %etag, align 8, !dbg !1889, !tbaa !1244
  %call9 = call i32 @strcmp(ptr noundef %7, ptr noundef %8) #8, !dbg !1890
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1890
  br i1 %tobool10, label %if.else, label %if.then11, !dbg !1891

if.then11:                                        ; preds = %land.lhs.true8
  store i32 3, ptr %retval, align 4, !dbg !1892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !1892

if.else:                                          ; preds = %land.lhs.true8, %if.then5
  store i32 1, ptr %retval, align 4, !dbg !1894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !1894

if.else12:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %mtime) #7, !dbg !1896
  tail call void @llvm.dbg.declare(metadata ptr %mtime, metadata !1858, metadata !DIExpression()), !dbg !1897
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtime) #7, !dbg !1898
  tail call void @llvm.dbg.declare(metadata ptr %rtime, metadata !1863, metadata !DIExpression()), !dbg !1899
  call void @llvm.lifetime.start.p0(i64 8, ptr %reqtime) #7, !dbg !1898
  tail call void @llvm.dbg.declare(metadata ptr %reqtime, metadata !1864, metadata !DIExpression()), !dbg !1900
  %9 = load ptr, ptr %headers.addr, align 8, !dbg !1901, !tbaa !1244
  %call13 = call ptr @apr_table_get(ptr noundef %9, ptr noundef @.str.14), !dbg !1901
  %call14 = call i64 @apr_date_parse_http(ptr noundef %call13), !dbg !1901
  %div = sdiv i64 %call14, 1000000, !dbg !1901
  store i64 %div, ptr %mtime, align 8, !dbg !1902, !tbaa !1626
  %10 = load i64, ptr %mtime, align 8, !dbg !1903, !tbaa !1626
  %cmp15 = icmp eq i64 %10, 0, !dbg !1905
  br i1 %cmp15, label %if.then17, label %if.end, !dbg !1906

if.then17:                                        ; preds = %if.else12
  %11 = load ptr, ptr %r.addr, align 8, !dbg !1907, !tbaa !1244
  %mtime18 = getelementptr inbounds %struct.request_rec, ptr %11, i32 0, i32 23, !dbg !1907
  %12 = load i64, ptr %mtime18, align 8, !dbg !1907, !tbaa !1635
  %tobool19 = icmp ne i64 %12, 0, !dbg !1907
  br i1 %tobool19, label %cond.true, label %cond.false, !dbg !1907

cond.true:                                        ; preds = %if.then17
  %13 = load ptr, ptr %r.addr, align 8, !dbg !1907, !tbaa !1244
  %mtime20 = getelementptr inbounds %struct.request_rec, ptr %13, i32 0, i32 23, !dbg !1907
  %14 = load i64, ptr %mtime20, align 8, !dbg !1907, !tbaa !1635
  br label %cond.end, !dbg !1907

cond.false:                                       ; preds = %if.then17
  %call21 = call i64 @apr_time_now(), !dbg !1907
  br label %cond.end, !dbg !1907

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %call21, %cond.false ], !dbg !1907
  %div22 = sdiv i64 %cond, 1000000, !dbg !1907
  store i64 %div22, ptr %mtime, align 8, !dbg !1909, !tbaa !1626
  br label %if.end, !dbg !1910

if.end:                                           ; preds = %cond.end, %if.else12
  %15 = load ptr, ptr %headers.addr, align 8, !dbg !1911, !tbaa !1244
  %call23 = call ptr @apr_table_get(ptr noundef %15, ptr noundef @.str.15), !dbg !1911
  %call24 = call i64 @apr_date_parse_http(ptr noundef %call23), !dbg !1911
  %div25 = sdiv i64 %call24, 1000000, !dbg !1911
  store i64 %div25, ptr %reqtime, align 8, !dbg !1912, !tbaa !1626
  %16 = load i64, ptr %reqtime, align 8, !dbg !1913, !tbaa !1626
  %tobool26 = icmp ne i64 %16, 0, !dbg !1913
  br i1 %tobool26, label %if.end29, label %if.then27, !dbg !1915

if.then27:                                        ; preds = %if.end
  %17 = load ptr, ptr %r.addr, align 8, !dbg !1916, !tbaa !1244
  %request_time = getelementptr inbounds %struct.request_rec, ptr %17, i32 0, i32 13, !dbg !1916
  %18 = load i64, ptr %request_time, align 8, !dbg !1916, !tbaa !1645
  %div28 = sdiv i64 %18, 1000000, !dbg !1916
  store i64 %div28, ptr %reqtime, align 8, !dbg !1918, !tbaa !1626
  br label %if.end29, !dbg !1919

if.end29:                                         ; preds = %if.then27, %if.end
  %19 = load ptr, ptr %if_range, align 8, !dbg !1920, !tbaa !1244
  %call30 = call i64 @apr_date_parse_http(ptr noundef %19), !dbg !1920
  %div31 = sdiv i64 %call30, 1000000, !dbg !1920
  store i64 %div31, ptr %rtime, align 8, !dbg !1921, !tbaa !1626
  %20 = load i64, ptr %rtime, align 8, !dbg !1922, !tbaa !1626
  %21 = load i64, ptr %mtime, align 8, !dbg !1924, !tbaa !1626
  %cmp32 = icmp eq i64 %20, %21, !dbg !1925
  br i1 %cmp32, label %if.then34, label %if.else39, !dbg !1926

if.then34:                                        ; preds = %if.end29
  %22 = load i64, ptr %reqtime, align 8, !dbg !1927, !tbaa !1626
  %23 = load i64, ptr %mtime, align 8, !dbg !1930, !tbaa !1626
  %add = add nsw i64 %23, 60, !dbg !1931
  %cmp35 = icmp slt i64 %22, %add, !dbg !1932
  br i1 %cmp35, label %if.then37, label %if.else38, !dbg !1933

if.then37:                                        ; preds = %if.then34
  store i32 1, ptr %retval, align 4, !dbg !1934
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1934

if.else38:                                        ; preds = %if.then34
  store i32 3, ptr %retval, align 4, !dbg !1936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1936

if.else39:                                        ; preds = %if.end29
  store i32 1, ptr %retval, align 4, !dbg !1938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1938

cleanup:                                          ; preds = %if.else39, %if.else38, %if.then37
  call void @llvm.lifetime.end.p0(i64 8, ptr %reqtime) #7, !dbg !1940
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtime) #7, !dbg !1940
  call void @llvm.lifetime.end.p0(i64 8, ptr %mtime) #7, !dbg !1940
  br label %cleanup43

if.end42:                                         ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !1941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !1941

cleanup43:                                        ; preds = %if.end42, %cleanup, %if.else, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %etag) #7, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 8, ptr %if_range) #7, !dbg !1942
  %24 = load i32, ptr %retval, align 4, !dbg !1942
  ret i32 %24, !dbg !1942
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1943 i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_meets_conditions(ptr noundef %r) #0 !dbg !1947 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %not_modified = alloca i32, align 4
  %cond = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1949, metadata !DIExpression()), !dbg !1952
  call void @llvm.lifetime.start.p0(i64 4, ptr %not_modified) #7, !dbg !1953
  tail call void @llvm.dbg.declare(metadata ptr %not_modified, metadata !1950, metadata !DIExpression()), !dbg !1954
  store i32 -1, ptr %not_modified, align 4, !dbg !1954, !tbaa !1249
  call void @llvm.lifetime.start.p0(i64 4, ptr %cond) #7, !dbg !1955
  tail call void @llvm.dbg.declare(metadata ptr %cond, metadata !1951, metadata !DIExpression()), !dbg !1956
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1957, !tbaa !1244
  %status = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 15, !dbg !1957
  %1 = load i32, ptr %status, align 8, !dbg !1957, !tbaa !1369
  %cmp = icmp sge i32 %1, 200, !dbg !1957
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !1957

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %r.addr, align 8, !dbg !1957, !tbaa !1244
  %status1 = getelementptr inbounds %struct.request_rec, ptr %2, i32 0, i32 15, !dbg !1957
  %3 = load i32, ptr %status1, align 8, !dbg !1957, !tbaa !1369
  %cmp2 = icmp slt i32 %3, 300, !dbg !1957
  br i1 %cmp2, label %lor.lhs.false, label %if.then, !dbg !1959

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load ptr, ptr %r.addr, align 8, !dbg !1960, !tbaa !1244
  %no_local_copy = getelementptr inbounds %struct.request_rec, ptr %4, i32 0, i32 64, !dbg !1961
  %5 = load i32, ptr %no_local_copy, align 4, !dbg !1961, !tbaa !1962
  %tobool = icmp ne i32 %5, 0, !dbg !1960
  br i1 %tobool, label %if.then, label %if.end, !dbg !1963

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !1964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1964

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %r.addr, align 8, !dbg !1966, !tbaa !1244
  %7 = load ptr, ptr %r.addr, align 8, !dbg !1967, !tbaa !1244
  %headers_out = getelementptr inbounds %struct.request_rec, ptr %7, i32 0, i32 35, !dbg !1968
  %8 = load ptr, ptr %headers_out, align 8, !dbg !1968, !tbaa !1344
  %call = call i32 @ap_condition_if_match(ptr noundef %6, ptr noundef %8), !dbg !1969
  store i32 %call, ptr %cond, align 4, !dbg !1970, !tbaa !1579
  %9 = load i32, ptr %cond, align 4, !dbg !1971, !tbaa !1579
  %cmp3 = icmp eq i32 1, %9, !dbg !1973
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1974

if.then4:                                         ; preds = %if.end
  store i32 412, ptr %retval, align 4, !dbg !1975
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1975

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %r.addr, align 8, !dbg !1977, !tbaa !1244
  %11 = load ptr, ptr %r.addr, align 8, !dbg !1978, !tbaa !1244
  %headers_out6 = getelementptr inbounds %struct.request_rec, ptr %11, i32 0, i32 35, !dbg !1979
  %12 = load ptr, ptr %headers_out6, align 8, !dbg !1979, !tbaa !1344
  %call7 = call i32 @ap_condition_if_unmodified_since(ptr noundef %10, ptr noundef %12), !dbg !1980
  store i32 %call7, ptr %cond, align 4, !dbg !1981, !tbaa !1579
  %13 = load i32, ptr %cond, align 4, !dbg !1982, !tbaa !1579
  %cmp8 = icmp eq i32 1, %13, !dbg !1984
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !1985

if.then9:                                         ; preds = %if.end5
  store i32 0, ptr %not_modified, align 4, !dbg !1986, !tbaa !1249
  br label %if.end13, !dbg !1988

if.else:                                          ; preds = %if.end5
  %14 = load i32, ptr %cond, align 4, !dbg !1989, !tbaa !1579
  %cmp10 = icmp uge i32 %14, 2, !dbg !1991
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1992

if.then11:                                        ; preds = %if.else
  store i32 412, ptr %retval, align 4, !dbg !1993
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1993

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then9
  %15 = load ptr, ptr %r.addr, align 8, !dbg !1995, !tbaa !1244
  %16 = load ptr, ptr %r.addr, align 8, !dbg !1996, !tbaa !1244
  %headers_out14 = getelementptr inbounds %struct.request_rec, ptr %16, i32 0, i32 35, !dbg !1997
  %17 = load ptr, ptr %headers_out14, align 8, !dbg !1997, !tbaa !1344
  %call15 = call i32 @ap_condition_if_none_match(ptr noundef %15, ptr noundef %17), !dbg !1998
  store i32 %call15, ptr %cond, align 4, !dbg !1999, !tbaa !1579
  %18 = load i32, ptr %cond, align 4, !dbg !2000, !tbaa !1579
  %cmp16 = icmp eq i32 1, %18, !dbg !2002
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !2003

if.then17:                                        ; preds = %if.end13
  store i32 0, ptr %not_modified, align 4, !dbg !2004, !tbaa !1249
  br label %if.end29, !dbg !2006

if.else18:                                        ; preds = %if.end13
  %19 = load i32, ptr %cond, align 4, !dbg !2007, !tbaa !1579
  %cmp19 = icmp uge i32 %19, 2, !dbg !2009
  br i1 %cmp19, label %if.then20, label %if.end28, !dbg !2010

if.then20:                                        ; preds = %if.else18
  %20 = load ptr, ptr %r.addr, align 8, !dbg !2011, !tbaa !1244
  %method_number = getelementptr inbounds %struct.request_rec, ptr %20, i32 0, i32 16, !dbg !2014
  %21 = load i32, ptr %method_number, align 4, !dbg !2014, !tbaa !1716
  %cmp21 = icmp eq i32 %21, 0, !dbg !2015
  br i1 %cmp21, label %if.then22, label %if.else26, !dbg !2016

if.then22:                                        ; preds = %if.then20
  %22 = load i32, ptr %not_modified, align 4, !dbg !2017, !tbaa !1249
  %tobool23 = icmp ne i32 %22, 0, !dbg !2017
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !2020

if.then24:                                        ; preds = %if.then22
  store i32 1, ptr %not_modified, align 4, !dbg !2021, !tbaa !1249
  br label %if.end25, !dbg !2023

if.end25:                                         ; preds = %if.then24, %if.then22
  br label %if.end27, !dbg !2024

if.else26:                                        ; preds = %if.then20
  store i32 412, ptr %retval, align 4, !dbg !2025
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2025

if.end27:                                         ; preds = %if.end25
  br label %if.end28, !dbg !2027

if.end28:                                         ; preds = %if.end27, %if.else18
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then17
  %23 = load ptr, ptr %r.addr, align 8, !dbg !2028, !tbaa !1244
  %24 = load ptr, ptr %r.addr, align 8, !dbg !2029, !tbaa !1244
  %headers_out30 = getelementptr inbounds %struct.request_rec, ptr %24, i32 0, i32 35, !dbg !2030
  %25 = load ptr, ptr %headers_out30, align 8, !dbg !2030, !tbaa !1344
  %call31 = call i32 @ap_condition_if_modified_since(ptr noundef %23, ptr noundef %25), !dbg !2031
  store i32 %call31, ptr %cond, align 4, !dbg !2032, !tbaa !1579
  %26 = load i32, ptr %cond, align 4, !dbg !2033, !tbaa !1579
  %cmp32 = icmp eq i32 1, %26, !dbg !2035
  br i1 %cmp32, label %if.then33, label %if.else34, !dbg !2036

if.then33:                                        ; preds = %if.end29
  store i32 0, ptr %not_modified, align 4, !dbg !2037, !tbaa !1249
  br label %if.end45, !dbg !2039

if.else34:                                        ; preds = %if.end29
  %27 = load i32, ptr %cond, align 4, !dbg !2040, !tbaa !1579
  %cmp35 = icmp uge i32 %27, 2, !dbg !2042
  br i1 %cmp35, label %if.then36, label %if.end44, !dbg !2043

if.then36:                                        ; preds = %if.else34
  %28 = load ptr, ptr %r.addr, align 8, !dbg !2044, !tbaa !1244
  %method_number37 = getelementptr inbounds %struct.request_rec, ptr %28, i32 0, i32 16, !dbg !2047
  %29 = load i32, ptr %method_number37, align 4, !dbg !2047, !tbaa !1716
  %cmp38 = icmp eq i32 %29, 0, !dbg !2048
  br i1 %cmp38, label %if.then39, label %if.end43, !dbg !2049

if.then39:                                        ; preds = %if.then36
  %30 = load i32, ptr %not_modified, align 4, !dbg !2050, !tbaa !1249
  %tobool40 = icmp ne i32 %30, 0, !dbg !2050
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !2053

if.then41:                                        ; preds = %if.then39
  store i32 1, ptr %not_modified, align 4, !dbg !2054, !tbaa !1249
  br label %if.end42, !dbg !2056

if.end42:                                         ; preds = %if.then41, %if.then39
  br label %if.end43, !dbg !2057

if.end43:                                         ; preds = %if.end42, %if.then36
  br label %if.end44, !dbg !2058

if.end44:                                         ; preds = %if.end43, %if.else34
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then33
  %31 = load ptr, ptr %r.addr, align 8, !dbg !2059, !tbaa !1244
  %32 = load ptr, ptr %r.addr, align 8, !dbg !2060, !tbaa !1244
  %headers_out46 = getelementptr inbounds %struct.request_rec, ptr %32, i32 0, i32 35, !dbg !2061
  %33 = load ptr, ptr %headers_out46, align 8, !dbg !2061, !tbaa !1344
  %call47 = call i32 @ap_condition_if_range(ptr noundef %31, ptr noundef %33), !dbg !2062
  store i32 %call47, ptr %cond, align 4, !dbg !2063, !tbaa !1579
  %34 = load i32, ptr %cond, align 4, !dbg !2064, !tbaa !1579
  %cmp48 = icmp ugt i32 %34, 0, !dbg !2066
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2067

if.then49:                                        ; preds = %if.end45
  store i32 0, ptr %retval, align 4, !dbg !2068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2068

if.end50:                                         ; preds = %if.end45
  %35 = load i32, ptr %not_modified, align 4, !dbg !2070, !tbaa !1249
  %cmp51 = icmp eq i32 %35, 1, !dbg !2072
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2073

if.then52:                                        ; preds = %if.end50
  store i32 304, ptr %retval, align 4, !dbg !2074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2074

if.end53:                                         ; preds = %if.end50
  store i32 0, ptr %retval, align 4, !dbg !2076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2076

cleanup:                                          ; preds = %if.end53, %if.then52, %if.then49, %if.else26, %if.then11, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cond) #7, !dbg !2077
  call void @llvm.lifetime.end.p0(i64 4, ptr %not_modified) #7, !dbg !2077
  %36 = load i32, ptr %retval, align 4, !dbg !2077
  ret i32 %36, !dbg !2077
}

; Function Attrs: nounwind uwtable
define dso_local void @ap_method_registry_init(ptr noundef %p) #0 !dbg !2078 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2082, metadata !DIExpression()), !dbg !2083
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2084, !tbaa !1244
  %call = call ptr @apr_hash_make(ptr noundef %0), !dbg !2085
  store ptr %call, ptr @methods_registry, align 8, !dbg !2086, !tbaa !1244
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2087, !tbaa !1244
  call void @apr_pool_cleanup_register(ptr noundef %1, ptr noundef null, ptr noundef @ap_method_registry_destroy, ptr noundef @apr_pool_cleanup_null), !dbg !2088
  %2 = load ptr, ptr %p.addr, align 8, !dbg !2089, !tbaa !1244
  call void @register_one_method(ptr noundef %2, ptr noundef @.str.20, i32 noundef 0), !dbg !2090
  %3 = load ptr, ptr %p.addr, align 8, !dbg !2091, !tbaa !1244
  call void @register_one_method(ptr noundef %3, ptr noundef @.str.21, i32 noundef 0), !dbg !2092
  %4 = load ptr, ptr %p.addr, align 8, !dbg !2093, !tbaa !1244
  call void @register_one_method(ptr noundef %4, ptr noundef @.str.22, i32 noundef 1), !dbg !2094
  %5 = load ptr, ptr %p.addr, align 8, !dbg !2095, !tbaa !1244
  call void @register_one_method(ptr noundef %5, ptr noundef @.str.23, i32 noundef 2), !dbg !2096
  %6 = load ptr, ptr %p.addr, align 8, !dbg !2097, !tbaa !1244
  call void @register_one_method(ptr noundef %6, ptr noundef @.str.24, i32 noundef 3), !dbg !2098
  %7 = load ptr, ptr %p.addr, align 8, !dbg !2099, !tbaa !1244
  call void @register_one_method(ptr noundef %7, ptr noundef @.str.25, i32 noundef 4), !dbg !2100
  %8 = load ptr, ptr %p.addr, align 8, !dbg !2101, !tbaa !1244
  call void @register_one_method(ptr noundef %8, ptr noundef @.str.26, i32 noundef 5), !dbg !2102
  %9 = load ptr, ptr %p.addr, align 8, !dbg !2103, !tbaa !1244
  call void @register_one_method(ptr noundef %9, ptr noundef @.str.27, i32 noundef 6), !dbg !2104
  %10 = load ptr, ptr %p.addr, align 8, !dbg !2105, !tbaa !1244
  call void @register_one_method(ptr noundef %10, ptr noundef @.str.28, i32 noundef 7), !dbg !2106
  %11 = load ptr, ptr %p.addr, align 8, !dbg !2107, !tbaa !1244
  call void @register_one_method(ptr noundef %11, ptr noundef @.str.29, i32 noundef 8), !dbg !2108
  %12 = load ptr, ptr %p.addr, align 8, !dbg !2109, !tbaa !1244
  call void @register_one_method(ptr noundef %12, ptr noundef @.str.30, i32 noundef 9), !dbg !2110
  %13 = load ptr, ptr %p.addr, align 8, !dbg !2111, !tbaa !1244
  call void @register_one_method(ptr noundef %13, ptr noundef @.str.31, i32 noundef 10), !dbg !2112
  %14 = load ptr, ptr %p.addr, align 8, !dbg !2113, !tbaa !1244
  call void @register_one_method(ptr noundef %14, ptr noundef @.str.32, i32 noundef 11), !dbg !2114
  %15 = load ptr, ptr %p.addr, align 8, !dbg !2115, !tbaa !1244
  call void @register_one_method(ptr noundef %15, ptr noundef @.str.33, i32 noundef 12), !dbg !2116
  %16 = load ptr, ptr %p.addr, align 8, !dbg !2117, !tbaa !1244
  call void @register_one_method(ptr noundef %16, ptr noundef @.str.34, i32 noundef 13), !dbg !2118
  %17 = load ptr, ptr %p.addr, align 8, !dbg !2119, !tbaa !1244
  call void @register_one_method(ptr noundef %17, ptr noundef @.str.35, i32 noundef 14), !dbg !2120
  %18 = load ptr, ptr %p.addr, align 8, !dbg !2121, !tbaa !1244
  call void @register_one_method(ptr noundef %18, ptr noundef @.str.36, i32 noundef 15), !dbg !2122
  %19 = load ptr, ptr %p.addr, align 8, !dbg !2123, !tbaa !1244
  call void @register_one_method(ptr noundef %19, ptr noundef @.str.37, i32 noundef 16), !dbg !2124
  %20 = load ptr, ptr %p.addr, align 8, !dbg !2125, !tbaa !1244
  call void @register_one_method(ptr noundef %20, ptr noundef @.str.38, i32 noundef 17), !dbg !2126
  %21 = load ptr, ptr %p.addr, align 8, !dbg !2127, !tbaa !1244
  call void @register_one_method(ptr noundef %21, ptr noundef @.str.39, i32 noundef 18), !dbg !2128
  %22 = load ptr, ptr %p.addr, align 8, !dbg !2129, !tbaa !1244
  call void @register_one_method(ptr noundef %22, ptr noundef @.str.40, i32 noundef 19), !dbg !2130
  %23 = load ptr, ptr %p.addr, align 8, !dbg !2131, !tbaa !1244
  call void @register_one_method(ptr noundef %23, ptr noundef @.str.41, i32 noundef 20), !dbg !2132
  %24 = load ptr, ptr %p.addr, align 8, !dbg !2133, !tbaa !1244
  call void @register_one_method(ptr noundef %24, ptr noundef @.str.42, i32 noundef 21), !dbg !2134
  %25 = load ptr, ptr %p.addr, align 8, !dbg !2135, !tbaa !1244
  call void @register_one_method(ptr noundef %25, ptr noundef @.str.43, i32 noundef 22), !dbg !2136
  %26 = load ptr, ptr %p.addr, align 8, !dbg !2137, !tbaa !1244
  call void @register_one_method(ptr noundef %26, ptr noundef @.str.44, i32 noundef 23), !dbg !2138
  %27 = load ptr, ptr %p.addr, align 8, !dbg !2139, !tbaa !1244
  call void @register_one_method(ptr noundef %27, ptr noundef @.str.45, i32 noundef 24), !dbg !2140
  %28 = load ptr, ptr %p.addr, align 8, !dbg !2141, !tbaa !1244
  call void @register_one_method(ptr noundef %28, ptr noundef @.str.46, i32 noundef 25), !dbg !2142
  ret void, !dbg !2143
}

declare !dbg !2144 ptr @apr_hash_make(ptr noundef) #2

declare !dbg !2147 void @apr_pool_cleanup_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @ap_method_registry_destroy(ptr noundef %notused) #0 !dbg !2155 {
entry:
  %notused.addr = alloca ptr, align 8
  store ptr %notused, ptr %notused.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %notused.addr, metadata !2157, metadata !DIExpression()), !dbg !2158
  store ptr null, ptr @methods_registry, align 8, !dbg !2159, !tbaa !1244
  store i32 27, ptr @cur_method_number, align 4, !dbg !2160, !tbaa !1249
  ret i32 0, !dbg !2161
}

declare i32 @apr_pool_cleanup_null(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @register_one_method(ptr noundef %p, ptr noundef %methname, i32 noundef %methnum) #0 !dbg !2162 {
entry:
  %p.addr = alloca ptr, align 8
  %methname.addr = alloca ptr, align 8
  %methnum.addr = alloca i32, align 4
  %pnum = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2166, metadata !DIExpression()), !dbg !2170
  store ptr %methname, ptr %methname.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %methname.addr, metadata !2167, metadata !DIExpression()), !dbg !2171
  store i32 %methnum, ptr %methnum.addr, align 4, !tbaa !1249
  tail call void @llvm.dbg.declare(metadata ptr %methnum.addr, metadata !2168, metadata !DIExpression()), !dbg !2172
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnum) #7, !dbg !2173
  tail call void @llvm.dbg.declare(metadata ptr %pnum, metadata !2169, metadata !DIExpression()), !dbg !2174
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2175, !tbaa !1244
  %call = call ptr @apr_palloc(ptr noundef %0, i64 noundef 4), !dbg !2176
  store ptr %call, ptr %pnum, align 8, !dbg !2174, !tbaa !1244
  %1 = load i32, ptr %methnum.addr, align 4, !dbg !2177, !tbaa !1249
  %2 = load ptr, ptr %pnum, align 8, !dbg !2178, !tbaa !1244
  store i32 %1, ptr %2, align 4, !dbg !2179, !tbaa !1249
  %3 = load ptr, ptr @methods_registry, align 8, !dbg !2180, !tbaa !1244
  %4 = load ptr, ptr %methname.addr, align 8, !dbg !2181, !tbaa !1244
  %5 = load ptr, ptr %pnum, align 8, !dbg !2182, !tbaa !1244
  call void @apr_hash_set(ptr noundef %3, ptr noundef %4, i64 noundef -1, ptr noundef %5), !dbg !2183
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnum) #7, !dbg !2184
  ret void, !dbg !2184
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_method_register(ptr noundef %p, ptr noundef %methname) #0 !dbg !2185 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %methname.addr = alloca ptr, align 8
  %methnum = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2187, metadata !DIExpression()), !dbg !2190
  store ptr %methname, ptr %methname.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %methname.addr, metadata !2188, metadata !DIExpression()), !dbg !2191
  call void @llvm.lifetime.start.p0(i64 8, ptr %methnum) #7, !dbg !2192
  tail call void @llvm.dbg.declare(metadata ptr %methnum, metadata !2189, metadata !DIExpression()), !dbg !2193
  %0 = load ptr, ptr @methods_registry, align 8, !dbg !2194, !tbaa !1244
  %cmp = icmp eq ptr %0, null, !dbg !2196
  br i1 %cmp, label %if.then, label %if.end, !dbg !2197

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2198, !tbaa !1244
  call void @ap_method_registry_init(ptr noundef %1), !dbg !2200
  br label %if.end, !dbg !2201

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %methname.addr, align 8, !dbg !2202, !tbaa !1244
  %cmp1 = icmp eq ptr %2, null, !dbg !2204
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2205

if.then2:                                         ; preds = %if.end
  store i32 26, ptr %retval, align 4, !dbg !2206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2206

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr @methods_registry, align 8, !dbg !2208, !tbaa !1244
  %4 = load ptr, ptr %methname.addr, align 8, !dbg !2209, !tbaa !1244
  %call = call ptr @apr_hash_get(ptr noundef %3, ptr noundef %4, i64 noundef -1), !dbg !2210
  store ptr %call, ptr %methnum, align 8, !dbg !2211, !tbaa !1244
  %5 = load ptr, ptr %methnum, align 8, !dbg !2212, !tbaa !1244
  %cmp4 = icmp ne ptr %5, null, !dbg !2214
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2215

if.then5:                                         ; preds = %if.end3
  %6 = load ptr, ptr %methnum, align 8, !dbg !2216, !tbaa !1244
  %7 = load i32, ptr %6, align 4, !dbg !2217, !tbaa !1249
  store i32 %7, ptr %retval, align 4, !dbg !2218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2218

if.end6:                                          ; preds = %if.end3
  %8 = load i32, ptr @cur_method_number, align 4, !dbg !2219, !tbaa !1249
  %cmp7 = icmp sgt i32 %8, 62, !dbg !2221
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2222

if.then8:                                         ; preds = %if.end6
  br i1 icmp ne (ptr getelementptr (i8, ptr @http_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !2223

cond.true:                                        ; preds = %if.then8
  %9 = load i32, ptr getelementptr (i8, ptr @http_module, i64 8), align 4, !dbg !2223, !tbaa !1249
  br label %cond.end, !dbg !2223

cond.false:                                       ; preds = %if.then8
  br label %cond.end, !dbg !2223

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ -1, %cond.false ], !dbg !2223
  %10 = load ptr, ptr %p.addr, align 8, !dbg !2225, !tbaa !1244
  %11 = load ptr, ptr %methname.addr, align 8, !dbg !2226, !tbaa !1244
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_perror_(ptr noundef @.str.47, i32 noundef 745, i32 noundef %cond, i32 noundef 3, i32 noundef 0, ptr noundef %10, ptr noundef @.str.48, i32 noundef 62, ptr noundef %11), !dbg !2227
  store i32 26, ptr %retval, align 4, !dbg !2228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2228

if.end9:                                          ; preds = %if.end6
  %12 = load ptr, ptr %p.addr, align 8, !dbg !2229, !tbaa !1244
  %13 = load ptr, ptr %methname.addr, align 8, !dbg !2230, !tbaa !1244
  %14 = load i32, ptr @cur_method_number, align 4, !dbg !2231, !tbaa !1249
  call void @register_one_method(ptr noundef %12, ptr noundef %13, i32 noundef %14), !dbg !2232
  %15 = load i32, ptr @cur_method_number, align 4, !dbg !2233, !tbaa !1249
  %inc = add nsw i32 %15, 1, !dbg !2233
  store i32 %inc, ptr @cur_method_number, align 4, !dbg !2233, !tbaa !1249
  store i32 %15, ptr %retval, align 4, !dbg !2234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2234

cleanup:                                          ; preds = %if.end9, %cond.end, %if.then5, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %methnum) #7, !dbg !2235
  %16 = load i32, ptr %retval, align 4, !dbg !2235
  ret i32 %16, !dbg !2235
}

declare !dbg !2236 ptr @apr_hash_get(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !2242 void @ap_log_perror_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_method_number_of(ptr noundef %method) #0 !dbg !2246 {
entry:
  %retval = alloca i32, align 4
  %method.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %which = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %methnum = alloca ptr, align 8
  store ptr %method, ptr %method.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %method.addr, metadata !2250, metadata !DIExpression()), !dbg !2256
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #7, !dbg !2257
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !2251, metadata !DIExpression()), !dbg !2258
  %0 = load ptr, ptr %method.addr, align 8, !dbg !2259, !tbaa !1244
  %call = call i64 @strlen(ptr noundef %0) #8, !dbg !2260
  %conv = trunc i64 %call to i32, !dbg !2260
  store i32 %conv, ptr %len, align 4, !dbg !2258, !tbaa !1249
  call void @llvm.lifetime.start.p0(i64 4, ptr %which) #7, !dbg !2261
  tail call void @llvm.dbg.declare(metadata ptr %which, metadata !2252, metadata !DIExpression()), !dbg !2262
  %1 = load ptr, ptr %method.addr, align 8, !dbg !2263, !tbaa !1244
  %2 = load i32, ptr %len, align 4, !dbg !2264, !tbaa !1249
  %conv1 = sext i32 %2 to i64, !dbg !2264
  %call2 = call i32 @lookup_builtin_method(ptr noundef %1, i64 noundef %conv1), !dbg !2265
  store i32 %call2, ptr %which, align 4, !dbg !2262, !tbaa !1249
  %3 = load i32, ptr %which, align 4, !dbg !2266, !tbaa !1249
  %cmp = icmp ne i32 %3, -1, !dbg !2268
  br i1 %cmp, label %if.then, label %if.end, !dbg !2269

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %which, align 4, !dbg !2270, !tbaa !1249
  store i32 %4, ptr %retval, align 4, !dbg !2271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14, !dbg !2271

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr @methods_registry, align 8, !dbg !2272, !tbaa !1244
  %cmp4 = icmp ne ptr %5, null, !dbg !2273
  br i1 %cmp4, label %if.then6, label %if.end13, !dbg !2274

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %methnum) #7, !dbg !2275
  tail call void @llvm.dbg.declare(metadata ptr %methnum, metadata !2253, metadata !DIExpression()), !dbg !2276
  %6 = load ptr, ptr @methods_registry, align 8, !dbg !2277, !tbaa !1244
  %7 = load ptr, ptr %method.addr, align 8, !dbg !2278, !tbaa !1244
  %8 = load i32, ptr %len, align 4, !dbg !2279, !tbaa !1249
  %conv7 = sext i32 %8 to i64, !dbg !2279
  %call8 = call ptr @apr_hash_get(ptr noundef %6, ptr noundef %7, i64 noundef %conv7), !dbg !2280
  store ptr %call8, ptr %methnum, align 8, !dbg !2276, !tbaa !1244
  %9 = load ptr, ptr %methnum, align 8, !dbg !2281, !tbaa !1244
  %cmp9 = icmp ne ptr %9, null, !dbg !2283
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !2284

if.then11:                                        ; preds = %if.then6
  %10 = load ptr, ptr %methnum, align 8, !dbg !2285, !tbaa !1244
  %11 = load i32, ptr %10, align 4, !dbg !2287, !tbaa !1249
  store i32 %11, ptr %retval, align 4, !dbg !2288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2288

if.end12:                                         ; preds = %if.then6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2289
  br label %cleanup, !dbg !2289

cleanup:                                          ; preds = %if.end12, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %methnum) #7, !dbg !2289
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end13, !dbg !2290

if.end13:                                         ; preds = %cleanup.cont, %if.end
  store i32 26, ptr %retval, align 4, !dbg !2291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14, !dbg !2291

cleanup14:                                        ; preds = %if.end13, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %which) #7, !dbg !2292
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #7, !dbg !2292
  %12 = load i32, ptr %retval, align 4, !dbg !2292
  ret i32 %12, !dbg !2292
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2293 i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @lookup_builtin_method(ptr noundef %method, i64 noundef %len) #0 !dbg !2296 {
entry:
  %retval = alloca i32, align 4
  %method.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %method, ptr %method.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %method.addr, metadata !2300, metadata !DIExpression()), !dbg !2302
  store i64 %len, ptr %len.addr, align 8, !tbaa !1626
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2301, metadata !DIExpression()), !dbg !2303
  %0 = load i64, ptr %len.addr, align 8, !dbg !2304, !tbaa !1626
  switch i64 %0, label %sw.default232 [
    i64 3, label %sw.bb
    i64 4, label %sw.bb21
    i64 5, label %sw.bb109
    i64 6, label %sw.bb137
    i64 7, label %sw.bb165
    i64 8, label %sw.bb184
    i64 9, label %sw.bb198
    i64 10, label %sw.bb203
    i64 11, label %sw.bb217
    i64 15, label %sw.bb222
    i64 16, label %sw.bb227
  ], !dbg !2305

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %method.addr, align 8, !dbg !2306, !tbaa !1244
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0, !dbg !2306
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2306, !tbaa !1579
  %conv = sext i8 %2 to i32, !dbg !2306
  switch i32 %conv, label %sw.default [
    i32 80, label %sw.bb1
    i32 71, label %sw.bb9
  ], !dbg !2308

sw.bb1:                                           ; preds = %sw.bb
  %3 = load ptr, ptr %method.addr, align 8, !dbg !2309, !tbaa !1244
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !2309
  %4 = load i8, ptr %arrayidx2, align 1, !dbg !2309, !tbaa !1579
  %conv3 = sext i8 %4 to i32, !dbg !2309
  %cmp = icmp eq i32 %conv3, 85, !dbg !2311
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2312

land.rhs:                                         ; preds = %sw.bb1
  %5 = load ptr, ptr %method.addr, align 8, !dbg !2313, !tbaa !1244
  %arrayidx5 = getelementptr inbounds i8, ptr %5, i64 2, !dbg !2313
  %6 = load i8, ptr %arrayidx5, align 1, !dbg !2313, !tbaa !1579
  %conv6 = sext i8 %6 to i32, !dbg !2313
  %cmp7 = icmp eq i32 %conv6, 84, !dbg !2314
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb1
  %7 = phi i1 [ false, %sw.bb1 ], [ %cmp7, %land.rhs ], !dbg !2315
  %8 = zext i1 %7 to i64, !dbg !2309
  %cond = select i1 %7, i32 1, i32 -1, !dbg !2309
  store i32 %cond, ptr %retval, align 4, !dbg !2316
  br label %return, !dbg !2316

sw.bb9:                                           ; preds = %sw.bb
  %9 = load ptr, ptr %method.addr, align 8, !dbg !2317, !tbaa !1244
  %arrayidx10 = getelementptr inbounds i8, ptr %9, i64 1, !dbg !2317
  %10 = load i8, ptr %arrayidx10, align 1, !dbg !2317, !tbaa !1579
  %conv11 = sext i8 %10 to i32, !dbg !2317
  %cmp12 = icmp eq i32 %conv11, 69, !dbg !2318
  br i1 %cmp12, label %land.rhs14, label %land.end19, !dbg !2319

land.rhs14:                                       ; preds = %sw.bb9
  %11 = load ptr, ptr %method.addr, align 8, !dbg !2320, !tbaa !1244
  %arrayidx15 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !2320
  %12 = load i8, ptr %arrayidx15, align 1, !dbg !2320, !tbaa !1579
  %conv16 = sext i8 %12 to i32, !dbg !2320
  %cmp17 = icmp eq i32 %conv16, 84, !dbg !2321
  br label %land.end19

land.end19:                                       ; preds = %land.rhs14, %sw.bb9
  %13 = phi i1 [ false, %sw.bb9 ], [ %cmp17, %land.rhs14 ], !dbg !2315
  %14 = zext i1 %13 to i64, !dbg !2317
  %cond20 = select i1 %13, i32 0, i32 -1, !dbg !2317
  store i32 %cond20, ptr %retval, align 4, !dbg !2322
  br label %return, !dbg !2322

sw.default:                                       ; preds = %sw.bb
  store i32 -1, ptr %retval, align 4, !dbg !2323
  br label %return, !dbg !2323

sw.bb21:                                          ; preds = %entry
  %15 = load ptr, ptr %method.addr, align 8, !dbg !2324, !tbaa !1244
  %arrayidx22 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !2324
  %16 = load i8, ptr %arrayidx22, align 1, !dbg !2324, !tbaa !1579
  %conv23 = sext i8 %16 to i32, !dbg !2324
  switch i32 %conv23, label %sw.default108 [
    i32 72, label %sw.bb24
    i32 80, label %sw.bb40
    i32 77, label %sw.bb57
    i32 76, label %sw.bb74
    i32 67, label %sw.bb91
  ], !dbg !2325

sw.bb24:                                          ; preds = %sw.bb21
  %17 = load ptr, ptr %method.addr, align 8, !dbg !2326, !tbaa !1244
  %arrayidx25 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !2326
  %18 = load i8, ptr %arrayidx25, align 1, !dbg !2326, !tbaa !1579
  %conv26 = sext i8 %18 to i32, !dbg !2326
  %cmp27 = icmp eq i32 %conv26, 69, !dbg !2328
  br i1 %cmp27, label %land.lhs.true, label %land.end38, !dbg !2329

land.lhs.true:                                    ; preds = %sw.bb24
  %19 = load ptr, ptr %method.addr, align 8, !dbg !2330, !tbaa !1244
  %arrayidx29 = getelementptr inbounds i8, ptr %19, i64 2, !dbg !2330
  %20 = load i8, ptr %arrayidx29, align 1, !dbg !2330, !tbaa !1579
  %conv30 = sext i8 %20 to i32, !dbg !2330
  %cmp31 = icmp eq i32 %conv30, 65, !dbg !2331
  br i1 %cmp31, label %land.rhs33, label %land.end38, !dbg !2332

land.rhs33:                                       ; preds = %land.lhs.true
  %21 = load ptr, ptr %method.addr, align 8, !dbg !2333, !tbaa !1244
  %arrayidx34 = getelementptr inbounds i8, ptr %21, i64 3, !dbg !2333
  %22 = load i8, ptr %arrayidx34, align 1, !dbg !2333, !tbaa !1579
  %conv35 = sext i8 %22 to i32, !dbg !2333
  %cmp36 = icmp eq i32 %conv35, 68, !dbg !2334
  br label %land.end38

land.end38:                                       ; preds = %land.rhs33, %land.lhs.true, %sw.bb24
  %23 = phi i1 [ false, %land.lhs.true ], [ false, %sw.bb24 ], [ %cmp36, %land.rhs33 ], !dbg !2335
  %24 = zext i1 %23 to i64, !dbg !2326
  %cond39 = select i1 %23, i32 0, i32 -1, !dbg !2326
  store i32 %cond39, ptr %retval, align 4, !dbg !2336
  br label %return, !dbg !2336

sw.bb40:                                          ; preds = %sw.bb21
  %25 = load ptr, ptr %method.addr, align 8, !dbg !2337, !tbaa !1244
  %arrayidx41 = getelementptr inbounds i8, ptr %25, i64 1, !dbg !2337
  %26 = load i8, ptr %arrayidx41, align 1, !dbg !2337, !tbaa !1579
  %conv42 = sext i8 %26 to i32, !dbg !2337
  %cmp43 = icmp eq i32 %conv42, 79, !dbg !2338
  br i1 %cmp43, label %land.lhs.true45, label %land.end55, !dbg !2339

land.lhs.true45:                                  ; preds = %sw.bb40
  %27 = load ptr, ptr %method.addr, align 8, !dbg !2340, !tbaa !1244
  %arrayidx46 = getelementptr inbounds i8, ptr %27, i64 2, !dbg !2340
  %28 = load i8, ptr %arrayidx46, align 1, !dbg !2340, !tbaa !1579
  %conv47 = sext i8 %28 to i32, !dbg !2340
  %cmp48 = icmp eq i32 %conv47, 83, !dbg !2341
  br i1 %cmp48, label %land.rhs50, label %land.end55, !dbg !2342

land.rhs50:                                       ; preds = %land.lhs.true45
  %29 = load ptr, ptr %method.addr, align 8, !dbg !2343, !tbaa !1244
  %arrayidx51 = getelementptr inbounds i8, ptr %29, i64 3, !dbg !2343
  %30 = load i8, ptr %arrayidx51, align 1, !dbg !2343, !tbaa !1579
  %conv52 = sext i8 %30 to i32, !dbg !2343
  %cmp53 = icmp eq i32 %conv52, 84, !dbg !2344
  br label %land.end55

land.end55:                                       ; preds = %land.rhs50, %land.lhs.true45, %sw.bb40
  %31 = phi i1 [ false, %land.lhs.true45 ], [ false, %sw.bb40 ], [ %cmp53, %land.rhs50 ], !dbg !2335
  %32 = zext i1 %31 to i64, !dbg !2337
  %cond56 = select i1 %31, i32 2, i32 -1, !dbg !2337
  store i32 %cond56, ptr %retval, align 4, !dbg !2345
  br label %return, !dbg !2345

sw.bb57:                                          ; preds = %sw.bb21
  %33 = load ptr, ptr %method.addr, align 8, !dbg !2346, !tbaa !1244
  %arrayidx58 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !2346
  %34 = load i8, ptr %arrayidx58, align 1, !dbg !2346, !tbaa !1579
  %conv59 = sext i8 %34 to i32, !dbg !2346
  %cmp60 = icmp eq i32 %conv59, 79, !dbg !2347
  br i1 %cmp60, label %land.lhs.true62, label %land.end72, !dbg !2348

land.lhs.true62:                                  ; preds = %sw.bb57
  %35 = load ptr, ptr %method.addr, align 8, !dbg !2349, !tbaa !1244
  %arrayidx63 = getelementptr inbounds i8, ptr %35, i64 2, !dbg !2349
  %36 = load i8, ptr %arrayidx63, align 1, !dbg !2349, !tbaa !1579
  %conv64 = sext i8 %36 to i32, !dbg !2349
  %cmp65 = icmp eq i32 %conv64, 86, !dbg !2350
  br i1 %cmp65, label %land.rhs67, label %land.end72, !dbg !2351

land.rhs67:                                       ; preds = %land.lhs.true62
  %37 = load ptr, ptr %method.addr, align 8, !dbg !2352, !tbaa !1244
  %arrayidx68 = getelementptr inbounds i8, ptr %37, i64 3, !dbg !2352
  %38 = load i8, ptr %arrayidx68, align 1, !dbg !2352, !tbaa !1579
  %conv69 = sext i8 %38 to i32, !dbg !2352
  %cmp70 = icmp eq i32 %conv69, 69, !dbg !2353
  br label %land.end72

land.end72:                                       ; preds = %land.rhs67, %land.lhs.true62, %sw.bb57
  %39 = phi i1 [ false, %land.lhs.true62 ], [ false, %sw.bb57 ], [ %cmp70, %land.rhs67 ], !dbg !2335
  %40 = zext i1 %39 to i64, !dbg !2346
  %cond73 = select i1 %39, i32 12, i32 -1, !dbg !2346
  store i32 %cond73, ptr %retval, align 4, !dbg !2354
  br label %return, !dbg !2354

sw.bb74:                                          ; preds = %sw.bb21
  %41 = load ptr, ptr %method.addr, align 8, !dbg !2355, !tbaa !1244
  %arrayidx75 = getelementptr inbounds i8, ptr %41, i64 1, !dbg !2355
  %42 = load i8, ptr %arrayidx75, align 1, !dbg !2355, !tbaa !1579
  %conv76 = sext i8 %42 to i32, !dbg !2355
  %cmp77 = icmp eq i32 %conv76, 79, !dbg !2356
  br i1 %cmp77, label %land.lhs.true79, label %land.end89, !dbg !2357

land.lhs.true79:                                  ; preds = %sw.bb74
  %43 = load ptr, ptr %method.addr, align 8, !dbg !2358, !tbaa !1244
  %arrayidx80 = getelementptr inbounds i8, ptr %43, i64 2, !dbg !2358
  %44 = load i8, ptr %arrayidx80, align 1, !dbg !2358, !tbaa !1579
  %conv81 = sext i8 %44 to i32, !dbg !2358
  %cmp82 = icmp eq i32 %conv81, 67, !dbg !2359
  br i1 %cmp82, label %land.rhs84, label %land.end89, !dbg !2360

land.rhs84:                                       ; preds = %land.lhs.true79
  %45 = load ptr, ptr %method.addr, align 8, !dbg !2361, !tbaa !1244
  %arrayidx85 = getelementptr inbounds i8, ptr %45, i64 3, !dbg !2361
  %46 = load i8, ptr %arrayidx85, align 1, !dbg !2361, !tbaa !1579
  %conv86 = sext i8 %46 to i32, !dbg !2361
  %cmp87 = icmp eq i32 %conv86, 75, !dbg !2362
  br label %land.end89

land.end89:                                       ; preds = %land.rhs84, %land.lhs.true79, %sw.bb74
  %47 = phi i1 [ false, %land.lhs.true79 ], [ false, %sw.bb74 ], [ %cmp87, %land.rhs84 ], !dbg !2335
  %48 = zext i1 %47 to i64, !dbg !2355
  %cond90 = select i1 %47, i32 13, i32 -1, !dbg !2355
  store i32 %cond90, ptr %retval, align 4, !dbg !2363
  br label %return, !dbg !2363

sw.bb91:                                          ; preds = %sw.bb21
  %49 = load ptr, ptr %method.addr, align 8, !dbg !2364, !tbaa !1244
  %arrayidx92 = getelementptr inbounds i8, ptr %49, i64 1, !dbg !2364
  %50 = load i8, ptr %arrayidx92, align 1, !dbg !2364, !tbaa !1579
  %conv93 = sext i8 %50 to i32, !dbg !2364
  %cmp94 = icmp eq i32 %conv93, 79, !dbg !2365
  br i1 %cmp94, label %land.lhs.true96, label %land.end106, !dbg !2366

land.lhs.true96:                                  ; preds = %sw.bb91
  %51 = load ptr, ptr %method.addr, align 8, !dbg !2367, !tbaa !1244
  %arrayidx97 = getelementptr inbounds i8, ptr %51, i64 2, !dbg !2367
  %52 = load i8, ptr %arrayidx97, align 1, !dbg !2367, !tbaa !1579
  %conv98 = sext i8 %52 to i32, !dbg !2367
  %cmp99 = icmp eq i32 %conv98, 80, !dbg !2368
  br i1 %cmp99, label %land.rhs101, label %land.end106, !dbg !2369

land.rhs101:                                      ; preds = %land.lhs.true96
  %53 = load ptr, ptr %method.addr, align 8, !dbg !2370, !tbaa !1244
  %arrayidx102 = getelementptr inbounds i8, ptr %53, i64 3, !dbg !2370
  %54 = load i8, ptr %arrayidx102, align 1, !dbg !2370, !tbaa !1579
  %conv103 = sext i8 %54 to i32, !dbg !2370
  %cmp104 = icmp eq i32 %conv103, 89, !dbg !2371
  br label %land.end106

land.end106:                                      ; preds = %land.rhs101, %land.lhs.true96, %sw.bb91
  %55 = phi i1 [ false, %land.lhs.true96 ], [ false, %sw.bb91 ], [ %cmp104, %land.rhs101 ], !dbg !2335
  %56 = zext i1 %55 to i64, !dbg !2364
  %cond107 = select i1 %55, i32 11, i32 -1, !dbg !2364
  store i32 %cond107, ptr %retval, align 4, !dbg !2372
  br label %return, !dbg !2372

sw.default108:                                    ; preds = %sw.bb21
  store i32 -1, ptr %retval, align 4, !dbg !2373
  br label %return, !dbg !2373

sw.bb109:                                         ; preds = %entry
  %57 = load ptr, ptr %method.addr, align 8, !dbg !2374, !tbaa !1244
  %arrayidx110 = getelementptr inbounds i8, ptr %57, i64 2, !dbg !2374
  %58 = load i8, ptr %arrayidx110, align 1, !dbg !2374, !tbaa !1579
  %conv111 = sext i8 %58 to i32, !dbg !2374
  switch i32 %conv111, label %sw.default136 [
    i32 84, label %sw.bb112
    i32 82, label %sw.bb116
    i32 67, label %sw.bb121
    i32 66, label %sw.bb126
    i32 65, label %sw.bb131
  ], !dbg !2375

sw.bb112:                                         ; preds = %sw.bb109
  %59 = load ptr, ptr %method.addr, align 8, !dbg !2376, !tbaa !1244
  %call = call i32 @memcmp(ptr noundef %59, ptr noundef @.str.28, i64 noundef 5) #8, !dbg !2378
  %cmp113 = icmp eq i32 %call, 0, !dbg !2379
  %60 = zext i1 %cmp113 to i64, !dbg !2378
  %cond115 = select i1 %cmp113, i32 7, i32 -1, !dbg !2378
  store i32 %cond115, ptr %retval, align 4, !dbg !2380
  br label %return, !dbg !2380

sw.bb116:                                         ; preds = %sw.bb109
  %61 = load ptr, ptr %method.addr, align 8, !dbg !2381, !tbaa !1244
  %call117 = call i32 @memcmp(ptr noundef %61, ptr noundef @.str.46, i64 noundef 5) #8, !dbg !2382
  %cmp118 = icmp eq i32 %call117, 0, !dbg !2383
  %62 = zext i1 %cmp118 to i64, !dbg !2382
  %cond120 = select i1 %cmp118, i32 25, i32 -1, !dbg !2382
  store i32 %cond120, ptr %retval, align 4, !dbg !2384
  br label %return, !dbg !2384

sw.bb121:                                         ; preds = %sw.bb109
  %63 = load ptr, ptr %method.addr, align 8, !dbg !2385, !tbaa !1244
  %call122 = call i32 @memcmp(ptr noundef %63, ptr noundef @.str.31, i64 noundef 5) #8, !dbg !2386
  %cmp123 = icmp eq i32 %call122, 0, !dbg !2387
  %64 = zext i1 %cmp123 to i64, !dbg !2386
  %cond125 = select i1 %cmp123, i32 10, i32 -1, !dbg !2386
  store i32 %cond125, ptr %retval, align 4, !dbg !2388
  br label %return, !dbg !2388

sw.bb126:                                         ; preds = %sw.bb109
  %65 = load ptr, ptr %method.addr, align 8, !dbg !2389, !tbaa !1244
  %call127 = call i32 @memcmp(ptr noundef %65, ptr noundef @.str.41, i64 noundef 5) #8, !dbg !2390
  %cmp128 = icmp eq i32 %call127, 0, !dbg !2391
  %66 = zext i1 %cmp128 to i64, !dbg !2390
  %cond130 = select i1 %cmp128, i32 20, i32 -1, !dbg !2390
  store i32 %cond130, ptr %retval, align 4, !dbg !2392
  br label %return, !dbg !2392

sw.bb131:                                         ; preds = %sw.bb109
  %67 = load ptr, ptr %method.addr, align 8, !dbg !2393, !tbaa !1244
  %call132 = call i32 @memcmp(ptr noundef %67, ptr noundef @.str.27, i64 noundef 5) #8, !dbg !2394
  %cmp133 = icmp eq i32 %call132, 0, !dbg !2395
  %68 = zext i1 %cmp133 to i64, !dbg !2394
  %cond135 = select i1 %cmp133, i32 6, i32 -1, !dbg !2394
  store i32 %cond135, ptr %retval, align 4, !dbg !2396
  br label %return, !dbg !2396

sw.default136:                                    ; preds = %sw.bb109
  store i32 -1, ptr %retval, align 4, !dbg !2397
  br label %return, !dbg !2397

sw.bb137:                                         ; preds = %entry
  %69 = load ptr, ptr %method.addr, align 8, !dbg !2398, !tbaa !1244
  %arrayidx138 = getelementptr inbounds i8, ptr %69, i64 0, !dbg !2398
  %70 = load i8, ptr %arrayidx138, align 1, !dbg !2398, !tbaa !1579
  %conv139 = sext i8 %70 to i32, !dbg !2398
  switch i32 %conv139, label %sw.default164 [
    i32 85, label %sw.bb140
    i32 82, label %sw.bb154
    i32 68, label %sw.bb159
  ], !dbg !2399

sw.bb140:                                         ; preds = %sw.bb137
  %71 = load ptr, ptr %method.addr, align 8, !dbg !2400, !tbaa !1244
  %arrayidx141 = getelementptr inbounds i8, ptr %71, i64 5, !dbg !2400
  %72 = load i8, ptr %arrayidx141, align 1, !dbg !2400, !tbaa !1579
  %conv142 = sext i8 %72 to i32, !dbg !2400
  switch i32 %conv142, label %sw.default153 [
    i32 75, label %sw.bb143
    i32 69, label %sw.bb148
  ], !dbg !2402

sw.bb143:                                         ; preds = %sw.bb140
  %73 = load ptr, ptr %method.addr, align 8, !dbg !2403, !tbaa !1244
  %call144 = call i32 @memcmp(ptr noundef %73, ptr noundef @.str.35, i64 noundef 6) #8, !dbg !2405
  %cmp145 = icmp eq i32 %call144, 0, !dbg !2406
  %74 = zext i1 %cmp145 to i64, !dbg !2405
  %cond147 = select i1 %cmp145, i32 14, i32 -1, !dbg !2405
  store i32 %cond147, ptr %retval, align 4, !dbg !2407
  br label %return, !dbg !2407

sw.bb148:                                         ; preds = %sw.bb140
  %75 = load ptr, ptr %method.addr, align 8, !dbg !2408, !tbaa !1244
  %call149 = call i32 @memcmp(ptr noundef %75, ptr noundef @.str.40, i64 noundef 6) #8, !dbg !2409
  %cmp150 = icmp eq i32 %call149, 0, !dbg !2410
  %76 = zext i1 %cmp150 to i64, !dbg !2409
  %cond152 = select i1 %cmp150, i32 19, i32 -1, !dbg !2409
  store i32 %cond152, ptr %retval, align 4, !dbg !2411
  br label %return, !dbg !2411

sw.default153:                                    ; preds = %sw.bb140
  store i32 -1, ptr %retval, align 4, !dbg !2412
  br label %return, !dbg !2412

sw.bb154:                                         ; preds = %sw.bb137
  %77 = load ptr, ptr %method.addr, align 8, !dbg !2413, !tbaa !1244
  %call155 = call i32 @memcmp(ptr noundef %77, ptr noundef @.str.42, i64 noundef 6) #8, !dbg !2414
  %cmp156 = icmp eq i32 %call155, 0, !dbg !2415
  %78 = zext i1 %cmp156 to i64, !dbg !2414
  %cond158 = select i1 %cmp156, i32 21, i32 -1, !dbg !2414
  store i32 %cond158, ptr %retval, align 4, !dbg !2416
  br label %return, !dbg !2416

sw.bb159:                                         ; preds = %sw.bb137
  %79 = load ptr, ptr %method.addr, align 8, !dbg !2417, !tbaa !1244
  %call160 = call i32 @memcmp(ptr noundef %79, ptr noundef @.str.24, i64 noundef 6) #8, !dbg !2418
  %cmp161 = icmp eq i32 %call160, 0, !dbg !2419
  %80 = zext i1 %cmp161 to i64, !dbg !2418
  %cond163 = select i1 %cmp161, i32 3, i32 -1, !dbg !2418
  store i32 %cond163, ptr %retval, align 4, !dbg !2420
  br label %return, !dbg !2420

sw.default164:                                    ; preds = %sw.bb137
  store i32 -1, ptr %retval, align 4, !dbg !2421
  br label %return, !dbg !2421

sw.bb165:                                         ; preds = %entry
  %81 = load ptr, ptr %method.addr, align 8, !dbg !2422, !tbaa !1244
  %arrayidx166 = getelementptr inbounds i8, ptr %81, i64 1, !dbg !2422
  %82 = load i8, ptr %arrayidx166, align 1, !dbg !2422, !tbaa !1579
  %conv167 = sext i8 %82 to i32, !dbg !2422
  switch i32 %conv167, label %sw.default183 [
    i32 80, label %sw.bb168
    i32 79, label %sw.bb173
    i32 72, label %sw.bb178
  ], !dbg !2423

sw.bb168:                                         ; preds = %sw.bb165
  %83 = load ptr, ptr %method.addr, align 8, !dbg !2424, !tbaa !1244
  %call169 = call i32 @memcmp(ptr noundef %83, ptr noundef @.str.26, i64 noundef 7) #8, !dbg !2426
  %cmp170 = icmp eq i32 %call169, 0, !dbg !2427
  %84 = zext i1 %cmp170 to i64, !dbg !2426
  %cond172 = select i1 %cmp170, i32 5, i32 -1, !dbg !2426
  store i32 %cond172, ptr %retval, align 4, !dbg !2428
  br label %return, !dbg !2428

sw.bb173:                                         ; preds = %sw.bb165
  %85 = load ptr, ptr %method.addr, align 8, !dbg !2429, !tbaa !1244
  %call174 = call i32 @memcmp(ptr noundef %85, ptr noundef @.str.25, i64 noundef 7) #8, !dbg !2430
  %cmp175 = icmp eq i32 %call174, 0, !dbg !2431
  %86 = zext i1 %cmp175 to i64, !dbg !2430
  %cond177 = select i1 %cmp175, i32 4, i32 -1, !dbg !2430
  store i32 %cond177, ptr %retval, align 4, !dbg !2432
  br label %return, !dbg !2432

sw.bb178:                                         ; preds = %sw.bb165
  %87 = load ptr, ptr %method.addr, align 8, !dbg !2433, !tbaa !1244
  %call179 = call i32 @memcmp(ptr noundef %87, ptr noundef @.str.39, i64 noundef 7) #8, !dbg !2434
  %cmp180 = icmp eq i32 %call179, 0, !dbg !2435
  %88 = zext i1 %cmp180 to i64, !dbg !2434
  %cond182 = select i1 %cmp180, i32 18, i32 -1, !dbg !2434
  store i32 %cond182, ptr %retval, align 4, !dbg !2436
  br label %return, !dbg !2436

sw.default183:                                    ; preds = %sw.bb165
  store i32 -1, ptr %retval, align 4, !dbg !2437
  br label %return, !dbg !2437

sw.bb184:                                         ; preds = %entry
  %89 = load ptr, ptr %method.addr, align 8, !dbg !2438, !tbaa !1244
  %arrayidx185 = getelementptr inbounds i8, ptr %89, i64 0, !dbg !2438
  %90 = load i8, ptr %arrayidx185, align 1, !dbg !2438, !tbaa !1579
  %conv186 = sext i8 %90 to i32, !dbg !2438
  switch i32 %conv186, label %sw.default197 [
    i32 80, label %sw.bb187
    i32 67, label %sw.bb192
  ], !dbg !2439

sw.bb187:                                         ; preds = %sw.bb184
  %91 = load ptr, ptr %method.addr, align 8, !dbg !2440, !tbaa !1244
  %call188 = call i32 @memcmp(ptr noundef %91, ptr noundef @.str.29, i64 noundef 8) #8, !dbg !2442
  %cmp189 = icmp eq i32 %call188, 0, !dbg !2443
  %92 = zext i1 %cmp189 to i64, !dbg !2442
  %cond191 = select i1 %cmp189, i32 8, i32 -1, !dbg !2442
  store i32 %cond191, ptr %retval, align 4, !dbg !2444
  br label %return, !dbg !2444

sw.bb192:                                         ; preds = %sw.bb184
  %93 = load ptr, ptr %method.addr, align 8, !dbg !2445, !tbaa !1244
  %call193 = call i32 @memcmp(ptr noundef %93, ptr noundef @.str.37, i64 noundef 8) #8, !dbg !2446
  %cmp194 = icmp eq i32 %call193, 0, !dbg !2447
  %94 = zext i1 %cmp194 to i64, !dbg !2446
  %cond196 = select i1 %cmp194, i32 16, i32 -1, !dbg !2446
  store i32 %cond196, ptr %retval, align 4, !dbg !2448
  br label %return, !dbg !2448

sw.default197:                                    ; preds = %sw.bb184
  store i32 -1, ptr %retval, align 4, !dbg !2449
  br label %return, !dbg !2449

sw.bb198:                                         ; preds = %entry
  %95 = load ptr, ptr %method.addr, align 8, !dbg !2450, !tbaa !1244
  %call199 = call i32 @memcmp(ptr noundef %95, ptr noundef @.str.30, i64 noundef 9) #8, !dbg !2451
  %cmp200 = icmp eq i32 %call199, 0, !dbg !2452
  %96 = zext i1 %cmp200 to i64, !dbg !2451
  %cond202 = select i1 %cmp200, i32 9, i32 -1, !dbg !2451
  store i32 %cond202, ptr %retval, align 4, !dbg !2453
  br label %return, !dbg !2453

sw.bb203:                                         ; preds = %entry
  %97 = load ptr, ptr %method.addr, align 8, !dbg !2454, !tbaa !1244
  %arrayidx204 = getelementptr inbounds i8, ptr %97, i64 0, !dbg !2454
  %98 = load i8, ptr %arrayidx204, align 1, !dbg !2454, !tbaa !1579
  %conv205 = sext i8 %98 to i32, !dbg !2454
  switch i32 %conv205, label %sw.default216 [
    i32 85, label %sw.bb206
    i32 77, label %sw.bb211
  ], !dbg !2455

sw.bb206:                                         ; preds = %sw.bb203
  %99 = load ptr, ptr %method.addr, align 8, !dbg !2456, !tbaa !1244
  %call207 = call i32 @memcmp(ptr noundef %99, ptr noundef @.str.38, i64 noundef 10) #8, !dbg !2458
  %cmp208 = icmp eq i32 %call207, 0, !dbg !2459
  %100 = zext i1 %cmp208 to i64, !dbg !2458
  %cond210 = select i1 %cmp208, i32 17, i32 -1, !dbg !2458
  store i32 %cond210, ptr %retval, align 4, !dbg !2460
  br label %return, !dbg !2460

sw.bb211:                                         ; preds = %sw.bb203
  %101 = load ptr, ptr %method.addr, align 8, !dbg !2461, !tbaa !1244
  %call212 = call i32 @memcmp(ptr noundef %101, ptr noundef @.str.44, i64 noundef 10) #8, !dbg !2462
  %cmp213 = icmp eq i32 %call212, 0, !dbg !2463
  %102 = zext i1 %cmp213 to i64, !dbg !2462
  %cond215 = select i1 %cmp213, i32 23, i32 -1, !dbg !2462
  store i32 %cond215, ptr %retval, align 4, !dbg !2464
  br label %return, !dbg !2464

sw.default216:                                    ; preds = %sw.bb203
  store i32 -1, ptr %retval, align 4, !dbg !2465
  br label %return, !dbg !2465

sw.bb217:                                         ; preds = %entry
  %103 = load ptr, ptr %method.addr, align 8, !dbg !2466, !tbaa !1244
  %call218 = call i32 @memcmp(ptr noundef %103, ptr noundef @.str.43, i64 noundef 11) #8, !dbg !2467
  %cmp219 = icmp eq i32 %call218, 0, !dbg !2468
  %104 = zext i1 %cmp219 to i64, !dbg !2467
  %cond221 = select i1 %cmp219, i32 22, i32 -1, !dbg !2467
  store i32 %cond221, ptr %retval, align 4, !dbg !2469
  br label %return, !dbg !2469

sw.bb222:                                         ; preds = %entry
  %105 = load ptr, ptr %method.addr, align 8, !dbg !2470, !tbaa !1244
  %call223 = call i32 @memcmp(ptr noundef %105, ptr noundef @.str.36, i64 noundef 15) #8, !dbg !2471
  %cmp224 = icmp eq i32 %call223, 0, !dbg !2472
  %106 = zext i1 %cmp224 to i64, !dbg !2471
  %cond226 = select i1 %cmp224, i32 15, i32 -1, !dbg !2471
  store i32 %cond226, ptr %retval, align 4, !dbg !2473
  br label %return, !dbg !2473

sw.bb227:                                         ; preds = %entry
  %107 = load ptr, ptr %method.addr, align 8, !dbg !2474, !tbaa !1244
  %call228 = call i32 @memcmp(ptr noundef %107, ptr noundef @.str.45, i64 noundef 16) #8, !dbg !2475
  %cmp229 = icmp eq i32 %call228, 0, !dbg !2476
  %108 = zext i1 %cmp229 to i64, !dbg !2475
  %cond231 = select i1 %cmp229, i32 24, i32 -1, !dbg !2475
  store i32 %cond231, ptr %retval, align 4, !dbg !2477
  br label %return, !dbg !2477

sw.default232:                                    ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2478
  br label %return, !dbg !2478

return:                                           ; preds = %sw.default232, %sw.bb227, %sw.bb222, %sw.bb217, %sw.default216, %sw.bb211, %sw.bb206, %sw.bb198, %sw.default197, %sw.bb192, %sw.bb187, %sw.default183, %sw.bb178, %sw.bb173, %sw.bb168, %sw.default164, %sw.bb159, %sw.bb154, %sw.default153, %sw.bb148, %sw.bb143, %sw.default136, %sw.bb131, %sw.bb126, %sw.bb121, %sw.bb116, %sw.bb112, %sw.default108, %land.end106, %land.end89, %land.end72, %land.end55, %land.end38, %sw.default, %land.end19, %land.end
  %109 = load i32, ptr %retval, align 4, !dbg !2479
  ret i32 %109, !dbg !2479
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ap_method_name_of(ptr noundef %p, i32 noundef %methnum) #0 !dbg !2480 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %methnum.addr = alloca i32, align 4
  %hi = alloca ptr, align 8
  %key = alloca ptr, align 8
  %val = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2484, metadata !DIExpression()), !dbg !2495
  store i32 %methnum, ptr %methnum.addr, align 4, !tbaa !1249
  tail call void @llvm.dbg.declare(metadata ptr %methnum.addr, metadata !2485, metadata !DIExpression()), !dbg !2496
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi) #7, !dbg !2497
  tail call void @llvm.dbg.declare(metadata ptr %hi, metadata !2486, metadata !DIExpression()), !dbg !2498
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2499, !tbaa !1244
  %1 = load ptr, ptr @methods_registry, align 8, !dbg !2500, !tbaa !1244
  %call = call ptr @apr_hash_first(ptr noundef %0, ptr noundef %1), !dbg !2501
  store ptr %call, ptr %hi, align 8, !dbg !2498, !tbaa !1244
  br label %for.cond, !dbg !2502

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %hi, align 8, !dbg !2503, !tbaa !1244
  %tobool = icmp ne ptr %2, null, !dbg !2504
  br i1 %tobool, label %for.body, label %for.end, !dbg !2504

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #7, !dbg !2505
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !2490, metadata !DIExpression()), !dbg !2506
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !2507
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !2494, metadata !DIExpression()), !dbg !2508
  %3 = load ptr, ptr %hi, align 8, !dbg !2509, !tbaa !1244
  call void @apr_hash_this(ptr noundef %3, ptr noundef %key, ptr noundef null, ptr noundef %val), !dbg !2510
  %4 = load ptr, ptr %val, align 8, !dbg !2511, !tbaa !1244
  %5 = load i32, ptr %4, align 4, !dbg !2513, !tbaa !1249
  %6 = load i32, ptr %methnum.addr, align 4, !dbg !2514, !tbaa !1249
  %cmp = icmp eq i32 %5, %6, !dbg !2515
  br i1 %cmp, label %if.then, label %if.end, !dbg !2516

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %key, align 8, !dbg !2517, !tbaa !1244
  store ptr %7, ptr %retval, align 8, !dbg !2518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2518

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2519
  br label %cleanup, !dbg !2519

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !2519
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #7, !dbg !2519
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup3 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2520

for.inc:                                          ; preds = %cleanup.cont
  %8 = load ptr, ptr %hi, align 8, !dbg !2521, !tbaa !1244
  %call2 = call ptr @apr_hash_next(ptr noundef %8), !dbg !2522
  store ptr %call2, ptr %hi, align 8, !dbg !2523, !tbaa !1244
  br label %for.cond, !dbg !2524, !llvm.loop !2525

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !2527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup3, !dbg !2527

cleanup3:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi) #7, !dbg !2528
  %9 = load ptr, ptr %retval, align 8, !dbg !2528
  ret ptr %9, !dbg !2528
}

declare !dbg !2529 ptr @apr_hash_first(ptr noundef, ptr noundef) #2

declare !dbg !2532 void @apr_hash_this(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2537 ptr @apr_hash_next(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_index_of_response(i32 noundef %status) #0 !dbg !2540 {
entry:
  %status.addr = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 %status, ptr %status.addr, align 4, !tbaa !1249
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2542, metadata !DIExpression()), !dbg !2544
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #7, !dbg !2545
  tail call void @llvm.dbg.declare(metadata ptr %index, metadata !2543, metadata !DIExpression()), !dbg !2546
  %0 = load i32, ptr %status.addr, align 4, !dbg !2547, !tbaa !1249
  %call = call i32 @index_of_response(i32 noundef %0), !dbg !2548
  store i32 %call, ptr %index, align 4, !dbg !2546, !tbaa !1249
  %1 = load i32, ptr %index, align 4, !dbg !2549, !tbaa !1249
  %cmp = icmp slt i32 %1, 0, !dbg !2550
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2551

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2551

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %index, align 4, !dbg !2552, !tbaa !1249
  br label %cond.end, !dbg !2551

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 91, %cond.true ], [ %2, %cond.false ], !dbg !2551
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #7, !dbg !2553
  ret i32 %cond, !dbg !2554
}

; Function Attrs: nounwind uwtable
define internal i32 @index_of_response(i32 noundef %status) #0 !dbg !844 {
entry:
  %retval = alloca i32, align 4
  %status.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %status, ptr %status.addr, align 4, !tbaa !1249
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !848, metadata !DIExpression()), !dbg !2555
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !2556
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !849, metadata !DIExpression()), !dbg !2557
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #7, !dbg !2556
  tail call void @llvm.dbg.declare(metadata ptr %pos, metadata !850, metadata !DIExpression()), !dbg !2558
  %0 = load i32, ptr %status.addr, align 4, !dbg !2559, !tbaa !1249
  %cmp = icmp slt i32 %0, 100, !dbg !2561
  br i1 %cmp, label %if.then, label %if.end, !dbg !2562

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2563

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %status.addr, align 4, !dbg !2565, !tbaa !1249
  %cmp1 = icmp sgt i32 %1, 999, !dbg !2567
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2568

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !2569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2569

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !2571, !tbaa !1249
  br label %for.cond, !dbg !2573

for.cond:                                         ; preds = %for.inc, %if.end3
  %2 = load i32, ptr %i, align 4, !dbg !2574, !tbaa !1249
  %cmp4 = icmp slt i32 %2, 5, !dbg !2576
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2577

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %status.addr, align 4, !dbg !2578, !tbaa !1249
  %sub = sub nsw i32 %3, 100, !dbg !2578
  store i32 %sub, ptr %status.addr, align 4, !dbg !2578, !tbaa !1249
  %4 = load i32, ptr %status.addr, align 4, !dbg !2580, !tbaa !1249
  %cmp5 = icmp slt i32 %4, 100, !dbg !2582
  br i1 %cmp5, label %if.then6, label %if.end15, !dbg !2583

if.then6:                                         ; preds = %for.body
  %5 = load i32, ptr %status.addr, align 4, !dbg !2584, !tbaa !1249
  %6 = load i32, ptr %i, align 4, !dbg !2586, !tbaa !1249
  %idxprom = sext i32 %6 to i64, !dbg !2587
  %arrayidx = getelementptr inbounds [6 x i32], ptr @index_of_response.shortcut, i64 0, i64 %idxprom, !dbg !2587
  %7 = load i32, ptr %arrayidx, align 4, !dbg !2587, !tbaa !1249
  %add = add nsw i32 %5, %7, !dbg !2588
  store i32 %add, ptr %pos, align 4, !dbg !2589, !tbaa !1249
  %8 = load i32, ptr %pos, align 4, !dbg !2590, !tbaa !1249
  %9 = load i32, ptr %i, align 4, !dbg !2592, !tbaa !1249
  %add7 = add nsw i32 %9, 1, !dbg !2593
  %idxprom8 = sext i32 %add7 to i64, !dbg !2594
  %arrayidx9 = getelementptr inbounds [6 x i32], ptr @index_of_response.shortcut, i64 0, i64 %idxprom8, !dbg !2594
  %10 = load i32, ptr %arrayidx9, align 4, !dbg !2594, !tbaa !1249
  %cmp10 = icmp slt i32 %8, %10, !dbg !2595
  br i1 %cmp10, label %land.lhs.true, label %if.else, !dbg !2596

land.lhs.true:                                    ; preds = %if.then6
  %11 = load i32, ptr %pos, align 4, !dbg !2597, !tbaa !1249
  %idxprom11 = sext i32 %11 to i64, !dbg !2598
  %arrayidx12 = getelementptr inbounds [103 x ptr], ptr @status_lines, i64 0, i64 %idxprom11, !dbg !2598
  %12 = load ptr, ptr %arrayidx12, align 8, !dbg !2598, !tbaa !1244
  %cmp13 = icmp ne ptr %12, null, !dbg !2599
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !2600

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i32, ptr %pos, align 4, !dbg !2601, !tbaa !1249
  store i32 %13, ptr %retval, align 4, !dbg !2603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2603

if.else:                                          ; preds = %land.lhs.true, %if.then6
  br label %for.end, !dbg !2604

if.end15:                                         ; preds = %for.body
  br label %for.inc, !dbg !2606

for.inc:                                          ; preds = %if.end15
  %14 = load i32, ptr %i, align 4, !dbg !2607, !tbaa !1249
  %inc = add nsw i32 %14, 1, !dbg !2607
  store i32 %inc, ptr %i, align 4, !dbg !2607, !tbaa !1249
  br label %for.cond, !dbg !2608, !llvm.loop !2609

for.end:                                          ; preds = %if.else, %for.cond
  store i32 -2, ptr %retval, align 4, !dbg !2611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2611

cleanup:                                          ; preds = %for.end, %if.then14, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #7, !dbg !2612
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !2612
  %15 = load i32, ptr %retval, align 4, !dbg !2612
  ret i32 %15, !dbg !2612
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ap_get_status_line_ex(ptr noundef %p, i32 noundef %status) #0 !dbg !2613 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2615, metadata !DIExpression()), !dbg !2618
  store i32 %status, ptr %status.addr, align 4, !tbaa !1249
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2616, metadata !DIExpression()), !dbg !2619
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #7, !dbg !2620
  tail call void @llvm.dbg.declare(metadata ptr %index, metadata !2617, metadata !DIExpression()), !dbg !2621
  %0 = load i32, ptr %status.addr, align 4, !dbg !2622, !tbaa !1249
  %call = call i32 @index_of_response(i32 noundef %0), !dbg !2623
  store i32 %call, ptr %index, align 4, !dbg !2621, !tbaa !1249
  %1 = load i32, ptr %index, align 4, !dbg !2624, !tbaa !1249
  %cmp = icmp sge i32 %1, 0, !dbg !2626
  br i1 %cmp, label %if.then, label %if.else, !dbg !2627

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %index, align 4, !dbg !2628, !tbaa !1249
  %idxprom = sext i32 %2 to i64, !dbg !2630
  %arrayidx = getelementptr inbounds [103 x ptr], ptr @status_lines, i64 0, i64 %idxprom, !dbg !2630
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2630, !tbaa !1244
  store ptr %3, ptr %retval, align 8, !dbg !2631
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2631

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %index, align 4, !dbg !2632, !tbaa !1249
  %cmp1 = icmp eq i32 %4, -2, !dbg !2634
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2635

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr %p.addr, align 8, !dbg !2636, !tbaa !1244
  %6 = load i32, ptr %status.addr, align 4, !dbg !2638, !tbaa !1249
  %7 = load i32, ptr %status.addr, align 4, !dbg !2639, !tbaa !1249
  %call3 = call ptr (ptr, ptr, ...) @apr_psprintf(ptr noundef %5, ptr noundef @.str.49, i32 noundef %6, i32 noundef %7), !dbg !2640
  store ptr %call3, ptr %retval, align 8, !dbg !2641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2641

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr getelementptr inbounds ([103 x ptr], ptr @status_lines, i64 0, i64 91), align 8, !dbg !2642, !tbaa !1244
  store ptr %8, ptr %retval, align 8, !dbg !2643
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2643

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #7, !dbg !2644
  %9 = load ptr, ptr %retval, align 8, !dbg !2644
  ret ptr %9, !dbg !2644
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ap_get_status_line(i32 noundef %status) #0 !dbg !2645 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, ptr %status.addr, align 4, !tbaa !1249
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2649, metadata !DIExpression()), !dbg !2650
  %0 = load i32, ptr %status.addr, align 4, !dbg !2651, !tbaa !1249
  %call = call i32 @ap_index_of_response(i32 noundef %0), !dbg !2652
  %idxprom = sext i32 %call to i64, !dbg !2653
  %arrayidx = getelementptr inbounds [103 x ptr], ptr @status_lines, i64 0, i64 %idxprom, !dbg !2653
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !2653, !tbaa !1244
  ret ptr %1, !dbg !2654
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_send_http_options(ptr noundef %r) #0 !dbg !2655 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2657, metadata !DIExpression()), !dbg !2658
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2659, !tbaa !1244
  %assbackwards = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 7, !dbg !2661
  %1 = load i32, ptr %assbackwards, align 8, !dbg !2661, !tbaa !2662
  %tobool = icmp ne i32 %1, 0, !dbg !2659
  br i1 %tobool, label %if.then, label %if.end, !dbg !2663

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2664
  br label %return, !dbg !2664

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %r.addr, align 8, !dbg !2666, !tbaa !1244
  %headers_out = getelementptr inbounds %struct.request_rec, ptr %2, i32 0, i32 35, !dbg !2667
  %3 = load ptr, ptr %headers_out, align 8, !dbg !2667, !tbaa !1344
  %4 = load ptr, ptr %r.addr, align 8, !dbg !2668, !tbaa !1244
  %call = call ptr @make_allow(ptr noundef %4), !dbg !2669
  call void @apr_table_setn(ptr noundef %3, ptr noundef @.str.50, ptr noundef %call), !dbg !2670
  store i32 0, ptr %retval, align 4, !dbg !2671
  br label %return, !dbg !2671

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !2672
  ret i32 %5, !dbg !2672
}

; Function Attrs: nounwind uwtable
define internal ptr @make_allow(ptr noundef %r) #0 !dbg !2673 {
entry:
  %r.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %allow = alloca ptr, align 8
  %hi = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %key = alloca ptr, align 8
  %val = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2677, metadata !DIExpression()), !dbg !2714
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #7, !dbg !2715
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !2678, metadata !DIExpression()), !dbg !2716
  call void @llvm.lifetime.start.p0(i64 8, ptr %allow) #7, !dbg !2717
  tail call void @llvm.dbg.declare(metadata ptr %allow, metadata !2679, metadata !DIExpression()), !dbg !2718
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2719, !tbaa !1244
  %pool = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 0, !dbg !2720
  %1 = load ptr, ptr %pool, align 8, !dbg !2720, !tbaa !1341
  %call = call ptr @apr_array_make(ptr noundef %1, i32 noundef 10, i32 noundef 8), !dbg !2721
  store ptr %call, ptr %allow, align 8, !dbg !2718, !tbaa !1244
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi) #7, !dbg !2722
  tail call void @llvm.dbg.declare(metadata ptr %hi, metadata !2680, metadata !DIExpression()), !dbg !2723
  %2 = load ptr, ptr %r.addr, align 8, !dbg !2724, !tbaa !1244
  %pool1 = getelementptr inbounds %struct.request_rec, ptr %2, i32 0, i32 0, !dbg !2725
  %3 = load ptr, ptr %pool1, align 8, !dbg !2725, !tbaa !1341
  %4 = load ptr, ptr @methods_registry, align 8, !dbg !2726, !tbaa !1244
  %call2 = call ptr @apr_hash_first(ptr noundef %3, ptr noundef %4), !dbg !2727
  store ptr %call2, ptr %hi, align 8, !dbg !2723, !tbaa !1244
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #7, !dbg !2728
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2681, metadata !DIExpression()), !dbg !2729
  %5 = load ptr, ptr %r.addr, align 8, !dbg !2730, !tbaa !1244
  %server = getelementptr inbounds %struct.request_rec, ptr %5, i32 0, i32 2, !dbg !2730
  %6 = load ptr, ptr %server, align 8, !dbg !2730, !tbaa !1320
  %module_config = getelementptr inbounds %struct.server_rec, ptr %6, i32 0, i32 5, !dbg !2730
  %7 = load ptr, ptr %module_config, align 8, !dbg !2730, !tbaa !2731
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 0, !dbg !2730
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !2730, !tbaa !1244
  store ptr %8, ptr %conf, align 8, !dbg !2729, !tbaa !1244
  %9 = load ptr, ptr %r.addr, align 8, !dbg !2732, !tbaa !1244
  %allowed_methods = getelementptr inbounds %struct.request_rec, ptr %9, i32 0, i32 20, !dbg !2733
  %10 = load ptr, ptr %allowed_methods, align 8, !dbg !2733, !tbaa !2734
  %method_mask = getelementptr inbounds %struct.ap_method_list_t, ptr %10, i32 0, i32 0, !dbg !2735
  %11 = load i64, ptr %method_mask, align 8, !dbg !2735, !tbaa !2736
  store i64 %11, ptr %mask, align 8, !dbg !2738, !tbaa !1626
  br label %for.cond, !dbg !2739

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load ptr, ptr %hi, align 8, !dbg !2740, !tbaa !1244
  %tobool = icmp ne ptr %12, null, !dbg !2741
  br i1 %tobool, label %for.body, label %for.end, !dbg !2741

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #7, !dbg !2742
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !2709, metadata !DIExpression()), !dbg !2743
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !2744
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !2713, metadata !DIExpression()), !dbg !2745
  %13 = load ptr, ptr %hi, align 8, !dbg !2746, !tbaa !1244
  call void @apr_hash_this(ptr noundef %13, ptr noundef %key, ptr noundef null, ptr noundef %val), !dbg !2747
  %14 = load i64, ptr %mask, align 8, !dbg !2748, !tbaa !1626
  %15 = load ptr, ptr %val, align 8, !dbg !2750, !tbaa !1244
  %16 = load i32, ptr %15, align 4, !dbg !2751, !tbaa !1249
  %sh_prom = zext i32 %16 to i64, !dbg !2752
  %shl = shl i64 1, %sh_prom, !dbg !2752
  %and = and i64 %14, %shl, !dbg !2753
  %cmp = icmp ne i64 %and, 0, !dbg !2754
  br i1 %cmp, label %if.then, label %if.end, !dbg !2755

if.then:                                          ; preds = %for.body
  %17 = load ptr, ptr %key, align 8, !dbg !2756, !tbaa !1244
  %18 = load ptr, ptr %allow, align 8, !dbg !2758, !tbaa !1244
  %call3 = call ptr @apr_array_push(ptr noundef %18), !dbg !2758
  store ptr %17, ptr %call3, align 8, !dbg !2759, !tbaa !1244
  br label %if.end, !dbg !2760

if.end:                                           ; preds = %if.then, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #7, !dbg !2761
  br label %for.inc, !dbg !2762

for.inc:                                          ; preds = %if.end
  %19 = load ptr, ptr %hi, align 8, !dbg !2763, !tbaa !1244
  %call4 = call ptr @apr_hash_next(ptr noundef %19), !dbg !2764
  store ptr %call4, ptr %hi, align 8, !dbg !2765, !tbaa !1244
  br label %for.cond, !dbg !2766, !llvm.loop !2767

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %conf, align 8, !dbg !2769, !tbaa !1244
  %trace_enable = getelementptr inbounds %struct.core_server_config, ptr %20, i32 0, i32 12, !dbg !2771
  %21 = load i32, ptr %trace_enable, align 8, !dbg !2771, !tbaa !2772
  %cmp5 = icmp ne i32 %21, 0, !dbg !2774
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !2775

if.then6:                                         ; preds = %for.end
  %22 = load ptr, ptr %allow, align 8, !dbg !2776, !tbaa !1244
  %call7 = call ptr @apr_array_push(ptr noundef %22), !dbg !2777
  store ptr @.str.27, ptr %call7, align 8, !dbg !2778, !tbaa !1244
  br label %if.end8, !dbg !2779

if.end8:                                          ; preds = %if.then6, %for.end
  %23 = load i64, ptr %mask, align 8, !dbg !2780, !tbaa !1626
  %and9 = and i64 %23, 67108864, !dbg !2782
  %tobool10 = icmp ne i64 %and9, 0, !dbg !2782
  br i1 %tobool10, label %land.lhs.true, label %if.end20, !dbg !2783

land.lhs.true:                                    ; preds = %if.end8
  %24 = load ptr, ptr %r.addr, align 8, !dbg !2784, !tbaa !1244
  %allowed_methods11 = getelementptr inbounds %struct.request_rec, ptr %24, i32 0, i32 20, !dbg !2785
  %25 = load ptr, ptr %allowed_methods11, align 8, !dbg !2785, !tbaa !2734
  %method_list = getelementptr inbounds %struct.ap_method_list_t, ptr %25, i32 0, i32 1, !dbg !2786
  %26 = load ptr, ptr %method_list, align 8, !dbg !2786, !tbaa !2787
  %cmp12 = icmp ne ptr %26, null, !dbg !2788
  br i1 %cmp12, label %land.lhs.true13, label %if.end20, !dbg !2789

land.lhs.true13:                                  ; preds = %land.lhs.true
  %27 = load ptr, ptr %r.addr, align 8, !dbg !2790, !tbaa !1244
  %allowed_methods14 = getelementptr inbounds %struct.request_rec, ptr %27, i32 0, i32 20, !dbg !2791
  %28 = load ptr, ptr %allowed_methods14, align 8, !dbg !2791, !tbaa !2734
  %method_list15 = getelementptr inbounds %struct.ap_method_list_t, ptr %28, i32 0, i32 1, !dbg !2792
  %29 = load ptr, ptr %method_list15, align 8, !dbg !2792, !tbaa !2787
  %nelts = getelementptr inbounds %struct.apr_array_header_t, ptr %29, i32 0, i32 2, !dbg !2793
  %30 = load i32, ptr %nelts, align 4, !dbg !2793, !tbaa !1299
  %cmp16 = icmp ne i32 %30, 0, !dbg !2794
  br i1 %cmp16, label %if.then17, label %if.end20, !dbg !2795

if.then17:                                        ; preds = %land.lhs.true13
  %31 = load ptr, ptr %allow, align 8, !dbg !2796, !tbaa !1244
  %32 = load ptr, ptr %r.addr, align 8, !dbg !2798, !tbaa !1244
  %allowed_methods18 = getelementptr inbounds %struct.request_rec, ptr %32, i32 0, i32 20, !dbg !2799
  %33 = load ptr, ptr %allowed_methods18, align 8, !dbg !2799, !tbaa !2734
  %method_list19 = getelementptr inbounds %struct.ap_method_list_t, ptr %33, i32 0, i32 1, !dbg !2800
  %34 = load ptr, ptr %method_list19, align 8, !dbg !2800, !tbaa !2787
  call void @apr_array_cat(ptr noundef %31, ptr noundef %34), !dbg !2801
  br label %if.end20, !dbg !2802

if.end20:                                         ; preds = %if.then17, %land.lhs.true13, %land.lhs.true, %if.end8
  %35 = load ptr, ptr %r.addr, align 8, !dbg !2803, !tbaa !1244
  %pool21 = getelementptr inbounds %struct.request_rec, ptr %35, i32 0, i32 0, !dbg !2804
  %36 = load ptr, ptr %pool21, align 8, !dbg !2804, !tbaa !1341
  %37 = load ptr, ptr %allow, align 8, !dbg !2805, !tbaa !1244
  %call22 = call ptr @apr_array_pstrcat(ptr noundef %36, ptr noundef %37, i8 noundef signext 44), !dbg !2806
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #7, !dbg !2807
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi) #7, !dbg !2807
  call void @llvm.lifetime.end.p0(i64 8, ptr %allow) #7, !dbg !2807
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #7, !dbg !2807
  ret ptr %call22, !dbg !2808
}

; Function Attrs: nounwind uwtable
define dso_local void @ap_set_content_type(ptr noundef %r, ptr noundef %ct) #0 !dbg !2809 {
entry:
  %r.addr = alloca ptr, align 8
  %ct.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2813, metadata !DIExpression()), !dbg !2815
  store ptr %ct, ptr %ct.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !2814, metadata !DIExpression()), !dbg !2816
  %0 = load ptr, ptr %ct.addr, align 8, !dbg !2817, !tbaa !1244
  %tobool = icmp ne ptr %0, null, !dbg !2817
  br i1 %tobool, label %if.else, label %if.then, !dbg !2819

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2820, !tbaa !1244
  %content_type = getelementptr inbounds %struct.request_rec, ptr %1, i32 0, i32 39, !dbg !2822
  store ptr null, ptr %content_type, align 8, !dbg !2823, !tbaa !2824
  br label %if.end7, !dbg !2825

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %r.addr, align 8, !dbg !2826, !tbaa !1244
  %content_type1 = getelementptr inbounds %struct.request_rec, ptr %2, i32 0, i32 39, !dbg !2828
  %3 = load ptr, ptr %content_type1, align 8, !dbg !2828, !tbaa !2824
  %tobool2 = icmp ne ptr %3, null, !dbg !2826
  br i1 %tobool2, label %lor.lhs.false, label %if.then5, !dbg !2829

lor.lhs.false:                                    ; preds = %if.else
  %4 = load ptr, ptr %r.addr, align 8, !dbg !2830, !tbaa !1244
  %content_type3 = getelementptr inbounds %struct.request_rec, ptr %4, i32 0, i32 39, !dbg !2831
  %5 = load ptr, ptr %content_type3, align 8, !dbg !2831, !tbaa !2824
  %6 = load ptr, ptr %ct.addr, align 8, !dbg !2832, !tbaa !1244
  %call = call i32 @strcmp(ptr noundef %5, ptr noundef %6) #8, !dbg !2833
  %tobool4 = icmp ne i32 %call, 0, !dbg !2833
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !2834

if.then5:                                         ; preds = %lor.lhs.false, %if.else
  %7 = load ptr, ptr %ct.addr, align 8, !dbg !2835, !tbaa !1244
  %8 = load ptr, ptr %r.addr, align 8, !dbg !2837, !tbaa !1244
  %content_type6 = getelementptr inbounds %struct.request_rec, ptr %8, i32 0, i32 39, !dbg !2838
  store ptr %7, ptr %content_type6, align 8, !dbg !2839, !tbaa !2824
  br label %if.end, !dbg !2840

if.end:                                           ; preds = %if.then5, %lor.lhs.false
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret void, !dbg !2841
}

; Function Attrs: nounwind uwtable
define dso_local void @ap_set_accept_ranges(ptr noundef %r) #0 !dbg !2842 {
entry:
  %r.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2844, metadata !DIExpression()), !dbg !2934
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #7, !dbg !2935
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !2845, metadata !DIExpression()), !dbg !2936
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2937, !tbaa !1244
  %per_dir_config = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 54, !dbg !2937
  %1 = load ptr, ptr %per_dir_config, align 8, !dbg !2937, !tbaa !2938
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !2937
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2937, !tbaa !1244
  store ptr %2, ptr %d, align 8, !dbg !2936, !tbaa !1244
  %3 = load ptr, ptr %r.addr, align 8, !dbg !2939, !tbaa !1244
  %headers_out = getelementptr inbounds %struct.request_rec, ptr %3, i32 0, i32 35, !dbg !2940
  %4 = load ptr, ptr %headers_out, align 8, !dbg !2940, !tbaa !1344
  %5 = load ptr, ptr %d, align 8, !dbg !2941, !tbaa !1244
  %max_ranges = getelementptr inbounds %struct.core_dir_config, ptr %5, i32 0, i32 31, !dbg !2942
  %6 = load i32, ptr %max_ranges, align 8, !dbg !2942, !tbaa !2943
  %cmp = icmp eq i32 %6, 0, !dbg !2945
  %7 = zext i1 %cmp to i64, !dbg !2946
  %cond = select i1 %cmp, ptr @.str.52, ptr @.str.53, !dbg !2946
  call void @apr_table_setn(ptr noundef %4, ptr noundef @.str.51, ptr noundef %cond), !dbg !2947
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #7, !dbg !2948
  ret void, !dbg !2948
}

; Function Attrs: nounwind uwtable
define dso_local void @ap_send_error_response(ptr noundef %r, i32 noundef %recursive_error) #0 !dbg !2949 {
entry:
  %r.addr = alloca ptr, align 8
  %recursive_error.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %idx = alloca i32, align 4
  %custom_response = alloca ptr, align 8
  %location = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %request_conf = alloca ptr, align 8
  %title = alloca ptr, align 8
  %h1 = alloca ptr, align 8
  %end = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2953, metadata !DIExpression()), !dbg !2985
  store i32 %recursive_error, ptr %recursive_error.addr, align 4, !tbaa !1249
  tail call void @llvm.dbg.declare(metadata ptr %recursive_error.addr, metadata !2954, metadata !DIExpression()), !dbg !2986
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #7, !dbg !2987
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !2955, metadata !DIExpression()), !dbg !2988
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2989, !tbaa !1244
  %status1 = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 15, !dbg !2990
  %1 = load i32, ptr %status1, align 8, !dbg !2990, !tbaa !1369
  store i32 %1, ptr %status, align 4, !dbg !2988, !tbaa !1249
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #7, !dbg !2991
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !2956, metadata !DIExpression()), !dbg !2992
  %2 = load i32, ptr %status, align 4, !dbg !2993, !tbaa !1249
  %call = call i32 @ap_index_of_response(i32 noundef %2), !dbg !2994
  store i32 %call, ptr %idx, align 4, !dbg !2992, !tbaa !1249
  call void @llvm.lifetime.start.p0(i64 8, ptr %custom_response) #7, !dbg !2995
  tail call void @llvm.dbg.declare(metadata ptr %custom_response, metadata !2957, metadata !DIExpression()), !dbg !2996
  call void @llvm.lifetime.start.p0(i64 8, ptr %location) #7, !dbg !2997
  tail call void @llvm.dbg.declare(metadata ptr %location, metadata !2958, metadata !DIExpression()), !dbg !2998
  %3 = load ptr, ptr %r.addr, align 8, !dbg !2999, !tbaa !1244
  %headers_out = getelementptr inbounds %struct.request_rec, ptr %3, i32 0, i32 35, !dbg !3000
  %4 = load ptr, ptr %headers_out, align 8, !dbg !3000, !tbaa !1344
  %call2 = call ptr @apr_table_get(ptr noundef %4, ptr noundef @.str.54), !dbg !3001
  store ptr %call2, ptr %location, align 8, !dbg !2998, !tbaa !1244
  %5 = load ptr, ptr %r.addr, align 8, !dbg !3002, !tbaa !1244
  %eos_sent = getelementptr inbounds %struct.request_rec, ptr %5, i32 0, i32 53, !dbg !3003
  store i32 0, ptr %eos_sent, align 4, !dbg !3004, !tbaa !3005
  %6 = load ptr, ptr %r.addr, align 8, !dbg !3006, !tbaa !1244
  %proto_output_filters = getelementptr inbounds %struct.request_rec, ptr %6, i32 0, i32 61, !dbg !3007
  %7 = load ptr, ptr %proto_output_filters, align 8, !dbg !3007, !tbaa !3008
  %8 = load ptr, ptr %r.addr, align 8, !dbg !3009, !tbaa !1244
  %output_filters = getelementptr inbounds %struct.request_rec, ptr %8, i32 0, i32 59, !dbg !3010
  store ptr %7, ptr %output_filters, align 8, !dbg !3011, !tbaa !3012
  %9 = load ptr, ptr %r.addr, align 8, !dbg !3013, !tbaa !1244
  call void @ap_run_insert_error_filter(ptr noundef %9), !dbg !3014
  %10 = load i32, ptr %status, align 4, !dbg !3015, !tbaa !1249
  %cmp = icmp eq i32 %10, 204, !dbg !3015
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3015

lor.lhs.false:                                    ; preds = %entry
  %11 = load i32, ptr %status, align 4, !dbg !3015, !tbaa !1249
  %cmp3 = icmp eq i32 %11, 304, !dbg !3015
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3017

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load ptr, ptr %r.addr, align 8, !dbg !3018, !tbaa !1244
  call void @ap_finalize_request_protocol(ptr noundef %12), !dbg !3020
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup135, !dbg !3021

if.end:                                           ; preds = %lor.lhs.false
  %13 = load ptr, ptr %location, align 8, !dbg !3022, !tbaa !1244
  %cmp4 = icmp eq ptr %13, null, !dbg !3024
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !3025

if.then5:                                         ; preds = %if.end
  %14 = load ptr, ptr %r.addr, align 8, !dbg !3026, !tbaa !1244
  %err_headers_out = getelementptr inbounds %struct.request_rec, ptr %14, i32 0, i32 36, !dbg !3028
  %15 = load ptr, ptr %err_headers_out, align 8, !dbg !3028, !tbaa !3029
  %call6 = call ptr @apr_table_get(ptr noundef %15, ptr noundef @.str.54), !dbg !3030
  store ptr %call6, ptr %location, align 8, !dbg !3031, !tbaa !1244
  br label %if.end7, !dbg !3032

if.end7:                                          ; preds = %if.then5, %if.end
  %16 = load ptr, ptr %r.addr, align 8, !dbg !3033, !tbaa !1244
  %assbackwards = getelementptr inbounds %struct.request_rec, ptr %16, i32 0, i32 7, !dbg !3034
  %17 = load i32, ptr %assbackwards, align 8, !dbg !3034, !tbaa !2662
  %tobool = icmp ne i32 %17, 0, !dbg !3033
  br i1 %tobool, label %if.end44, label %if.then8, !dbg !3035

if.then8:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !3036
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2959, metadata !DIExpression()), !dbg !3037
  %18 = load ptr, ptr %r.addr, align 8, !dbg !3038, !tbaa !1244
  %headers_out9 = getelementptr inbounds %struct.request_rec, ptr %18, i32 0, i32 35, !dbg !3039
  %19 = load ptr, ptr %headers_out9, align 8, !dbg !3039, !tbaa !1344
  store ptr %19, ptr %tmp, align 8, !dbg !3037, !tbaa !1244
  %20 = load ptr, ptr %r.addr, align 8, !dbg !3040, !tbaa !1244
  %err_headers_out10 = getelementptr inbounds %struct.request_rec, ptr %20, i32 0, i32 36, !dbg !3041
  %21 = load ptr, ptr %err_headers_out10, align 8, !dbg !3041, !tbaa !3029
  %22 = load ptr, ptr %r.addr, align 8, !dbg !3042, !tbaa !1244
  %headers_out11 = getelementptr inbounds %struct.request_rec, ptr %22, i32 0, i32 35, !dbg !3043
  store ptr %21, ptr %headers_out11, align 8, !dbg !3044, !tbaa !1344
  %23 = load ptr, ptr %tmp, align 8, !dbg !3045, !tbaa !1244
  %24 = load ptr, ptr %r.addr, align 8, !dbg !3046, !tbaa !1244
  %err_headers_out12 = getelementptr inbounds %struct.request_rec, ptr %24, i32 0, i32 36, !dbg !3047
  store ptr %23, ptr %err_headers_out12, align 8, !dbg !3048, !tbaa !3029
  %25 = load ptr, ptr %r.addr, align 8, !dbg !3049, !tbaa !1244
  %err_headers_out13 = getelementptr inbounds %struct.request_rec, ptr %25, i32 0, i32 36, !dbg !3050
  %26 = load ptr, ptr %err_headers_out13, align 8, !dbg !3050, !tbaa !3029
  call void @apr_table_clear(ptr noundef %26), !dbg !3051
  %27 = load i32, ptr %status, align 4, !dbg !3052, !tbaa !1249
  %cmp14 = icmp sge i32 %27, 300, !dbg !3052
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false16, !dbg !3052

land.lhs.true:                                    ; preds = %if.then8
  %28 = load i32, ptr %status, align 4, !dbg !3052, !tbaa !1249
  %cmp15 = icmp slt i32 %28, 400, !dbg !3052
  br i1 %cmp15, label %if.then18, label %lor.lhs.false16, !dbg !3054

lor.lhs.false16:                                  ; preds = %land.lhs.true, %if.then8
  %29 = load i32, ptr %status, align 4, !dbg !3055, !tbaa !1249
  %cmp17 = icmp eq i32 %29, 201, !dbg !3056
  br i1 %cmp17, label %if.then18, label %if.end25, !dbg !3057

if.then18:                                        ; preds = %lor.lhs.false16, %land.lhs.true
  %30 = load ptr, ptr %location, align 8, !dbg !3058, !tbaa !1244
  %cmp19 = icmp ne ptr %30, null, !dbg !3061
  br i1 %cmp19, label %land.lhs.true20, label %if.else, !dbg !3062

land.lhs.true20:                                  ; preds = %if.then18
  %31 = load ptr, ptr %location, align 8, !dbg !3063, !tbaa !1244
  %32 = load i8, ptr %31, align 1, !dbg !3064, !tbaa !1579
  %conv = sext i8 %32 to i32, !dbg !3064
  %tobool21 = icmp ne i32 %conv, 0, !dbg !3064
  br i1 %tobool21, label %if.then22, label %if.else, !dbg !3065

if.then22:                                        ; preds = %land.lhs.true20
  %33 = load ptr, ptr %r.addr, align 8, !dbg !3066, !tbaa !1244
  %headers_out23 = getelementptr inbounds %struct.request_rec, ptr %33, i32 0, i32 35, !dbg !3068
  %34 = load ptr, ptr %headers_out23, align 8, !dbg !3068, !tbaa !1344
  %35 = load ptr, ptr %location, align 8, !dbg !3069, !tbaa !1244
  call void @apr_table_setn(ptr noundef %34, ptr noundef @.str.54, ptr noundef %35), !dbg !3070
  br label %if.end24, !dbg !3071

if.else:                                          ; preds = %land.lhs.true20, %if.then18
  store ptr @.str.55, ptr %location, align 8, !dbg !3072, !tbaa !1244
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then22
  br label %if.end25, !dbg !3074

if.end25:                                         ; preds = %if.end24, %lor.lhs.false16
  %36 = load ptr, ptr %r.addr, align 8, !dbg !3075, !tbaa !1244
  %content_languages = getelementptr inbounds %struct.request_rec, ptr %36, i32 0, i32 42, !dbg !3076
  store ptr null, ptr %content_languages, align 8, !dbg !3077, !tbaa !3078
  %37 = load ptr, ptr %r.addr, align 8, !dbg !3079, !tbaa !1244
  %content_encoding = getelementptr inbounds %struct.request_rec, ptr %37, i32 0, i32 41, !dbg !3080
  store ptr null, ptr %content_encoding, align 8, !dbg !3081, !tbaa !3082
  %38 = load ptr, ptr %r.addr, align 8, !dbg !3083, !tbaa !1244
  %clength = getelementptr inbounds %struct.request_rec, ptr %38, i32 0, i32 25, !dbg !3084
  store i64 0, ptr %clength, align 8, !dbg !3085, !tbaa !3086
  %39 = load ptr, ptr %r.addr, align 8, !dbg !3087, !tbaa !1244
  %subprocess_env = getelementptr inbounds %struct.request_rec, ptr %39, i32 0, i32 37, !dbg !3088
  %40 = load ptr, ptr %subprocess_env, align 8, !dbg !3088, !tbaa !1422
  %call26 = call ptr @apr_table_get(ptr noundef %40, ptr noundef @.str.56), !dbg !3089
  %cmp27 = icmp ne ptr %call26, null, !dbg !3090
  br i1 %cmp27, label %if.then29, label %if.else30, !dbg !3091

if.then29:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %request_conf) #7, !dbg !3092
  tail call void @llvm.dbg.declare(metadata ptr %request_conf, metadata !2962, metadata !DIExpression()), !dbg !3093
  %41 = load ptr, ptr %r.addr, align 8, !dbg !3094, !tbaa !1244
  %request_config = getelementptr inbounds %struct.request_rec, ptr %41, i32 0, i32 55, !dbg !3094
  %42 = load ptr, ptr %request_config, align 8, !dbg !3094, !tbaa !3095
  %arrayidx = getelementptr inbounds ptr, ptr %42, i64 0, !dbg !3094
  %43 = load ptr, ptr %arrayidx, align 8, !dbg !3094, !tbaa !1244
  store ptr %43, ptr %request_conf, align 8, !dbg !3093, !tbaa !1244
  %44 = load ptr, ptr %request_conf, align 8, !dbg !3096, !tbaa !1244
  %suppress_charset = getelementptr inbounds %struct.core_request_config, ptr %44, i32 0, i32 7, !dbg !3097
  store i32 1, ptr %suppress_charset, align 4, !dbg !3098, !tbaa !3099
  %45 = load ptr, ptr %r.addr, align 8, !dbg !3101, !tbaa !1244
  call void @ap_set_content_type(ptr noundef %45, ptr noundef @.str.57), !dbg !3102
  call void @llvm.lifetime.end.p0(i64 8, ptr %request_conf) #7, !dbg !3103
  br label %if.end31, !dbg !3104

if.else30:                                        ; preds = %if.end25
  %46 = load ptr, ptr %r.addr, align 8, !dbg !3105, !tbaa !1244
  call void @ap_set_content_type(ptr noundef %46, ptr noundef @.str.58), !dbg !3107
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then29
  %47 = load i32, ptr %status, align 4, !dbg !3108, !tbaa !1249
  %cmp32 = icmp eq i32 %47, 405, !dbg !3110
  br i1 %cmp32, label %if.then37, label %lor.lhs.false34, !dbg !3111

lor.lhs.false34:                                  ; preds = %if.end31
  %48 = load i32, ptr %status, align 4, !dbg !3112, !tbaa !1249
  %cmp35 = icmp eq i32 %48, 501, !dbg !3113
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !3114

if.then37:                                        ; preds = %lor.lhs.false34, %if.end31
  %49 = load ptr, ptr %r.addr, align 8, !dbg !3115, !tbaa !1244
  %headers_out38 = getelementptr inbounds %struct.request_rec, ptr %49, i32 0, i32 35, !dbg !3117
  %50 = load ptr, ptr %headers_out38, align 8, !dbg !3117, !tbaa !1344
  %51 = load ptr, ptr %r.addr, align 8, !dbg !3118, !tbaa !1244
  %call39 = call ptr @make_allow(ptr noundef %51), !dbg !3119
  call void @apr_table_setn(ptr noundef %50, ptr noundef @.str.50, ptr noundef %call39), !dbg !3120
  br label %if.end40, !dbg !3121

if.end40:                                         ; preds = %if.then37, %lor.lhs.false34
  %52 = load ptr, ptr %r.addr, align 8, !dbg !3122, !tbaa !1244
  %header_only = getelementptr inbounds %struct.request_rec, ptr %52, i32 0, i32 9, !dbg !3124
  %53 = load i32, ptr %header_only, align 8, !dbg !3124, !tbaa !1366
  %tobool41 = icmp ne i32 %53, 0, !dbg !3122
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !3125

if.then42:                                        ; preds = %if.end40
  %54 = load ptr, ptr %r.addr, align 8, !dbg !3126, !tbaa !1244
  call void @ap_finalize_request_protocol(ptr noundef %54), !dbg !3128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3129

if.end43:                                         ; preds = %if.end40
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3130
  br label %cleanup, !dbg !3130

cleanup:                                          ; preds = %if.end43, %if.then42
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !3130
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup135 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end44, !dbg !3131

if.end44:                                         ; preds = %cleanup.cont, %if.end7
  %55 = load ptr, ptr %r.addr, align 8, !dbg !3132, !tbaa !1244
  %56 = load i32, ptr %idx, align 4, !dbg !3134, !tbaa !1249
  %call45 = call ptr @ap_response_code_string(ptr noundef %55, i32 noundef %56), !dbg !3135
  store ptr %call45, ptr %custom_response, align 8, !dbg !3136, !tbaa !1244
  %tobool46 = icmp ne ptr %call45, null, !dbg !3136
  br i1 %tobool46, label %if.then47, label %if.end55, !dbg !3137

if.then47:                                        ; preds = %if.end44
  %57 = load ptr, ptr %custom_response, align 8, !dbg !3138, !tbaa !1244
  %arrayidx48 = getelementptr inbounds i8, ptr %57, i64 0, !dbg !3138
  %58 = load i8, ptr %arrayidx48, align 1, !dbg !3138, !tbaa !1579
  %conv49 = sext i8 %58 to i32, !dbg !3138
  %cmp50 = icmp eq i32 %conv49, 34, !dbg !3141
  br i1 %cmp50, label %if.then52, label %if.end54, !dbg !3142

if.then52:                                        ; preds = %if.then47
  %59 = load ptr, ptr %custom_response, align 8, !dbg !3143, !tbaa !1244
  %add.ptr = getelementptr inbounds i8, ptr %59, i64 1, !dbg !3145
  %60 = load ptr, ptr %r.addr, align 8, !dbg !3146, !tbaa !1244
  %call53 = call i32 @ap_rputs(ptr noundef %add.ptr, ptr noundef %60), !dbg !3147
  %61 = load ptr, ptr %r.addr, align 8, !dbg !3148, !tbaa !1244
  call void @ap_finalize_request_protocol(ptr noundef %61), !dbg !3149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup135, !dbg !3150

if.end54:                                         ; preds = %if.then47
  br label %if.end55, !dbg !3151

if.end55:                                         ; preds = %if.end54, %if.end44
  call void @llvm.lifetime.start.p0(i64 8, ptr %title) #7, !dbg !3152
  tail call void @llvm.dbg.declare(metadata ptr %title, metadata !2978, metadata !DIExpression()), !dbg !3153
  %62 = load i32, ptr %idx, align 4, !dbg !3154, !tbaa !1249
  %idxprom = sext i32 %62 to i64, !dbg !3155
  %arrayidx56 = getelementptr inbounds [103 x ptr], ptr @status_lines, i64 0, i64 %idxprom, !dbg !3155
  %63 = load ptr, ptr %arrayidx56, align 8, !dbg !3155, !tbaa !1244
  store ptr %63, ptr %title, align 8, !dbg !3153, !tbaa !1244
  call void @llvm.lifetime.start.p0(i64 8, ptr %h1) #7, !dbg !3156
  tail call void @llvm.dbg.declare(metadata ptr %h1, metadata !2980, metadata !DIExpression()), !dbg !3157
  %64 = load ptr, ptr %r.addr, align 8, !dbg !3158, !tbaa !1244
  %status_line = getelementptr inbounds %struct.request_rec, ptr %64, i32 0, i32 14, !dbg !3159
  %65 = load ptr, ptr %status_line, align 8, !dbg !3159, !tbaa !3160
  %tobool57 = icmp ne ptr %65, null, !dbg !3158
  br i1 %tobool57, label %if.then58, label %if.end120, !dbg !3161

if.then58:                                        ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7, !dbg !3162
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !2981, metadata !DIExpression()), !dbg !3163
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #7, !dbg !3164
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !2984, metadata !DIExpression()), !dbg !3165
  %66 = load ptr, ptr %r.addr, align 8, !dbg !3166, !tbaa !1244
  %status_line59 = getelementptr inbounds %struct.request_rec, ptr %66, i32 0, i32 14, !dbg !3167
  %67 = load ptr, ptr %status_line59, align 8, !dbg !3167, !tbaa !3160
  %call60 = call i64 @strlen(ptr noundef %67) #8, !dbg !3168
  %conv61 = trunc i64 %call60 to i32, !dbg !3168
  store i32 %conv61, ptr %len, align 4, !dbg !3165, !tbaa !1249
  %68 = load i32, ptr %len, align 4, !dbg !3169, !tbaa !1249
  %cmp62 = icmp sge i32 %68, 3, !dbg !3171
  br i1 %cmp62, label %land.lhs.true64, label %if.end119, !dbg !3172

land.lhs.true64:                                  ; preds = %if.then58
  %69 = load ptr, ptr %r.addr, align 8, !dbg !3173, !tbaa !1244
  %status_line65 = getelementptr inbounds %struct.request_rec, ptr %69, i32 0, i32 14, !dbg !3174
  %70 = load ptr, ptr %status_line65, align 8, !dbg !3174, !tbaa !3160
  %call66 = call i64 @apr_strtoi64(ptr noundef %70, ptr noundef %end, i32 noundef 10), !dbg !3175
  %71 = load ptr, ptr %r.addr, align 8, !dbg !3176, !tbaa !1244
  %status67 = getelementptr inbounds %struct.request_rec, ptr %71, i32 0, i32 15, !dbg !3177
  %72 = load i32, ptr %status67, align 8, !dbg !3177, !tbaa !1369
  %conv68 = sext i32 %72 to i64, !dbg !3176
  %cmp69 = icmp eq i64 %call66, %conv68, !dbg !3178
  br i1 %cmp69, label %land.lhs.true71, label %if.end119, !dbg !3179

land.lhs.true71:                                  ; preds = %land.lhs.true64
  %73 = load ptr, ptr %end, align 8, !dbg !3180, !tbaa !1244
  %add.ptr72 = getelementptr inbounds i8, ptr %73, i64 -3, !dbg !3181
  %74 = load ptr, ptr %r.addr, align 8, !dbg !3182, !tbaa !1244
  %status_line73 = getelementptr inbounds %struct.request_rec, ptr %74, i32 0, i32 14, !dbg !3183
  %75 = load ptr, ptr %status_line73, align 8, !dbg !3183, !tbaa !3160
  %cmp74 = icmp eq ptr %add.ptr72, %75, !dbg !3184
  br i1 %cmp74, label %land.lhs.true76, label %if.end119, !dbg !3185

land.lhs.true76:                                  ; preds = %land.lhs.true71
  %76 = load i32, ptr %len, align 4, !dbg !3186, !tbaa !1249
  %cmp77 = icmp slt i32 %76, 4, !dbg !3187
  br i1 %cmp77, label %land.lhs.true88, label %lor.lhs.false79, !dbg !3188

lor.lhs.false79:                                  ; preds = %land.lhs.true76
  %call80 = call ptr @__ctype_b_loc() #9, !dbg !3189
  %77 = load ptr, ptr %call80, align 8, !dbg !3189, !tbaa !1244
  %78 = load ptr, ptr %r.addr, align 8, !dbg !3189, !tbaa !1244
  %status_line81 = getelementptr inbounds %struct.request_rec, ptr %78, i32 0, i32 14, !dbg !3189
  %79 = load ptr, ptr %status_line81, align 8, !dbg !3189, !tbaa !3160
  %arrayidx82 = getelementptr inbounds i8, ptr %79, i64 3, !dbg !3189
  %80 = load i8, ptr %arrayidx82, align 1, !dbg !3189, !tbaa !1579
  %conv83 = zext i8 %80 to i32, !dbg !3189
  %idxprom84 = sext i32 %conv83 to i64, !dbg !3189
  %arrayidx85 = getelementptr inbounds i16, ptr %77, i64 %idxprom84, !dbg !3189
  %81 = load i16, ptr %arrayidx85, align 2, !dbg !3189, !tbaa !3190
  %conv86 = zext i16 %81 to i32, !dbg !3189
  %and = and i32 %conv86, 8192, !dbg !3189
  %tobool87 = icmp ne i32 %and, 0, !dbg !3189
  br i1 %tobool87, label %land.lhs.true88, label %if.end119, !dbg !3191

land.lhs.true88:                                  ; preds = %lor.lhs.false79, %land.lhs.true76
  %82 = load i32, ptr %len, align 4, !dbg !3192, !tbaa !1249
  %cmp89 = icmp slt i32 %82, 5, !dbg !3193
  br i1 %cmp89, label %if.then101, label %lor.lhs.false91, !dbg !3194

lor.lhs.false91:                                  ; preds = %land.lhs.true88
  %call92 = call ptr @__ctype_b_loc() #9, !dbg !3195
  %83 = load ptr, ptr %call92, align 8, !dbg !3195, !tbaa !1244
  %84 = load ptr, ptr %r.addr, align 8, !dbg !3195, !tbaa !1244
  %status_line93 = getelementptr inbounds %struct.request_rec, ptr %84, i32 0, i32 14, !dbg !3195
  %85 = load ptr, ptr %status_line93, align 8, !dbg !3195, !tbaa !3160
  %arrayidx94 = getelementptr inbounds i8, ptr %85, i64 4, !dbg !3195
  %86 = load i8, ptr %arrayidx94, align 1, !dbg !3195, !tbaa !1579
  %conv95 = zext i8 %86 to i32, !dbg !3195
  %idxprom96 = sext i32 %conv95 to i64, !dbg !3195
  %arrayidx97 = getelementptr inbounds i16, ptr %83, i64 %idxprom96, !dbg !3195
  %87 = load i16, ptr %arrayidx97, align 2, !dbg !3195, !tbaa !3190
  %conv98 = zext i16 %87 to i32, !dbg !3195
  %and99 = and i32 %conv98, 8, !dbg !3195
  %tobool100 = icmp ne i32 %and99, 0, !dbg !3195
  br i1 %tobool100, label %if.then101, label %if.end119, !dbg !3196

if.then101:                                       ; preds = %lor.lhs.false91, %land.lhs.true88
  %88 = load i32, ptr %len, align 4, !dbg !3197, !tbaa !1249
  %cmp102 = icmp eq i32 %88, 3, !dbg !3200
  br i1 %cmp102, label %if.then104, label %if.else108, !dbg !3201

if.then104:                                       ; preds = %if.then101
  %89 = load ptr, ptr %r.addr, align 8, !dbg !3202, !tbaa !1244
  %pool = getelementptr inbounds %struct.request_rec, ptr %89, i32 0, i32 0, !dbg !3204
  %90 = load ptr, ptr %pool, align 8, !dbg !3204, !tbaa !1341
  %91 = load ptr, ptr %r.addr, align 8, !dbg !3205, !tbaa !1244
  %status_line105 = getelementptr inbounds %struct.request_rec, ptr %91, i32 0, i32 14, !dbg !3206
  %92 = load ptr, ptr %status_line105, align 8, !dbg !3206, !tbaa !3160
  %call106 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %90, ptr noundef %92, ptr noundef @.str.59, ptr noundef null), !dbg !3207
  %93 = load ptr, ptr %r.addr, align 8, !dbg !3208, !tbaa !1244
  %status_line107 = getelementptr inbounds %struct.request_rec, ptr %93, i32 0, i32 14, !dbg !3209
  store ptr %call106, ptr %status_line107, align 8, !dbg !3210, !tbaa !3160
  br label %if.end117, !dbg !3211

if.else108:                                       ; preds = %if.then101
  %94 = load i32, ptr %len, align 4, !dbg !3212, !tbaa !1249
  %cmp109 = icmp eq i32 %94, 4, !dbg !3214
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !3215

if.then111:                                       ; preds = %if.else108
  %95 = load ptr, ptr %r.addr, align 8, !dbg !3216, !tbaa !1244
  %pool112 = getelementptr inbounds %struct.request_rec, ptr %95, i32 0, i32 0, !dbg !3218
  %96 = load ptr, ptr %pool112, align 8, !dbg !3218, !tbaa !1341
  %97 = load ptr, ptr %r.addr, align 8, !dbg !3219, !tbaa !1244
  %status_line113 = getelementptr inbounds %struct.request_rec, ptr %97, i32 0, i32 14, !dbg !3220
  %98 = load ptr, ptr %status_line113, align 8, !dbg !3220, !tbaa !3160
  %call114 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %96, ptr noundef %98, ptr noundef @.str.60, ptr noundef null), !dbg !3221
  %99 = load ptr, ptr %r.addr, align 8, !dbg !3222, !tbaa !1244
  %status_line115 = getelementptr inbounds %struct.request_rec, ptr %99, i32 0, i32 14, !dbg !3223
  store ptr %call114, ptr %status_line115, align 8, !dbg !3224, !tbaa !3160
  br label %if.end116, !dbg !3225

if.end116:                                        ; preds = %if.then111, %if.else108
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then104
  %100 = load ptr, ptr %r.addr, align 8, !dbg !3226, !tbaa !1244
  %status_line118 = getelementptr inbounds %struct.request_rec, ptr %100, i32 0, i32 14, !dbg !3227
  %101 = load ptr, ptr %status_line118, align 8, !dbg !3227, !tbaa !3160
  store ptr %101, ptr %title, align 8, !dbg !3228, !tbaa !1244
  br label %if.end119, !dbg !3229

if.end119:                                        ; preds = %if.end117, %lor.lhs.false91, %lor.lhs.false79, %land.lhs.true71, %land.lhs.true64, %if.then58
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #7, !dbg !3230
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7, !dbg !3230
  br label %if.end120, !dbg !3231

if.end120:                                        ; preds = %if.end119, %if.end55
  %102 = load ptr, ptr %title, align 8, !dbg !3232, !tbaa !1244
  %arrayidx121 = getelementptr inbounds i8, ptr %102, i64 4, !dbg !3232
  store ptr %arrayidx121, ptr %h1, align 8, !dbg !3233, !tbaa !1244
  %103 = load ptr, ptr %r.addr, align 8, !dbg !3234, !tbaa !1244
  %104 = load ptr, ptr %title, align 8, !dbg !3235, !tbaa !1244
  %105 = load ptr, ptr %h1, align 8, !dbg !3236, !tbaa !1244
  %call122 = call i32 (ptr, ...) @ap_rvputs(ptr noundef %103, ptr noundef @.str.61, ptr noundef %104, ptr noundef @.str.62, ptr noundef %105, ptr noundef @.str.63, ptr noundef null), !dbg !3237
  %106 = load ptr, ptr %r.addr, align 8, !dbg !3238, !tbaa !1244
  %107 = load i32, ptr %status, align 4, !dbg !3239, !tbaa !1249
  %108 = load ptr, ptr %r.addr, align 8, !dbg !3240, !tbaa !1244
  %109 = load ptr, ptr %location, align 8, !dbg !3241, !tbaa !1244
  %call123 = call ptr @get_canned_error_string(i32 noundef %107, ptr noundef %108, ptr noundef %109), !dbg !3242
  %call124 = call i32 (ptr, ...) @ap_rvputs(ptr noundef %106, ptr noundef %call123, ptr noundef null), !dbg !3243
  %110 = load i32, ptr %recursive_error.addr, align 4, !dbg !3244, !tbaa !1249
  %tobool125 = icmp ne i32 %110, 0, !dbg !3244
  br i1 %tobool125, label %if.then126, label %if.end131, !dbg !3246

if.then126:                                       ; preds = %if.end120
  %111 = load ptr, ptr %r.addr, align 8, !dbg !3247, !tbaa !1244
  %112 = load i32, ptr %recursive_error.addr, align 4, !dbg !3249, !tbaa !1249
  %call127 = call i32 @ap_index_of_response(i32 noundef %112), !dbg !3250
  %idxprom128 = sext i32 %call127 to i64, !dbg !3251
  %arrayidx129 = getelementptr inbounds [103 x ptr], ptr @status_lines, i64 0, i64 %idxprom128, !dbg !3251
  %113 = load ptr, ptr %arrayidx129, align 8, !dbg !3251, !tbaa !1244
  %call130 = call i32 (ptr, ...) @ap_rvputs(ptr noundef %111, ptr noundef @.str.64, ptr noundef %113, ptr noundef @.str.65, ptr noundef null), !dbg !3252
  br label %if.end131, !dbg !3253

if.end131:                                        ; preds = %if.then126, %if.end120
  %114 = load ptr, ptr %r.addr, align 8, !dbg !3254, !tbaa !1244
  %115 = load ptr, ptr %r.addr, align 8, !dbg !3255, !tbaa !1244
  %call132 = call ptr @ap_psignature(ptr noundef @.str.66, ptr noundef %115), !dbg !3256
  %call133 = call i32 (ptr, ...) @ap_rvputs(ptr noundef %114, ptr noundef %call132, ptr noundef null), !dbg !3257
  %116 = load ptr, ptr %r.addr, align 8, !dbg !3258, !tbaa !1244
  %call134 = call i32 (ptr, ...) @ap_rvputs(ptr noundef %116, ptr noundef @.str.67, ptr noundef null), !dbg !3259
  call void @llvm.lifetime.end.p0(i64 8, ptr %h1) #7, !dbg !3260
  call void @llvm.lifetime.end.p0(i64 8, ptr %title) #7, !dbg !3260
  %117 = load ptr, ptr %r.addr, align 8, !dbg !3261, !tbaa !1244
  call void @ap_finalize_request_protocol(ptr noundef %117), !dbg !3262
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3263
  br label %cleanup135, !dbg !3263

cleanup135:                                       ; preds = %if.end131, %if.then52, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %location) #7, !dbg !3263
  call void @llvm.lifetime.end.p0(i64 8, ptr %custom_response) #7, !dbg !3263
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #7, !dbg !3263
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #7, !dbg !3263
  %cleanup.dest139 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest139, label %unreachable [
    i32 0, label %cleanup.cont140
    i32 1, label %cleanup.cont140
  ]

cleanup.cont140:                                  ; preds = %cleanup135, %cleanup135
  ret void, !dbg !3263

unreachable:                                      ; preds = %cleanup135
  unreachable
}

declare !dbg !3264 void @ap_finalize_request_protocol(ptr noundef) #2

declare !dbg !3265 void @apr_table_clear(ptr noundef) #2

declare !dbg !3268 ptr @ap_response_code_string(ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ap_rputs(ptr noundef %str, ptr noundef %r) #4 !dbg !3272 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !3276, metadata !DIExpression()), !dbg !3285
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3277, metadata !DIExpression()), !dbg !3286
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7, !dbg !3287
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !3278, metadata !DIExpression()), !dbg !3288
  %0 = load ptr, ptr %str.addr, align 8, !dbg !3289, !tbaa !1244
  %call = call i64 @strlen(ptr noundef %0) #8, !dbg !3290
  store i64 %call, ptr %len, align 8, !dbg !3291, !tbaa !1626
  br label %for.cond, !dbg !3292

for.cond:                                         ; preds = %if.end7, %entry
  %1 = load i64, ptr %len, align 8, !dbg !3293, !tbaa !1626
  %cmp = icmp ule i64 %1, 2147483647, !dbg !3294
  br i1 %cmp, label %if.then, label %if.else, !dbg !3295

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %str.addr, align 8, !dbg !3296, !tbaa !1244
  %3 = load i64, ptr %len, align 8, !dbg !3298, !tbaa !1626
  %conv = trunc i64 %3 to i32, !dbg !3299
  %4 = load ptr, ptr %r.addr, align 8, !dbg !3300, !tbaa !1244
  %call1 = call i32 @ap_rwrite(ptr noundef %2, i32 noundef %conv, ptr noundef %4), !dbg !3301
  store i32 %call1, ptr %retval, align 4, !dbg !3302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !3302

if.else:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #7, !dbg !3303
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !3279, metadata !DIExpression()), !dbg !3304
  %5 = load ptr, ptr %str.addr, align 8, !dbg !3305, !tbaa !1244
  %6 = load ptr, ptr %r.addr, align 8, !dbg !3306, !tbaa !1244
  %call2 = call i32 @ap_rwrite(ptr noundef %5, i32 noundef 2147483647, ptr noundef %6), !dbg !3307
  store i32 %call2, ptr %rc, align 4, !dbg !3308, !tbaa !1249
  %7 = load i32, ptr %rc, align 4, !dbg !3309, !tbaa !1249
  %cmp3 = icmp slt i32 %7, 0, !dbg !3311
  br i1 %cmp3, label %if.then5, label %if.else6, !dbg !3312

if.then5:                                         ; preds = %if.else
  %8 = load i32, ptr %rc, align 4, !dbg !3313, !tbaa !1249
  store i32 %8, ptr %retval, align 4, !dbg !3315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3315

if.else6:                                         ; preds = %if.else
  %9 = load ptr, ptr %str.addr, align 8, !dbg !3316, !tbaa !1244
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 2147483647, !dbg !3316
  store ptr %add.ptr, ptr %str.addr, align 8, !dbg !3316, !tbaa !1244
  %10 = load i64, ptr %len, align 8, !dbg !3318, !tbaa !1626
  %sub = sub i64 %10, 2147483647, !dbg !3318
  store i64 %sub, ptr %len, align 8, !dbg !3318, !tbaa !1626
  br label %if.end

if.end:                                           ; preds = %if.else6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3319
  br label %cleanup, !dbg !3319

cleanup:                                          ; preds = %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #7, !dbg !3319
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup8 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end7

if.end7:                                          ; preds = %cleanup.cont
  br label %for.cond, !dbg !3320, !llvm.loop !3321

cleanup8:                                         ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7, !dbg !3324
  %11 = load i32, ptr %retval, align 4, !dbg !3324
  ret i32 %11, !dbg !3324
}

declare !dbg !3325 i64 @apr_strtoi64(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !3328 ptr @__ctype_b_loc() #5

declare !dbg !3334 ptr @apr_pstrcat(ptr noundef, ...) #2

declare !dbg !3337 i32 @ap_rvputs(ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal ptr @get_canned_error_string(i32 noundef %status, ptr noundef %r, ptr noundef %location) #0 !dbg !3340 {
entry:
  %retval = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %location.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %error_notes = alloca ptr, align 8
  %h1 = alloca ptr, align 8
  %s1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %status, ptr %status.addr, align 4, !tbaa !1249
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !3344, metadata !DIExpression()), !dbg !3351
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3345, metadata !DIExpression()), !dbg !3352
  store ptr %location, ptr %location.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %location.addr, metadata !3346, metadata !DIExpression()), !dbg !3353
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !3354
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !3347, metadata !DIExpression()), !dbg !3355
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3356, !tbaa !1244
  %pool = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 0, !dbg !3357
  %1 = load ptr, ptr %pool, align 8, !dbg !3357, !tbaa !1341
  store ptr %1, ptr %p, align 8, !dbg !3355, !tbaa !1244
  call void @llvm.lifetime.start.p0(i64 8, ptr %error_notes) #7, !dbg !3358
  tail call void @llvm.dbg.declare(metadata ptr %error_notes, metadata !3348, metadata !DIExpression()), !dbg !3359
  call void @llvm.lifetime.start.p0(i64 8, ptr %h1) #7, !dbg !3358
  tail call void @llvm.dbg.declare(metadata ptr %h1, metadata !3349, metadata !DIExpression()), !dbg !3360
  call void @llvm.lifetime.start.p0(i64 8, ptr %s1) #7, !dbg !3358
  tail call void @llvm.dbg.declare(metadata ptr %s1, metadata !3350, metadata !DIExpression()), !dbg !3361
  %2 = load i32, ptr %status.addr, align 4, !dbg !3362, !tbaa !1249
  switch i32 %2, label %sw.default [
    i32 301, label %sw.bb
    i32 302, label %sw.bb
    i32 307, label %sw.bb
    i32 308, label %sw.bb
    i32 303, label %sw.bb3
    i32 305, label %sw.bb7
    i32 407, label %sw.bb8
    i32 401, label %sw.bb8
    i32 400, label %sw.bb9
    i32 403, label %sw.bb11
    i32 404, label %sw.bb13
    i32 405, label %sw.bb14
    i32 406, label %sw.bb18
    i32 300, label %sw.bb20
    i32 411, label %sw.bb22
    i32 412, label %sw.bb28
    i32 501, label %sw.bb29
    i32 502, label %sw.bb35
    i32 506, label %sw.bb37
    i32 408, label %sw.bb38
    i32 410, label %sw.bb39
    i32 413, label %sw.bb40
    i32 414, label %sw.bb45
    i32 415, label %sw.bb47
    i32 416, label %sw.bb48
    i32 417, label %sw.bb49
    i32 422, label %sw.bb55
    i32 423, label %sw.bb56
    i32 424, label %sw.bb57
    i32 426, label %sw.bb58
    i32 428, label %sw.bb59
    i32 429, label %sw.bb60
    i32 431, label %sw.bb61
    i32 507, label %sw.bb62
    i32 503, label %sw.bb63
    i32 504, label %sw.bb64
    i32 508, label %sw.bb65
    i32 510, label %sw.bb66
    i32 511, label %sw.bb67
    i32 421, label %sw.bb68
    i32 451, label %sw.bb69
  ], !dbg !3363

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %3 = load ptr, ptr %p, align 8, !dbg !3364, !tbaa !1244
  %4 = load ptr, ptr %r.addr, align 8, !dbg !3366, !tbaa !1244
  %pool1 = getelementptr inbounds %struct.request_rec, ptr %4, i32 0, i32 0, !dbg !3366
  %5 = load ptr, ptr %pool1, align 8, !dbg !3366, !tbaa !1341
  %6 = load ptr, ptr %location.addr, align 8, !dbg !3366, !tbaa !1244
  %call = call ptr @ap_escape_html2(ptr noundef %5, ptr noundef %6, i32 noundef 0), !dbg !3366
  %call2 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %3, ptr noundef @.str.127, ptr noundef %call, ptr noundef @.str.128, ptr noundef null), !dbg !3367
  store ptr %call2, ptr %retval, align 8, !dbg !3368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3368

sw.bb3:                                           ; preds = %entry
  %7 = load ptr, ptr %p, align 8, !dbg !3369, !tbaa !1244
  %8 = load ptr, ptr %r.addr, align 8, !dbg !3370, !tbaa !1244
  %pool4 = getelementptr inbounds %struct.request_rec, ptr %8, i32 0, i32 0, !dbg !3370
  %9 = load ptr, ptr %pool4, align 8, !dbg !3370, !tbaa !1341
  %10 = load ptr, ptr %location.addr, align 8, !dbg !3370, !tbaa !1244
  %call5 = call ptr @ap_escape_html2(ptr noundef %9, ptr noundef %10, i32 noundef 0), !dbg !3370
  %call6 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %7, ptr noundef @.str.129, ptr noundef %call5, ptr noundef @.str.128, ptr noundef null), !dbg !3371
  store ptr %call6, ptr %retval, align 8, !dbg !3372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3372

sw.bb7:                                           ; preds = %entry
  store ptr @.str.130, ptr %retval, align 8, !dbg !3373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3373

sw.bb8:                                           ; preds = %entry, %entry
  store ptr @.str.131, ptr %retval, align 8, !dbg !3374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3374

sw.bb9:                                           ; preds = %entry
  %11 = load ptr, ptr %r.addr, align 8, !dbg !3375, !tbaa !1244
  %call10 = call ptr @add_optional_notes(ptr noundef %11, ptr noundef @.str.132, ptr noundef @.str.133, ptr noundef @.str.134), !dbg !3376
  store ptr %call10, ptr %retval, align 8, !dbg !3377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3377

sw.bb11:                                          ; preds = %entry
  %12 = load ptr, ptr %r.addr, align 8, !dbg !3378, !tbaa !1244
  %call12 = call ptr @add_optional_notes(ptr noundef %12, ptr noundef @.str.135, ptr noundef @.str.133, ptr noundef @.str.134), !dbg !3379
  store ptr %call12, ptr %retval, align 8, !dbg !3380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3380

sw.bb13:                                          ; preds = %entry
  store ptr @.str.136, ptr %retval, align 8, !dbg !3381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3381

sw.bb14:                                          ; preds = %entry
  %13 = load ptr, ptr %p, align 8, !dbg !3382, !tbaa !1244
  %14 = load ptr, ptr %r.addr, align 8, !dbg !3383, !tbaa !1244
  %pool15 = getelementptr inbounds %struct.request_rec, ptr %14, i32 0, i32 0, !dbg !3383
  %15 = load ptr, ptr %pool15, align 8, !dbg !3383, !tbaa !1341
  %16 = load ptr, ptr %r.addr, align 8, !dbg !3383, !tbaa !1244
  %method = getelementptr inbounds %struct.request_rec, ptr %16, i32 0, i32 17, !dbg !3383
  %17 = load ptr, ptr %method, align 8, !dbg !3383, !tbaa !3384
  %call16 = call ptr @ap_escape_html2(ptr noundef %15, ptr noundef %17, i32 noundef 0), !dbg !3383
  %call17 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %13, ptr noundef @.str.137, ptr noundef %call16, ptr noundef @.str.138, ptr noundef null), !dbg !3385
  store ptr %call17, ptr %retval, align 8, !dbg !3386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3386

sw.bb18:                                          ; preds = %entry
  %18 = load ptr, ptr %r.addr, align 8, !dbg !3387, !tbaa !1244
  %call19 = call ptr @add_optional_notes(ptr noundef %18, ptr noundef @.str.139, ptr noundef @.str.140, ptr noundef @.str.55), !dbg !3388
  store ptr %call19, ptr %retval, align 8, !dbg !3389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3389

sw.bb20:                                          ; preds = %entry
  %19 = load ptr, ptr %r.addr, align 8, !dbg !3390, !tbaa !1244
  %call21 = call ptr @add_optional_notes(ptr noundef %19, ptr noundef @.str.55, ptr noundef @.str.140, ptr noundef @.str.55), !dbg !3391
  store ptr %call21, ptr %retval, align 8, !dbg !3392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3392

sw.bb22:                                          ; preds = %entry
  %20 = load ptr, ptr %p, align 8, !dbg !3393, !tbaa !1244
  %21 = load ptr, ptr %r.addr, align 8, !dbg !3394, !tbaa !1244
  %pool23 = getelementptr inbounds %struct.request_rec, ptr %21, i32 0, i32 0, !dbg !3394
  %22 = load ptr, ptr %pool23, align 8, !dbg !3394, !tbaa !1341
  %23 = load ptr, ptr %r.addr, align 8, !dbg !3394, !tbaa !1244
  %method24 = getelementptr inbounds %struct.request_rec, ptr %23, i32 0, i32 17, !dbg !3394
  %24 = load ptr, ptr %method24, align 8, !dbg !3394, !tbaa !3384
  %call25 = call ptr @ap_escape_html2(ptr noundef %22, ptr noundef %24, i32 noundef 0), !dbg !3394
  %call26 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %20, ptr noundef @.str.141, ptr noundef %call25, ptr noundef @.str.142, ptr noundef null), !dbg !3395
  store ptr %call26, ptr %s1, align 8, !dbg !3396, !tbaa !1244
  %25 = load ptr, ptr %r.addr, align 8, !dbg !3397, !tbaa !1244
  %26 = load ptr, ptr %s1, align 8, !dbg !3398, !tbaa !1244
  %call27 = call ptr @add_optional_notes(ptr noundef %25, ptr noundef %26, ptr noundef @.str.133, ptr noundef @.str.134), !dbg !3399
  store ptr %call27, ptr %retval, align 8, !dbg !3400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3400

sw.bb28:                                          ; preds = %entry
  store ptr @.str.143, ptr %retval, align 8, !dbg !3401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3401

sw.bb29:                                          ; preds = %entry
  %27 = load ptr, ptr %p, align 8, !dbg !3402, !tbaa !1244
  %28 = load ptr, ptr %r.addr, align 8, !dbg !3403, !tbaa !1244
  %pool30 = getelementptr inbounds %struct.request_rec, ptr %28, i32 0, i32 0, !dbg !3403
  %29 = load ptr, ptr %pool30, align 8, !dbg !3403, !tbaa !1341
  %30 = load ptr, ptr %r.addr, align 8, !dbg !3403, !tbaa !1244
  %method31 = getelementptr inbounds %struct.request_rec, ptr %30, i32 0, i32 17, !dbg !3403
  %31 = load ptr, ptr %method31, align 8, !dbg !3403, !tbaa !3384
  %call32 = call ptr @ap_escape_html2(ptr noundef %29, ptr noundef %31, i32 noundef 0), !dbg !3403
  %call33 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %27, ptr noundef @.str.144, ptr noundef %call32, ptr noundef @.str.145, ptr noundef null), !dbg !3404
  store ptr %call33, ptr %s1, align 8, !dbg !3405, !tbaa !1244
  %32 = load ptr, ptr %r.addr, align 8, !dbg !3406, !tbaa !1244
  %33 = load ptr, ptr %s1, align 8, !dbg !3407, !tbaa !1244
  %call34 = call ptr @add_optional_notes(ptr noundef %32, ptr noundef %33, ptr noundef @.str.133, ptr noundef @.str.134), !dbg !3408
  store ptr %call34, ptr %retval, align 8, !dbg !3409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3409

sw.bb35:                                          ; preds = %entry
  store ptr @.str.146, ptr %s1, align 8, !dbg !3410, !tbaa !1244
  %34 = load ptr, ptr %r.addr, align 8, !dbg !3411, !tbaa !1244
  %35 = load ptr, ptr %s1, align 8, !dbg !3412, !tbaa !1244
  %call36 = call ptr @add_optional_notes(ptr noundef %34, ptr noundef %35, ptr noundef @.str.133, ptr noundef @.str.134), !dbg !3413
  store ptr %call36, ptr %retval, align 8, !dbg !3414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3414

sw.bb37:                                          ; preds = %entry
  store ptr @.str.147, ptr %retval, align 8, !dbg !3415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3415

sw.bb38:                                          ; preds = %entry
  store ptr @.str.148, ptr %retval, align 8, !dbg !3416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3416

sw.bb39:                                          ; preds = %entry
  store ptr @.str.149, ptr %retval, align 8, !dbg !3417
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3417

sw.bb40:                                          ; preds = %entry
  %36 = load ptr, ptr %p, align 8, !dbg !3418, !tbaa !1244
  %37 = load ptr, ptr %r.addr, align 8, !dbg !3419, !tbaa !1244
  %pool41 = getelementptr inbounds %struct.request_rec, ptr %37, i32 0, i32 0, !dbg !3419
  %38 = load ptr, ptr %pool41, align 8, !dbg !3419, !tbaa !1341
  %39 = load ptr, ptr %r.addr, align 8, !dbg !3419, !tbaa !1244
  %method42 = getelementptr inbounds %struct.request_rec, ptr %39, i32 0, i32 17, !dbg !3419
  %40 = load ptr, ptr %method42, align 8, !dbg !3419, !tbaa !3384
  %call43 = call ptr @ap_escape_html2(ptr noundef %38, ptr noundef %40, i32 noundef 0), !dbg !3419
  %call44 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %36, ptr noundef @.str.150, ptr noundef %call43, ptr noundef @.str.151, ptr noundef null), !dbg !3420
  store ptr %call44, ptr %retval, align 8, !dbg !3421
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3421

sw.bb45:                                          ; preds = %entry
  store ptr @.str.152, ptr %s1, align 8, !dbg !3422, !tbaa !1244
  %41 = load ptr, ptr %r.addr, align 8, !dbg !3423, !tbaa !1244
  %42 = load ptr, ptr %s1, align 8, !dbg !3424, !tbaa !1244
  %call46 = call ptr @add_optional_notes(ptr noundef %41, ptr noundef %42, ptr noundef @.str.133, ptr noundef @.str.134), !dbg !3425
  store ptr %call46, ptr %retval, align 8, !dbg !3426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3426

sw.bb47:                                          ; preds = %entry
  store ptr @.str.153, ptr %retval, align 8, !dbg !3427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3427

sw.bb48:                                          ; preds = %entry
  store ptr @.str.154, ptr %retval, align 8, !dbg !3428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3428

sw.bb49:                                          ; preds = %entry
  %43 = load ptr, ptr %r.addr, align 8, !dbg !3429, !tbaa !1244
  %headers_in = getelementptr inbounds %struct.request_rec, ptr %43, i32 0, i32 34, !dbg !3430
  %44 = load ptr, ptr %headers_in, align 8, !dbg !3430, !tbaa !1351
  %call50 = call ptr @apr_table_get(ptr noundef %44, ptr noundef @.str.155), !dbg !3431
  store ptr %call50, ptr %s1, align 8, !dbg !3432, !tbaa !1244
  %45 = load ptr, ptr %s1, align 8, !dbg !3433, !tbaa !1244
  %tobool = icmp ne ptr %45, null, !dbg !3433
  br i1 %tobool, label %if.then, label %if.else, !dbg !3435

if.then:                                          ; preds = %sw.bb49
  %46 = load ptr, ptr %p, align 8, !dbg !3436, !tbaa !1244
  %47 = load ptr, ptr %r.addr, align 8, !dbg !3437, !tbaa !1244
  %pool51 = getelementptr inbounds %struct.request_rec, ptr %47, i32 0, i32 0, !dbg !3437
  %48 = load ptr, ptr %pool51, align 8, !dbg !3437, !tbaa !1341
  %49 = load ptr, ptr %s1, align 8, !dbg !3437, !tbaa !1244
  %call52 = call ptr @ap_escape_html2(ptr noundef %48, ptr noundef %49, i32 noundef 0), !dbg !3437
  %call53 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %46, ptr noundef @.str.156, ptr noundef %call52, ptr noundef @.str.157, ptr noundef null), !dbg !3438
  store ptr %call53, ptr %s1, align 8, !dbg !3439, !tbaa !1244
  br label %if.end, !dbg !3440

if.else:                                          ; preds = %sw.bb49
  store ptr @.str.158, ptr %s1, align 8, !dbg !3441, !tbaa !1244
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %50 = load ptr, ptr %r.addr, align 8, !dbg !3442, !tbaa !1244
  %51 = load ptr, ptr %s1, align 8, !dbg !3443, !tbaa !1244
  %call54 = call ptr @add_optional_notes(ptr noundef %50, ptr noundef %51, ptr noundef @.str.133, ptr noundef @.str.159), !dbg !3444
  store ptr %call54, ptr %retval, align 8, !dbg !3445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3445

sw.bb55:                                          ; preds = %entry
  store ptr @.str.160, ptr %retval, align 8, !dbg !3446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3446

sw.bb56:                                          ; preds = %entry
  store ptr @.str.161, ptr %retval, align 8, !dbg !3447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3447

sw.bb57:                                          ; preds = %entry
  store ptr @.str.162, ptr %retval, align 8, !dbg !3448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3448

sw.bb58:                                          ; preds = %entry
  store ptr @.str.163, ptr %retval, align 8, !dbg !3449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3449

sw.bb59:                                          ; preds = %entry
  store ptr @.str.164, ptr %retval, align 8, !dbg !3450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3450

sw.bb60:                                          ; preds = %entry
  store ptr @.str.165, ptr %retval, align 8, !dbg !3451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3451

sw.bb61:                                          ; preds = %entry
  store ptr @.str.166, ptr %retval, align 8, !dbg !3452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3452

sw.bb62:                                          ; preds = %entry
  store ptr @.str.167, ptr %retval, align 8, !dbg !3453
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3453

sw.bb63:                                          ; preds = %entry
  store ptr @.str.168, ptr %retval, align 8, !dbg !3454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3454

sw.bb64:                                          ; preds = %entry
  store ptr @.str.169, ptr %retval, align 8, !dbg !3455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3455

sw.bb65:                                          ; preds = %entry
  store ptr @.str.170, ptr %retval, align 8, !dbg !3456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3456

sw.bb66:                                          ; preds = %entry
  store ptr @.str.171, ptr %retval, align 8, !dbg !3457
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3457

sw.bb67:                                          ; preds = %entry
  store ptr @.str.172, ptr %retval, align 8, !dbg !3458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3458

sw.bb68:                                          ; preds = %entry
  store ptr @.str.173, ptr %retval, align 8, !dbg !3459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3459

sw.bb69:                                          ; preds = %entry
  %52 = load ptr, ptr %r.addr, align 8, !dbg !3460, !tbaa !1244
  %call70 = call ptr @add_optional_notes(ptr noundef %52, ptr noundef @.str.174, ptr noundef @.str.133, ptr noundef @.str.134), !dbg !3461
  store ptr %call70, ptr %retval, align 8, !dbg !3462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3462

sw.default:                                       ; preds = %entry
  %53 = load ptr, ptr %r.addr, align 8, !dbg !3463, !tbaa !1244
  %notes = getelementptr inbounds %struct.request_rec, ptr %53, i32 0, i32 38, !dbg !3465
  %54 = load ptr, ptr %notes, align 8, !dbg !3465, !tbaa !3466
  %call71 = call ptr @apr_table_get(ptr noundef %54, ptr noundef @.str.133), !dbg !3467
  store ptr %call71, ptr %error_notes, align 8, !dbg !3468, !tbaa !1244
  %cmp = icmp ne ptr %call71, null, !dbg !3469
  br i1 %cmp, label %land.lhs.true, label %if.else80, !dbg !3470

land.lhs.true:                                    ; preds = %sw.default
  %55 = load ptr, ptr %r.addr, align 8, !dbg !3471, !tbaa !1244
  %notes72 = getelementptr inbounds %struct.request_rec, ptr %55, i32 0, i32 38, !dbg !3472
  %56 = load ptr, ptr %notes72, align 8, !dbg !3472, !tbaa !3466
  %call73 = call ptr @apr_table_get(ptr noundef %56, ptr noundef @.str.175), !dbg !3473
  store ptr %call73, ptr %h1, align 8, !dbg !3474, !tbaa !1244
  %cmp74 = icmp ne ptr %call73, null, !dbg !3475
  br i1 %cmp74, label %land.lhs.true75, label %if.else80, !dbg !3476

land.lhs.true75:                                  ; preds = %land.lhs.true
  %57 = load ptr, ptr %h1, align 8, !dbg !3477, !tbaa !1244
  %call76 = call i32 @strcmp(ptr noundef %57, ptr noundef @.str.176) #8, !dbg !3478
  %cmp77 = icmp eq i32 %call76, 0, !dbg !3479
  br i1 %cmp77, label %if.then78, label %if.else80, !dbg !3480

if.then78:                                        ; preds = %land.lhs.true75
  %58 = load ptr, ptr %p, align 8, !dbg !3481, !tbaa !1244
  %59 = load ptr, ptr %error_notes, align 8, !dbg !3483, !tbaa !1244
  %call79 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %58, ptr noundef %59, ptr noundef @.str.177, ptr noundef null), !dbg !3484
  store ptr %call79, ptr %retval, align 8, !dbg !3485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3485

if.else80:                                        ; preds = %land.lhs.true75, %land.lhs.true, %sw.default
  %60 = load ptr, ptr %p, align 8, !dbg !3486, !tbaa !1244
  %61 = load ptr, ptr %r.addr, align 8, !dbg !3488, !tbaa !1244
  %pool81 = getelementptr inbounds %struct.request_rec, ptr %61, i32 0, i32 0, !dbg !3488
  %62 = load ptr, ptr %pool81, align 8, !dbg !3488, !tbaa !1341
  %63 = load ptr, ptr %r.addr, align 8, !dbg !3488, !tbaa !1244
  %server = getelementptr inbounds %struct.request_rec, ptr %63, i32 0, i32 2, !dbg !3488
  %64 = load ptr, ptr %server, align 8, !dbg !3488, !tbaa !1320
  %server_admin = getelementptr inbounds %struct.server_rec, ptr %64, i32 0, i32 12, !dbg !3488
  %65 = load ptr, ptr %server_admin, align 8, !dbg !3488, !tbaa !3489
  %call82 = call ptr @ap_escape_html2(ptr noundef %62, ptr noundef %65, i32 noundef 0), !dbg !3488
  %call83 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %60, ptr noundef @.str.178, ptr noundef %call82, ptr noundef @.str.179, ptr noundef null), !dbg !3490
  store ptr %call83, ptr %retval, align 8, !dbg !3491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3491

cleanup:                                          ; preds = %if.else80, %if.then78, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %if.end, %sw.bb48, %sw.bb47, %sw.bb45, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb35, %sw.bb29, %sw.bb28, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb14, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb3, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %s1) #7, !dbg !3492
  call void @llvm.lifetime.end.p0(i64 8, ptr %h1) #7, !dbg !3492
  call void @llvm.lifetime.end.p0(i64 8, ptr %error_notes) #7, !dbg !3492
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !3492
  %66 = load ptr, ptr %retval, align 8, !dbg !3492
  ret ptr %66, !dbg !3492
}

declare !dbg !3493 ptr @ap_psignature(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ap_make_method_list(ptr noundef %p, i32 noundef %nelts) #0 !dbg !3496 {
entry:
  %p.addr = alloca ptr, align 8
  %nelts.addr = alloca i32, align 4
  %ml = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3500, metadata !DIExpression()), !dbg !3503
  store i32 %nelts, ptr %nelts.addr, align 4, !tbaa !1249
  tail call void @llvm.dbg.declare(metadata ptr %nelts.addr, metadata !3501, metadata !DIExpression()), !dbg !3504
  call void @llvm.lifetime.start.p0(i64 8, ptr %ml) #7, !dbg !3505
  tail call void @llvm.dbg.declare(metadata ptr %ml, metadata !3502, metadata !DIExpression()), !dbg !3506
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3507, !tbaa !1244
  %call = call ptr @apr_palloc(ptr noundef %0, i64 noundef 16), !dbg !3508
  store ptr %call, ptr %ml, align 8, !dbg !3509, !tbaa !1244
  %1 = load ptr, ptr %ml, align 8, !dbg !3510, !tbaa !1244
  %method_mask = getelementptr inbounds %struct.ap_method_list_t, ptr %1, i32 0, i32 0, !dbg !3511
  store i64 0, ptr %method_mask, align 8, !dbg !3512, !tbaa !2736
  %2 = load ptr, ptr %p.addr, align 8, !dbg !3513, !tbaa !1244
  %3 = load i32, ptr %nelts.addr, align 4, !dbg !3514, !tbaa !1249
  %call1 = call ptr @apr_array_make(ptr noundef %2, i32 noundef %3, i32 noundef 8), !dbg !3515
  %4 = load ptr, ptr %ml, align 8, !dbg !3516, !tbaa !1244
  %method_list = getelementptr inbounds %struct.ap_method_list_t, ptr %4, i32 0, i32 1, !dbg !3517
  store ptr %call1, ptr %method_list, align 8, !dbg !3518, !tbaa !2787
  %5 = load ptr, ptr %ml, align 8, !dbg !3519, !tbaa !1244
  call void @llvm.lifetime.end.p0(i64 8, ptr %ml) #7, !dbg !3520
  ret ptr %5, !dbg !3521
}

declare !dbg !3522 ptr @apr_palloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @ap_copy_method_list(ptr noundef %dest, ptr noundef %src) #0 !dbg !3525 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %imethods = alloca ptr, align 8
  %omethods = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !3529, metadata !DIExpression()), !dbg !3534
  store ptr %src, ptr %src.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !3530, metadata !DIExpression()), !dbg !3535
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !3536
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3531, metadata !DIExpression()), !dbg !3537
  call void @llvm.lifetime.start.p0(i64 8, ptr %imethods) #7, !dbg !3538
  tail call void @llvm.dbg.declare(metadata ptr %imethods, metadata !3532, metadata !DIExpression()), !dbg !3539
  call void @llvm.lifetime.start.p0(i64 8, ptr %omethods) #7, !dbg !3540
  tail call void @llvm.dbg.declare(metadata ptr %omethods, metadata !3533, metadata !DIExpression()), !dbg !3541
  %0 = load ptr, ptr %src.addr, align 8, !dbg !3542, !tbaa !1244
  %method_mask = getelementptr inbounds %struct.ap_method_list_t, ptr %0, i32 0, i32 0, !dbg !3543
  %1 = load i64, ptr %method_mask, align 8, !dbg !3543, !tbaa !2736
  %2 = load ptr, ptr %dest.addr, align 8, !dbg !3544, !tbaa !1244
  %method_mask1 = getelementptr inbounds %struct.ap_method_list_t, ptr %2, i32 0, i32 0, !dbg !3545
  store i64 %1, ptr %method_mask1, align 8, !dbg !3546, !tbaa !2736
  %3 = load ptr, ptr %src.addr, align 8, !dbg !3547, !tbaa !1244
  %method_list = getelementptr inbounds %struct.ap_method_list_t, ptr %3, i32 0, i32 1, !dbg !3548
  %4 = load ptr, ptr %method_list, align 8, !dbg !3548, !tbaa !2787
  %elts = getelementptr inbounds %struct.apr_array_header_t, ptr %4, i32 0, i32 4, !dbg !3549
  %5 = load ptr, ptr %elts, align 8, !dbg !3549, !tbaa !1293
  store ptr %5, ptr %imethods, align 8, !dbg !3550, !tbaa !1244
  store i32 0, ptr %i, align 4, !dbg !3551, !tbaa !1249
  br label %for.cond, !dbg !3553

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !dbg !3554, !tbaa !1249
  %7 = load ptr, ptr %src.addr, align 8, !dbg !3556, !tbaa !1244
  %method_list2 = getelementptr inbounds %struct.ap_method_list_t, ptr %7, i32 0, i32 1, !dbg !3557
  %8 = load ptr, ptr %method_list2, align 8, !dbg !3557, !tbaa !2787
  %nelts = getelementptr inbounds %struct.apr_array_header_t, ptr %8, i32 0, i32 2, !dbg !3558
  %9 = load i32, ptr %nelts, align 4, !dbg !3558, !tbaa !1299
  %cmp = icmp slt i32 %6, %9, !dbg !3559
  br i1 %cmp, label %for.body, label %for.end, !dbg !3560

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %dest.addr, align 8, !dbg !3561, !tbaa !1244
  %method_list3 = getelementptr inbounds %struct.ap_method_list_t, ptr %10, i32 0, i32 1, !dbg !3563
  %11 = load ptr, ptr %method_list3, align 8, !dbg !3563, !tbaa !2787
  %call = call ptr @apr_array_push(ptr noundef %11), !dbg !3564
  store ptr %call, ptr %omethods, align 8, !dbg !3565, !tbaa !1244
  %12 = load ptr, ptr %dest.addr, align 8, !dbg !3566, !tbaa !1244
  %method_list4 = getelementptr inbounds %struct.ap_method_list_t, ptr %12, i32 0, i32 1, !dbg !3567
  %13 = load ptr, ptr %method_list4, align 8, !dbg !3567, !tbaa !2787
  %pool = getelementptr inbounds %struct.apr_array_header_t, ptr %13, i32 0, i32 0, !dbg !3568
  %14 = load ptr, ptr %pool, align 8, !dbg !3568, !tbaa !3569
  %15 = load ptr, ptr %imethods, align 8, !dbg !3570, !tbaa !1244
  %16 = load i32, ptr %i, align 4, !dbg !3571, !tbaa !1249
  %idxprom = sext i32 %16 to i64, !dbg !3570
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %idxprom, !dbg !3570
  %17 = load ptr, ptr %arrayidx, align 8, !dbg !3570, !tbaa !1244
  %call5 = call ptr @apr_pstrdup(ptr noundef %14, ptr noundef %17), !dbg !3572
  %18 = load ptr, ptr %omethods, align 8, !dbg !3573, !tbaa !1244
  store ptr %call5, ptr %18, align 8, !dbg !3574, !tbaa !1244
  br label %for.inc, !dbg !3575

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4, !dbg !3576, !tbaa !1249
  %inc = add nsw i32 %19, 1, !dbg !3576
  store i32 %inc, ptr %i, align 4, !dbg !3576, !tbaa !1249
  br label %for.cond, !dbg !3577, !llvm.loop !3578

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %omethods) #7, !dbg !3580
  call void @llvm.lifetime.end.p0(i64 8, ptr %imethods) #7, !dbg !3580
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !3580
  ret void, !dbg !3580
}

declare !dbg !3581 ptr @apr_pstrdup(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_method_in_list(ptr noundef %l, ptr noundef %method) #0 !dbg !3584 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca ptr, align 8
  %method.addr = alloca ptr, align 8
  %methnum = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %l, ptr %l.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !3588, metadata !DIExpression()), !dbg !3591
  store ptr %method, ptr %method.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %method.addr, metadata !3589, metadata !DIExpression()), !dbg !3592
  call void @llvm.lifetime.start.p0(i64 4, ptr %methnum) #7, !dbg !3593
  tail call void @llvm.dbg.declare(metadata ptr %methnum, metadata !3590, metadata !DIExpression()), !dbg !3594
  %0 = load ptr, ptr %method.addr, align 8, !dbg !3595, !tbaa !1244
  %call = call i32 @ap_method_number_of(ptr noundef %0), !dbg !3596
  store i32 %call, ptr %methnum, align 4, !dbg !3597, !tbaa !1249
  %1 = load i32, ptr %methnum, align 4, !dbg !3598, !tbaa !1249
  %cmp = icmp ne i32 %1, 26, !dbg !3600
  br i1 %cmp, label %if.then, label %if.end, !dbg !3601

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %l.addr, align 8, !dbg !3602, !tbaa !1244
  %method_mask = getelementptr inbounds %struct.ap_method_list_t, ptr %2, i32 0, i32 0, !dbg !3604
  %3 = load i64, ptr %method_mask, align 8, !dbg !3604, !tbaa !2736
  %4 = load i32, ptr %methnum, align 4, !dbg !3605, !tbaa !1249
  %sh_prom = zext i32 %4 to i64, !dbg !3606
  %shl = shl i64 1, %sh_prom, !dbg !3606
  %and = and i64 %3, %shl, !dbg !3607
  %tobool = icmp ne i64 %and, 0, !dbg !3608
  %lnot = xor i1 %tobool, true, !dbg !3608
  %lnot1 = xor i1 %lnot, true, !dbg !3609
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3609
  store i32 %lnot.ext, ptr %retval, align 4, !dbg !3610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3610

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %l.addr, align 8, !dbg !3611, !tbaa !1244
  %method_list = getelementptr inbounds %struct.ap_method_list_t, ptr %5, i32 0, i32 1, !dbg !3613
  %6 = load ptr, ptr %method_list, align 8, !dbg !3613, !tbaa !2787
  %cmp2 = icmp eq ptr %6, null, !dbg !3614
  br i1 %cmp2, label %if.then5, label %lor.lhs.false, !dbg !3615

lor.lhs.false:                                    ; preds = %if.end
  %7 = load ptr, ptr %l.addr, align 8, !dbg !3616, !tbaa !1244
  %method_list3 = getelementptr inbounds %struct.ap_method_list_t, ptr %7, i32 0, i32 1, !dbg !3617
  %8 = load ptr, ptr %method_list3, align 8, !dbg !3617, !tbaa !2787
  %nelts = getelementptr inbounds %struct.apr_array_header_t, ptr %8, i32 0, i32 2, !dbg !3618
  %9 = load i32, ptr %nelts, align 4, !dbg !3618, !tbaa !1299
  %cmp4 = icmp eq i32 %9, 0, !dbg !3619
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3620

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4, !dbg !3621
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3621

if.end6:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %l.addr, align 8, !dbg !3623, !tbaa !1244
  %method_list7 = getelementptr inbounds %struct.ap_method_list_t, ptr %10, i32 0, i32 1, !dbg !3624
  %11 = load ptr, ptr %method_list7, align 8, !dbg !3624, !tbaa !2787
  %12 = load ptr, ptr %method.addr, align 8, !dbg !3625, !tbaa !1244
  %call8 = call i32 @ap_array_str_contains(ptr noundef %11, ptr noundef %12), !dbg !3626
  store i32 %call8, ptr %retval, align 4, !dbg !3627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3627

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %methnum) #7, !dbg !3628
  %13 = load i32, ptr %retval, align 4, !dbg !3628
  ret i32 %13, !dbg !3628
}

declare !dbg !3629 i32 @ap_array_str_contains(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @ap_method_list_add(ptr noundef %l, ptr noundef %method) #0 !dbg !3634 {
entry:
  %l.addr = alloca ptr, align 8
  %method.addr = alloca ptr, align 8
  %methnum = alloca i32, align 4
  %xmethod = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %l, ptr %l.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !3638, metadata !DIExpression()), !dbg !3642
  store ptr %method, ptr %method.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %method.addr, metadata !3639, metadata !DIExpression()), !dbg !3643
  call void @llvm.lifetime.start.p0(i64 4, ptr %methnum) #7, !dbg !3644
  tail call void @llvm.dbg.declare(metadata ptr %methnum, metadata !3640, metadata !DIExpression()), !dbg !3645
  call void @llvm.lifetime.start.p0(i64 8, ptr %xmethod) #7, !dbg !3646
  tail call void @llvm.dbg.declare(metadata ptr %xmethod, metadata !3641, metadata !DIExpression()), !dbg !3647
  %0 = load ptr, ptr %method.addr, align 8, !dbg !3648, !tbaa !1244
  %call = call i32 @ap_method_number_of(ptr noundef %0), !dbg !3649
  store i32 %call, ptr %methnum, align 4, !dbg !3650, !tbaa !1249
  %1 = load i32, ptr %methnum, align 4, !dbg !3651, !tbaa !1249
  %cmp = icmp ne i32 %1, 26, !dbg !3653
  br i1 %cmp, label %if.then, label %if.end, !dbg !3654

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %methnum, align 4, !dbg !3655, !tbaa !1249
  %sh_prom = zext i32 %2 to i64, !dbg !3657
  %shl = shl i64 1, %sh_prom, !dbg !3657
  %3 = load ptr, ptr %l.addr, align 8, !dbg !3658, !tbaa !1244
  %method_mask = getelementptr inbounds %struct.ap_method_list_t, ptr %3, i32 0, i32 0, !dbg !3659
  %4 = load i64, ptr %method_mask, align 8, !dbg !3660, !tbaa !2736
  %or = or i64 %4, %shl, !dbg !3660
  store i64 %or, ptr %method_mask, align 8, !dbg !3660, !tbaa !2736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3661

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %l.addr, align 8, !dbg !3662, !tbaa !1244
  %method_list = getelementptr inbounds %struct.ap_method_list_t, ptr %5, i32 0, i32 1, !dbg !3664
  %6 = load ptr, ptr %method_list, align 8, !dbg !3664, !tbaa !2787
  %7 = load ptr, ptr %method.addr, align 8, !dbg !3665, !tbaa !1244
  %call1 = call i32 @ap_array_str_contains(ptr noundef %6, ptr noundef %7), !dbg !3666
  %tobool = icmp ne i32 %call1, 0, !dbg !3666
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !3667

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3668

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %l.addr, align 8, !dbg !3670, !tbaa !1244
  %method_list4 = getelementptr inbounds %struct.ap_method_list_t, ptr %8, i32 0, i32 1, !dbg !3671
  %9 = load ptr, ptr %method_list4, align 8, !dbg !3671, !tbaa !2787
  %call5 = call ptr @apr_array_push(ptr noundef %9), !dbg !3672
  store ptr %call5, ptr %xmethod, align 8, !dbg !3673, !tbaa !1244
  %10 = load ptr, ptr %method.addr, align 8, !dbg !3674, !tbaa !1244
  %11 = load ptr, ptr %xmethod, align 8, !dbg !3675, !tbaa !1244
  store ptr %10, ptr %11, align 8, !dbg !3676, !tbaa !1244
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3677
  br label %cleanup, !dbg !3677

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %xmethod) #7, !dbg !3677
  call void @llvm.lifetime.end.p0(i64 4, ptr %methnum) #7, !dbg !3677
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3677

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @ap_method_list_remove(ptr noundef %l, ptr noundef %method) #0 !dbg !3678 {
entry:
  %l.addr = alloca ptr, align 8
  %method.addr = alloca ptr, align 8
  %methnum = alloca i32, align 4
  %methods = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %l, ptr %l.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !3680, metadata !DIExpression()), !dbg !3689
  store ptr %method, ptr %method.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %method.addr, metadata !3681, metadata !DIExpression()), !dbg !3690
  call void @llvm.lifetime.start.p0(i64 4, ptr %methnum) #7, !dbg !3691
  tail call void @llvm.dbg.declare(metadata ptr %methnum, metadata !3682, metadata !DIExpression()), !dbg !3692
  call void @llvm.lifetime.start.p0(i64 8, ptr %methods) #7, !dbg !3693
  tail call void @llvm.dbg.declare(metadata ptr %methods, metadata !3683, metadata !DIExpression()), !dbg !3694
  %0 = load ptr, ptr %method.addr, align 8, !dbg !3695, !tbaa !1244
  %call = call i32 @ap_method_number_of(ptr noundef %0), !dbg !3696
  store i32 %call, ptr %methnum, align 4, !dbg !3697, !tbaa !1249
  %1 = load i32, ptr %methnum, align 4, !dbg !3698, !tbaa !1249
  %cmp = icmp ne i32 %1, 26, !dbg !3700
  br i1 %cmp, label %if.then, label %if.end, !dbg !3701

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %methnum, align 4, !dbg !3702, !tbaa !1249
  %sh_prom = zext i32 %2 to i64, !dbg !3704
  %shl = shl i64 1, %sh_prom, !dbg !3704
  %not = xor i64 %shl, -1, !dbg !3705
  %3 = load ptr, ptr %l.addr, align 8, !dbg !3706, !tbaa !1244
  %method_mask = getelementptr inbounds %struct.ap_method_list_t, ptr %3, i32 0, i32 0, !dbg !3707
  %4 = load i64, ptr %method_mask, align 8, !dbg !3708, !tbaa !2736
  %and = and i64 %4, %not, !dbg !3708
  store i64 %and, ptr %method_mask, align 8, !dbg !3708, !tbaa !2736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3709

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %l.addr, align 8, !dbg !3710, !tbaa !1244
  %method_list = getelementptr inbounds %struct.ap_method_list_t, ptr %5, i32 0, i32 1, !dbg !3711
  %6 = load ptr, ptr %method_list, align 8, !dbg !3711, !tbaa !2787
  %nelts = getelementptr inbounds %struct.apr_array_header_t, ptr %6, i32 0, i32 2, !dbg !3712
  %7 = load i32, ptr %nelts, align 4, !dbg !3712, !tbaa !1299
  %cmp1 = icmp ne i32 %7, 0, !dbg !3713
  br i1 %cmp1, label %if.then2, label %if.end25, !dbg !3714

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !3715
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3684, metadata !DIExpression()), !dbg !3716
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7, !dbg !3715
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !3687, metadata !DIExpression()), !dbg !3717
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7, !dbg !3715
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !3688, metadata !DIExpression()), !dbg !3718
  %8 = load ptr, ptr %l.addr, align 8, !dbg !3719, !tbaa !1244
  %method_list3 = getelementptr inbounds %struct.ap_method_list_t, ptr %8, i32 0, i32 1, !dbg !3720
  %9 = load ptr, ptr %method_list3, align 8, !dbg !3720, !tbaa !2787
  %elts = getelementptr inbounds %struct.apr_array_header_t, ptr %9, i32 0, i32 4, !dbg !3721
  %10 = load ptr, ptr %elts, align 8, !dbg !3721, !tbaa !1293
  store ptr %10, ptr %methods, align 8, !dbg !3722, !tbaa !1244
  store i32 0, ptr %i, align 4, !dbg !3723, !tbaa !1249
  br label %for.cond, !dbg !3725

for.cond:                                         ; preds = %if.end23, %if.then2
  %11 = load i32, ptr %i, align 4, !dbg !3726, !tbaa !1249
  %12 = load ptr, ptr %l.addr, align 8, !dbg !3728, !tbaa !1244
  %method_list4 = getelementptr inbounds %struct.ap_method_list_t, ptr %12, i32 0, i32 1, !dbg !3729
  %13 = load ptr, ptr %method_list4, align 8, !dbg !3729, !tbaa !2787
  %nelts5 = getelementptr inbounds %struct.apr_array_header_t, ptr %13, i32 0, i32 2, !dbg !3730
  %14 = load i32, ptr %nelts5, align 4, !dbg !3730, !tbaa !1299
  %cmp6 = icmp slt i32 %11, %14, !dbg !3731
  br i1 %cmp6, label %for.body, label %for.end24, !dbg !3732

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %method.addr, align 8, !dbg !3733, !tbaa !1244
  %16 = load ptr, ptr %methods, align 8, !dbg !3736, !tbaa !1244
  %17 = load i32, ptr %i, align 4, !dbg !3737, !tbaa !1249
  %idxprom = sext i32 %17 to i64, !dbg !3736
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 %idxprom, !dbg !3736
  %18 = load ptr, ptr %arrayidx, align 8, !dbg !3736, !tbaa !1244
  %call7 = call i32 @strcmp(ptr noundef %15, ptr noundef %18) #8, !dbg !3738
  %cmp8 = icmp eq i32 %call7, 0, !dbg !3739
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !3740

if.then9:                                         ; preds = %for.body
  %19 = load i32, ptr %i, align 4, !dbg !3741, !tbaa !1249
  store i32 %19, ptr %j, align 4, !dbg !3744, !tbaa !1249
  %20 = load i32, ptr %i, align 4, !dbg !3745, !tbaa !1249
  %add = add nsw i32 %20, 1, !dbg !3746
  store i32 %add, ptr %k, align 4, !dbg !3747, !tbaa !1249
  br label %for.cond10, !dbg !3748

for.cond10:                                       ; preds = %for.inc, %if.then9
  %21 = load i32, ptr %k, align 4, !dbg !3749, !tbaa !1249
  %22 = load ptr, ptr %l.addr, align 8, !dbg !3751, !tbaa !1244
  %method_list11 = getelementptr inbounds %struct.ap_method_list_t, ptr %22, i32 0, i32 1, !dbg !3752
  %23 = load ptr, ptr %method_list11, align 8, !dbg !3752, !tbaa !2787
  %nelts12 = getelementptr inbounds %struct.apr_array_header_t, ptr %23, i32 0, i32 2, !dbg !3753
  %24 = load i32, ptr %nelts12, align 4, !dbg !3753, !tbaa !1299
  %cmp13 = icmp slt i32 %21, %24, !dbg !3754
  br i1 %cmp13, label %for.body14, label %for.end, !dbg !3755

for.body14:                                       ; preds = %for.cond10
  %25 = load ptr, ptr %methods, align 8, !dbg !3756, !tbaa !1244
  %26 = load i32, ptr %k, align 4, !dbg !3758, !tbaa !1249
  %idxprom15 = sext i32 %26 to i64, !dbg !3756
  %arrayidx16 = getelementptr inbounds ptr, ptr %25, i64 %idxprom15, !dbg !3756
  %27 = load ptr, ptr %arrayidx16, align 8, !dbg !3756, !tbaa !1244
  %28 = load ptr, ptr %methods, align 8, !dbg !3759, !tbaa !1244
  %29 = load i32, ptr %j, align 4, !dbg !3760, !tbaa !1249
  %idxprom17 = sext i32 %29 to i64, !dbg !3759
  %arrayidx18 = getelementptr inbounds ptr, ptr %28, i64 %idxprom17, !dbg !3759
  store ptr %27, ptr %arrayidx18, align 8, !dbg !3761, !tbaa !1244
  br label %for.inc, !dbg !3762

for.inc:                                          ; preds = %for.body14
  %30 = load i32, ptr %j, align 4, !dbg !3763, !tbaa !1249
  %inc = add nsw i32 %30, 1, !dbg !3763
  store i32 %inc, ptr %j, align 4, !dbg !3763, !tbaa !1249
  %31 = load i32, ptr %k, align 4, !dbg !3764, !tbaa !1249
  %inc19 = add nsw i32 %31, 1, !dbg !3764
  store i32 %inc19, ptr %k, align 4, !dbg !3764, !tbaa !1249
  br label %for.cond10, !dbg !3765, !llvm.loop !3766

for.end:                                          ; preds = %for.cond10
  %32 = load ptr, ptr %l.addr, align 8, !dbg !3768, !tbaa !1244
  %method_list20 = getelementptr inbounds %struct.ap_method_list_t, ptr %32, i32 0, i32 1, !dbg !3769
  %33 = load ptr, ptr %method_list20, align 8, !dbg !3769, !tbaa !2787
  %nelts21 = getelementptr inbounds %struct.apr_array_header_t, ptr %33, i32 0, i32 2, !dbg !3770
  %34 = load i32, ptr %nelts21, align 4, !dbg !3771, !tbaa !1299
  %dec = add nsw i32 %34, -1, !dbg !3771
  store i32 %dec, ptr %nelts21, align 4, !dbg !3771, !tbaa !1299
  br label %if.end23, !dbg !3772

if.else:                                          ; preds = %for.body
  %35 = load i32, ptr %i, align 4, !dbg !3773, !tbaa !1249
  %inc22 = add nsw i32 %35, 1, !dbg !3773
  store i32 %inc22, ptr %i, align 4, !dbg !3773, !tbaa !1249
  br label %if.end23

if.end23:                                         ; preds = %if.else, %for.end
  br label %for.cond, !dbg !3775, !llvm.loop !3776

for.end24:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7, !dbg !3778
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7, !dbg !3778
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !3778
  br label %if.end25, !dbg !3779

if.end25:                                         ; preds = %for.end24, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3780
  br label %cleanup, !dbg !3780

cleanup:                                          ; preds = %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %methods) #7, !dbg !3780
  call void @llvm.lifetime.end.p0(i64 4, ptr %methnum) #7, !dbg !3780
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3780

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @ap_clear_method_list(ptr noundef %l) #0 !dbg !3781 {
entry:
  %l.addr = alloca ptr, align 8
  store ptr %l, ptr %l.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !3785, metadata !DIExpression()), !dbg !3786
  %0 = load ptr, ptr %l.addr, align 8, !dbg !3787, !tbaa !1244
  %method_mask = getelementptr inbounds %struct.ap_method_list_t, ptr %0, i32 0, i32 0, !dbg !3788
  store i64 0, ptr %method_mask, align 8, !dbg !3789, !tbaa !2736
  %1 = load ptr, ptr %l.addr, align 8, !dbg !3790, !tbaa !1244
  %method_list = getelementptr inbounds %struct.ap_method_list_t, ptr %1, i32 0, i32 1, !dbg !3791
  %2 = load ptr, ptr %method_list, align 8, !dbg !3791, !tbaa !2787
  %nelts = getelementptr inbounds %struct.apr_array_header_t, ptr %2, i32 0, i32 2, !dbg !3792
  store i32 0, ptr %nelts, align 4, !dbg !3793, !tbaa !1299
  ret void, !dbg !3794
}

declare !dbg !3795 i32 @ap_mpm_query(i32 noundef, ptr noundef) #2

declare !dbg !3799 void @apr_hash_set(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !3802 i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

declare !dbg !3805 void @apr_array_cat(ptr noundef, ptr noundef) #2

declare !dbg !3808 ptr @apr_array_pstrcat(ptr noundef, ptr noundef, i8 noundef signext) #2

declare !dbg !3811 i32 @ap_rwrite(ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !3814 ptr @ap_escape_html2(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @add_optional_notes(ptr noundef %r, ptr noundef %prefix, ptr noundef %key, ptr noundef %suffix) #0 !dbg !3817 {
entry:
  %r.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %suffix.addr = alloca ptr, align 8
  %notes = alloca ptr, align 8
  %result = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3821, metadata !DIExpression()), !dbg !3827
  store ptr %prefix, ptr %prefix.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !3822, metadata !DIExpression()), !dbg !3828
  store ptr %key, ptr %key.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3823, metadata !DIExpression()), !dbg !3829
  store ptr %suffix, ptr %suffix.addr, align 8, !tbaa !1244
  tail call void @llvm.dbg.declare(metadata ptr %suffix.addr, metadata !3824, metadata !DIExpression()), !dbg !3830
  call void @llvm.lifetime.start.p0(i64 8, ptr %notes) #7, !dbg !3831
  tail call void @llvm.dbg.declare(metadata ptr %notes, metadata !3825, metadata !DIExpression()), !dbg !3832
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #7, !dbg !3831
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !3826, metadata !DIExpression()), !dbg !3833
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3834, !tbaa !1244
  %notes1 = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 38, !dbg !3836
  %1 = load ptr, ptr %notes1, align 8, !dbg !3836, !tbaa !3466
  %2 = load ptr, ptr %key.addr, align 8, !dbg !3837, !tbaa !1244
  %call = call ptr @apr_table_get(ptr noundef %1, ptr noundef %2), !dbg !3838
  store ptr %call, ptr %notes, align 8, !dbg !3839, !tbaa !1244
  %cmp = icmp eq ptr %call, null, !dbg !3840
  br i1 %cmp, label %if.then, label %if.else, !dbg !3841

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %r.addr, align 8, !dbg !3842, !tbaa !1244
  %pool = getelementptr inbounds %struct.request_rec, ptr %3, i32 0, i32 0, !dbg !3844
  %4 = load ptr, ptr %pool, align 8, !dbg !3844, !tbaa !1341
  %5 = load ptr, ptr %prefix.addr, align 8, !dbg !3845, !tbaa !1244
  %6 = load ptr, ptr %suffix.addr, align 8, !dbg !3846, !tbaa !1244
  %call2 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef null), !dbg !3847
  store ptr %call2, ptr %result, align 8, !dbg !3848, !tbaa !1244
  br label %if.end, !dbg !3849

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %r.addr, align 8, !dbg !3850, !tbaa !1244
  %pool3 = getelementptr inbounds %struct.request_rec, ptr %7, i32 0, i32 0, !dbg !3852
  %8 = load ptr, ptr %pool3, align 8, !dbg !3852, !tbaa !1341
  %9 = load ptr, ptr %prefix.addr, align 8, !dbg !3853, !tbaa !1244
  %10 = load ptr, ptr %notes, align 8, !dbg !3854, !tbaa !1244
  %11 = load ptr, ptr %suffix.addr, align 8, !dbg !3855, !tbaa !1244
  %call4 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef null), !dbg !3856
  store ptr %call4, ptr %result, align 8, !dbg !3857, !tbaa !1244
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load ptr, ptr %result, align 8, !dbg !3858, !tbaa !1244
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #7, !dbg !3859
  call void @llvm.lifetime.end.p0(i64 8, ptr %notes) #7, !dbg !3859
  ret ptr %12, !dbg !3860
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1228, !1229, !1230, !1231, !1232, !1233}
!llvm.ident = !{!1234}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_hooks", scope: !2, file: !3, line: 184, type: !1225, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !169, globals: !628, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "http_protocol.c", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src/modules/http", checksumkind: CSK_MD5, checksum: "23b9f05ec64dd0ad0d2bea198941bb4a")
!4 = !{!5, !64, !89, !98, !106, !118, !123, !128, !140, !147, !154}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !6, line: 151, baseType: !65, size: 32, elements: !86)
!6 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_buckets.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "afcd28b2e200d46cb3a438f3ad8fc6de")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_type_t", file: !6, line: 131, size: 448, elements: !8)
!8 = !{!9, !13, !15, !16, !21, !69, !77, !81}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !6, line: 135, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "num_func", scope: !7, file: !6, line: 140, baseType: !14, size: 32, offset: 64)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "is_metadata", scope: !7, file: !6, line: 156, baseType: !5, size: 32, offset: 96)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !7, file: !6, line: 164, baseType: !17, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !7, file: !6, line: 176, baseType: !22, size: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !27, !61, !62, !63}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_status_t", file: !26, line: 44, baseType: !14)
!26 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_errno.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "571a7b9d4a9f11f6d27db63c8ba4bc85")
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket", file: !6, line: 121, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket", file: !6, line: 224, size: 512, elements: !30)
!30 = !{!31, !38, !42, !48, !55, !56, !57}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !29, file: !6, line: 226, baseType: !32, size: 128)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !29, file: !6, line: 226, size: 128, elements: !33)
!33 = !{!34, !37}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !32, file: !6, line: 226, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !32, file: !6, line: 226, baseType: !35, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !29, file: !6, line: 228, baseType: !39, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_type_t", file: !6, line: 126, baseType: !7)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !29, file: !6, line: 234, baseType: !43, size: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_size_t", file: !44, line: 379, baseType: !45)
!44 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "73077acfd8398d55139f48047843856b")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 70, baseType: !47)
!46 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !29, file: !6, line: 242, baseType: !49, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_off_t", file: !44, line: 381, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !51, line: 85, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !53, line: 152, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!54 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !6, line: 244, baseType: !20, size: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !29, file: !6, line: 252, baseType: !17, size: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !29, file: !6, line: 254, baseType: !58, size: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_alloc_t", file: !6, line: 123, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_alloc_t", file: !6, line: 123, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_read_type_e", file: !6, line: 60, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 57, baseType: !65, size: 32, elements: !66)
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "APR_BLOCK_READ", value: 0)
!68 = !DIEnumerator(name: "APR_NONBLOCK_READ", value: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "setaside", scope: !7, file: !6, line: 192, baseType: !70, size: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!25, !27, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_pool_t", file: !75, line: 60, baseType: !76)
!75 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_pools.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "ca846d53df1698194c1a577ccf147813")
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_pool_t", file: !75, line: 60, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !7, file: !6, line: 203, baseType: !78, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!25, !27, !43}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !7, file: !6, line: 211, baseType: !82, size: 64, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!25, !27, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "APR_BUCKET_DATA", value: 0)
!88 = !DIEnumerator(name: "APR_BUCKET_METADATA", value: 1)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 41, baseType: !65, size: 32, elements: !91)
!90 = !DIFile(filename: "include/util_filter.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "894e51124b630754ca6243e0c50426ad")
!91 = !{!92, !93, !94, !95, !96, !97}
!92 = !DIEnumerator(name: "AP_MODE_READBYTES", value: 0)
!93 = !DIEnumerator(name: "AP_MODE_GETLINE", value: 1)
!94 = !DIEnumerator(name: "AP_MODE_EATCRLF", value: 2)
!95 = !DIEnumerator(name: "AP_MODE_SPECULATIVE", value: 3)
!96 = !DIEnumerator(name: "AP_MODE_EXHAUSTIVE", value: 4)
!97 = !DIEnumerator(name: "AP_MODE_INIT", value: 5)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 158, baseType: !65, size: 32, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105}
!100 = !DIEnumerator(name: "AP_FTYPE_RESOURCE", value: 10)
!101 = !DIEnumerator(name: "AP_FTYPE_CONTENT_SET", value: 20)
!102 = !DIEnumerator(name: "AP_FTYPE_PROTOCOL", value: 30)
!103 = !DIEnumerator(name: "AP_FTYPE_TRANSCODE", value: 40)
!104 = !DIEnumerator(name: "AP_FTYPE_CONNECTION", value: 50)
!105 = !DIEnumerator(name: "AP_FTYPE_NETWORK", value: 60)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 1251, baseType: !65, size: 32, elements: !108)
!107 = !DIFile(filename: "include/httpd.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "13796706810e88ffd526cf3216ebbaab")
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117}
!109 = !DIEnumerator(name: "CONN_STATE_CHECK_REQUEST_LINE_READABLE", value: 0)
!110 = !DIEnumerator(name: "CONN_STATE_READ_REQUEST_LINE", value: 1)
!111 = !DIEnumerator(name: "CONN_STATE_HANDLER", value: 2)
!112 = !DIEnumerator(name: "CONN_STATE_WRITE_COMPLETION", value: 3)
!113 = !DIEnumerator(name: "CONN_STATE_SUSPENDED", value: 4)
!114 = !DIEnumerator(name: "CONN_STATE_LINGER", value: 5)
!115 = !DIEnumerator(name: "CONN_STATE_LINGER_NORMAL", value: 6)
!116 = !DIEnumerator(name: "CONN_STATE_LINGER_SHORT", value: 7)
!117 = !DIEnumerator(name: "CONN_STATE_NUM", value: 8)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 1264, baseType: !65, size: 32, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "CONN_SENSE_DEFAULT", value: 0)
!121 = !DIEnumerator(name: "CONN_SENSE_WANT_READ", value: 1)
!122 = !DIEnumerator(name: "CONN_SENSE_WANT_WRITE", value: 2)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 1136, baseType: !65, size: 32, elements: !124)
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "AP_CONN_UNKNOWN", value: 0)
!126 = !DIEnumerator(name: "AP_CONN_CLOSE", value: 1)
!127 = !DIEnumerator(name: "AP_CONN_KEEPALIVE", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 62, baseType: !65, size: 32, elements: !130)
!129 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_file_info.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "58895203e42ced4eaee1557b60315f00")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139}
!131 = !DIEnumerator(name: "APR_NOFILE", value: 0)
!132 = !DIEnumerator(name: "APR_REG", value: 1)
!133 = !DIEnumerator(name: "APR_DIR", value: 2)
!134 = !DIEnumerator(name: "APR_CHR", value: 3)
!135 = !DIEnumerator(name: "APR_BLK", value: 4)
!136 = !DIEnumerator(name: "APR_PIPE", value: 5)
!137 = !DIEnumerator(name: "APR_LNK", value: 6)
!138 = !DIEnumerator(name: "APR_SOCK", value: 7)
!139 = !DIEnumerator(name: "APR_UNKFILE", value: 127)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !141, line: 234, baseType: !65, size: 32, elements: !142)
!141 = !DIFile(filename: "include/http_protocol.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "7b8f2c60fabe1ef06f77b57dff1987b8")
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "AP_CONDITION_NONE", value: 0)
!144 = !DIEnumerator(name: "AP_CONDITION_NOMATCH", value: 1)
!145 = !DIEnumerator(name: "AP_CONDITION_WEAK", value: 2)
!146 = !DIEnumerator(name: "AP_CONDITION_STRONG", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 516, baseType: !65, size: 32, elements: !149)
!148 = !DIFile(filename: "include/http_core.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "7116b18b3c8f25f4572ebe871e6b69f9")
!149 = !{!150, !151, !152, !153}
!150 = !DIEnumerator(name: "srv_sig_unset", value: 0)
!151 = !DIEnumerator(name: "srv_sig_off", value: 1)
!152 = !DIEnumerator(name: "srv_sig_on", value: 2)
!153 = !DIEnumerator(name: "srv_sig_withmail", value: 3)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 46, baseType: !65, size: 32, elements: !156)
!155 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!157 = !DIEnumerator(name: "_ISupper", value: 256)
!158 = !DIEnumerator(name: "_ISlower", value: 512)
!159 = !DIEnumerator(name: "_ISalpha", value: 1024)
!160 = !DIEnumerator(name: "_ISdigit", value: 2048)
!161 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!162 = !DIEnumerator(name: "_ISspace", value: 8192)
!163 = !DIEnumerator(name: "_ISprint", value: 16384)
!164 = !DIEnumerator(name: "_ISgraph", value: 32768)
!165 = !DIEnumerator(name: "_ISblank", value: 1)
!166 = !DIEnumerator(name: "_IScntrl", value: 2)
!167 = !DIEnumerator(name: "_ISpunct", value: 4)
!168 = !DIEnumerator(name: "_ISalnum", value: 8)
!169 = !{!170, !14, !20, !479, !625, !626, !288, !233, !487, !627, !338, !61}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_LINK_insert_error_filter_t", file: !141, line: 44, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_LINK_insert_error_filter_t", file: !141, line: 44, size: 320, elements: !173)
!173 = !{!174, !621, !622, !623, !624}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pFunc", scope: !172, file: !141, line: 44, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_HOOK_insert_error_filter_t", file: !141, line: 44, baseType: !177)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_rec", file: !107, line: 811, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_rec", file: !107, line: 838, size: 5888, elements: !182)
!182 = !{!183, !184, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !480, !481, !482, !483, !484, !485, !486, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !541, !542, !543, !544, !545, !546, !547, !552, !573, !610, !611, !612, !613, !614, !615, !616}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !181, file: !107, line: 840, baseType: !73, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !181, file: !107, line: 842, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_rec", file: !107, line: 809, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_rec", file: !107, line: 1145, size: 1664, elements: !188)
!188 = !{!189, !190, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !378, !435, !436, !437, !439, !448, !449, !450, !451, !452, !453, !455, !456, !459, !460, !465, !466}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !187, file: !107, line: 1147, baseType: !73, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "base_server", scope: !187, file: !107, line: 1149, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_rec", file: !107, line: 807, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "server_rec", file: !107, line: 1315, size: 1536, elements: !194)
!194 = !{!195, !207, !208, !210, !215, !222, !225, !226, !227, !228, !229, !234, !235, !236, !237, !335, !342, !343, !344, !345, !356, !357, !358, !359, !360, !361, !362, !363}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !193, file: !107, line: 1317, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "process_rec", file: !107, line: 805, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "process_rec", file: !107, line: 822, size: 320, elements: !199)
!199 = !{!200, !201, !202, !203, !206}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !198, file: !107, line: 824, baseType: !73, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pconf", scope: !198, file: !107, line: 826, baseType: !73, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "short_name", scope: !198, file: !107, line: 828, baseType: !10, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !198, file: !107, line: 830, baseType: !204, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !198, file: !107, line: 832, baseType: !14, size: 32, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !107, line: 1319, baseType: !191, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "error_fname", scope: !193, file: !107, line: 1324, baseType: !209, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !193, file: !107, line: 1326, baseType: !211, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_file_t", file: !213, line: 188, baseType: !214)
!213 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_file_io.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "9f1a845f7255d07e28e3a10d24320b5d")
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_file_t", file: !129, line: 212, flags: DIFlagFwdDecl)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !193, file: !107, line: 1328, baseType: !216, size: 128, offset: 256)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_logconf", file: !107, line: 1305, size: 128, elements: !217)
!217 = !{!218, !221}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "module_levels", scope: !216, file: !107, line: 1307, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !216, file: !107, line: 1310, baseType: !14, size: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "module_config", scope: !193, file: !107, line: 1334, baseType: !223, size: 64, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DICompositeType(tag: DW_TAG_structure_type, name: "ap_conf_vector_t", file: !107, line: 791, flags: DIFlagFwdDecl)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_defaults", scope: !193, file: !107, line: 1336, baseType: !223, size: 64, offset: 448)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "defn_name", scope: !193, file: !107, line: 1339, baseType: !10, size: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "defn_line_number", scope: !193, file: !107, line: 1341, baseType: !65, size: 32, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !193, file: !107, line: 1343, baseType: !12, size: 8, offset: 608)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !193, file: !107, line: 1349, baseType: !230, size: 16, offset: 624)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_port_t", file: !231, line: 230, baseType: !232)
!231 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_network_io.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "d28b53dbcb33f6acce926c2efb3f7365")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uint16_t", file: !44, line: 331, baseType: !233)
!233 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "server_scheme", scope: !193, file: !107, line: 1351, baseType: !10, size: 64, offset: 640)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "server_admin", scope: !193, file: !107, line: 1356, baseType: !209, size: 64, offset: 704)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "server_hostname", scope: !193, file: !107, line: 1358, baseType: !209, size: 64, offset: 768)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !193, file: !107, line: 1363, baseType: !238, size: 64, offset: 832)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_addr_rec", file: !107, line: 1293, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "server_addr_rec", file: !107, line: 1294, size: 256, elements: !241)
!241 = !{!242, !243, !244, !334}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !240, file: !107, line: 1296, baseType: !238, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "virthost", scope: !240, file: !107, line: 1298, baseType: !209, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "host_addr", scope: !240, file: !107, line: 1300, baseType: !245, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_sockaddr_t", file: !231, line: 235, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_sockaddr_t", file: !231, line: 239, size: 1536, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !255, !260, !261, !262, !263, !264}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !247, file: !231, line: 241, baseType: !73, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !247, file: !231, line: 243, baseType: !209, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "servname", scope: !247, file: !231, line: 245, baseType: !209, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !247, file: !231, line: 247, baseType: !230, size: 16, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !247, file: !231, line: 249, baseType: !254, size: 32, offset: 224)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_int32_t", file: !44, line: 333, baseType: !14)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "salen", scope: !247, file: !231, line: 251, baseType: !256, size: 32, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_socklen_t", file: !44, line: 382, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !258, line: 33, baseType: !259)
!258 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !53, line: 210, baseType: !65)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr_len", scope: !247, file: !231, line: 253, baseType: !14, size: 32, offset: 288)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "addr_str_len", scope: !247, file: !231, line: 256, baseType: !14, size: 32, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr_ptr", scope: !247, file: !231, line: 259, baseType: !20, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !231, line: 262, baseType: !245, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !247, file: !231, line: 280, baseType: !265, size: 1024, offset: 512)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !231, line: 264, size: 1024, elements: !266)
!266 = !{!267, !291, !316, !325}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !265, file: !231, line: 266, baseType: !268, size: 128)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !269, line: 245, size: 128, elements: !270)
!269 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!270 = !{!271, !274, !279, !286}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !268, file: !269, line: 247, baseType: !272, size: 16)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !273, line: 28, baseType: !233)
!273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!274 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !268, file: !269, line: 248, baseType: !275, size: 16, offset: 16)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !269, line: 123, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !277, line: 25, baseType: !278)
!277 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !53, line: 40, baseType: !233)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !268, file: !269, line: 249, baseType: !280, size: 32, offset: 32)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !269, line: 31, size: 32, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !280, file: !269, line: 33, baseType: !283, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !269, line: 30, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !277, line: 26, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !53, line: 42, baseType: !65)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !268, file: !269, line: 252, baseType: !287, size: 64, offset: 64)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 64, elements: !289)
!288 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!289 = !{!290}
!290 = !DISubrange(count: 8)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "sin6", scope: !265, file: !231, line: 269, baseType: !292, size: 224)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !269, line: 260, size: 224, elements: !293)
!293 = !{!294, !295, !296, !297, !315}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !292, file: !269, line: 262, baseType: !272, size: 16)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !292, file: !269, line: 263, baseType: !275, size: 16, offset: 16)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !292, file: !269, line: 264, baseType: !284, size: 32, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !292, file: !269, line: 265, baseType: !298, size: 128, offset: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !269, line: 219, size: 128, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !298, file: !269, line: 226, baseType: !301, size: 128)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !269, line: 221, size: 128, elements: !302)
!302 = !{!303, !309, !311}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !301, file: !269, line: 223, baseType: !304, size: 128)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 128, elements: !307)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !277, line: 24, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !53, line: 38, baseType: !288)
!307 = !{!308}
!308 = !DISubrange(count: 16)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !301, file: !269, line: 224, baseType: !310, size: 128)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 128, elements: !289)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !301, file: !269, line: 225, baseType: !312, size: 128)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 128, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 4)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !292, file: !269, line: 266, baseType: !284, size: 32, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sas", scope: !265, file: !231, line: 274, baseType: !317, size: 1024)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !258, line: 193, size: 1024, elements: !318)
!318 = !{!319, !320, !324}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !317, file: !258, line: 195, baseType: !272, size: 16)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !317, file: !258, line: 196, baseType: !321, size: 944, offset: 16)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 944, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 118)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !317, file: !258, line: 197, baseType: !47, size: 64, offset: 960)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "unx", scope: !265, file: !231, line: 278, baseType: !326, size: 880)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !327, line: 29, size: 880, elements: !328)
!327 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !326, file: !327, line: 31, baseType: !272, size: 16)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !326, file: !327, line: 32, baseType: !331, size: 864, offset: 16)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 864, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 108)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "host_port", scope: !240, file: !107, line: 1302, baseType: !230, size: 16, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !193, file: !107, line: 1365, baseType: !336, size: 64, offset: 896)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_interval_time_t", file: !337, line: 55, baseType: !338)
!337 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_time.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "1a8b9732d4ee010f71e3eb03e6e3a16e")
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_int64_t", file: !44, line: 371, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !340, line: 27, baseType: !341)
!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !53, line: 44, baseType: !54)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !193, file: !107, line: 1367, baseType: !336, size: 64, offset: 960)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_max", scope: !193, file: !107, line: 1369, baseType: !14, size: 32, offset: 1024)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !193, file: !107, line: 1371, baseType: !14, size: 32, offset: 1056)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !193, file: !107, line: 1374, baseType: !346, size: 64, offset: 1088)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_array_header_t", file: !348, line: 59, baseType: !349)
!348 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_tables.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "82dd315cfdbab9381cd05a1d2abe34a2")
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_array_header_t", file: !348, line: 62, size: 256, elements: !350)
!350 = !{!351, !352, !353, !354, !355}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !349, file: !348, line: 64, baseType: !73, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "elt_size", scope: !349, file: !348, line: 66, baseType: !14, size: 32, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !349, file: !348, line: 68, baseType: !14, size: 32, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !349, file: !348, line: 70, baseType: !14, size: 32, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !349, file: !348, line: 72, baseType: !209, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wild_names", scope: !193, file: !107, line: 1376, baseType: !346, size: 64, offset: 1152)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !193, file: !107, line: 1379, baseType: !10, size: 64, offset: 1216)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pathlen", scope: !193, file: !107, line: 1381, baseType: !14, size: 32, offset: 1280)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_line", scope: !193, file: !107, line: 1384, baseType: !14, size: 32, offset: 1312)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_fieldsize", scope: !193, file: !107, line: 1386, baseType: !14, size: 32, offset: 1344)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_fields", scope: !193, file: !107, line: 1388, baseType: !14, size: 32, offset: 1376)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !193, file: !107, line: 1391, baseType: !20, size: 64, offset: 1408)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout_set", scope: !193, file: !107, line: 1396, baseType: !65, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "vhost_lookup_data", scope: !187, file: !107, line: 1151, baseType: !20, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr", scope: !187, file: !107, line: 1155, baseType: !245, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "client_addr", scope: !187, file: !107, line: 1159, baseType: !245, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "client_ip", scope: !187, file: !107, line: 1164, baseType: !209, size: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "remote_host", scope: !187, file: !107, line: 1168, baseType: !209, size: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "remote_logname", scope: !187, file: !107, line: 1171, baseType: !209, size: 64, offset: 448)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !187, file: !107, line: 1174, baseType: !209, size: 64, offset: 512)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "local_host", scope: !187, file: !107, line: 1177, baseType: !209, size: 64, offset: 576)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !187, file: !107, line: 1180, baseType: !54, size: 64, offset: 640)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "conn_config", scope: !187, file: !107, line: 1183, baseType: !223, size: 64, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !187, file: !107, line: 1186, baseType: !375, size: 64, offset: 768)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_table_t", file: !348, line: 56, baseType: !377)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_table_t", file: !348, line: 56, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "input_filters", scope: !187, file: !107, line: 1188, baseType: !379, size: 64, offset: 832)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_filter_t", file: !90, line: 259, size: 320, elements: !381)
!381 = !{!382, !431, !432, !433, !434}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "frec", scope: !380, file: !90, line: 263, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_rec_t", file: !90, line: 199, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_filter_rec_t", file: !90, line: 215, size: 448, elements: !386)
!386 = !{!387, !388, !416, !421, !423, !427, !429, !430}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !90, line: 217, baseType: !10, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "filter_func", scope: !385, file: !90, line: 220, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_func", file: !90, line: 146, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "ap_filter_func", file: !90, line: 143, size: 64, elements: !391)
!391 = !{!392, !410}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "out_func", scope: !390, file: !90, line: 144, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_out_filter_func", file: !90, line: 134, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!25, !397, !399}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_t", file: !90, line: 94, baseType: !380)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_brigade", file: !6, line: 119, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_brigade", file: !6, line: 258, size: 256, elements: !402)
!402 = !{!403, !404, !409}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !401, file: !6, line: 264, baseType: !73, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !401, file: !6, line: 273, baseType: !405, size: 128, offset: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_list", file: !6, line: 273, size: 128, elements: !406)
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !6, line: 273, baseType: !35, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !405, file: !6, line: 273, baseType: !35, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_alloc", scope: !401, file: !6, line: 275, baseType: !58, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "in_func", scope: !390, file: !90, line: 145, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_in_filter_func", file: !90, line: 136, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!25, !397, !399, !415, !63, !49}
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_input_mode_t", file: !90, line: 63, baseType: !89)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "filter_init_func", scope: !385, file: !90, line: 230, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_init_filter_func", file: !90, line: 141, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!14, !397}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !90, line: 233, baseType: !422, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "providers", scope: !385, file: !90, line: 236, baseType: !424, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_provider_t", file: !90, line: 200, baseType: !426)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "ap_filter_provider_t", file: !90, line: 200, flags: DIFlagFwdDecl)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ftype", scope: !385, file: !90, line: 243, baseType: !428, size: 32, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_type", file: !90, line: 184, baseType: !98)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !385, file: !90, line: 246, baseType: !14, size: 32, offset: 352)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "proto_flags", scope: !385, file: !90, line: 249, baseType: !65, size: 32, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !380, file: !90, line: 266, baseType: !20, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !90, line: 269, baseType: !397, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !380, file: !90, line: 275, baseType: !179, size: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !380, file: !90, line: 280, baseType: !185, size: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "output_filters", scope: !187, file: !107, line: 1190, baseType: !379, size: 64, offset: 896)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sbh", scope: !187, file: !107, line: 1192, baseType: !20, size: 64, offset: 960)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_alloc", scope: !187, file: !107, line: 1194, baseType: !438, size: 64, offset: 1024)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !187, file: !107, line: 1196, baseType: !440, size: 64, offset: 1088)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_state_t", file: !107, line: 813, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_state_t", file: !107, line: 1273, size: 64, elements: !443)
!443 = !{!444, !446}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !442, file: !107, line: 1275, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_state_e", file: !107, line: 1262, baseType: !106)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sense", scope: !442, file: !107, line: 1277, baseType: !447, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_sense_e", file: !107, line: 1268, baseType: !118)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "data_in_input_filters", scope: !187, file: !107, line: 1198, baseType: !14, size: 32, offset: 1152)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "data_in_output_filters", scope: !187, file: !107, line: 1200, baseType: !14, size: 32, offset: 1184)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "clogging_input_filters", scope: !187, file: !107, line: 1205, baseType: !65, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "double_reverse", scope: !187, file: !107, line: 1209, baseType: !14, size: 2, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "aborted", scope: !187, file: !107, line: 1212, baseType: !65, size: 32, offset: 1248)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !187, file: !107, line: 1216, baseType: !454, size: 32, offset: 1280)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_conn_keepalive_e", file: !107, line: 1140, baseType: !123)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "keepalives", scope: !187, file: !107, line: 1219, baseType: !14, size: 32, offset: 1312)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !187, file: !107, line: 1223, baseType: !457, size: 64, offset: 1344)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "log_id", scope: !187, file: !107, line: 1228, baseType: !10, size: 64, offset: 1408)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "current_thread", scope: !187, file: !107, line: 1237, baseType: !461, size: 64, offset: 1472)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_thread_t", file: !463, line: 178, baseType: !464)
!463 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_thread_proc.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "86521d0dbb7f1fbad577c4bb2abede6c")
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_thread_t", file: !463, line: 178, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !187, file: !107, line: 1241, baseType: !185, size: 64, offset: 1536)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "outgoing", scope: !187, file: !107, line: 1243, baseType: !14, size: 32, offset: 1600)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !181, file: !107, line: 844, baseType: !191, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !107, line: 847, baseType: !179, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !181, file: !107, line: 849, baseType: !179, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !181, file: !107, line: 853, baseType: !179, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "the_request", scope: !181, file: !107, line: 859, baseType: !209, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "assbackwards", scope: !181, file: !107, line: 861, baseType: !14, size: 32, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "proxyreq", scope: !181, file: !107, line: 866, baseType: !14, size: 32, offset: 480)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "header_only", scope: !181, file: !107, line: 868, baseType: !14, size: 32, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "proto_num", scope: !181, file: !107, line: 870, baseType: !14, size: 32, offset: 544)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !181, file: !107, line: 872, baseType: !209, size: 64, offset: 576)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !181, file: !107, line: 876, baseType: !10, size: 64, offset: 640)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "request_time", scope: !181, file: !107, line: 879, baseType: !479, size: 64, offset: 704)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_time_t", file: !337, line: 45, baseType: !338)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !181, file: !107, line: 882, baseType: !10, size: 64, offset: 768)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !181, file: !107, line: 884, baseType: !14, size: 32, offset: 832)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "method_number", scope: !181, file: !107, line: 891, baseType: !14, size: 32, offset: 864)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !181, file: !107, line: 893, baseType: !10, size: 64, offset: 896)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !181, file: !107, line: 915, baseType: !338, size: 64, offset: 960)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_xmethods", scope: !181, file: !107, line: 917, baseType: !346, size: 64, offset: 1024)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_methods", scope: !181, file: !107, line: 919, baseType: !487, size: 64, offset: 1088)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_method_list_t", file: !107, line: 634, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_method_list_t", file: !107, line: 643, size: 128, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "method_mask", scope: !489, file: !107, line: 645, baseType: !338, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "method_list", scope: !489, file: !107, line: 647, baseType: !346, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bodyct", scope: !181, file: !107, line: 922, baseType: !49, size: 64, offset: 1152)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !181, file: !107, line: 924, baseType: !49, size: 64, offset: 1216)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !181, file: !107, line: 926, baseType: !479, size: 64, offset: 1280)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !181, file: !107, line: 931, baseType: !10, size: 64, offset: 1344)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "clength", scope: !181, file: !107, line: 933, baseType: !49, size: 64, offset: 1408)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !181, file: !107, line: 935, baseType: !14, size: 32, offset: 1472)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "read_body", scope: !181, file: !107, line: 940, baseType: !14, size: 32, offset: 1504)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "read_chunked", scope: !181, file: !107, line: 942, baseType: !14, size: 32, offset: 1536)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_100", scope: !181, file: !107, line: 944, baseType: !65, size: 32, offset: 1568)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "kept_body", scope: !181, file: !107, line: 946, baseType: !399, size: 64, offset: 1600)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "body_table", scope: !181, file: !107, line: 950, baseType: !375, size: 64, offset: 1664)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !181, file: !107, line: 952, baseType: !49, size: 64, offset: 1728)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "read_length", scope: !181, file: !107, line: 954, baseType: !49, size: 64, offset: 1792)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !181, file: !107, line: 969, baseType: !375, size: 64, offset: 1856)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "headers_out", scope: !181, file: !107, line: 971, baseType: !375, size: 64, offset: 1920)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "err_headers_out", scope: !181, file: !107, line: 974, baseType: !375, size: 64, offset: 1984)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "subprocess_env", scope: !181, file: !107, line: 976, baseType: !375, size: 64, offset: 2048)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !181, file: !107, line: 978, baseType: !375, size: 64, offset: 2112)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !181, file: !107, line: 985, baseType: !10, size: 64, offset: 2176)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !181, file: !107, line: 987, baseType: !10, size: 64, offset: 2240)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !181, file: !107, line: 990, baseType: !10, size: 64, offset: 2304)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "content_languages", scope: !181, file: !107, line: 992, baseType: !346, size: 64, offset: 2368)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "vlist_validator", scope: !181, file: !107, line: 995, baseType: !209, size: 64, offset: 2432)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !181, file: !107, line: 998, baseType: !209, size: 64, offset: 2496)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ap_auth_type", scope: !181, file: !107, line: 1000, baseType: !209, size: 64, offset: 2560)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "unparsed_uri", scope: !181, file: !107, line: 1007, baseType: !209, size: 64, offset: 2624)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !181, file: !107, line: 1009, baseType: !209, size: 64, offset: 2688)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !181, file: !107, line: 1011, baseType: !209, size: 64, offset: 2752)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_filename", scope: !181, file: !107, line: 1015, baseType: !209, size: 64, offset: 2816)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "path_info", scope: !181, file: !107, line: 1017, baseType: !209, size: 64, offset: 2880)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !181, file: !107, line: 1019, baseType: !209, size: 64, offset: 2944)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "used_path_info", scope: !181, file: !107, line: 1029, baseType: !14, size: 32, offset: 3008)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "eos_sent", scope: !181, file: !107, line: 1032, baseType: !14, size: 32, offset: 3040)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "per_dir_config", scope: !181, file: !107, line: 1040, baseType: !223, size: 64, offset: 3072)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "request_config", scope: !181, file: !107, line: 1042, baseType: !223, size: 64, offset: 3136)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !181, file: !107, line: 1047, baseType: !457, size: 64, offset: 3200)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "log_id", scope: !181, file: !107, line: 1052, baseType: !10, size: 64, offset: 3264)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "htaccess", scope: !181, file: !107, line: 1060, baseType: !531, size: 64, offset: 3328)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htaccess_result", file: !107, line: 781, size: 320, elements: !534)
!534 = !{!535, !536, !537, !538, !539, !540}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !533, file: !107, line: 783, baseType: !10, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !533, file: !107, line: 785, baseType: !14, size: 32, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "override_opts", scope: !533, file: !107, line: 787, baseType: !14, size: 32, offset: 96)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "override_list", scope: !533, file: !107, line: 789, baseType: !375, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "htaccess", scope: !533, file: !107, line: 791, baseType: !223, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !107, line: 793, baseType: !531, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "output_filters", scope: !181, file: !107, line: 1063, baseType: !379, size: 64, offset: 3392)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "input_filters", scope: !181, file: !107, line: 1065, baseType: !379, size: 64, offset: 3456)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "proto_output_filters", scope: !181, file: !107, line: 1069, baseType: !379, size: 64, offset: 3520)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "proto_input_filters", scope: !181, file: !107, line: 1072, baseType: !379, size: 64, offset: 3584)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !181, file: !107, line: 1075, baseType: !14, size: 32, offset: 3648)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "no_local_copy", scope: !181, file: !107, line: 1077, baseType: !14, size: 32, offset: 3680)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "invoke_mtx", scope: !181, file: !107, line: 1082, baseType: !548, size: 64, offset: 3712)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_thread_mutex_t", file: !550, line: 41, baseType: !551)
!550 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_thread_mutex.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "333d6b386ebd5ebf2a57c53b3ab4b684")
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_thread_mutex_t", file: !550, line: 41, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "parsed_uri", scope: !181, file: !107, line: 1085, baseType: !553, size: 704, offset: 3776)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uri_t", file: !554, line: 80, baseType: !555)
!554 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_uri.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "9269047179f727bd075392a12871b578")
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_uri_t", file: !554, line: 85, size: 704, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !569, !570, !571, !572}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !555, file: !554, line: 87, baseType: !209, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "hostinfo", scope: !555, file: !554, line: 89, baseType: !209, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !555, file: !554, line: 91, baseType: !209, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !555, file: !554, line: 93, baseType: !209, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !555, file: !554, line: 95, baseType: !209, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "port_str", scope: !555, file: !554, line: 97, baseType: !209, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !555, file: !554, line: 99, baseType: !209, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !555, file: !554, line: 101, baseType: !209, size: 64, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !555, file: !554, line: 103, baseType: !209, size: 64, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hostent", scope: !555, file: !554, line: 106, baseType: !567, size: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !554, line: 106, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !555, file: !554, line: 109, baseType: !230, size: 16, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "is_initialized", scope: !555, file: !554, line: 112, baseType: !65, size: 1, offset: 656, flags: DIFlagBitField, extraData: i64 656)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dns_looked_up", scope: !555, file: !554, line: 115, baseType: !65, size: 1, offset: 657, flags: DIFlagBitField, extraData: i64 656)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dns_resolved", scope: !555, file: !554, line: 117, baseType: !65, size: 1, offset: 658, flags: DIFlagBitField, extraData: i64 656)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "finfo", scope: !181, file: !107, line: 1087, baseType: !574, size: 960, offset: 4480)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_finfo_t", file: !129, line: 143, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_finfo_t", file: !129, line: 174, size: 960, elements: !576)
!576 = !{!577, !578, !579, !581, !583, !588, !592, !596, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !575, file: !129, line: 176, baseType: !73, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !575, file: !129, line: 179, baseType: !254, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "protection", scope: !575, file: !129, line: 181, baseType: !580, size: 32, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_fileperms_t", file: !129, line: 125, baseType: !254)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "filetype", scope: !575, file: !129, line: 186, baseType: !582, size: 32, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_filetype_e", file: !129, line: 72, baseType: !128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !575, file: !129, line: 188, baseType: !584, size: 32, offset: 160)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uid_t", file: !585, line: 45, baseType: !586)
!585 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_user.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "724f26fd838740b0ca4b55f59030741b")
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !51, line: 79, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !53, line: 146, baseType: !65)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !575, file: !129, line: 190, baseType: !589, size: 32, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_gid_t", file: !585, line: 54, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !51, line: 64, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !53, line: 147, baseType: !65)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !575, file: !129, line: 192, baseType: !593, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_ino_t", file: !44, line: 383, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !51, line: 47, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !53, line: 148, baseType: !47)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !575, file: !129, line: 194, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_dev_t", file: !129, line: 135, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !51, line: 59, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !53, line: 145, baseType: !47)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !575, file: !129, line: 196, baseType: !254, size: 32, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !575, file: !129, line: 198, baseType: !49, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "csize", scope: !575, file: !129, line: 200, baseType: !49, size: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !575, file: !129, line: 202, baseType: !479, size: 64, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !575, file: !129, line: 204, baseType: !479, size: 64, offset: 640)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !575, file: !129, line: 206, baseType: !479, size: 64, offset: 704)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !575, file: !129, line: 208, baseType: !10, size: 64, offset: 768)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !575, file: !129, line: 210, baseType: !10, size: 64, offset: 832)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "filehand", scope: !575, file: !129, line: 212, baseType: !609, size: 64, offset: 896)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_addr", scope: !181, file: !107, line: 1093, baseType: !245, size: 64, offset: 5440)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_ip", scope: !181, file: !107, line: 1094, baseType: !209, size: 64, offset: 5504)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "trailers_in", scope: !181, file: !107, line: 1097, baseType: !375, size: 64, offset: 5568)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "trailers_out", scope: !181, file: !107, line: 1099, baseType: !375, size: 64, offset: 5632)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_host", scope: !181, file: !107, line: 1104, baseType: !209, size: 64, offset: 5696)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "double_reverse", scope: !181, file: !107, line: 1108, baseType: !14, size: 32, offset: 5760)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "bnotes", scope: !181, file: !107, line: 1113, baseType: !617, size: 64, offset: 5824)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_request_bnotes_t", file: !107, line: 662, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uint64_t", file: !44, line: 372, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !277, line: 27, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !53, line: 45, baseType: !47)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "szName", scope: !172, file: !141, line: 44, baseType: !10, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "aszPredecessors", scope: !172, file: !141, line: 44, baseType: !204, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "aszSuccessors", scope: !172, file: !141, line: 44, baseType: !204, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "nOrder", scope: !172, file: !141, line: 44, baseType: !14, size: 32, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!628 = !{!629, !634, !639, !644, !649, !654, !659, !662, !664, !666, !671, !673, !678, !683, !685, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !713, !716, !718, !720, !722, !724, !729, !731, !733, !735, !737, !739, !742, !744, !746, !748, !750, !752, !754, !756, !758, !763, !765, !767, !770, !775, !780, !782, !784, !786, !788, !790, !795, !800, !802, !807, !809, !811, !816, !821, !823, !825, !830, !832, !0, !834, !840, !842, !852, !854, !859, !861, !863, !865, !867, !872, !874, !876, !878, !880, !885, !887, !889, !894, !896, !898, !900, !902, !904, !906, !908, !910, !912, !914, !916, !918, !920, !922, !924, !926, !928, !930, !932, !937, !942, !947, !952, !954, !956, !958, !960, !962, !964, !969, !971, !973, !975, !977, !979, !981, !983, !985, !990, !992, !994, !996, !998, !1000, !1005, !1007, !1009, !1014, !1019, !1024, !1026, !1028, !1030, !1035, !1040, !1042, !1047, !1052, !1054, !1059, !1064, !1069, !1071, !1076, !1081, !1086, !1091, !1096, !1101, !1106, !1111, !1116, !1118, !1120, !1125, !1127, !1132, !1137, !1142, !1147, !1152, !1157, !1159, !1164, !1169, !1174, !1179, !1181, !1186, !1191, !1196, !1201, !1206, !1208, !1213, !1215, !1220}
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !3, line: 188, type: !631, isLocal: true, isDefinition: true)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 20)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !3, line: 222, type: !636, isLocal: true, isDefinition: true)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 88, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 11)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !3, line: 223, type: !641, isLocal: true, isDefinition: true)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 48, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 6)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !3, line: 259, type: !646, isLocal: true, isDefinition: true)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 120, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 15)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !3, line: 262, type: !651, isLocal: true, isDefinition: true)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 144, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 18)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !3, line: 272, type: !656, isLocal: true, isDefinition: true)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 96, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 12)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !3, line: 273, type: !661, isLocal: true, isDefinition: true)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !313)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !3, line: 274, type: !636, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !636, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !3, line: 285, type: !668, isLocal: true, isDefinition: true)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 152, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 19)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !3, line: 291, type: !636, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !3, line: 335, type: !675, isLocal: true, isDefinition: true)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 72, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 9)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !3, line: 337, type: !680, isLocal: true, isDefinition: true)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 40, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 5)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !3, line: 354, type: !631, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !3, line: 363, type: !687, isLocal: true, isDefinition: true)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 112, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 14)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !3, line: 369, type: !680, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !641, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !3, line: 402, type: !687, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !3, line: 443, type: !651, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !3, line: 493, type: !675, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !3, line: 692, type: !661, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !3, line: 693, type: !680, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !3, line: 694, type: !661, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !3, line: 695, type: !680, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !3, line: 696, type: !710, isLocal: true, isDefinition: true)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 56, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 7)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !3, line: 697, type: !715, isLocal: true, isDefinition: true)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !289)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !3, line: 698, type: !715, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !3, line: 699, type: !641, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !3, line: 700, type: !641, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !3, line: 701, type: !675, isLocal: true, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !3, line: 702, type: !726, isLocal: true, isDefinition: true)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 80, elements: !727)
!727 = !{!728}
!728 = !DISubrange(count: 10)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !3, line: 703, type: !641, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !3, line: 704, type: !680, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !3, line: 705, type: !680, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !3, line: 706, type: !680, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !3, line: 707, type: !710, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !3, line: 708, type: !741, isLocal: true, isDefinition: true)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !307)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !3, line: 709, type: !675, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !3, line: 710, type: !636, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !3, line: 711, type: !715, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !3, line: 712, type: !710, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !3, line: 713, type: !641, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !3, line: 714, type: !710, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !3, line: 715, type: !656, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !3, line: 716, type: !636, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !3, line: 717, type: !760, isLocal: true, isDefinition: true)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 136, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 17)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !3, line: 718, type: !641, isLocal: true, isDefinition: true)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !3, line: 745, type: !741, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(name: "aplog_module_index", scope: !2, file: !3, line: 148, type: !769, isLocal: true, isDefinition: true)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !3, line: 745, type: !772, isLocal: true, isDefinition: true)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 616, elements: !773)
!773 = !{!774}
!774 = !DISubrange(count: 77)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1030, type: !777, isLocal: true, isDefinition: true)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 104, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 13)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1084, type: !641, isLocal: true, isDefinition: true)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1106, type: !687, isLocal: true, isDefinition: true)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1107, type: !680, isLocal: true, isDefinition: true)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1108, type: !641, isLocal: true, isDefinition: true)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1375, type: !675, isLocal: true, isDefinition: true)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1425, type: !792, isLocal: true, isDefinition: true)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !793)
!793 = !{!794}
!794 = !DISubrange(count: 1)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1434, type: !797, isLocal: true, isDefinition: true)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 184, elements: !798)
!798 = !{!799}
!799 = !DISubrange(count: 23)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1440, type: !726, isLocal: true, isDefinition: true)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1443, type: !804, isLocal: true, isDefinition: true)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 240, elements: !805)
!805 = !{!806}
!806 = !DISubrange(count: 30)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1501, type: !741, isLocal: true, isDefinition: true)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1503, type: !646, isLocal: true, isDefinition: true)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1517, type: !813, isLocal: true, isDefinition: true)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 576, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 72)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1519, type: !818, isLocal: true, isDefinition: true)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 224, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 28)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1519, type: !710, isLocal: true, isDefinition: true)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1527, type: !631, isLocal: true, isDefinition: true)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1529, type: !827, isLocal: true, isDefinition: true)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 704, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 88)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1532, type: !641, isLocal: true, isDefinition: true)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1533, type: !741, isLocal: true, isDefinition: true)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(name: "methods_registry", scope: !2, file: !3, line: 658, type: !836, isLocal: true, isDefinition: true)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_hash_t", file: !838, line: 52, baseType: !839)
!838 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_hash.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "200f319f929840eb1031e0c6813d7a15")
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_hash_t", file: !838, line: 52, flags: DIFlagFwdDecl)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "cur_method_number", scope: !2, file: !3, line: 659, type: !14, isLocal: true, isDefinition: true)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "shortcut", scope: !844, file: !3, line: 991, type: !851, isLocal: true, isDefinition: true)
!844 = distinct !DISubprogram(name: "index_of_response", scope: !3, file: !3, line: 989, type: !845, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !847)
!845 = !DISubroutineType(types: !846)
!846 = !{!14, !14}
!847 = !{!848, !849, !850}
!848 = !DILocalVariable(name: "status", arg: 1, scope: !844, file: !3, line: 989, type: !14)
!849 = !DILocalVariable(name: "i", scope: !844, file: !3, line: 993, type: !14)
!850 = !DILocalVariable(name: "pos", scope: !844, file: !3, line: 993, type: !14)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !642)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !777, isLocal: true, isDefinition: true)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !856, isLocal: true, isDefinition: true)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 192, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 24)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !646, isLocal: true, isDefinition: true)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !710, isLocal: true, isDefinition: true)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !656, isLocal: true, isDefinition: true)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !777, isLocal: true, isDefinition: true)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !869, isLocal: true, isDefinition: true)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 272, elements: !870)
!870 = !{!871}
!871 = !DISubrange(count: 34)
!872 = !DIGlobalVariableExpression(var: !873, expr: !DIExpression())
!873 = distinct !DIGlobalVariable(scope: null, file: !3, line: 83, type: !646, isLocal: true, isDefinition: true)
!874 = !DIGlobalVariableExpression(var: !875, expr: !DIExpression())
!875 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !651, isLocal: true, isDefinition: true)
!876 = !DIGlobalVariableExpression(var: !877, expr: !DIExpression())
!877 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !631, isLocal: true, isDefinition: true)
!878 = !DIGlobalVariableExpression(var: !879, expr: !DIExpression())
!879 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !760, isLocal: true, isDefinition: true)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !882, isLocal: true, isDefinition: true)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 168, elements: !883)
!883 = !{!884}
!884 = !DISubrange(count: 21)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !656, isLocal: true, isDefinition: true)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !882, isLocal: true, isDefinition: true)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !891, isLocal: true, isDefinition: true)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 176, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 22)
!894 = !DIGlobalVariableExpression(var: !895, expr: !DIExpression())
!895 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !726, isLocal: true, isDefinition: true)
!896 = !DIGlobalVariableExpression(var: !897, expr: !DIExpression())
!897 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !687, isLocal: true, isDefinition: true)
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !760, isLocal: true, isDefinition: true)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !687, isLocal: true, isDefinition: true)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !797, isLocal: true, isDefinition: true)
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(scope: null, file: !3, line: 115, type: !797, isLocal: true, isDefinition: true)
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !741, isLocal: true, isDefinition: true)
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !760, isLocal: true, isDefinition: true)
!910 = !DIGlobalVariableExpression(var: !911, expr: !DIExpression())
!911 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !882, isLocal: true, isDefinition: true)
!912 = !DIGlobalVariableExpression(var: !913, expr: !DIExpression())
!913 = distinct !DIGlobalVariable(scope: null, file: !3, line: 120, type: !687, isLocal: true, isDefinition: true)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(scope: null, file: !3, line: 121, type: !687, isLocal: true, isDefinition: true)
!916 = !DIGlobalVariableExpression(var: !917, expr: !DIExpression())
!917 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !797, isLocal: true, isDefinition: true)
!918 = !DIGlobalVariableExpression(var: !919, expr: !DIExpression())
!919 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !668, isLocal: true, isDefinition: true)
!920 = !DIGlobalVariableExpression(var: !921, expr: !DIExpression())
!921 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !869, isLocal: true, isDefinition: true)
!922 = !DIGlobalVariableExpression(var: !923, expr: !DIExpression())
!923 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !631, isLocal: true, isDefinition: true)
!924 = !DIGlobalVariableExpression(var: !925, expr: !DIExpression())
!925 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !777, isLocal: true, isDefinition: true)
!926 = !DIGlobalVariableExpression(var: !927, expr: !DIExpression())
!927 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !675, isLocal: true, isDefinition: true)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !631, isLocal: true, isDefinition: true)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(scope: null, file: !3, line: 129, type: !856, isLocal: true, isDefinition: true)
!932 = !DIGlobalVariableExpression(var: !933, expr: !DIExpression())
!933 = distinct !DIGlobalVariable(scope: null, file: !3, line: 130, type: !934, isLocal: true, isDefinition: true)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 232, elements: !935)
!935 = !{!936}
!936 = !DISubrange(count: 29)
!937 = !DIGlobalVariableExpression(var: !938, expr: !DIExpression())
!938 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !939, isLocal: true, isDefinition: true)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 200, elements: !940)
!940 = !{!941}
!941 = !DISubrange(count: 25)
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(scope: null, file: !3, line: 132, type: !944, isLocal: true, isDefinition: true)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 216, elements: !945)
!945 = !{!946}
!946 = !DISubrange(count: 27)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression())
!948 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !949, isLocal: true, isDefinition: true)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 288, elements: !950)
!950 = !{!951}
!951 = !DISubrange(count: 36)
!952 = !DIGlobalVariableExpression(var: !953, expr: !DIExpression())
!953 = distinct !DIGlobalVariable(scope: null, file: !3, line: 134, type: !797, isLocal: true, isDefinition: true)
!954 = !DIGlobalVariableExpression(var: !955, expr: !DIExpression())
!955 = distinct !DIGlobalVariable(scope: null, file: !3, line: 138, type: !856, isLocal: true, isDefinition: true)
!956 = !DIGlobalVariableExpression(var: !957, expr: !DIExpression())
!957 = distinct !DIGlobalVariable(scope: null, file: !3, line: 139, type: !939, isLocal: true, isDefinition: true)
!958 = !DIGlobalVariableExpression(var: !959, expr: !DIExpression())
!959 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !636, isLocal: true, isDefinition: true)
!960 = !DIGlobalVariableExpression(var: !961, expr: !DIExpression())
!961 = distinct !DIGlobalVariable(scope: null, file: !3, line: 141, type: !891, isLocal: true, isDefinition: true)
!962 = !DIGlobalVariableExpression(var: !963, expr: !DIExpression())
!963 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !882, isLocal: true, isDefinition: true)
!964 = !DIGlobalVariableExpression(var: !965, expr: !DIExpression())
!965 = distinct !DIGlobalVariable(scope: null, file: !3, line: 145, type: !966, isLocal: true, isDefinition: true)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 208, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 26)
!969 = !DIGlobalVariableExpression(var: !970, expr: !DIExpression())
!970 = distinct !DIGlobalVariable(scope: null, file: !3, line: 146, type: !891, isLocal: true, isDefinition: true)
!971 = !DIGlobalVariableExpression(var: !972, expr: !DIExpression())
!972 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !949, isLocal: true, isDefinition: true)
!973 = !DIGlobalVariableExpression(var: !974, expr: !DIExpression())
!974 = distinct !DIGlobalVariable(scope: null, file: !3, line: 168, type: !869, isLocal: true, isDefinition: true)
!975 = !DIGlobalVariableExpression(var: !976, expr: !DIExpression())
!976 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !966, isLocal: true, isDefinition: true)
!977 = !DIGlobalVariableExpression(var: !978, expr: !DIExpression())
!978 = distinct !DIGlobalVariable(scope: null, file: !3, line: 171, type: !631, isLocal: true, isDefinition: true)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression())
!980 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !741, isLocal: true, isDefinition: true)
!981 = !DIGlobalVariableExpression(var: !982, expr: !DIExpression())
!982 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !856, isLocal: true, isDefinition: true)
!983 = !DIGlobalVariableExpression(var: !984, expr: !DIExpression())
!984 = distinct !DIGlobalVariable(scope: null, file: !3, line: 174, type: !631, isLocal: true, isDefinition: true)
!985 = !DIGlobalVariableExpression(var: !986, expr: !DIExpression())
!986 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !987, isLocal: true, isDefinition: true)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 248, elements: !988)
!988 = !{!989}
!989 = !DISubrange(count: 31)
!990 = !DIGlobalVariableExpression(var: !991, expr: !DIExpression())
!991 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !818, isLocal: true, isDefinition: true)
!992 = !DIGlobalVariableExpression(var: !993, expr: !DIExpression())
!993 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !939, isLocal: true, isDefinition: true)
!994 = !DIGlobalVariableExpression(var: !995, expr: !DIExpression())
!995 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !651, isLocal: true, isDefinition: true)
!996 = !DIGlobalVariableExpression(var: !997, expr: !DIExpression())
!997 = distinct !DIGlobalVariable(scope: null, file: !3, line: 180, type: !760, isLocal: true, isDefinition: true)
!998 = !DIGlobalVariableExpression(var: !999, expr: !DIExpression())
!999 = distinct !DIGlobalVariable(scope: null, file: !3, line: 181, type: !949, isLocal: true, isDefinition: true)
!1000 = !DIGlobalVariableExpression(var: !1001, expr: !DIExpression())
!1001 = distinct !DIGlobalVariable(name: "status_lines", scope: !2, file: !3, line: 73, type: !1002, isLocal: true, isDefinition: true)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 6592, elements: !1003)
!1003 = !{!1004}
!1004 = !DISubrange(count: 103)
!1005 = !DIGlobalVariableExpression(var: !1006, expr: !DIExpression())
!1006 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1143, type: !949, isLocal: true, isDefinition: true)
!1007 = !DIGlobalVariableExpression(var: !1008, expr: !DIExpression())
!1008 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1145, type: !760, isLocal: true, isDefinition: true)
!1009 = !DIGlobalVariableExpression(var: !1010, expr: !DIExpression())
!1010 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1149, type: !1011, isLocal: true, isDefinition: true)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 408, elements: !1012)
!1012 = !{!1013}
!1013 = !DISubrange(count: 51)
!1014 = !DIGlobalVariableExpression(var: !1015, expr: !DIExpression())
!1015 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1155, type: !1016, isLocal: true, isDefinition: true)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 992, elements: !1017)
!1017 = !{!1018}
!1018 = !DISubrange(count: 124)
!1019 = !DIGlobalVariableExpression(var: !1020, expr: !DIExpression())
!1020 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1161, type: !1021, isLocal: true, isDefinition: true)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1880, elements: !1022)
!1022 = !{!1023}
!1023 = !DISubrange(count: 235)
!1024 = !DIGlobalVariableExpression(var: !1025, expr: !DIExpression())
!1025 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1169, type: !772, isLocal: true, isDefinition: true)
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1171, type: !656, isLocal: true, isDefinition: true)
!1028 = !DIGlobalVariableExpression(var: !1029, expr: !DIExpression())
!1029 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1172, type: !641, isLocal: true, isDefinition: true)
!1030 = !DIGlobalVariableExpression(var: !1031, expr: !DIExpression())
!1031 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1174, type: !1032, isLocal: true, isDefinition: true)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 432, elements: !1033)
!1033 = !{!1034}
!1034 = !DISubrange(count: 54)
!1035 = !DIGlobalVariableExpression(var: !1036, expr: !DIExpression())
!1036 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1176, type: !1037, isLocal: true, isDefinition: true)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 448, elements: !1038)
!1038 = !{!1039}
!1039 = !DISubrange(count: 56)
!1040 = !DIGlobalVariableExpression(var: !1041, expr: !DIExpression())
!1041 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1179, type: !939, isLocal: true, isDefinition: true)
!1042 = !DIGlobalVariableExpression(var: !1043, expr: !DIExpression())
!1043 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1181, type: !1044, isLocal: true, isDefinition: true)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 280, elements: !1045)
!1045 = !{!1046}
!1046 = !DISubrange(count: 35)
!1047 = !DIGlobalVariableExpression(var: !1048, expr: !DIExpression())
!1048 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1185, type: !1049, isLocal: true, isDefinition: true)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 792, elements: !1050)
!1050 = !{!1051}
!1051 = !DISubrange(count: 99)
!1052 = !DIGlobalVariableExpression(var: !1053, expr: !DIExpression())
!1053 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1187, type: !777, isLocal: true, isDefinition: true)
!1054 = !DIGlobalVariableExpression(var: !1055, expr: !DIExpression())
!1055 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1192, type: !1056, isLocal: true, isDefinition: true)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 304, elements: !1057)
!1057 = !{!1058}
!1058 = !DISubrange(count: 38)
!1059 = !DIGlobalVariableExpression(var: !1060, expr: !DIExpression())
!1060 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1194, type: !1061, isLocal: true, isDefinition: true)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 328, elements: !1062)
!1062 = !{!1063}
!1063 = !DISubrange(count: 41)
!1064 = !DIGlobalVariableExpression(var: !1065, expr: !DIExpression())
!1065 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1198, type: !1066, isLocal: true, isDefinition: true)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 584, elements: !1067)
!1067 = !{!1068}
!1068 = !DISubrange(count: 73)
!1069 = !DIGlobalVariableExpression(var: !1070, expr: !DIExpression())
!1070 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1202, type: !661, isLocal: true, isDefinition: true)
!1071 = !DIGlobalVariableExpression(var: !1072, expr: !DIExpression())
!1072 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1204, type: !1073, isLocal: true, isDefinition: true)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 312, elements: !1074)
!1074 = !{!1075}
!1075 = !DISubrange(count: 39)
!1076 = !DIGlobalVariableExpression(var: !1077, expr: !DIExpression())
!1077 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1208, type: !1078, isLocal: true, isDefinition: true)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 664, elements: !1079)
!1079 = !{!1080}
!1080 = !DISubrange(count: 83)
!1081 = !DIGlobalVariableExpression(var: !1082, expr: !DIExpression())
!1082 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1212, type: !1083, isLocal: true, isDefinition: true)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1040, elements: !1084)
!1084 = !{!1085}
!1085 = !DISubrange(count: 130)
!1086 = !DIGlobalVariableExpression(var: !1087, expr: !DIExpression())
!1087 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1217, type: !1088, isLocal: true, isDefinition: true)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 552, elements: !1089)
!1089 = !{!1090}
!1090 = !DISubrange(count: 69)
!1091 = !DIGlobalVariableExpression(var: !1092, expr: !DIExpression())
!1092 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1219, type: !1093, isLocal: true, isDefinition: true)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1216, elements: !1094)
!1094 = !{!1095}
!1095 = !DISubrange(count: 152)
!1096 = !DIGlobalVariableExpression(var: !1097, expr: !DIExpression())
!1097 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1224, type: !1098, isLocal: true, isDefinition: true)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 456, elements: !1099)
!1099 = !{!1100}
!1100 = !DISubrange(count: 57)
!1101 = !DIGlobalVariableExpression(var: !1102, expr: !DIExpression())
!1102 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1226, type: !1103, isLocal: true, isDefinition: true)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 688, elements: !1104)
!1104 = !{!1105}
!1105 = !DISubrange(count: 86)
!1106 = !DIGlobalVariableExpression(var: !1107, expr: !DIExpression())
!1107 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1230, type: !1108, isLocal: true, isDefinition: true)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 648, elements: !1109)
!1109 = !{!1110}
!1110 = !DISubrange(count: 81)
!1111 = !DIGlobalVariableExpression(var: !1112, expr: !DIExpression())
!1112 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1234, type: !1113, isLocal: true, isDefinition: true)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 776, elements: !1114)
!1114 = !{!1115}
!1115 = !DISubrange(count: 97)
!1116 = !DIGlobalVariableExpression(var: !1117, expr: !DIExpression())
!1117 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1237, type: !1083, isLocal: true, isDefinition: true)
!1118 = !DIGlobalVariableExpression(var: !1119, expr: !DIExpression())
!1119 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1241, type: !710, isLocal: true, isDefinition: true)
!1120 = !DIGlobalVariableExpression(var: !1121, expr: !DIExpression())
!1121 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1244, type: !1122, isLocal: true, isDefinition: true)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1016, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 127)
!1125 = !DIGlobalVariableExpression(var: !1126, expr: !DIExpression())
!1126 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1247, type: !675, isLocal: true, isDefinition: true)
!1127 = !DIGlobalVariableExpression(var: !1128, expr: !DIExpression())
!1128 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1250, type: !1129, isLocal: true, isDefinition: true)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 760, elements: !1130)
!1130 = !{!1131}
!1131 = !DISubrange(count: 95)
!1132 = !DIGlobalVariableExpression(var: !1133, expr: !DIExpression())
!1133 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1252, type: !1134, isLocal: true, isDefinition: true)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 480, elements: !1135)
!1135 = !{!1136}
!1136 = !DISubrange(count: 60)
!1137 = !DIGlobalVariableExpression(var: !1138, expr: !DIExpression())
!1138 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1255, type: !1139, isLocal: true, isDefinition: true)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 984, elements: !1140)
!1140 = !{!1141}
!1141 = !DISubrange(count: 123)
!1142 = !DIGlobalVariableExpression(var: !1143, expr: !DIExpression())
!1143 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1259, type: !1144, isLocal: true, isDefinition: true)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1144, elements: !1145)
!1145 = !{!1146}
!1146 = !DISubrange(count: 143)
!1147 = !DIGlobalVariableExpression(var: !1148, expr: !DIExpression())
!1148 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1263, type: !1149, isLocal: true, isDefinition: true)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1152, elements: !1150)
!1150 = !{!1151}
!1151 = !DISubrange(count: 144)
!1152 = !DIGlobalVariableExpression(var: !1153, expr: !DIExpression())
!1153 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1267, type: !1154, isLocal: true, isDefinition: true)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1848, elements: !1155)
!1155 = !{!1156}
!1156 = !DISubrange(count: 231)
!1157 = !DIGlobalVariableExpression(var: !1158, expr: !DIExpression())
!1158 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1273, type: !1011, isLocal: true, isDefinition: true)
!1159 = !DIGlobalVariableExpression(var: !1160, expr: !DIExpression())
!1160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1275, type: !1161, isLocal: true, isDefinition: true)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 568, elements: !1162)
!1162 = !{!1163}
!1163 = !DISubrange(count: 71)
!1164 = !DIGlobalVariableExpression(var: !1165, expr: !DIExpression())
!1165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1278, type: !1166, isLocal: true, isDefinition: true)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 712, elements: !1167)
!1167 = !{!1168}
!1168 = !DISubrange(count: 89)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1281, type: !1171, isLocal: true, isDefinition: true)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1816, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 227)
!1174 = !DIGlobalVariableExpression(var: !1175, expr: !DIExpression())
!1175 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1287, type: !1176, isLocal: true, isDefinition: true)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1112, elements: !1177)
!1177 = !{!1178}
!1178 = !DISubrange(count: 139)
!1179 = !DIGlobalVariableExpression(var: !1180, expr: !DIExpression())
!1180 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1291, type: !1129, isLocal: true, isDefinition: true)
!1181 = !DIGlobalVariableExpression(var: !1182, expr: !DIExpression())
!1182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1294, type: !1183, isLocal: true, isDefinition: true)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 672, elements: !1184)
!1184 = !{!1185}
!1185 = !DISubrange(count: 84)
!1186 = !DIGlobalVariableExpression(var: !1187, expr: !DIExpression())
!1187 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1297, type: !1188, isLocal: true, isDefinition: true)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 808, elements: !1189)
!1189 = !{!1190}
!1190 = !DISubrange(count: 101)
!1191 = !DIGlobalVariableExpression(var: !1192, expr: !DIExpression())
!1192 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1300, type: !1193, isLocal: true, isDefinition: true)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 520, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 65)
!1196 = !DIGlobalVariableExpression(var: !1197, expr: !DIExpression())
!1197 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1303, type: !1198, isLocal: true, isDefinition: true)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1296, elements: !1199)
!1199 = !{!1200}
!1200 = !DISubrange(count: 162)
!1201 = !DIGlobalVariableExpression(var: !1202, expr: !DIExpression())
!1202 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1309, type: !1203, isLocal: true, isDefinition: true)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 512, elements: !1204)
!1204 = !{!1205}
!1205 = !DISubrange(count: 64)
!1206 = !DIGlobalVariableExpression(var: !1207, expr: !DIExpression())
!1207 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1321, type: !760, isLocal: true, isDefinition: true)
!1208 = !DIGlobalVariableExpression(var: !1209, expr: !DIExpression())
!1209 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1322, type: !1210, isLocal: true, isDefinition: true)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 16, elements: !1211)
!1211 = !{!1212}
!1212 = !DISubrange(count: 2)
!1213 = !DIGlobalVariableExpression(var: !1214, expr: !DIExpression())
!1214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1323, type: !710, isLocal: true, isDefinition: true)
!1215 = !DIGlobalVariableExpression(var: !1216, expr: !DIExpression())
!1216 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1327, type: !1217, isLocal: true, isDefinition: true)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1264, elements: !1218)
!1218 = !{!1219}
!1219 = !DISubrange(count: 158)
!1220 = !DIGlobalVariableExpression(var: !1221, expr: !DIExpression())
!1221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1335, type: !1222, isLocal: true, isDefinition: true)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1536, elements: !1223)
!1223 = !{!1224}
!1224 = !DISubrange(count: 192)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 184, size: 64, elements: !1226)
!1226 = !{!1227}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "link_insert_error_filter", scope: !1225, file: !3, line: 184, baseType: !346, size: 64)
!1228 = !{i32 7, !"Dwarf Version", i32 5}
!1229 = !{i32 2, !"Debug Info Version", i32 3}
!1230 = !{i32 1, !"wchar_size", i32 4}
!1231 = !{i32 8, !"PIC Level", i32 2}
!1232 = !{i32 7, !"PIE Level", i32 2}
!1233 = !{i32 7, !"uwtable", i32 2}
!1234 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!1235 = distinct !DISubprogram(name: "ap_hook_insert_error_filter", scope: !3, file: !3, line: 188, type: !1236, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !175, !204, !204, !14}
!1238 = !{!1239, !1240, !1241, !1242, !1243}
!1239 = !DILocalVariable(name: "pf", arg: 1, scope: !1235, file: !3, line: 188, type: !175)
!1240 = !DILocalVariable(name: "aszPre", arg: 2, scope: !1235, file: !3, line: 188, type: !204)
!1241 = !DILocalVariable(name: "aszSucc", arg: 3, scope: !1235, file: !3, line: 188, type: !204)
!1242 = !DILocalVariable(name: "nOrder", arg: 4, scope: !1235, file: !3, line: 188, type: !14)
!1243 = !DILocalVariable(name: "pHook", scope: !1235, file: !3, line: 188, type: !170)
!1244 = !{!1245, !1245, i64 0}
!1245 = !{!"any pointer", !1246, i64 0}
!1246 = !{!"omnipotent char", !1247, i64 0}
!1247 = !{!"Simple C/C++ TBAA"}
!1248 = !DILocation(line: 188, column: 1, scope: !1235)
!1249 = !{!1250, !1250, i64 0}
!1250 = !{!"int", !1246, i64 0}
!1251 = !DILocation(line: 188, column: 1, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 188, column: 1)
!1253 = !{!1254, !1245, i64 0}
!1254 = !{!"", !1245, i64 0}
!1255 = !DILocation(line: 188, column: 1, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 188, column: 1)
!1257 = !{!1258, !1245, i64 0}
!1258 = !{!"ap_LINK_insert_error_filter_t", !1245, i64 0, !1245, i64 8, !1245, i64 16, !1245, i64 24, !1250, i64 32}
!1259 = !{!1258, !1245, i64 16}
!1260 = !{!1258, !1245, i64 24}
!1261 = !{!1258, !1250, i64 32}
!1262 = !{!1258, !1245, i64 8}
!1263 = !DILocation(line: 188, column: 1, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 188, column: 1)
!1265 = !DISubprogram(name: "apr_array_make", scope: !348, file: !348, line: 121, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!346, !73, !14, !14}
!1268 = !DISubprogram(name: "apr_hook_sort_register", scope: !1269, file: !1269, line: 330, type: !1270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1269 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_hooks.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "c8a9febb9e731f7c2c1d7e7cd3d01c68")
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !10, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!1273 = !DISubprogram(name: "apr_array_push", scope: !348, file: !348, line: 131, type: !1274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!20, !346}
!1276 = !DISubprogram(name: "apr_hook_debug_show", scope: !1269, file: !1269, line: 344, type: !1277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !10, !204, !204}
!1279 = distinct !DISubprogram(name: "ap_hook_get_insert_error_filter", scope: !3, file: !3, line: 188, type: !1280, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!346}
!1282 = !DILocation(line: 188, column: 1, scope: !1279)
!1283 = distinct !DISubprogram(name: "ap_run_insert_error_filter", scope: !3, file: !3, line: 188, type: !177, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1284)
!1284 = !{!1285, !1286, !1287}
!1285 = !DILocalVariable(name: "r", arg: 1, scope: !1283, file: !3, line: 188, type: !179)
!1286 = !DILocalVariable(name: "pHook", scope: !1283, file: !3, line: 188, type: !170)
!1287 = !DILocalVariable(name: "n", scope: !1283, file: !3, line: 188, type: !14)
!1288 = !DILocation(line: 188, column: 1, scope: !1283)
!1289 = !DILocation(line: 188, column: 1, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 188, column: 1)
!1291 = !DILocation(line: 188, column: 1, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 188, column: 1)
!1293 = !{!1294, !1245, i64 24}
!1294 = !{!"apr_array_header_t", !1245, i64 0, !1250, i64 8, !1250, i64 12, !1250, i64 16, !1245, i64 24}
!1295 = !DILocation(line: 188, column: 1, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 188, column: 1)
!1297 = !DILocation(line: 188, column: 1, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 188, column: 1)
!1299 = !{!1294, !1250, i64 12}
!1300 = !DILocation(line: 188, column: 1, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 188, column: 1)
!1302 = distinct !{!1302, !1295, !1295, !1303}
!1303 = !{!"llvm.loop.mustprogress"}
!1304 = distinct !DISubprogram(name: "ap_set_keepalive", scope: !3, file: !3, line: 217, type: !1305, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1307)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!14, !179}
!1307 = !{!1308, !1309, !1310, !1311, !1312}
!1308 = !DILocalVariable(name: "r", arg: 1, scope: !1304, file: !3, line: 217, type: !179)
!1309 = !DILocalVariable(name: "ka_sent", scope: !1304, file: !3, line: 219, type: !14)
!1310 = !DILocalVariable(name: "left", scope: !1304, file: !3, line: 220, type: !14)
!1311 = !DILocalVariable(name: "wimpy", scope: !1304, file: !3, line: 221, type: !14)
!1312 = !DILocalVariable(name: "conn", scope: !1304, file: !3, line: 224, type: !10)
!1313 = !DILocation(line: 217, column: 47, scope: !1304)
!1314 = !DILocation(line: 219, column: 5, scope: !1304)
!1315 = !DILocation(line: 219, column: 9, scope: !1304)
!1316 = !DILocation(line: 220, column: 5, scope: !1304)
!1317 = !DILocation(line: 220, column: 9, scope: !1304)
!1318 = !DILocation(line: 220, column: 16, scope: !1304)
!1319 = !DILocation(line: 220, column: 19, scope: !1304)
!1320 = !{!1321, !1245, i64 16}
!1321 = !{!"request_rec", !1245, i64 0, !1245, i64 8, !1245, i64 16, !1245, i64 24, !1245, i64 32, !1245, i64 40, !1245, i64 48, !1250, i64 56, !1250, i64 60, !1250, i64 64, !1250, i64 68, !1245, i64 72, !1245, i64 80, !1322, i64 88, !1245, i64 96, !1250, i64 104, !1250, i64 108, !1245, i64 112, !1322, i64 120, !1245, i64 128, !1245, i64 136, !1322, i64 144, !1322, i64 152, !1322, i64 160, !1245, i64 168, !1322, i64 176, !1250, i64 184, !1250, i64 188, !1250, i64 192, !1250, i64 196, !1245, i64 200, !1245, i64 208, !1322, i64 216, !1322, i64 224, !1245, i64 232, !1245, i64 240, !1245, i64 248, !1245, i64 256, !1245, i64 264, !1245, i64 272, !1245, i64 280, !1245, i64 288, !1245, i64 296, !1245, i64 304, !1245, i64 312, !1245, i64 320, !1245, i64 328, !1245, i64 336, !1245, i64 344, !1245, i64 352, !1245, i64 360, !1245, i64 368, !1250, i64 376, !1250, i64 380, !1245, i64 384, !1245, i64 392, !1245, i64 400, !1245, i64 408, !1245, i64 416, !1245, i64 424, !1245, i64 432, !1245, i64 440, !1245, i64 448, !1250, i64 456, !1250, i64 460, !1245, i64 464, !1323, i64 472, !1325, i64 560, !1245, i64 680, !1245, i64 688, !1245, i64 696, !1245, i64 704, !1245, i64 712, !1250, i64 720, !1322, i64 728}
!1322 = !{!"long", !1246, i64 0}
!1323 = !{!"apr_uri_t", !1245, i64 0, !1245, i64 8, !1245, i64 16, !1245, i64 24, !1245, i64 32, !1245, i64 40, !1245, i64 48, !1245, i64 56, !1245, i64 64, !1245, i64 72, !1324, i64 80, !1250, i64 82, !1250, i64 82, !1250, i64 82}
!1324 = !{!"short", !1246, i64 0}
!1325 = !{!"apr_finfo_t", !1245, i64 0, !1250, i64 8, !1250, i64 12, !1246, i64 16, !1250, i64 20, !1250, i64 24, !1322, i64 32, !1322, i64 40, !1250, i64 48, !1322, i64 56, !1322, i64 64, !1322, i64 72, !1322, i64 80, !1322, i64 88, !1245, i64 96, !1245, i64 104, !1245, i64 112}
!1326 = !DILocation(line: 220, column: 27, scope: !1304)
!1327 = !{!1328, !1250, i64 128}
!1328 = !{!"server_rec", !1245, i64 0, !1245, i64 8, !1245, i64 16, !1245, i64 24, !1329, i64 32, !1245, i64 48, !1245, i64 56, !1245, i64 64, !1250, i64 72, !1246, i64 76, !1324, i64 78, !1245, i64 80, !1245, i64 88, !1245, i64 96, !1245, i64 104, !1322, i64 112, !1322, i64 120, !1250, i64 128, !1250, i64 132, !1245, i64 136, !1245, i64 144, !1245, i64 152, !1250, i64 160, !1250, i64 164, !1250, i64 168, !1250, i64 172, !1245, i64 176, !1250, i64 184}
!1329 = !{!"ap_logconf", !1245, i64 0, !1250, i64 8}
!1330 = !DILocation(line: 220, column: 44, scope: !1304)
!1331 = !DILocation(line: 220, column: 47, scope: !1304)
!1332 = !{!1321, !1245, i64 8}
!1333 = !DILocation(line: 220, column: 59, scope: !1304)
!1334 = !{!1335, !1250, i64 164}
!1335 = !{!"conn_rec", !1245, i64 0, !1245, i64 8, !1245, i64 16, !1245, i64 24, !1245, i64 32, !1245, i64 40, !1245, i64 48, !1245, i64 56, !1245, i64 64, !1245, i64 72, !1322, i64 80, !1245, i64 88, !1245, i64 96, !1245, i64 104, !1245, i64 112, !1245, i64 120, !1245, i64 128, !1245, i64 136, !1250, i64 144, !1250, i64 148, !1250, i64 152, !1250, i64 152, !1250, i64 156, !1246, i64 160, !1250, i64 164, !1245, i64 168, !1245, i64 176, !1245, i64 184, !1245, i64 192, !1250, i64 200}
!1336 = !DILocation(line: 220, column: 42, scope: !1304)
!1337 = !DILocation(line: 221, column: 5, scope: !1304)
!1338 = !DILocation(line: 221, column: 9, scope: !1304)
!1339 = !DILocation(line: 221, column: 31, scope: !1304)
!1340 = !DILocation(line: 221, column: 34, scope: !1304)
!1341 = !{!1321, !1245, i64 0}
!1342 = !DILocation(line: 222, column: 45, scope: !1304)
!1343 = !DILocation(line: 222, column: 48, scope: !1304)
!1344 = !{!1321, !1245, i64 240}
!1345 = !DILocation(line: 222, column: 31, scope: !1304)
!1346 = !DILocation(line: 221, column: 17, scope: !1304)
!1347 = !DILocation(line: 224, column: 5, scope: !1304)
!1348 = !DILocation(line: 224, column: 17, scope: !1304)
!1349 = !DILocation(line: 224, column: 38, scope: !1304)
!1350 = !DILocation(line: 224, column: 41, scope: !1304)
!1351 = !{!1321, !1245, i64 232}
!1352 = !DILocation(line: 224, column: 24, scope: !1304)
!1353 = !DILocation(line: 255, column: 10, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 255, column: 9)
!1355 = !DILocation(line: 255, column: 13, scope: !1354)
!1356 = !DILocation(line: 255, column: 25, scope: !1354)
!1357 = !{!1335, !1246, i64 160}
!1358 = !DILocation(line: 255, column: 35, scope: !1354)
!1359 = !DILocation(line: 256, column: 9, scope: !1354)
!1360 = !DILocation(line: 256, column: 13, scope: !1354)
!1361 = !DILocation(line: 256, column: 16, scope: !1354)
!1362 = !{!1321, !1250, i64 196}
!1363 = !DILocation(line: 257, column: 9, scope: !1354)
!1364 = !DILocation(line: 257, column: 13, scope: !1354)
!1365 = !DILocation(line: 257, column: 16, scope: !1354)
!1366 = !{!1321, !1250, i64 64}
!1367 = !DILocation(line: 258, column: 13, scope: !1354)
!1368 = !DILocation(line: 258, column: 16, scope: !1354)
!1369 = !{!1321, !1250, i64 104}
!1370 = !DILocation(line: 259, column: 13, scope: !1354)
!1371 = !DILocation(line: 259, column: 30, scope: !1354)
!1372 = !DILocation(line: 259, column: 33, scope: !1354)
!1373 = !DILocation(line: 259, column: 16, scope: !1354)
!1374 = !DILocation(line: 260, column: 13, scope: !1354)
!1375 = !DILocation(line: 260, column: 30, scope: !1354)
!1376 = !DILocation(line: 260, column: 33, scope: !1354)
!1377 = !DILocation(line: 261, column: 49, scope: !1354)
!1378 = !DILocation(line: 261, column: 52, scope: !1354)
!1379 = !DILocation(line: 261, column: 35, scope: !1354)
!1380 = !DILocation(line: 260, column: 16, scope: !1354)
!1381 = !DILocation(line: 263, column: 13, scope: !1354)
!1382 = !DILocation(line: 263, column: 18, scope: !1354)
!1383 = !DILocation(line: 263, column: 21, scope: !1354)
!1384 = !{!1321, !1250, i64 68}
!1385 = !DILocation(line: 263, column: 31, scope: !1354)
!1386 = !DILocation(line: 264, column: 17, scope: !1354)
!1387 = !DILocation(line: 264, column: 21, scope: !1354)
!1388 = !DILocation(line: 264, column: 24, scope: !1354)
!1389 = !DILocation(line: 264, column: 32, scope: !1354)
!1390 = !{!1321, !1250, i64 184}
!1391 = !DILocation(line: 265, column: 9, scope: !1354)
!1392 = !DILocation(line: 265, column: 12, scope: !1354)
!1393 = !DILocation(line: 265, column: 15, scope: !1354)
!1394 = !DILocation(line: 265, column: 23, scope: !1354)
!1395 = !{!1328, !1250, i64 132}
!1396 = !DILocation(line: 266, column: 9, scope: !1354)
!1397 = !DILocation(line: 266, column: 13, scope: !1354)
!1398 = !DILocation(line: 266, column: 16, scope: !1354)
!1399 = !DILocation(line: 266, column: 24, scope: !1354)
!1400 = !{!1328, !1322, i64 120}
!1401 = !DILocation(line: 266, column: 43, scope: !1354)
!1402 = !DILocation(line: 267, column: 9, scope: !1354)
!1403 = !DILocation(line: 267, column: 14, scope: !1354)
!1404 = !DILocation(line: 267, column: 17, scope: !1354)
!1405 = !DILocation(line: 267, column: 25, scope: !1354)
!1406 = !DILocation(line: 267, column: 40, scope: !1354)
!1407 = !DILocation(line: 268, column: 13, scope: !1354)
!1408 = !DILocation(line: 268, column: 17, scope: !1354)
!1409 = !DILocation(line: 268, column: 22, scope: !1354)
!1410 = !DILocation(line: 269, column: 9, scope: !1354)
!1411 = !DILocation(line: 269, column: 13, scope: !1354)
!1412 = !DILocation(line: 270, column: 9, scope: !1354)
!1413 = !DILocation(line: 270, column: 13, scope: !1354)
!1414 = !DILocation(line: 271, column: 9, scope: !1354)
!1415 = !DILocation(line: 271, column: 27, scope: !1354)
!1416 = !DILocation(line: 271, column: 30, scope: !1354)
!1417 = !DILocation(line: 271, column: 36, scope: !1354)
!1418 = !DILocation(line: 271, column: 13, scope: !1354)
!1419 = !DILocation(line: 272, column: 9, scope: !1354)
!1420 = !DILocation(line: 272, column: 28, scope: !1354)
!1421 = !DILocation(line: 272, column: 31, scope: !1354)
!1422 = !{!1321, !1245, i64 256}
!1423 = !DILocation(line: 272, column: 14, scope: !1354)
!1424 = !DILocation(line: 273, column: 13, scope: !1354)
!1425 = !DILocation(line: 273, column: 30, scope: !1354)
!1426 = !DILocation(line: 273, column: 33, scope: !1354)
!1427 = !DILocation(line: 273, column: 16, scope: !1354)
!1428 = !DILocation(line: 274, column: 9, scope: !1354)
!1429 = !DILocation(line: 274, column: 38, scope: !1354)
!1430 = !DILocation(line: 274, column: 41, scope: !1354)
!1431 = !DILocation(line: 274, column: 47, scope: !1354)
!1432 = !DILocation(line: 274, column: 24, scope: !1354)
!1433 = !DILocation(line: 274, column: 22, scope: !1354)
!1434 = !DILocation(line: 275, column: 13, scope: !1354)
!1435 = !DILocation(line: 275, column: 17, scope: !1354)
!1436 = !DILocation(line: 275, column: 20, scope: !1354)
!1437 = !DILocation(line: 275, column: 30, scope: !1354)
!1438 = !DILocation(line: 276, column: 9, scope: !1354)
!1439 = !DILocation(line: 276, column: 12, scope: !1354)
!1440 = !DILocation(line: 255, column: 9, scope: !1304)
!1441 = !DILocation(line: 278, column: 9, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 276, column: 30)
!1443 = !DILocation(line: 278, column: 12, scope: !1442)
!1444 = !DILocation(line: 278, column: 24, scope: !1442)
!1445 = !DILocation(line: 278, column: 34, scope: !1442)
!1446 = !DILocation(line: 279, column: 9, scope: !1442)
!1447 = !DILocation(line: 279, column: 12, scope: !1442)
!1448 = !DILocation(line: 279, column: 24, scope: !1442)
!1449 = !DILocation(line: 279, column: 34, scope: !1442)
!1450 = !DILocation(line: 282, column: 13, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 282, column: 13)
!1452 = !DILocation(line: 282, column: 13, scope: !1442)
!1453 = !DILocation(line: 283, column: 17, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 283, column: 17)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 282, column: 22)
!1456 = !DILocation(line: 283, column: 20, scope: !1454)
!1457 = !DILocation(line: 283, column: 28, scope: !1454)
!1458 = !DILocation(line: 283, column: 17, scope: !1455)
!1459 = !DILocation(line: 284, column: 32, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 283, column: 44)
!1461 = !DILocation(line: 284, column: 35, scope: !1460)
!1462 = !DILocation(line: 285, column: 37, scope: !1460)
!1463 = !DILocation(line: 285, column: 40, scope: !1460)
!1464 = !DILocation(line: 286, column: 34, scope: !1460)
!1465 = !DILocation(line: 286, column: 29, scope: !1460)
!1466 = !DILocation(line: 287, column: 29, scope: !1460)
!1467 = !DILocation(line: 285, column: 24, scope: !1460)
!1468 = !DILocation(line: 284, column: 17, scope: !1460)
!1469 = !DILocation(line: 288, column: 13, scope: !1460)
!1470 = !DILocation(line: 290, column: 32, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 289, column: 18)
!1472 = !DILocation(line: 290, column: 35, scope: !1471)
!1473 = !DILocation(line: 291, column: 36, scope: !1471)
!1474 = !DILocation(line: 291, column: 39, scope: !1471)
!1475 = !DILocation(line: 292, column: 34, scope: !1471)
!1476 = !DILocation(line: 292, column: 29, scope: !1471)
!1477 = !DILocation(line: 291, column: 23, scope: !1471)
!1478 = !DILocation(line: 290, column: 17, scope: !1471)
!1479 = !DILocation(line: 294, column: 30, scope: !1455)
!1480 = !DILocation(line: 294, column: 33, scope: !1455)
!1481 = !DILocation(line: 294, column: 13, scope: !1455)
!1482 = !DILocation(line: 295, column: 9, scope: !1455)
!1483 = !DILocation(line: 297, column: 9, scope: !1442)
!1484 = !DILocation(line: 308, column: 10, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 308, column: 9)
!1486 = !DILocation(line: 308, column: 9, scope: !1304)
!1487 = !DILocation(line: 309, column: 26, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 308, column: 17)
!1489 = !DILocation(line: 309, column: 29, scope: !1488)
!1490 = !DILocation(line: 309, column: 9, scope: !1488)
!1491 = !DILocation(line: 310, column: 5, scope: !1488)
!1492 = !DILocation(line: 317, column: 10, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 317, column: 9)
!1494 = !DILocation(line: 317, column: 13, scope: !1493)
!1495 = !DILocation(line: 317, column: 25, scope: !1493)
!1496 = !DILocation(line: 317, column: 35, scope: !1493)
!1497 = !DILocation(line: 318, column: 9, scope: !1493)
!1498 = !DILocation(line: 318, column: 12, scope: !1493)
!1499 = !DILocation(line: 318, column: 15, scope: !1493)
!1500 = !DILocation(line: 318, column: 23, scope: !1493)
!1501 = !DILocation(line: 319, column: 9, scope: !1493)
!1502 = !DILocation(line: 319, column: 13, scope: !1493)
!1503 = !DILocation(line: 317, column: 9, scope: !1304)
!1504 = !DILocation(line: 320, column: 9, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 319, column: 19)
!1506 = !DILocation(line: 320, column: 12, scope: !1505)
!1507 = !DILocation(line: 320, column: 24, scope: !1505)
!1508 = !DILocation(line: 320, column: 34, scope: !1505)
!1509 = !DILocation(line: 321, column: 5, scope: !1505)
!1510 = !DILocation(line: 322, column: 5, scope: !1304)
!1511 = !DILocation(line: 322, column: 8, scope: !1304)
!1512 = !DILocation(line: 322, column: 20, scope: !1304)
!1513 = !DILocation(line: 322, column: 30, scope: !1304)
!1514 = !DILocation(line: 324, column: 5, scope: !1304)
!1515 = !DILocation(line: 325, column: 1, scope: !1304)
!1516 = !DISubprogram(name: "ap_find_token", scope: !107, file: !107, line: 1705, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!14, !73, !10, !10}
!1519 = !DISubprogram(name: "apr_table_get", scope: !348, file: !348, line: 268, type: !1520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!10, !1522, !10}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!1524 = !DISubprogram(name: "ap_is_chunked", scope: !107, file: !107, line: 2657, type: !1525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!14, !73, !10}
!1527 = distinct !DISubprogram(name: "is_mpm_running", scope: !3, file: !3, line: 201, type: !1528, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1530)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!14}
!1530 = !{!1531}
!1531 = !DILocalVariable(name: "mpm_state", scope: !1527, file: !3, line: 203, type: !14)
!1532 = !DILocation(line: 203, column: 5, scope: !1527)
!1533 = !DILocation(line: 203, column: 9, scope: !1527)
!1534 = !DILocation(line: 205, column: 9, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 205, column: 9)
!1536 = !DILocation(line: 205, column: 9, scope: !1527)
!1537 = !DILocation(line: 206, column: 7, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 205, column: 54)
!1539 = !DILocation(line: 209, column: 9, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 209, column: 9)
!1541 = !DILocation(line: 209, column: 19, scope: !1540)
!1542 = !DILocation(line: 209, column: 9, scope: !1527)
!1543 = !DILocation(line: 210, column: 7, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 209, column: 40)
!1545 = !DILocation(line: 213, column: 5, scope: !1527)
!1546 = !DILocation(line: 214, column: 1, scope: !1527)
!1547 = !DISubprogram(name: "apr_table_setn", scope: !348, file: !348, line: 304, type: !1548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !375, !10, !10}
!1550 = !DISubprogram(name: "apr_psprintf", scope: !1551, file: !1551, line: 182, type: !1552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1551 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_strings.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "f876519c65276b07631e818685d4ffb3")
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!209, !73, !10, null}
!1554 = !DISubprogram(name: "apr_table_mergen", scope: !348, file: !348, line: 335, type: !1548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1555 = distinct !DISubprogram(name: "ap_condition_if_match", scope: !3, file: !3, line: 327, type: !1556, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1559)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1558, !179, !375}
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_condition_e", file: !141, line: 239, baseType: !140)
!1559 = !{!1560, !1561, !1562, !1563}
!1560 = !DILocalVariable(name: "r", arg: 1, scope: !1555, file: !3, line: 327, type: !179)
!1561 = !DILocalVariable(name: "headers", arg: 2, scope: !1555, file: !3, line: 328, type: !375)
!1562 = !DILocalVariable(name: "if_match", scope: !1555, file: !3, line: 330, type: !10)
!1563 = !DILocalVariable(name: "etag", scope: !1555, file: !3, line: 330, type: !10)
!1564 = !DILocation(line: 327, column: 63, scope: !1555)
!1565 = !DILocation(line: 328, column: 22, scope: !1555)
!1566 = !DILocation(line: 330, column: 5, scope: !1555)
!1567 = !DILocation(line: 330, column: 17, scope: !1555)
!1568 = !DILocation(line: 330, column: 28, scope: !1555)
!1569 = !DILocation(line: 335, column: 35, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 335, column: 9)
!1571 = !DILocation(line: 335, column: 38, scope: !1570)
!1572 = !DILocation(line: 335, column: 21, scope: !1570)
!1573 = !DILocation(line: 335, column: 19, scope: !1570)
!1574 = !DILocation(line: 335, column: 63, scope: !1570)
!1575 = !DILocation(line: 335, column: 9, scope: !1555)
!1576 = !DILocation(line: 336, column: 13, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 336, column: 13)
!1578 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 335, column: 72)
!1579 = !{!1246, !1246, i64 0}
!1580 = !DILocation(line: 336, column: 25, scope: !1577)
!1581 = !DILocation(line: 337, column: 17, scope: !1577)
!1582 = !DILocation(line: 337, column: 43, scope: !1577)
!1583 = !DILocation(line: 337, column: 29, scope: !1577)
!1584 = !DILocation(line: 337, column: 27, scope: !1577)
!1585 = !DILocation(line: 337, column: 61, scope: !1577)
!1586 = !DILocation(line: 338, column: 25, scope: !1577)
!1587 = !DILocation(line: 338, column: 48, scope: !1577)
!1588 = !DILocation(line: 338, column: 51, scope: !1577)
!1589 = !DILocation(line: 338, column: 57, scope: !1577)
!1590 = !DILocation(line: 338, column: 67, scope: !1577)
!1591 = !DILocation(line: 338, column: 28, scope: !1577)
!1592 = !DILocation(line: 336, column: 13, scope: !1578)
!1593 = !DILocation(line: 339, column: 13, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 338, column: 75)
!1595 = !DILocation(line: 342, column: 13, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 341, column: 14)
!1597 = !DILocation(line: 346, column: 5, scope: !1555)
!1598 = !DILocation(line: 347, column: 1, scope: !1555)
!1599 = !DISubprogram(name: "ap_find_etag_strong", scope: !107, file: !107, line: 1645, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1600 = distinct !DISubprogram(name: "ap_condition_if_unmodified_since", scope: !3, file: !3, line: 349, type: !1556, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1601)
!1601 = !{!1602, !1603, !1604, !1605, !1608, !1609}
!1602 = !DILocalVariable(name: "r", arg: 1, scope: !1600, file: !3, line: 349, type: !179)
!1603 = !DILocalVariable(name: "headers", arg: 2, scope: !1600, file: !3, line: 350, type: !375)
!1604 = !DILocalVariable(name: "if_unmodified", scope: !1600, file: !3, line: 352, type: !10)
!1605 = !DILocalVariable(name: "mtime", scope: !1606, file: !3, line: 356, type: !338)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 355, column: 24)
!1607 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 355, column: 9)
!1608 = !DILocalVariable(name: "reqtime", scope: !1606, file: !3, line: 356, type: !338)
!1609 = !DILocalVariable(name: "ius", scope: !1606, file: !3, line: 358, type: !479)
!1610 = !DILocation(line: 349, column: 74, scope: !1600)
!1611 = !DILocation(line: 350, column: 22, scope: !1600)
!1612 = !DILocation(line: 352, column: 5, scope: !1600)
!1613 = !DILocation(line: 352, column: 17, scope: !1600)
!1614 = !DILocation(line: 354, column: 35, scope: !1600)
!1615 = !DILocation(line: 354, column: 38, scope: !1600)
!1616 = !DILocation(line: 354, column: 21, scope: !1600)
!1617 = !DILocation(line: 354, column: 19, scope: !1600)
!1618 = !DILocation(line: 355, column: 9, scope: !1607)
!1619 = !DILocation(line: 355, column: 9, scope: !1600)
!1620 = !DILocation(line: 356, column: 9, scope: !1606)
!1621 = !DILocation(line: 356, column: 21, scope: !1606)
!1622 = !DILocation(line: 356, column: 28, scope: !1606)
!1623 = !DILocation(line: 358, column: 9, scope: !1606)
!1624 = !DILocation(line: 358, column: 20, scope: !1606)
!1625 = !DILocation(line: 358, column: 26, scope: !1606)
!1626 = !{!1322, !1322, i64 0}
!1627 = !DILocation(line: 363, column: 17, scope: !1606)
!1628 = !DILocation(line: 363, column: 15, scope: !1606)
!1629 = !DILocation(line: 365, column: 13, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 365, column: 13)
!1631 = !DILocation(line: 365, column: 19, scope: !1630)
!1632 = !DILocation(line: 365, column: 13, scope: !1606)
!1633 = !DILocation(line: 366, column: 21, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 365, column: 36)
!1635 = !{!1321, !1322, i64 160}
!1636 = !DILocation(line: 366, column: 19, scope: !1634)
!1637 = !DILocation(line: 367, column: 9, scope: !1634)
!1638 = !DILocation(line: 369, column: 19, scope: !1606)
!1639 = !DILocation(line: 369, column: 17, scope: !1606)
!1640 = !DILocation(line: 371, column: 14, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 371, column: 13)
!1642 = !DILocation(line: 371, column: 13, scope: !1606)
!1643 = !DILocation(line: 372, column: 23, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 371, column: 23)
!1645 = !{!1321, !1322, i64 88}
!1646 = !DILocation(line: 372, column: 21, scope: !1644)
!1647 = !DILocation(line: 373, column: 9, scope: !1644)
!1648 = !DILocation(line: 375, column: 14, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 375, column: 13)
!1650 = !DILocation(line: 375, column: 18, scope: !1649)
!1651 = !DILocation(line: 375, column: 35, scope: !1649)
!1652 = !DILocation(line: 375, column: 39, scope: !1649)
!1653 = !DILocation(line: 375, column: 47, scope: !1649)
!1654 = !DILocation(line: 375, column: 45, scope: !1649)
!1655 = !DILocation(line: 375, column: 13, scope: !1606)
!1656 = !DILocation(line: 376, column: 17, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 376, column: 17)
!1658 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 375, column: 53)
!1659 = !DILocation(line: 376, column: 27, scope: !1657)
!1660 = !DILocation(line: 376, column: 33, scope: !1657)
!1661 = !DILocation(line: 376, column: 25, scope: !1657)
!1662 = !DILocation(line: 376, column: 17, scope: !1658)
!1663 = !DILocation(line: 377, column: 35, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 377, column: 21)
!1665 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 376, column: 39)
!1666 = !DILocation(line: 377, column: 38, scope: !1664)
!1667 = !DILocation(line: 377, column: 21, scope: !1664)
!1668 = !DILocation(line: 377, column: 21, scope: !1665)
!1669 = !DILocation(line: 379, column: 21, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 377, column: 60)
!1671 = !DILocation(line: 382, column: 21, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 381, column: 22)
!1673 = !DILocation(line: 386, column: 17, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 385, column: 18)
!1675 = !DILocation(line: 390, column: 13, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 389, column: 14)
!1677 = !DILocation(line: 392, column: 5, scope: !1607)
!1678 = !DILocation(line: 394, column: 5, scope: !1600)
!1679 = !DILocation(line: 395, column: 1, scope: !1600)
!1680 = !DISubprogram(name: "apr_date_parse_http", scope: !1681, file: !1681, line: 73, type: !1682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1681 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_date.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "c3446e0c6638bc965515fa4ab7d6b7ce")
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!479, !10}
!1684 = !DISubprogram(name: "apr_time_now", scope: !337, file: !337, line: 87, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!479}
!1687 = distinct !DISubprogram(name: "ap_condition_if_none_match", scope: !3, file: !3, line: 397, type: !1556, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1688)
!1688 = !{!1689, !1690, !1691, !1692}
!1689 = !DILocalVariable(name: "r", arg: 1, scope: !1687, file: !3, line: 397, type: !179)
!1690 = !DILocalVariable(name: "headers", arg: 2, scope: !1687, file: !3, line: 398, type: !375)
!1691 = !DILocalVariable(name: "if_nonematch", scope: !1687, file: !3, line: 400, type: !10)
!1692 = !DILocalVariable(name: "etag", scope: !1687, file: !3, line: 400, type: !10)
!1693 = !DILocation(line: 397, column: 68, scope: !1687)
!1694 = !DILocation(line: 398, column: 22, scope: !1687)
!1695 = !DILocation(line: 400, column: 5, scope: !1687)
!1696 = !DILocation(line: 400, column: 17, scope: !1687)
!1697 = !DILocation(line: 400, column: 32, scope: !1687)
!1698 = !DILocation(line: 402, column: 34, scope: !1687)
!1699 = !DILocation(line: 402, column: 37, scope: !1687)
!1700 = !DILocation(line: 402, column: 20, scope: !1687)
!1701 = !DILocation(line: 402, column: 18, scope: !1687)
!1702 = !DILocation(line: 403, column: 9, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 403, column: 9)
!1704 = !DILocation(line: 403, column: 22, scope: !1703)
!1705 = !DILocation(line: 403, column: 9, scope: !1687)
!1706 = !DILocation(line: 405, column: 13, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 405, column: 13)
!1708 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 403, column: 31)
!1709 = !DILocation(line: 405, column: 29, scope: !1707)
!1710 = !DILocation(line: 405, column: 13, scope: !1708)
!1711 = !DILocation(line: 406, column: 13, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 405, column: 37)
!1713 = !DILocation(line: 413, column: 13, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 413, column: 13)
!1715 = !DILocation(line: 413, column: 16, scope: !1714)
!1716 = !{!1321, !1250, i64 108}
!1717 = !DILocation(line: 413, column: 30, scope: !1714)
!1718 = !DILocation(line: 413, column: 13, scope: !1708)
!1719 = !DILocation(line: 414, column: 39, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 414, column: 17)
!1721 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 413, column: 40)
!1722 = !DILocation(line: 414, column: 25, scope: !1720)
!1723 = !DILocation(line: 414, column: 23, scope: !1720)
!1724 = !DILocation(line: 414, column: 57, scope: !1720)
!1725 = !DILocation(line: 414, column: 17, scope: !1721)
!1726 = !DILocation(line: 415, column: 35, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 415, column: 21)
!1728 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 414, column: 66)
!1729 = !DILocation(line: 415, column: 38, scope: !1727)
!1730 = !DILocation(line: 415, column: 21, scope: !1727)
!1731 = !DILocation(line: 415, column: 21, scope: !1728)
!1732 = !DILocation(line: 416, column: 45, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 416, column: 25)
!1734 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 415, column: 60)
!1735 = !DILocation(line: 416, column: 48, scope: !1733)
!1736 = !DILocation(line: 416, column: 54, scope: !1733)
!1737 = !DILocation(line: 416, column: 68, scope: !1733)
!1738 = !DILocation(line: 416, column: 25, scope: !1733)
!1739 = !DILocation(line: 416, column: 25, scope: !1734)
!1740 = !DILocation(line: 417, column: 25, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 416, column: 75)
!1742 = !DILocation(line: 419, column: 17, scope: !1734)
!1743 = !DILocation(line: 421, column: 43, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 421, column: 25)
!1745 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 420, column: 22)
!1746 = !DILocation(line: 421, column: 46, scope: !1744)
!1747 = !DILocation(line: 421, column: 52, scope: !1744)
!1748 = !DILocation(line: 421, column: 66, scope: !1744)
!1749 = !DILocation(line: 421, column: 25, scope: !1744)
!1750 = !DILocation(line: 421, column: 25, scope: !1745)
!1751 = !DILocation(line: 422, column: 25, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 421, column: 73)
!1753 = !DILocation(line: 425, column: 13, scope: !1728)
!1754 = !DILocation(line: 426, column: 9, scope: !1721)
!1755 = !DILocation(line: 428, column: 40, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 428, column: 18)
!1757 = !DILocation(line: 428, column: 26, scope: !1756)
!1758 = !DILocation(line: 428, column: 24, scope: !1756)
!1759 = !DILocation(line: 428, column: 58, scope: !1756)
!1760 = !DILocation(line: 429, column: 17, scope: !1756)
!1761 = !DILocation(line: 429, column: 40, scope: !1756)
!1762 = !DILocation(line: 429, column: 43, scope: !1756)
!1763 = !DILocation(line: 429, column: 49, scope: !1756)
!1764 = !DILocation(line: 429, column: 63, scope: !1756)
!1765 = !DILocation(line: 429, column: 20, scope: !1756)
!1766 = !DILocation(line: 428, column: 18, scope: !1714)
!1767 = !DILocation(line: 430, column: 13, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 429, column: 70)
!1769 = !DILocation(line: 432, column: 9, scope: !1708)
!1770 = !DILocation(line: 435, column: 5, scope: !1687)
!1771 = !DILocation(line: 436, column: 1, scope: !1687)
!1772 = !DISubprogram(name: "ap_find_etag_weak", scope: !107, file: !107, line: 1636, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1773 = distinct !DISubprogram(name: "ap_condition_if_modified_since", scope: !3, file: !3, line: 438, type: !1556, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1774)
!1774 = !{!1775, !1776, !1777, !1778, !1781, !1782}
!1775 = !DILocalVariable(name: "r", arg: 1, scope: !1773, file: !3, line: 438, type: !179)
!1776 = !DILocalVariable(name: "headers", arg: 2, scope: !1773, file: !3, line: 439, type: !375)
!1777 = !DILocalVariable(name: "if_modified_since", scope: !1773, file: !3, line: 441, type: !10)
!1778 = !DILocalVariable(name: "mtime", scope: !1779, file: !3, line: 445, type: !338)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 444, column: 22)
!1780 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 443, column: 9)
!1781 = !DILocalVariable(name: "ims", scope: !1779, file: !3, line: 446, type: !338)
!1782 = !DILocalVariable(name: "reqtime", scope: !1779, file: !3, line: 446, type: !338)
!1783 = !DILocation(line: 438, column: 72, scope: !1773)
!1784 = !DILocation(line: 439, column: 22, scope: !1773)
!1785 = !DILocation(line: 441, column: 5, scope: !1773)
!1786 = !DILocation(line: 441, column: 17, scope: !1773)
!1787 = !DILocation(line: 443, column: 44, scope: !1780)
!1788 = !DILocation(line: 443, column: 47, scope: !1780)
!1789 = !DILocation(line: 443, column: 30, scope: !1780)
!1790 = !DILocation(line: 443, column: 28, scope: !1780)
!1791 = !DILocation(line: 444, column: 13, scope: !1780)
!1792 = !DILocation(line: 443, column: 9, scope: !1773)
!1793 = !DILocation(line: 445, column: 9, scope: !1779)
!1794 = !DILocation(line: 445, column: 21, scope: !1779)
!1795 = !DILocation(line: 446, column: 9, scope: !1779)
!1796 = !DILocation(line: 446, column: 21, scope: !1779)
!1797 = !DILocation(line: 446, column: 26, scope: !1779)
!1798 = !DILocation(line: 452, column: 17, scope: !1779)
!1799 = !DILocation(line: 452, column: 15, scope: !1779)
!1800 = !DILocation(line: 454, column: 13, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 454, column: 13)
!1802 = !DILocation(line: 454, column: 19, scope: !1801)
!1803 = !DILocation(line: 454, column: 13, scope: !1779)
!1804 = !DILocation(line: 455, column: 21, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 454, column: 36)
!1806 = !DILocation(line: 455, column: 19, scope: !1805)
!1807 = !DILocation(line: 456, column: 9, scope: !1805)
!1808 = !DILocation(line: 458, column: 19, scope: !1779)
!1809 = !DILocation(line: 458, column: 17, scope: !1779)
!1810 = !DILocation(line: 460, column: 14, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 460, column: 13)
!1812 = !DILocation(line: 460, column: 13, scope: !1779)
!1813 = !DILocation(line: 461, column: 23, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 460, column: 23)
!1815 = !DILocation(line: 461, column: 21, scope: !1814)
!1816 = !DILocation(line: 462, column: 9, scope: !1814)
!1817 = !DILocation(line: 464, column: 15, scope: !1779)
!1818 = !DILocation(line: 464, column: 13, scope: !1779)
!1819 = !DILocation(line: 466, column: 13, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 466, column: 13)
!1821 = !DILocation(line: 466, column: 20, scope: !1820)
!1822 = !DILocation(line: 466, column: 17, scope: !1820)
!1823 = !DILocation(line: 466, column: 26, scope: !1820)
!1824 = !DILocation(line: 466, column: 29, scope: !1820)
!1825 = !DILocation(line: 466, column: 36, scope: !1820)
!1826 = !DILocation(line: 466, column: 33, scope: !1820)
!1827 = !DILocation(line: 466, column: 13, scope: !1779)
!1828 = !DILocation(line: 467, column: 17, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 467, column: 17)
!1830 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 466, column: 45)
!1831 = !DILocation(line: 467, column: 27, scope: !1829)
!1832 = !DILocation(line: 467, column: 33, scope: !1829)
!1833 = !DILocation(line: 467, column: 25, scope: !1829)
!1834 = !DILocation(line: 467, column: 17, scope: !1830)
!1835 = !DILocation(line: 468, column: 35, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 468, column: 21)
!1837 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 467, column: 39)
!1838 = !DILocation(line: 468, column: 38, scope: !1836)
!1839 = !DILocation(line: 468, column: 21, scope: !1836)
!1840 = !DILocation(line: 468, column: 21, scope: !1837)
!1841 = !DILocation(line: 470, column: 21, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 468, column: 60)
!1843 = !DILocation(line: 473, column: 21, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 472, column: 22)
!1845 = !DILocation(line: 477, column: 17, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 476, column: 18)
!1847 = !DILocation(line: 481, column: 13, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 480, column: 14)
!1849 = !DILocation(line: 483, column: 5, scope: !1780)
!1850 = !DILocation(line: 485, column: 5, scope: !1773)
!1851 = !DILocation(line: 486, column: 1, scope: !1773)
!1852 = distinct !DISubprogram(name: "ap_condition_if_range", scope: !3, file: !3, line: 488, type: !1556, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1863, !1864}
!1854 = !DILocalVariable(name: "r", arg: 1, scope: !1852, file: !3, line: 488, type: !179)
!1855 = !DILocalVariable(name: "headers", arg: 2, scope: !1852, file: !3, line: 489, type: !375)
!1856 = !DILocalVariable(name: "if_range", scope: !1852, file: !3, line: 491, type: !10)
!1857 = !DILocalVariable(name: "etag", scope: !1852, file: !3, line: 491, type: !10)
!1858 = !DILocalVariable(name: "mtime", scope: !1859, file: !3, line: 507, type: !338)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 506, column: 14)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 495, column: 13)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 494, column: 55)
!1862 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 493, column: 9)
!1863 = !DILocalVariable(name: "rtime", scope: !1859, file: !3, line: 508, type: !338)
!1864 = !DILocalVariable(name: "reqtime", scope: !1859, file: !3, line: 508, type: !338)
!1865 = !DILocation(line: 488, column: 63, scope: !1852)
!1866 = !DILocation(line: 489, column: 22, scope: !1852)
!1867 = !DILocation(line: 491, column: 5, scope: !1852)
!1868 = !DILocation(line: 491, column: 17, scope: !1852)
!1869 = !DILocation(line: 491, column: 28, scope: !1852)
!1870 = !DILocation(line: 493, column: 35, scope: !1862)
!1871 = !DILocation(line: 493, column: 38, scope: !1862)
!1872 = !DILocation(line: 493, column: 21, scope: !1862)
!1873 = !DILocation(line: 493, column: 19, scope: !1862)
!1874 = !DILocation(line: 494, column: 13, scope: !1862)
!1875 = !DILocation(line: 494, column: 30, scope: !1862)
!1876 = !DILocation(line: 494, column: 33, scope: !1862)
!1877 = !DILocation(line: 494, column: 16, scope: !1862)
!1878 = !DILocation(line: 493, column: 9, scope: !1852)
!1879 = !DILocation(line: 495, column: 13, scope: !1860)
!1880 = !DILocation(line: 495, column: 25, scope: !1860)
!1881 = !DILocation(line: 495, column: 13, scope: !1861)
!1882 = !DILocation(line: 497, column: 39, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 497, column: 17)
!1884 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 495, column: 33)
!1885 = !DILocation(line: 497, column: 25, scope: !1883)
!1886 = !DILocation(line: 497, column: 23, scope: !1883)
!1887 = !DILocation(line: 498, column: 21, scope: !1883)
!1888 = !DILocation(line: 498, column: 32, scope: !1883)
!1889 = !DILocation(line: 498, column: 42, scope: !1883)
!1890 = !DILocation(line: 498, column: 25, scope: !1883)
!1891 = !DILocation(line: 497, column: 17, scope: !1884)
!1892 = !DILocation(line: 499, column: 17, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 498, column: 49)
!1894 = !DILocation(line: 502, column: 17, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 501, column: 18)
!1896 = !DILocation(line: 507, column: 13, scope: !1859)
!1897 = !DILocation(line: 507, column: 25, scope: !1859)
!1898 = !DILocation(line: 508, column: 13, scope: !1859)
!1899 = !DILocation(line: 508, column: 25, scope: !1859)
!1900 = !DILocation(line: 508, column: 32, scope: !1859)
!1901 = !DILocation(line: 514, column: 21, scope: !1859)
!1902 = !DILocation(line: 514, column: 19, scope: !1859)
!1903 = !DILocation(line: 516, column: 17, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 516, column: 17)
!1905 = !DILocation(line: 516, column: 23, scope: !1904)
!1906 = !DILocation(line: 516, column: 17, scope: !1859)
!1907 = !DILocation(line: 517, column: 25, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 516, column: 40)
!1909 = !DILocation(line: 517, column: 23, scope: !1908)
!1910 = !DILocation(line: 518, column: 13, scope: !1908)
!1911 = !DILocation(line: 520, column: 23, scope: !1859)
!1912 = !DILocation(line: 520, column: 21, scope: !1859)
!1913 = !DILocation(line: 522, column: 18, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 522, column: 17)
!1915 = !DILocation(line: 522, column: 17, scope: !1859)
!1916 = !DILocation(line: 523, column: 27, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 522, column: 27)
!1918 = !DILocation(line: 523, column: 25, scope: !1917)
!1919 = !DILocation(line: 524, column: 13, scope: !1917)
!1920 = !DILocation(line: 526, column: 21, scope: !1859)
!1921 = !DILocation(line: 526, column: 19, scope: !1859)
!1922 = !DILocation(line: 528, column: 17, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 528, column: 17)
!1924 = !DILocation(line: 528, column: 26, scope: !1923)
!1925 = !DILocation(line: 528, column: 23, scope: !1923)
!1926 = !DILocation(line: 528, column: 17, scope: !1859)
!1927 = !DILocation(line: 529, column: 21, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 529, column: 21)
!1929 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 528, column: 33)
!1930 = !DILocation(line: 529, column: 31, scope: !1928)
!1931 = !DILocation(line: 529, column: 37, scope: !1928)
!1932 = !DILocation(line: 529, column: 29, scope: !1928)
!1933 = !DILocation(line: 529, column: 21, scope: !1929)
!1934 = !DILocation(line: 531, column: 21, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 529, column: 43)
!1936 = !DILocation(line: 534, column: 21, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 533, column: 22)
!1938 = !DILocation(line: 538, column: 17, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 537, column: 18)
!1940 = !DILocation(line: 540, column: 9, scope: !1860)
!1941 = !DILocation(line: 543, column: 5, scope: !1852)
!1942 = !DILocation(line: 544, column: 1, scope: !1852)
!1943 = !DISubprogram(name: "strcmp", scope: !1944, file: !1944, line: 156, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1944 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!14, !10, !10}
!1947 = distinct !DISubprogram(name: "ap_meets_conditions", scope: !3, file: !3, line: 546, type: !1305, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1948)
!1948 = !{!1949, !1950, !1951}
!1949 = !DILocalVariable(name: "r", arg: 1, scope: !1947, file: !3, line: 546, type: !179)
!1950 = !DILocalVariable(name: "not_modified", scope: !1947, file: !3, line: 548, type: !14)
!1951 = !DILocalVariable(name: "cond", scope: !1947, file: !3, line: 549, type: !1558)
!1952 = !DILocation(line: 546, column: 50, scope: !1947)
!1953 = !DILocation(line: 548, column: 5, scope: !1947)
!1954 = !DILocation(line: 548, column: 9, scope: !1947)
!1955 = !DILocation(line: 549, column: 5, scope: !1947)
!1956 = !DILocation(line: 549, column: 20, scope: !1947)
!1957 = !DILocation(line: 562, column: 10, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 562, column: 9)
!1959 = !DILocation(line: 562, column: 40, scope: !1958)
!1960 = !DILocation(line: 562, column: 43, scope: !1958)
!1961 = !DILocation(line: 562, column: 46, scope: !1958)
!1962 = !{!1321, !1250, i64 460}
!1963 = !DILocation(line: 562, column: 9, scope: !1947)
!1964 = !DILocation(line: 563, column: 9, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 562, column: 61)
!1966 = !DILocation(line: 571, column: 34, scope: !1947)
!1967 = !DILocation(line: 571, column: 37, scope: !1947)
!1968 = !DILocation(line: 571, column: 40, scope: !1947)
!1969 = !DILocation(line: 571, column: 12, scope: !1947)
!1970 = !DILocation(line: 571, column: 10, scope: !1947)
!1971 = !DILocation(line: 572, column: 33, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 572, column: 9)
!1973 = !DILocation(line: 572, column: 30, scope: !1972)
!1974 = !DILocation(line: 572, column: 9, scope: !1947)
!1975 = !DILocation(line: 573, column: 9, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 572, column: 39)
!1977 = !DILocation(line: 581, column: 45, scope: !1947)
!1978 = !DILocation(line: 581, column: 48, scope: !1947)
!1979 = !DILocation(line: 581, column: 51, scope: !1947)
!1980 = !DILocation(line: 581, column: 12, scope: !1947)
!1981 = !DILocation(line: 581, column: 10, scope: !1947)
!1982 = !DILocation(line: 582, column: 33, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 582, column: 9)
!1984 = !DILocation(line: 582, column: 30, scope: !1983)
!1985 = !DILocation(line: 582, column: 9, scope: !1947)
!1986 = !DILocation(line: 583, column: 22, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 582, column: 39)
!1988 = !DILocation(line: 584, column: 5, scope: !1987)
!1989 = !DILocation(line: 585, column: 14, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 585, column: 14)
!1991 = !DILocation(line: 585, column: 19, scope: !1990)
!1992 = !DILocation(line: 585, column: 14, scope: !1983)
!1993 = !DILocation(line: 586, column: 9, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 585, column: 41)
!1995 = !DILocation(line: 601, column: 39, scope: !1947)
!1996 = !DILocation(line: 601, column: 42, scope: !1947)
!1997 = !DILocation(line: 601, column: 45, scope: !1947)
!1998 = !DILocation(line: 601, column: 12, scope: !1947)
!1999 = !DILocation(line: 601, column: 10, scope: !1947)
!2000 = !DILocation(line: 602, column: 33, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 602, column: 9)
!2002 = !DILocation(line: 602, column: 30, scope: !2001)
!2003 = !DILocation(line: 602, column: 9, scope: !1947)
!2004 = !DILocation(line: 603, column: 22, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 602, column: 39)
!2006 = !DILocation(line: 604, column: 5, scope: !2005)
!2007 = !DILocation(line: 605, column: 14, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 605, column: 14)
!2009 = !DILocation(line: 605, column: 19, scope: !2008)
!2010 = !DILocation(line: 605, column: 14, scope: !2001)
!2011 = !DILocation(line: 606, column: 13, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 606, column: 13)
!2013 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 605, column: 41)
!2014 = !DILocation(line: 606, column: 16, scope: !2012)
!2015 = !DILocation(line: 606, column: 30, scope: !2012)
!2016 = !DILocation(line: 606, column: 13, scope: !2013)
!2017 = !DILocation(line: 607, column: 17, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 607, column: 17)
!2019 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 606, column: 40)
!2020 = !DILocation(line: 607, column: 17, scope: !2019)
!2021 = !DILocation(line: 608, column: 30, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 607, column: 31)
!2023 = !DILocation(line: 609, column: 13, scope: !2022)
!2024 = !DILocation(line: 610, column: 9, scope: !2019)
!2025 = !DILocation(line: 612, column: 13, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 611, column: 14)
!2027 = !DILocation(line: 614, column: 5, scope: !2013)
!2028 = !DILocation(line: 623, column: 43, scope: !1947)
!2029 = !DILocation(line: 623, column: 46, scope: !1947)
!2030 = !DILocation(line: 623, column: 49, scope: !1947)
!2031 = !DILocation(line: 623, column: 12, scope: !1947)
!2032 = !DILocation(line: 623, column: 10, scope: !1947)
!2033 = !DILocation(line: 624, column: 33, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 624, column: 9)
!2035 = !DILocation(line: 624, column: 30, scope: !2034)
!2036 = !DILocation(line: 624, column: 9, scope: !1947)
!2037 = !DILocation(line: 625, column: 22, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 624, column: 39)
!2039 = !DILocation(line: 626, column: 5, scope: !2038)
!2040 = !DILocation(line: 627, column: 14, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 627, column: 14)
!2042 = !DILocation(line: 627, column: 19, scope: !2041)
!2043 = !DILocation(line: 627, column: 14, scope: !2034)
!2044 = !DILocation(line: 628, column: 13, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 628, column: 13)
!2046 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 627, column: 41)
!2047 = !DILocation(line: 628, column: 16, scope: !2045)
!2048 = !DILocation(line: 628, column: 30, scope: !2045)
!2049 = !DILocation(line: 628, column: 13, scope: !2046)
!2050 = !DILocation(line: 629, column: 17, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 629, column: 17)
!2052 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 628, column: 40)
!2053 = !DILocation(line: 629, column: 17, scope: !2052)
!2054 = !DILocation(line: 630, column: 30, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 629, column: 31)
!2056 = !DILocation(line: 631, column: 13, scope: !2055)
!2057 = !DILocation(line: 632, column: 9, scope: !2052)
!2058 = !DILocation(line: 633, column: 5, scope: !2046)
!2059 = !DILocation(line: 638, column: 34, scope: !1947)
!2060 = !DILocation(line: 638, column: 37, scope: !1947)
!2061 = !DILocation(line: 638, column: 40, scope: !1947)
!2062 = !DILocation(line: 638, column: 12, scope: !1947)
!2063 = !DILocation(line: 638, column: 10, scope: !1947)
!2064 = !DILocation(line: 639, column: 9, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 639, column: 9)
!2066 = !DILocation(line: 639, column: 14, scope: !2065)
!2067 = !DILocation(line: 639, column: 9, scope: !1947)
!2068 = !DILocation(line: 640, column: 9, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 639, column: 35)
!2070 = !DILocation(line: 643, column: 9, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 643, column: 9)
!2072 = !DILocation(line: 643, column: 22, scope: !2071)
!2073 = !DILocation(line: 643, column: 9, scope: !1947)
!2074 = !DILocation(line: 644, column: 9, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 643, column: 28)
!2076 = !DILocation(line: 647, column: 5, scope: !1947)
!2077 = !DILocation(line: 648, column: 1, scope: !1947)
!2078 = distinct !DISubprogram(name: "ap_method_registry_init", scope: !3, file: !3, line: 681, type: !2079, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2081)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !73}
!2081 = !{!2082}
!2082 = !DILocalVariable(name: "p", arg: 1, scope: !2078, file: !3, line: 681, type: !73)
!2083 = !DILocation(line: 681, column: 54, scope: !2078)
!2084 = !DILocation(line: 683, column: 38, scope: !2078)
!2085 = !DILocation(line: 683, column: 24, scope: !2078)
!2086 = !DILocation(line: 683, column: 22, scope: !2078)
!2087 = !DILocation(line: 684, column: 31, scope: !2078)
!2088 = !DILocation(line: 684, column: 5, scope: !2078)
!2089 = !DILocation(line: 692, column: 25, scope: !2078)
!2090 = !DILocation(line: 692, column: 5, scope: !2078)
!2091 = !DILocation(line: 693, column: 25, scope: !2078)
!2092 = !DILocation(line: 693, column: 5, scope: !2078)
!2093 = !DILocation(line: 694, column: 25, scope: !2078)
!2094 = !DILocation(line: 694, column: 5, scope: !2078)
!2095 = !DILocation(line: 695, column: 25, scope: !2078)
!2096 = !DILocation(line: 695, column: 5, scope: !2078)
!2097 = !DILocation(line: 696, column: 25, scope: !2078)
!2098 = !DILocation(line: 696, column: 5, scope: !2078)
!2099 = !DILocation(line: 697, column: 25, scope: !2078)
!2100 = !DILocation(line: 697, column: 5, scope: !2078)
!2101 = !DILocation(line: 698, column: 25, scope: !2078)
!2102 = !DILocation(line: 698, column: 5, scope: !2078)
!2103 = !DILocation(line: 699, column: 25, scope: !2078)
!2104 = !DILocation(line: 699, column: 5, scope: !2078)
!2105 = !DILocation(line: 700, column: 25, scope: !2078)
!2106 = !DILocation(line: 700, column: 5, scope: !2078)
!2107 = !DILocation(line: 701, column: 25, scope: !2078)
!2108 = !DILocation(line: 701, column: 5, scope: !2078)
!2109 = !DILocation(line: 702, column: 25, scope: !2078)
!2110 = !DILocation(line: 702, column: 5, scope: !2078)
!2111 = !DILocation(line: 703, column: 25, scope: !2078)
!2112 = !DILocation(line: 703, column: 5, scope: !2078)
!2113 = !DILocation(line: 704, column: 25, scope: !2078)
!2114 = !DILocation(line: 704, column: 5, scope: !2078)
!2115 = !DILocation(line: 705, column: 25, scope: !2078)
!2116 = !DILocation(line: 705, column: 5, scope: !2078)
!2117 = !DILocation(line: 706, column: 25, scope: !2078)
!2118 = !DILocation(line: 706, column: 5, scope: !2078)
!2119 = !DILocation(line: 707, column: 25, scope: !2078)
!2120 = !DILocation(line: 707, column: 5, scope: !2078)
!2121 = !DILocation(line: 708, column: 25, scope: !2078)
!2122 = !DILocation(line: 708, column: 5, scope: !2078)
!2123 = !DILocation(line: 709, column: 25, scope: !2078)
!2124 = !DILocation(line: 709, column: 5, scope: !2078)
!2125 = !DILocation(line: 710, column: 25, scope: !2078)
!2126 = !DILocation(line: 710, column: 5, scope: !2078)
!2127 = !DILocation(line: 711, column: 25, scope: !2078)
!2128 = !DILocation(line: 711, column: 5, scope: !2078)
!2129 = !DILocation(line: 712, column: 25, scope: !2078)
!2130 = !DILocation(line: 712, column: 5, scope: !2078)
!2131 = !DILocation(line: 713, column: 25, scope: !2078)
!2132 = !DILocation(line: 713, column: 5, scope: !2078)
!2133 = !DILocation(line: 714, column: 25, scope: !2078)
!2134 = !DILocation(line: 714, column: 5, scope: !2078)
!2135 = !DILocation(line: 715, column: 25, scope: !2078)
!2136 = !DILocation(line: 715, column: 5, scope: !2078)
!2137 = !DILocation(line: 716, column: 25, scope: !2078)
!2138 = !DILocation(line: 716, column: 5, scope: !2078)
!2139 = !DILocation(line: 717, column: 25, scope: !2078)
!2140 = !DILocation(line: 717, column: 5, scope: !2078)
!2141 = !DILocation(line: 718, column: 25, scope: !2078)
!2142 = !DILocation(line: 718, column: 5, scope: !2078)
!2143 = !DILocation(line: 719, column: 1, scope: !2078)
!2144 = !DISubprogram(name: "apr_hash_make", scope: !838, file: !838, line: 78, type: !2145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!836, !73}
!2147 = !DISubprogram(name: "apr_pool_cleanup_register", scope: !75, file: !75, line: 628, type: !2148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !73, !2150, !2152, !2152}
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!25, !20}
!2155 = distinct !DISubprogram(name: "ap_method_registry_destroy", scope: !3, file: !3, line: 674, type: !2153, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2156)
!2156 = !{!2157}
!2157 = !DILocalVariable(name: "notused", arg: 1, scope: !2155, file: !3, line: 674, type: !20)
!2158 = !DILocation(line: 674, column: 54, scope: !2155)
!2159 = !DILocation(line: 676, column: 22, scope: !2155)
!2160 = !DILocation(line: 677, column: 23, scope: !2155)
!2161 = !DILocation(line: 678, column: 5, scope: !2155)
!2162 = distinct !DISubprogram(name: "register_one_method", scope: !3, file: !3, line: 662, type: !2163, scopeLine: 664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !73, !10, !14}
!2165 = !{!2166, !2167, !2168, !2169}
!2166 = !DILocalVariable(name: "p", arg: 1, scope: !2162, file: !3, line: 662, type: !73)
!2167 = !DILocalVariable(name: "methname", arg: 2, scope: !2162, file: !3, line: 662, type: !10)
!2168 = !DILocalVariable(name: "methnum", arg: 3, scope: !2162, file: !3, line: 663, type: !14)
!2169 = !DILocalVariable(name: "pnum", scope: !2162, file: !3, line: 665, type: !625)
!2170 = !DILocation(line: 662, column: 45, scope: !2162)
!2171 = !DILocation(line: 662, column: 60, scope: !2162)
!2172 = !DILocation(line: 663, column: 37, scope: !2162)
!2173 = !DILocation(line: 665, column: 5, scope: !2162)
!2174 = !DILocation(line: 665, column: 10, scope: !2162)
!2175 = !DILocation(line: 665, column: 28, scope: !2162)
!2176 = !DILocation(line: 665, column: 17, scope: !2162)
!2177 = !DILocation(line: 667, column: 13, scope: !2162)
!2178 = !DILocation(line: 667, column: 6, scope: !2162)
!2179 = !DILocation(line: 667, column: 11, scope: !2162)
!2180 = !DILocation(line: 668, column: 18, scope: !2162)
!2181 = !DILocation(line: 668, column: 36, scope: !2162)
!2182 = !DILocation(line: 668, column: 67, scope: !2162)
!2183 = !DILocation(line: 668, column: 5, scope: !2162)
!2184 = !DILocation(line: 669, column: 1, scope: !2162)
!2185 = distinct !DISubprogram(name: "ap_method_register", scope: !3, file: !3, line: 721, type: !1525, scopeLine: 722, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2186)
!2186 = !{!2187, !2188, !2189}
!2187 = !DILocalVariable(name: "p", arg: 1, scope: !2185, file: !3, line: 721, type: !73)
!2188 = !DILocalVariable(name: "methname", arg: 2, scope: !2185, file: !3, line: 721, type: !10)
!2189 = !DILocalVariable(name: "methnum", scope: !2185, file: !3, line: 723, type: !625)
!2190 = !DILocation(line: 721, column: 48, scope: !2185)
!2191 = !DILocation(line: 721, column: 63, scope: !2185)
!2192 = !DILocation(line: 723, column: 5, scope: !2185)
!2193 = !DILocation(line: 723, column: 10, scope: !2185)
!2194 = !DILocation(line: 725, column: 9, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 725, column: 9)
!2196 = !DILocation(line: 725, column: 26, scope: !2195)
!2197 = !DILocation(line: 725, column: 9, scope: !2185)
!2198 = !DILocation(line: 726, column: 33, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 725, column: 35)
!2200 = !DILocation(line: 726, column: 9, scope: !2199)
!2201 = !DILocation(line: 727, column: 5, scope: !2199)
!2202 = !DILocation(line: 729, column: 9, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 729, column: 9)
!2204 = !DILocation(line: 729, column: 18, scope: !2203)
!2205 = !DILocation(line: 729, column: 9, scope: !2185)
!2206 = !DILocation(line: 730, column: 9, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 729, column: 27)
!2208 = !DILocation(line: 736, column: 35, scope: !2185)
!2209 = !DILocation(line: 736, column: 53, scope: !2185)
!2210 = !DILocation(line: 736, column: 22, scope: !2185)
!2211 = !DILocation(line: 736, column: 13, scope: !2185)
!2212 = !DILocation(line: 738, column: 9, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 738, column: 9)
!2214 = !DILocation(line: 738, column: 17, scope: !2213)
!2215 = !DILocation(line: 738, column: 9, scope: !2185)
!2216 = !DILocation(line: 739, column: 17, scope: !2213)
!2217 = !DILocation(line: 739, column: 16, scope: !2213)
!2218 = !DILocation(line: 739, column: 9, scope: !2213)
!2219 = !DILocation(line: 741, column: 9, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 741, column: 9)
!2221 = !DILocation(line: 741, column: 27, scope: !2220)
!2222 = !DILocation(line: 741, column: 9, scope: !2185)
!2223 = !DILocation(line: 745, column: 23, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 741, column: 49)
!2225 = !DILocation(line: 745, column: 49, scope: !2224)
!2226 = !DILocation(line: 748, column: 43, scope: !2224)
!2227 = !DILocation(line: 745, column: 9, scope: !2224)
!2228 = !DILocation(line: 749, column: 9, scope: !2224)
!2229 = !DILocation(line: 752, column: 25, scope: !2185)
!2230 = !DILocation(line: 752, column: 28, scope: !2185)
!2231 = !DILocation(line: 752, column: 38, scope: !2185)
!2232 = !DILocation(line: 752, column: 5, scope: !2185)
!2233 = !DILocation(line: 753, column: 29, scope: !2185)
!2234 = !DILocation(line: 753, column: 5, scope: !2185)
!2235 = !DILocation(line: 754, column: 1, scope: !2185)
!2236 = !DISubprogram(name: "apr_hash_get", scope: !838, file: !838, line: 118, type: !2237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!20, !836, !2150, !2239}
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_ssize_t", file: !44, line: 380, baseType: !2240)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !51, line: 108, baseType: !2241)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !53, line: 194, baseType: !54)
!2242 = !DISubprogram(name: "ap_log_perror_", scope: !2243, file: !2243, line: 414, type: !2244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2243 = !DIFile(filename: "include/http_log.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "ce7bde9ead508f1c34c81b1931b44b16")
!2244 = !DISubroutineType(types: !2245)
!2245 = !{null, !10, !14, !14, !14, !25, !73, !10, null}
!2246 = distinct !DISubprogram(name: "ap_method_number_of", scope: !3, file: !3, line: 940, type: !2247, scopeLine: 941, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2249)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!14, !10}
!2249 = !{!2250, !2251, !2252, !2253}
!2250 = !DILocalVariable(name: "method", arg: 1, scope: !2246, file: !3, line: 940, type: !10)
!2251 = !DILocalVariable(name: "len", scope: !2246, file: !3, line: 942, type: !14)
!2252 = !DILocalVariable(name: "which", scope: !2246, file: !3, line: 943, type: !14)
!2253 = !DILocalVariable(name: "methnum", scope: !2254, file: !3, line: 950, type: !625)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 949, column: 35)
!2255 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 949, column: 9)
!2256 = !DILocation(line: 940, column: 49, scope: !2246)
!2257 = !DILocation(line: 942, column: 5, scope: !2246)
!2258 = !DILocation(line: 942, column: 9, scope: !2246)
!2259 = !DILocation(line: 942, column: 22, scope: !2246)
!2260 = !DILocation(line: 942, column: 15, scope: !2246)
!2261 = !DILocation(line: 943, column: 5, scope: !2246)
!2262 = !DILocation(line: 943, column: 9, scope: !2246)
!2263 = !DILocation(line: 943, column: 39, scope: !2246)
!2264 = !DILocation(line: 943, column: 47, scope: !2246)
!2265 = !DILocation(line: 943, column: 17, scope: !2246)
!2266 = !DILocation(line: 945, column: 9, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 945, column: 9)
!2268 = !DILocation(line: 945, column: 15, scope: !2267)
!2269 = !DILocation(line: 945, column: 9, scope: !2246)
!2270 = !DILocation(line: 946, column: 16, scope: !2267)
!2271 = !DILocation(line: 946, column: 9, scope: !2267)
!2272 = !DILocation(line: 949, column: 9, scope: !2255)
!2273 = !DILocation(line: 949, column: 26, scope: !2255)
!2274 = !DILocation(line: 949, column: 9, scope: !2246)
!2275 = !DILocation(line: 950, column: 9, scope: !2254)
!2276 = !DILocation(line: 950, column: 14, scope: !2254)
!2277 = !DILocation(line: 950, column: 37, scope: !2254)
!2278 = !DILocation(line: 950, column: 55, scope: !2254)
!2279 = !DILocation(line: 950, column: 63, scope: !2254)
!2280 = !DILocation(line: 950, column: 24, scope: !2254)
!2281 = !DILocation(line: 952, column: 13, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 952, column: 13)
!2283 = !DILocation(line: 952, column: 21, scope: !2282)
!2284 = !DILocation(line: 952, column: 13, scope: !2254)
!2285 = !DILocation(line: 953, column: 21, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 952, column: 30)
!2287 = !DILocation(line: 953, column: 20, scope: !2286)
!2288 = !DILocation(line: 953, column: 13, scope: !2286)
!2289 = !DILocation(line: 955, column: 5, scope: !2255)
!2290 = !DILocation(line: 955, column: 5, scope: !2254)
!2291 = !DILocation(line: 957, column: 5, scope: !2246)
!2292 = !DILocation(line: 958, column: 1, scope: !2246)
!2293 = !DISubprogram(name: "strlen", scope: !1944, file: !1944, line: 407, type: !2294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!47, !10}
!2296 = distinct !DISubprogram(name: "lookup_builtin_method", scope: !3, file: !3, line: 758, type: !2297, scopeLine: 759, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2299)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!14, !10, !43}
!2299 = !{!2300, !2301}
!2300 = !DILocalVariable(name: "method", arg: 1, scope: !2296, file: !3, line: 758, type: !10)
!2301 = !DILocalVariable(name: "len", arg: 2, scope: !2296, file: !3, line: 758, type: !43)
!2302 = !DILocation(line: 758, column: 46, scope: !2296)
!2303 = !DILocation(line: 758, column: 65, scope: !2296)
!2304 = !DILocation(line: 772, column: 13, scope: !2296)
!2305 = !DILocation(line: 772, column: 5, scope: !2296)
!2306 = !DILocation(line: 775, column: 17, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 773, column: 5)
!2308 = !DILocation(line: 775, column: 9, scope: !2307)
!2309 = !DILocation(line: 778, column: 21, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 776, column: 9)
!2311 = !DILocation(line: 778, column: 31, scope: !2310)
!2312 = !DILocation(line: 779, column: 21, scope: !2310)
!2313 = !DILocation(line: 779, column: 24, scope: !2310)
!2314 = !DILocation(line: 779, column: 34, scope: !2310)
!2315 = !DILocation(line: 0, scope: !2310)
!2316 = !DILocation(line: 778, column: 13, scope: !2310)
!2317 = !DILocation(line: 782, column: 21, scope: !2310)
!2318 = !DILocation(line: 782, column: 31, scope: !2310)
!2319 = !DILocation(line: 783, column: 21, scope: !2310)
!2320 = !DILocation(line: 783, column: 24, scope: !2310)
!2321 = !DILocation(line: 783, column: 34, scope: !2310)
!2322 = !DILocation(line: 782, column: 13, scope: !2310)
!2323 = !DILocation(line: 786, column: 13, scope: !2310)
!2324 = !DILocation(line: 790, column: 17, scope: !2307)
!2325 = !DILocation(line: 790, column: 9, scope: !2307)
!2326 = !DILocation(line: 793, column: 21, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 791, column: 9)
!2328 = !DILocation(line: 793, column: 31, scope: !2327)
!2329 = !DILocation(line: 794, column: 21, scope: !2327)
!2330 = !DILocation(line: 794, column: 24, scope: !2327)
!2331 = !DILocation(line: 794, column: 34, scope: !2327)
!2332 = !DILocation(line: 795, column: 21, scope: !2327)
!2333 = !DILocation(line: 795, column: 24, scope: !2327)
!2334 = !DILocation(line: 795, column: 34, scope: !2327)
!2335 = !DILocation(line: 0, scope: !2327)
!2336 = !DILocation(line: 793, column: 13, scope: !2327)
!2337 = !DILocation(line: 798, column: 21, scope: !2327)
!2338 = !DILocation(line: 798, column: 31, scope: !2327)
!2339 = !DILocation(line: 799, column: 21, scope: !2327)
!2340 = !DILocation(line: 799, column: 24, scope: !2327)
!2341 = !DILocation(line: 799, column: 34, scope: !2327)
!2342 = !DILocation(line: 800, column: 21, scope: !2327)
!2343 = !DILocation(line: 800, column: 24, scope: !2327)
!2344 = !DILocation(line: 800, column: 34, scope: !2327)
!2345 = !DILocation(line: 798, column: 13, scope: !2327)
!2346 = !DILocation(line: 803, column: 21, scope: !2327)
!2347 = !DILocation(line: 803, column: 31, scope: !2327)
!2348 = !DILocation(line: 804, column: 21, scope: !2327)
!2349 = !DILocation(line: 804, column: 24, scope: !2327)
!2350 = !DILocation(line: 804, column: 34, scope: !2327)
!2351 = !DILocation(line: 805, column: 21, scope: !2327)
!2352 = !DILocation(line: 805, column: 24, scope: !2327)
!2353 = !DILocation(line: 805, column: 34, scope: !2327)
!2354 = !DILocation(line: 803, column: 13, scope: !2327)
!2355 = !DILocation(line: 808, column: 21, scope: !2327)
!2356 = !DILocation(line: 808, column: 31, scope: !2327)
!2357 = !DILocation(line: 809, column: 21, scope: !2327)
!2358 = !DILocation(line: 809, column: 24, scope: !2327)
!2359 = !DILocation(line: 809, column: 34, scope: !2327)
!2360 = !DILocation(line: 810, column: 21, scope: !2327)
!2361 = !DILocation(line: 810, column: 24, scope: !2327)
!2362 = !DILocation(line: 810, column: 34, scope: !2327)
!2363 = !DILocation(line: 808, column: 13, scope: !2327)
!2364 = !DILocation(line: 813, column: 21, scope: !2327)
!2365 = !DILocation(line: 813, column: 31, scope: !2327)
!2366 = !DILocation(line: 814, column: 21, scope: !2327)
!2367 = !DILocation(line: 814, column: 24, scope: !2327)
!2368 = !DILocation(line: 814, column: 34, scope: !2327)
!2369 = !DILocation(line: 815, column: 21, scope: !2327)
!2370 = !DILocation(line: 815, column: 24, scope: !2327)
!2371 = !DILocation(line: 815, column: 34, scope: !2327)
!2372 = !DILocation(line: 813, column: 13, scope: !2327)
!2373 = !DILocation(line: 818, column: 13, scope: !2327)
!2374 = !DILocation(line: 822, column: 17, scope: !2307)
!2375 = !DILocation(line: 822, column: 9, scope: !2307)
!2376 = !DILocation(line: 825, column: 28, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 823, column: 9)
!2378 = !DILocation(line: 825, column: 21, scope: !2377)
!2379 = !DILocation(line: 825, column: 48, scope: !2377)
!2380 = !DILocation(line: 825, column: 13, scope: !2377)
!2381 = !DILocation(line: 828, column: 28, scope: !2377)
!2382 = !DILocation(line: 828, column: 21, scope: !2377)
!2383 = !DILocation(line: 828, column: 48, scope: !2377)
!2384 = !DILocation(line: 828, column: 13, scope: !2377)
!2385 = !DILocation(line: 831, column: 28, scope: !2377)
!2386 = !DILocation(line: 831, column: 21, scope: !2377)
!2387 = !DILocation(line: 831, column: 48, scope: !2377)
!2388 = !DILocation(line: 831, column: 13, scope: !2377)
!2389 = !DILocation(line: 834, column: 28, scope: !2377)
!2390 = !DILocation(line: 834, column: 21, scope: !2377)
!2391 = !DILocation(line: 834, column: 48, scope: !2377)
!2392 = !DILocation(line: 834, column: 13, scope: !2377)
!2393 = !DILocation(line: 837, column: 28, scope: !2377)
!2394 = !DILocation(line: 837, column: 21, scope: !2377)
!2395 = !DILocation(line: 837, column: 48, scope: !2377)
!2396 = !DILocation(line: 837, column: 13, scope: !2377)
!2397 = !DILocation(line: 840, column: 13, scope: !2377)
!2398 = !DILocation(line: 844, column: 17, scope: !2307)
!2399 = !DILocation(line: 844, column: 9, scope: !2307)
!2400 = !DILocation(line: 847, column: 21, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 845, column: 9)
!2402 = !DILocation(line: 847, column: 13, scope: !2401)
!2403 = !DILocation(line: 850, column: 32, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 848, column: 13)
!2405 = !DILocation(line: 850, column: 25, scope: !2404)
!2406 = !DILocation(line: 850, column: 53, scope: !2404)
!2407 = !DILocation(line: 850, column: 17, scope: !2404)
!2408 = !DILocation(line: 853, column: 32, scope: !2404)
!2409 = !DILocation(line: 853, column: 25, scope: !2404)
!2410 = !DILocation(line: 853, column: 53, scope: !2404)
!2411 = !DILocation(line: 853, column: 17, scope: !2404)
!2412 = !DILocation(line: 856, column: 17, scope: !2404)
!2413 = !DILocation(line: 859, column: 28, scope: !2401)
!2414 = !DILocation(line: 859, column: 21, scope: !2401)
!2415 = !DILocation(line: 859, column: 49, scope: !2401)
!2416 = !DILocation(line: 859, column: 13, scope: !2401)
!2417 = !DILocation(line: 862, column: 28, scope: !2401)
!2418 = !DILocation(line: 862, column: 21, scope: !2401)
!2419 = !DILocation(line: 862, column: 49, scope: !2401)
!2420 = !DILocation(line: 862, column: 13, scope: !2401)
!2421 = !DILocation(line: 865, column: 13, scope: !2401)
!2422 = !DILocation(line: 869, column: 17, scope: !2307)
!2423 = !DILocation(line: 869, column: 9, scope: !2307)
!2424 = !DILocation(line: 872, column: 28, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 870, column: 9)
!2426 = !DILocation(line: 872, column: 21, scope: !2425)
!2427 = !DILocation(line: 872, column: 50, scope: !2425)
!2428 = !DILocation(line: 872, column: 13, scope: !2425)
!2429 = !DILocation(line: 875, column: 28, scope: !2425)
!2430 = !DILocation(line: 875, column: 21, scope: !2425)
!2431 = !DILocation(line: 875, column: 50, scope: !2425)
!2432 = !DILocation(line: 875, column: 13, scope: !2425)
!2433 = !DILocation(line: 878, column: 28, scope: !2425)
!2434 = !DILocation(line: 878, column: 21, scope: !2425)
!2435 = !DILocation(line: 878, column: 50, scope: !2425)
!2436 = !DILocation(line: 878, column: 13, scope: !2425)
!2437 = !DILocation(line: 881, column: 13, scope: !2425)
!2438 = !DILocation(line: 885, column: 17, scope: !2307)
!2439 = !DILocation(line: 885, column: 9, scope: !2307)
!2440 = !DILocation(line: 888, column: 28, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 886, column: 9)
!2442 = !DILocation(line: 888, column: 21, scope: !2441)
!2443 = !DILocation(line: 888, column: 51, scope: !2441)
!2444 = !DILocation(line: 888, column: 13, scope: !2441)
!2445 = !DILocation(line: 891, column: 28, scope: !2441)
!2446 = !DILocation(line: 891, column: 21, scope: !2441)
!2447 = !DILocation(line: 891, column: 51, scope: !2441)
!2448 = !DILocation(line: 891, column: 13, scope: !2441)
!2449 = !DILocation(line: 894, column: 13, scope: !2441)
!2450 = !DILocation(line: 898, column: 24, scope: !2307)
!2451 = !DILocation(line: 898, column: 17, scope: !2307)
!2452 = !DILocation(line: 898, column: 48, scope: !2307)
!2453 = !DILocation(line: 898, column: 9, scope: !2307)
!2454 = !DILocation(line: 902, column: 17, scope: !2307)
!2455 = !DILocation(line: 902, column: 9, scope: !2307)
!2456 = !DILocation(line: 905, column: 28, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 903, column: 9)
!2458 = !DILocation(line: 905, column: 21, scope: !2457)
!2459 = !DILocation(line: 905, column: 54, scope: !2457)
!2460 = !DILocation(line: 905, column: 13, scope: !2457)
!2461 = !DILocation(line: 908, column: 28, scope: !2457)
!2462 = !DILocation(line: 908, column: 21, scope: !2457)
!2463 = !DILocation(line: 908, column: 54, scope: !2457)
!2464 = !DILocation(line: 908, column: 13, scope: !2457)
!2465 = !DILocation(line: 911, column: 13, scope: !2457)
!2466 = !DILocation(line: 915, column: 24, scope: !2307)
!2467 = !DILocation(line: 915, column: 17, scope: !2307)
!2468 = !DILocation(line: 915, column: 51, scope: !2307)
!2469 = !DILocation(line: 915, column: 9, scope: !2307)
!2470 = !DILocation(line: 919, column: 24, scope: !2307)
!2471 = !DILocation(line: 919, column: 17, scope: !2307)
!2472 = !DILocation(line: 919, column: 55, scope: !2307)
!2473 = !DILocation(line: 919, column: 9, scope: !2307)
!2474 = !DILocation(line: 923, column: 24, scope: !2307)
!2475 = !DILocation(line: 923, column: 17, scope: !2307)
!2476 = !DILocation(line: 923, column: 56, scope: !2307)
!2477 = !DILocation(line: 923, column: 9, scope: !2307)
!2478 = !DILocation(line: 927, column: 9, scope: !2307)
!2479 = !DILocation(line: 931, column: 1, scope: !2296)
!2480 = distinct !DISubprogram(name: "ap_method_name_of", scope: !3, file: !3, line: 963, type: !2481, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!10, !73, !14}
!2483 = !{!2484, !2485, !2486, !2490, !2494}
!2484 = !DILocalVariable(name: "p", arg: 1, scope: !2480, file: !3, line: 963, type: !73)
!2485 = !DILocalVariable(name: "methnum", arg: 2, scope: !2480, file: !3, line: 963, type: !14)
!2486 = !DILocalVariable(name: "hi", scope: !2480, file: !3, line: 965, type: !2487)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_hash_index_t", file: !838, line: 57, baseType: !2489)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_hash_index_t", file: !838, line: 57, flags: DIFlagFwdDecl)
!2490 = !DILocalVariable(name: "key", scope: !2491, file: !3, line: 970, type: !2150)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 969, column: 40)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 969, column: 5)
!2493 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 969, column: 5)
!2494 = !DILocalVariable(name: "val", scope: !2491, file: !3, line: 971, type: !20)
!2495 = !DILocation(line: 963, column: 56, scope: !2480)
!2496 = !DILocation(line: 963, column: 63, scope: !2480)
!2497 = !DILocation(line: 965, column: 5, scope: !2480)
!2498 = !DILocation(line: 965, column: 23, scope: !2480)
!2499 = !DILocation(line: 965, column: 43, scope: !2480)
!2500 = !DILocation(line: 965, column: 46, scope: !2480)
!2501 = !DILocation(line: 965, column: 28, scope: !2480)
!2502 = !DILocation(line: 969, column: 5, scope: !2480)
!2503 = !DILocation(line: 969, column: 12, scope: !2492)
!2504 = !DILocation(line: 969, column: 5, scope: !2493)
!2505 = !DILocation(line: 970, column: 9, scope: !2491)
!2506 = !DILocation(line: 970, column: 21, scope: !2491)
!2507 = !DILocation(line: 971, column: 9, scope: !2491)
!2508 = !DILocation(line: 971, column: 15, scope: !2491)
!2509 = !DILocation(line: 973, column: 23, scope: !2491)
!2510 = !DILocation(line: 973, column: 9, scope: !2491)
!2511 = !DILocation(line: 974, column: 21, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 974, column: 13)
!2513 = !DILocation(line: 974, column: 13, scope: !2512)
!2514 = !DILocation(line: 974, column: 28, scope: !2512)
!2515 = !DILocation(line: 974, column: 25, scope: !2512)
!2516 = !DILocation(line: 974, column: 13, scope: !2491)
!2517 = !DILocation(line: 975, column: 20, scope: !2512)
!2518 = !DILocation(line: 975, column: 13, scope: !2512)
!2519 = !DILocation(line: 976, column: 5, scope: !2492)
!2520 = !DILocation(line: 976, column: 5, scope: !2491)
!2521 = !DILocation(line: 969, column: 35, scope: !2492)
!2522 = !DILocation(line: 969, column: 21, scope: !2492)
!2523 = !DILocation(line: 969, column: 19, scope: !2492)
!2524 = !DILocation(line: 969, column: 5, scope: !2492)
!2525 = distinct !{!2525, !2504, !2526, !1303}
!2526 = !DILocation(line: 976, column: 5, scope: !2493)
!2527 = !DILocation(line: 979, column: 5, scope: !2480)
!2528 = !DILocation(line: 980, column: 1, scope: !2480)
!2529 = !DISubprogram(name: "apr_hash_first", scope: !838, file: !838, line: 148, type: !2530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!2487, !73, !836}
!2532 = !DISubprogram(name: "apr_hash_this", scope: !838, file: !838, line: 167, type: !2533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !2487, !2535, !2536, !626}
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2537 = !DISubprogram(name: "apr_hash_next", scope: !838, file: !838, line: 156, type: !2538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!2487, !2487}
!2540 = distinct !DISubprogram(name: "ap_index_of_response", scope: !3, file: !3, line: 1017, type: !845, scopeLine: 1018, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2541)
!2541 = !{!2542, !2543}
!2542 = !DILocalVariable(name: "status", arg: 1, scope: !2540, file: !3, line: 1017, type: !14)
!2543 = !DILocalVariable(name: "index", scope: !2540, file: !3, line: 1019, type: !14)
!2544 = !DILocation(line: 1017, column: 42, scope: !2540)
!2545 = !DILocation(line: 1019, column: 5, scope: !2540)
!2546 = !DILocation(line: 1019, column: 9, scope: !2540)
!2547 = !DILocation(line: 1019, column: 35, scope: !2540)
!2548 = !DILocation(line: 1019, column: 17, scope: !2540)
!2549 = !DILocation(line: 1020, column: 13, scope: !2540)
!2550 = !DILocation(line: 1020, column: 19, scope: !2540)
!2551 = !DILocation(line: 1020, column: 12, scope: !2540)
!2552 = !DILocation(line: 1020, column: 38, scope: !2540)
!2553 = !DILocation(line: 1021, column: 1, scope: !2540)
!2554 = !DILocation(line: 1020, column: 5, scope: !2540)
!2555 = !DILocation(line: 989, column: 34, scope: !844)
!2556 = !DILocation(line: 993, column: 5, scope: !844)
!2557 = !DILocation(line: 993, column: 9, scope: !844)
!2558 = !DILocation(line: 993, column: 12, scope: !844)
!2559 = !DILocation(line: 995, column: 9, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !844, file: !3, line: 995, column: 9)
!2561 = !DILocation(line: 995, column: 16, scope: !2560)
!2562 = !DILocation(line: 995, column: 9, scope: !844)
!2563 = !DILocation(line: 996, column: 9, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 995, column: 23)
!2565 = !DILocation(line: 998, column: 9, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !844, file: !3, line: 998, column: 9)
!2567 = !DILocation(line: 998, column: 16, scope: !2566)
!2568 = !DILocation(line: 998, column: 9, scope: !844)
!2569 = !DILocation(line: 999, column: 9, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 998, column: 23)
!2571 = !DILocation(line: 1002, column: 12, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !844, file: !3, line: 1002, column: 5)
!2573 = !DILocation(line: 1002, column: 10, scope: !2572)
!2574 = !DILocation(line: 1002, column: 17, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 1002, column: 5)
!2576 = !DILocation(line: 1002, column: 19, scope: !2575)
!2577 = !DILocation(line: 1002, column: 5, scope: !2572)
!2578 = !DILocation(line: 1003, column: 16, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 1002, column: 29)
!2580 = !DILocation(line: 1004, column: 13, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1004, column: 13)
!2582 = !DILocation(line: 1004, column: 20, scope: !2581)
!2583 = !DILocation(line: 1004, column: 13, scope: !2579)
!2584 = !DILocation(line: 1005, column: 20, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 1004, column: 27)
!2586 = !DILocation(line: 1005, column: 38, scope: !2585)
!2587 = !DILocation(line: 1005, column: 29, scope: !2585)
!2588 = !DILocation(line: 1005, column: 27, scope: !2585)
!2589 = !DILocation(line: 1005, column: 17, scope: !2585)
!2590 = !DILocation(line: 1006, column: 17, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1006, column: 17)
!2592 = !DILocation(line: 1006, column: 32, scope: !2591)
!2593 = !DILocation(line: 1006, column: 34, scope: !2591)
!2594 = !DILocation(line: 1006, column: 23, scope: !2591)
!2595 = !DILocation(line: 1006, column: 21, scope: !2591)
!2596 = !DILocation(line: 1006, column: 39, scope: !2591)
!2597 = !DILocation(line: 1006, column: 55, scope: !2591)
!2598 = !DILocation(line: 1006, column: 42, scope: !2591)
!2599 = !DILocation(line: 1006, column: 60, scope: !2591)
!2600 = !DILocation(line: 1006, column: 17, scope: !2585)
!2601 = !DILocation(line: 1007, column: 24, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 1006, column: 69)
!2603 = !DILocation(line: 1007, column: 17, scope: !2602)
!2604 = !DILocation(line: 1010, column: 17, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 1009, column: 18)
!2606 = !DILocation(line: 1013, column: 5, scope: !2579)
!2607 = !DILocation(line: 1002, column: 25, scope: !2575)
!2608 = !DILocation(line: 1002, column: 5, scope: !2575)
!2609 = distinct !{!2609, !2577, !2610, !1303}
!2610 = !DILocation(line: 1013, column: 5, scope: !2572)
!2611 = !DILocation(line: 1014, column: 5, scope: !844)
!2612 = !DILocation(line: 1015, column: 1, scope: !844)
!2613 = distinct !DISubprogram(name: "ap_get_status_line_ex", scope: !3, file: !3, line: 1023, type: !2481, scopeLine: 1024, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2614)
!2614 = !{!2615, !2616, !2617}
!2615 = !DILocalVariable(name: "p", arg: 1, scope: !2613, file: !3, line: 1023, type: !73)
!2616 = !DILocalVariable(name: "status", arg: 2, scope: !2613, file: !3, line: 1023, type: !14)
!2617 = !DILocalVariable(name: "index", scope: !2613, file: !3, line: 1025, type: !14)
!2618 = !DILocation(line: 1023, column: 60, scope: !2613)
!2619 = !DILocation(line: 1023, column: 67, scope: !2613)
!2620 = !DILocation(line: 1025, column: 5, scope: !2613)
!2621 = !DILocation(line: 1025, column: 9, scope: !2613)
!2622 = !DILocation(line: 1025, column: 35, scope: !2613)
!2623 = !DILocation(line: 1025, column: 17, scope: !2613)
!2624 = !DILocation(line: 1026, column: 9, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 1026, column: 9)
!2626 = !DILocation(line: 1026, column: 15, scope: !2625)
!2627 = !DILocation(line: 1026, column: 9, scope: !2613)
!2628 = !DILocation(line: 1027, column: 29, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 1026, column: 21)
!2630 = !DILocation(line: 1027, column: 16, scope: !2629)
!2631 = !DILocation(line: 1027, column: 9, scope: !2629)
!2632 = !DILocation(line: 1029, column: 14, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 1029, column: 14)
!2634 = !DILocation(line: 1029, column: 20, scope: !2633)
!2635 = !DILocation(line: 1029, column: 14, scope: !2625)
!2636 = !DILocation(line: 1030, column: 29, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 1029, column: 27)
!2638 = !DILocation(line: 1030, column: 48, scope: !2637)
!2639 = !DILocation(line: 1030, column: 56, scope: !2637)
!2640 = !DILocation(line: 1030, column: 16, scope: !2637)
!2641 = !DILocation(line: 1030, column: 9, scope: !2637)
!2642 = !DILocation(line: 1032, column: 12, scope: !2613)
!2643 = !DILocation(line: 1032, column: 5, scope: !2613)
!2644 = !DILocation(line: 1033, column: 1, scope: !2613)
!2645 = distinct !DISubprogram(name: "ap_get_status_line", scope: !3, file: !3, line: 1035, type: !2646, scopeLine: 1036, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2648)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!10, !14}
!2648 = !{!2649}
!2649 = !DILocalVariable(name: "status", arg: 1, scope: !2645, file: !3, line: 1035, type: !14)
!2650 = !DILocation(line: 1035, column: 49, scope: !2645)
!2651 = !DILocation(line: 1037, column: 46, scope: !2645)
!2652 = !DILocation(line: 1037, column: 25, scope: !2645)
!2653 = !DILocation(line: 1037, column: 12, scope: !2645)
!2654 = !DILocation(line: 1037, column: 5, scope: !2645)
!2655 = distinct !DISubprogram(name: "ap_send_http_options", scope: !3, file: !3, line: 1078, type: !1305, scopeLine: 1079, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2656)
!2656 = !{!2657}
!2657 = !DILocalVariable(name: "r", arg: 1, scope: !2655, file: !3, line: 1078, type: !179)
!2658 = !DILocation(line: 1078, column: 51, scope: !2655)
!2659 = !DILocation(line: 1080, column: 9, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 1080, column: 9)
!2661 = !DILocation(line: 1080, column: 12, scope: !2660)
!2662 = !{!1321, !1250, i64 56}
!2663 = !DILocation(line: 1080, column: 9, scope: !2655)
!2664 = !DILocation(line: 1081, column: 9, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1080, column: 26)
!2666 = !DILocation(line: 1084, column: 20, scope: !2655)
!2667 = !DILocation(line: 1084, column: 23, scope: !2655)
!2668 = !DILocation(line: 1084, column: 56, scope: !2655)
!2669 = !DILocation(line: 1084, column: 45, scope: !2655)
!2670 = !DILocation(line: 1084, column: 5, scope: !2655)
!2671 = !DILocation(line: 1090, column: 5, scope: !2655)
!2672 = !DILocation(line: 1091, column: 1, scope: !2655)
!2673 = distinct !DISubprogram(name: "make_allow", scope: !3, file: !3, line: 1042, type: !2674, scopeLine: 1043, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!209, !179}
!2676 = !{!2677, !2678, !2679, !2680, !2681, !2709, !2713}
!2677 = !DILocalVariable(name: "r", arg: 1, scope: !2673, file: !3, line: 1042, type: !179)
!2678 = !DILocalVariable(name: "mask", scope: !2673, file: !3, line: 1044, type: !338)
!2679 = !DILocalVariable(name: "allow", scope: !2673, file: !3, line: 1045, type: !346)
!2680 = !DILocalVariable(name: "hi", scope: !2673, file: !3, line: 1046, type: !2487)
!2681 = !DILocalVariable(name: "conf", scope: !2673, file: !3, line: 1048, type: !2682)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "core_server_config", file: !148, line: 758, baseType: !2684)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 693, size: 1088, elements: !2685)
!2685 = !{!2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "gprof_dir", scope: !2684, file: !148, line: 695, baseType: !209, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ap_document_root", scope: !2684, file: !148, line: 701, baseType: !10, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "access_name", scope: !2684, file: !148, line: 705, baseType: !209, size: 64, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "sec_dir", scope: !2684, file: !148, line: 706, baseType: !346, size: 64, offset: 192)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "sec_url", scope: !2684, file: !148, line: 707, baseType: !346, size: 64, offset: 256)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_limit", scope: !2684, file: !148, line: 710, baseType: !14, size: 32, offset: 320)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "subreq_limit", scope: !2684, file: !148, line: 711, baseType: !14, size: 32, offset: 352)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2684, file: !148, line: 713, baseType: !10, size: 64, offset: 384)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "accf_map", scope: !2684, file: !148, line: 714, baseType: !375, size: 64, offset: 448)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "error_log_format", scope: !2684, file: !148, line: 717, baseType: !346, size: 64, offset: 512)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "error_log_conn", scope: !2684, file: !148, line: 722, baseType: !346, size: 64, offset: 576)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "error_log_req", scope: !2684, file: !148, line: 723, baseType: !346, size: 64, offset: 640)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "trace_enable", scope: !2684, file: !148, line: 730, baseType: !14, size: 32, offset: 704)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "merge_trailers", scope: !2684, file: !148, line: 734, baseType: !14, size: 32, offset: 736)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "protocols", scope: !2684, file: !148, line: 736, baseType: !346, size: 64, offset: 768)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_honor_order", scope: !2684, file: !148, line: 737, baseType: !14, size: 32, offset: 832)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "http09_enable", scope: !2684, file: !148, line: 742, baseType: !12, size: 8, offset: 864)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "http_conformance", scope: !2684, file: !148, line: 747, baseType: !12, size: 8, offset: 872)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "http_methods", scope: !2684, file: !148, line: 752, baseType: !12, size: 8, offset: 880)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "merge_slashes", scope: !2684, file: !148, line: 753, baseType: !65, size: 32, offset: 896)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "flush_max_threshold", scope: !2684, file: !148, line: 755, baseType: !43, size: 64, offset: 960)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "flush_max_pipelined", scope: !2684, file: !148, line: 756, baseType: !254, size: 32, offset: 1024)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "strict_host_check", scope: !2684, file: !148, line: 757, baseType: !65, size: 32, offset: 1056)
!2709 = !DILocalVariable(name: "key", scope: !2710, file: !3, line: 1054, type: !2150)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 1053, column: 40)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 1053, column: 5)
!2712 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 1053, column: 5)
!2713 = !DILocalVariable(name: "val", scope: !2710, file: !3, line: 1055, type: !20)
!2714 = !DILocation(line: 1042, column: 38, scope: !2673)
!2715 = !DILocation(line: 1044, column: 5, scope: !2673)
!2716 = !DILocation(line: 1044, column: 17, scope: !2673)
!2717 = !DILocation(line: 1045, column: 5, scope: !2673)
!2718 = !DILocation(line: 1045, column: 25, scope: !2673)
!2719 = !DILocation(line: 1045, column: 48, scope: !2673)
!2720 = !DILocation(line: 1045, column: 51, scope: !2673)
!2721 = !DILocation(line: 1045, column: 33, scope: !2673)
!2722 = !DILocation(line: 1046, column: 5, scope: !2673)
!2723 = !DILocation(line: 1046, column: 23, scope: !2673)
!2724 = !DILocation(line: 1046, column: 43, scope: !2673)
!2725 = !DILocation(line: 1046, column: 46, scope: !2673)
!2726 = !DILocation(line: 1046, column: 52, scope: !2673)
!2727 = !DILocation(line: 1046, column: 28, scope: !2673)
!2728 = !DILocation(line: 1048, column: 5, scope: !2673)
!2729 = !DILocation(line: 1048, column: 25, scope: !2673)
!2730 = !DILocation(line: 1049, column: 9, scope: !2673)
!2731 = !{!1328, !1245, i64 48}
!2732 = !DILocation(line: 1051, column: 12, scope: !2673)
!2733 = !DILocation(line: 1051, column: 15, scope: !2673)
!2734 = !{!1321, !1245, i64 136}
!2735 = !DILocation(line: 1051, column: 32, scope: !2673)
!2736 = !{!2737, !1322, i64 0}
!2737 = !{!"ap_method_list_t", !1322, i64 0, !1245, i64 8}
!2738 = !DILocation(line: 1051, column: 10, scope: !2673)
!2739 = !DILocation(line: 1053, column: 5, scope: !2673)
!2740 = !DILocation(line: 1053, column: 12, scope: !2711)
!2741 = !DILocation(line: 1053, column: 5, scope: !2712)
!2742 = !DILocation(line: 1054, column: 9, scope: !2710)
!2743 = !DILocation(line: 1054, column: 21, scope: !2710)
!2744 = !DILocation(line: 1055, column: 9, scope: !2710)
!2745 = !DILocation(line: 1055, column: 15, scope: !2710)
!2746 = !DILocation(line: 1057, column: 23, scope: !2710)
!2747 = !DILocation(line: 1057, column: 9, scope: !2710)
!2748 = !DILocation(line: 1058, column: 14, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 1058, column: 13)
!2750 = !DILocation(line: 1058, column: 47, scope: !2749)
!2751 = !DILocation(line: 1058, column: 39, scope: !2749)
!2752 = !DILocation(line: 1058, column: 36, scope: !2749)
!2753 = !DILocation(line: 1058, column: 19, scope: !2749)
!2754 = !DILocation(line: 1058, column: 53, scope: !2749)
!2755 = !DILocation(line: 1058, column: 13, scope: !2710)
!2756 = !DILocation(line: 1059, column: 51, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 1058, column: 59)
!2758 = !DILocation(line: 1059, column: 13, scope: !2757)
!2759 = !DILocation(line: 1059, column: 49, scope: !2757)
!2760 = !DILocation(line: 1060, column: 9, scope: !2757)
!2761 = !DILocation(line: 1061, column: 5, scope: !2711)
!2762 = !DILocation(line: 1061, column: 5, scope: !2710)
!2763 = !DILocation(line: 1053, column: 35, scope: !2711)
!2764 = !DILocation(line: 1053, column: 21, scope: !2711)
!2765 = !DILocation(line: 1053, column: 19, scope: !2711)
!2766 = !DILocation(line: 1053, column: 5, scope: !2711)
!2767 = distinct !{!2767, !2741, !2768, !1303}
!2768 = !DILocation(line: 1061, column: 5, scope: !2712)
!2769 = !DILocation(line: 1064, column: 9, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 1064, column: 9)
!2771 = !DILocation(line: 1064, column: 15, scope: !2770)
!2772 = !{!2773, !1250, i64 88}
!2773 = !{!"", !1245, i64 0, !1245, i64 8, !1245, i64 16, !1245, i64 24, !1245, i64 32, !1250, i64 40, !1250, i64 44, !1245, i64 48, !1245, i64 56, !1245, i64 64, !1245, i64 72, !1245, i64 80, !1250, i64 88, !1250, i64 92, !1245, i64 96, !1250, i64 104, !1246, i64 108, !1246, i64 109, !1246, i64 110, !1250, i64 112, !1322, i64 120, !1250, i64 128, !1250, i64 132}
!2774 = !DILocation(line: 1064, column: 28, scope: !2770)
!2775 = !DILocation(line: 1064, column: 9, scope: !2673)
!2776 = !DILocation(line: 1065, column: 40, scope: !2770)
!2777 = !DILocation(line: 1065, column: 25, scope: !2770)
!2778 = !DILocation(line: 1065, column: 47, scope: !2770)
!2779 = !DILocation(line: 1065, column: 9, scope: !2770)
!2780 = !DILocation(line: 1069, column: 10, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 1069, column: 9)
!2782 = !DILocation(line: 1069, column: 15, scope: !2781)
!2783 = !DILocation(line: 1070, column: 9, scope: !2781)
!2784 = !DILocation(line: 1070, column: 13, scope: !2781)
!2785 = !DILocation(line: 1070, column: 16, scope: !2781)
!2786 = !DILocation(line: 1070, column: 33, scope: !2781)
!2787 = !{!2737, !1245, i64 8}
!2788 = !DILocation(line: 1070, column: 45, scope: !2781)
!2789 = !DILocation(line: 1071, column: 9, scope: !2781)
!2790 = !DILocation(line: 1071, column: 13, scope: !2781)
!2791 = !DILocation(line: 1071, column: 16, scope: !2781)
!2792 = !DILocation(line: 1071, column: 33, scope: !2781)
!2793 = !DILocation(line: 1071, column: 46, scope: !2781)
!2794 = !DILocation(line: 1071, column: 52, scope: !2781)
!2795 = !DILocation(line: 1069, column: 9, scope: !2673)
!2796 = !DILocation(line: 1072, column: 23, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 1071, column: 59)
!2798 = !DILocation(line: 1072, column: 30, scope: !2797)
!2799 = !DILocation(line: 1072, column: 33, scope: !2797)
!2800 = !DILocation(line: 1072, column: 50, scope: !2797)
!2801 = !DILocation(line: 1072, column: 9, scope: !2797)
!2802 = !DILocation(line: 1073, column: 5, scope: !2797)
!2803 = !DILocation(line: 1075, column: 30, scope: !2673)
!2804 = !DILocation(line: 1075, column: 33, scope: !2673)
!2805 = !DILocation(line: 1075, column: 39, scope: !2673)
!2806 = !DILocation(line: 1075, column: 12, scope: !2673)
!2807 = !DILocation(line: 1076, column: 1, scope: !2673)
!2808 = !DILocation(line: 1075, column: 5, scope: !2673)
!2809 = distinct !DISubprogram(name: "ap_set_content_type", scope: !3, file: !3, line: 1093, type: !2810, scopeLine: 1094, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{null, !179, !10}
!2812 = !{!2813, !2814}
!2813 = !DILocalVariable(name: "r", arg: 1, scope: !2809, file: !3, line: 1093, type: !179)
!2814 = !DILocalVariable(name: "ct", arg: 2, scope: !2809, file: !3, line: 1093, type: !10)
!2815 = !DILocation(line: 1093, column: 51, scope: !2809)
!2816 = !DILocation(line: 1093, column: 66, scope: !2809)
!2817 = !DILocation(line: 1095, column: 10, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 1095, column: 9)
!2819 = !DILocation(line: 1095, column: 9, scope: !2809)
!2820 = !DILocation(line: 1096, column: 9, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1095, column: 14)
!2822 = !DILocation(line: 1096, column: 12, scope: !2821)
!2823 = !DILocation(line: 1096, column: 25, scope: !2821)
!2824 = !{!1321, !1245, i64 272}
!2825 = !DILocation(line: 1097, column: 5, scope: !2821)
!2826 = !DILocation(line: 1098, column: 15, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1098, column: 14)
!2828 = !DILocation(line: 1098, column: 18, scope: !2827)
!2829 = !DILocation(line: 1098, column: 31, scope: !2827)
!2830 = !DILocation(line: 1098, column: 41, scope: !2827)
!2831 = !DILocation(line: 1098, column: 44, scope: !2827)
!2832 = !DILocation(line: 1098, column: 58, scope: !2827)
!2833 = !DILocation(line: 1098, column: 34, scope: !2827)
!2834 = !DILocation(line: 1098, column: 14, scope: !2818)
!2835 = !DILocation(line: 1099, column: 27, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 1098, column: 63)
!2837 = !DILocation(line: 1099, column: 9, scope: !2836)
!2838 = !DILocation(line: 1099, column: 12, scope: !2836)
!2839 = !DILocation(line: 1099, column: 25, scope: !2836)
!2840 = !DILocation(line: 1100, column: 5, scope: !2836)
!2841 = !DILocation(line: 1101, column: 1, scope: !2809)
!2842 = distinct !DISubprogram(name: "ap_set_accept_ranges", scope: !3, file: !3, line: 1103, type: !177, scopeLine: 1104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2843)
!2843 = !{!2844, !2845}
!2844 = !DILocalVariable(name: "r", arg: 1, scope: !2842, file: !3, line: 1103, type: !179)
!2845 = !DILocalVariable(name: "d", scope: !2842, file: !3, line: 1105, type: !2846)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_typedef, name: "core_dir_config", file: !148, line: 685, baseType: !2848)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 526, size: 2240, elements: !2849)
!2849 = !{!2850, !2851, !2852, !2854, !2855, !2856, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2875, !2876, !2877, !2878, !2879, !2881, !2882, !2883, !2892, !2893, !2894, !2895, !2896, !2897, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2921, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2848, file: !148, line: 528, baseType: !209, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "d_components", scope: !2848, file: !148, line: 530, baseType: !65, size: 32, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2848, file: !148, line: 539, baseType: !2853, size: 8, offset: 96)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "allow_options_t", file: !148, line: 481, baseType: !288)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "opts_add", scope: !2848, file: !148, line: 540, baseType: !2853, size: 8, offset: 104)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "opts_remove", scope: !2848, file: !148, line: 541, baseType: !2853, size: 8, offset: 112)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !2848, file: !148, line: 542, baseType: !2857, size: 32, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "overrides_t", file: !148, line: 482, baseType: !65)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "override_opts", scope: !2848, file: !148, line: 543, baseType: !2853, size: 8, offset: 160)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "response_code_strings", scope: !2848, file: !148, line: 546, baseType: !627, size: 64, offset: 192)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "hostname_lookups", scope: !2848, file: !148, line: 554, baseType: !65, size: 4, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "content_md5", scope: !2848, file: !148, line: 556, baseType: !65, size: 2, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "use_canonical_name", scope: !2848, file: !148, line: 562, baseType: !65, size: 2, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "d_is_fnmatch", scope: !2848, file: !148, line: 568, baseType: !65, size: 1, offset: 264, flags: DIFlagBitField, extraData: i64 256)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "add_default_charset", scope: !2848, file: !148, line: 576, baseType: !65, size: 2, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "add_default_charset_name", scope: !2848, file: !148, line: 577, baseType: !10, size: 64, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "limit_cpu", scope: !2848, file: !148, line: 581, baseType: !2867, size: 64, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2869, line: 139, size: 128, elements: !2870)
!2869 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "", checksumkind: CSK_MD5, checksum: "bb0bdc9e7ae341ef435e98e05276a863")
!2870 = !{!2871, !2874}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2868, file: !2869, line: 142, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !2869, line: 131, baseType: !2873)
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim_t", file: !53, line: 157, baseType: !47)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2868, file: !2869, line: 144, baseType: !2872, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "limit_mem", scope: !2848, file: !148, line: 584, baseType: !2867, size: 64, offset: 448)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "limit_nproc", scope: !2848, file: !148, line: 587, baseType: !2867, size: 64, offset: 512)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_body", scope: !2848, file: !148, line: 589, baseType: !49, size: 64, offset: 576)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "limit_xml_body", scope: !2848, file: !148, line: 590, baseType: !54, size: 64, offset: 640)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "server_signature", scope: !2848, file: !148, line: 594, baseType: !2880, size: 32, offset: 704)
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_signature_e", file: !148, line: 521, baseType: !147)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "sec_file", scope: !2848, file: !148, line: 597, baseType: !346, size: 64, offset: 768)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sec_if", scope: !2848, file: !148, line: 598, baseType: !346, size: 64, offset: 832)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !2848, file: !148, line: 599, baseType: !2884, size: 64, offset: 896)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_regex_t", file: !2886, line: 112, baseType: !2887)
!2886 = !DIFile(filename: "include/ap_regex.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "905446d0f9865d718cde44e31accf928")
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2886, line: 108, size: 192, elements: !2888)
!2888 = !{!2889, !2890, !2891}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "re_pcre", scope: !2887, file: !2886, line: 109, baseType: !20, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !2887, file: !2886, line: 110, baseType: !14, size: 32, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "re_erroffset", scope: !2887, file: !2886, line: 111, baseType: !43, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !2848, file: !148, line: 601, baseType: !10, size: 64, offset: 960)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2848, file: !148, line: 602, baseType: !10, size: 64, offset: 1024)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "output_filters", scope: !2848, file: !148, line: 603, baseType: !10, size: 64, offset: 1088)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "input_filters", scope: !2848, file: !148, line: 604, baseType: !10, size: 64, offset: 1152)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "accept_path_info", scope: !2848, file: !148, line: 605, baseType: !14, size: 32, offset: 1216)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "etag_bits", scope: !2848, file: !148, line: 610, baseType: !2898, size: 64, offset: 1280)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "etag_components_t", file: !148, line: 490, baseType: !47)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "etag_add", scope: !2848, file: !148, line: 611, baseType: !2898, size: 64, offset: 1344)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "etag_remove", scope: !2848, file: !148, line: 612, baseType: !2898, size: 64, offset: 1408)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mmap", scope: !2848, file: !148, line: 620, baseType: !65, size: 2, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "enable_sendfile", scope: !2848, file: !148, line: 625, baseType: !65, size: 2, offset: 1474, flags: DIFlagBitField, extraData: i64 1472)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "use_canonical_phys_port", scope: !2848, file: !148, line: 630, baseType: !65, size: 2, offset: 1476, flags: DIFlagBitField, extraData: i64 1472)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "allow_encoded_slashes", scope: !2848, file: !148, line: 632, baseType: !65, size: 1, offset: 1478, flags: DIFlagBitField, extraData: i64 1472)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "decode_encoded_slashes", scope: !2848, file: !148, line: 634, baseType: !65, size: 1, offset: 1479, flags: DIFlagBitField, extraData: i64 1472)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "condition_ifelse", scope: !2848, file: !148, line: 639, baseType: !65, size: 2, offset: 1480, flags: DIFlagBitField, extraData: i64 1472)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !2848, file: !148, line: 641, baseType: !2908, size: 64, offset: 1536)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_expr_info_t", file: !2910, line: 54, baseType: !2911)
!2910 = !DIFile(filename: "include/ap_expr.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "82c67dfabcf4ba312395b07632707f98")
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2910, line: 41, size: 256, elements: !2912)
!2912 = !{!2913, !2917, !2918, !2919, !2920}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "root_node", scope: !2911, file: !2910, line: 43, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_expr_t", file: !2910, line: 38, baseType: !2916)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "ap_expr_node", file: !2910, line: 38, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !2911, file: !2910, line: 47, baseType: !10, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !2911, file: !2910, line: 49, baseType: !65, size: 32, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2911, file: !2910, line: 51, baseType: !65, size: 32, offset: 160)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "module_index", scope: !2911, file: !2910, line: 53, baseType: !14, size: 32, offset: 192)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !2848, file: !148, line: 644, baseType: !2922, size: 64, offset: 1600)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "override_list", scope: !2848, file: !148, line: 647, baseType: !375, size: 64, offset: 1664)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "max_ranges", scope: !2848, file: !148, line: 654, baseType: !14, size: 32, offset: 1728)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "max_overlaps", scope: !2848, file: !148, line: 656, baseType: !14, size: 32, offset: 1760)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "max_reversals", scope: !2848, file: !148, line: 658, baseType: !14, size: 32, offset: 1792)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2848, file: !148, line: 661, baseType: !346, size: 64, offset: 1856)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "response_code_exprs", scope: !2848, file: !148, line: 667, baseType: !836, size: 64, offset: 1920)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cgi_pass_auth", scope: !2848, file: !148, line: 677, baseType: !65, size: 2, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "qualify_redirect_url", scope: !2848, file: !148, line: 678, baseType: !65, size: 2, offset: 1986, flags: DIFlagBitField, extraData: i64 1984)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "expr_handler", scope: !2848, file: !148, line: 679, baseType: !2908, size: 64, offset: 2048)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cgi_var_rules", scope: !2848, file: !148, line: 682, baseType: !836, size: 64, offset: 2112)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf_size", scope: !2848, file: !148, line: 684, baseType: !43, size: 64, offset: 2176)
!2934 = !DILocation(line: 1103, column: 52, scope: !2842)
!2935 = !DILocation(line: 1105, column: 5, scope: !2842)
!2936 = !DILocation(line: 1105, column: 22, scope: !2842)
!2937 = !DILocation(line: 1105, column: 26, scope: !2842)
!2938 = !{!1321, !1245, i64 384}
!2939 = !DILocation(line: 1106, column: 20, scope: !2842)
!2940 = !DILocation(line: 1106, column: 23, scope: !2842)
!2941 = !DILocation(line: 1107, column: 20, scope: !2842)
!2942 = !DILocation(line: 1107, column: 23, scope: !2842)
!2943 = !{!2944, !1250, i64 216}
!2944 = !{!"", !1245, i64 0, !1250, i64 8, !1246, i64 12, !1246, i64 13, !1246, i64 14, !1250, i64 16, !1246, i64 20, !1245, i64 24, !1250, i64 32, !1250, i64 32, !1250, i64 32, !1250, i64 33, !1250, i64 33, !1245, i64 40, !1245, i64 48, !1245, i64 56, !1245, i64 64, !1322, i64 72, !1322, i64 80, !1246, i64 88, !1245, i64 96, !1245, i64 104, !1245, i64 112, !1245, i64 120, !1245, i64 128, !1245, i64 136, !1245, i64 144, !1250, i64 152, !1322, i64 160, !1322, i64 168, !1322, i64 176, !1250, i64 184, !1250, i64 184, !1250, i64 184, !1250, i64 184, !1250, i64 184, !1250, i64 185, !1245, i64 192, !1245, i64 200, !1245, i64 208, !1250, i64 216, !1250, i64 220, !1250, i64 224, !1245, i64 232, !1245, i64 240, !1250, i64 248, !1250, i64 248, !1245, i64 256, !1245, i64 264, !1322, i64 272}
!2945 = !DILocation(line: 1107, column: 34, scope: !2842)
!2946 = !DILocation(line: 1107, column: 19, scope: !2842)
!2947 = !DILocation(line: 1106, column: 5, scope: !2842)
!2948 = !DILocation(line: 1109, column: 1, scope: !2842)
!2949 = distinct !DISubprogram(name: "ap_send_error_response", scope: !3, file: !3, line: 1370, type: !2950, scopeLine: 1371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2952)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{null, !179, !14}
!2952 = !{!2953, !2954, !2955, !2956, !2957, !2958, !2959, !2962, !2978, !2980, !2981, !2984}
!2953 = !DILocalVariable(name: "r", arg: 1, scope: !2949, file: !3, line: 1370, type: !179)
!2954 = !DILocalVariable(name: "recursive_error", arg: 2, scope: !2949, file: !3, line: 1370, type: !14)
!2955 = !DILocalVariable(name: "status", scope: !2949, file: !3, line: 1372, type: !14)
!2956 = !DILocalVariable(name: "idx", scope: !2949, file: !3, line: 1373, type: !14)
!2957 = !DILocalVariable(name: "custom_response", scope: !2949, file: !3, line: 1374, type: !209)
!2958 = !DILocalVariable(name: "location", scope: !2949, file: !3, line: 1375, type: !10)
!2959 = !DILocalVariable(name: "tmp", scope: !2960, file: !3, line: 1409, type: !375)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 1408, column: 27)
!2961 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 1408, column: 9)
!2962 = !DILocalVariable(name: "request_conf", scope: !2963, file: !3, line: 1435, type: !2965)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 1434, column: 62)
!2964 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 1433, column: 13)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "core_request_config", file: !148, line: 443, baseType: !2967)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 393, size: 448, elements: !2968)
!2968 = !{!2969, !2971, !2972, !2973, !2974, !2975, !2976, !2977}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2967, file: !148, line: 396, baseType: !2970, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !2967, file: !148, line: 403, baseType: !626, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "response_code_strings", scope: !2967, file: !148, line: 408, baseType: !627, size: 64, offset: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "document_root", scope: !2967, file: !148, line: 415, baseType: !10, size: 64, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "context_document_root", scope: !2967, file: !148, line: 424, baseType: !10, size: 64, offset: 256)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "context_prefix", scope: !2967, file: !148, line: 428, baseType: !10, size: 64, offset: 320)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "deliver_script", scope: !2967, file: !148, line: 438, baseType: !14, size: 32, offset: 384)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_charset", scope: !2967, file: !148, line: 442, baseType: !14, size: 32, offset: 416)
!2978 = !DILocalVariable(name: "title", scope: !2979, file: !3, line: 1481, type: !10)
!2979 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 1480, column: 5)
!2980 = !DILocalVariable(name: "h1", scope: !2979, file: !3, line: 1482, type: !10)
!2981 = !DILocalVariable(name: "end", scope: !2982, file: !3, line: 1488, type: !209)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 1487, column: 29)
!2983 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 1487, column: 13)
!2984 = !DILocalVariable(name: "len", scope: !2982, file: !3, line: 1489, type: !14)
!2985 = !DILocation(line: 1370, column: 54, scope: !2949)
!2986 = !DILocation(line: 1370, column: 61, scope: !2949)
!2987 = !DILocation(line: 1372, column: 5, scope: !2949)
!2988 = !DILocation(line: 1372, column: 9, scope: !2949)
!2989 = !DILocation(line: 1372, column: 18, scope: !2949)
!2990 = !DILocation(line: 1372, column: 21, scope: !2949)
!2991 = !DILocation(line: 1373, column: 5, scope: !2949)
!2992 = !DILocation(line: 1373, column: 9, scope: !2949)
!2993 = !DILocation(line: 1373, column: 36, scope: !2949)
!2994 = !DILocation(line: 1373, column: 15, scope: !2949)
!2995 = !DILocation(line: 1374, column: 5, scope: !2949)
!2996 = !DILocation(line: 1374, column: 11, scope: !2949)
!2997 = !DILocation(line: 1375, column: 5, scope: !2949)
!2998 = !DILocation(line: 1375, column: 17, scope: !2949)
!2999 = !DILocation(line: 1375, column: 42, scope: !2949)
!3000 = !DILocation(line: 1375, column: 45, scope: !2949)
!3001 = !DILocation(line: 1375, column: 28, scope: !2949)
!3002 = !DILocation(line: 1380, column: 5, scope: !2949)
!3003 = !DILocation(line: 1380, column: 8, scope: !2949)
!3004 = !DILocation(line: 1380, column: 17, scope: !2949)
!3005 = !{!1321, !1250, i64 380}
!3006 = !DILocation(line: 1386, column: 25, scope: !2949)
!3007 = !DILocation(line: 1386, column: 28, scope: !2949)
!3008 = !{!1321, !1245, i64 440}
!3009 = !DILocation(line: 1386, column: 5, scope: !2949)
!3010 = !DILocation(line: 1386, column: 8, scope: !2949)
!3011 = !DILocation(line: 1386, column: 23, scope: !2949)
!3012 = !{!1321, !1245, i64 424}
!3013 = !DILocation(line: 1388, column: 32, scope: !2949)
!3014 = !DILocation(line: 1388, column: 5, scope: !2949)
!3015 = !DILocation(line: 1394, column: 9, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 1394, column: 9)
!3017 = !DILocation(line: 1394, column: 9, scope: !2949)
!3018 = !DILocation(line: 1395, column: 38, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 1394, column: 43)
!3020 = !DILocation(line: 1395, column: 9, scope: !3019)
!3021 = !DILocation(line: 1396, column: 9, scope: !3019)
!3022 = !DILocation(line: 1404, column: 9, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 1404, column: 9)
!3024 = !DILocation(line: 1404, column: 18, scope: !3023)
!3025 = !DILocation(line: 1404, column: 9, scope: !2949)
!3026 = !DILocation(line: 1405, column: 34, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 1404, column: 27)
!3028 = !DILocation(line: 1405, column: 37, scope: !3027)
!3029 = !{!1321, !1245, i64 248}
!3030 = !DILocation(line: 1405, column: 20, scope: !3027)
!3031 = !DILocation(line: 1405, column: 18, scope: !3027)
!3032 = !DILocation(line: 1406, column: 5, scope: !3027)
!3033 = !DILocation(line: 1408, column: 10, scope: !2961)
!3034 = !DILocation(line: 1408, column: 13, scope: !2961)
!3035 = !DILocation(line: 1408, column: 9, scope: !2949)
!3036 = !DILocation(line: 1409, column: 9, scope: !2960)
!3037 = !DILocation(line: 1409, column: 22, scope: !2960)
!3038 = !DILocation(line: 1409, column: 28, scope: !2960)
!3039 = !DILocation(line: 1409, column: 31, scope: !2960)
!3040 = !DILocation(line: 1416, column: 26, scope: !2960)
!3041 = !DILocation(line: 1416, column: 29, scope: !2960)
!3042 = !DILocation(line: 1416, column: 9, scope: !2960)
!3043 = !DILocation(line: 1416, column: 12, scope: !2960)
!3044 = !DILocation(line: 1416, column: 24, scope: !2960)
!3045 = !DILocation(line: 1417, column: 30, scope: !2960)
!3046 = !DILocation(line: 1417, column: 9, scope: !2960)
!3047 = !DILocation(line: 1417, column: 12, scope: !2960)
!3048 = !DILocation(line: 1417, column: 28, scope: !2960)
!3049 = !DILocation(line: 1418, column: 25, scope: !2960)
!3050 = !DILocation(line: 1418, column: 28, scope: !2960)
!3051 = !DILocation(line: 1418, column: 9, scope: !2960)
!3052 = !DILocation(line: 1420, column: 13, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 1420, column: 13)
!3054 = !DILocation(line: 1420, column: 41, scope: !3053)
!3055 = !DILocation(line: 1420, column: 45, scope: !3053)
!3056 = !DILocation(line: 1420, column: 52, scope: !3053)
!3057 = !DILocation(line: 1420, column: 13, scope: !2960)
!3058 = !DILocation(line: 1421, column: 18, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 1421, column: 17)
!3060 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 1420, column: 70)
!3061 = !DILocation(line: 1421, column: 27, scope: !3059)
!3062 = !DILocation(line: 1421, column: 36, scope: !3059)
!3063 = !DILocation(line: 1421, column: 40, scope: !3059)
!3064 = !DILocation(line: 1421, column: 39, scope: !3059)
!3065 = !DILocation(line: 1421, column: 17, scope: !3060)
!3066 = !DILocation(line: 1422, column: 32, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 1421, column: 50)
!3068 = !DILocation(line: 1422, column: 35, scope: !3067)
!3069 = !DILocation(line: 1422, column: 60, scope: !3067)
!3070 = !DILocation(line: 1422, column: 17, scope: !3067)
!3071 = !DILocation(line: 1423, column: 13, scope: !3067)
!3072 = !DILocation(line: 1425, column: 26, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 1424, column: 18)
!3074 = !DILocation(line: 1427, column: 9, scope: !3060)
!3075 = !DILocation(line: 1429, column: 9, scope: !2960)
!3076 = !DILocation(line: 1429, column: 12, scope: !2960)
!3077 = !DILocation(line: 1429, column: 30, scope: !2960)
!3078 = !{!1321, !1245, i64 296}
!3079 = !DILocation(line: 1430, column: 9, scope: !2960)
!3080 = !DILocation(line: 1430, column: 12, scope: !2960)
!3081 = !DILocation(line: 1430, column: 29, scope: !2960)
!3082 = !{!1321, !1245, i64 288}
!3083 = !DILocation(line: 1431, column: 9, scope: !2960)
!3084 = !DILocation(line: 1431, column: 12, scope: !2960)
!3085 = !DILocation(line: 1431, column: 20, scope: !2960)
!3086 = !{!1321, !1322, i64 176}
!3087 = !DILocation(line: 1433, column: 27, scope: !2964)
!3088 = !DILocation(line: 1433, column: 30, scope: !2964)
!3089 = !DILocation(line: 1433, column: 13, scope: !2964)
!3090 = !DILocation(line: 1434, column: 53, scope: !2964)
!3091 = !DILocation(line: 1433, column: 13, scope: !2960)
!3092 = !DILocation(line: 1435, column: 13, scope: !2963)
!3093 = !DILocation(line: 1435, column: 34, scope: !2963)
!3094 = !DILocation(line: 1436, column: 25, scope: !2963)
!3095 = !{!1321, !1245, i64 392}
!3096 = !DILocation(line: 1437, column: 13, scope: !2963)
!3097 = !DILocation(line: 1437, column: 27, scope: !2963)
!3098 = !DILocation(line: 1437, column: 44, scope: !2963)
!3099 = !{!3100, !1250, i64 52}
!3100 = !{!"", !1245, i64 0, !1245, i64 8, !1245, i64 16, !1245, i64 24, !1245, i64 32, !1245, i64 40, !1250, i64 48, !1250, i64 52}
!3101 = !DILocation(line: 1440, column: 33, scope: !2963)
!3102 = !DILocation(line: 1440, column: 13, scope: !2963)
!3103 = !DILocation(line: 1441, column: 9, scope: !2964)
!3104 = !DILocation(line: 1441, column: 9, scope: !2963)
!3105 = !DILocation(line: 1443, column: 33, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 1442, column: 14)
!3107 = !DILocation(line: 1443, column: 13, scope: !3106)
!3108 = !DILocation(line: 1446, column: 14, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 1446, column: 13)
!3110 = !DILocation(line: 1446, column: 21, scope: !3109)
!3111 = !DILocation(line: 1447, column: 13, scope: !3109)
!3112 = !DILocation(line: 1447, column: 17, scope: !3109)
!3113 = !DILocation(line: 1447, column: 24, scope: !3109)
!3114 = !DILocation(line: 1446, column: 13, scope: !2960)
!3115 = !DILocation(line: 1448, column: 28, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 1447, column: 50)
!3117 = !DILocation(line: 1448, column: 31, scope: !3116)
!3118 = !DILocation(line: 1448, column: 64, scope: !3116)
!3119 = !DILocation(line: 1448, column: 53, scope: !3116)
!3120 = !DILocation(line: 1448, column: 13, scope: !3116)
!3121 = !DILocation(line: 1449, column: 9, scope: !3116)
!3122 = !DILocation(line: 1451, column: 13, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 1451, column: 13)
!3124 = !DILocation(line: 1451, column: 16, scope: !3123)
!3125 = !DILocation(line: 1451, column: 13, scope: !2960)
!3126 = !DILocation(line: 1452, column: 42, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 1451, column: 29)
!3128 = !DILocation(line: 1452, column: 13, scope: !3127)
!3129 = !DILocation(line: 1453, column: 13, scope: !3127)
!3130 = !DILocation(line: 1455, column: 5, scope: !2961)
!3131 = !DILocation(line: 1455, column: 5, scope: !2960)
!3132 = !DILocation(line: 1457, column: 52, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 1457, column: 9)
!3134 = !DILocation(line: 1457, column: 55, scope: !3133)
!3135 = !DILocation(line: 1457, column: 28, scope: !3133)
!3136 = !DILocation(line: 1457, column: 26, scope: !3133)
!3137 = !DILocation(line: 1457, column: 9, scope: !2949)
!3138 = !DILocation(line: 1474, column: 13, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 1474, column: 13)
!3140 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 1457, column: 62)
!3141 = !DILocation(line: 1474, column: 32, scope: !3139)
!3142 = !DILocation(line: 1474, column: 13, scope: !3140)
!3143 = !DILocation(line: 1475, column: 22, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 1474, column: 41)
!3145 = !DILocation(line: 1475, column: 38, scope: !3144)
!3146 = !DILocation(line: 1475, column: 43, scope: !3144)
!3147 = !DILocation(line: 1475, column: 13, scope: !3144)
!3148 = !DILocation(line: 1476, column: 42, scope: !3144)
!3149 = !DILocation(line: 1476, column: 13, scope: !3144)
!3150 = !DILocation(line: 1477, column: 13, scope: !3144)
!3151 = !DILocation(line: 1479, column: 5, scope: !3140)
!3152 = !DILocation(line: 1481, column: 9, scope: !2979)
!3153 = !DILocation(line: 1481, column: 21, scope: !2979)
!3154 = !DILocation(line: 1481, column: 42, scope: !2979)
!3155 = !DILocation(line: 1481, column: 29, scope: !2979)
!3156 = !DILocation(line: 1482, column: 9, scope: !2979)
!3157 = !DILocation(line: 1482, column: 21, scope: !2979)
!3158 = !DILocation(line: 1487, column: 13, scope: !2983)
!3159 = !DILocation(line: 1487, column: 16, scope: !2983)
!3160 = !{!1321, !1245, i64 96}
!3161 = !DILocation(line: 1487, column: 13, scope: !2979)
!3162 = !DILocation(line: 1488, column: 13, scope: !2982)
!3163 = !DILocation(line: 1488, column: 19, scope: !2982)
!3164 = !DILocation(line: 1489, column: 13, scope: !2982)
!3165 = !DILocation(line: 1489, column: 17, scope: !2982)
!3166 = !DILocation(line: 1489, column: 30, scope: !2982)
!3167 = !DILocation(line: 1489, column: 33, scope: !2982)
!3168 = !DILocation(line: 1489, column: 23, scope: !2982)
!3169 = !DILocation(line: 1490, column: 17, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 1490, column: 17)
!3171 = !DILocation(line: 1490, column: 21, scope: !3170)
!3172 = !DILocation(line: 1491, column: 17, scope: !3170)
!3173 = !DILocation(line: 1491, column: 33, scope: !3170)
!3174 = !DILocation(line: 1491, column: 36, scope: !3170)
!3175 = !DILocation(line: 1491, column: 20, scope: !3170)
!3176 = !DILocation(line: 1491, column: 62, scope: !3170)
!3177 = !DILocation(line: 1491, column: 65, scope: !3170)
!3178 = !DILocation(line: 1491, column: 59, scope: !3170)
!3179 = !DILocation(line: 1492, column: 17, scope: !3170)
!3180 = !DILocation(line: 1492, column: 21, scope: !3170)
!3181 = !DILocation(line: 1492, column: 25, scope: !3170)
!3182 = !DILocation(line: 1492, column: 33, scope: !3170)
!3183 = !DILocation(line: 1492, column: 36, scope: !3170)
!3184 = !DILocation(line: 1492, column: 30, scope: !3170)
!3185 = !DILocation(line: 1493, column: 17, scope: !3170)
!3186 = !DILocation(line: 1493, column: 21, scope: !3170)
!3187 = !DILocation(line: 1493, column: 25, scope: !3170)
!3188 = !DILocation(line: 1493, column: 29, scope: !3170)
!3189 = !DILocation(line: 1493, column: 32, scope: !3170)
!3190 = !{!1324, !1324, i64 0}
!3191 = !DILocation(line: 1494, column: 17, scope: !3170)
!3192 = !DILocation(line: 1494, column: 21, scope: !3170)
!3193 = !DILocation(line: 1494, column: 25, scope: !3170)
!3194 = !DILocation(line: 1494, column: 29, scope: !3170)
!3195 = !DILocation(line: 1494, column: 32, scope: !3170)
!3196 = !DILocation(line: 1490, column: 17, scope: !2982)
!3197 = !DILocation(line: 1500, column: 21, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 1500, column: 21)
!3199 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 1494, column: 65)
!3200 = !DILocation(line: 1500, column: 25, scope: !3198)
!3201 = !DILocation(line: 1500, column: 21, scope: !3199)
!3202 = !DILocation(line: 1501, column: 50, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 1500, column: 31)
!3204 = !DILocation(line: 1501, column: 53, scope: !3203)
!3205 = !DILocation(line: 1501, column: 59, scope: !3203)
!3206 = !DILocation(line: 1501, column: 62, scope: !3203)
!3207 = !DILocation(line: 1501, column: 38, scope: !3203)
!3208 = !DILocation(line: 1501, column: 21, scope: !3203)
!3209 = !DILocation(line: 1501, column: 24, scope: !3203)
!3210 = !DILocation(line: 1501, column: 36, scope: !3203)
!3211 = !DILocation(line: 1502, column: 17, scope: !3203)
!3212 = !DILocation(line: 1502, column: 28, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 1502, column: 28)
!3214 = !DILocation(line: 1502, column: 32, scope: !3213)
!3215 = !DILocation(line: 1502, column: 28, scope: !3198)
!3216 = !DILocation(line: 1503, column: 50, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 1502, column: 38)
!3218 = !DILocation(line: 1503, column: 53, scope: !3217)
!3219 = !DILocation(line: 1503, column: 59, scope: !3217)
!3220 = !DILocation(line: 1503, column: 62, scope: !3217)
!3221 = !DILocation(line: 1503, column: 38, scope: !3217)
!3222 = !DILocation(line: 1503, column: 21, scope: !3217)
!3223 = !DILocation(line: 1503, column: 24, scope: !3217)
!3224 = !DILocation(line: 1503, column: 36, scope: !3217)
!3225 = !DILocation(line: 1504, column: 17, scope: !3217)
!3226 = !DILocation(line: 1505, column: 25, scope: !3199)
!3227 = !DILocation(line: 1505, column: 28, scope: !3199)
!3228 = !DILocation(line: 1505, column: 23, scope: !3199)
!3229 = !DILocation(line: 1506, column: 13, scope: !3199)
!3230 = !DILocation(line: 1507, column: 9, scope: !2983)
!3231 = !DILocation(line: 1507, column: 9, scope: !2982)
!3232 = !DILocation(line: 1510, column: 15, scope: !2979)
!3233 = !DILocation(line: 1510, column: 12, scope: !2979)
!3234 = !DILocation(line: 1516, column: 34, scope: !2979)
!3235 = !DILocation(line: 1518, column: 44, scope: !2979)
!3236 = !DILocation(line: 1519, column: 52, scope: !2979)
!3237 = !DILocation(line: 1516, column: 9, scope: !2979)
!3238 = !DILocation(line: 1522, column: 34, scope: !2979)
!3239 = !DILocation(line: 1523, column: 58, scope: !2979)
!3240 = !DILocation(line: 1523, column: 66, scope: !2979)
!3241 = !DILocation(line: 1523, column: 69, scope: !2979)
!3242 = !DILocation(line: 1523, column: 34, scope: !2979)
!3243 = !DILocation(line: 1522, column: 9, scope: !2979)
!3244 = !DILocation(line: 1526, column: 13, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 1526, column: 13)
!3246 = !DILocation(line: 1526, column: 13, scope: !2979)
!3247 = !DILocation(line: 1527, column: 38, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1526, column: 30)
!3249 = !DILocation(line: 1528, column: 57, scope: !3248)
!3250 = !DILocation(line: 1528, column: 36, scope: !3248)
!3251 = !DILocation(line: 1528, column: 23, scope: !3248)
!3252 = !DILocation(line: 1527, column: 13, scope: !3248)
!3253 = !DILocation(line: 1531, column: 9, scope: !3248)
!3254 = !DILocation(line: 1532, column: 34, scope: !2979)
!3255 = !DILocation(line: 1532, column: 61, scope: !2979)
!3256 = !DILocation(line: 1532, column: 37, scope: !2979)
!3257 = !DILocation(line: 1532, column: 9, scope: !2979)
!3258 = !DILocation(line: 1533, column: 34, scope: !2979)
!3259 = !DILocation(line: 1533, column: 9, scope: !2979)
!3260 = !DILocation(line: 1534, column: 5, scope: !2949)
!3261 = !DILocation(line: 1535, column: 34, scope: !2949)
!3262 = !DILocation(line: 1535, column: 5, scope: !2949)
!3263 = !DILocation(line: 1536, column: 1, scope: !2949)
!3264 = !DISubprogram(name: "ap_finalize_request_protocol", scope: !141, file: !141, line: 113, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3265 = !DISubprogram(name: "apr_table_clear", scope: !348, file: !348, line: 259, type: !3266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !375}
!3268 = !DISubprogram(name: "ap_response_code_string", scope: !3269, file: !3269, line: 62, type: !3270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3269 = !DIFile(filename: "include/mod_core.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "76bd7ac6d530a32ccf0334e2b9060cce")
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!209, !179, !14}
!3272 = distinct !DISubprogram(name: "ap_rputs", scope: !141, file: !141, line: 476, type: !3273, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!14, !10, !179}
!3275 = !{!3276, !3277, !3278, !3279}
!3276 = !DILocalVariable(name: "str", arg: 1, scope: !3272, file: !141, line: 476, type: !10)
!3277 = !DILocalVariable(name: "r", arg: 2, scope: !3272, file: !141, line: 476, type: !179)
!3278 = !DILocalVariable(name: "len", scope: !3272, file: !141, line: 478, type: !43)
!3279 = !DILocalVariable(name: "rc", scope: !3280, file: !141, line: 487, type: !14)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !141, line: 486, column: 14)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !141, line: 483, column: 13)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !141, line: 482, column: 14)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !141, line: 482, column: 5)
!3284 = distinct !DILexicalBlock(scope: !3272, file: !141, line: 482, column: 5)
!3285 = !DILocation(line: 476, column: 44, scope: !3272)
!3286 = !DILocation(line: 476, column: 62, scope: !3272)
!3287 = !DILocation(line: 478, column: 5, scope: !3272)
!3288 = !DILocation(line: 478, column: 16, scope: !3272)
!3289 = !DILocation(line: 480, column: 18, scope: !3272)
!3290 = !DILocation(line: 480, column: 11, scope: !3272)
!3291 = !DILocation(line: 480, column: 9, scope: !3272)
!3292 = !DILocation(line: 482, column: 5, scope: !3272)
!3293 = !DILocation(line: 483, column: 13, scope: !3281)
!3294 = !DILocation(line: 483, column: 17, scope: !3281)
!3295 = !DILocation(line: 483, column: 13, scope: !3282)
!3296 = !DILocation(line: 484, column: 30, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3281, file: !141, line: 483, column: 29)
!3298 = !DILocation(line: 484, column: 40, scope: !3297)
!3299 = !DILocation(line: 484, column: 35, scope: !3297)
!3300 = !DILocation(line: 484, column: 45, scope: !3297)
!3301 = !DILocation(line: 484, column: 20, scope: !3297)
!3302 = !DILocation(line: 484, column: 13, scope: !3297)
!3303 = !DILocation(line: 487, column: 13, scope: !3280)
!3304 = !DILocation(line: 487, column: 17, scope: !3280)
!3305 = !DILocation(line: 489, column: 28, scope: !3280)
!3306 = !DILocation(line: 489, column: 42, scope: !3280)
!3307 = !DILocation(line: 489, column: 18, scope: !3280)
!3308 = !DILocation(line: 489, column: 16, scope: !3280)
!3309 = !DILocation(line: 490, column: 17, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3280, file: !141, line: 490, column: 17)
!3311 = !DILocation(line: 490, column: 20, scope: !3310)
!3312 = !DILocation(line: 490, column: 17, scope: !3280)
!3313 = !DILocation(line: 491, column: 24, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3310, file: !141, line: 490, column: 25)
!3315 = !DILocation(line: 491, column: 17, scope: !3314)
!3316 = !DILocation(line: 494, column: 21, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3310, file: !141, line: 493, column: 18)
!3318 = !DILocation(line: 495, column: 21, scope: !3317)
!3319 = !DILocation(line: 497, column: 9, scope: !3281)
!3320 = !DILocation(line: 482, column: 5, scope: !3283)
!3321 = distinct !{!3321, !3322, !3323}
!3322 = !DILocation(line: 482, column: 5, scope: !3284)
!3323 = !DILocation(line: 498, column: 5, scope: !3284)
!3324 = !DILocation(line: 499, column: 1, scope: !3272)
!3325 = !DISubprogram(name: "apr_strtoi64", scope: !1551, file: !1551, line: 353, type: !3326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!338, !10, !627, !14}
!3328 = !DISubprogram(name: "__ctype_b_loc", scope: !155, file: !155, line: 79, type: !3329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!3331}
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!3334 = !DISubprogram(name: "apr_pstrcat", scope: !1551, file: !1551, line: 147, type: !3335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!209, !73, null}
!3337 = !DISubprogram(name: "ap_rvputs", scope: !141, file: !141, line: 507, type: !3338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!14, !179, null}
!3340 = distinct !DISubprogram(name: "get_canned_error_string", scope: !3, file: !3, line: 1130, type: !3341, scopeLine: 1133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3343)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!10, !14, !179, !10}
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3349, !3350}
!3344 = !DILocalVariable(name: "status", arg: 1, scope: !3340, file: !3, line: 1130, type: !14)
!3345 = !DILocalVariable(name: "r", arg: 2, scope: !3340, file: !3, line: 1131, type: !179)
!3346 = !DILocalVariable(name: "location", arg: 3, scope: !3340, file: !3, line: 1132, type: !10)
!3347 = !DILocalVariable(name: "p", scope: !3340, file: !3, line: 1134, type: !73)
!3348 = !DILocalVariable(name: "error_notes", scope: !3340, file: !3, line: 1135, type: !10)
!3349 = !DILocalVariable(name: "h1", scope: !3340, file: !3, line: 1135, type: !10)
!3350 = !DILocalVariable(name: "s1", scope: !3340, file: !3, line: 1135, type: !10)
!3351 = !DILocation(line: 1130, column: 48, scope: !3340)
!3352 = !DILocation(line: 1131, column: 57, scope: !3340)
!3353 = !DILocation(line: 1132, column: 56, scope: !3340)
!3354 = !DILocation(line: 1134, column: 5, scope: !3340)
!3355 = !DILocation(line: 1134, column: 17, scope: !3340)
!3356 = !DILocation(line: 1134, column: 21, scope: !3340)
!3357 = !DILocation(line: 1134, column: 24, scope: !3340)
!3358 = !DILocation(line: 1135, column: 5, scope: !3340)
!3359 = !DILocation(line: 1135, column: 17, scope: !3340)
!3360 = !DILocation(line: 1135, column: 31, scope: !3340)
!3361 = !DILocation(line: 1135, column: 36, scope: !3340)
!3362 = !DILocation(line: 1137, column: 13, scope: !3340)
!3363 = !DILocation(line: 1137, column: 5, scope: !3340)
!3364 = !DILocation(line: 1142, column: 28, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1137, column: 21)
!3366 = !DILocation(line: 1144, column: 28, scope: !3365)
!3367 = !DILocation(line: 1142, column: 16, scope: !3365)
!3368 = !DILocation(line: 1142, column: 9, scope: !3365)
!3369 = !DILocation(line: 1148, column: 28, scope: !3365)
!3370 = !DILocation(line: 1151, column: 28, scope: !3365)
!3371 = !DILocation(line: 1148, column: 16, scope: !3365)
!3372 = !DILocation(line: 1148, column: 9, scope: !3365)
!3373 = !DILocation(line: 1155, column: 9, scope: !3365)
!3374 = !DILocation(line: 1161, column: 9, scope: !3365)
!3375 = !DILocation(line: 1168, column: 35, scope: !3365)
!3376 = !DILocation(line: 1168, column: 16, scope: !3365)
!3377 = !DILocation(line: 1168, column: 9, scope: !3365)
!3378 = !DILocation(line: 1174, column: 35, scope: !3365)
!3379 = !DILocation(line: 1174, column: 16, scope: !3365)
!3380 = !DILocation(line: 1174, column: 9, scope: !3365)
!3381 = !DILocation(line: 1176, column: 9, scope: !3365)
!3382 = !DILocation(line: 1178, column: 28, scope: !3365)
!3383 = !DILocation(line: 1180, column: 28, scope: !3365)
!3384 = !{!1321, !1245, i64 112}
!3385 = !DILocation(line: 1178, column: 16, scope: !3365)
!3386 = !DILocation(line: 1178, column: 9, scope: !3365)
!3387 = !DILocation(line: 1184, column: 35, scope: !3365)
!3388 = !DILocation(line: 1184, column: 16, scope: !3365)
!3389 = !DILocation(line: 1184, column: 9, scope: !3365)
!3390 = !DILocation(line: 1189, column: 35, scope: !3365)
!3391 = !DILocation(line: 1189, column: 16, scope: !3365)
!3392 = !DILocation(line: 1189, column: 9, scope: !3365)
!3393 = !DILocation(line: 1191, column: 26, scope: !3365)
!3394 = !DILocation(line: 1193, column: 26, scope: !3365)
!3395 = !DILocation(line: 1191, column: 14, scope: !3365)
!3396 = !DILocation(line: 1191, column: 12, scope: !3365)
!3397 = !DILocation(line: 1196, column: 35, scope: !3365)
!3398 = !DILocation(line: 1196, column: 38, scope: !3365)
!3399 = !DILocation(line: 1196, column: 16, scope: !3365)
!3400 = !DILocation(line: 1196, column: 9, scope: !3365)
!3401 = !DILocation(line: 1198, column: 9, scope: !3365)
!3402 = !DILocation(line: 1201, column: 26, scope: !3365)
!3403 = !DILocation(line: 1203, column: 26, scope: !3365)
!3404 = !DILocation(line: 1201, column: 14, scope: !3365)
!3405 = !DILocation(line: 1201, column: 12, scope: !3365)
!3406 = !DILocation(line: 1206, column: 35, scope: !3365)
!3407 = !DILocation(line: 1206, column: 38, scope: !3365)
!3408 = !DILocation(line: 1206, column: 16, scope: !3365)
!3409 = !DILocation(line: 1206, column: 9, scope: !3365)
!3410 = !DILocation(line: 1208, column: 12, scope: !3365)
!3411 = !DILocation(line: 1210, column: 35, scope: !3365)
!3412 = !DILocation(line: 1210, column: 38, scope: !3365)
!3413 = !DILocation(line: 1210, column: 16, scope: !3365)
!3414 = !DILocation(line: 1210, column: 9, scope: !3365)
!3415 = !DILocation(line: 1212, column: 9, scope: !3365)
!3416 = !DILocation(line: 1217, column: 9, scope: !3365)
!3417 = !DILocation(line: 1219, column: 9, scope: !3365)
!3418 = !DILocation(line: 1223, column: 28, scope: !3365)
!3419 = !DILocation(line: 1225, column: 28, scope: !3365)
!3420 = !DILocation(line: 1223, column: 16, scope: !3365)
!3421 = !DILocation(line: 1223, column: 9, scope: !3365)
!3422 = !DILocation(line: 1230, column: 12, scope: !3365)
!3423 = !DILocation(line: 1232, column: 35, scope: !3365)
!3424 = !DILocation(line: 1232, column: 38, scope: !3365)
!3425 = !DILocation(line: 1232, column: 16, scope: !3365)
!3426 = !DILocation(line: 1232, column: 9, scope: !3365)
!3427 = !DILocation(line: 1234, column: 9, scope: !3365)
!3428 = !DILocation(line: 1237, column: 9, scope: !3365)
!3429 = !DILocation(line: 1241, column: 28, scope: !3365)
!3430 = !DILocation(line: 1241, column: 31, scope: !3365)
!3431 = !DILocation(line: 1241, column: 14, scope: !3365)
!3432 = !DILocation(line: 1241, column: 12, scope: !3365)
!3433 = !DILocation(line: 1242, column: 13, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 1242, column: 13)
!3435 = !DILocation(line: 1242, column: 13, scope: !3365)
!3436 = !DILocation(line: 1243, column: 30, scope: !3434)
!3437 = !DILocation(line: 1247, column: 22, scope: !3434)
!3438 = !DILocation(line: 1243, column: 18, scope: !3434)
!3439 = !DILocation(line: 1243, column: 16, scope: !3434)
!3440 = !DILocation(line: 1243, column: 13, scope: !3434)
!3441 = !DILocation(line: 1250, column: 16, scope: !3434)
!3442 = !DILocation(line: 1252, column: 35, scope: !3365)
!3443 = !DILocation(line: 1252, column: 38, scope: !3365)
!3444 = !DILocation(line: 1252, column: 16, scope: !3365)
!3445 = !DILocation(line: 1252, column: 9, scope: !3365)
!3446 = !DILocation(line: 1255, column: 9, scope: !3365)
!3447 = !DILocation(line: 1259, column: 9, scope: !3365)
!3448 = !DILocation(line: 1263, column: 9, scope: !3365)
!3449 = !DILocation(line: 1267, column: 9, scope: !3365)
!3450 = !DILocation(line: 1273, column: 9, scope: !3365)
!3451 = !DILocation(line: 1275, column: 9, scope: !3365)
!3452 = !DILocation(line: 1278, column: 9, scope: !3365)
!3453 = !DILocation(line: 1281, column: 9, scope: !3365)
!3454 = !DILocation(line: 1287, column: 9, scope: !3365)
!3455 = !DILocation(line: 1291, column: 9, scope: !3365)
!3456 = !DILocation(line: 1294, column: 9, scope: !3365)
!3457 = !DILocation(line: 1297, column: 9, scope: !3365)
!3458 = !DILocation(line: 1300, column: 9, scope: !3365)
!3459 = !DILocation(line: 1303, column: 9, scope: !3365)
!3460 = !DILocation(line: 1308, column: 35, scope: !3365)
!3461 = !DILocation(line: 1308, column: 16, scope: !3365)
!3462 = !DILocation(line: 1308, column: 9, scope: !3365)
!3463 = !DILocation(line: 1319, column: 43, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 1319, column: 13)
!3465 = !DILocation(line: 1319, column: 46, scope: !3464)
!3466 = !{!1321, !1245, i64 264}
!3467 = !DILocation(line: 1319, column: 29, scope: !3464)
!3468 = !DILocation(line: 1319, column: 27, scope: !3464)
!3469 = !DILocation(line: 1320, column: 59, scope: !3464)
!3470 = !DILocation(line: 1321, column: 13, scope: !3464)
!3471 = !DILocation(line: 1321, column: 36, scope: !3464)
!3472 = !DILocation(line: 1321, column: 39, scope: !3464)
!3473 = !DILocation(line: 1321, column: 22, scope: !3464)
!3474 = !DILocation(line: 1321, column: 20, scope: !3464)
!3475 = !DILocation(line: 1321, column: 67, scope: !3464)
!3476 = !DILocation(line: 1322, column: 13, scope: !3464)
!3477 = !DILocation(line: 1322, column: 24, scope: !3464)
!3478 = !DILocation(line: 1322, column: 17, scope: !3464)
!3479 = !DILocation(line: 1322, column: 33, scope: !3464)
!3480 = !DILocation(line: 1319, column: 13, scope: !3365)
!3481 = !DILocation(line: 1323, column: 32, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 1322, column: 40)
!3483 = !DILocation(line: 1323, column: 35, scope: !3482)
!3484 = !DILocation(line: 1323, column: 20, scope: !3482)
!3485 = !DILocation(line: 1323, column: 13, scope: !3482)
!3486 = !DILocation(line: 1326, column: 32, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 1325, column: 14)
!3488 = !DILocation(line: 1333, column: 32, scope: !3487)
!3489 = !{!1328, !1245, i64 88}
!3490 = !DILocation(line: 1326, column: 20, scope: !3487)
!3491 = !DILocation(line: 1326, column: 13, scope: !3487)
!3492 = !DILocation(line: 1362, column: 1, scope: !3340)
!3493 = !DISubprogram(name: "ap_psignature", scope: !107, file: !107, line: 2314, type: !3494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!10, !10, !179}
!3496 = distinct !DISubprogram(name: "ap_make_method_list", scope: !3, file: !3, line: 1542, type: !3497, scopeLine: 1543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3499)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!487, !73, !14}
!3499 = !{!3500, !3501, !3502}
!3500 = !DILocalVariable(name: "p", arg: 1, scope: !3496, file: !3, line: 1542, type: !73)
!3501 = !DILocalVariable(name: "nelts", arg: 2, scope: !3496, file: !3, line: 1542, type: !14)
!3502 = !DILocalVariable(name: "ml", scope: !3496, file: !3, line: 1544, type: !487)
!3503 = !DILocation(line: 1542, column: 64, scope: !3496)
!3504 = !DILocation(line: 1542, column: 71, scope: !3496)
!3505 = !DILocation(line: 1544, column: 5, scope: !3496)
!3506 = !DILocation(line: 1544, column: 23, scope: !3496)
!3507 = !DILocation(line: 1546, column: 42, scope: !3496)
!3508 = !DILocation(line: 1546, column: 31, scope: !3496)
!3509 = !DILocation(line: 1546, column: 8, scope: !3496)
!3510 = !DILocation(line: 1547, column: 5, scope: !3496)
!3511 = !DILocation(line: 1547, column: 9, scope: !3496)
!3512 = !DILocation(line: 1547, column: 21, scope: !3496)
!3513 = !DILocation(line: 1548, column: 38, scope: !3496)
!3514 = !DILocation(line: 1548, column: 41, scope: !3496)
!3515 = !DILocation(line: 1548, column: 23, scope: !3496)
!3516 = !DILocation(line: 1548, column: 5, scope: !3496)
!3517 = !DILocation(line: 1548, column: 9, scope: !3496)
!3518 = !DILocation(line: 1548, column: 21, scope: !3496)
!3519 = !DILocation(line: 1549, column: 12, scope: !3496)
!3520 = !DILocation(line: 1550, column: 1, scope: !3496)
!3521 = !DILocation(line: 1549, column: 5, scope: !3496)
!3522 = !DISubprogram(name: "apr_palloc", scope: !75, file: !75, line: 430, type: !3523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!20, !73, !43}
!3525 = distinct !DISubprogram(name: "ap_copy_method_list", scope: !3, file: !3, line: 1556, type: !3526, scopeLine: 1558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{null, !487, !487}
!3528 = !{!3529, !3530, !3531, !3532, !3533}
!3529 = !DILocalVariable(name: "dest", arg: 1, scope: !3525, file: !3, line: 1556, type: !487)
!3530 = !DILocalVariable(name: "src", arg: 2, scope: !3525, file: !3, line: 1557, type: !487)
!3531 = !DILocalVariable(name: "i", scope: !3525, file: !3, line: 1559, type: !14)
!3532 = !DILocalVariable(name: "imethods", scope: !3525, file: !3, line: 1560, type: !627)
!3533 = !DILocalVariable(name: "omethods", scope: !3525, file: !3, line: 1561, type: !627)
!3534 = !DILocation(line: 1556, column: 56, scope: !3525)
!3535 = !DILocation(line: 1557, column: 56, scope: !3525)
!3536 = !DILocation(line: 1559, column: 5, scope: !3525)
!3537 = !DILocation(line: 1559, column: 9, scope: !3525)
!3538 = !DILocation(line: 1560, column: 5, scope: !3525)
!3539 = !DILocation(line: 1560, column: 12, scope: !3525)
!3540 = !DILocation(line: 1561, column: 5, scope: !3525)
!3541 = !DILocation(line: 1561, column: 12, scope: !3525)
!3542 = !DILocation(line: 1563, column: 25, scope: !3525)
!3543 = !DILocation(line: 1563, column: 30, scope: !3525)
!3544 = !DILocation(line: 1563, column: 5, scope: !3525)
!3545 = !DILocation(line: 1563, column: 11, scope: !3525)
!3546 = !DILocation(line: 1563, column: 23, scope: !3525)
!3547 = !DILocation(line: 1564, column: 26, scope: !3525)
!3548 = !DILocation(line: 1564, column: 31, scope: !3525)
!3549 = !DILocation(line: 1564, column: 44, scope: !3525)
!3550 = !DILocation(line: 1564, column: 14, scope: !3525)
!3551 = !DILocation(line: 1565, column: 12, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 1565, column: 5)
!3553 = !DILocation(line: 1565, column: 10, scope: !3552)
!3554 = !DILocation(line: 1565, column: 17, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 1565, column: 5)
!3556 = !DILocation(line: 1565, column: 21, scope: !3555)
!3557 = !DILocation(line: 1565, column: 26, scope: !3555)
!3558 = !DILocation(line: 1565, column: 39, scope: !3555)
!3559 = !DILocation(line: 1565, column: 19, scope: !3555)
!3560 = !DILocation(line: 1565, column: 5, scope: !3552)
!3561 = !DILocation(line: 1566, column: 45, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1565, column: 51)
!3563 = !DILocation(line: 1566, column: 51, scope: !3562)
!3564 = !DILocation(line: 1566, column: 30, scope: !3562)
!3565 = !DILocation(line: 1566, column: 18, scope: !3562)
!3566 = !DILocation(line: 1567, column: 33, scope: !3562)
!3567 = !DILocation(line: 1567, column: 39, scope: !3562)
!3568 = !DILocation(line: 1567, column: 52, scope: !3562)
!3569 = !{!1294, !1245, i64 0}
!3570 = !DILocation(line: 1567, column: 58, scope: !3562)
!3571 = !DILocation(line: 1567, column: 67, scope: !3562)
!3572 = !DILocation(line: 1567, column: 21, scope: !3562)
!3573 = !DILocation(line: 1567, column: 10, scope: !3562)
!3574 = !DILocation(line: 1567, column: 19, scope: !3562)
!3575 = !DILocation(line: 1568, column: 5, scope: !3562)
!3576 = !DILocation(line: 1565, column: 46, scope: !3555)
!3577 = !DILocation(line: 1565, column: 5, scope: !3555)
!3578 = distinct !{!3578, !3560, !3579, !1303}
!3579 = !DILocation(line: 1568, column: 5, scope: !3552)
!3580 = !DILocation(line: 1569, column: 1, scope: !3525)
!3581 = !DISubprogram(name: "apr_pstrdup", scope: !1551, file: !1551, line: 95, type: !3582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!209, !73, !10}
!3584 = distinct !DISubprogram(name: "ap_method_in_list", scope: !3, file: !3, line: 1575, type: !3585, scopeLine: 1576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3587)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!14, !487, !10}
!3587 = !{!3588, !3589, !3590}
!3588 = !DILocalVariable(name: "l", arg: 1, scope: !3584, file: !3, line: 1575, type: !487)
!3589 = !DILocalVariable(name: "method", arg: 2, scope: !3584, file: !3, line: 1575, type: !10)
!3590 = !DILocalVariable(name: "methnum", scope: !3584, file: !3, line: 1577, type: !14)
!3591 = !DILocation(line: 1575, column: 53, scope: !3584)
!3592 = !DILocation(line: 1575, column: 68, scope: !3584)
!3593 = !DILocation(line: 1577, column: 5, scope: !3584)
!3594 = !DILocation(line: 1577, column: 9, scope: !3584)
!3595 = !DILocation(line: 1583, column: 35, scope: !3584)
!3596 = !DILocation(line: 1583, column: 15, scope: !3584)
!3597 = !DILocation(line: 1583, column: 13, scope: !3584)
!3598 = !DILocation(line: 1584, column: 9, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3584, file: !3, line: 1584, column: 9)
!3600 = !DILocation(line: 1584, column: 17, scope: !3599)
!3601 = !DILocation(line: 1584, column: 9, scope: !3584)
!3602 = !DILocation(line: 1585, column: 19, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 1584, column: 31)
!3604 = !DILocation(line: 1585, column: 22, scope: !3603)
!3605 = !DILocation(line: 1585, column: 54, scope: !3603)
!3606 = !DILocation(line: 1585, column: 51, scope: !3603)
!3607 = !DILocation(line: 1585, column: 34, scope: !3603)
!3608 = !DILocation(line: 1585, column: 17, scope: !3603)
!3609 = !DILocation(line: 1585, column: 16, scope: !3603)
!3610 = !DILocation(line: 1585, column: 9, scope: !3603)
!3611 = !DILocation(line: 1590, column: 10, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3584, file: !3, line: 1590, column: 9)
!3613 = !DILocation(line: 1590, column: 13, scope: !3612)
!3614 = !DILocation(line: 1590, column: 25, scope: !3612)
!3615 = !DILocation(line: 1590, column: 34, scope: !3612)
!3616 = !DILocation(line: 1590, column: 38, scope: !3612)
!3617 = !DILocation(line: 1590, column: 41, scope: !3612)
!3618 = !DILocation(line: 1590, column: 54, scope: !3612)
!3619 = !DILocation(line: 1590, column: 60, scope: !3612)
!3620 = !DILocation(line: 1590, column: 9, scope: !3584)
!3621 = !DILocation(line: 1591, column: 9, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 1590, column: 67)
!3623 = !DILocation(line: 1594, column: 34, scope: !3584)
!3624 = !DILocation(line: 1594, column: 37, scope: !3584)
!3625 = !DILocation(line: 1594, column: 50, scope: !3584)
!3626 = !DILocation(line: 1594, column: 12, scope: !3584)
!3627 = !DILocation(line: 1594, column: 5, scope: !3584)
!3628 = !DILocation(line: 1595, column: 1, scope: !3584)
!3629 = !DISubprogram(name: "ap_array_str_contains", scope: !107, file: !107, line: 2533, type: !3630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!14, !3632, !10}
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!3634 = distinct !DISubprogram(name: "ap_method_list_add", scope: !3, file: !3, line: 1600, type: !3635, scopeLine: 1601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3637)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{null, !487, !10}
!3637 = !{!3638, !3639, !3640, !3641}
!3638 = !DILocalVariable(name: "l", arg: 1, scope: !3634, file: !3, line: 1600, type: !487)
!3639 = !DILocalVariable(name: "method", arg: 2, scope: !3634, file: !3, line: 1600, type: !10)
!3640 = !DILocalVariable(name: "methnum", scope: !3634, file: !3, line: 1602, type: !14)
!3641 = !DILocalVariable(name: "xmethod", scope: !3634, file: !3, line: 1603, type: !61)
!3642 = !DILocation(line: 1600, column: 55, scope: !3634)
!3643 = !DILocation(line: 1600, column: 70, scope: !3634)
!3644 = !DILocation(line: 1602, column: 5, scope: !3634)
!3645 = !DILocation(line: 1602, column: 9, scope: !3634)
!3646 = !DILocation(line: 1603, column: 5, scope: !3634)
!3647 = !DILocation(line: 1603, column: 18, scope: !3634)
!3648 = !DILocation(line: 1609, column: 35, scope: !3634)
!3649 = !DILocation(line: 1609, column: 15, scope: !3634)
!3650 = !DILocation(line: 1609, column: 13, scope: !3634)
!3651 = !DILocation(line: 1610, column: 9, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 1610, column: 9)
!3653 = !DILocation(line: 1610, column: 17, scope: !3652)
!3654 = !DILocation(line: 1610, column: 9, scope: !3634)
!3655 = !DILocation(line: 1611, column: 45, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 1610, column: 31)
!3657 = !DILocation(line: 1611, column: 42, scope: !3656)
!3658 = !DILocation(line: 1611, column: 9, scope: !3656)
!3659 = !DILocation(line: 1611, column: 12, scope: !3656)
!3660 = !DILocation(line: 1611, column: 24, scope: !3656)
!3661 = !DILocation(line: 1612, column: 9, scope: !3656)
!3662 = !DILocation(line: 1617, column: 31, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 1617, column: 9)
!3664 = !DILocation(line: 1617, column: 34, scope: !3663)
!3665 = !DILocation(line: 1617, column: 47, scope: !3663)
!3666 = !DILocation(line: 1617, column: 9, scope: !3663)
!3667 = !DILocation(line: 1617, column: 9, scope: !3634)
!3668 = !DILocation(line: 1618, column: 9, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 1617, column: 56)
!3670 = !DILocation(line: 1621, column: 46, scope: !3634)
!3671 = !DILocation(line: 1621, column: 49, scope: !3634)
!3672 = !DILocation(line: 1621, column: 31, scope: !3634)
!3673 = !DILocation(line: 1621, column: 13, scope: !3634)
!3674 = !DILocation(line: 1622, column: 16, scope: !3634)
!3675 = !DILocation(line: 1622, column: 6, scope: !3634)
!3676 = !DILocation(line: 1622, column: 14, scope: !3634)
!3677 = !DILocation(line: 1623, column: 1, scope: !3634)
!3678 = distinct !DISubprogram(name: "ap_method_list_remove", scope: !3, file: !3, line: 1628, type: !3635, scopeLine: 1630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3679)
!3679 = !{!3680, !3681, !3682, !3683, !3684, !3687, !3688}
!3680 = !DILocalVariable(name: "l", arg: 1, scope: !3678, file: !3, line: 1628, type: !487)
!3681 = !DILocalVariable(name: "method", arg: 2, scope: !3678, file: !3, line: 1629, type: !10)
!3682 = !DILocalVariable(name: "methnum", scope: !3678, file: !3, line: 1631, type: !14)
!3683 = !DILocalVariable(name: "methods", scope: !3678, file: !3, line: 1632, type: !627)
!3684 = !DILocalVariable(name: "i", scope: !3685, file: !3, line: 1647, type: !14)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 1646, column: 37)
!3686 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 1646, column: 9)
!3687 = !DILocalVariable(name: "j", scope: !3685, file: !3, line: 1647, type: !14)
!3688 = !DILocalVariable(name: "k", scope: !3685, file: !3, line: 1647, type: !14)
!3689 = !DILocation(line: 1628, column: 58, scope: !3678)
!3690 = !DILocation(line: 1629, column: 52, scope: !3678)
!3691 = !DILocation(line: 1631, column: 5, scope: !3678)
!3692 = !DILocation(line: 1631, column: 9, scope: !3678)
!3693 = !DILocation(line: 1632, column: 5, scope: !3678)
!3694 = !DILocation(line: 1632, column: 12, scope: !3678)
!3695 = !DILocation(line: 1638, column: 35, scope: !3678)
!3696 = !DILocation(line: 1638, column: 15, scope: !3678)
!3697 = !DILocation(line: 1638, column: 13, scope: !3678)
!3698 = !DILocation(line: 1639, column: 9, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 1639, column: 9)
!3700 = !DILocation(line: 1639, column: 17, scope: !3699)
!3701 = !DILocation(line: 1639, column: 9, scope: !3678)
!3702 = !DILocation(line: 1640, column: 46, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 1639, column: 31)
!3704 = !DILocation(line: 1640, column: 43, scope: !3703)
!3705 = !DILocation(line: 1640, column: 27, scope: !3703)
!3706 = !DILocation(line: 1640, column: 9, scope: !3703)
!3707 = !DILocation(line: 1640, column: 12, scope: !3703)
!3708 = !DILocation(line: 1640, column: 24, scope: !3703)
!3709 = !DILocation(line: 1641, column: 9, scope: !3703)
!3710 = !DILocation(line: 1646, column: 9, scope: !3686)
!3711 = !DILocation(line: 1646, column: 12, scope: !3686)
!3712 = !DILocation(line: 1646, column: 25, scope: !3686)
!3713 = !DILocation(line: 1646, column: 31, scope: !3686)
!3714 = !DILocation(line: 1646, column: 9, scope: !3678)
!3715 = !DILocation(line: 1647, column: 9, scope: !3685)
!3716 = !DILocation(line: 1647, column: 13, scope: !3685)
!3717 = !DILocation(line: 1647, column: 16, scope: !3685)
!3718 = !DILocation(line: 1647, column: 19, scope: !3685)
!3719 = !DILocation(line: 1648, column: 28, scope: !3685)
!3720 = !DILocation(line: 1648, column: 31, scope: !3685)
!3721 = !DILocation(line: 1648, column: 44, scope: !3685)
!3722 = !DILocation(line: 1648, column: 17, scope: !3685)
!3723 = !DILocation(line: 1649, column: 16, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 1649, column: 9)
!3725 = !DILocation(line: 1649, column: 14, scope: !3724)
!3726 = !DILocation(line: 1649, column: 21, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 1649, column: 9)
!3728 = !DILocation(line: 1649, column: 25, scope: !3727)
!3729 = !DILocation(line: 1649, column: 28, scope: !3727)
!3730 = !DILocation(line: 1649, column: 41, scope: !3727)
!3731 = !DILocation(line: 1649, column: 23, scope: !3727)
!3732 = !DILocation(line: 1649, column: 9, scope: !3724)
!3733 = !DILocation(line: 1650, column: 24, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 1650, column: 17)
!3735 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 1649, column: 50)
!3736 = !DILocation(line: 1650, column: 32, scope: !3734)
!3737 = !DILocation(line: 1650, column: 40, scope: !3734)
!3738 = !DILocation(line: 1650, column: 17, scope: !3734)
!3739 = !DILocation(line: 1650, column: 44, scope: !3734)
!3740 = !DILocation(line: 1650, column: 17, scope: !3735)
!3741 = !DILocation(line: 1651, column: 26, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 1651, column: 17)
!3743 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 1650, column: 50)
!3744 = !DILocation(line: 1651, column: 24, scope: !3742)
!3745 = !DILocation(line: 1651, column: 33, scope: !3742)
!3746 = !DILocation(line: 1651, column: 35, scope: !3742)
!3747 = !DILocation(line: 1651, column: 31, scope: !3742)
!3748 = !DILocation(line: 1651, column: 22, scope: !3742)
!3749 = !DILocation(line: 1651, column: 40, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 1651, column: 17)
!3751 = !DILocation(line: 1651, column: 44, scope: !3750)
!3752 = !DILocation(line: 1651, column: 47, scope: !3750)
!3753 = !DILocation(line: 1651, column: 60, scope: !3750)
!3754 = !DILocation(line: 1651, column: 42, scope: !3750)
!3755 = !DILocation(line: 1651, column: 17, scope: !3742)
!3756 = !DILocation(line: 1652, column: 34, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 1651, column: 77)
!3758 = !DILocation(line: 1652, column: 42, scope: !3757)
!3759 = !DILocation(line: 1652, column: 21, scope: !3757)
!3760 = !DILocation(line: 1652, column: 29, scope: !3757)
!3761 = !DILocation(line: 1652, column: 32, scope: !3757)
!3762 = !DILocation(line: 1653, column: 17, scope: !3757)
!3763 = !DILocation(line: 1651, column: 67, scope: !3750)
!3764 = !DILocation(line: 1651, column: 72, scope: !3750)
!3765 = !DILocation(line: 1651, column: 17, scope: !3750)
!3766 = distinct !{!3766, !3755, !3767, !1303}
!3767 = !DILocation(line: 1653, column: 17, scope: !3742)
!3768 = !DILocation(line: 1654, column: 19, scope: !3743)
!3769 = !DILocation(line: 1654, column: 22, scope: !3743)
!3770 = !DILocation(line: 1654, column: 35, scope: !3743)
!3771 = !DILocation(line: 1654, column: 17, scope: !3743)
!3772 = !DILocation(line: 1655, column: 13, scope: !3743)
!3773 = !DILocation(line: 1657, column: 17, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 1656, column: 18)
!3775 = !DILocation(line: 1649, column: 9, scope: !3727)
!3776 = distinct !{!3776, !3732, !3777, !1303}
!3777 = !DILocation(line: 1659, column: 9, scope: !3724)
!3778 = !DILocation(line: 1660, column: 5, scope: !3686)
!3779 = !DILocation(line: 1660, column: 5, scope: !3685)
!3780 = !DILocation(line: 1661, column: 1, scope: !3678)
!3781 = distinct !DISubprogram(name: "ap_clear_method_list", scope: !3, file: !3, line: 1666, type: !3782, scopeLine: 1667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3784)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !487}
!3784 = !{!3785}
!3785 = !DILocalVariable(name: "l", arg: 1, scope: !3781, file: !3, line: 1666, type: !487)
!3786 = !DILocation(line: 1666, column: 57, scope: !3781)
!3787 = !DILocation(line: 1668, column: 5, scope: !3781)
!3788 = !DILocation(line: 1668, column: 8, scope: !3781)
!3789 = !DILocation(line: 1668, column: 20, scope: !3781)
!3790 = !DILocation(line: 1669, column: 5, scope: !3781)
!3791 = !DILocation(line: 1669, column: 8, scope: !3781)
!3792 = !DILocation(line: 1669, column: 21, scope: !3781)
!3793 = !DILocation(line: 1669, column: 27, scope: !3781)
!3794 = !DILocation(line: 1670, column: 1, scope: !3781)
!3795 = !DISubprogram(name: "ap_mpm_query", scope: !3796, file: !3796, line: 194, type: !3797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3796 = !DIFile(filename: "include/ap_mpm.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "4b700d5f4e6eab8bee0b4312cd697923")
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!25, !14, !625}
!3799 = !DISubprogram(name: "apr_hash_set", scope: !838, file: !838, line: 108, type: !3800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{null, !836, !2150, !2239, !2150}
!3802 = !DISubprogram(name: "memcmp", scope: !1944, file: !1944, line: 64, type: !3803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!14, !2150, !2150, !45}
!3805 = !DISubprogram(name: "apr_array_cat", scope: !348, file: !348, line: 174, type: !3806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{null, !346, !3632}
!3808 = !DISubprogram(name: "apr_array_pstrcat", scope: !348, file: !348, line: 221, type: !3809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!209, !73, !3632, !11}
!3811 = !DISubprogram(name: "ap_rwrite", scope: !141, file: !141, line: 467, type: !3812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!14, !2150, !14, !179}
!3814 = !DISubprogram(name: "ap_escape_html2", scope: !107, file: !107, line: 1861, type: !3815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!209, !73, !10, !14}
!3817 = distinct !DISubprogram(name: "add_optional_notes", scope: !3, file: !3, line: 1110, type: !3818, scopeLine: 1114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!10, !179, !10, !10, !10}
!3820 = !{!3821, !3822, !3823, !3824, !3825, !3826}
!3821 = !DILocalVariable(name: "r", arg: 1, scope: !3817, file: !3, line: 1110, type: !179)
!3822 = !DILocalVariable(name: "prefix", arg: 2, scope: !3817, file: !3, line: 1111, type: !10)
!3823 = !DILocalVariable(name: "key", arg: 3, scope: !3817, file: !3, line: 1112, type: !10)
!3824 = !DILocalVariable(name: "suffix", arg: 4, scope: !3817, file: !3, line: 1113, type: !10)
!3825 = !DILocalVariable(name: "notes", scope: !3817, file: !3, line: 1115, type: !10)
!3826 = !DILocalVariable(name: "result", scope: !3817, file: !3, line: 1115, type: !10)
!3827 = !DILocation(line: 1110, column: 52, scope: !3817)
!3828 = !DILocation(line: 1111, column: 51, scope: !3817)
!3829 = !DILocation(line: 1112, column: 51, scope: !3817)
!3830 = !DILocation(line: 1113, column: 51, scope: !3817)
!3831 = !DILocation(line: 1115, column: 5, scope: !3817)
!3832 = !DILocation(line: 1115, column: 17, scope: !3817)
!3833 = !DILocation(line: 1115, column: 25, scope: !3817)
!3834 = !DILocation(line: 1117, column: 32, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 1117, column: 9)
!3836 = !DILocation(line: 1117, column: 35, scope: !3835)
!3837 = !DILocation(line: 1117, column: 42, scope: !3835)
!3838 = !DILocation(line: 1117, column: 18, scope: !3835)
!3839 = !DILocation(line: 1117, column: 16, scope: !3835)
!3840 = !DILocation(line: 1117, column: 48, scope: !3835)
!3841 = !DILocation(line: 1117, column: 9, scope: !3817)
!3842 = !DILocation(line: 1118, column: 30, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 1117, column: 57)
!3844 = !DILocation(line: 1118, column: 33, scope: !3843)
!3845 = !DILocation(line: 1118, column: 39, scope: !3843)
!3846 = !DILocation(line: 1118, column: 47, scope: !3843)
!3847 = !DILocation(line: 1118, column: 18, scope: !3843)
!3848 = !DILocation(line: 1118, column: 16, scope: !3843)
!3849 = !DILocation(line: 1119, column: 5, scope: !3843)
!3850 = !DILocation(line: 1121, column: 30, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 1120, column: 10)
!3852 = !DILocation(line: 1121, column: 33, scope: !3851)
!3853 = !DILocation(line: 1121, column: 39, scope: !3851)
!3854 = !DILocation(line: 1121, column: 47, scope: !3851)
!3855 = !DILocation(line: 1121, column: 54, scope: !3851)
!3856 = !DILocation(line: 1121, column: 18, scope: !3851)
!3857 = !DILocation(line: 1121, column: 16, scope: !3851)
!3858 = !DILocation(line: 1124, column: 12, scope: !3817)
!3859 = !DILocation(line: 1125, column: 1, scope: !3817)
!3860 = !DILocation(line: 1124, column: 5, scope: !3817)

; ModuleID = 'samples/975.bc'
source_filename = "/local-ssd/libsolv-ia2b77eq33rfxsa2dxzctp56y4foppyo-build/aidengro/spack-stage-libsolv-0.7.22-ia2b77eq33rfxsa2dxzctp56y4foppyo/spack-src/src/pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_Pool = type { ptr, %struct.s_Stringpool, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, %struct.s_Queue, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, %struct.s_Datapos, %struct.s_Queue, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, %struct.s_Pool_tmpspace, ptr, i32, ptr, ptr, i32, i32, %struct.s_Queue, i32, ptr, i32, ptr, i32, i32 }
%struct.s_Stringpool = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.s_Datapos = type { ptr, i32, i32, i32, i32 }
%struct.s_Pool_tmpspace = type { [16 x ptr], [16 x i32], i32 }
%struct.s_Queue = type { ptr, i32, ptr, i32 }
%struct.s_Solvable = type { i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_Repo = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.s_Reldep = type { i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.s_Map = type { ptr, i32 }
%struct.s_Dataiterator = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.s_KeyValue, %struct.s_Datamatcher, i32, i32, i32, i32, [4 x i32], i32, i32, [3 x %struct.di_parent], i32, ptr, i32, i32, i32, ptr, i32, ptr, ptr }
%struct.s_KeyValue = type { i32, ptr, i32, i32, i32, i32, ptr }
%struct.s_Datamatcher = type { i32, ptr, ptr, i32 }
%struct.di_parent = type { %struct.s_KeyValue, ptr, ptr }

@initpool_data = internal global [204 x ptr] [ptr @.str.21, ptr @.str.17, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr null], align 16
@.str = private unnamed_addr constant [44 x i8] c"number of solvables: %d, memory used: %d K\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"number of ids: %d + %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"string memory used: %d K array + %d K data,  rel memory used: %d K array\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"string hash memory: %d K, rel hash memory : %d K\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"provide ids: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"provide space needed: %d + %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"whatprovides memory used: %d K id array, %d K data\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"whatprovidesaux memory used: %d K id array, %d K data\0A\00", align 1
@.str.8 = private unnamed_addr constant [81 x i8] c"WARNING: pool_addfileprovides was not called, this may result in slow operation\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"lazywhatprovidesq size: %d entries\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"createwhatprovides took %d ms\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"growing provides hash data...\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"rpmlib(\00", align 1
@stderr = external global ptr, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"no error\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"solvable:name\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"solvable:arch\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"solvable:evr\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"solvable:vendor\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"solvable:provides\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"solvable:obsoletes\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"solvable:conflicts\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"solvable:requires\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"solvable:recommends\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"solvable:suggests\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"solvable:supplements\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"solvable:enhances\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"rpm:dbid\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"solvable:prereqmarker\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"solvable:filemarker\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"namespace:installed\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"namespace:modalias\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"namespace:splitprovides\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"namespace:language\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"namespace:filesystem\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"namespace:otherproviders\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"system:system\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"nosrc\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"noarch\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"repository:solvables\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"repository:deltainfo\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"repository:external\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"repository:keys\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"repository:location\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"repokey:type:void\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"repokey:type:constant\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"repokey:type:constantid\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"repokey:type:id\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"repokey:type:num\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"repokey:type:dir\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"repokey:type:str\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"repokey:type:binary\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"repokey:type:idarray\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"repokey:type:relidarray\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"repokey:type:dirstrarray\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"repokey:type:dirnumnumarray\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"repokey:type:md5\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"repokey:type:sha1\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"repokey:type:sha224\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"repokey:type:sha256\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"repokey:type:sha384\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"repokey:type:sha512\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"repokey:type:fixarray\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"repokey:type:flexarray\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"repokey:type:deleted\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"solvable:summary\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"solvable:description\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"solvable:distribution\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"solvable:authors\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"solvable:packager\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"solvable:group\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"solvable:url\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"solvable:keywords\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"solvable:license\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"solvable:buildtime\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"solvable:buildhost\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"solvable:eula\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"solvable:cpeid\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"solvable:messageins\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"solvable:messagedel\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"solvable:installsize\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"solvable:diskusage\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"solvable:filelist\00", align 1
@.str.93 = private unnamed_addr constant [21 x i8] c"solvable:installtime\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"solvable:mediadir\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"solvable:mediafile\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"solvable:medianr\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"solvable:mediabase\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"solvable:downloadsize\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"solvable:sourcearch\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"solvable:sourcename\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"solvable:sourceevr\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"solvable:isvisible\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"solvable:triggers\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"solvable:checksum\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"solvable:pkgid\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"solvable:hdrid\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"solvable:leadsigid\00", align 1
@.str.108 = private unnamed_addr constant [23 x i8] c"solvable:patchcategory\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"solvable:headerend\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"solvable:changelog\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"solvable:changelog:author\00", align 1
@.str.112 = private unnamed_addr constant [24 x i8] c"solvable:changelog:time\00", align 1
@.str.113 = private unnamed_addr constant [24 x i8] c"solvable:changelog:text\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"solvable:installstatus\00", align 1
@.str.115 = private unnamed_addr constant [27 x i8] c"solvable:prereq_ignoreinst\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"solvable:category\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"solvable:includes\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"solvable:extends\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"solvable:icon\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"solvable:order\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"update:reboot\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"update:restart\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"update:relogin\00", align 1
@.str.124 = private unnamed_addr constant [15 x i8] c"update:message\00", align 1
@.str.125 = private unnamed_addr constant [16 x i8] c"update:severity\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"update:rights\00", align 1
@.str.127 = private unnamed_addr constant [18 x i8] c"update:collection\00", align 1
@.str.128 = private unnamed_addr constant [23 x i8] c"update:collection:name\00", align 1
@.str.129 = private unnamed_addr constant [22 x i8] c"update:collection:evr\00", align 1
@.str.130 = private unnamed_addr constant [23 x i8] c"update:collection:arch\00", align 1
@.str.131 = private unnamed_addr constant [27 x i8] c"update:collection:filename\00", align 1
@.str.132 = private unnamed_addr constant [24 x i8] c"update:collection:flags\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"update:reference\00", align 1
@.str.134 = private unnamed_addr constant [22 x i8] c"update:reference:type\00", align 1
@.str.135 = private unnamed_addr constant [22 x i8] c"update:reference:href\00", align 1
@.str.136 = private unnamed_addr constant [20 x i8] c"update:reference:id\00", align 1
@.str.137 = private unnamed_addr constant [23 x i8] c"update:reference:title\00", align 1
@.str.138 = private unnamed_addr constant [22 x i8] c"product:referencefile\00", align 1
@.str.139 = private unnamed_addr constant [19 x i8] c"product:shortlabel\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"product:distproduct\00", align 1
@.str.141 = private unnamed_addr constant [20 x i8] c"product:distversion\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"product:type\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"product:url\00", align 1
@.str.144 = private unnamed_addr constant [17 x i8] c"product:url:type\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"product:flags\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"product:productline\00", align 1
@.str.147 = private unnamed_addr constant [18 x i8] c"product:regtarget\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"product:regflavor\00", align 1
@.str.149 = private unnamed_addr constant [19 x i8] c"product:regrelease\00", align 1
@.str.150 = private unnamed_addr constant [23 x i8] c"product:updates:repoid\00", align 1
@.str.151 = private unnamed_addr constant [16 x i8] c"product:updates\00", align 1
@.str.152 = private unnamed_addr constant [18 x i8] c"product:endoflife\00", align 1
@.str.153 = private unnamed_addr constant [17 x i8] c"susetags:datadir\00", align 1
@.str.154 = private unnamed_addr constant [18 x i8] c"susetags:descrdir\00", align 1
@.str.155 = private unnamed_addr constant [23 x i8] c"susetags:defaultvendor\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"susetags:file\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"susetags:file:name\00", align 1
@.str.158 = private unnamed_addr constant [19 x i8] c"susetags:file:type\00", align 1
@.str.159 = private unnamed_addr constant [23 x i8] c"susetags:file:checksum\00", align 1
@.str.160 = private unnamed_addr constant [20 x i8] c"susetags:share:name\00", align 1
@.str.161 = private unnamed_addr constant [19 x i8] c"susetags:share:evr\00", align 1
@.str.162 = private unnamed_addr constant [20 x i8] c"susetags:share:arch\00", align 1
@.str.163 = private unnamed_addr constant [29 x i8] c"repository:addedfileprovides\00", align 1
@.str.164 = private unnamed_addr constant [23 x i8] c"repository:rpmdbcookie\00", align 1
@.str.165 = private unnamed_addr constant [28 x i8] c"repository:filteredfilelist\00", align 1
@.str.166 = private unnamed_addr constant [21 x i8] c"repository:timestamp\00", align 1
@.str.167 = private unnamed_addr constant [18 x i8] c"repository:expire\00", align 1
@.str.168 = private unnamed_addr constant [19 x i8] c"repository:updates\00", align 1
@.str.169 = private unnamed_addr constant [19 x i8] c"repository:distros\00", align 1
@.str.170 = private unnamed_addr constant [25 x i8] c"repository:product:label\00", align 1
@.str.171 = private unnamed_addr constant [25 x i8] c"repository:product:cpeid\00", align 1
@.str.172 = private unnamed_addr constant [18 x i8] c"repository:repoid\00", align 1
@.str.173 = private unnamed_addr constant [20 x i8] c"repository:keywords\00", align 1
@.str.174 = private unnamed_addr constant [20 x i8] c"repository:revision\00", align 1
@.str.175 = private unnamed_addr constant [23 x i8] c"repository:toolversion\00", align 1
@.str.176 = private unnamed_addr constant [14 x i8] c"delta:pkgname\00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"delta:pkgevr\00", align 1
@.str.178 = private unnamed_addr constant [14 x i8] c"delta:pkgarch\00", align 1
@.str.179 = private unnamed_addr constant [13 x i8] c"delta:locdir\00", align 1
@.str.180 = private unnamed_addr constant [14 x i8] c"delta:locname\00", align 1
@.str.181 = private unnamed_addr constant [13 x i8] c"delta:locevr\00", align 1
@.str.182 = private unnamed_addr constant [16 x i8] c"delta:locsuffix\00", align 1
@.str.183 = private unnamed_addr constant [19 x i8] c"delta:downloadsize\00", align 1
@.str.184 = private unnamed_addr constant [15 x i8] c"delta:checksum\00", align 1
@.str.185 = private unnamed_addr constant [14 x i8] c"delta:baseevr\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c"delta:seqname\00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"delta:seqevr\00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"delta:seqnum\00", align 1
@.str.189 = private unnamed_addr constant [14 x i8] c"delta:locbase\00", align 1
@.str.190 = private unnamed_addr constant [18 x i8] c"repository:repomd\00", align 1
@.str.191 = private unnamed_addr constant [23 x i8] c"repository:repomd:type\00", align 1
@.str.192 = private unnamed_addr constant [27 x i8] c"repository:repomd:location\00", align 1
@.str.193 = private unnamed_addr constant [28 x i8] c"repository:repomd:timestamp\00", align 1
@.str.194 = private unnamed_addr constant [27 x i8] c"repository:repomd:checksum\00", align 1
@.str.195 = private unnamed_addr constant [31 x i8] c"repository:repomd:openchecksum\00", align 1
@.str.196 = private unnamed_addr constant [23 x i8] c"repository:repomd:size\00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"pubkey:keyid\00", align 1
@.str.198 = private unnamed_addr constant [19 x i8] c"pubkey:fingerprint\00", align 1
@.str.199 = private unnamed_addr constant [15 x i8] c"pubkey:expires\00", align 1
@.str.200 = private unnamed_addr constant [18 x i8] c"pubkey:signatures\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"pubkey:data\00", align 1
@.str.202 = private unnamed_addr constant [16 x i8] c"pubkey:subkeyof\00", align 1
@.str.203 = private unnamed_addr constant [17 x i8] c"signature:issuer\00", align 1
@.str.204 = private unnamed_addr constant [15 x i8] c"signature:time\00", align 1
@.str.205 = private unnamed_addr constant [18 x i8] c"signature:expires\00", align 1
@.str.206 = private unnamed_addr constant [15 x i8] c"signature:data\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"update:module\00", align 1
@.str.208 = private unnamed_addr constant [19 x i8] c"update:module:name\00", align 1
@.str.209 = private unnamed_addr constant [21 x i8] c"update:module:stream\00", align 1
@.str.210 = private unnamed_addr constant [22 x i8] c"update:module:version\00", align 1
@.str.211 = private unnamed_addr constant [22 x i8] c"update:module:context\00", align 1
@.str.212 = private unnamed_addr constant [19 x i8] c"update:module:arch\00", align 1
@.str.213 = private unnamed_addr constant [22 x i8] c"solvable:buildversion\00", align 1
@.str.214 = private unnamed_addr constant [21 x i8] c"solvable:buildflavor\00", align 1
@.str.215 = private unnamed_addr constant [14 x i8] c"update:status\00", align 1
@.str.216 = private unnamed_addr constant [28 x i8] c"libsolv-self-destruct-pkg()\00", align 1
@.str.217 = private unnamed_addr constant [20 x i8] c"solvable:constrains\00", align 1
@.str.218 = private unnamed_addr constant [24 x i8] c"solvable:track_features\00", align 1
@.str.219 = private unnamed_addr constant [19 x i8] c"solvable:isdefault\00", align 1
@.str.220 = private unnamed_addr constant [18 x i8] c"solvable:langonly\00", align 1
@.str.221 = private unnamed_addr constant [22 x i8] c"update:collectionlist\00", align 1
@.str.222 = private unnamed_addr constant [19 x i8] c"solvable:multiarch\00", align 1
@.str.223 = private unnamed_addr constant [39 x i8] c"shrunk whatprovidesdata from %d to %d\0A\00", align 1
@.str.224 = private unnamed_addr constant [42 x i8] c"shrunk whatprovidesauxdata from %d to %d\0A\00", align 1
@stdout = external global ptr, align 8

; Function Attrs: nounwind uwtable
define ptr @pool_create() #0 {
entry:
  %pool = alloca ptr, align 8
  %s = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10
  %call = call ptr @solv_calloc(i64 noundef 1, i64 noundef 728)
  store ptr %call, ptr %pool, align 8, !tbaa !4
  %0 = load ptr, ptr %pool, align 8, !tbaa !4
  %ss = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 1
  call void @stringpool_init(ptr noundef %ss, ptr noundef @initpool_data)
  %call1 = call ptr @solv_extend_resize(ptr noundef null, i64 noundef 1, i64 noundef 12, i64 noundef 1023)
  %1 = load ptr, ptr %pool, align 8, !tbaa !4
  %rels = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 2
  store ptr %call1, ptr %rels, align 8, !tbaa !8
  %2 = load ptr, ptr %pool, align 8, !tbaa !4
  %nrels = getelementptr inbounds %struct.s_Pool, ptr %2, i32 0, i32 3
  store i32 1, ptr %nrels, align 8, !tbaa !15
  %3 = load ptr, ptr %pool, align 8, !tbaa !4
  %rels2 = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %rels2, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 12, i1 false)
  %call3 = call ptr @solv_extend_resize(ptr noundef null, i64 noundef 2, i64 noundef 56, i64 noundef 255)
  %5 = load ptr, ptr %pool, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 8
  store ptr %call3, ptr %solvables, align 8, !tbaa !16
  %6 = load ptr, ptr %pool, align 8, !tbaa !4
  %nsolvables = getelementptr inbounds %struct.s_Pool, ptr %6, i32 0, i32 9
  store i32 2, ptr %nsolvables, align 8, !tbaa !17
  %7 = load ptr, ptr %pool, align 8, !tbaa !4
  %solvables4 = getelementptr inbounds %struct.s_Pool, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %solvables4, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 112, i1 false)
  %9 = load ptr, ptr %pool, align 8, !tbaa !4
  %vendormap = getelementptr inbounds %struct.s_Pool, ptr %9, i32 0, i32 16
  call void @queue_init(ptr noundef %vendormap)
  %10 = load ptr, ptr %pool, align 8, !tbaa !4
  %pooljobs = getelementptr inbounds %struct.s_Pool, ptr %10, i32 0, i32 32
  call void @queue_init(ptr noundef %pooljobs)
  %11 = load ptr, ptr %pool, align 8, !tbaa !4
  %lazywhatprovidesq = getelementptr inbounds %struct.s_Pool, ptr %11, i32 0, i32 54
  call void @queue_init(ptr noundef %lazywhatprovidesq)
  %12 = load ptr, ptr %pool, align 8, !tbaa !4
  %disttype = getelementptr inbounds %struct.s_Pool, ptr %12, i32 0, i32 12
  store i32 0, ptr %disttype, align 4, !tbaa !18
  %13 = load ptr, ptr %pool, align 8, !tbaa !4
  %noarchid = getelementptr inbounds %struct.s_Pool, ptr %13, i32 0, i32 42
  store i32 26, ptr %noarchid, align 4, !tbaa !19
  %14 = load ptr, ptr %pool, align 8, !tbaa !4
  %solvables5 = getelementptr inbounds %struct.s_Pool, ptr %14, i32 0, i32 8
  %15 = load ptr, ptr %solvables5, align 8, !tbaa !16
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %15, i64 1
  store ptr %add.ptr, ptr %s, align 8, !tbaa !4
  %16 = load ptr, ptr %s, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.s_Solvable, ptr %16, i32 0, i32 0
  store i32 23, ptr %name, align 8, !tbaa !20
  %17 = load ptr, ptr %pool, align 8, !tbaa !4
  %noarchid6 = getelementptr inbounds %struct.s_Pool, ptr %17, i32 0, i32 42
  %18 = load i32, ptr %noarchid6, align 4, !tbaa !19
  %19 = load ptr, ptr %s, align 8, !tbaa !4
  %arch = getelementptr inbounds %struct.s_Solvable, ptr %19, i32 0, i32 1
  store i32 %18, ptr %arch, align 4, !tbaa !22
  %20 = load ptr, ptr %s, align 8, !tbaa !4
  %evr = getelementptr inbounds %struct.s_Solvable, ptr %20, i32 0, i32 2
  store i32 1, ptr %evr, align 8, !tbaa !23
  %21 = load ptr, ptr %pool, align 8, !tbaa !4
  %debugmask = getelementptr inbounds %struct.s_Pool, ptr %21, i32 0, i32 26
  store i32 1024, ptr %debugmask, align 8, !tbaa !24
  %22 = load ptr, ptr %pool, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #10
  ret ptr %22
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @solv_calloc(i64 noundef, i64 noundef) #2

declare void @stringpool_init(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @solv_extend_resize(ptr noundef %buf, i64 noundef %len, i64 noundef %size, i64 noundef %block) #3 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %block.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !25
  store i64 %size, ptr %size.addr, align 8, !tbaa !25
  store i64 %block, ptr %block.addr, align 8, !tbaa !25
  %0 = load i64, ptr %len.addr, align 8, !tbaa !25
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !25
  %3 = load i64, ptr %size.addr, align 8, !tbaa !25
  %4 = load i64, ptr %block.addr, align 8, !tbaa !25
  %call = call ptr @solv_extend_realloc(ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4)
  store ptr %call, ptr %buf.addr, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  ret ptr %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @queue_init(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @pool_free(ptr noundef %pool) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  call void @pool_freewhatprovides(ptr noundef %0)
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  call void @pool_freeidhashes(ptr noundef %1)
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  call void @pool_freeallrepos(ptr noundef %2, i32 noundef 1)
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %id2arch = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 13
  %4 = load ptr, ptr %id2arch, align 8, !tbaa !27
  %call = call ptr @solv_free(ptr noundef %4)
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %id2color = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 14
  %6 = load ptr, ptr %id2color, align 8, !tbaa !28
  %call1 = call ptr @solv_free(ptr noundef %6)
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %solvables, align 8, !tbaa !16
  %call2 = call ptr @solv_free(ptr noundef %8)
  %9 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss = getelementptr inbounds %struct.s_Pool, ptr %9, i32 0, i32 1
  call void @stringpool_free(ptr noundef %ss)
  %10 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels = getelementptr inbounds %struct.s_Pool, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %rels, align 8, !tbaa !8
  %call3 = call ptr @solv_free(ptr noundef %11)
  %12 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  call void @pool_setvendorclasses(ptr noundef %12, ptr noundef null)
  %13 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %vendormap = getelementptr inbounds %struct.s_Pool, ptr %13, i32 0, i32 16
  call void @queue_free(ptr noundef %vendormap)
  %14 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pooljobs = getelementptr inbounds %struct.s_Pool, ptr %14, i32 0, i32 32
  call void @queue_free(ptr noundef %pooljobs)
  %15 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %lazywhatprovidesq = getelementptr inbounds %struct.s_Pool, ptr %15, i32 0, i32 54
  call void @queue_free(ptr noundef %lazywhatprovidesq)
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, ptr %i, align 4, !tbaa !29
  %cmp = icmp slt i32 %16, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace = getelementptr inbounds %struct.s_Pool, ptr %17, i32 0, i32 47
  %buf = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace, i32 0, i32 0
  %18 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %buf, i64 0, i64 %idxprom
  %19 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %call4 = call ptr @solv_free(ptr noundef %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4, !tbaa !29
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc10, %for.end
  %21 = load i32, ptr %i, align 4, !tbaa !29
  %22 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nlanguages = getelementptr inbounds %struct.s_Pool, ptr %22, i32 0, i32 11
  %23 = load i32, ptr %nlanguages, align 8, !tbaa !32
  %cmp6 = icmp slt i32 %21, %23
  br i1 %cmp6, label %for.body7, label %for.end12

for.body7:                                        ; preds = %for.cond5
  %24 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %languages = getelementptr inbounds %struct.s_Pool, ptr %24, i32 0, i32 10
  %25 = load ptr, ptr %languages, align 8, !tbaa !33
  %26 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom8 = sext i32 %26 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %25, i64 %idxprom8
  %27 = load ptr, ptr %arrayidx9, align 8, !tbaa !4
  call void @free(ptr noundef %27) #10
  br label %for.inc10

for.inc10:                                        ; preds = %for.body7
  %28 = load i32, ptr %i, align 4, !tbaa !29
  %inc11 = add nsw i32 %28, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !29
  br label %for.cond5, !llvm.loop !34

for.end12:                                        ; preds = %for.cond5
  %29 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %languages13 = getelementptr inbounds %struct.s_Pool, ptr %29, i32 0, i32 10
  %30 = load ptr, ptr %languages13, align 8, !tbaa !33
  %call14 = call ptr @solv_free(ptr noundef %30)
  %31 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %languagecache = getelementptr inbounds %struct.s_Pool, ptr %31, i32 0, i32 45
  %32 = load ptr, ptr %languagecache, align 8, !tbaa !35
  %call15 = call ptr @solv_free(ptr noundef %32)
  %33 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstr = getelementptr inbounds %struct.s_Pool, ptr %33, i32 0, i32 48
  %34 = load ptr, ptr %errstr, align 8, !tbaa !36
  %call16 = call ptr @solv_free(ptr noundef %34)
  %35 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rootdir = getelementptr inbounds %struct.s_Pool, ptr %35, i32 0, i32 50
  %36 = load ptr, ptr %rootdir, align 8, !tbaa !37
  %call17 = call ptr @solv_free(ptr noundef %36)
  %37 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %call18 = call ptr @solv_free(ptr noundef %37)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  ret void
}

; Function Attrs: nounwind uwtable
define void @pool_freewhatprovides(ptr noundef %pool) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %whatprovides, align 8, !tbaa !38
  %call = call ptr @solv_free(ptr noundef %1)
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides1 = getelementptr inbounds %struct.s_Pool, ptr %2, i32 0, i32 18
  store ptr %call, ptr %whatprovides1, align 8, !tbaa !38
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides_rel = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 19
  %4 = load ptr, ptr %whatprovides_rel, align 8, !tbaa !39
  %call2 = call ptr @solv_free(ptr noundef %4)
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides_rel3 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 19
  store ptr %call2, ptr %whatprovides_rel3, align 8, !tbaa !39
  %6 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata = getelementptr inbounds %struct.s_Pool, ptr %6, i32 0, i32 20
  %7 = load ptr, ptr %whatprovidesdata, align 8, !tbaa !40
  %call4 = call ptr @solv_free(ptr noundef %7)
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata5 = getelementptr inbounds %struct.s_Pool, ptr %8, i32 0, i32 20
  store ptr %call4, ptr %whatprovidesdata5, align 8, !tbaa !40
  %9 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataoff = getelementptr inbounds %struct.s_Pool, ptr %9, i32 0, i32 21
  store i32 0, ptr %whatprovidesdataoff, align 8, !tbaa !41
  %10 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataleft = getelementptr inbounds %struct.s_Pool, ptr %10, i32 0, i32 22
  store i32 0, ptr %whatprovidesdataleft, align 4, !tbaa !42
  %11 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesaux = getelementptr inbounds %struct.s_Pool, ptr %11, i32 0, i32 56
  %12 = load ptr, ptr %whatprovidesaux, align 8, !tbaa !43
  %call6 = call ptr @solv_free(ptr noundef %12)
  %13 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesaux7 = getelementptr inbounds %struct.s_Pool, ptr %13, i32 0, i32 56
  store ptr %call6, ptr %whatprovidesaux7, align 8, !tbaa !43
  %14 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdata = getelementptr inbounds %struct.s_Pool, ptr %14, i32 0, i32 58
  %15 = load ptr, ptr %whatprovidesauxdata, align 8, !tbaa !44
  %call8 = call ptr @solv_free(ptr noundef %15)
  %16 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdata9 = getelementptr inbounds %struct.s_Pool, ptr %16, i32 0, i32 58
  store ptr %call8, ptr %whatprovidesauxdata9, align 8, !tbaa !44
  %17 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxoff = getelementptr inbounds %struct.s_Pool, ptr %17, i32 0, i32 57
  store i32 0, ptr %whatprovidesauxoff, align 8, !tbaa !45
  %18 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdataoff = getelementptr inbounds %struct.s_Pool, ptr %18, i32 0, i32 59
  store i32 0, ptr %whatprovidesauxdataoff, align 8, !tbaa !46
  ret void
}

declare void @pool_freeidhashes(ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @pool_freeallrepos(ptr noundef %pool, i32 noundef %reuseids) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %reuseids.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %reuseids, ptr %reuseids.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  call void @pool_freewhatprovides(ptr noundef %0)
  store i32 1, ptr %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !29
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nrepos = getelementptr inbounds %struct.s_Pool, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %nrepos, align 8, !tbaa !47
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %repos = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %repos, align 8, !tbaa !48
  %6 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %repos1 = getelementptr inbounds %struct.s_Pool, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %repos1, align 8, !tbaa !48
  %10 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %9, i64 %idxprom2
  %11 = load ptr, ptr %arrayidx3, align 8, !tbaa !4
  call void @repo_freedata(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !tbaa !29
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %repos4 = getelementptr inbounds %struct.s_Pool, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %repos4, align 8, !tbaa !48
  %call = call ptr @solv_free(ptr noundef %14)
  %15 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %repos5 = getelementptr inbounds %struct.s_Pool, ptr %15, i32 0, i32 4
  store ptr %call, ptr %repos5, align 8, !tbaa !48
  %16 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nrepos6 = getelementptr inbounds %struct.s_Pool, ptr %16, i32 0, i32 5
  store i32 0, ptr %nrepos6, align 8, !tbaa !47
  %17 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %urepos = getelementptr inbounds %struct.s_Pool, ptr %17, i32 0, i32 6
  store i32 0, ptr %urepos, align 4, !tbaa !50
  %18 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables = getelementptr inbounds %struct.s_Pool, ptr %19, i32 0, i32 9
  %20 = load i32, ptr %nsolvables, align 8, !tbaa !17
  %sub = sub nsw i32 %20, 2
  %21 = load i32, ptr %reuseids.addr, align 4, !tbaa !29
  call void @pool_free_solvable_block(ptr noundef %18, i32 noundef 2, i32 noundef %sub, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  ret void
}

declare ptr @solv_free(ptr noundef) #2

declare void @stringpool_free(ptr noundef) #2

declare void @pool_setvendorclasses(ptr noundef, ptr noundef) #2

declare void @queue_free(ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

declare void @repo_freedata(ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @pool_free_solvable_block(ptr noundef %pool, i32 noundef %start, i32 noundef %count, i32 noundef %reuseids) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %reuseids.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %start, ptr %start.addr, align 4, !tbaa !29
  store i32 %count, ptr %count.addr, align 4, !tbaa !29
  store i32 %reuseids, ptr %reuseids.addr, align 4, !tbaa !29
  %0 = load i32, ptr %count.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %reuseids.addr, align 4, !tbaa !29
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, ptr %start.addr, align 4, !tbaa !29
  %3 = load i32, ptr %count.addr, align 4, !tbaa !29
  %add = add nsw i32 %2, %3
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 9
  %5 = load i32, ptr %nsolvables, align 8, !tbaa !17
  %cmp = icmp eq i32 %add, %5
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %land.lhs.true
  %6 = load i32, ptr %start.addr, align 4, !tbaa !29
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables3 = getelementptr inbounds %struct.s_Pool, ptr %7, i32 0, i32 9
  store i32 %6, ptr %nsolvables3, align 8, !tbaa !17
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %solvables, align 8, !tbaa !16
  %10 = load i32, ptr %start.addr, align 4, !tbaa !29
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %9, i64 %idx.ext
  %11 = load i32, ptr %count.addr, align 4, !tbaa !29
  %conv = sext i32 %11 to i64
  %mul = mul i64 56, %conv
  call void @llvm.memset.p0.i64(ptr align 8 %add.ptr, i8 0, i64 %mul, i1 false)
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pool_setdisttype(ptr noundef %pool, i32 noundef %disttype) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %disttype.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %disttype, ptr %disttype.addr, align 4, !tbaa !29
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %disttype1 = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 12
  %1 = load i32, ptr %disttype1, align 4, !tbaa !18
  %2 = load i32, ptr %disttype.addr, align 4, !tbaa !29
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %disttype.addr, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ -1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @pool_get_flag(ptr noundef %pool, i32 noundef %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %flag, ptr %flag.addr, align 4, !tbaa !29
  %0 = load i32, ptr %flag.addr, align 4, !tbaa !29
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 10, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
    i32 11, label %sw.bb10
    i32 12, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %promoteepoch = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 33
  %2 = load i32, ptr %promoteepoch, align 8, !tbaa !51
  store i32 %2, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %forbidselfconflicts = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 40
  %4 = load i32, ptr %forbidselfconflicts, align 4, !tbaa !52
  store i32 %4, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %obsoleteusesprovides = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 35
  %6 = load i32, ptr %obsoleteusesprovides, align 8, !tbaa !53
  store i32 %6, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %implicitobsoleteusesprovides = getelementptr inbounds %struct.s_Pool, ptr %7, i32 0, i32 36
  %8 = load i32, ptr %implicitobsoleteusesprovides, align 4, !tbaa !54
  store i32 %8, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  %9 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %obsoleteusescolors = getelementptr inbounds %struct.s_Pool, ptr %9, i32 0, i32 37
  %10 = load i32, ptr %obsoleteusescolors, align 8, !tbaa !55
  store i32 %10, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  %11 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %implicitobsoleteusescolors = getelementptr inbounds %struct.s_Pool, ptr %11, i32 0, i32 38
  %12 = load i32, ptr %implicitobsoleteusescolors, align 4, !tbaa !56
  store i32 %12, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  %13 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %noinstalledobsoletes = getelementptr inbounds %struct.s_Pool, ptr %13, i32 0, i32 39
  %14 = load i32, ptr %noinstalledobsoletes, align 8, !tbaa !57
  store i32 %14, ptr %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  %15 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %havedistepoch = getelementptr inbounds %struct.s_Pool, ptr %15, i32 0, i32 34
  %16 = load i32, ptr %havedistepoch, align 4, !tbaa !58
  store i32 %16, ptr %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %entry
  %17 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %noobsoletesmultiversion = getelementptr inbounds %struct.s_Pool, ptr %17, i32 0, i32 41
  %18 = load i32, ptr %noobsoletesmultiversion, align 8, !tbaa !59
  store i32 %18, ptr %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %entry
  %19 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %addfileprovidesfiltered = getelementptr inbounds %struct.s_Pool, ptr %19, i32 0, i32 52
  %20 = load i32, ptr %addfileprovidesfiltered, align 8, !tbaa !60
  store i32 %20, ptr %retval, align 4
  br label %return

sw.bb10:                                          ; preds = %entry
  %21 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nowhatprovidesaux = getelementptr inbounds %struct.s_Pool, ptr %21, i32 0, i32 55
  %22 = load i32, ptr %nowhatprovidesaux, align 8, !tbaa !61
  store i32 %22, ptr %retval, align 4
  br label %return

sw.bb11:                                          ; preds = %entry
  %23 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovideswithdisabled = getelementptr inbounds %struct.s_Pool, ptr %23, i32 0, i32 60
  %24 = load i32, ptr %whatprovideswithdisabled, align 4, !tbaa !62
  store i32 %24, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @pool_set_flag(ptr noundef %pool, i32 noundef %flag, i32 noundef %value) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %old = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %flag, ptr %flag.addr, align 4, !tbaa !29
  store i32 %value, ptr %value.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %1 = load i32, ptr %flag.addr, align 4, !tbaa !29
  %call = call i32 @pool_get_flag(ptr noundef %0, i32 noundef %1)
  store i32 %call, ptr %old, align 4, !tbaa !29
  %2 = load i32, ptr %flag.addr, align 4, !tbaa !29
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 10, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
    i32 11, label %sw.bb10
    i32 12, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i32, ptr %value.addr, align 4, !tbaa !29
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %promoteepoch = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 33
  store i32 %3, ptr %promoteepoch, align 8, !tbaa !51
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %5 = load i32, ptr %value.addr, align 4, !tbaa !29
  %6 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %forbidselfconflicts = getelementptr inbounds %struct.s_Pool, ptr %6, i32 0, i32 40
  store i32 %5, ptr %forbidselfconflicts, align 4, !tbaa !52
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %7 = load i32, ptr %value.addr, align 4, !tbaa !29
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %obsoleteusesprovides = getelementptr inbounds %struct.s_Pool, ptr %8, i32 0, i32 35
  store i32 %7, ptr %obsoleteusesprovides, align 8, !tbaa !53
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %9 = load i32, ptr %value.addr, align 4, !tbaa !29
  %10 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %implicitobsoleteusesprovides = getelementptr inbounds %struct.s_Pool, ptr %10, i32 0, i32 36
  store i32 %9, ptr %implicitobsoleteusesprovides, align 4, !tbaa !54
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %11 = load i32, ptr %value.addr, align 4, !tbaa !29
  %12 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %obsoleteusescolors = getelementptr inbounds %struct.s_Pool, ptr %12, i32 0, i32 37
  store i32 %11, ptr %obsoleteusescolors, align 8, !tbaa !55
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %13 = load i32, ptr %value.addr, align 4, !tbaa !29
  %14 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %implicitobsoleteusescolors = getelementptr inbounds %struct.s_Pool, ptr %14, i32 0, i32 38
  store i32 %13, ptr %implicitobsoleteusescolors, align 4, !tbaa !56
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %15 = load i32, ptr %value.addr, align 4, !tbaa !29
  %16 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %noinstalledobsoletes = getelementptr inbounds %struct.s_Pool, ptr %16, i32 0, i32 39
  store i32 %15, ptr %noinstalledobsoletes, align 8, !tbaa !57
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %17 = load i32, ptr %value.addr, align 4, !tbaa !29
  %18 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %havedistepoch = getelementptr inbounds %struct.s_Pool, ptr %18, i32 0, i32 34
  store i32 %17, ptr %havedistepoch, align 4, !tbaa !58
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %19 = load i32, ptr %value.addr, align 4, !tbaa !29
  %20 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %noobsoletesmultiversion = getelementptr inbounds %struct.s_Pool, ptr %20, i32 0, i32 41
  store i32 %19, ptr %noobsoletesmultiversion, align 8, !tbaa !59
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %21 = load i32, ptr %value.addr, align 4, !tbaa !29
  %22 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %addfileprovidesfiltered = getelementptr inbounds %struct.s_Pool, ptr %22, i32 0, i32 52
  store i32 %21, ptr %addfileprovidesfiltered, align 8, !tbaa !60
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %23 = load i32, ptr %value.addr, align 4, !tbaa !29
  %24 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nowhatprovidesaux = getelementptr inbounds %struct.s_Pool, ptr %24, i32 0, i32 55
  store i32 %23, ptr %nowhatprovidesaux, align 8, !tbaa !61
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %25 = load i32, ptr %value.addr, align 4, !tbaa !29
  %26 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovideswithdisabled = getelementptr inbounds %struct.s_Pool, ptr %26, i32 0, i32 60
  store i32 %25, ptr %whatprovideswithdisabled, align 4, !tbaa !62
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %27 = load i32, ptr %old, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #10
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @pool_add_solvable(ptr noundef %pool) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %solvables, align 8, !tbaa !16
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables = getelementptr inbounds %struct.s_Pool, ptr %2, i32 0, i32 9
  %3 = load i32, ptr %nsolvables, align 8, !tbaa !17
  %conv = sext i32 %3 to i64
  %call = call ptr @solv_extend(ptr noundef %1, i64 noundef %conv, i64 noundef 1, i64 noundef 56, i64 noundef 255)
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables1 = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 8
  store ptr %call, ptr %solvables1, align 8, !tbaa !16
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables2 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 8
  %6 = load ptr, ptr %solvables2, align 8, !tbaa !16
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables3 = getelementptr inbounds %struct.s_Pool, ptr %7, i32 0, i32 9
  %8 = load i32, ptr %nsolvables3, align 8, !tbaa !17
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %6, i64 %idx.ext
  call void @llvm.memset.p0.i64(ptr align 8 %add.ptr, i8 0, i64 56, i1 false)
  %9 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables4 = getelementptr inbounds %struct.s_Pool, ptr %9, i32 0, i32 9
  %10 = load i32, ptr %nsolvables4, align 8, !tbaa !17
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %nsolvables4, align 8, !tbaa !17
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @solv_extend(ptr noundef %buf, i64 noundef %len, i64 noundef %nmemb, i64 noundef %size, i64 noundef %block) #3 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %block.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !25
  store i64 %nmemb, ptr %nmemb.addr, align 8, !tbaa !25
  store i64 %size, ptr %size.addr, align 8, !tbaa !25
  store i64 %block, ptr %block.addr, align 8, !tbaa !25
  %0 = load i64, ptr %nmemb.addr, align 8, !tbaa !25
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %len.addr, align 8, !tbaa !25
  %2 = load i64, ptr %block.addr, align 8, !tbaa !25
  %and = and i64 %1, %2
  %cmp1 = icmp eq i64 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %4 = load i64, ptr %len.addr, align 8, !tbaa !25
  %add = add i64 %4, 1
  %5 = load i64, ptr %size.addr, align 8, !tbaa !25
  %6 = load i64, ptr %block.addr, align 8, !tbaa !25
  %call = call ptr @solv_extend_realloc(ptr noundef %3, i64 noundef %add, i64 noundef %5, i64 noundef %6)
  store ptr %call, ptr %buf.addr, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end11

if.else:                                          ; preds = %entry
  %7 = load i64, ptr %len.addr, align 8, !tbaa !25
  %sub = sub i64 %7, 1
  %8 = load i64, ptr %block.addr, align 8, !tbaa !25
  %or = or i64 %sub, %8
  %9 = load i64, ptr %len.addr, align 8, !tbaa !25
  %10 = load i64, ptr %nmemb.addr, align 8, !tbaa !25
  %add3 = add i64 %9, %10
  %sub4 = sub i64 %add3, 1
  %11 = load i64, ptr %block.addr, align 8, !tbaa !25
  %or5 = or i64 %sub4, %11
  %cmp6 = icmp ne i64 %or, %or5
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.else
  %12 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %13 = load i64, ptr %len.addr, align 8, !tbaa !25
  %14 = load i64, ptr %nmemb.addr, align 8, !tbaa !25
  %add8 = add i64 %13, %14
  %15 = load i64, ptr %size.addr, align 8, !tbaa !25
  %16 = load i64, ptr %block.addr, align 8, !tbaa !25
  %call9 = call ptr @solv_extend_realloc(ptr noundef %12, i64 noundef %add8, i64 noundef %15, i64 noundef %16)
  store ptr %call9, ptr %buf.addr, align 8, !tbaa !4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %17 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define i32 @pool_add_solvable_block(ptr noundef %pool, i32 noundef %count) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %nsolvables = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %count, ptr %count.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %nsolvables) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables1 = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %nsolvables1, align 8, !tbaa !17
  store i32 %1, ptr %nsolvables, align 4, !tbaa !29
  %2 = load i32, ptr %count.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %nsolvables, align 4, !tbaa !29
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %solvables, align 8, !tbaa !16
  %6 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables2 = getelementptr inbounds %struct.s_Pool, ptr %6, i32 0, i32 9
  %7 = load i32, ptr %nsolvables2, align 8, !tbaa !17
  %conv = sext i32 %7 to i64
  %8 = load i32, ptr %count.addr, align 4, !tbaa !29
  %conv3 = sext i32 %8 to i64
  %call = call ptr @solv_extend(ptr noundef %5, i64 noundef %conv, i64 noundef %conv3, i64 noundef 56, i64 noundef 255)
  %9 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables4 = getelementptr inbounds %struct.s_Pool, ptr %9, i32 0, i32 8
  store ptr %call, ptr %solvables4, align 8, !tbaa !16
  %10 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables5 = getelementptr inbounds %struct.s_Pool, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %solvables5, align 8, !tbaa !16
  %12 = load i32, ptr %nsolvables, align 4, !tbaa !29
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %11, i64 %idx.ext
  %13 = load i32, ptr %count.addr, align 4, !tbaa !29
  %conv6 = sext i32 %13 to i64
  %mul = mul i64 56, %conv6
  call void @llvm.memset.p0.i64(ptr align 8 %add.ptr, i8 0, i64 %mul, i1 false)
  %14 = load i32, ptr %count.addr, align 4, !tbaa !29
  %15 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables7 = getelementptr inbounds %struct.s_Pool, ptr %15, i32 0, i32 9
  %16 = load i32, ptr %nsolvables7, align 8, !tbaa !17
  %add = add nsw i32 %16, %14
  store i32 %add, ptr %nsolvables7, align 8, !tbaa !17
  %17 = load i32, ptr %nsolvables, align 4, !tbaa !29
  store i32 %17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nsolvables) #10
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @pool_set_installed(ptr noundef %pool, ptr noundef %installed) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %installed.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %installed, ptr %installed.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %installed1 = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %installed1, align 8, !tbaa !63
  %2 = load ptr, ptr %installed.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %installed.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %installed2 = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 7
  store ptr %3, ptr %installed2, align 8, !tbaa !63
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  call void @pool_freewhatprovides(ptr noundef %5)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @pool_createwhatprovides(ptr noundef %pool) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %num = alloca i32, align 4
  %np = alloca i32, align 4
  %extra = alloca i32, align 4
  %off = alloca i32, align 4
  %s = alloca ptr, align 8
  %id = alloca i32, align 4
  %idp = alloca ptr, align 8
  %n = alloca i32, align 4
  %whatprovides = alloca ptr, align 8
  %whatprovidesdata = alloca ptr, align 8
  %dp = alloca ptr, align 8
  %whatprovidesauxdata = alloca ptr, align 8
  %whatprovidesaux = alloca ptr, align 8
  %now = alloca i32, align 4
  %pp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %rd = alloca ptr, align 8
  %pp138 = alloca ptr, align 8
  %auxid = alloca i32, align 4
  %rd172 = alloca ptr, align 8
  %str = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %np) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %extra) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %off) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %idp) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %whatprovides) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %whatprovidesdata) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %dp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %whatprovidesauxdata) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %whatprovidesaux) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %now) #10
  %call = call i32 @solv_timems(i32 noundef 0)
  store i32 %call, ptr %now, align 4, !tbaa !29
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 26
  %1 = load i32, ptr %debugmask, align 8, !tbaa !24
  %and = and i32 %1, 8
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %nsolvables, align 8, !tbaa !17
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables1 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 9
  %6 = load i32, ptr %nsolvables1, align 8, !tbaa !17
  %mul = mul nsw i32 %6, 56
  %div = sdiv i32 %mul, 1024
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %2, i32 noundef 8, ptr noundef @.str, i32 noundef %4, i32 noundef %div)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask3 = getelementptr inbounds %struct.s_Pool, ptr %7, i32 0, i32 26
  %8 = load i32, ptr %debugmask3, align 8, !tbaa !24
  %and4 = and i32 %8, 8
  %cmp5 = icmp ne i32 %and4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.body2
  %9 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss = getelementptr inbounds %struct.s_Pool, ptr %10, i32 0, i32 1
  %nstrings = getelementptr inbounds %struct.s_Stringpool, ptr %ss, i32 0, i32 1
  %11 = load i32, ptr %nstrings, align 8, !tbaa !64
  %12 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nrels = getelementptr inbounds %struct.s_Pool, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %nrels, align 8, !tbaa !15
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %9, i32 noundef 8, ptr noundef @.str.1, i32 noundef %11, i32 noundef %13)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body2
  br label %do.cond8

do.cond8:                                         ; preds = %if.end7
  br label %do.end9

do.end9:                                          ; preds = %do.cond8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  %14 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask11 = getelementptr inbounds %struct.s_Pool, ptr %14, i32 0, i32 26
  %15 = load i32, ptr %debugmask11, align 8, !tbaa !24
  %and12 = and i32 %15, 8
  %cmp13 = icmp ne i32 %and12, 0
  br i1 %cmp13, label %if.then14, label %if.end23

if.then14:                                        ; preds = %do.body10
  %16 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss15 = getelementptr inbounds %struct.s_Pool, ptr %17, i32 0, i32 1
  %nstrings16 = getelementptr inbounds %struct.s_Stringpool, ptr %ss15, i32 0, i32 1
  %18 = load i32, ptr %nstrings16, align 8, !tbaa !64
  %div17 = sdiv i32 %18, 256
  %19 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss18 = getelementptr inbounds %struct.s_Pool, ptr %19, i32 0, i32 1
  %sstrings = getelementptr inbounds %struct.s_Stringpool, ptr %ss18, i32 0, i32 3
  %20 = load i32, ptr %sstrings, align 8, !tbaa !65
  %div19 = udiv i32 %20, 1024
  %21 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nrels20 = getelementptr inbounds %struct.s_Pool, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %nrels20, align 8, !tbaa !15
  %mul21 = mul nsw i32 %22, 12
  %div22 = sdiv i32 %mul21, 1024
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %16, i32 noundef 8, ptr noundef @.str.2, i32 noundef %div17, i32 noundef %div19, i32 noundef %div22)
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %do.body10
  br label %do.cond24

do.cond24:                                        ; preds = %if.end23
  br label %do.end25

do.end25:                                         ; preds = %do.cond24
  %23 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss26 = getelementptr inbounds %struct.s_Pool, ptr %23, i32 0, i32 1
  %stringhashmask = getelementptr inbounds %struct.s_Stringpool, ptr %ss26, i32 0, i32 5
  %24 = load i32, ptr %stringhashmask, align 8, !tbaa !66
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end25
  %25 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %relhashmask = getelementptr inbounds %struct.s_Pool, ptr %25, i32 0, i32 44
  %26 = load i32, ptr %relhashmask, align 8, !tbaa !67
  %tobool27 = icmp ne i32 %26, 0
  br i1 %tobool27, label %if.then28, label %if.end43

if.then28:                                        ; preds = %lor.lhs.false, %do.end25
  br label %do.body29

do.body29:                                        ; preds = %if.then28
  %27 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask30 = getelementptr inbounds %struct.s_Pool, ptr %27, i32 0, i32 26
  %28 = load i32, ptr %debugmask30, align 8, !tbaa !24
  %and31 = and i32 %28, 8
  %cmp32 = icmp ne i32 %and31, 0
  br i1 %cmp32, label %if.then33, label %if.end40

if.then33:                                        ; preds = %do.body29
  %29 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss34 = getelementptr inbounds %struct.s_Pool, ptr %30, i32 0, i32 1
  %stringhashmask35 = getelementptr inbounds %struct.s_Stringpool, ptr %ss34, i32 0, i32 5
  %31 = load i32, ptr %stringhashmask35, align 8, !tbaa !66
  %add = add i32 %31, 1
  %div36 = udiv i32 %add, 256
  %32 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %relhashmask37 = getelementptr inbounds %struct.s_Pool, ptr %32, i32 0, i32 44
  %33 = load i32, ptr %relhashmask37, align 8, !tbaa !67
  %add38 = add i32 %33, 1
  %div39 = udiv i32 %add38, 256
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %29, i32 noundef 8, ptr noundef @.str.3, i32 noundef %div36, i32 noundef %div39)
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %do.body29
  br label %do.cond41

do.cond41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  br label %if.end43

if.end43:                                         ; preds = %do.end42, %lor.lhs.false
  %34 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  call void @pool_freeidhashes(ptr noundef %34)
  %35 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  call void @pool_freewhatprovides(ptr noundef %35)
  %36 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss44 = getelementptr inbounds %struct.s_Pool, ptr %36, i32 0, i32 1
  %nstrings45 = getelementptr inbounds %struct.s_Stringpool, ptr %ss44, i32 0, i32 1
  %37 = load i32, ptr %nstrings45, align 8, !tbaa !64
  store i32 %37, ptr %num, align 4, !tbaa !29
  %38 = load i32, ptr %num, align 4, !tbaa !29
  %conv = sext i32 %38 to i64
  %call46 = call ptr @solv_calloc_block(i64 noundef %conv, i64 noundef 4, i64 noundef 1023)
  store ptr %call46, ptr %whatprovides, align 8, !tbaa !4
  %39 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides47 = getelementptr inbounds %struct.s_Pool, ptr %39, i32 0, i32 18
  store ptr %call46, ptr %whatprovides47, align 8, !tbaa !38
  %40 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nrels48 = getelementptr inbounds %struct.s_Pool, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %nrels48, align 8, !tbaa !15
  %conv49 = sext i32 %41 to i64
  %call50 = call ptr @solv_calloc_block(i64 noundef %conv49, i64 noundef 4, i64 noundef 1023)
  %42 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides_rel = getelementptr inbounds %struct.s_Pool, ptr %42, i32 0, i32 19
  store ptr %call50, ptr %whatprovides_rel, align 8, !tbaa !39
  %43 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables51 = getelementptr inbounds %struct.s_Pool, ptr %43, i32 0, i32 9
  %44 = load i32, ptr %nsolvables51, align 8, !tbaa !17
  %sub = sub nsw i32 %44, 1
  store i32 %sub, ptr %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end43
  %45 = load i32, ptr %i, align 4, !tbaa !29
  %cmp52 = icmp sgt i32 %45, 0
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp) #10
  %46 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %46, i32 0, i32 8
  %47 = load ptr, ptr %solvables, align 8, !tbaa !16
  %48 = load i32, ptr %i, align 4, !tbaa !29
  %idx.ext = sext i32 %48 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %47, i64 %idx.ext
  store ptr %add.ptr, ptr %s, align 8, !tbaa !4
  %49 = load ptr, ptr %s, align 8, !tbaa !4
  %provides = getelementptr inbounds %struct.s_Solvable, ptr %49, i32 0, i32 5
  %50 = load i32, ptr %provides, align 8, !tbaa !68
  %tobool54 = icmp ne i32 %50, 0
  br i1 %tobool54, label %lor.lhs.false55, label %if.then60

lor.lhs.false55:                                  ; preds = %for.body
  %51 = load ptr, ptr %s, align 8, !tbaa !4
  %repo = getelementptr inbounds %struct.s_Solvable, ptr %51, i32 0, i32 4
  %52 = load ptr, ptr %repo, align 8, !tbaa !69
  %tobool56 = icmp ne ptr %52, null
  br i1 %tobool56, label %lor.lhs.false57, label %if.then60

lor.lhs.false57:                                  ; preds = %lor.lhs.false55
  %53 = load ptr, ptr %s, align 8, !tbaa !4
  %repo58 = getelementptr inbounds %struct.s_Solvable, ptr %53, i32 0, i32 4
  %54 = load ptr, ptr %repo58, align 8, !tbaa !69
  %disabled = getelementptr inbounds %struct.s_Repo, ptr %54, i32 0, i32 7
  %55 = load i32, ptr %disabled, align 4, !tbaa !70
  %tobool59 = icmp ne i32 %55, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %lor.lhs.false57, %lor.lhs.false55, %for.body
  store i32 12, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %lor.lhs.false57
  %56 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %57 = load ptr, ptr %s, align 8, !tbaa !4
  %call62 = call i32 @pool_installable_whatprovides(ptr noundef %56, ptr noundef %57)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.end61
  store i32 12, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  %58 = load ptr, ptr %s, align 8, !tbaa !4
  %repo66 = getelementptr inbounds %struct.s_Solvable, ptr %58, i32 0, i32 4
  %59 = load ptr, ptr %repo66, align 8, !tbaa !69
  %idarraydata = getelementptr inbounds %struct.s_Repo, ptr %59, i32 0, i32 10
  %60 = load ptr, ptr %idarraydata, align 8, !tbaa !72
  %61 = load ptr, ptr %s, align 8, !tbaa !4
  %provides67 = getelementptr inbounds %struct.s_Solvable, ptr %61, i32 0, i32 5
  %62 = load i32, ptr %provides67, align 8, !tbaa !68
  %idx.ext68 = zext i32 %62 to i64
  %add.ptr69 = getelementptr inbounds i32, ptr %60, i64 %idx.ext68
  store ptr %add.ptr69, ptr %pp, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end65
  %63 = load ptr, ptr %pp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %63, i32 1
  store ptr %incdec.ptr, ptr %pp, align 8, !tbaa !4
  %64 = load i32, ptr %63, align 4, !tbaa !29
  store i32 %64, ptr %id, align 4, !tbaa !29
  %cmp70 = icmp ne i32 %64, 0
  br i1 %cmp70, label %while.body, label %while.end79

while.body:                                       ; preds = %while.cond
  br label %while.cond72

while.cond72:                                     ; preds = %while.body76, %while.body
  %65 = load i32, ptr %id, align 4, !tbaa !29
  %and73 = and i32 %65, -2147483648
  %cmp74 = icmp ne i32 %and73, 0
  br i1 %cmp74, label %while.body76, label %while.end

while.body76:                                     ; preds = %while.cond72
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd) #10
  %66 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels = getelementptr inbounds %struct.s_Pool, ptr %66, i32 0, i32 2
  %67 = load ptr, ptr %rels, align 8, !tbaa !8
  %68 = load i32, ptr %id, align 4, !tbaa !29
  %xor = xor i32 %68, -2147483648
  %idx.ext77 = zext i32 %xor to i64
  %add.ptr78 = getelementptr inbounds %struct.s_Reldep, ptr %67, i64 %idx.ext77
  store ptr %add.ptr78, ptr %rd, align 8, !tbaa !4
  %69 = load ptr, ptr %rd, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.s_Reldep, ptr %69, i32 0, i32 0
  %70 = load i32, ptr %name, align 4, !tbaa !73
  store i32 %70, ptr %id, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd) #10
  br label %while.cond72, !llvm.loop !75

while.end:                                        ; preds = %while.cond72
  %71 = load ptr, ptr %whatprovides, align 8, !tbaa !4
  %72 = load i32, ptr %id, align 4, !tbaa !29
  %idxprom = sext i32 %72 to i64
  %arrayidx = getelementptr inbounds i32, ptr %71, i64 %idxprom
  %73 = load i32, ptr %arrayidx, align 4, !tbaa !29
  %inc = add i32 %73, 1
  store i32 %inc, ptr %arrayidx, align 4, !tbaa !29
  br label %while.cond, !llvm.loop !76

while.end79:                                      ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end79, %if.then64, %if.then60
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 12, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %74 = load i32, ptr %i, align 4, !tbaa !29
  %dec = add nsw i32 %74, -1
  store i32 %dec, ptr %i, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  store i32 4, ptr %off, align 4, !tbaa !29
  store i32 0, ptr %np, align 4, !tbaa !29
  store i32 0, ptr %i, align 4, !tbaa !29
  %75 = load ptr, ptr %whatprovides, align 8, !tbaa !4
  store ptr %75, ptr %idp, align 8, !tbaa !4
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc90, %for.end
  %76 = load i32, ptr %i, align 4, !tbaa !29
  %77 = load i32, ptr %num, align 4, !tbaa !29
  %cmp81 = icmp slt i32 %76, %77
  br i1 %cmp81, label %for.body83, label %for.end93

for.body83:                                       ; preds = %for.cond80
  %78 = load ptr, ptr %idp, align 8, !tbaa !4
  %79 = load i32, ptr %78, align 4, !tbaa !29
  store i32 %79, ptr %n, align 4, !tbaa !29
  %80 = load i32, ptr %n, align 4, !tbaa !29
  %tobool84 = icmp ne i32 %80, 0
  br i1 %tobool84, label %if.end86, label %if.then85

if.then85:                                        ; preds = %for.body83
  %81 = load ptr, ptr %idp, align 8, !tbaa !4
  store i32 1, ptr %81, align 4, !tbaa !29
  br label %for.inc90

if.end86:                                         ; preds = %for.body83
  %82 = load i32, ptr %n, align 4, !tbaa !29
  %83 = load i32, ptr %off, align 4, !tbaa !29
  %add87 = add i32 %83, %82
  store i32 %add87, ptr %off, align 4, !tbaa !29
  %84 = load i32, ptr %off, align 4, !tbaa !29
  %inc88 = add i32 %84, 1
  store i32 %inc88, ptr %off, align 4, !tbaa !29
  %85 = load ptr, ptr %idp, align 8, !tbaa !4
  store i32 %84, ptr %85, align 4, !tbaa !29
  %86 = load i32, ptr %np, align 4, !tbaa !29
  %inc89 = add nsw i32 %86, 1
  store i32 %inc89, ptr %np, align 4, !tbaa !29
  br label %for.inc90

for.inc90:                                        ; preds = %if.end86, %if.then85
  %87 = load i32, ptr %i, align 4, !tbaa !29
  %inc91 = add nsw i32 %87, 1
  store i32 %inc91, ptr %i, align 4, !tbaa !29
  %88 = load ptr, ptr %idp, align 8, !tbaa !4
  %incdec.ptr92 = getelementptr inbounds i32, ptr %88, i32 1
  store ptr %incdec.ptr92, ptr %idp, align 8, !tbaa !4
  br label %for.cond80, !llvm.loop !78

for.end93:                                        ; preds = %for.cond80
  br label %do.body94

do.body94:                                        ; preds = %for.end93
  %89 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask95 = getelementptr inbounds %struct.s_Pool, ptr %89, i32 0, i32 26
  %90 = load i32, ptr %debugmask95, align 8, !tbaa !24
  %and96 = and i32 %90, 8
  %cmp97 = icmp ne i32 %and96, 0
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %do.body94
  %91 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %92 = load i32, ptr %np, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %91, i32 noundef 8, ptr noundef @.str.4, i32 noundef %92)
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %do.body94
  br label %do.cond101

do.cond101:                                       ; preds = %if.end100
  br label %do.end102

do.end102:                                        ; preds = %do.cond101
  %93 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nrels103 = getelementptr inbounds %struct.s_Pool, ptr %93, i32 0, i32 3
  %94 = load i32, ptr %nrels103, align 8, !tbaa !15
  %mul104 = mul nsw i32 2, %94
  store i32 %mul104, ptr %extra, align 4, !tbaa !29
  %95 = load i32, ptr %extra, align 4, !tbaa !29
  %cmp105 = icmp slt i32 %95, 256
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %do.end102
  store i32 256, ptr %extra, align 4, !tbaa !29
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %do.end102
  br label %do.body109

do.body109:                                       ; preds = %if.end108
  %96 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask110 = getelementptr inbounds %struct.s_Pool, ptr %96, i32 0, i32 26
  %97 = load i32, ptr %debugmask110, align 8, !tbaa !24
  %and111 = and i32 %97, 8
  %cmp112 = icmp ne i32 %and111, 0
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %do.body109
  %98 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %99 = load i32, ptr %off, align 4, !tbaa !29
  %100 = load i32, ptr %extra, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %98, i32 noundef 8, ptr noundef @.str.5, i32 noundef %99, i32 noundef %100)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %do.body109
  br label %do.cond116

do.cond116:                                       ; preds = %if.end115
  br label %do.end117

do.end117:                                        ; preds = %do.cond116
  %101 = load i32, ptr %off, align 4, !tbaa !29
  %102 = load i32, ptr %extra, align 4, !tbaa !29
  %add118 = add i32 %101, %102
  %conv119 = zext i32 %add118 to i64
  %call120 = call ptr @solv_calloc(i64 noundef %conv119, i64 noundef 4)
  store ptr %call120, ptr %whatprovidesdata, align 8, !tbaa !4
  %103 = load ptr, ptr %whatprovidesdata, align 8, !tbaa !4
  %arrayidx121 = getelementptr inbounds i32, ptr %103, i64 2
  store i32 1, ptr %arrayidx121, align 4, !tbaa !29
  store ptr null, ptr %whatprovidesauxdata, align 8, !tbaa !4
  %104 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nowhatprovidesaux = getelementptr inbounds %struct.s_Pool, ptr %104, i32 0, i32 55
  %105 = load i32, ptr %nowhatprovidesaux, align 8, !tbaa !61
  %tobool122 = icmp ne i32 %105, 0
  br i1 %tobool122, label %if.end131, label %if.then123

if.then123:                                       ; preds = %do.end117
  %106 = load i32, ptr %num, align 4, !tbaa !29
  %conv124 = sext i32 %106 to i64
  %call125 = call ptr @solv_calloc(i64 noundef %conv124, i64 noundef 4)
  store ptr %call125, ptr %whatprovidesaux, align 8, !tbaa !4
  %107 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesaux126 = getelementptr inbounds %struct.s_Pool, ptr %107, i32 0, i32 56
  store ptr %call125, ptr %whatprovidesaux126, align 8, !tbaa !43
  %108 = load i32, ptr %num, align 4, !tbaa !29
  %109 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxoff = getelementptr inbounds %struct.s_Pool, ptr %109, i32 0, i32 57
  store i32 %108, ptr %whatprovidesauxoff, align 8, !tbaa !45
  %110 = load i32, ptr %off, align 4, !tbaa !29
  %111 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdataoff = getelementptr inbounds %struct.s_Pool, ptr %111, i32 0, i32 59
  store i32 %110, ptr %whatprovidesauxdataoff, align 8, !tbaa !46
  %112 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdataoff127 = getelementptr inbounds %struct.s_Pool, ptr %112, i32 0, i32 59
  %113 = load i32, ptr %whatprovidesauxdataoff127, align 8, !tbaa !46
  %conv128 = zext i32 %113 to i64
  %call129 = call ptr @solv_calloc(i64 noundef %conv128, i64 noundef 4)
  store ptr %call129, ptr %whatprovidesauxdata, align 8, !tbaa !4
  %114 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdata130 = getelementptr inbounds %struct.s_Pool, ptr %114, i32 0, i32 58
  store ptr %call129, ptr %whatprovidesauxdata130, align 8, !tbaa !44
  br label %if.end131

if.end131:                                        ; preds = %if.then123, %do.end117
  %115 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables132 = getelementptr inbounds %struct.s_Pool, ptr %115, i32 0, i32 9
  %116 = load i32, ptr %nsolvables132, align 8, !tbaa !17
  %sub133 = sub nsw i32 %116, 1
  store i32 %sub133, ptr %i, align 4, !tbaa !29
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc202, %if.end131
  %117 = load i32, ptr %i, align 4, !tbaa !29
  %cmp135 = icmp sgt i32 %117, 0
  br i1 %cmp135, label %for.body137, label %for.end204

for.body137:                                      ; preds = %for.cond134
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp138) #10
  %118 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables139 = getelementptr inbounds %struct.s_Pool, ptr %118, i32 0, i32 8
  %119 = load ptr, ptr %solvables139, align 8, !tbaa !16
  %120 = load i32, ptr %i, align 4, !tbaa !29
  %idx.ext140 = sext i32 %120 to i64
  %add.ptr141 = getelementptr inbounds %struct.s_Solvable, ptr %119, i64 %idx.ext140
  store ptr %add.ptr141, ptr %s, align 8, !tbaa !4
  %121 = load ptr, ptr %s, align 8, !tbaa !4
  %provides142 = getelementptr inbounds %struct.s_Solvable, ptr %121, i32 0, i32 5
  %122 = load i32, ptr %provides142, align 8, !tbaa !68
  %tobool143 = icmp ne i32 %122, 0
  br i1 %tobool143, label %lor.lhs.false144, label %if.then151

lor.lhs.false144:                                 ; preds = %for.body137
  %123 = load ptr, ptr %s, align 8, !tbaa !4
  %repo145 = getelementptr inbounds %struct.s_Solvable, ptr %123, i32 0, i32 4
  %124 = load ptr, ptr %repo145, align 8, !tbaa !69
  %tobool146 = icmp ne ptr %124, null
  br i1 %tobool146, label %lor.lhs.false147, label %if.then151

lor.lhs.false147:                                 ; preds = %lor.lhs.false144
  %125 = load ptr, ptr %s, align 8, !tbaa !4
  %repo148 = getelementptr inbounds %struct.s_Solvable, ptr %125, i32 0, i32 4
  %126 = load ptr, ptr %repo148, align 8, !tbaa !69
  %disabled149 = getelementptr inbounds %struct.s_Repo, ptr %126, i32 0, i32 7
  %127 = load i32, ptr %disabled149, align 4, !tbaa !70
  %tobool150 = icmp ne i32 %127, 0
  br i1 %tobool150, label %if.then151, label %if.end152

if.then151:                                       ; preds = %lor.lhs.false147, %lor.lhs.false144, %for.body137
  store i32 26, ptr %cleanup.dest.slot, align 4
  br label %cleanup199

if.end152:                                        ; preds = %lor.lhs.false147
  %128 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %129 = load ptr, ptr %s, align 8, !tbaa !4
  %call153 = call i32 @pool_installable_whatprovides(ptr noundef %128, ptr noundef %129)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.end156, label %if.then155

if.then155:                                       ; preds = %if.end152
  store i32 26, ptr %cleanup.dest.slot, align 4
  br label %cleanup199

if.end156:                                        ; preds = %if.end152
  %130 = load ptr, ptr %s, align 8, !tbaa !4
  %repo157 = getelementptr inbounds %struct.s_Solvable, ptr %130, i32 0, i32 4
  %131 = load ptr, ptr %repo157, align 8, !tbaa !69
  %idarraydata158 = getelementptr inbounds %struct.s_Repo, ptr %131, i32 0, i32 10
  %132 = load ptr, ptr %idarraydata158, align 8, !tbaa !72
  %133 = load ptr, ptr %s, align 8, !tbaa !4
  %provides159 = getelementptr inbounds %struct.s_Solvable, ptr %133, i32 0, i32 5
  %134 = load i32, ptr %provides159, align 8, !tbaa !68
  %idx.ext160 = zext i32 %134 to i64
  %add.ptr161 = getelementptr inbounds i32, ptr %132, i64 %idx.ext160
  store ptr %add.ptr161, ptr %pp138, align 8, !tbaa !4
  br label %while.cond162

while.cond162:                                    ; preds = %if.end197, %if.end156
  %135 = load ptr, ptr %pp138, align 8, !tbaa !4
  %incdec.ptr163 = getelementptr inbounds i32, ptr %135, i32 1
  store ptr %incdec.ptr163, ptr %pp138, align 8, !tbaa !4
  %136 = load i32, ptr %135, align 4, !tbaa !29
  store i32 %136, ptr %id, align 4, !tbaa !29
  %cmp164 = icmp ne i32 %136, 0
  br i1 %cmp164, label %while.body166, label %while.end198

while.body166:                                    ; preds = %while.cond162
  call void @llvm.lifetime.start.p0(i64 4, ptr %auxid) #10
  %137 = load i32, ptr %id, align 4, !tbaa !29
  store i32 %137, ptr %auxid, align 4, !tbaa !29
  br label %while.cond167

while.cond167:                                    ; preds = %while.body171, %while.body166
  %138 = load i32, ptr %id, align 4, !tbaa !29
  %and168 = and i32 %138, -2147483648
  %cmp169 = icmp ne i32 %and168, 0
  br i1 %cmp169, label %while.body171, label %while.end178

while.body171:                                    ; preds = %while.cond167
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd172) #10
  %139 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels173 = getelementptr inbounds %struct.s_Pool, ptr %139, i32 0, i32 2
  %140 = load ptr, ptr %rels173, align 8, !tbaa !8
  %141 = load i32, ptr %id, align 4, !tbaa !29
  %xor174 = xor i32 %141, -2147483648
  %idx.ext175 = zext i32 %xor174 to i64
  %add.ptr176 = getelementptr inbounds %struct.s_Reldep, ptr %140, i64 %idx.ext175
  store ptr %add.ptr176, ptr %rd172, align 8, !tbaa !4
  %142 = load ptr, ptr %rd172, align 8, !tbaa !4
  %name177 = getelementptr inbounds %struct.s_Reldep, ptr %142, i32 0, i32 0
  %143 = load i32, ptr %name177, align 4, !tbaa !73
  store i32 %143, ptr %id, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd172) #10
  br label %while.cond167, !llvm.loop !79

while.end178:                                     ; preds = %while.cond167
  %144 = load ptr, ptr %whatprovidesdata, align 8, !tbaa !4
  %145 = load ptr, ptr %whatprovides, align 8, !tbaa !4
  %146 = load i32, ptr %id, align 4, !tbaa !29
  %idxprom179 = sext i32 %146 to i64
  %arrayidx180 = getelementptr inbounds i32, ptr %145, i64 %idxprom179
  %147 = load i32, ptr %arrayidx180, align 4, !tbaa !29
  %idx.ext181 = zext i32 %147 to i64
  %add.ptr182 = getelementptr inbounds i32, ptr %144, i64 %idx.ext181
  store ptr %add.ptr182, ptr %dp, align 8, !tbaa !4
  %148 = load ptr, ptr %dp, align 8, !tbaa !4
  %149 = load i32, ptr %148, align 4, !tbaa !29
  %150 = load i32, ptr %i, align 4, !tbaa !29
  %cmp183 = icmp ne i32 %149, %150
  br i1 %cmp183, label %if.then185, label %if.else

if.then185:                                       ; preds = %while.end178
  %151 = load i32, ptr %i, align 4, !tbaa !29
  %152 = load ptr, ptr %dp, align 8, !tbaa !4
  %arrayidx186 = getelementptr inbounds i32, ptr %152, i64 -1
  store i32 %151, ptr %arrayidx186, align 4, !tbaa !29
  %153 = load ptr, ptr %whatprovides, align 8, !tbaa !4
  %154 = load i32, ptr %id, align 4, !tbaa !29
  %idxprom187 = sext i32 %154 to i64
  %arrayidx188 = getelementptr inbounds i32, ptr %153, i64 %idxprom187
  %155 = load i32, ptr %arrayidx188, align 4, !tbaa !29
  %dec189 = add i32 %155, -1
  store i32 %dec189, ptr %arrayidx188, align 4, !tbaa !29
  br label %if.end190

if.else:                                          ; preds = %while.end178
  store i32 1, ptr %auxid, align 4, !tbaa !29
  br label %if.end190

if.end190:                                        ; preds = %if.else, %if.then185
  %156 = load ptr, ptr %whatprovidesauxdata, align 8, !tbaa !4
  %tobool191 = icmp ne ptr %156, null
  br i1 %tobool191, label %if.then192, label %if.end197

if.then192:                                       ; preds = %if.end190
  %157 = load i32, ptr %auxid, align 4, !tbaa !29
  %158 = load ptr, ptr %whatprovidesauxdata, align 8, !tbaa !4
  %159 = load ptr, ptr %whatprovides, align 8, !tbaa !4
  %160 = load i32, ptr %id, align 4, !tbaa !29
  %idxprom193 = sext i32 %160 to i64
  %arrayidx194 = getelementptr inbounds i32, ptr %159, i64 %idxprom193
  %161 = load i32, ptr %arrayidx194, align 4, !tbaa !29
  %idxprom195 = zext i32 %161 to i64
  %arrayidx196 = getelementptr inbounds i32, ptr %158, i64 %idxprom195
  store i32 %157, ptr %arrayidx196, align 4, !tbaa !29
  br label %if.end197

if.end197:                                        ; preds = %if.then192, %if.end190
  call void @llvm.lifetime.end.p0(i64 4, ptr %auxid) #10
  br label %while.cond162, !llvm.loop !80

while.end198:                                     ; preds = %while.cond162
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup199

cleanup199:                                       ; preds = %while.end198, %if.then155, %if.then151
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp138) #10
  %cleanup.dest200 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest200, label %unreachable [
    i32 0, label %cleanup.cont201
    i32 26, label %for.inc202
  ]

cleanup.cont201:                                  ; preds = %cleanup199
  br label %for.inc202

for.inc202:                                       ; preds = %cleanup.cont201, %cleanup199
  %162 = load i32, ptr %i, align 4, !tbaa !29
  %dec203 = add nsw i32 %162, -1
  store i32 %dec203, ptr %i, align 4, !tbaa !29
  br label %for.cond134, !llvm.loop !81

for.end204:                                       ; preds = %for.cond134
  %163 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesaux205 = getelementptr inbounds %struct.s_Pool, ptr %163, i32 0, i32 56
  %164 = load ptr, ptr %whatprovidesaux205, align 8, !tbaa !43
  %tobool206 = icmp ne ptr %164, null
  br i1 %tobool206, label %if.then207, label %if.end212

if.then207:                                       ; preds = %for.end204
  %165 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesaux208 = getelementptr inbounds %struct.s_Pool, ptr %165, i32 0, i32 56
  %166 = load ptr, ptr %whatprovidesaux208, align 8, !tbaa !43
  %167 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides209 = getelementptr inbounds %struct.s_Pool, ptr %167, i32 0, i32 18
  %168 = load ptr, ptr %whatprovides209, align 8, !tbaa !38
  %169 = load i32, ptr %num, align 4, !tbaa !29
  %conv210 = sext i32 %169 to i64
  %mul211 = mul i64 %conv210, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %166, ptr align 4 %168, i64 %mul211, i1 false)
  br label %if.end212

if.end212:                                        ; preds = %if.then207, %for.end204
  %170 = load ptr, ptr %whatprovidesdata, align 8, !tbaa !4
  %171 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata213 = getelementptr inbounds %struct.s_Pool, ptr %171, i32 0, i32 20
  store ptr %170, ptr %whatprovidesdata213, align 8, !tbaa !40
  %172 = load i32, ptr %off, align 4, !tbaa !29
  %173 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataoff = getelementptr inbounds %struct.s_Pool, ptr %173, i32 0, i32 21
  store i32 %172, ptr %whatprovidesdataoff, align 8, !tbaa !41
  %174 = load i32, ptr %extra, align 4, !tbaa !29
  %175 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataleft = getelementptr inbounds %struct.s_Pool, ptr %175, i32 0, i32 22
  store i32 %174, ptr %whatprovidesdataleft, align 4, !tbaa !42
  %176 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  call void @pool_shrink_whatprovides(ptr noundef %176)
  %177 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesaux214 = getelementptr inbounds %struct.s_Pool, ptr %177, i32 0, i32 56
  %178 = load ptr, ptr %whatprovidesaux214, align 8, !tbaa !43
  %tobool215 = icmp ne ptr %178, null
  br i1 %tobool215, label %if.then216, label %if.end217

if.then216:                                       ; preds = %if.end212
  %179 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  call void @pool_shrink_whatprovidesaux(ptr noundef %179)
  br label %if.end217

if.end217:                                        ; preds = %if.then216, %if.end212
  br label %do.body218

do.body218:                                       ; preds = %if.end217
  %180 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask219 = getelementptr inbounds %struct.s_Pool, ptr %180, i32 0, i32 26
  %181 = load i32, ptr %debugmask219, align 8, !tbaa !24
  %and220 = and i32 %181, 8
  %cmp221 = icmp ne i32 %and220, 0
  br i1 %cmp221, label %if.then223, label %if.end234

if.then223:                                       ; preds = %do.body218
  %182 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %183 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss224 = getelementptr inbounds %struct.s_Pool, ptr %183, i32 0, i32 1
  %nstrings225 = getelementptr inbounds %struct.s_Stringpool, ptr %ss224, i32 0, i32 1
  %184 = load i32, ptr %nstrings225, align 8, !tbaa !64
  %185 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nrels226 = getelementptr inbounds %struct.s_Pool, ptr %185, i32 0, i32 3
  %186 = load i32, ptr %nrels226, align 8, !tbaa !15
  %add227 = add nsw i32 %184, %186
  %add228 = add nsw i32 %add227, 1023
  %div229 = sdiv i32 %add228, 256
  %187 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataoff230 = getelementptr inbounds %struct.s_Pool, ptr %187, i32 0, i32 21
  %188 = load i32, ptr %whatprovidesdataoff230, align 8, !tbaa !41
  %189 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataleft231 = getelementptr inbounds %struct.s_Pool, ptr %189, i32 0, i32 22
  %190 = load i32, ptr %whatprovidesdataleft231, align 4, !tbaa !42
  %add232 = add i32 %188, %190
  %div233 = udiv i32 %add232, 256
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %182, i32 noundef 8, ptr noundef @.str.6, i32 noundef %div229, i32 noundef %div233)
  br label %if.end234

if.end234:                                        ; preds = %if.then223, %do.body218
  br label %do.cond235

do.cond235:                                       ; preds = %if.end234
  br label %do.end236

do.end236:                                        ; preds = %do.cond235
  %191 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesaux237 = getelementptr inbounds %struct.s_Pool, ptr %191, i32 0, i32 56
  %192 = load ptr, ptr %whatprovidesaux237, align 8, !tbaa !43
  %tobool238 = icmp ne ptr %192, null
  br i1 %tobool238, label %if.then239, label %if.end253

if.then239:                                       ; preds = %do.end236
  br label %do.body240

do.body240:                                       ; preds = %if.then239
  %193 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask241 = getelementptr inbounds %struct.s_Pool, ptr %193, i32 0, i32 26
  %194 = load i32, ptr %debugmask241, align 8, !tbaa !24
  %and242 = and i32 %194, 8
  %cmp243 = icmp ne i32 %and242, 0
  br i1 %cmp243, label %if.then245, label %if.end250

if.then245:                                       ; preds = %do.body240
  %195 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %196 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxoff246 = getelementptr inbounds %struct.s_Pool, ptr %196, i32 0, i32 57
  %197 = load i32, ptr %whatprovidesauxoff246, align 8, !tbaa !45
  %div247 = udiv i32 %197, 256
  %198 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdataoff248 = getelementptr inbounds %struct.s_Pool, ptr %198, i32 0, i32 59
  %199 = load i32, ptr %whatprovidesauxdataoff248, align 8, !tbaa !46
  %div249 = udiv i32 %199, 256
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %195, i32 noundef 8, ptr noundef @.str.7, i32 noundef %div247, i32 noundef %div249)
  br label %if.end250

if.end250:                                        ; preds = %if.then245, %do.body240
  br label %do.cond251

do.cond251:                                       ; preds = %if.end250
  br label %do.end252

do.end252:                                        ; preds = %do.cond251
  br label %if.end253

if.end253:                                        ; preds = %do.end252, %do.end236
  %200 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %lazywhatprovidesq = getelementptr inbounds %struct.s_Pool, ptr %200, i32 0, i32 54
  call void @queue_empty(ptr noundef %lazywhatprovidesq)
  %201 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %addedfileprovides = getelementptr inbounds %struct.s_Pool, ptr %201, i32 0, i32 53
  %202 = load i32, ptr %addedfileprovides, align 4, !tbaa !82
  %tobool254 = icmp ne i32 %202, 0
  br i1 %tobool254, label %lor.lhs.false257, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end253
  %203 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %disttype = getelementptr inbounds %struct.s_Pool, ptr %203, i32 0, i32 12
  %204 = load i32, ptr %disttype, align 4, !tbaa !18
  %cmp255 = icmp eq i32 %204, 0
  br i1 %cmp255, label %if.then261, label %lor.lhs.false257

lor.lhs.false257:                                 ; preds = %land.lhs.true, %if.end253
  %205 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %addedfileprovides258 = getelementptr inbounds %struct.s_Pool, ptr %205, i32 0, i32 53
  %206 = load i32, ptr %addedfileprovides258, align 4, !tbaa !82
  %cmp259 = icmp eq i32 %206, 1
  br i1 %cmp259, label %if.then261, label %if.end337

if.then261:                                       ; preds = %lor.lhs.false257, %land.lhs.true
  %207 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %addedfileprovides262 = getelementptr inbounds %struct.s_Pool, ptr %207, i32 0, i32 53
  %208 = load i32, ptr %addedfileprovides262, align 4, !tbaa !82
  %tobool263 = icmp ne i32 %208, 0
  br i1 %tobool263, label %if.end274, label %if.then264

if.then264:                                       ; preds = %if.then261
  br label %do.body265

do.body265:                                       ; preds = %if.then264
  %209 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask266 = getelementptr inbounds %struct.s_Pool, ptr %209, i32 0, i32 26
  %210 = load i32, ptr %debugmask266, align 8, !tbaa !24
  %and267 = and i32 %210, 8
  %cmp268 = icmp ne i32 %and267, 0
  br i1 %cmp268, label %if.then270, label %if.end271

if.then270:                                       ; preds = %do.body265
  %211 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %211, i32 noundef 8, ptr noundef @.str.8)
  br label %if.end271

if.end271:                                        ; preds = %if.then270, %do.body265
  br label %do.cond272

do.cond272:                                       ; preds = %if.end271
  br label %do.end273

do.end273:                                        ; preds = %do.cond272
  br label %if.end274

if.end274:                                        ; preds = %do.end273, %if.then261
  store i32 1, ptr %i, align 4, !tbaa !29
  br label %for.cond275

for.cond275:                                      ; preds = %for.inc323, %if.end274
  %212 = load i32, ptr %i, align 4, !tbaa !29
  %213 = load i32, ptr %num, align 4, !tbaa !29
  %cmp276 = icmp slt i32 %212, %213
  br i1 %cmp276, label %for.body278, label %for.end325

for.body278:                                      ; preds = %for.cond275
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #10
  %214 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss279 = getelementptr inbounds %struct.s_Pool, ptr %214, i32 0, i32 1
  %stringspace = getelementptr inbounds %struct.s_Stringpool, ptr %ss279, i32 0, i32 2
  %215 = load ptr, ptr %stringspace, align 8, !tbaa !83
  %216 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss280 = getelementptr inbounds %struct.s_Pool, ptr %216, i32 0, i32 1
  %strings = getelementptr inbounds %struct.s_Stringpool, ptr %ss280, i32 0, i32 0
  %217 = load ptr, ptr %strings, align 8, !tbaa !84
  %218 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom281 = sext i32 %218 to i64
  %arrayidx282 = getelementptr inbounds i32, ptr %217, i64 %idxprom281
  %219 = load i32, ptr %arrayidx282, align 4, !tbaa !29
  %idx.ext283 = zext i32 %219 to i64
  %add.ptr284 = getelementptr inbounds i8, ptr %215, i64 %idx.ext283
  store ptr %add.ptr284, ptr %str, align 8, !tbaa !4
  %220 = load ptr, ptr %str, align 8, !tbaa !4
  %arrayidx285 = getelementptr inbounds i8, ptr %220, i64 0
  %221 = load i8, ptr %arrayidx285, align 1, !tbaa !85
  %conv286 = sext i8 %221 to i32
  %cmp287 = icmp ne i32 %conv286, 47
  br i1 %cmp287, label %if.then289, label %if.end290

if.then289:                                       ; preds = %for.body278
  store i32 39, ptr %cleanup.dest.slot, align 4
  br label %cleanup320

if.end290:                                        ; preds = %for.body278
  %222 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %addedfileprovides291 = getelementptr inbounds %struct.s_Pool, ptr %222, i32 0, i32 53
  %223 = load i32, ptr %addedfileprovides291, align 4, !tbaa !82
  %cmp292 = icmp eq i32 %223, 1
  br i1 %cmp292, label %land.lhs.true294, label %if.end298

land.lhs.true294:                                 ; preds = %if.end290
  %224 = load ptr, ptr %str, align 8, !tbaa !4
  %call295 = call i32 @repodata_filelistfilter_matches(ptr noundef null, ptr noundef %224)
  %tobool296 = icmp ne i32 %call295, 0
  br i1 %tobool296, label %if.then297, label %if.end298

if.then297:                                       ; preds = %land.lhs.true294
  store i32 39, ptr %cleanup.dest.slot, align 4
  br label %cleanup320

if.end298:                                        ; preds = %land.lhs.true294, %if.end290
  %225 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides299 = getelementptr inbounds %struct.s_Pool, ptr %225, i32 0, i32 18
  %226 = load ptr, ptr %whatprovides299, align 8, !tbaa !38
  %227 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom300 = sext i32 %227 to i64
  %arrayidx301 = getelementptr inbounds i32, ptr %226, i64 %idxprom300
  %228 = load i32, ptr %arrayidx301, align 4, !tbaa !29
  %cmp302 = icmp ugt i32 %228, 1
  br i1 %cmp302, label %if.then304, label %if.end309

if.then304:                                       ; preds = %if.end298
  %229 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %lazywhatprovidesq305 = getelementptr inbounds %struct.s_Pool, ptr %229, i32 0, i32 54
  %230 = load i32, ptr %i, align 4, !tbaa !29
  %231 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides306 = getelementptr inbounds %struct.s_Pool, ptr %231, i32 0, i32 18
  %232 = load ptr, ptr %whatprovides306, align 8, !tbaa !38
  %233 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom307 = sext i32 %233 to i64
  %arrayidx308 = getelementptr inbounds i32, ptr %232, i64 %idxprom307
  %234 = load i32, ptr %arrayidx308, align 4, !tbaa !29
  call void @queue_push2(ptr noundef %lazywhatprovidesq305, i32 noundef %230, i32 noundef %234)
  br label %if.end309

if.end309:                                        ; preds = %if.then304, %if.end298
  %235 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides310 = getelementptr inbounds %struct.s_Pool, ptr %235, i32 0, i32 18
  %236 = load ptr, ptr %whatprovides310, align 8, !tbaa !38
  %237 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom311 = sext i32 %237 to i64
  %arrayidx312 = getelementptr inbounds i32, ptr %236, i64 %idxprom311
  store i32 0, ptr %arrayidx312, align 4, !tbaa !29
  %238 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesaux313 = getelementptr inbounds %struct.s_Pool, ptr %238, i32 0, i32 56
  %239 = load ptr, ptr %whatprovidesaux313, align 8, !tbaa !43
  %tobool314 = icmp ne ptr %239, null
  br i1 %tobool314, label %if.then315, label %if.end319

if.then315:                                       ; preds = %if.end309
  %240 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesaux316 = getelementptr inbounds %struct.s_Pool, ptr %240, i32 0, i32 56
  %241 = load ptr, ptr %whatprovidesaux316, align 8, !tbaa !43
  %242 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom317 = sext i32 %242 to i64
  %arrayidx318 = getelementptr inbounds i32, ptr %241, i64 %idxprom317
  store i32 0, ptr %arrayidx318, align 4, !tbaa !29
  br label %if.end319

if.end319:                                        ; preds = %if.then315, %if.end309
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup320

cleanup320:                                       ; preds = %if.end319, %if.then297, %if.then289
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #10
  %cleanup.dest321 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest321, label %unreachable [
    i32 0, label %cleanup.cont322
    i32 39, label %for.inc323
  ]

cleanup.cont322:                                  ; preds = %cleanup320
  br label %for.inc323

for.inc323:                                       ; preds = %cleanup.cont322, %cleanup320
  %243 = load i32, ptr %i, align 4, !tbaa !29
  %inc324 = add nsw i32 %243, 1
  store i32 %inc324, ptr %i, align 4, !tbaa !29
  br label %for.cond275, !llvm.loop !86

for.end325:                                       ; preds = %for.cond275
  br label %do.body326

do.body326:                                       ; preds = %for.end325
  %244 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask327 = getelementptr inbounds %struct.s_Pool, ptr %244, i32 0, i32 26
  %245 = load i32, ptr %debugmask327, align 8, !tbaa !24
  %and328 = and i32 %245, 8
  %cmp329 = icmp ne i32 %and328, 0
  br i1 %cmp329, label %if.then331, label %if.end334

if.then331:                                       ; preds = %do.body326
  %246 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %247 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %lazywhatprovidesq332 = getelementptr inbounds %struct.s_Pool, ptr %247, i32 0, i32 54
  %count = getelementptr inbounds %struct.s_Queue, ptr %lazywhatprovidesq332, i32 0, i32 1
  %248 = load i32, ptr %count, align 8, !tbaa !87
  %div333 = sdiv i32 %248, 2
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %246, i32 noundef 8, ptr noundef @.str.9, i32 noundef %div333)
  br label %if.end334

if.end334:                                        ; preds = %if.then331, %do.body326
  br label %do.cond335

do.cond335:                                       ; preds = %if.end334
  br label %do.end336

do.end336:                                        ; preds = %do.cond335
  br label %if.end337

if.end337:                                        ; preds = %do.end336, %lor.lhs.false257
  br label %do.body338

do.body338:                                       ; preds = %if.end337
  %249 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask339 = getelementptr inbounds %struct.s_Pool, ptr %249, i32 0, i32 26
  %250 = load i32, ptr %debugmask339, align 8, !tbaa !24
  %and340 = and i32 %250, 8
  %cmp341 = icmp ne i32 %and340, 0
  br i1 %cmp341, label %if.then343, label %if.end345

if.then343:                                       ; preds = %do.body338
  %251 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %252 = load i32, ptr %now, align 4, !tbaa !29
  %call344 = call i32 @solv_timems(i32 noundef %252)
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %251, i32 noundef 8, ptr noundef @.str.10, i32 noundef %call344)
  br label %if.end345

if.end345:                                        ; preds = %if.then343, %do.body338
  br label %do.cond346

do.cond346:                                       ; preds = %if.end345
  br label %do.end347

do.end347:                                        ; preds = %do.cond346
  call void @llvm.lifetime.end.p0(i64 4, ptr %now) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %whatprovidesaux) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %whatprovidesauxdata) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %whatprovidesdata) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %whatprovides) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %idp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %off) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %extra) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %np) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  ret void

unreachable:                                      ; preds = %cleanup320, %cleanup199, %cleanup
  unreachable
}

declare i32 @solv_timems(i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @pool_debug(ptr noundef %pool, i32 noundef %type, ptr noundef %format, ...) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %format.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca [1024 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %type, ptr %type.addr, align 4, !tbaa !29
  store ptr %format, ptr %format.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr %buf) #10
  %0 = load i32, ptr %type.addr, align 4, !tbaa !29
  %and = and i32 %0, 3
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 26
  %2 = load i32, ptr %debugmask, align 8, !tbaa !24
  %3 = load i32, ptr %type.addr, align 4, !tbaa !29
  %and1 = and i32 %2, %3
  %cmp2 = icmp eq i32 %and1, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugcallback = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 27
  %5 = load ptr, ptr %debugcallback, align 8, !tbaa !88
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.end17, label %if.then5

if.then5:                                         ; preds = %if.end4
  %6 = load i32, ptr %type.addr, align 4, !tbaa !29
  %and6 = and i32 %6, 3
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then5
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask8 = getelementptr inbounds %struct.s_Pool, ptr %7, i32 0, i32 26
  %8 = load i32, ptr %debugmask8, align 8, !tbaa !24
  %and9 = and i32 %8, 1073741824
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.else, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %9 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  %call = call i32 @vprintf(ptr noundef %9, ptr noundef %arraydecay12)
  br label %if.end15

if.else:                                          ; preds = %land.lhs.true, %if.then5
  %10 = load ptr, ptr @stderr, align 8, !tbaa !4
  %11 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %arraydecay13 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  %call14 = call i32 @vfprintf(ptr noundef %10, ptr noundef %11, ptr noundef %arraydecay13)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  %arraydecay16 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay16)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end4
  %arraydecay18 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %12 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %arraydecay19 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  %call20 = call i32 @vsnprintf(ptr noundef %arraydecay18, i64 noundef 1024, ptr noundef %12, ptr noundef %arraydecay19) #10
  %arraydecay21 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay21)
  %13 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugcallback22 = getelementptr inbounds %struct.s_Pool, ptr %13, i32 0, i32 27
  %14 = load ptr, ptr %debugcallback22, align 8, !tbaa !88
  %15 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugcallbackdata = getelementptr inbounds %struct.s_Pool, ptr %16, i32 0, i32 28
  %17 = load ptr, ptr %debugcallbackdata, align 8, !tbaa !89
  %18 = load i32, ptr %type.addr, align 4, !tbaa !29
  %arraydecay23 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  call void %14(ptr noundef %15, ptr noundef %17, i32 noundef %18, ptr noundef %arraydecay23)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end15, %if.then3
  call void @llvm.lifetime.end.p0(i64 1024, ptr %buf) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @solv_calloc_block(i64 noundef %len, i64 noundef %size, i64 noundef %block) #3 {
entry:
  %retval = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %block.addr = alloca i64, align 8
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %len, ptr %len.addr, align 8, !tbaa !25
  store i64 %size, ptr %size.addr, align 8, !tbaa !25
  store i64 %block, ptr %block.addr, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #10
  %0 = load i64, ptr %len.addr, align 8, !tbaa !25
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %len.addr, align 8, !tbaa !25
  %2 = load i64, ptr %size.addr, align 8, !tbaa !25
  %3 = load i64, ptr %block.addr, align 8, !tbaa !25
  %call = call ptr @solv_extend_realloc(ptr noundef null, i64 noundef %1, i64 noundef %2, i64 noundef %3)
  store ptr %call, ptr %buf, align 8, !tbaa !4
  %4 = load ptr, ptr %buf, align 8, !tbaa !4
  %5 = load i64, ptr %len.addr, align 8, !tbaa !25
  %6 = load i64, ptr %block.addr, align 8, !tbaa !25
  %add = add i64 %5, %6
  %7 = load i64, ptr %block.addr, align 8, !tbaa !25
  %not = xor i64 %7, -1
  %and = and i64 %add, %not
  %8 = load i64, ptr %size.addr, align 8, !tbaa !25
  %mul = mul i64 %and, %8
  call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %mul, i1 false)
  %9 = load ptr, ptr %buf, align 8, !tbaa !4
  store ptr %9, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #10
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pool_installable_whatprovides(ptr noundef %pool, ptr noundef %s) #3 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %repo = getelementptr inbounds %struct.s_Solvable, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %repo, align 8, !tbaa !69
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %installed = getelementptr inbounds %struct.s_Pool, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %installed, align 8, !tbaa !63
  %cmp = icmp ne ptr %1, %3
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arch = getelementptr inbounds %struct.s_Solvable, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %arch, align 4, !tbaa !22
  %cmp1 = icmp eq i32 %5, 24
  br i1 %cmp1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arch2 = getelementptr inbounds %struct.s_Solvable, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %arch2, align 4, !tbaa !22
  %cmp3 = icmp eq i32 %7, 25
  br i1 %cmp3, label %if.then5, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call i32 @pool_badarch_solvable(ptr noundef %8, ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then5, label %if.end

if.then5:                                         ; preds = %lor.lhs.false4, %lor.lhs.false, %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %10 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %considered = getelementptr inbounds %struct.s_Pool, ptr %10, i32 0, i32 23
  %11 = load ptr, ptr %considered, align 8, !tbaa !90
  %tobool6 = icmp ne ptr %11, null
  br i1 %tobool6, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovideswithdisabled = getelementptr inbounds %struct.s_Pool, ptr %12, i32 0, i32 60
  %13 = load i32, ptr %whatprovideswithdisabled, align 4, !tbaa !62
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.end15, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #10
  %14 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %15, i32 0, i32 8
  %16 = load ptr, ptr %solvables, align 8, !tbaa !16
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 56
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, ptr %id, align 4, !tbaa !29
  %17 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %considered9 = getelementptr inbounds %struct.s_Pool, ptr %17, i32 0, i32 23
  %18 = load ptr, ptr %considered9, align 8, !tbaa !90
  %map = getelementptr inbounds %struct.s_Map, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %map, align 8, !tbaa !91
  %20 = load i32, ptr %id, align 4, !tbaa !29
  %shr = ashr i32 %20, 3
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i8, ptr %19, i64 %idxprom
  %21 = load i8, ptr %arrayidx, align 1, !tbaa !85
  %conv10 = zext i8 %21 to i32
  %22 = load i32, ptr %id, align 4, !tbaa !29
  %and = and i32 %22, 7
  %shl = shl i32 1, %and
  %and11 = and i32 %conv10, %shl
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.then8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.then8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end15

if.end15:                                         ; preds = %cleanup.cont, %land.lhs.true, %if.end
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %entry
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %cleanup, %if.then5
  %23 = load i32, ptr %retval, align 4
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal void @pool_shrink_whatprovides(ptr noundef %pool) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %id = alloca i32, align 4
  %sorted = alloca ptr, align 8
  %lastid = alloca i32, align 4
  %last = alloca ptr, align 8
  %dp = alloca ptr, align 8
  %lp = alloca ptr, align 8
  %o = alloca i32, align 4
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %sorted) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %lastid) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %dp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %lp) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %o) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 1
  %nstrings = getelementptr inbounds %struct.s_Stringpool, ptr %ss, i32 0, i32 1
  %1 = load i32, ptr %nstrings, align 8, !tbaa !64
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss1 = getelementptr inbounds %struct.s_Pool, ptr %2, i32 0, i32 1
  %nstrings2 = getelementptr inbounds %struct.s_Stringpool, ptr %ss1, i32 0, i32 1
  %3 = load i32, ptr %nstrings2, align 8, !tbaa !64
  %conv = sext i32 %3 to i64
  %call = call ptr @solv_malloc2(i64 noundef %conv, i64 noundef 4)
  store ptr %call, ptr %sorted, align 8, !tbaa !4
  store i32 0, ptr %id, align 4, !tbaa !29
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %id, align 4, !tbaa !29
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss3 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 1
  %nstrings4 = getelementptr inbounds %struct.s_Stringpool, ptr %ss3, i32 0, i32 1
  %6 = load i32, ptr %nstrings4, align 8, !tbaa !64
  %cmp5 = icmp slt i32 %4, %6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides = getelementptr inbounds %struct.s_Pool, ptr %7, i32 0, i32 18
  %8 = load ptr, ptr %whatprovides, align 8, !tbaa !38
  %9 = load i32, ptr %id, align 4, !tbaa !29
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4, !tbaa !29
  %cmp7 = icmp uge i32 %10, 4
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %for.body
  %11 = load i32, ptr %id, align 4, !tbaa !29
  %12 = load ptr, ptr %sorted, align 8, !tbaa !4
  %13 = load i32, ptr %i, align 4, !tbaa !29
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !29
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %12, i64 %idxprom10
  store i32 %11, ptr %arrayidx11, align 4, !tbaa !29
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %14 = load i32, ptr %id, align 4, !tbaa !29
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, ptr %id, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !93

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %i, align 4, !tbaa !29
  store i32 %15, ptr %n, align 4, !tbaa !29
  %16 = load ptr, ptr %sorted, align 8, !tbaa !4
  %17 = load i32, ptr %n, align 4, !tbaa !29
  %conv14 = sext i32 %17 to i64
  %18 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  call void @solv_sort(ptr noundef %16, i64 noundef %conv14, i64 noundef 4, ptr noundef @pool_shrink_whatprovides_sortcmp, ptr noundef %18)
  store ptr null, ptr %last, align 8, !tbaa !4
  store i32 0, ptr %lastid, align 4, !tbaa !29
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc45, %for.end
  %19 = load i32, ptr %i, align 4, !tbaa !29
  %20 = load i32, ptr %n, align 4, !tbaa !29
  %cmp16 = icmp slt i32 %19, %20
  br i1 %cmp16, label %for.body18, label %for.end47

for.body18:                                       ; preds = %for.cond15
  %21 = load ptr, ptr %sorted, align 8, !tbaa !4
  %22 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %21, i64 %idxprom19
  %23 = load i32, ptr %arrayidx20, align 4, !tbaa !29
  store i32 %23, ptr %id, align 4, !tbaa !29
  %24 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides21 = getelementptr inbounds %struct.s_Pool, ptr %24, i32 0, i32 18
  %25 = load ptr, ptr %whatprovides21, align 8, !tbaa !38
  %26 = load i32, ptr %id, align 4, !tbaa !29
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %25, i64 %idxprom22
  %27 = load i32, ptr %arrayidx23, align 4, !tbaa !29
  store i32 %27, ptr %o, align 4, !tbaa !29
  %28 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata = getelementptr inbounds %struct.s_Pool, ptr %28, i32 0, i32 20
  %29 = load ptr, ptr %whatprovidesdata, align 8, !tbaa !40
  %30 = load i32, ptr %o, align 4, !tbaa !29
  %idx.ext = zext i32 %30 to i64
  %add.ptr = getelementptr inbounds i32, ptr %29, i64 %idx.ext
  store ptr %add.ptr, ptr %dp, align 8, !tbaa !4
  %31 = load ptr, ptr %last, align 8, !tbaa !4
  %tobool = icmp ne ptr %31, null
  br i1 %tobool, label %if.then24, label %if.end41

if.then24:                                        ; preds = %for.body18
  %32 = load ptr, ptr %last, align 8, !tbaa !4
  store ptr %32, ptr %lp, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %if.then24
  %33 = load ptr, ptr %dp, align 8, !tbaa !4
  %34 = load i32, ptr %33, align 4, !tbaa !29
  %tobool25 = icmp ne i32 %34, 0
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load ptr, ptr %dp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %35, i32 1
  store ptr %incdec.ptr, ptr %dp, align 8, !tbaa !4
  %36 = load i32, ptr %35, align 4, !tbaa !29
  %37 = load ptr, ptr %lp, align 8, !tbaa !4
  %incdec.ptr26 = getelementptr inbounds i32, ptr %37, i32 1
  store ptr %incdec.ptr26, ptr %lp, align 8, !tbaa !4
  %38 = load i32, ptr %37, align 4, !tbaa !29
  %cmp27 = icmp ne i32 %36, %38
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.body
  store ptr null, ptr %last, align 8, !tbaa !4
  br label %while.end

if.end30:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !94

while.end:                                        ; preds = %if.then29, %while.cond
  %39 = load ptr, ptr %last, align 8, !tbaa !4
  %tobool31 = icmp ne ptr %39, null
  br i1 %tobool31, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %while.end
  %40 = load ptr, ptr %lp, align 8, !tbaa !4
  %41 = load i32, ptr %40, align 4, !tbaa !29
  %tobool32 = icmp ne i32 %41, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %land.lhs.true
  store ptr null, ptr %last, align 8, !tbaa !4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %land.lhs.true, %while.end
  %42 = load ptr, ptr %last, align 8, !tbaa !4
  %tobool35 = icmp ne ptr %42, null
  br i1 %tobool35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end34
  %43 = load i32, ptr %lastid, align 4, !tbaa !29
  %sub = sub nsw i32 0, %43
  %44 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides37 = getelementptr inbounds %struct.s_Pool, ptr %44, i32 0, i32 18
  %45 = load ptr, ptr %whatprovides37, align 8, !tbaa !38
  %46 = load i32, ptr %id, align 4, !tbaa !29
  %idxprom38 = sext i32 %46 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %45, i64 %idxprom38
  store i32 %sub, ptr %arrayidx39, align 4, !tbaa !29
  br label %for.inc45

if.end40:                                         ; preds = %if.end34
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %for.body18
  %47 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata42 = getelementptr inbounds %struct.s_Pool, ptr %47, i32 0, i32 20
  %48 = load ptr, ptr %whatprovidesdata42, align 8, !tbaa !40
  %49 = load i32, ptr %o, align 4, !tbaa !29
  %idx.ext43 = zext i32 %49 to i64
  %add.ptr44 = getelementptr inbounds i32, ptr %48, i64 %idx.ext43
  store ptr %add.ptr44, ptr %last, align 8, !tbaa !4
  %50 = load i32, ptr %id, align 4, !tbaa !29
  store i32 %50, ptr %lastid, align 4, !tbaa !29
  br label %for.inc45

for.inc45:                                        ; preds = %if.end41, %if.then36
  %51 = load i32, ptr %i, align 4, !tbaa !29
  %inc46 = add nsw i32 %51, 1
  store i32 %inc46, ptr %i, align 4, !tbaa !29
  br label %for.cond15, !llvm.loop !95

for.end47:                                        ; preds = %for.cond15
  %52 = load ptr, ptr %sorted, align 8, !tbaa !4
  %call48 = call ptr @solv_free(ptr noundef %52)
  %53 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata49 = getelementptr inbounds %struct.s_Pool, ptr %53, i32 0, i32 20
  %54 = load ptr, ptr %whatprovidesdata49, align 8, !tbaa !40
  %add.ptr50 = getelementptr inbounds i32, ptr %54, i64 4
  store ptr %add.ptr50, ptr %dp, align 8, !tbaa !4
  store i32 1, ptr %id, align 4, !tbaa !29
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc101, %for.end47
  %55 = load i32, ptr %id, align 4, !tbaa !29
  %56 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss52 = getelementptr inbounds %struct.s_Pool, ptr %56, i32 0, i32 1
  %nstrings53 = getelementptr inbounds %struct.s_Stringpool, ptr %ss52, i32 0, i32 1
  %57 = load i32, ptr %nstrings53, align 8, !tbaa !64
  %cmp54 = icmp slt i32 %55, %57
  br i1 %cmp54, label %for.body56, label %for.end103

for.body56:                                       ; preds = %for.cond51
  %58 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides57 = getelementptr inbounds %struct.s_Pool, ptr %58, i32 0, i32 18
  %59 = load ptr, ptr %whatprovides57, align 8, !tbaa !38
  %60 = load i32, ptr %id, align 4, !tbaa !29
  %idxprom58 = sext i32 %60 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %59, i64 %idxprom58
  %61 = load i32, ptr %arrayidx59, align 4, !tbaa !29
  store i32 %61, ptr %o, align 4, !tbaa !29
  %62 = load i32, ptr %o, align 4, !tbaa !29
  %tobool60 = icmp ne i32 %62, 0
  br i1 %tobool60, label %if.end62, label %if.then61

if.then61:                                        ; preds = %for.body56
  br label %for.inc101

if.end62:                                         ; preds = %for.body56
  %63 = load i32, ptr %o, align 4, !tbaa !29
  %cmp63 = icmp slt i32 %63, 0
  br i1 %cmp63, label %if.then65, label %if.end77

if.then65:                                        ; preds = %if.end62
  %64 = load i32, ptr %o, align 4, !tbaa !29
  %sub66 = sub nsw i32 0, %64
  store i32 %sub66, ptr %i, align 4, !tbaa !29
  %65 = load i32, ptr %i, align 4, !tbaa !29
  %66 = load i32, ptr %id, align 4, !tbaa !29
  %cmp67 = icmp sge i32 %65, %66
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.then65
  call void @abort() #11
  unreachable

if.end70:                                         ; preds = %if.then65
  %67 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides71 = getelementptr inbounds %struct.s_Pool, ptr %67, i32 0, i32 18
  %68 = load ptr, ptr %whatprovides71, align 8, !tbaa !38
  %69 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom72 = sext i32 %69 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %68, i64 %idxprom72
  %70 = load i32, ptr %arrayidx73, align 4, !tbaa !29
  %71 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides74 = getelementptr inbounds %struct.s_Pool, ptr %71, i32 0, i32 18
  %72 = load ptr, ptr %whatprovides74, align 8, !tbaa !38
  %73 = load i32, ptr %id, align 4, !tbaa !29
  %idxprom75 = sext i32 %73 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %72, i64 %idxprom75
  store i32 %70, ptr %arrayidx76, align 4, !tbaa !29
  br label %for.inc101

if.end77:                                         ; preds = %if.end62
  %74 = load i32, ptr %o, align 4, !tbaa !29
  %cmp78 = icmp ult i32 %74, 4
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end77
  br label %for.inc101

if.end81:                                         ; preds = %if.end77
  %75 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata82 = getelementptr inbounds %struct.s_Pool, ptr %75, i32 0, i32 20
  %76 = load ptr, ptr %whatprovidesdata82, align 8, !tbaa !40
  %77 = load i32, ptr %o, align 4, !tbaa !29
  %idx.ext83 = zext i32 %77 to i64
  %add.ptr84 = getelementptr inbounds i32, ptr %76, i64 %idx.ext83
  store ptr %add.ptr84, ptr %lp, align 8, !tbaa !4
  %78 = load ptr, ptr %lp, align 8, !tbaa !4
  %79 = load ptr, ptr %dp, align 8, !tbaa !4
  %cmp85 = icmp ult ptr %78, %79
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end81
  call void @abort() #11
  unreachable

if.end88:                                         ; preds = %if.end81
  %80 = load ptr, ptr %dp, align 8, !tbaa !4
  %81 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata89 = getelementptr inbounds %struct.s_Pool, ptr %81, i32 0, i32 20
  %82 = load ptr, ptr %whatprovidesdata89, align 8, !tbaa !40
  %sub.ptr.lhs.cast = ptrtoint ptr %80 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %82 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv90 = trunc i64 %sub.ptr.div to i32
  %83 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides91 = getelementptr inbounds %struct.s_Pool, ptr %83, i32 0, i32 18
  %84 = load ptr, ptr %whatprovides91, align 8, !tbaa !38
  %85 = load i32, ptr %id, align 4, !tbaa !29
  %idxprom92 = sext i32 %85 to i64
  %arrayidx93 = getelementptr inbounds i32, ptr %84, i64 %idxprom92
  store i32 %conv90, ptr %arrayidx93, align 4, !tbaa !29
  br label %while.cond94

while.cond94:                                     ; preds = %while.body99, %if.end88
  %86 = load ptr, ptr %lp, align 8, !tbaa !4
  %incdec.ptr95 = getelementptr inbounds i32, ptr %86, i32 1
  store ptr %incdec.ptr95, ptr %lp, align 8, !tbaa !4
  %87 = load i32, ptr %86, align 4, !tbaa !29
  %88 = load ptr, ptr %dp, align 8, !tbaa !4
  %incdec.ptr96 = getelementptr inbounds i32, ptr %88, i32 1
  store ptr %incdec.ptr96, ptr %dp, align 8, !tbaa !4
  store i32 %87, ptr %88, align 4, !tbaa !29
  %cmp97 = icmp ne i32 %87, 0
  br i1 %cmp97, label %while.body99, label %while.end100

while.body99:                                     ; preds = %while.cond94
  br label %while.cond94, !llvm.loop !96

while.end100:                                     ; preds = %while.cond94
  br label %for.inc101

for.inc101:                                       ; preds = %while.end100, %if.then80, %if.end70, %if.then61
  %89 = load i32, ptr %id, align 4, !tbaa !29
  %inc102 = add nsw i32 %89, 1
  store i32 %inc102, ptr %id, align 4, !tbaa !29
  br label %for.cond51, !llvm.loop !97

for.end103:                                       ; preds = %for.cond51
  %90 = load ptr, ptr %dp, align 8, !tbaa !4
  %91 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata104 = getelementptr inbounds %struct.s_Pool, ptr %91, i32 0, i32 20
  %92 = load ptr, ptr %whatprovidesdata104, align 8, !tbaa !40
  %sub.ptr.lhs.cast105 = ptrtoint ptr %90 to i64
  %sub.ptr.rhs.cast106 = ptrtoint ptr %92 to i64
  %sub.ptr.sub107 = sub i64 %sub.ptr.lhs.cast105, %sub.ptr.rhs.cast106
  %sub.ptr.div108 = sdiv exact i64 %sub.ptr.sub107, 4
  %conv109 = trunc i64 %sub.ptr.div108 to i32
  store i32 %conv109, ptr %o, align 4, !tbaa !29
  br label %do.body

do.body:                                          ; preds = %for.end103
  %93 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask = getelementptr inbounds %struct.s_Pool, ptr %93, i32 0, i32 26
  %94 = load i32, ptr %debugmask, align 8, !tbaa !24
  %and = and i32 %94, 8
  %cmp110 = icmp ne i32 %and, 0
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %do.body
  %95 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %96 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataoff = getelementptr inbounds %struct.s_Pool, ptr %96, i32 0, i32 21
  %97 = load i32, ptr %whatprovidesdataoff, align 8, !tbaa !41
  %98 = load i32, ptr %o, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %95, i32 noundef 8, ptr noundef @.str.223, i32 noundef %97, i32 noundef %98)
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end113
  br label %do.end

do.end:                                           ; preds = %do.cond
  %99 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataoff114 = getelementptr inbounds %struct.s_Pool, ptr %99, i32 0, i32 21
  %100 = load i32, ptr %whatprovidesdataoff114, align 8, !tbaa !41
  %101 = load i32, ptr %o, align 4, !tbaa !29
  %cmp115 = icmp eq i32 %100, %101
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end118:                                        ; preds = %do.end
  %102 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataoff119 = getelementptr inbounds %struct.s_Pool, ptr %102, i32 0, i32 21
  %103 = load i32, ptr %whatprovidesdataoff119, align 8, !tbaa !41
  %104 = load i32, ptr %o, align 4, !tbaa !29
  %sub120 = sub i32 %103, %104
  store i32 %sub120, ptr %r, align 4, !tbaa !29
  %105 = load i32, ptr %o, align 4, !tbaa !29
  %106 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataoff121 = getelementptr inbounds %struct.s_Pool, ptr %106, i32 0, i32 21
  store i32 %105, ptr %whatprovidesdataoff121, align 8, !tbaa !41
  %107 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata122 = getelementptr inbounds %struct.s_Pool, ptr %107, i32 0, i32 20
  %108 = load ptr, ptr %whatprovidesdata122, align 8, !tbaa !40
  %109 = load i32, ptr %o, align 4, !tbaa !29
  %110 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataleft = getelementptr inbounds %struct.s_Pool, ptr %110, i32 0, i32 22
  %111 = load i32, ptr %whatprovidesdataleft, align 4, !tbaa !42
  %add = add i32 %109, %111
  %conv123 = zext i32 %add to i64
  %mul = mul i64 %conv123, 4
  %call124 = call ptr @solv_realloc(ptr noundef %108, i64 noundef %mul)
  %112 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata125 = getelementptr inbounds %struct.s_Pool, ptr %112, i32 0, i32 20
  store ptr %call124, ptr %whatprovidesdata125, align 8, !tbaa !40
  %113 = load i32, ptr %r, align 4, !tbaa !29
  %114 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataleft126 = getelementptr inbounds %struct.s_Pool, ptr %114, i32 0, i32 22
  %115 = load i32, ptr %whatprovidesdataleft126, align 4, !tbaa !42
  %cmp127 = icmp sgt i32 %113, %115
  br i1 %cmp127, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.end118
  %116 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataleft130 = getelementptr inbounds %struct.s_Pool, ptr %116, i32 0, i32 22
  %117 = load i32, ptr %whatprovidesdataleft130, align 4, !tbaa !42
  store i32 %117, ptr %r, align 4, !tbaa !29
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.end118
  %118 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata132 = getelementptr inbounds %struct.s_Pool, ptr %118, i32 0, i32 20
  %119 = load ptr, ptr %whatprovidesdata132, align 8, !tbaa !40
  %120 = load i32, ptr %o, align 4, !tbaa !29
  %idx.ext133 = zext i32 %120 to i64
  %add.ptr134 = getelementptr inbounds i32, ptr %119, i64 %idx.ext133
  %121 = load i32, ptr %r, align 4, !tbaa !29
  %conv135 = sext i32 %121 to i64
  %mul136 = mul i64 %conv135, 4
  call void @llvm.memset.p0.i64(ptr align 4 %add.ptr134, i8 0, i64 %mul136, i1 false)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %if.then117, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %o) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %lp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %lastid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %sorted) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @pool_shrink_whatprovidesaux(ptr noundef %pool) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %num = alloca i32, align 4
  %id = alloca i32, align 4
  %newoff = alloca i32, align 4
  %op = alloca ptr, align 8
  %wp = alloca ptr, align 8
  %i = alloca i32, align 4
  %o = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxoff = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 57
  %1 = load i32, ptr %whatprovidesauxoff, align 8, !tbaa !45
  store i32 %1, ptr %num, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %newoff) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %wp) #10
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdata = getelementptr inbounds %struct.s_Pool, ptr %2, i32 0, i32 58
  %3 = load ptr, ptr %whatprovidesauxdata, align 8, !tbaa !44
  %add.ptr = getelementptr inbounds i32, ptr %3, i64 1
  store ptr %add.ptr, ptr %wp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !29
  %5 = load i32, ptr %num, align 4, !tbaa !29
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %o) #10
  %6 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesaux = getelementptr inbounds %struct.s_Pool, ptr %6, i32 0, i32 56
  %7 = load ptr, ptr %whatprovidesaux, align 8, !tbaa !43
  %8 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4, !tbaa !29
  store i32 %9, ptr %o, align 4, !tbaa !29
  %10 = load i32, ptr %o, align 4, !tbaa !29
  %cmp1 = icmp ult i32 %10, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %11 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdata2 = getelementptr inbounds %struct.s_Pool, ptr %11, i32 0, i32 58
  %12 = load ptr, ptr %whatprovidesauxdata2, align 8, !tbaa !44
  %13 = load i32, ptr %o, align 4, !tbaa !29
  %idx.ext = zext i32 %13 to i64
  %add.ptr3 = getelementptr inbounds i32, ptr %12, i64 %idx.ext
  store ptr %add.ptr3, ptr %op, align 8, !tbaa !4
  %14 = load ptr, ptr %wp, align 8, !tbaa !4
  %15 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdata4 = getelementptr inbounds %struct.s_Pool, ptr %15, i32 0, i32 58
  %16 = load ptr, ptr %whatprovidesauxdata4, align 8, !tbaa !44
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  %17 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesaux5 = getelementptr inbounds %struct.s_Pool, ptr %17, i32 0, i32 56
  %18 = load ptr, ptr %whatprovidesaux5, align 8, !tbaa !43
  %19 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom6 = sext i32 %19 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %18, i64 %idxprom6
  store i32 %conv, ptr %arrayidx7, align 4, !tbaa !29
  %20 = load ptr, ptr %op, align 8, !tbaa !4
  %21 = load ptr, ptr %wp, align 8, !tbaa !4
  %cmp8 = icmp ult ptr %20, %21
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @abort() #11
  unreachable

if.end11:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end11
  %22 = load ptr, ptr %op, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %op, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !29
  store i32 %23, ptr %id, align 4, !tbaa !29
  %cmp12 = icmp ne i32 %23, 0
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i32, ptr %id, align 4, !tbaa !29
  %25 = load ptr, ptr %wp, align 8, !tbaa !4
  %incdec.ptr14 = getelementptr inbounds i32, ptr %25, i32 1
  store ptr %incdec.ptr14, ptr %wp, align 8, !tbaa !4
  store i32 %24, ptr %25, align 4, !tbaa !29
  br label %while.cond, !llvm.loop !98

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %o) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %26 = load i32, ptr %i, align 4, !tbaa !29
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %i, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !99

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr %wp, align 8, !tbaa !4
  %28 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdata15 = getelementptr inbounds %struct.s_Pool, ptr %28, i32 0, i32 58
  %29 = load ptr, ptr %whatprovidesauxdata15, align 8, !tbaa !44
  %sub.ptr.lhs.cast16 = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast17 = ptrtoint ptr %29 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %sub.ptr.div19 = sdiv exact i64 %sub.ptr.sub18, 4
  %conv20 = trunc i64 %sub.ptr.div19 to i32
  store i32 %conv20, ptr %newoff, align 4, !tbaa !29
  %30 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdata21 = getelementptr inbounds %struct.s_Pool, ptr %30, i32 0, i32 58
  %31 = load ptr, ptr %whatprovidesauxdata21, align 8, !tbaa !44
  %32 = load i32, ptr %newoff, align 4, !tbaa !29
  %conv22 = zext i32 %32 to i64
  %mul = mul i64 %conv22, 4
  %call = call ptr @solv_realloc(ptr noundef %31, i64 noundef %mul)
  %33 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdata23 = getelementptr inbounds %struct.s_Pool, ptr %33, i32 0, i32 58
  store ptr %call, ptr %whatprovidesauxdata23, align 8, !tbaa !44
  br label %do.body

do.body:                                          ; preds = %for.end
  %34 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask = getelementptr inbounds %struct.s_Pool, ptr %34, i32 0, i32 26
  %35 = load i32, ptr %debugmask, align 8, !tbaa !24
  %and = and i32 %35, 8
  %cmp24 = icmp ne i32 %and, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %do.body
  %36 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %37 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdataoff = getelementptr inbounds %struct.s_Pool, ptr %37, i32 0, i32 59
  %38 = load i32, ptr %whatprovidesauxdataoff, align 8, !tbaa !46
  %39 = load i32, ptr %newoff, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %36, i32 noundef 8, ptr noundef @.str.224, i32 noundef %38, i32 noundef %39)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end27
  br label %do.end

do.end:                                           ; preds = %do.cond
  %40 = load i32, ptr %newoff, align 4, !tbaa !29
  %41 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdataoff28 = getelementptr inbounds %struct.s_Pool, ptr %41, i32 0, i32 59
  store i32 %40, ptr %whatprovidesauxdataoff28, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %wp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %newoff) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #10
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @queue_empty(ptr noundef %q) #3 {
entry:
  %q.addr = alloca ptr, align 8
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.s_Queue, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %alloc, align 8, !tbaa !100
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %elements = getelementptr inbounds %struct.s_Queue, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %elements, align 8, !tbaa !101
  %4 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %alloc1 = getelementptr inbounds %struct.s_Queue, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %alloc1, align 8, !tbaa !100
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %6 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %count = getelementptr inbounds %struct.s_Queue, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %count, align 8, !tbaa !102
  %conv = sext i32 %7 to i64
  %add = add nsw i64 %sub.ptr.div, %conv
  %8 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %left = getelementptr inbounds %struct.s_Queue, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %left, align 8, !tbaa !103
  %conv2 = sext i32 %9 to i64
  %add3 = add nsw i64 %conv2, %add
  %conv4 = trunc i64 %add3 to i32
  store i32 %conv4, ptr %left, align 8, !tbaa !103
  %10 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %alloc5 = getelementptr inbounds %struct.s_Queue, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %alloc5, align 8, !tbaa !100
  %12 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %elements6 = getelementptr inbounds %struct.s_Queue, ptr %12, i32 0, i32 0
  store ptr %11, ptr %elements6, align 8, !tbaa !101
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %count7 = getelementptr inbounds %struct.s_Queue, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %count7, align 8, !tbaa !102
  %15 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %left8 = getelementptr inbounds %struct.s_Queue, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %left8, align 8, !tbaa !103
  %add9 = add nsw i32 %16, %14
  store i32 %add9, ptr %left8, align 8, !tbaa !103
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %count10 = getelementptr inbounds %struct.s_Queue, ptr %17, i32 0, i32 1
  store i32 0, ptr %count10, align 8, !tbaa !102
  ret void
}

declare i32 @repodata_filelistfilter_matches(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @queue_push2(ptr noundef %q, i32 noundef %id1, i32 noundef %id2) #3 {
entry:
  %q.addr = alloca ptr, align 8
  %id1.addr = alloca i32, align 4
  %id2.addr = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store i32 %id1, ptr %id1.addr, align 4, !tbaa !29
  store i32 %id2, ptr %id2.addr, align 4, !tbaa !29
  %0 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1 = load i32, ptr %id1.addr, align 4, !tbaa !29
  call void @queue_push(ptr noundef %0, i32 noundef %1)
  %2 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %3 = load i32, ptr %id2.addr, align 4, !tbaa !29
  call void @queue_push(ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pool_ids2whatprovides(ptr noundef %pool, ptr noundef %ids, i32 noundef %count) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %ids.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %off = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %ids, ptr %ids.addr, align 8, !tbaa !4
  store i32 %count, ptr %count.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %off) #10
  %0 = load i32, ptr %count.addr, align 4, !tbaa !29
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %count.addr, align 4, !tbaa !29
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr %ids.addr, align 8, !tbaa !4
  %3 = load i32, ptr %2, align 4, !tbaa !29
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataleft = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 22
  %5 = load i32, ptr %whatprovidesdataleft, align 4, !tbaa !42
  %6 = load i32, ptr %count.addr, align 4, !tbaa !29
  %add = add nsw i32 %6, 1
  %cmp5 = icmp slt i32 %5, %add
  br i1 %cmp5, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.end4
  br label %do.body

do.body:                                          ; preds = %if.then6
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask = getelementptr inbounds %struct.s_Pool, ptr %7, i32 0, i32 26
  %8 = load i32, ptr %debugmask, align 8, !tbaa !24
  %and = and i32 %8, 8
  %cmp7 = icmp ne i32 %and, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body
  %9 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %9, i32 noundef 8, ptr noundef @.str.11)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end9
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata = getelementptr inbounds %struct.s_Pool, ptr %10, i32 0, i32 20
  %11 = load ptr, ptr %whatprovidesdata, align 8, !tbaa !40
  %12 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataoff = getelementptr inbounds %struct.s_Pool, ptr %12, i32 0, i32 21
  %13 = load i32, ptr %whatprovidesdataoff, align 8, !tbaa !41
  %14 = load i32, ptr %count.addr, align 4, !tbaa !29
  %add10 = add i32 %13, %14
  %add11 = add i32 %add10, 4096
  %conv = zext i32 %add11 to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @solv_realloc(ptr noundef %11, i64 noundef %mul)
  %15 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata12 = getelementptr inbounds %struct.s_Pool, ptr %15, i32 0, i32 20
  store ptr %call, ptr %whatprovidesdata12, align 8, !tbaa !40
  %16 = load i32, ptr %count.addr, align 4, !tbaa !29
  %add13 = add nsw i32 %16, 4096
  %17 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataleft14 = getelementptr inbounds %struct.s_Pool, ptr %17, i32 0, i32 22
  store i32 %add13, ptr %whatprovidesdataleft14, align 4, !tbaa !42
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end4
  %18 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataoff16 = getelementptr inbounds %struct.s_Pool, ptr %18, i32 0, i32 21
  %19 = load i32, ptr %whatprovidesdataoff16, align 8, !tbaa !41
  store i32 %19, ptr %off, align 4, !tbaa !29
  %20 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata17 = getelementptr inbounds %struct.s_Pool, ptr %20, i32 0, i32 20
  %21 = load ptr, ptr %whatprovidesdata17, align 8, !tbaa !40
  %22 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataoff18 = getelementptr inbounds %struct.s_Pool, ptr %22, i32 0, i32 21
  %23 = load i32, ptr %whatprovidesdataoff18, align 8, !tbaa !41
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i32, ptr %21, i64 %idx.ext
  %24 = load ptr, ptr %ids.addr, align 8, !tbaa !4
  %25 = load i32, ptr %count.addr, align 4, !tbaa !29
  %conv19 = sext i32 %25 to i64
  %mul20 = mul i64 %conv19, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %add.ptr, ptr align 4 %24, i64 %mul20, i1 false)
  %26 = load i32, ptr %count.addr, align 4, !tbaa !29
  %27 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataoff21 = getelementptr inbounds %struct.s_Pool, ptr %27, i32 0, i32 21
  %28 = load i32, ptr %whatprovidesdataoff21, align 8, !tbaa !41
  %add22 = add i32 %28, %26
  store i32 %add22, ptr %whatprovidesdataoff21, align 8, !tbaa !41
  %29 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata23 = getelementptr inbounds %struct.s_Pool, ptr %29, i32 0, i32 20
  %30 = load ptr, ptr %whatprovidesdata23, align 8, !tbaa !40
  %31 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataoff24 = getelementptr inbounds %struct.s_Pool, ptr %31, i32 0, i32 21
  %32 = load i32, ptr %whatprovidesdataoff24, align 8, !tbaa !41
  %inc = add i32 %32, 1
  store i32 %inc, ptr %whatprovidesdataoff24, align 8, !tbaa !41
  %idxprom = zext i32 %32 to i64
  %arrayidx = getelementptr inbounds i32, ptr %30, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !29
  %33 = load i32, ptr %count.addr, align 4, !tbaa !29
  %add25 = add nsw i32 %33, 1
  %34 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdataleft26 = getelementptr inbounds %struct.s_Pool, ptr %34, i32 0, i32 22
  %35 = load i32, ptr %whatprovidesdataleft26, align 4, !tbaa !42
  %sub = sub nsw i32 %35, %add25
  store i32 %sub, ptr %whatprovidesdataleft26, align 4, !tbaa !42
  %36 = load i32, ptr %off, align 4, !tbaa !29
  store i32 %36, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %off) #10
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

declare ptr @solv_realloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @pool_queuetowhatprovides(ptr noundef %pool, ptr noundef %q) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #10
  %0 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %count1 = getelementptr inbounds %struct.s_Queue, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %count1, align 8, !tbaa !102
  store i32 %1, ptr %count, align 4, !tbaa !29
  %2 = load i32, ptr %count, align 4, !tbaa !29
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %count, align 4, !tbaa !29
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %elements = getelementptr inbounds %struct.s_Queue, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %elements, align 8, !tbaa !101
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 0
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !29
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %elements6 = getelementptr inbounds %struct.s_Queue, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %elements6, align 8, !tbaa !101
  %10 = load i32, ptr %count, align 4, !tbaa !29
  %call = call i32 @pool_ids2whatprovides(ptr noundef %7, ptr noundef %9, i32 noundef %10)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #10
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @pool_match_nevr_rel(ptr noundef %pool, ptr noundef %s, i32 noundef %d) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %d.addr = alloca i32, align 4
  %rd = alloca ptr, align 8
  %name = alloca i32, align 4
  %evr = alloca i32, align 4
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i32 %d, ptr %d.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %rels, align 8, !tbaa !8
  %2 = load i32, ptr %d.addr, align 4, !tbaa !29
  %xor = xor i32 %2, -2147483648
  %idx.ext = zext i32 %xor to i64
  %add.ptr = getelementptr inbounds %struct.s_Reldep, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %rd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %name) #10
  %3 = load ptr, ptr %rd, align 8, !tbaa !4
  %name1 = getelementptr inbounds %struct.s_Reldep, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %name1, align 4, !tbaa !73
  store i32 %4, ptr %name, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %evr) #10
  %5 = load ptr, ptr %rd, align 8, !tbaa !4
  %evr2 = getelementptr inbounds %struct.s_Reldep, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %evr2, align 4, !tbaa !104
  store i32 %6, ptr %evr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #10
  %7 = load ptr, ptr %rd, align 8, !tbaa !4
  %flags3 = getelementptr inbounds %struct.s_Reldep, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %flags3, align 4, !tbaa !105
  store i32 %8, ptr %flags, align 4, !tbaa !29
  %9 = load i32, ptr %flags, align 4, !tbaa !29
  %cmp = icmp sgt i32 %9, 7
  br i1 %cmp, label %if.then, label %if.end34

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %flags, align 4, !tbaa !29
  switch i32 %10, label %sw.default [
    i32 20, label %sw.bb
    i32 17, label %sw.bb11
    i32 16, label %sw.bb16
    i32 18, label %sw.bb16
    i32 28, label %sw.bb22
    i32 25, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.then
  %11 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arch = getelementptr inbounds %struct.s_Solvable, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %arch, align 4, !tbaa !22
  %13 = load i32, ptr %evr, align 4, !tbaa !29
  %cmp4 = icmp ne i32 %12, %13
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %sw.bb
  %14 = load i32, ptr %evr, align 4, !tbaa !29
  %cmp6 = icmp ne i32 %14, 24
  br i1 %cmp6, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then5
  %15 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arch7 = getelementptr inbounds %struct.s_Solvable, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %arch7, align 4, !tbaa !22
  %cmp8 = icmp ne i32 %16, 25
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %lor.lhs.false, %if.then5
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end10

if.end10:                                         ; preds = %if.end, %sw.bb
  %17 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %19 = load i32, ptr %name, align 4, !tbaa !29
  %call = call i32 @pool_match_nevr(ptr noundef %17, ptr noundef %18, i32 noundef %19)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %if.then
  %20 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %22 = load i32, ptr %name, align 4, !tbaa !29
  %call12 = call i32 @pool_match_nevr(ptr noundef %20, ptr noundef %21, i32 noundef %22)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %sw.bb11
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %sw.bb11
  %23 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %25 = load i32, ptr %evr, align 4, !tbaa !29
  %call15 = call i32 @pool_match_nevr(ptr noundef %23, ptr noundef %24, i32 noundef %25)
  store i32 %call15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %if.then, %if.then
  %26 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %28 = load i32, ptr %name, align 4, !tbaa !29
  %call17 = call i32 @pool_match_nevr(ptr noundef %26, ptr noundef %27, i32 noundef %28)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %sw.bb16
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %sw.bb16
  %29 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %31 = load i32, ptr %evr, align 4, !tbaa !29
  %call21 = call i32 @pool_match_nevr(ptr noundef %29, ptr noundef %30, i32 noundef %31)
  store i32 %call21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %if.then
  %32 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %34 = load i32, ptr %name, align 4, !tbaa !29
  %call23 = call i32 @pool_match_nevr(ptr noundef %32, ptr noundef %33, i32 noundef %34)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %sw.bb22
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %sw.bb22
  %35 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %37 = load i32, ptr %evr, align 4, !tbaa !29
  %call27 = call i32 @pool_match_nevr(ptr noundef %35, ptr noundef %36, i32 noundef %37)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot = xor i1 %tobool28, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %if.then
  %38 = load i32, ptr %evr, align 4, !tbaa !29
  %cmp30 = icmp ne i32 %38, 28
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %sw.bb29
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %sw.bb29
  %39 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %41 = load i32, ptr %name, align 4, !tbaa !29
  %call33 = call i32 @pool_match_nevr(ptr noundef %39, ptr noundef %40, i32 noundef %41)
  store i32 %call33, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %entry
  %42 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %44 = load i32, ptr %name, align 4, !tbaa !29
  %call35 = call i32 @pool_match_nevr(ptr noundef %42, ptr noundef %43, i32 noundef %44)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end34
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %45 = load i32, ptr %evr, align 4, !tbaa !29
  %46 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %evr39 = getelementptr inbounds %struct.s_Solvable, ptr %46, i32 0, i32 2
  %47 = load i32, ptr %evr39, align 8, !tbaa !23
  %cmp40 = icmp eq i32 %45, %47
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %48 = load i32, ptr %flags, align 4, !tbaa !29
  %and = and i32 %48, 2
  %tobool42 = icmp ne i32 %and, 0
  %49 = zext i1 %tobool42 to i64
  %cond = select i1 %tobool42, i32 1, i32 0
  store i32 %cond, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  %50 = load i32, ptr %flags, align 4, !tbaa !29
  %tobool44 = icmp ne i32 %50, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end43
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %if.end43
  %51 = load i32, ptr %flags, align 4, !tbaa !29
  %cmp47 = icmp eq i32 %51, 7
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end46
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.end46
  %52 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %evr50 = getelementptr inbounds %struct.s_Solvable, ptr %53, i32 0, i32 2
  %54 = load i32, ptr %evr50, align 8, !tbaa !23
  %55 = load i32, ptr %evr, align 4, !tbaa !29
  %call51 = call i32 @pool_evrcmp(ptr noundef %52, i32 noundef %54, i32 noundef %55, i32 noundef 1)
  switch i32 %call51, label %sw.default69 [
    i32 -2, label %sw.bb52
    i32 -1, label %sw.bb53
    i32 0, label %sw.bb57
    i32 1, label %sw.bb61
    i32 2, label %sw.bb65
  ]

sw.bb52:                                          ; preds = %if.end49
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb53:                                          ; preds = %if.end49
  %56 = load i32, ptr %flags, align 4, !tbaa !29
  %and54 = and i32 %56, 4
  %tobool55 = icmp ne i32 %and54, 0
  %57 = zext i1 %tobool55 to i64
  %cond56 = select i1 %tobool55, i32 1, i32 0
  store i32 %cond56, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb57:                                          ; preds = %if.end49
  %58 = load i32, ptr %flags, align 4, !tbaa !29
  %and58 = and i32 %58, 2
  %tobool59 = icmp ne i32 %and58, 0
  %59 = zext i1 %tobool59 to i64
  %cond60 = select i1 %tobool59, i32 1, i32 0
  store i32 %cond60, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb61:                                          ; preds = %if.end49
  %60 = load i32, ptr %flags, align 4, !tbaa !29
  %and62 = and i32 %60, 1
  %tobool63 = icmp ne i32 %and62, 0
  %61 = zext i1 %tobool63 to i64
  %cond64 = select i1 %tobool63, i32 1, i32 0
  store i32 %cond64, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb65:                                          ; preds = %if.end49
  %62 = load i32, ptr %flags, align 4, !tbaa !29
  %and66 = and i32 %62, 2
  %tobool67 = icmp ne i32 %and66, 0
  %63 = zext i1 %tobool67 to i64
  %cond68 = select i1 %tobool67, i32 1, i32 0
  store i32 %cond68, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.default69:                                     ; preds = %if.end49
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default69
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb65, %sw.bb61, %sw.bb57, %sw.bb53, %sw.bb52, %if.then48, %if.then45, %if.then41, %if.then37, %sw.default, %if.end32, %if.then31, %if.end26, %if.then25, %if.end20, %if.then19, %if.end14, %if.then13, %if.end10, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %evr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %name) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd) #10
  %64 = load i32, ptr %retval, align 4
  ret i32 %64
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pool_match_nevr(ptr noundef %pool, ptr noundef %s, i32 noundef %d) #3 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %d.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i32 %d, ptr %d.addr, align 4, !tbaa !29
  %0 = load i32, ptr %d.addr, align 4, !tbaa !29
  %and = and i32 %0, -2147483648
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %d.addr, align 4, !tbaa !29
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.s_Solvable, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %name, align 8, !tbaa !20
  %cmp1 = icmp eq i32 %1, %3
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %6 = load i32, ptr %d.addr, align 4, !tbaa !29
  %call = call i32 @pool_match_nevr_rel(ptr noundef %4, ptr noundef %5, i32 noundef %6)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @pool_evrcmp(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @pool_intersect_evrs(ptr noundef %pool, i32 noundef %pflags, i32 noundef %pevr, i32 noundef %flags, i32 noundef %evr) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %pflags.addr = alloca i32, align 4
  %pevr.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %evr.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %pflags, ptr %pflags.addr, align 4, !tbaa !29
  store i32 %pevr, ptr %pevr.addr, align 4, !tbaa !29
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !29
  store i32 %evr, ptr %evr.addr, align 4, !tbaa !29
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %1 = load i32, ptr %pflags.addr, align 4, !tbaa !29
  %2 = load i32, ptr %pevr.addr, align 4, !tbaa !29
  %3 = load i32, ptr %flags.addr, align 4, !tbaa !29
  %4 = load i32, ptr %evr.addr, align 4, !tbaa !29
  %call = call i32 @pool_match_flags_evr(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pool_match_flags_evr(ptr noundef %pool, i32 noundef %pflags, i32 noundef %pevr, i32 noundef %flags, i32 noundef %evr) #3 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %pflags.addr = alloca i32, align 4
  %pevr.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %evr.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %pflags, ptr %pflags.addr, align 4, !tbaa !29
  store i32 %pevr, ptr %pevr.addr, align 4, !tbaa !29
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !29
  store i32 %evr, ptr %evr.addr, align 4, !tbaa !29
  %0 = load i32, ptr %pflags.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !tbaa !29
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %pflags.addr, align 4, !tbaa !29
  %cmp = icmp sge i32 %2, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false2
  %3 = load i32, ptr %flags.addr, align 4, !tbaa !29
  %cmp4 = icmp sge i32 %3, 8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  %4 = load i32, ptr %flags.addr, align 4, !tbaa !29
  %cmp5 = icmp eq i32 %4, 7
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %5 = load i32, ptr %pflags.addr, align 4, !tbaa !29
  %cmp7 = icmp eq i32 %5, 7
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false6, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false6
  %6 = load i32, ptr %pflags.addr, align 4, !tbaa !29
  %7 = load i32, ptr %flags.addr, align 4, !tbaa !29
  %and = and i32 %6, %7
  %and10 = and i32 %and, 5
  %cmp11 = icmp ne i32 %and10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  store i32 1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  %8 = load i32, ptr %pevr.addr, align 4, !tbaa !29
  %9 = load i32, ptr %evr.addr, align 4, !tbaa !29
  %cmp14 = icmp eq i32 %8, %9
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end13
  %10 = load i32, ptr %flags.addr, align 4, !tbaa !29
  %11 = load i32, ptr %pflags.addr, align 4, !tbaa !29
  %and16 = and i32 %10, %11
  %and17 = and i32 %and16, 2
  %tobool18 = icmp ne i32 %and17, 0
  %12 = zext i1 %tobool18 to i64
  %cond = select i1 %tobool18, i32 1, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end13
  %13 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %14 = load i32, ptr %pevr.addr, align 4, !tbaa !29
  %15 = load i32, ptr %evr.addr, align 4, !tbaa !29
  %call = call i32 @pool_evrcmp(ptr noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef 1)
  switch i32 %call, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb23
    i32 0, label %sw.bb29
    i32 1, label %sw.bb34
    i32 2, label %sw.bb42
  ]

sw.bb:                                            ; preds = %if.end19
  %16 = load i32, ptr %pflags.addr, align 4, !tbaa !29
  %and20 = and i32 %16, 2
  %tobool21 = icmp ne i32 %and20, 0
  %17 = zext i1 %tobool21 to i64
  %cond22 = select i1 %tobool21, i32 1, i32 0
  store i32 %cond22, ptr %retval, align 4
  br label %return

sw.bb23:                                          ; preds = %if.end19
  %18 = load i32, ptr %flags.addr, align 4, !tbaa !29
  %and24 = and i32 %18, 4
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb23
  %19 = load i32, ptr %pflags.addr, align 4, !tbaa !29
  %and26 = and i32 %19, 1
  %tobool27 = icmp ne i32 %and26, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb23
  %20 = phi i1 [ true, %sw.bb23 ], [ %tobool27, %lor.rhs ]
  %21 = zext i1 %20 to i64
  %cond28 = select i1 %20, i32 1, i32 0
  store i32 %cond28, ptr %retval, align 4
  br label %return

sw.bb29:                                          ; preds = %if.end19
  %22 = load i32, ptr %flags.addr, align 4, !tbaa !29
  %23 = load i32, ptr %pflags.addr, align 4, !tbaa !29
  %and30 = and i32 %22, %23
  %and31 = and i32 %and30, 2
  %tobool32 = icmp ne i32 %and31, 0
  %24 = zext i1 %tobool32 to i64
  %cond33 = select i1 %tobool32, i32 1, i32 0
  store i32 %cond33, ptr %retval, align 4
  br label %return

sw.bb34:                                          ; preds = %if.end19
  %25 = load i32, ptr %flags.addr, align 4, !tbaa !29
  %and35 = and i32 %25, 1
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %lor.end40, label %lor.rhs37

lor.rhs37:                                        ; preds = %sw.bb34
  %26 = load i32, ptr %pflags.addr, align 4, !tbaa !29
  %and38 = and i32 %26, 4
  %tobool39 = icmp ne i32 %and38, 0
  br label %lor.end40

lor.end40:                                        ; preds = %lor.rhs37, %sw.bb34
  %27 = phi i1 [ true, %sw.bb34 ], [ %tobool39, %lor.rhs37 ]
  %28 = zext i1 %27 to i64
  %cond41 = select i1 %27, i32 1, i32 0
  store i32 %cond41, ptr %retval, align 4
  br label %return

sw.bb42:                                          ; preds = %if.end19
  %29 = load i32, ptr %flags.addr, align 4, !tbaa !29
  %and43 = and i32 %29, 2
  %tobool44 = icmp ne i32 %and43, 0
  %30 = zext i1 %tobool44 to i64
  %cond45 = select i1 %tobool44, i32 1, i32 0
  store i32 %cond45, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb42, %lor.end40, %sw.bb29, %lor.end, %sw.bb, %if.then15, %if.then12, %if.then8, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @pool_match_dep(ptr noundef %pool, i32 noundef %d1, i32 noundef %d2) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %d1.addr = alloca i32, align 4
  %d2.addr = alloca i32, align 4
  %rd1 = alloca ptr, align 8
  %rd2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %d1, ptr %d1.addr, align 4, !tbaa !29
  store i32 %d2, ptr %d2.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd2) #10
  %0 = load i32, ptr %d1.addr, align 4, !tbaa !29
  %1 = load i32, ptr %d2.addr, align 4, !tbaa !29
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %d1.addr, align 4, !tbaa !29
  %and = and i32 %2, -2147483648
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end69

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %rels, align 8, !tbaa !8
  %5 = load i32, ptr %d1.addr, align 4, !tbaa !29
  %xor = xor i32 %5, -2147483648
  %idx.ext = zext i32 %xor to i64
  %add.ptr = getelementptr inbounds %struct.s_Reldep, ptr %4, i64 %idx.ext
  store ptr %add.ptr, ptr %rd1, align 8, !tbaa !4
  %6 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.s_Reldep, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %flags, align 4, !tbaa !105
  %cmp3 = icmp eq i32 %7, 16
  br i1 %cmp3, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %8 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags4 = getelementptr inbounds %struct.s_Reldep, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %flags4, align 4, !tbaa !105
  %cmp5 = icmp eq i32 %9, 17
  br i1 %cmp5, label %if.then18, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %10 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags7 = getelementptr inbounds %struct.s_Reldep, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %flags7, align 4, !tbaa !105
  %cmp8 = icmp eq i32 %11, 18
  br i1 %cmp8, label %if.then18, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %12 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags10 = getelementptr inbounds %struct.s_Reldep, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %flags10, align 4, !tbaa !105
  %cmp11 = icmp eq i32 %13, 28
  br i1 %cmp11, label %if.then18, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %14 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags13 = getelementptr inbounds %struct.s_Reldep, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %flags13, align 4, !tbaa !105
  %cmp14 = icmp eq i32 %15, 22
  br i1 %cmp14, label %if.then18, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %16 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags16 = getelementptr inbounds %struct.s_Reldep, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %flags16, align 4, !tbaa !105
  %cmp17 = icmp eq i32 %17, 29
  br i1 %cmp17, label %if.then18, label %if.end68

if.then18:                                        ; preds = %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false, %if.then2
  %18 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags19 = getelementptr inbounds %struct.s_Reldep, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %flags19, align 4, !tbaa !105
  %cmp20 = icmp eq i32 %19, 18
  br i1 %cmp20, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.then18
  %20 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %rd1, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.s_Reldep, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %name, align 4, !tbaa !73
  %23 = load ptr, ptr %rd1, align 8, !tbaa !4
  %evr = getelementptr inbounds %struct.s_Reldep, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %evr, align 4, !tbaa !104
  %call = call i32 @is_interval_dep(ptr noundef %20, i32 noundef %22, i32 noundef %24)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then21, label %if.end28

if.then21:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %rd1, align 8, !tbaa !4
  %name22 = getelementptr inbounds %struct.s_Reldep, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %name22, align 4, !tbaa !73
  %28 = load i32, ptr %d2.addr, align 4, !tbaa !29
  %call23 = call i32 @pool_match_dep(ptr noundef %25, i32 noundef %27, i32 noundef %28)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then21
  %29 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %rd1, align 8, !tbaa !4
  %evr25 = getelementptr inbounds %struct.s_Reldep, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %evr25, align 4, !tbaa !104
  %32 = load i32, ptr %d2.addr, align 4, !tbaa !29
  %call26 = call i32 @pool_match_dep(ptr noundef %29, i32 noundef %31, i32 noundef %32)
  %tobool27 = icmp ne i32 %call26, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then21
  %33 = phi i1 [ false, %if.then21 ], [ %tobool27, %land.rhs ]
  %land.ext = zext i1 %33 to i32
  store i32 %land.ext, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true, %if.then18
  %34 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %rd1, align 8, !tbaa !4
  %name29 = getelementptr inbounds %struct.s_Reldep, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %name29, align 4, !tbaa !73
  %37 = load i32, ptr %d2.addr, align 4, !tbaa !29
  %call30 = call i32 @pool_match_dep(ptr noundef %34, i32 noundef %36, i32 noundef %37)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %38 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags34 = getelementptr inbounds %struct.s_Reldep, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %flags34, align 4, !tbaa !105
  %cmp35 = icmp eq i32 %39, 22
  br i1 %cmp35, label %land.lhs.true39, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.end33
  %40 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags37 = getelementptr inbounds %struct.s_Reldep, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %flags37, align 4, !tbaa !105
  %cmp38 = icmp eq i32 %41, 29
  br i1 %cmp38, label %land.lhs.true39, label %if.end53

land.lhs.true39:                                  ; preds = %lor.lhs.false36, %if.end33
  %42 = load ptr, ptr %rd1, align 8, !tbaa !4
  %evr40 = getelementptr inbounds %struct.s_Reldep, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %evr40, align 4, !tbaa !104
  %and41 = and i32 %43, -2147483648
  %cmp42 = icmp ne i32 %and41, 0
  br i1 %cmp42, label %if.then43, label %if.end53

if.then43:                                        ; preds = %land.lhs.true39
  %44 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels44 = getelementptr inbounds %struct.s_Pool, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %rels44, align 8, !tbaa !8
  %46 = load ptr, ptr %rd1, align 8, !tbaa !4
  %evr45 = getelementptr inbounds %struct.s_Reldep, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %evr45, align 4, !tbaa !104
  %xor46 = xor i32 %47, -2147483648
  %idx.ext47 = zext i32 %xor46 to i64
  %add.ptr48 = getelementptr inbounds %struct.s_Reldep, ptr %45, i64 %idx.ext47
  store ptr %add.ptr48, ptr %rd1, align 8, !tbaa !4
  %48 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags49 = getelementptr inbounds %struct.s_Reldep, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %flags49, align 4, !tbaa !105
  %cmp50 = icmp ne i32 %49, 26
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then43
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end52:                                         ; preds = %if.then43
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %land.lhs.true39, %lor.lhs.false36
  %50 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags54 = getelementptr inbounds %struct.s_Reldep, ptr %50, i32 0, i32 2
  %51 = load i32, ptr %flags54, align 4, !tbaa !105
  %cmp55 = icmp ne i32 %51, 22
  br i1 %cmp55, label %land.lhs.true56, label %if.end67

land.lhs.true56:                                  ; preds = %if.end53
  %52 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags57 = getelementptr inbounds %struct.s_Reldep, ptr %52, i32 0, i32 2
  %53 = load i32, ptr %flags57, align 4, !tbaa !105
  %cmp58 = icmp ne i32 %53, 29
  br i1 %cmp58, label %land.lhs.true59, label %if.end67

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %54 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags60 = getelementptr inbounds %struct.s_Reldep, ptr %54, i32 0, i32 2
  %55 = load i32, ptr %flags60, align 4, !tbaa !105
  %cmp61 = icmp ne i32 %55, 28
  br i1 %cmp61, label %land.lhs.true62, label %if.end67

land.lhs.true62:                                  ; preds = %land.lhs.true59
  %56 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %57 = load ptr, ptr %rd1, align 8, !tbaa !4
  %evr63 = getelementptr inbounds %struct.s_Reldep, ptr %57, i32 0, i32 1
  %58 = load i32, ptr %evr63, align 4, !tbaa !104
  %59 = load i32, ptr %d2.addr, align 4, !tbaa !29
  %call64 = call i32 @pool_match_dep(ptr noundef %56, i32 noundef %58, i32 noundef %59)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %land.lhs.true62
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end67:                                         ; preds = %land.lhs.true62, %land.lhs.true59, %land.lhs.true56, %if.end53
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end68:                                         ; preds = %lor.lhs.false15
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end
  %60 = load i32, ptr %d2.addr, align 4, !tbaa !29
  %and70 = and i32 %60, -2147483648
  %cmp71 = icmp ne i32 %and70, 0
  br i1 %cmp71, label %if.then72, label %if.end153

if.then72:                                        ; preds = %if.end69
  %61 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels73 = getelementptr inbounds %struct.s_Pool, ptr %61, i32 0, i32 2
  %62 = load ptr, ptr %rels73, align 8, !tbaa !8
  %63 = load i32, ptr %d2.addr, align 4, !tbaa !29
  %xor74 = xor i32 %63, -2147483648
  %idx.ext75 = zext i32 %xor74 to i64
  %add.ptr76 = getelementptr inbounds %struct.s_Reldep, ptr %62, i64 %idx.ext75
  store ptr %add.ptr76, ptr %rd2, align 8, !tbaa !4
  %64 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags77 = getelementptr inbounds %struct.s_Reldep, ptr %64, i32 0, i32 2
  %65 = load i32, ptr %flags77, align 4, !tbaa !105
  %cmp78 = icmp eq i32 %65, 16
  br i1 %cmp78, label %if.then94, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.then72
  %66 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags80 = getelementptr inbounds %struct.s_Reldep, ptr %66, i32 0, i32 2
  %67 = load i32, ptr %flags80, align 4, !tbaa !105
  %cmp81 = icmp eq i32 %67, 17
  br i1 %cmp81, label %if.then94, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false79
  %68 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags83 = getelementptr inbounds %struct.s_Reldep, ptr %68, i32 0, i32 2
  %69 = load i32, ptr %flags83, align 4, !tbaa !105
  %cmp84 = icmp eq i32 %69, 18
  br i1 %cmp84, label %if.then94, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false82
  %70 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags86 = getelementptr inbounds %struct.s_Reldep, ptr %70, i32 0, i32 2
  %71 = load i32, ptr %flags86, align 4, !tbaa !105
  %cmp87 = icmp eq i32 %71, 28
  br i1 %cmp87, label %if.then94, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false85
  %72 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags89 = getelementptr inbounds %struct.s_Reldep, ptr %72, i32 0, i32 2
  %73 = load i32, ptr %flags89, align 4, !tbaa !105
  %cmp90 = icmp eq i32 %73, 22
  br i1 %cmp90, label %if.then94, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false88
  %74 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags92 = getelementptr inbounds %struct.s_Reldep, ptr %74, i32 0, i32 2
  %75 = load i32, ptr %flags92, align 4, !tbaa !105
  %cmp93 = icmp eq i32 %75, 29
  br i1 %cmp93, label %if.then94, label %if.end152

if.then94:                                        ; preds = %lor.lhs.false91, %lor.lhs.false88, %lor.lhs.false85, %lor.lhs.false82, %lor.lhs.false79, %if.then72
  %76 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags95 = getelementptr inbounds %struct.s_Reldep, ptr %76, i32 0, i32 2
  %77 = load i32, ptr %flags95, align 4, !tbaa !105
  %cmp96 = icmp eq i32 %77, 18
  br i1 %cmp96, label %land.lhs.true97, label %if.end112

land.lhs.true97:                                  ; preds = %if.then94
  %78 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %79 = load ptr, ptr %rd2, align 8, !tbaa !4
  %name98 = getelementptr inbounds %struct.s_Reldep, ptr %79, i32 0, i32 0
  %80 = load i32, ptr %name98, align 4, !tbaa !73
  %81 = load ptr, ptr %rd2, align 8, !tbaa !4
  %evr99 = getelementptr inbounds %struct.s_Reldep, ptr %81, i32 0, i32 1
  %82 = load i32, ptr %evr99, align 4, !tbaa !104
  %call100 = call i32 @is_interval_dep(ptr noundef %78, i32 noundef %80, i32 noundef %82)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then102, label %if.end112

if.then102:                                       ; preds = %land.lhs.true97
  %83 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %84 = load i32, ptr %d1.addr, align 4, !tbaa !29
  %85 = load ptr, ptr %rd2, align 8, !tbaa !4
  %name103 = getelementptr inbounds %struct.s_Reldep, ptr %85, i32 0, i32 0
  %86 = load i32, ptr %name103, align 4, !tbaa !73
  %call104 = call i32 @pool_match_dep(ptr noundef %83, i32 noundef %84, i32 noundef %86)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %land.rhs106, label %land.end110

land.rhs106:                                      ; preds = %if.then102
  %87 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %88 = load i32, ptr %d1.addr, align 4, !tbaa !29
  %89 = load ptr, ptr %rd2, align 8, !tbaa !4
  %evr107 = getelementptr inbounds %struct.s_Reldep, ptr %89, i32 0, i32 1
  %90 = load i32, ptr %evr107, align 4, !tbaa !104
  %call108 = call i32 @pool_match_dep(ptr noundef %87, i32 noundef %88, i32 noundef %90)
  %tobool109 = icmp ne i32 %call108, 0
  br label %land.end110

land.end110:                                      ; preds = %land.rhs106, %if.then102
  %91 = phi i1 [ false, %if.then102 ], [ %tobool109, %land.rhs106 ]
  %land.ext111 = zext i1 %91 to i32
  store i32 %land.ext111, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end112:                                        ; preds = %land.lhs.true97, %if.then94
  %92 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %93 = load i32, ptr %d1.addr, align 4, !tbaa !29
  %94 = load ptr, ptr %rd2, align 8, !tbaa !4
  %name113 = getelementptr inbounds %struct.s_Reldep, ptr %94, i32 0, i32 0
  %95 = load i32, ptr %name113, align 4, !tbaa !73
  %call114 = call i32 @pool_match_dep(ptr noundef %92, i32 noundef %93, i32 noundef %95)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end112
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end117:                                        ; preds = %if.end112
  %96 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags118 = getelementptr inbounds %struct.s_Reldep, ptr %96, i32 0, i32 2
  %97 = load i32, ptr %flags118, align 4, !tbaa !105
  %cmp119 = icmp eq i32 %97, 22
  br i1 %cmp119, label %land.lhs.true123, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %if.end117
  %98 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags121 = getelementptr inbounds %struct.s_Reldep, ptr %98, i32 0, i32 2
  %99 = load i32, ptr %flags121, align 4, !tbaa !105
  %cmp122 = icmp eq i32 %99, 29
  br i1 %cmp122, label %land.lhs.true123, label %if.end137

land.lhs.true123:                                 ; preds = %lor.lhs.false120, %if.end117
  %100 = load ptr, ptr %rd2, align 8, !tbaa !4
  %evr124 = getelementptr inbounds %struct.s_Reldep, ptr %100, i32 0, i32 1
  %101 = load i32, ptr %evr124, align 4, !tbaa !104
  %and125 = and i32 %101, -2147483648
  %cmp126 = icmp ne i32 %and125, 0
  br i1 %cmp126, label %if.then127, label %if.end137

if.then127:                                       ; preds = %land.lhs.true123
  %102 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels128 = getelementptr inbounds %struct.s_Pool, ptr %102, i32 0, i32 2
  %103 = load ptr, ptr %rels128, align 8, !tbaa !8
  %104 = load ptr, ptr %rd2, align 8, !tbaa !4
  %evr129 = getelementptr inbounds %struct.s_Reldep, ptr %104, i32 0, i32 1
  %105 = load i32, ptr %evr129, align 4, !tbaa !104
  %xor130 = xor i32 %105, -2147483648
  %idx.ext131 = zext i32 %xor130 to i64
  %add.ptr132 = getelementptr inbounds %struct.s_Reldep, ptr %103, i64 %idx.ext131
  store ptr %add.ptr132, ptr %rd2, align 8, !tbaa !4
  %106 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags133 = getelementptr inbounds %struct.s_Reldep, ptr %106, i32 0, i32 2
  %107 = load i32, ptr %flags133, align 4, !tbaa !105
  %cmp134 = icmp ne i32 %107, 26
  br i1 %cmp134, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.then127
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end136:                                        ; preds = %if.then127
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %land.lhs.true123, %lor.lhs.false120
  %108 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags138 = getelementptr inbounds %struct.s_Reldep, ptr %108, i32 0, i32 2
  %109 = load i32, ptr %flags138, align 4, !tbaa !105
  %cmp139 = icmp ne i32 %109, 22
  br i1 %cmp139, label %land.lhs.true140, label %if.end151

land.lhs.true140:                                 ; preds = %if.end137
  %110 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags141 = getelementptr inbounds %struct.s_Reldep, ptr %110, i32 0, i32 2
  %111 = load i32, ptr %flags141, align 4, !tbaa !105
  %cmp142 = icmp ne i32 %111, 29
  br i1 %cmp142, label %land.lhs.true143, label %if.end151

land.lhs.true143:                                 ; preds = %land.lhs.true140
  %112 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags144 = getelementptr inbounds %struct.s_Reldep, ptr %112, i32 0, i32 2
  %113 = load i32, ptr %flags144, align 4, !tbaa !105
  %cmp145 = icmp ne i32 %113, 28
  br i1 %cmp145, label %land.lhs.true146, label %if.end151

land.lhs.true146:                                 ; preds = %land.lhs.true143
  %114 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %115 = load i32, ptr %d1.addr, align 4, !tbaa !29
  %116 = load ptr, ptr %rd2, align 8, !tbaa !4
  %evr147 = getelementptr inbounds %struct.s_Reldep, ptr %116, i32 0, i32 1
  %117 = load i32, ptr %evr147, align 4, !tbaa !104
  %call148 = call i32 @pool_match_dep(ptr noundef %114, i32 noundef %115, i32 noundef %117)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.then150, label %if.end151

if.then150:                                       ; preds = %land.lhs.true146
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end151:                                        ; preds = %land.lhs.true146, %land.lhs.true143, %land.lhs.true140, %if.end137
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end152:                                        ; preds = %lor.lhs.false91
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.end69
  %118 = load i32, ptr %d1.addr, align 4, !tbaa !29
  %and154 = and i32 %118, -2147483648
  %cmp155 = icmp ne i32 %and154, 0
  br i1 %cmp155, label %if.end167, label %if.then156

if.then156:                                       ; preds = %if.end153
  %119 = load i32, ptr %d2.addr, align 4, !tbaa !29
  %and157 = and i32 %119, -2147483648
  %cmp158 = icmp ne i32 %and157, 0
  br i1 %cmp158, label %if.end160, label %if.then159

if.then159:                                       ; preds = %if.then156
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end160:                                        ; preds = %if.then156
  %120 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels161 = getelementptr inbounds %struct.s_Pool, ptr %120, i32 0, i32 2
  %121 = load ptr, ptr %rels161, align 8, !tbaa !8
  %122 = load i32, ptr %d2.addr, align 4, !tbaa !29
  %xor162 = xor i32 %122, -2147483648
  %idx.ext163 = zext i32 %xor162 to i64
  %add.ptr164 = getelementptr inbounds %struct.s_Reldep, ptr %121, i64 %idx.ext163
  store ptr %add.ptr164, ptr %rd2, align 8, !tbaa !4
  %123 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %124 = load i32, ptr %d1.addr, align 4, !tbaa !29
  %125 = load ptr, ptr %rd2, align 8, !tbaa !4
  %name165 = getelementptr inbounds %struct.s_Reldep, ptr %125, i32 0, i32 0
  %126 = load i32, ptr %name165, align 4, !tbaa !73
  %call166 = call i32 @pool_match_dep(ptr noundef %123, i32 noundef %124, i32 noundef %126)
  store i32 %call166, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end167:                                        ; preds = %if.end153
  %127 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels168 = getelementptr inbounds %struct.s_Pool, ptr %127, i32 0, i32 2
  %128 = load ptr, ptr %rels168, align 8, !tbaa !8
  %129 = load i32, ptr %d1.addr, align 4, !tbaa !29
  %xor169 = xor i32 %129, -2147483648
  %idx.ext170 = zext i32 %xor169 to i64
  %add.ptr171 = getelementptr inbounds %struct.s_Reldep, ptr %128, i64 %idx.ext170
  store ptr %add.ptr171, ptr %rd1, align 8, !tbaa !4
  %130 = load i32, ptr %d2.addr, align 4, !tbaa !29
  %and172 = and i32 %130, -2147483648
  %cmp173 = icmp ne i32 %and172, 0
  br i1 %cmp173, label %if.end177, label %if.then174

if.then174:                                       ; preds = %if.end167
  %131 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %132 = load ptr, ptr %rd1, align 8, !tbaa !4
  %name175 = getelementptr inbounds %struct.s_Reldep, ptr %132, i32 0, i32 0
  %133 = load i32, ptr %name175, align 4, !tbaa !73
  %134 = load i32, ptr %d2.addr, align 4, !tbaa !29
  %call176 = call i32 @pool_match_dep(ptr noundef %131, i32 noundef %133, i32 noundef %134)
  store i32 %call176, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end177:                                        ; preds = %if.end167
  %135 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels178 = getelementptr inbounds %struct.s_Pool, ptr %135, i32 0, i32 2
  %136 = load ptr, ptr %rels178, align 8, !tbaa !8
  %137 = load i32, ptr %d2.addr, align 4, !tbaa !29
  %xor179 = xor i32 %137, -2147483648
  %idx.ext180 = zext i32 %xor179 to i64
  %add.ptr181 = getelementptr inbounds %struct.s_Reldep, ptr %136, i64 %idx.ext180
  store ptr %add.ptr181, ptr %rd2, align 8, !tbaa !4
  %138 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %139 = load ptr, ptr %rd1, align 8, !tbaa !4
  %name182 = getelementptr inbounds %struct.s_Reldep, ptr %139, i32 0, i32 0
  %140 = load i32, ptr %name182, align 4, !tbaa !73
  %141 = load ptr, ptr %rd2, align 8, !tbaa !4
  %name183 = getelementptr inbounds %struct.s_Reldep, ptr %141, i32 0, i32 0
  %142 = load i32, ptr %name183, align 4, !tbaa !73
  %call184 = call i32 @pool_match_dep(ptr noundef %138, i32 noundef %140, i32 noundef %142)
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %if.end187, label %if.then186

if.then186:                                       ; preds = %if.end177
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end187:                                        ; preds = %if.end177
  %143 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %144 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags188 = getelementptr inbounds %struct.s_Reldep, ptr %144, i32 0, i32 2
  %145 = load i32, ptr %flags188, align 4, !tbaa !105
  %146 = load ptr, ptr %rd1, align 8, !tbaa !4
  %evr189 = getelementptr inbounds %struct.s_Reldep, ptr %146, i32 0, i32 1
  %147 = load i32, ptr %evr189, align 4, !tbaa !104
  %148 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags190 = getelementptr inbounds %struct.s_Reldep, ptr %148, i32 0, i32 2
  %149 = load i32, ptr %flags190, align 4, !tbaa !105
  %150 = load ptr, ptr %rd2, align 8, !tbaa !4
  %evr191 = getelementptr inbounds %struct.s_Reldep, ptr %150, i32 0, i32 1
  %151 = load i32, ptr %evr191, align 4, !tbaa !104
  %call192 = call i32 @pool_intersect_evrs(ptr noundef %143, i32 noundef %145, i32 noundef %147, i32 noundef %149, i32 noundef %151)
  store i32 %call192, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end187, %if.then186, %if.then174, %if.end160, %if.then159, %if.end151, %if.then150, %if.then135, %if.then116, %land.end110, %if.end67, %if.then66, %if.then51, %if.then32, %land.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd1) #10
  %152 = load i32, ptr %retval, align 4
  ret i32 %152
}

; Function Attrs: nounwind uwtable
define internal i32 @is_interval_dep(ptr noundef %pool, i32 noundef %d1, i32 noundef %d2) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %d1.addr = alloca i32, align 4
  %d2.addr = alloca i32, align 4
  %rd1 = alloca ptr, align 8
  %rd2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %d1, ptr %d1.addr, align 4, !tbaa !29
  store i32 %d2, ptr %d2.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd2) #10
  %0 = load i32, ptr %d1.addr, align 4, !tbaa !29
  %and = and i32 %0, -2147483648
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %d2.addr, align 4, !tbaa !29
  %and1 = and i32 %1, -2147483648
  %cmp2 = icmp ne i32 %and1, 0
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels = getelementptr inbounds %struct.s_Pool, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %rels, align 8, !tbaa !8
  %4 = load i32, ptr %d1.addr, align 4, !tbaa !29
  %xor = xor i32 %4, -2147483648
  %idx.ext = zext i32 %xor to i64
  %add.ptr = getelementptr inbounds %struct.s_Reldep, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %rd1, align 8, !tbaa !4
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels3 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %rels3, align 8, !tbaa !8
  %7 = load i32, ptr %d2.addr, align 4, !tbaa !29
  %xor4 = xor i32 %7, -2147483648
  %idx.ext5 = zext i32 %xor4 to i64
  %add.ptr6 = getelementptr inbounds %struct.s_Reldep, ptr %6, i64 %idx.ext5
  store ptr %add.ptr6, ptr %rd2, align 8, !tbaa !4
  %8 = load ptr, ptr %rd1, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.s_Reldep, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %name, align 4, !tbaa !73
  %10 = load ptr, ptr %rd2, align 8, !tbaa !4
  %name7 = getelementptr inbounds %struct.s_Reldep, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %name7, align 4, !tbaa !73
  %cmp8 = icmp ne i32 %9, %11
  br i1 %cmp8, label %if.then14, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %12 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.s_Reldep, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %flags, align 4, !tbaa !105
  %cmp10 = icmp sge i32 %13, 8
  br i1 %cmp10, label %if.then14, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %14 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags12 = getelementptr inbounds %struct.s_Reldep, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %flags12, align 4, !tbaa !105
  %cmp13 = icmp sge i32 %15, 8
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false11, %lor.lhs.false9, %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false11
  %16 = load ptr, ptr %rd1, align 8, !tbaa !4
  %flags16 = getelementptr inbounds %struct.s_Reldep, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %flags16, align 4, !tbaa !105
  %18 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags17 = getelementptr inbounds %struct.s_Reldep, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %flags17, align 4, !tbaa !105
  %xor18 = xor i32 %17, %19
  %and19 = and i32 %xor18, 5
  %cmp20 = icmp ne i32 %and19, 5
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd1) #10
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @pool_searchlazywhatprovidesq(ptr noundef %pool, i32 noundef %d) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %d.addr = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %elements = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %mid = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %d, ptr %d.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #10
  store i32 0, ptr %start, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %lazywhatprovidesq = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 54
  %count = getelementptr inbounds %struct.s_Queue, ptr %lazywhatprovidesq, i32 0, i32 1
  %1 = load i32, ptr %count, align 8, !tbaa !87
  store i32 %1, ptr %end, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %elements) #10
  %2 = load i32, ptr %end, align 4, !tbaa !29
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %lazywhatprovidesq1 = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 54
  %elements2 = getelementptr inbounds %struct.s_Queue, ptr %lazywhatprovidesq1, i32 0, i32 0
  %4 = load ptr, ptr %elements2, align 8, !tbaa !106
  store ptr %4, ptr %elements, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %5 = load i32, ptr %end, align 4, !tbaa !29
  %6 = load i32, ptr %start, align 4, !tbaa !29
  %sub = sub nsw i32 %5, %6
  %cmp = icmp sgt i32 %sub, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %mid) #10
  %7 = load i32, ptr %start, align 4, !tbaa !29
  %8 = load i32, ptr %end, align 4, !tbaa !29
  %add = add nsw i32 %7, %8
  %div = sdiv i32 %add, 2
  %and = and i32 %div, -2
  store i32 %and, ptr %mid, align 4, !tbaa !29
  %9 = load ptr, ptr %elements, align 8, !tbaa !4
  %10 = load i32, ptr %mid, align 4, !tbaa !29
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %idxprom
  %11 = load i32, ptr %arrayidx, align 4, !tbaa !29
  %12 = load i32, ptr %d.addr, align 4, !tbaa !29
  %cmp3 = icmp eq i32 %11, %12
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %while.body
  %13 = load ptr, ptr %elements, align 8, !tbaa !4
  %14 = load i32, ptr %mid, align 4, !tbaa !29
  %add5 = add nsw i32 %14, 1
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %13, i64 %idxprom6
  %15 = load i32, ptr %arrayidx7, align 4, !tbaa !29
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %while.body
  %16 = load ptr, ptr %elements, align 8, !tbaa !4
  %17 = load i32, ptr %mid, align 4, !tbaa !29
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %16, i64 %idxprom9
  %18 = load i32, ptr %arrayidx10, align 4, !tbaa !29
  %19 = load i32, ptr %d.addr, align 4, !tbaa !29
  %cmp11 = icmp slt i32 %18, %19
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end8
  %20 = load i32, ptr %mid, align 4, !tbaa !29
  %add13 = add nsw i32 %20, 2
  store i32 %add13, ptr %start, align 4, !tbaa !29
  br label %if.end14

if.else:                                          ; preds = %if.end8
  %21 = load i32, ptr %mid, align 4, !tbaa !29
  store i32 %21, ptr %end, align 4, !tbaa !29
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mid) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !llvm.loop !107

while.end:                                        ; preds = %while.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %22 = load i32, ptr %start, align 4, !tbaa !29
  %23 = load i32, ptr %end, align 4, !tbaa !29
  %cmp15 = icmp slt i32 %22, %23
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %elements, align 8, !tbaa !4
  %25 = load i32, ptr %start, align 4, !tbaa !29
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %24, i64 %idxprom16
  %26 = load i32, ptr %arrayidx17, align 4, !tbaa !29
  %27 = load i32, ptr %d.addr, align 4, !tbaa !29
  %cmp18 = icmp eq i32 %26, %27
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %for.body
  %28 = load ptr, ptr %elements, align 8, !tbaa !4
  %29 = load i32, ptr %start, align 4, !tbaa !29
  %add20 = add nsw i32 %29, 1
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %28, i64 %idxprom21
  %30 = load i32, ptr %arrayidx22, align 4, !tbaa !29
  store i32 %30, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25

if.end23:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %31 = load i32, ptr %start, align 4, !tbaa !29
  %add24 = add nsw i32 %31, 2
  store i32 %add24, ptr %start, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !108

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25

cleanup25:                                        ; preds = %for.end, %if.then19, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %elements) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #10
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @pool_addrelproviders(ptr noundef %pool, i32 noundef %d) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %d.addr = alloca i32, align 4
  %rd = alloca ptr, align 8
  %prd = alloca ptr, align 8
  %plist = alloca %struct.s_Queue, align 8
  %buf = alloca [16 x i32], align 16
  %name = alloca i32, align 4
  %evr = alloca i32, align 4
  %flags = alloca i32, align 4
  %pid = alloca i32, align 4
  %pidp = alloca ptr, align 8
  %p = alloca i32, align 4
  %pp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %wp = alloca i32, align 4
  %pp2 = alloca ptr, align 8
  %pp3 = alloca ptr, align 8
  %rd2 = alloca ptr, align 8
  %s = alloca ptr, align 8
  %s182 = alloca ptr, align 8
  %s209 = alloca ptr, align 8
  %s242 = alloca ptr, align 8
  %s276 = alloca ptr, align 8
  %origd = alloca i32, align 4
  %s294 = alloca ptr, align 8
  %ppaux = alloca ptr, align 8
  %eqmagic = alloca i32, align 4
  %s373 = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %d, ptr %d.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %prd) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr %plist) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr %buf) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %name) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %evr) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %pid) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %pidp) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp) #10
  %0 = load i32, ptr %d.addr, align 4, !tbaa !29
  %and = and i32 %0, -2147483648
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %2 = load i32, ptr %d.addr, align 4, !tbaa !29
  %call = call i32 @pool_addstdproviders(ptr noundef %1, i32 noundef %2)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup542

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %rels, align 8, !tbaa !8
  %5 = load i32, ptr %d.addr, align 4, !tbaa !29
  %xor = xor i32 %5, -2147483648
  %idx.ext = zext i32 %xor to i64
  %add.ptr = getelementptr inbounds %struct.s_Reldep, ptr %4, i64 %idx.ext
  store ptr %add.ptr, ptr %rd, align 8, !tbaa !4
  %6 = load ptr, ptr %rd, align 8, !tbaa !4
  %name1 = getelementptr inbounds %struct.s_Reldep, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %name1, align 4, !tbaa !73
  store i32 %7, ptr %name, align 4, !tbaa !29
  %8 = load ptr, ptr %rd, align 8, !tbaa !4
  %evr2 = getelementptr inbounds %struct.s_Reldep, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %evr2, align 4, !tbaa !104
  store i32 %9, ptr %evr, align 4, !tbaa !29
  %10 = load ptr, ptr %rd, align 8, !tbaa !4
  %flags3 = getelementptr inbounds %struct.s_Reldep, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %flags3, align 4, !tbaa !105
  store i32 %11, ptr %flags, align 4, !tbaa !29
  %12 = load i32, ptr %d.addr, align 4, !tbaa !29
  %xor4 = xor i32 %12, -2147483648
  store i32 %xor4, ptr %d.addr, align 4, !tbaa !29
  %arraydecay = getelementptr inbounds [16 x i32], ptr %buf, i64 0, i64 0
  call void @queue_init_buffer(ptr noundef %plist, ptr noundef %arraydecay, i32 noundef 16)
  %13 = load i32, ptr %flags, align 4, !tbaa !29
  %cmp5 = icmp sge i32 %13, 8
  br i1 %cmp5, label %if.then6, label %if.else333

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %wp) #10
  store i32 0, ptr %wp, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp3) #10
  %14 = load i32, ptr %flags, align 4, !tbaa !29
  switch i32 %14, label %sw.default [
    i32 18, label %sw.bb
    i32 28, label %sw.bb19
    i32 16, label %sw.bb43
    i32 17, label %sw.bb43
    i32 22, label %sw.bb43
    i32 29, label %sw.bb43
    i32 19, label %sw.bb111
    i32 20, label %sw.bb130
    i32 25, label %sw.bb220
    i32 24, label %sw.bb226
    i32 21, label %sw.bb287
  ]

sw.bb:                                            ; preds = %if.then6
  %15 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %16 = load i32, ptr %name, align 4, !tbaa !29
  %call7 = call i32 @pool_whatprovides(ptr noundef %15, i32 noundef %16)
  store i32 %call7, ptr %wp, align 4, !tbaa !29
  %17 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %18 = load i32, ptr %evr, align 4, !tbaa !29
  %call8 = call ptr @pool_whatprovides_ptr(ptr noundef %17, i32 noundef %18)
  store ptr %call8, ptr %pp2, align 8, !tbaa !4
  %19 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata = getelementptr inbounds %struct.s_Pool, ptr %19, i32 0, i32 20
  %20 = load ptr, ptr %whatprovidesdata, align 8, !tbaa !40
  %21 = load i32, ptr %wp, align 4, !tbaa !29
  %idx.ext9 = sext i32 %21 to i64
  %add.ptr10 = getelementptr inbounds i32, ptr %20, i64 %idx.ext9
  store ptr %add.ptr10, ptr %pp, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %sw.bb
  %22 = load ptr, ptr %pp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %pp, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !29
  store i32 %23, ptr %p, align 4, !tbaa !29
  %cmp11 = icmp ne i32 %23, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load ptr, ptr %pp2, align 8, !tbaa !4
  store ptr %24, ptr %pp3, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %25 = load ptr, ptr %pp3, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !29
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %pp3, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !29
  %29 = load i32, ptr %p, align 4, !tbaa !29
  %cmp12 = icmp eq i32 %28, %29
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  br label %for.end

if.end14:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %30 = load ptr, ptr %pp3, align 8, !tbaa !4
  %incdec.ptr15 = getelementptr inbounds i32, ptr %30, i32 1
  store ptr %incdec.ptr15, ptr %pp3, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !109

for.end:                                          ; preds = %if.then13, %for.cond
  %31 = load ptr, ptr %pp3, align 8, !tbaa !4
  %32 = load i32, ptr %31, align 4, !tbaa !29
  %tobool16 = icmp ne i32 %32, 0
  br i1 %tobool16, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.end
  %33 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %33)
  br label %if.end18

if.else:                                          ; preds = %for.end
  store i32 0, ptr %wp, align 4, !tbaa !29
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  br label %while.cond, !llvm.loop !110

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.then6
  %34 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %35 = load i32, ptr %name, align 4, !tbaa !29
  %call20 = call i32 @pool_whatprovides(ptr noundef %34, i32 noundef %35)
  store i32 %call20, ptr %wp, align 4, !tbaa !29
  %36 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %37 = load i32, ptr %evr, align 4, !tbaa !29
  %call21 = call ptr @pool_whatprovides_ptr(ptr noundef %36, i32 noundef %37)
  store ptr %call21, ptr %pp2, align 8, !tbaa !4
  %38 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata22 = getelementptr inbounds %struct.s_Pool, ptr %38, i32 0, i32 20
  %39 = load ptr, ptr %whatprovidesdata22, align 8, !tbaa !40
  %40 = load i32, ptr %wp, align 4, !tbaa !29
  %idx.ext23 = sext i32 %40 to i64
  %add.ptr24 = getelementptr inbounds i32, ptr %39, i64 %idx.ext23
  store ptr %add.ptr24, ptr %pp, align 8, !tbaa !4
  br label %while.cond25

while.cond25:                                     ; preds = %if.end41, %sw.bb19
  %41 = load ptr, ptr %pp, align 8, !tbaa !4
  %incdec.ptr26 = getelementptr inbounds i32, ptr %41, i32 1
  store ptr %incdec.ptr26, ptr %pp, align 8, !tbaa !4
  %42 = load i32, ptr %41, align 4, !tbaa !29
  store i32 %42, ptr %p, align 4, !tbaa !29
  %cmp27 = icmp ne i32 %42, 0
  br i1 %cmp27, label %while.body28, label %while.end42

while.body28:                                     ; preds = %while.cond25
  %43 = load ptr, ptr %pp2, align 8, !tbaa !4
  store ptr %43, ptr %pp3, align 8, !tbaa !4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc35, %while.body28
  %44 = load ptr, ptr %pp3, align 8, !tbaa !4
  %45 = load i32, ptr %44, align 4, !tbaa !29
  %tobool30 = icmp ne i32 %45, 0
  br i1 %tobool30, label %for.body31, label %for.end37

for.body31:                                       ; preds = %for.cond29
  %46 = load ptr, ptr %pp3, align 8, !tbaa !4
  %47 = load i32, ptr %46, align 4, !tbaa !29
  %48 = load i32, ptr %p, align 4, !tbaa !29
  %cmp32 = icmp eq i32 %47, %48
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.body31
  br label %for.end37

if.end34:                                         ; preds = %for.body31
  br label %for.inc35

for.inc35:                                        ; preds = %if.end34
  %49 = load ptr, ptr %pp3, align 8, !tbaa !4
  %incdec.ptr36 = getelementptr inbounds i32, ptr %49, i32 1
  store ptr %incdec.ptr36, ptr %pp3, align 8, !tbaa !4
  br label %for.cond29, !llvm.loop !111

for.end37:                                        ; preds = %if.then33, %for.cond29
  %50 = load ptr, ptr %pp3, align 8, !tbaa !4
  %51 = load i32, ptr %50, align 4, !tbaa !29
  %tobool38 = icmp ne i32 %51, 0
  br i1 %tobool38, label %if.else40, label %if.then39

if.then39:                                        ; preds = %for.end37
  %52 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %52)
  br label %if.end41

if.else40:                                        ; preds = %for.end37
  store i32 0, ptr %wp, align 4, !tbaa !29
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.then39
  br label %while.cond25, !llvm.loop !112

while.end42:                                      ; preds = %while.cond25
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.then6, %if.then6, %if.then6, %if.then6
  %53 = load i32, ptr %flags, align 4, !tbaa !29
  %cmp44 = icmp eq i32 %53, 22
  br i1 %cmp44, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb43
  %54 = load i32, ptr %flags, align 4, !tbaa !29
  %cmp45 = icmp eq i32 %54, 29
  br i1 %cmp45, label %if.then46, label %if.end59

if.then46:                                        ; preds = %lor.lhs.false, %sw.bb43
  %55 = load i32, ptr %evr, align 4, !tbaa !29
  %and47 = and i32 %55, -2147483648
  %cmp48 = icmp ne i32 %and47, 0
  br i1 %cmp48, label %if.then49, label %if.else57

if.then49:                                        ; preds = %if.then46
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd2) #10
  %56 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels50 = getelementptr inbounds %struct.s_Pool, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %rels50, align 8, !tbaa !8
  %58 = load i32, ptr %evr, align 4, !tbaa !29
  %xor51 = xor i32 %58, -2147483648
  %idx.ext52 = zext i32 %xor51 to i64
  %add.ptr53 = getelementptr inbounds %struct.s_Reldep, ptr %57, i64 %idx.ext52
  store ptr %add.ptr53, ptr %rd2, align 8, !tbaa !4
  %59 = load ptr, ptr %rd2, align 8, !tbaa !4
  %flags54 = getelementptr inbounds %struct.s_Reldep, ptr %59, i32 0, i32 2
  %60 = load i32, ptr %flags54, align 4, !tbaa !105
  %cmp55 = icmp eq i32 %60, 26
  br i1 %cmp55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then49
  %61 = load ptr, ptr %rd2, align 8, !tbaa !4
  %evr56 = getelementptr inbounds %struct.s_Reldep, ptr %61, i32 0, i32 1
  %62 = load i32, ptr %evr56, align 4, !tbaa !104
  br label %cond.end

cond.false:                                       ; preds = %if.then49
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %62, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %evr, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd2) #10
  br label %if.end58

if.else57:                                        ; preds = %if.then46
  store i32 0, ptr %evr, align 4, !tbaa !29
  br label %if.end58

if.end58:                                         ; preds = %if.else57, %cond.end
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %lor.lhs.false
  %63 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %64 = load i32, ptr %name, align 4, !tbaa !29
  %call60 = call i32 @pool_whatprovides(ptr noundef %63, i32 noundef %64)
  store i32 %call60, ptr %wp, align 4, !tbaa !29
  %65 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata61 = getelementptr inbounds %struct.s_Pool, ptr %65, i32 0, i32 20
  %66 = load ptr, ptr %whatprovidesdata61, align 8, !tbaa !40
  %67 = load i32, ptr %wp, align 4, !tbaa !29
  %idxprom = sext i32 %67 to i64
  %arrayidx = getelementptr inbounds i32, ptr %66, i64 %idxprom
  %68 = load i32, ptr %arrayidx, align 4, !tbaa !29
  %tobool62 = icmp ne i32 %68, 0
  br i1 %tobool62, label %if.else70, label %if.then63

if.then63:                                        ; preds = %if.end59
  %69 = load i32, ptr %evr, align 4, !tbaa !29
  %tobool64 = icmp ne i32 %69, 0
  br i1 %tobool64, label %cond.true65, label %cond.false67

cond.true65:                                      ; preds = %if.then63
  %70 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %71 = load i32, ptr %evr, align 4, !tbaa !29
  %call66 = call i32 @pool_whatprovides(ptr noundef %70, i32 noundef %71)
  br label %cond.end68

cond.false67:                                     ; preds = %if.then63
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %cond.true65
  %cond69 = phi i32 [ %call66, %cond.true65 ], [ 1, %cond.false67 ]
  store i32 %cond69, ptr %wp, align 4, !tbaa !29
  br label %if.end110

if.else70:                                        ; preds = %if.end59
  %72 = load i32, ptr %evr, align 4, !tbaa !29
  %tobool71 = icmp ne i32 %72, 0
  br i1 %tobool71, label %if.then72, label %if.end109

if.then72:                                        ; preds = %if.else70
  %73 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %74 = load i32, ptr %evr, align 4, !tbaa !29
  %call73 = call ptr @pool_whatprovides_ptr(ptr noundef %73, i32 noundef %74)
  store ptr %call73, ptr %pp2, align 8, !tbaa !4
  %75 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata74 = getelementptr inbounds %struct.s_Pool, ptr %75, i32 0, i32 20
  %76 = load ptr, ptr %whatprovidesdata74, align 8, !tbaa !40
  %77 = load i32, ptr %wp, align 4, !tbaa !29
  %idx.ext75 = sext i32 %77 to i64
  %add.ptr76 = getelementptr inbounds i32, ptr %76, i64 %idx.ext75
  store ptr %add.ptr76, ptr %pp, align 8, !tbaa !4
  br label %while.cond77

while.cond77:                                     ; preds = %if.end90, %if.then72
  %78 = load ptr, ptr %pp, align 8, !tbaa !4
  %79 = load i32, ptr %78, align 4, !tbaa !29
  %tobool78 = icmp ne i32 %79, 0
  br i1 %tobool78, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond77
  %80 = load ptr, ptr %pp2, align 8, !tbaa !4
  %81 = load i32, ptr %80, align 4, !tbaa !29
  %tobool79 = icmp ne i32 %81, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond77
  %82 = phi i1 [ false, %while.cond77 ], [ %tobool79, %land.rhs ]
  br i1 %82, label %while.body80, label %while.end91

while.body80:                                     ; preds = %land.end
  %83 = load ptr, ptr %pp, align 8, !tbaa !4
  %84 = load i32, ptr %83, align 4, !tbaa !29
  %85 = load ptr, ptr %pp2, align 8, !tbaa !4
  %86 = load i32, ptr %85, align 4, !tbaa !29
  %cmp81 = icmp slt i32 %84, %86
  br i1 %cmp81, label %if.then82, label %if.else84

if.then82:                                        ; preds = %while.body80
  %87 = load ptr, ptr %pp, align 8, !tbaa !4
  %incdec.ptr83 = getelementptr inbounds i32, ptr %87, i32 1
  store ptr %incdec.ptr83, ptr %pp, align 8, !tbaa !4
  %88 = load i32, ptr %87, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %88)
  br label %if.end90

if.else84:                                        ; preds = %while.body80
  %89 = load ptr, ptr %pp, align 8, !tbaa !4
  %90 = load i32, ptr %89, align 4, !tbaa !29
  %91 = load ptr, ptr %pp2, align 8, !tbaa !4
  %92 = load i32, ptr %91, align 4, !tbaa !29
  %cmp85 = icmp eq i32 %90, %92
  br i1 %cmp85, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.else84
  %93 = load ptr, ptr %pp, align 8, !tbaa !4
  %incdec.ptr87 = getelementptr inbounds i32, ptr %93, i32 1
  store ptr %incdec.ptr87, ptr %pp, align 8, !tbaa !4
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.else84
  %94 = load ptr, ptr %pp2, align 8, !tbaa !4
  %incdec.ptr89 = getelementptr inbounds i32, ptr %94, i32 1
  store ptr %incdec.ptr89, ptr %pp2, align 8, !tbaa !4
  %95 = load i32, ptr %94, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %95)
  br label %if.end90

if.end90:                                         ; preds = %if.end88, %if.then82
  br label %while.cond77, !llvm.loop !113

while.end91:                                      ; preds = %land.end
  br label %while.cond92

while.cond92:                                     ; preds = %while.body94, %while.end91
  %96 = load ptr, ptr %pp, align 8, !tbaa !4
  %97 = load i32, ptr %96, align 4, !tbaa !29
  %tobool93 = icmp ne i32 %97, 0
  br i1 %tobool93, label %while.body94, label %while.end96

while.body94:                                     ; preds = %while.cond92
  %98 = load ptr, ptr %pp, align 8, !tbaa !4
  %incdec.ptr95 = getelementptr inbounds i32, ptr %98, i32 1
  store ptr %incdec.ptr95, ptr %pp, align 8, !tbaa !4
  %99 = load i32, ptr %98, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %99)
  br label %while.cond92, !llvm.loop !114

while.end96:                                      ; preds = %while.cond92
  br label %while.cond97

while.cond97:                                     ; preds = %while.body99, %while.end96
  %100 = load ptr, ptr %pp2, align 8, !tbaa !4
  %101 = load i32, ptr %100, align 4, !tbaa !29
  %tobool98 = icmp ne i32 %101, 0
  br i1 %tobool98, label %while.body99, label %while.end101

while.body99:                                     ; preds = %while.cond97
  %102 = load ptr, ptr %pp2, align 8, !tbaa !4
  %incdec.ptr100 = getelementptr inbounds i32, ptr %102, i32 1
  store ptr %incdec.ptr100, ptr %pp2, align 8, !tbaa !4
  %103 = load i32, ptr %102, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %103)
  br label %while.cond97, !llvm.loop !115

while.end101:                                     ; preds = %while.cond97
  %104 = load ptr, ptr %pp, align 8, !tbaa !4
  %105 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata102 = getelementptr inbounds %struct.s_Pool, ptr %105, i32 0, i32 20
  %106 = load ptr, ptr %whatprovidesdata102, align 8, !tbaa !40
  %107 = load i32, ptr %wp, align 4, !tbaa !29
  %idx.ext103 = sext i32 %107 to i64
  %add.ptr104 = getelementptr inbounds i32, ptr %106, i64 %idx.ext103
  %sub.ptr.lhs.cast = ptrtoint ptr %104 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr104 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %count = getelementptr inbounds %struct.s_Queue, ptr %plist, i32 0, i32 1
  %108 = load i32, ptr %count, align 8, !tbaa !102
  %conv = sext i32 %108 to i64
  %cmp105 = icmp ne i64 %sub.ptr.div, %conv
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %while.end101
  store i32 0, ptr %wp, align 4, !tbaa !29
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %while.end101
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.else70
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %cond.end68
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.then6
  %109 = load i32, ptr %name, align 4, !tbaa !29
  %cmp112 = icmp eq i32 %109, 22
  br i1 %cmp112, label %if.then114, label %if.end116

if.then114:                                       ; preds = %sw.bb111
  %110 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %111 = load i32, ptr %evr, align 4, !tbaa !29
  %call115 = call i32 @pool_whatprovides(ptr noundef %110, i32 noundef %111)
  store i32 %call115, ptr %wp, align 4, !tbaa !29
  br label %sw.epilog

if.end116:                                        ; preds = %sw.bb111
  %112 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nscallback = getelementptr inbounds %struct.s_Pool, ptr %112, i32 0, i32 24
  %113 = load ptr, ptr %nscallback, align 8, !tbaa !116
  %tobool117 = icmp ne ptr %113, null
  br i1 %tobool117, label %if.then118, label %if.end129

if.then118:                                       ; preds = %if.end116
  %114 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nscallback119 = getelementptr inbounds %struct.s_Pool, ptr %114, i32 0, i32 24
  %115 = load ptr, ptr %nscallback119, align 8, !tbaa !116
  %116 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %117 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nscallbackdata = getelementptr inbounds %struct.s_Pool, ptr %117, i32 0, i32 25
  %118 = load ptr, ptr %nscallbackdata, align 8, !tbaa !117
  %119 = load i32, ptr %name, align 4, !tbaa !29
  %120 = load i32, ptr %evr, align 4, !tbaa !29
  %call120 = call i32 %115(ptr noundef %116, ptr noundef %118, i32 noundef %119, i32 noundef %120)
  store i32 %call120, ptr %p, align 4, !tbaa !29
  %121 = load i32, ptr %p, align 4, !tbaa !29
  %cmp121 = icmp sgt i32 %121, 1
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.then118
  %122 = load i32, ptr %p, align 4, !tbaa !29
  store i32 %122, ptr %wp, align 4, !tbaa !29
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.then118
  %123 = load i32, ptr %p, align 4, !tbaa !29
  %cmp125 = icmp eq i32 %123, 1
  br i1 %cmp125, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.end124
  call void @queue_push(ptr noundef %plist, i32 noundef 1)
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.end124
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end116
  br label %sw.epilog

sw.bb130:                                         ; preds = %if.then6
  %124 = load i32, ptr %evr, align 4, !tbaa !29
  %cmp131 = icmp eq i32 %124, 24
  br i1 %cmp131, label %if.then136, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %sw.bb130
  %125 = load i32, ptr %evr, align 4, !tbaa !29
  %cmp134 = icmp eq i32 %125, 25
  br i1 %cmp134, label %if.then136, label %if.end166

if.then136:                                       ; preds = %lor.lhs.false133, %sw.bb130
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10
  store i32 1, ptr %p, align 4, !tbaa !29
  %126 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %126, i32 0, i32 8
  %127 = load ptr, ptr %solvables, align 8, !tbaa !16
  %128 = load i32, ptr %p, align 4, !tbaa !29
  %idx.ext137 = sext i32 %128 to i64
  %add.ptr138 = getelementptr inbounds %struct.s_Solvable, ptr %127, i64 %idx.ext137
  store ptr %add.ptr138, ptr %s, align 8, !tbaa !4
  br label %for.cond139

for.cond139:                                      ; preds = %for.inc163, %if.then136
  %129 = load i32, ptr %p, align 4, !tbaa !29
  %130 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables = getelementptr inbounds %struct.s_Pool, ptr %130, i32 0, i32 9
  %131 = load i32, ptr %nsolvables, align 8, !tbaa !17
  %cmp140 = icmp slt i32 %129, %131
  br i1 %cmp140, label %for.body142, label %for.end165

for.body142:                                      ; preds = %for.cond139
  %132 = load ptr, ptr %s, align 8, !tbaa !4
  %repo = getelementptr inbounds %struct.s_Solvable, ptr %132, i32 0, i32 4
  %133 = load ptr, ptr %repo, align 8, !tbaa !69
  %tobool143 = icmp ne ptr %133, null
  br i1 %tobool143, label %if.end145, label %if.then144

if.then144:                                       ; preds = %for.body142
  br label %for.inc163

if.end145:                                        ; preds = %for.body142
  %134 = load ptr, ptr %s, align 8, !tbaa !4
  %arch = getelementptr inbounds %struct.s_Solvable, ptr %134, i32 0, i32 1
  %135 = load i32, ptr %arch, align 4, !tbaa !22
  %136 = load i32, ptr %evr, align 4, !tbaa !29
  %cmp146 = icmp ne i32 %135, %136
  br i1 %cmp146, label %land.lhs.true, label %if.end152

land.lhs.true:                                    ; preds = %if.end145
  %137 = load ptr, ptr %s, align 8, !tbaa !4
  %arch148 = getelementptr inbounds %struct.s_Solvable, ptr %137, i32 0, i32 1
  %138 = load i32, ptr %arch148, align 4, !tbaa !22
  %cmp149 = icmp ne i32 %138, 25
  br i1 %cmp149, label %if.then151, label %if.end152

if.then151:                                       ; preds = %land.lhs.true
  br label %for.inc163

if.end152:                                        ; preds = %land.lhs.true, %if.end145
  %139 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %140 = load ptr, ptr %s, align 8, !tbaa !4
  %call153 = call i32 @pool_disabled_solvable(ptr noundef %139, ptr noundef %140)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.then155, label %if.end156

if.then155:                                       ; preds = %if.end152
  br label %for.inc163

if.end156:                                        ; preds = %if.end152
  %141 = load i32, ptr %name, align 4, !tbaa !29
  %tobool157 = icmp ne i32 %141, 0
  br i1 %tobool157, label %lor.lhs.false158, label %if.then161

lor.lhs.false158:                                 ; preds = %if.end156
  %142 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %143 = load ptr, ptr %s, align 8, !tbaa !4
  %144 = load i32, ptr %name, align 4, !tbaa !29
  %call159 = call i32 @pool_match_nevr(ptr noundef %142, ptr noundef %143, i32 noundef %144)
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.then161, label %if.end162

if.then161:                                       ; preds = %lor.lhs.false158, %if.end156
  %145 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %145)
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %lor.lhs.false158
  br label %for.inc163

for.inc163:                                       ; preds = %if.end162, %if.then155, %if.then151, %if.then144
  %146 = load i32, ptr %p, align 4, !tbaa !29
  %inc = add nsw i32 %146, 1
  store i32 %inc, ptr %p, align 4, !tbaa !29
  %147 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr164 = getelementptr inbounds %struct.s_Solvable, ptr %147, i32 1
  store ptr %incdec.ptr164, ptr %s, align 8, !tbaa !4
  br label %for.cond139, !llvm.loop !118

for.end165:                                       ; preds = %for.cond139
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10
  br label %sw.epilog

if.end166:                                        ; preds = %lor.lhs.false133
  %148 = load i32, ptr %name, align 4, !tbaa !29
  %tobool167 = icmp ne i32 %148, 0
  br i1 %tobool167, label %if.end199, label %if.then168

if.then168:                                       ; preds = %if.end166
  store i32 2, ptr %p, align 4, !tbaa !29
  br label %for.cond169

for.cond169:                                      ; preds = %for.inc196, %if.then168
  %149 = load i32, ptr %p, align 4, !tbaa !29
  %150 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables170 = getelementptr inbounds %struct.s_Pool, ptr %150, i32 0, i32 9
  %151 = load i32, ptr %nsolvables170, align 8, !tbaa !17
  %cmp171 = icmp slt i32 %149, %151
  br i1 %cmp171, label %for.body173, label %for.end198

for.body173:                                      ; preds = %for.cond169
  %152 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables174 = getelementptr inbounds %struct.s_Pool, ptr %152, i32 0, i32 8
  %153 = load ptr, ptr %solvables174, align 8, !tbaa !16
  %154 = load i32, ptr %p, align 4, !tbaa !29
  %idxprom175 = sext i32 %154 to i64
  %arrayidx176 = getelementptr inbounds %struct.s_Solvable, ptr %153, i64 %idxprom175
  %repo177 = getelementptr inbounds %struct.s_Solvable, ptr %arrayidx176, i32 0, i32 4
  %155 = load ptr, ptr %repo177, align 8, !tbaa !69
  %cmp178 = icmp eq ptr %155, null
  br i1 %cmp178, label %if.then180, label %if.else181

if.then180:                                       ; preds = %for.body173
  br label %for.inc196

if.else181:                                       ; preds = %for.body173
  call void @llvm.lifetime.start.p0(i64 8, ptr %s182) #10
  %156 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables183 = getelementptr inbounds %struct.s_Pool, ptr %156, i32 0, i32 8
  %157 = load ptr, ptr %solvables183, align 8, !tbaa !16
  %158 = load i32, ptr %p, align 4, !tbaa !29
  %idx.ext184 = sext i32 %158 to i64
  %add.ptr185 = getelementptr inbounds %struct.s_Solvable, ptr %157, i64 %idx.ext184
  store ptr %add.ptr185, ptr %s182, align 8, !tbaa !4
  %159 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %160 = load ptr, ptr %s182, align 8, !tbaa !4
  %call186 = call i32 @pool_installable_whatprovides(ptr noundef %159, ptr noundef %160)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.end189, label %if.then188

if.then188:                                       ; preds = %if.else181
  store i32 24, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end189:                                        ; preds = %if.else181
  %161 = load ptr, ptr %s182, align 8, !tbaa !4
  %arch190 = getelementptr inbounds %struct.s_Solvable, ptr %161, i32 0, i32 1
  %162 = load i32, ptr %arch190, align 4, !tbaa !22
  %163 = load i32, ptr %evr, align 4, !tbaa !29
  %cmp191 = icmp eq i32 %162, %163
  br i1 %cmp191, label %if.then193, label %if.end194

if.then193:                                       ; preds = %if.end189
  %164 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %164)
  br label %if.end194

if.end194:                                        ; preds = %if.then193, %if.end189
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end194, %if.then188
  call void @llvm.lifetime.end.p0(i64 8, ptr %s182) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 24, label %for.inc196
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end195

if.end195:                                        ; preds = %cleanup.cont
  br label %for.inc196

for.inc196:                                       ; preds = %if.end195, %cleanup, %if.then180
  %165 = load i32, ptr %p, align 4, !tbaa !29
  %inc197 = add nsw i32 %165, 1
  store i32 %inc197, ptr %p, align 4, !tbaa !29
  br label %for.cond169, !llvm.loop !119

for.end198:                                       ; preds = %for.cond169
  br label %sw.epilog

if.end199:                                        ; preds = %if.end166
  %166 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %167 = load i32, ptr %name, align 4, !tbaa !29
  %call200 = call i32 @pool_whatprovides(ptr noundef %166, i32 noundef %167)
  store i32 %call200, ptr %wp, align 4, !tbaa !29
  %168 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata201 = getelementptr inbounds %struct.s_Pool, ptr %168, i32 0, i32 20
  %169 = load ptr, ptr %whatprovidesdata201, align 8, !tbaa !40
  %170 = load i32, ptr %wp, align 4, !tbaa !29
  %idx.ext202 = sext i32 %170 to i64
  %add.ptr203 = getelementptr inbounds i32, ptr %169, i64 %idx.ext202
  store ptr %add.ptr203, ptr %pp, align 8, !tbaa !4
  br label %while.cond204

while.cond204:                                    ; preds = %if.end218, %if.end199
  %171 = load ptr, ptr %pp, align 8, !tbaa !4
  %incdec.ptr205 = getelementptr inbounds i32, ptr %171, i32 1
  store ptr %incdec.ptr205, ptr %pp, align 8, !tbaa !4
  %172 = load i32, ptr %171, align 4, !tbaa !29
  store i32 %172, ptr %p, align 4, !tbaa !29
  %cmp206 = icmp ne i32 %172, 0
  br i1 %cmp206, label %while.body208, label %while.end219

while.body208:                                    ; preds = %while.cond204
  call void @llvm.lifetime.start.p0(i64 8, ptr %s209) #10
  %173 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables210 = getelementptr inbounds %struct.s_Pool, ptr %173, i32 0, i32 8
  %174 = load ptr, ptr %solvables210, align 8, !tbaa !16
  %175 = load i32, ptr %p, align 4, !tbaa !29
  %idx.ext211 = sext i32 %175 to i64
  %add.ptr212 = getelementptr inbounds %struct.s_Solvable, ptr %174, i64 %idx.ext211
  store ptr %add.ptr212, ptr %s209, align 8, !tbaa !4
  %176 = load ptr, ptr %s209, align 8, !tbaa !4
  %arch213 = getelementptr inbounds %struct.s_Solvable, ptr %176, i32 0, i32 1
  %177 = load i32, ptr %arch213, align 4, !tbaa !22
  %178 = load i32, ptr %evr, align 4, !tbaa !29
  %cmp214 = icmp eq i32 %177, %178
  br i1 %cmp214, label %if.then216, label %if.else217

if.then216:                                       ; preds = %while.body208
  %179 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %179)
  br label %if.end218

if.else217:                                       ; preds = %while.body208
  store i32 0, ptr %wp, align 4, !tbaa !29
  br label %if.end218

if.end218:                                        ; preds = %if.else217, %if.then216
  call void @llvm.lifetime.end.p0(i64 8, ptr %s209) #10
  br label %while.cond204, !llvm.loop !120

while.end219:                                     ; preds = %while.cond204
  br label %sw.epilog

sw.bb220:                                         ; preds = %if.then6
  %180 = load i32, ptr %evr, align 4, !tbaa !29
  %cmp221 = icmp ne i32 %180, 28
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %sw.bb220
  br label %sw.epilog

if.end224:                                        ; preds = %sw.bb220
  %181 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %182 = load i32, ptr %name, align 4, !tbaa !29
  %call225 = call i32 @pool_whatprovides(ptr noundef %181, i32 noundef %182)
  store i32 %call225, ptr %wp, align 4, !tbaa !29
  br label %sw.epilog

sw.bb226:                                         ; preds = %if.then6
  %183 = load i32, ptr %name, align 4, !tbaa !29
  %tobool227 = icmp ne i32 %183, 0
  br i1 %tobool227, label %if.end266, label %if.then228

if.then228:                                       ; preds = %sw.bb226
  store i32 2, ptr %p, align 4, !tbaa !29
  br label %for.cond229

for.cond229:                                      ; preds = %for.inc263, %if.then228
  %184 = load i32, ptr %p, align 4, !tbaa !29
  %185 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables230 = getelementptr inbounds %struct.s_Pool, ptr %185, i32 0, i32 9
  %186 = load i32, ptr %nsolvables230, align 8, !tbaa !17
  %cmp231 = icmp slt i32 %184, %186
  br i1 %cmp231, label %for.body233, label %for.end265

for.body233:                                      ; preds = %for.cond229
  %187 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables234 = getelementptr inbounds %struct.s_Pool, ptr %187, i32 0, i32 8
  %188 = load ptr, ptr %solvables234, align 8, !tbaa !16
  %189 = load i32, ptr %p, align 4, !tbaa !29
  %idxprom235 = sext i32 %189 to i64
  %arrayidx236 = getelementptr inbounds %struct.s_Solvable, ptr %188, i64 %idxprom235
  %repo237 = getelementptr inbounds %struct.s_Solvable, ptr %arrayidx236, i32 0, i32 4
  %190 = load ptr, ptr %repo237, align 8, !tbaa !69
  %cmp238 = icmp eq ptr %190, null
  br i1 %cmp238, label %if.then240, label %if.else241

if.then240:                                       ; preds = %for.body233
  br label %for.inc263

if.else241:                                       ; preds = %for.body233
  call void @llvm.lifetime.start.p0(i64 8, ptr %s242) #10
  %191 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables243 = getelementptr inbounds %struct.s_Pool, ptr %191, i32 0, i32 8
  %192 = load ptr, ptr %solvables243, align 8, !tbaa !16
  %193 = load i32, ptr %p, align 4, !tbaa !29
  %idx.ext244 = sext i32 %193 to i64
  %add.ptr245 = getelementptr inbounds %struct.s_Solvable, ptr %192, i64 %idx.ext244
  store ptr %add.ptr245, ptr %s242, align 8, !tbaa !4
  %194 = load ptr, ptr %s242, align 8, !tbaa !4
  %repo246 = getelementptr inbounds %struct.s_Solvable, ptr %194, i32 0, i32 4
  %195 = load ptr, ptr %repo246, align 8, !tbaa !69
  %196 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %installed = getelementptr inbounds %struct.s_Pool, ptr %196, i32 0, i32 7
  %197 = load ptr, ptr %installed, align 8, !tbaa !63
  %cmp247 = icmp ne ptr %195, %197
  br i1 %cmp247, label %land.lhs.true249, label %if.end253

land.lhs.true249:                                 ; preds = %if.else241
  %198 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %199 = load ptr, ptr %s242, align 8, !tbaa !4
  %call250 = call i32 @pool_installable(ptr noundef %198, ptr noundef %199)
  %tobool251 = icmp ne i32 %call250, 0
  br i1 %tobool251, label %if.end253, label %if.then252

if.then252:                                       ; preds = %land.lhs.true249
  store i32 29, ptr %cleanup.dest.slot, align 4
  br label %cleanup259

if.end253:                                        ; preds = %land.lhs.true249, %if.else241
  %200 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %201 = load ptr, ptr %s242, align 8, !tbaa !4
  %name254 = getelementptr inbounds %struct.s_Solvable, ptr %201, i32 0, i32 0
  %202 = load i32, ptr %name254, align 8, !tbaa !20
  %203 = load i32, ptr %evr, align 4, !tbaa !29
  %call255 = call i32 @pool_is_kind(ptr noundef %200, i32 noundef %202, i32 noundef %203)
  %tobool256 = icmp ne i32 %call255, 0
  br i1 %tobool256, label %if.then257, label %if.end258

if.then257:                                       ; preds = %if.end253
  %204 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %204)
  br label %if.end258

if.end258:                                        ; preds = %if.then257, %if.end253
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup259

cleanup259:                                       ; preds = %if.end258, %if.then252
  call void @llvm.lifetime.end.p0(i64 8, ptr %s242) #10
  %cleanup.dest260 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest260, label %unreachable [
    i32 0, label %cleanup.cont261
    i32 29, label %for.inc263
  ]

cleanup.cont261:                                  ; preds = %cleanup259
  br label %if.end262

if.end262:                                        ; preds = %cleanup.cont261
  br label %for.inc263

for.inc263:                                       ; preds = %if.end262, %cleanup259, %if.then240
  %205 = load i32, ptr %p, align 4, !tbaa !29
  %inc264 = add nsw i32 %205, 1
  store i32 %inc264, ptr %p, align 4, !tbaa !29
  br label %for.cond229, !llvm.loop !121

for.end265:                                       ; preds = %for.cond229
  br label %sw.epilog

if.end266:                                        ; preds = %sw.bb226
  %206 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %207 = load i32, ptr %name, align 4, !tbaa !29
  %call267 = call i32 @pool_whatprovides(ptr noundef %206, i32 noundef %207)
  store i32 %call267, ptr %wp, align 4, !tbaa !29
  %208 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata268 = getelementptr inbounds %struct.s_Pool, ptr %208, i32 0, i32 20
  %209 = load ptr, ptr %whatprovidesdata268, align 8, !tbaa !40
  %210 = load i32, ptr %wp, align 4, !tbaa !29
  %idx.ext269 = sext i32 %210 to i64
  %add.ptr270 = getelementptr inbounds i32, ptr %209, i64 %idx.ext269
  store ptr %add.ptr270, ptr %pp, align 8, !tbaa !4
  br label %while.cond271

while.cond271:                                    ; preds = %if.end285, %if.end266
  %211 = load ptr, ptr %pp, align 8, !tbaa !4
  %incdec.ptr272 = getelementptr inbounds i32, ptr %211, i32 1
  store ptr %incdec.ptr272, ptr %pp, align 8, !tbaa !4
  %212 = load i32, ptr %211, align 4, !tbaa !29
  store i32 %212, ptr %p, align 4, !tbaa !29
  %cmp273 = icmp ne i32 %212, 0
  br i1 %cmp273, label %while.body275, label %while.end286

while.body275:                                    ; preds = %while.cond271
  call void @llvm.lifetime.start.p0(i64 8, ptr %s276) #10
  %213 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables277 = getelementptr inbounds %struct.s_Pool, ptr %213, i32 0, i32 8
  %214 = load ptr, ptr %solvables277, align 8, !tbaa !16
  %215 = load i32, ptr %p, align 4, !tbaa !29
  %idx.ext278 = sext i32 %215 to i64
  %add.ptr279 = getelementptr inbounds %struct.s_Solvable, ptr %214, i64 %idx.ext278
  store ptr %add.ptr279, ptr %s276, align 8, !tbaa !4
  %216 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %217 = load ptr, ptr %s276, align 8, !tbaa !4
  %name280 = getelementptr inbounds %struct.s_Solvable, ptr %217, i32 0, i32 0
  %218 = load i32, ptr %name280, align 8, !tbaa !20
  %219 = load i32, ptr %evr, align 4, !tbaa !29
  %call281 = call i32 @pool_is_kind(ptr noundef %216, i32 noundef %218, i32 noundef %219)
  %tobool282 = icmp ne i32 %call281, 0
  br i1 %tobool282, label %if.then283, label %if.else284

if.then283:                                       ; preds = %while.body275
  %220 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %220)
  br label %if.end285

if.else284:                                       ; preds = %while.body275
  store i32 0, ptr %wp, align 4, !tbaa !29
  br label %if.end285

if.end285:                                        ; preds = %if.else284, %if.then283
  call void @llvm.lifetime.end.p0(i64 8, ptr %s276) #10
  br label %while.cond271, !llvm.loop !122

while.end286:                                     ; preds = %while.cond271
  br label %sw.epilog

sw.bb287:                                         ; preds = %if.then6
  %221 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %222 = load i32, ptr %name, align 4, !tbaa !29
  %call288 = call ptr @pool_whatprovides_ptr(ptr noundef %221, i32 noundef %222)
  store ptr %call288, ptr %pp, align 8, !tbaa !4
  br label %while.cond289

while.cond289:                                    ; preds = %cleanup.cont321, %cleanup318, %sw.bb287
  %223 = load ptr, ptr %pp, align 8, !tbaa !4
  %incdec.ptr290 = getelementptr inbounds i32, ptr %223, i32 1
  store ptr %incdec.ptr290, ptr %pp, align 8, !tbaa !4
  %224 = load i32, ptr %223, align 4, !tbaa !29
  store i32 %224, ptr %p, align 4, !tbaa !29
  %cmp291 = icmp ne i32 %224, 0
  br i1 %cmp291, label %while.body293, label %while.end322

while.body293:                                    ; preds = %while.cond289
  call void @llvm.lifetime.start.p0(i64 4, ptr %origd) #10
  %225 = load i32, ptr %d.addr, align 4, !tbaa !29
  %or = or i32 %225, -2147483648
  store i32 %or, ptr %origd, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %s294) #10
  %226 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables295 = getelementptr inbounds %struct.s_Pool, ptr %226, i32 0, i32 8
  %227 = load ptr, ptr %solvables295, align 8, !tbaa !16
  %228 = load i32, ptr %p, align 4, !tbaa !29
  %idx.ext296 = sext i32 %228 to i64
  %add.ptr297 = getelementptr inbounds %struct.s_Solvable, ptr %227, i64 %idx.ext296
  store ptr %add.ptr297, ptr %s294, align 8, !tbaa !4
  %229 = load ptr, ptr %s294, align 8, !tbaa !4
  %provides = getelementptr inbounds %struct.s_Solvable, ptr %229, i32 0, i32 5
  %230 = load i32, ptr %provides, align 8, !tbaa !68
  %tobool298 = icmp ne i32 %230, 0
  br i1 %tobool298, label %if.end300, label %if.then299

if.then299:                                       ; preds = %while.body293
  store i32 32, ptr %cleanup.dest.slot, align 4
  br label %cleanup318, !llvm.loop !123

if.end300:                                        ; preds = %while.body293
  %231 = load ptr, ptr %s294, align 8, !tbaa !4
  %repo301 = getelementptr inbounds %struct.s_Solvable, ptr %231, i32 0, i32 4
  %232 = load ptr, ptr %repo301, align 8, !tbaa !69
  %idarraydata = getelementptr inbounds %struct.s_Repo, ptr %232, i32 0, i32 10
  %233 = load ptr, ptr %idarraydata, align 8, !tbaa !72
  %234 = load ptr, ptr %s294, align 8, !tbaa !4
  %provides302 = getelementptr inbounds %struct.s_Solvable, ptr %234, i32 0, i32 5
  %235 = load i32, ptr %provides302, align 8, !tbaa !68
  %idx.ext303 = zext i32 %235 to i64
  %add.ptr304 = getelementptr inbounds i32, ptr %233, i64 %idx.ext303
  store ptr %add.ptr304, ptr %pidp, align 8, !tbaa !4
  br label %while.cond305

while.cond305:                                    ; preds = %if.end313, %if.end300
  %236 = load ptr, ptr %pidp, align 8, !tbaa !4
  %incdec.ptr306 = getelementptr inbounds i32, ptr %236, i32 1
  store ptr %incdec.ptr306, ptr %pidp, align 8, !tbaa !4
  %237 = load i32, ptr %236, align 4, !tbaa !29
  store i32 %237, ptr %pid, align 4, !tbaa !29
  %cmp307 = icmp ne i32 %237, 0
  br i1 %cmp307, label %while.body309, label %while.end314

while.body309:                                    ; preds = %while.cond305
  %238 = load i32, ptr %pid, align 4, !tbaa !29
  %239 = load i32, ptr %origd, align 4, !tbaa !29
  %cmp310 = icmp eq i32 %238, %239
  br i1 %cmp310, label %if.then312, label %if.end313

if.then312:                                       ; preds = %while.body309
  br label %while.end314

if.end313:                                        ; preds = %while.body309
  br label %while.cond305, !llvm.loop !124

while.end314:                                     ; preds = %if.then312, %while.cond305
  %240 = load i32, ptr %pid, align 4, !tbaa !29
  %tobool315 = icmp ne i32 %240, 0
  br i1 %tobool315, label %if.then316, label %if.end317

if.then316:                                       ; preds = %while.end314
  %241 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %241)
  br label %if.end317

if.end317:                                        ; preds = %if.then316, %while.end314
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup318

cleanup318:                                       ; preds = %if.end317, %if.then299
  call void @llvm.lifetime.end.p0(i64 8, ptr %s294) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %origd) #10
  %cleanup.dest320 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest320, label %unreachable [
    i32 0, label %cleanup.cont321
    i32 32, label %while.cond289
  ]

cleanup.cont321:                                  ; preds = %cleanup318
  br label %while.cond289, !llvm.loop !123

while.end322:                                     ; preds = %while.cond289
  br label %sw.epilog

sw.default:                                       ; preds = %if.then6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %while.end322, %while.end286, %for.end265, %if.end224, %if.then223, %while.end219, %for.end198, %for.end165, %if.end129, %if.then114, %if.end110, %while.end42, %while.end
  %242 = load i32, ptr %wp, align 4, !tbaa !29
  %tobool323 = icmp ne i32 %242, 0
  br i1 %tobool323, label %if.then324, label %if.end327

if.then324:                                       ; preds = %sw.epilog
  call void @queue_free(ptr noundef %plist)
  %243 = load i32, ptr %wp, align 4, !tbaa !29
  %244 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides_rel = getelementptr inbounds %struct.s_Pool, ptr %244, i32 0, i32 19
  %245 = load ptr, ptr %whatprovides_rel, align 8, !tbaa !39
  %246 = load i32, ptr %d.addr, align 4, !tbaa !29
  %idxprom325 = sext i32 %246 to i64
  %arrayidx326 = getelementptr inbounds i32, ptr %245, i64 %idxprom325
  store i32 %243, ptr %arrayidx326, align 4, !tbaa !29
  %247 = load i32, ptr %wp, align 4, !tbaa !29
  store i32 %247, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup328

if.end327:                                        ; preds = %sw.epilog
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup328

cleanup328:                                       ; preds = %if.end327, %if.then324
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %wp) #10
  %cleanup.dest331 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest331, label %cleanup542 [
    i32 0, label %cleanup.cont332
  ]

cleanup.cont332:                                  ; preds = %cleanup328
  br label %if.end534

if.else333:                                       ; preds = %if.end
  %248 = load i32, ptr %flags, align 4, !tbaa !29
  %tobool334 = icmp ne i32 %248, 0
  br i1 %tobool334, label %if.then335, label %if.end533

if.then335:                                       ; preds = %if.else333
  call void @llvm.lifetime.start.p0(i64 8, ptr %ppaux) #10
  store ptr null, ptr %ppaux, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %eqmagic) #10
  store i32 0, ptr %eqmagic, align 4, !tbaa !29
  %249 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %250 = load i32, ptr %name, align 4, !tbaa !29
  %call336 = call ptr @pool_whatprovides_ptr(ptr noundef %249, i32 noundef %250)
  store ptr %call336, ptr %pp, align 8, !tbaa !4
  %251 = load i32, ptr %name, align 4, !tbaa !29
  %and337 = and i32 %251, -2147483648
  %cmp338 = icmp ne i32 %and337, 0
  br i1 %cmp338, label %if.end356, label %land.lhs.true340

land.lhs.true340:                                 ; preds = %if.then335
  %252 = load i32, ptr %name, align 4, !tbaa !29
  %253 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxoff = getelementptr inbounds %struct.s_Pool, ptr %253, i32 0, i32 57
  %254 = load i32, ptr %whatprovidesauxoff, align 8, !tbaa !45
  %cmp341 = icmp ult i32 %252, %254
  br i1 %cmp341, label %if.then343, label %if.end356

if.then343:                                       ; preds = %land.lhs.true340
  %255 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesaux = getelementptr inbounds %struct.s_Pool, ptr %255, i32 0, i32 56
  %256 = load ptr, ptr %whatprovidesaux, align 8, !tbaa !43
  %257 = load i32, ptr %name, align 4, !tbaa !29
  %idxprom344 = sext i32 %257 to i64
  %arrayidx345 = getelementptr inbounds i32, ptr %256, i64 %idxprom344
  %258 = load i32, ptr %arrayidx345, align 4, !tbaa !29
  %tobool346 = icmp ne i32 %258, 0
  br i1 %tobool346, label %cond.true347, label %cond.false353

cond.true347:                                     ; preds = %if.then343
  %259 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxdata = getelementptr inbounds %struct.s_Pool, ptr %259, i32 0, i32 58
  %260 = load ptr, ptr %whatprovidesauxdata, align 8, !tbaa !44
  %261 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesaux348 = getelementptr inbounds %struct.s_Pool, ptr %261, i32 0, i32 56
  %262 = load ptr, ptr %whatprovidesaux348, align 8, !tbaa !43
  %263 = load i32, ptr %name, align 4, !tbaa !29
  %idxprom349 = sext i32 %263 to i64
  %arrayidx350 = getelementptr inbounds i32, ptr %262, i64 %idxprom349
  %264 = load i32, ptr %arrayidx350, align 4, !tbaa !29
  %idx.ext351 = zext i32 %264 to i64
  %add.ptr352 = getelementptr inbounds i32, ptr %260, i64 %idx.ext351
  br label %cond.end354

cond.false353:                                    ; preds = %if.then343
  br label %cond.end354

cond.end354:                                      ; preds = %cond.false353, %cond.true347
  %cond355 = phi ptr [ %add.ptr352, %cond.true347 ], [ null, %cond.false353 ]
  store ptr %cond355, ptr %ppaux, align 8, !tbaa !4
  br label %if.end356

if.end356:                                        ; preds = %cond.end354, %land.lhs.true340, %if.then335
  br label %while.cond357

while.cond357:                                    ; preds = %while.body361, %if.end356
  %265 = load i32, ptr %name, align 4, !tbaa !29
  %and358 = and i32 %265, -2147483648
  %cmp359 = icmp ne i32 %and358, 0
  br i1 %cmp359, label %while.body361, label %while.end367

while.body361:                                    ; preds = %while.cond357
  %266 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels362 = getelementptr inbounds %struct.s_Pool, ptr %266, i32 0, i32 2
  %267 = load ptr, ptr %rels362, align 8, !tbaa !8
  %268 = load i32, ptr %name, align 4, !tbaa !29
  %xor363 = xor i32 %268, -2147483648
  %idx.ext364 = zext i32 %xor363 to i64
  %add.ptr365 = getelementptr inbounds %struct.s_Reldep, ptr %267, i64 %idx.ext364
  store ptr %add.ptr365, ptr %rd, align 8, !tbaa !4
  %269 = load ptr, ptr %rd, align 8, !tbaa !4
  %name366 = getelementptr inbounds %struct.s_Reldep, ptr %269, i32 0, i32 0
  %270 = load i32, ptr %name366, align 4, !tbaa !73
  store i32 %270, ptr %name, align 4, !tbaa !29
  br label %while.cond357, !llvm.loop !125

while.end367:                                     ; preds = %while.cond357
  br label %while.cond368

while.cond368:                                    ; preds = %cleanup.cont522, %cleanup520, %while.end367
  %271 = load ptr, ptr %pp, align 8, !tbaa !4
  %incdec.ptr369 = getelementptr inbounds i32, ptr %271, i32 1
  store ptr %incdec.ptr369, ptr %pp, align 8, !tbaa !4
  %272 = load i32, ptr %271, align 4, !tbaa !29
  store i32 %272, ptr %p, align 4, !tbaa !29
  %cmp370 = icmp ne i32 %272, 0
  br i1 %cmp370, label %while.body372, label %while.end523

while.body372:                                    ; preds = %while.cond368
  call void @llvm.lifetime.start.p0(i64 8, ptr %s373) #10
  %273 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables374 = getelementptr inbounds %struct.s_Pool, ptr %273, i32 0, i32 8
  %274 = load ptr, ptr %solvables374, align 8, !tbaa !16
  %275 = load i32, ptr %p, align 4, !tbaa !29
  %idx.ext375 = sext i32 %275 to i64
  %add.ptr376 = getelementptr inbounds %struct.s_Solvable, ptr %274, i64 %idx.ext375
  store ptr %add.ptr376, ptr %s373, align 8, !tbaa !4
  %276 = load ptr, ptr %ppaux, align 8, !tbaa !4
  %tobool377 = icmp ne ptr %276, null
  br i1 %tobool377, label %if.then378, label %if.end437

if.then378:                                       ; preds = %while.body372
  %277 = load ptr, ptr %ppaux, align 8, !tbaa !4
  %incdec.ptr379 = getelementptr inbounds i32, ptr %277, i32 1
  store ptr %incdec.ptr379, ptr %ppaux, align 8, !tbaa !4
  %278 = load i32, ptr %277, align 4, !tbaa !29
  store i32 %278, ptr %pid, align 4, !tbaa !29
  %279 = load i32, ptr %pid, align 4, !tbaa !29
  %tobool380 = icmp ne i32 %279, 0
  br i1 %tobool380, label %land.lhs.true381, label %if.end436

land.lhs.true381:                                 ; preds = %if.then378
  %280 = load i32, ptr %pid, align 4, !tbaa !29
  %cmp382 = icmp ne i32 %280, 1
  br i1 %cmp382, label %if.then384, label %if.end436

if.then384:                                       ; preds = %land.lhs.true381
  %281 = load i32, ptr %pid, align 4, !tbaa !29
  %and385 = and i32 %281, -2147483648
  %cmp386 = icmp ne i32 %and385, 0
  br i1 %cmp386, label %if.else397, label %if.then388

if.then388:                                       ; preds = %if.then384
  %282 = load i32, ptr %pid, align 4, !tbaa !29
  %283 = load i32, ptr %name, align 4, !tbaa !29
  %cmp389 = icmp ne i32 %282, %283
  br i1 %cmp389, label %if.then391, label %if.end392

if.then391:                                       ; preds = %if.then388
  store i32 38, ptr %cleanup.dest.slot, align 4
  br label %cleanup520, !llvm.loop !126

if.end392:                                        ; preds = %if.then388
  %284 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %disttype = getelementptr inbounds %struct.s_Pool, ptr %284, i32 0, i32 12
  %285 = load i32, ptr %disttype, align 4, !tbaa !18
  %cmp393 = icmp eq i32 %285, 1
  br i1 %cmp393, label %if.then395, label %if.end396

if.then395:                                       ; preds = %if.end392
  store i32 38, ptr %cleanup.dest.slot, align 4
  br label %cleanup520, !llvm.loop !126

if.end396:                                        ; preds = %if.end392
  br label %if.end435

if.else397:                                       ; preds = %if.then384
  %286 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels398 = getelementptr inbounds %struct.s_Pool, ptr %286, i32 0, i32 2
  %287 = load ptr, ptr %rels398, align 8, !tbaa !8
  %288 = load i32, ptr %pid, align 4, !tbaa !29
  %xor399 = xor i32 %288, -2147483648
  %idx.ext400 = zext i32 %xor399 to i64
  %add.ptr401 = getelementptr inbounds %struct.s_Reldep, ptr %287, i64 %idx.ext400
  store ptr %add.ptr401, ptr %prd, align 8, !tbaa !4
  %289 = load ptr, ptr %prd, align 8, !tbaa !4
  %name402 = getelementptr inbounds %struct.s_Reldep, ptr %289, i32 0, i32 0
  %290 = load i32, ptr %name402, align 4, !tbaa !73
  %291 = load i32, ptr %name, align 4, !tbaa !29
  %cmp403 = icmp ne i32 %290, %291
  br i1 %cmp403, label %if.then405, label %if.end406

if.then405:                                       ; preds = %if.else397
  store i32 38, ptr %cleanup.dest.slot, align 4
  br label %cleanup520, !llvm.loop !126

if.end406:                                        ; preds = %if.else397
  %292 = load i32, ptr %eqmagic, align 4, !tbaa !29
  %tobool407 = icmp ne i32 %292, 0
  br i1 %tobool407, label %if.end410, label %if.then408

if.then408:                                       ; preds = %if.end406
  %293 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %294 = load i32, ptr %flags, align 4, !tbaa !29
  %295 = load i32, ptr %evr, align 4, !tbaa !29
  %call409 = call i32 @rpmeqmagic_init(ptr noundef %293, i32 noundef %294, i32 noundef %295)
  store i32 %call409, ptr %eqmagic, align 4, !tbaa !29
  br label %if.end410

if.end410:                                        ; preds = %if.then408, %if.end406
  %296 = load i32, ptr %eqmagic, align 4, !tbaa !29
  %cmp411 = icmp sgt i32 %296, 0
  br i1 %cmp411, label %land.lhs.true413, label %if.end428

land.lhs.true413:                                 ; preds = %if.end410
  %297 = load ptr, ptr %prd, align 8, !tbaa !4
  %flags414 = getelementptr inbounds %struct.s_Reldep, ptr %297, i32 0, i32 2
  %298 = load i32, ptr %flags414, align 4, !tbaa !105
  %cmp415 = icmp eq i32 %298, 2
  br i1 %cmp415, label %land.lhs.true417, label %if.end428

land.lhs.true417:                                 ; preds = %land.lhs.true413
  %299 = load ptr, ptr %prd, align 8, !tbaa !4
  %evr418 = getelementptr inbounds %struct.s_Reldep, ptr %299, i32 0, i32 1
  %300 = load i32, ptr %evr418, align 4, !tbaa !104
  %and419 = and i32 %300, -2147483648
  %cmp420 = icmp ne i32 %and419, 0
  br i1 %cmp420, label %if.end428, label %land.lhs.true422

land.lhs.true422:                                 ; preds = %land.lhs.true417
  %301 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %302 = load ptr, ptr %prd, align 8, !tbaa !4
  %flags423 = getelementptr inbounds %struct.s_Reldep, ptr %302, i32 0, i32 2
  %303 = load i32, ptr %flags423, align 4, !tbaa !105
  %304 = load ptr, ptr %prd, align 8, !tbaa !4
  %evr424 = getelementptr inbounds %struct.s_Reldep, ptr %304, i32 0, i32 1
  %305 = load i32, ptr %evr424, align 4, !tbaa !104
  %306 = load i32, ptr %eqmagic, align 4, !tbaa !29
  %call425 = call i32 @rpmeqmagic_cantmatch(ptr noundef %301, i32 noundef %303, i32 noundef %305, i32 noundef %306)
  %tobool426 = icmp ne i32 %call425, 0
  br i1 %tobool426, label %if.then427, label %if.end428

if.then427:                                       ; preds = %land.lhs.true422
  store i32 38, ptr %cleanup.dest.slot, align 4
  br label %cleanup520, !llvm.loop !126

if.end428:                                        ; preds = %land.lhs.true422, %land.lhs.true417, %land.lhs.true413, %if.end410
  %307 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %308 = load ptr, ptr %prd, align 8, !tbaa !4
  %flags429 = getelementptr inbounds %struct.s_Reldep, ptr %308, i32 0, i32 2
  %309 = load i32, ptr %flags429, align 4, !tbaa !105
  %310 = load ptr, ptr %prd, align 8, !tbaa !4
  %evr430 = getelementptr inbounds %struct.s_Reldep, ptr %310, i32 0, i32 1
  %311 = load i32, ptr %evr430, align 4, !tbaa !104
  %312 = load i32, ptr %flags, align 4, !tbaa !29
  %313 = load i32, ptr %evr, align 4, !tbaa !29
  %call431 = call i32 @pool_match_flags_evr(ptr noundef %307, i32 noundef %309, i32 noundef %311, i32 noundef %312, i32 noundef %313)
  %tobool432 = icmp ne i32 %call431, 0
  br i1 %tobool432, label %if.end434, label %if.then433

if.then433:                                       ; preds = %if.end428
  store i32 38, ptr %cleanup.dest.slot, align 4
  br label %cleanup520, !llvm.loop !126

if.end434:                                        ; preds = %if.end428
  br label %if.end435

if.end435:                                        ; preds = %if.end434, %if.end396
  %314 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %314)
  store i32 38, ptr %cleanup.dest.slot, align 4
  br label %cleanup520, !llvm.loop !126

if.end436:                                        ; preds = %land.lhs.true381, %if.then378
  br label %if.end437

if.end437:                                        ; preds = %if.end436, %while.body372
  %315 = load ptr, ptr %s373, align 8, !tbaa !4
  %provides438 = getelementptr inbounds %struct.s_Solvable, ptr %315, i32 0, i32 5
  %316 = load i32, ptr %provides438, align 8, !tbaa !68
  %tobool439 = icmp ne i32 %316, 0
  br i1 %tobool439, label %lor.lhs.false440, label %if.then448

lor.lhs.false440:                                 ; preds = %if.end437
  %317 = load ptr, ptr %s373, align 8, !tbaa !4
  %arch441 = getelementptr inbounds %struct.s_Solvable, ptr %317, i32 0, i32 1
  %318 = load i32, ptr %arch441, align 4, !tbaa !22
  %cmp442 = icmp eq i32 %318, 24
  br i1 %cmp442, label %if.then448, label %lor.lhs.false444

lor.lhs.false444:                                 ; preds = %lor.lhs.false440
  %319 = load ptr, ptr %s373, align 8, !tbaa !4
  %arch445 = getelementptr inbounds %struct.s_Solvable, ptr %319, i32 0, i32 1
  %320 = load i32, ptr %arch445, align 4, !tbaa !22
  %cmp446 = icmp eq i32 %320, 25
  br i1 %cmp446, label %if.then448, label %if.end454

if.then448:                                       ; preds = %lor.lhs.false444, %lor.lhs.false440, %if.end437
  %321 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %322 = load ptr, ptr %s373, align 8, !tbaa !4
  %323 = load i32, ptr %d.addr, align 4, !tbaa !29
  %or449 = or i32 %323, -2147483648
  %call450 = call i32 @pool_match_nevr_rel(ptr noundef %321, ptr noundef %322, i32 noundef %or449)
  %tobool451 = icmp ne i32 %call450, 0
  br i1 %tobool451, label %if.then452, label %if.end453

if.then452:                                       ; preds = %if.then448
  %324 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %324)
  br label %if.end453

if.end453:                                        ; preds = %if.then452, %if.then448
  store i32 38, ptr %cleanup.dest.slot, align 4
  br label %cleanup520, !llvm.loop !126

if.end454:                                        ; preds = %lor.lhs.false444
  %325 = load i32, ptr %eqmagic, align 4, !tbaa !29
  %tobool455 = icmp ne i32 %325, 0
  br i1 %tobool455, label %if.end458, label %if.then456

if.then456:                                       ; preds = %if.end454
  %326 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %327 = load i32, ptr %flags, align 4, !tbaa !29
  %328 = load i32, ptr %evr, align 4, !tbaa !29
  %call457 = call i32 @rpmeqmagic_init(ptr noundef %326, i32 noundef %327, i32 noundef %328)
  store i32 %call457, ptr %eqmagic, align 4, !tbaa !29
  br label %if.end458

if.end458:                                        ; preds = %if.then456, %if.end454
  %329 = load ptr, ptr %s373, align 8, !tbaa !4
  %repo459 = getelementptr inbounds %struct.s_Solvable, ptr %329, i32 0, i32 4
  %330 = load ptr, ptr %repo459, align 8, !tbaa !69
  %idarraydata460 = getelementptr inbounds %struct.s_Repo, ptr %330, i32 0, i32 10
  %331 = load ptr, ptr %idarraydata460, align 8, !tbaa !72
  %332 = load ptr, ptr %s373, align 8, !tbaa !4
  %provides461 = getelementptr inbounds %struct.s_Solvable, ptr %332, i32 0, i32 5
  %333 = load i32, ptr %provides461, align 8, !tbaa !68
  %idx.ext462 = zext i32 %333 to i64
  %add.ptr463 = getelementptr inbounds i32, ptr %331, i64 %idx.ext462
  store ptr %add.ptr463, ptr %pidp, align 8, !tbaa !4
  br label %while.cond464

while.cond464:                                    ; preds = %if.end515, %if.then508, %if.then490, %if.then480, %if.then475, %if.end458
  %334 = load ptr, ptr %pidp, align 8, !tbaa !4
  %incdec.ptr465 = getelementptr inbounds i32, ptr %334, i32 1
  store ptr %incdec.ptr465, ptr %pidp, align 8, !tbaa !4
  %335 = load i32, ptr %334, align 4, !tbaa !29
  store i32 %335, ptr %pid, align 4, !tbaa !29
  %cmp466 = icmp ne i32 %335, 0
  br i1 %cmp466, label %while.body468, label %while.end516

while.body468:                                    ; preds = %while.cond464
  %336 = load i32, ptr %pid, align 4, !tbaa !29
  %and469 = and i32 %336, -2147483648
  %cmp470 = icmp ne i32 %and469, 0
  br i1 %cmp470, label %if.end482, label %if.then472

if.then472:                                       ; preds = %while.body468
  %337 = load i32, ptr %pid, align 4, !tbaa !29
  %338 = load i32, ptr %name, align 4, !tbaa !29
  %cmp473 = icmp ne i32 %337, %338
  br i1 %cmp473, label %if.then475, label %if.end476

if.then475:                                       ; preds = %if.then472
  br label %while.cond464, !llvm.loop !127

if.end476:                                        ; preds = %if.then472
  %339 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %disttype477 = getelementptr inbounds %struct.s_Pool, ptr %339, i32 0, i32 12
  %340 = load i32, ptr %disttype477, align 4, !tbaa !18
  %cmp478 = icmp eq i32 %340, 1
  br i1 %cmp478, label %if.then480, label %if.end481

if.then480:                                       ; preds = %if.end476
  br label %while.cond464, !llvm.loop !127

if.end481:                                        ; preds = %if.end476
  br label %while.end516

if.end482:                                        ; preds = %while.body468
  %341 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels483 = getelementptr inbounds %struct.s_Pool, ptr %341, i32 0, i32 2
  %342 = load ptr, ptr %rels483, align 8, !tbaa !8
  %343 = load i32, ptr %pid, align 4, !tbaa !29
  %xor484 = xor i32 %343, -2147483648
  %idx.ext485 = zext i32 %xor484 to i64
  %add.ptr486 = getelementptr inbounds %struct.s_Reldep, ptr %342, i64 %idx.ext485
  store ptr %add.ptr486, ptr %prd, align 8, !tbaa !4
  %344 = load ptr, ptr %prd, align 8, !tbaa !4
  %name487 = getelementptr inbounds %struct.s_Reldep, ptr %344, i32 0, i32 0
  %345 = load i32, ptr %name487, align 4, !tbaa !73
  %346 = load i32, ptr %name, align 4, !tbaa !29
  %cmp488 = icmp ne i32 %345, %346
  br i1 %cmp488, label %if.then490, label %if.end491

if.then490:                                       ; preds = %if.end482
  br label %while.cond464, !llvm.loop !127

if.end491:                                        ; preds = %if.end482
  %347 = load i32, ptr %eqmagic, align 4, !tbaa !29
  %cmp492 = icmp sgt i32 %347, 0
  br i1 %cmp492, label %land.lhs.true494, label %if.end509

land.lhs.true494:                                 ; preds = %if.end491
  %348 = load ptr, ptr %prd, align 8, !tbaa !4
  %flags495 = getelementptr inbounds %struct.s_Reldep, ptr %348, i32 0, i32 2
  %349 = load i32, ptr %flags495, align 4, !tbaa !105
  %cmp496 = icmp eq i32 %349, 2
  br i1 %cmp496, label %land.lhs.true498, label %if.end509

land.lhs.true498:                                 ; preds = %land.lhs.true494
  %350 = load ptr, ptr %prd, align 8, !tbaa !4
  %evr499 = getelementptr inbounds %struct.s_Reldep, ptr %350, i32 0, i32 1
  %351 = load i32, ptr %evr499, align 4, !tbaa !104
  %and500 = and i32 %351, -2147483648
  %cmp501 = icmp ne i32 %and500, 0
  br i1 %cmp501, label %if.end509, label %land.lhs.true503

land.lhs.true503:                                 ; preds = %land.lhs.true498
  %352 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %353 = load ptr, ptr %prd, align 8, !tbaa !4
  %flags504 = getelementptr inbounds %struct.s_Reldep, ptr %353, i32 0, i32 2
  %354 = load i32, ptr %flags504, align 4, !tbaa !105
  %355 = load ptr, ptr %prd, align 8, !tbaa !4
  %evr505 = getelementptr inbounds %struct.s_Reldep, ptr %355, i32 0, i32 1
  %356 = load i32, ptr %evr505, align 4, !tbaa !104
  %357 = load i32, ptr %eqmagic, align 4, !tbaa !29
  %call506 = call i32 @rpmeqmagic_cantmatch(ptr noundef %352, i32 noundef %354, i32 noundef %356, i32 noundef %357)
  %tobool507 = icmp ne i32 %call506, 0
  br i1 %tobool507, label %if.then508, label %if.end509

if.then508:                                       ; preds = %land.lhs.true503
  br label %while.cond464, !llvm.loop !127

if.end509:                                        ; preds = %land.lhs.true503, %land.lhs.true498, %land.lhs.true494, %if.end491
  %358 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %359 = load ptr, ptr %prd, align 8, !tbaa !4
  %flags510 = getelementptr inbounds %struct.s_Reldep, ptr %359, i32 0, i32 2
  %360 = load i32, ptr %flags510, align 4, !tbaa !105
  %361 = load ptr, ptr %prd, align 8, !tbaa !4
  %evr511 = getelementptr inbounds %struct.s_Reldep, ptr %361, i32 0, i32 1
  %362 = load i32, ptr %evr511, align 4, !tbaa !104
  %363 = load i32, ptr %flags, align 4, !tbaa !29
  %364 = load i32, ptr %evr, align 4, !tbaa !29
  %call512 = call i32 @pool_match_flags_evr(ptr noundef %358, i32 noundef %360, i32 noundef %362, i32 noundef %363, i32 noundef %364)
  %tobool513 = icmp ne i32 %call512, 0
  br i1 %tobool513, label %if.then514, label %if.end515

if.then514:                                       ; preds = %if.end509
  br label %while.end516

if.end515:                                        ; preds = %if.end509
  br label %while.cond464, !llvm.loop !127

while.end516:                                     ; preds = %if.then514, %if.end481, %while.cond464
  %365 = load i32, ptr %pid, align 4, !tbaa !29
  %tobool517 = icmp ne i32 %365, 0
  br i1 %tobool517, label %if.end519, label %if.then518

if.then518:                                       ; preds = %while.end516
  store i32 38, ptr %cleanup.dest.slot, align 4
  br label %cleanup520, !llvm.loop !126

if.end519:                                        ; preds = %while.end516
  %366 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %plist, i32 noundef %366)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup520

cleanup520:                                       ; preds = %if.end519, %if.then518, %if.end453, %if.end435, %if.then433, %if.then427, %if.then405, %if.then395, %if.then391
  call void @llvm.lifetime.end.p0(i64 8, ptr %s373) #10
  %cleanup.dest521 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest521, label %unreachable [
    i32 0, label %cleanup.cont522
    i32 38, label %while.cond368
  ]

cleanup.cont522:                                  ; preds = %cleanup520
  br label %while.cond368, !llvm.loop !126

while.end523:                                     ; preds = %while.cond368
  %count524 = getelementptr inbounds %struct.s_Queue, ptr %plist, i32 0, i32 1
  %367 = load i32, ptr %count524, align 8, !tbaa !102
  %cmp525 = icmp eq i32 %367, 0
  br i1 %cmp525, label %land.lhs.true527, label %if.end532

land.lhs.true527:                                 ; preds = %while.end523
  %368 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %369 = load i32, ptr %name, align 4, !tbaa !29
  %call528 = call ptr @pool_id2str(ptr noundef %368, i32 noundef %369)
  %call529 = call i32 @strncmp(ptr noundef %call528, ptr noundef @.str.12, i64 noundef 7) #12
  %tobool530 = icmp ne i32 %call529, 0
  br i1 %tobool530, label %if.end532, label %if.then531

if.then531:                                       ; preds = %land.lhs.true527
  call void @queue_push(ptr noundef %plist, i32 noundef 1)
  br label %if.end532

if.end532:                                        ; preds = %if.then531, %land.lhs.true527, %while.end523
  call void @llvm.lifetime.end.p0(i64 4, ptr %eqmagic) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %ppaux) #10
  br label %if.end533

if.end533:                                        ; preds = %if.end532, %if.else333
  br label %if.end534

if.end534:                                        ; preds = %if.end533, %cleanup.cont332
  %370 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %call535 = call i32 @pool_queuetowhatprovides(ptr noundef %370, ptr noundef %plist)
  %371 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides_rel536 = getelementptr inbounds %struct.s_Pool, ptr %371, i32 0, i32 19
  %372 = load ptr, ptr %whatprovides_rel536, align 8, !tbaa !39
  %373 = load i32, ptr %d.addr, align 4, !tbaa !29
  %idxprom537 = sext i32 %373 to i64
  %arrayidx538 = getelementptr inbounds i32, ptr %372, i64 %idxprom537
  store i32 %call535, ptr %arrayidx538, align 4, !tbaa !29
  call void @queue_free(ptr noundef %plist)
  %374 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides_rel539 = getelementptr inbounds %struct.s_Pool, ptr %374, i32 0, i32 19
  %375 = load ptr, ptr %whatprovides_rel539, align 8, !tbaa !39
  %376 = load i32, ptr %d.addr, align 4, !tbaa !29
  %idxprom540 = sext i32 %376 to i64
  %arrayidx541 = getelementptr inbounds i32, ptr %375, i64 %idxprom540
  %377 = load i32, ptr %arrayidx541, align 4, !tbaa !29
  store i32 %377, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup542

cleanup542:                                       ; preds = %if.end534, %cleanup328, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %pidp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %pid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %evr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %name) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr %buf) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr %plist) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %prd) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd) #10
  %378 = load i32, ptr %retval, align 4
  ret i32 %378

unreachable:                                      ; preds = %cleanup520, %cleanup318, %cleanup259, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @pool_addstdproviders(ptr noundef %pool, i32 noundef %d) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %d.addr = alloca i32, align 4
  %str = alloca ptr, align 8
  %q = alloca %struct.s_Queue, align 8
  %qbuf = alloca [16 x i32], align 16
  %di = alloca %struct.s_Dataiterator, align 8
  %oldoffset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %s = alloca ptr, align 8
  %oo = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %d, ptr %d.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr %q) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr %qbuf) #10
  call void @llvm.lifetime.start.p0(i64 416, ptr %di) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldoffset) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %addedfileprovides = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 53
  %1 = load i32, ptr %addedfileprovides, align 4, !tbaa !82
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides = getelementptr inbounds %struct.s_Pool, ptr %2, i32 0, i32 18
  %3 = load ptr, ptr %whatprovides, align 8, !tbaa !38
  %4 = load i32, ptr %d.addr, align 4, !tbaa !29
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4, !tbaa !29
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 1
  %stringspace = getelementptr inbounds %struct.s_Stringpool, ptr %ss, i32 0, i32 2
  %6 = load ptr, ptr %stringspace, align 8, !tbaa !83
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss1 = getelementptr inbounds %struct.s_Pool, ptr %7, i32 0, i32 1
  %strings = getelementptr inbounds %struct.s_Stringpool, ptr %ss1, i32 0, i32 0
  %8 = load ptr, ptr %strings, align 8, !tbaa !84
  %9 = load i32, ptr %d.addr, align 4, !tbaa !29
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 %idxprom2
  %10 = load i32, ptr %arrayidx3, align 4, !tbaa !29
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %str, align 8, !tbaa !4
  %11 = load ptr, ptr %str, align 8, !tbaa !4
  %12 = load i8, ptr %11, align 1, !tbaa !85
  %conv = sext i8 %12 to i32
  %cmp4 = icmp ne i32 %conv, 47
  br i1 %cmp4, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  %13 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides7 = getelementptr inbounds %struct.s_Pool, ptr %13, i32 0, i32 18
  %14 = load ptr, ptr %whatprovides7, align 8, !tbaa !38
  %15 = load i32, ptr %d.addr, align 4, !tbaa !29
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 %idxprom8
  store i32 1, ptr %arrayidx9, align 4, !tbaa !29
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83

if.end10:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [16 x i32], ptr %qbuf, i64 0, i64 0
  call void @queue_init_buffer(ptr noundef %q, ptr noundef %arraydecay, i32 noundef 16)
  %16 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %str, align 8, !tbaa !4
  %call = call i32 @dataiterator_init(ptr noundef %di, ptr noundef %16, ptr noundef null, i32 noundef 0, i32 noundef 72, ptr noundef %17, i32 noundef 131073)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %call11 = call i32 @dataiterator_step(ptr noundef %di)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10
  %18 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %solvables, align 8, !tbaa !16
  %solvid = getelementptr inbounds %struct.s_Dataiterator, ptr %di, i32 0, i32 14
  %20 = load i32, ptr %solvid, align 8, !tbaa !128
  %idx.ext12 = sext i32 %20 to i64
  %add.ptr13 = getelementptr inbounds %struct.s_Solvable, ptr %19, i64 %idx.ext12
  store ptr %add.ptr13, ptr %s, align 8, !tbaa !4
  %21 = load ptr, ptr %s, align 8, !tbaa !4
  %repo = getelementptr inbounds %struct.s_Solvable, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %repo, align 8, !tbaa !69
  %disabled = getelementptr inbounds %struct.s_Repo, ptr %22, i32 0, i32 7
  %23 = load i32, ptr %disabled, align 4, !tbaa !70
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %24 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %s, align 8, !tbaa !4
  %call17 = call i32 @pool_installable_whatprovides(ptr noundef %24, ptr noundef %25)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %solvid21 = getelementptr inbounds %struct.s_Dataiterator, ptr %di, i32 0, i32 14
  %26 = load i32, ptr %solvid21, align 8, !tbaa !128
  call void @queue_push(ptr noundef %q, i32 noundef %26)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  call void @dataiterator_skip_solvable(ptr noundef %di)
  br label %for.cond, !llvm.loop !132

for.end:                                          ; preds = %for.cond
  call void @dataiterator_free(ptr noundef %di)
  %27 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %28 = load i32, ptr %d.addr, align 4, !tbaa !29
  %call22 = call i32 @pool_searchlazywhatprovidesq(ptr noundef %27, i32 noundef %28)
  store i32 %call22, ptr %oldoffset, align 4, !tbaa !29
  %count = getelementptr inbounds %struct.s_Queue, ptr %q, i32 0, i32 1
  %29 = load i32, ptr %count, align 8, !tbaa !102
  %tobool23 = icmp ne i32 %29, 0
  br i1 %tobool23, label %if.else, label %if.then24

if.then24:                                        ; preds = %for.end
  %30 = load i32, ptr %oldoffset, align 4, !tbaa !29
  %tobool25 = icmp ne i32 %30, 0
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then24
  %31 = load i32, ptr %oldoffset, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %if.then24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ 1, %cond.false ]
  %32 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides26 = getelementptr inbounds %struct.s_Pool, ptr %32, i32 0, i32 18
  %33 = load ptr, ptr %whatprovides26, align 8, !tbaa !38
  %34 = load i32, ptr %d.addr, align 4, !tbaa !29
  %idxprom27 = sext i32 %34 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %33, i64 %idxprom27
  store i32 %cond, ptr %arrayidx28, align 4, !tbaa !29
  br label %if.end79

if.else:                                          ; preds = %for.end
  %35 = load i32, ptr %oldoffset, align 4, !tbaa !29
  %tobool29 = icmp ne i32 %35, 0
  br i1 %tobool29, label %if.then30, label %if.end74

if.then30:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %oo) #10
  %36 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata = getelementptr inbounds %struct.s_Pool, ptr %36, i32 0, i32 20
  %37 = load ptr, ptr %whatprovidesdata, align 8, !tbaa !40
  %38 = load i32, ptr %oldoffset, align 4, !tbaa !29
  %idx.ext31 = sext i32 %38 to i64
  %add.ptr32 = getelementptr inbounds i32, ptr %37, i64 %idx.ext31
  store ptr %add.ptr32, ptr %oo, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc54, %if.then30
  %39 = load i32, ptr %i, align 4, !tbaa !29
  %count34 = getelementptr inbounds %struct.s_Queue, ptr %q, i32 0, i32 1
  %40 = load i32, ptr %count34, align 8, !tbaa !102
  %cmp35 = icmp slt i32 %39, %40
  br i1 %cmp35, label %for.body37, label %for.end55

for.body37:                                       ; preds = %for.cond33
  %41 = load ptr, ptr %oo, align 8, !tbaa !4
  %42 = load i32, ptr %41, align 4, !tbaa !29
  %elements = getelementptr inbounds %struct.s_Queue, ptr %q, i32 0, i32 0
  %43 = load ptr, ptr %elements, align 8, !tbaa !101
  %44 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom38 = sext i32 %44 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %43, i64 %idxprom38
  %45 = load i32, ptr %arrayidx39, align 4, !tbaa !29
  %cmp40 = icmp sgt i32 %42, %45
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %for.body37
  br label %for.inc54

if.end43:                                         ; preds = %for.body37
  %46 = load ptr, ptr %oo, align 8, !tbaa !4
  %47 = load i32, ptr %46, align 4, !tbaa !29
  %elements44 = getelementptr inbounds %struct.s_Queue, ptr %q, i32 0, i32 0
  %48 = load ptr, ptr %elements44, align 8, !tbaa !101
  %49 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom45 = sext i32 %49 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %48, i64 %idxprom45
  %50 = load i32, ptr %arrayidx46, align 4, !tbaa !29
  %cmp47 = icmp slt i32 %47, %50
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end43
  %51 = load i32, ptr %i, align 4, !tbaa !29
  %52 = load ptr, ptr %oo, align 8, !tbaa !4
  %53 = load i32, ptr %52, align 4, !tbaa !29
  call void @queue_insert(ptr noundef %q, i32 noundef %51, i32 noundef %53)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end43
  %54 = load ptr, ptr %oo, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %54, i32 1
  store ptr %incdec.ptr, ptr %oo, align 8, !tbaa !4
  %55 = load ptr, ptr %oo, align 8, !tbaa !4
  %56 = load i32, ptr %55, align 4, !tbaa !29
  %tobool51 = icmp ne i32 %56, 0
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end50
  br label %for.end55

if.end53:                                         ; preds = %if.end50
  br label %for.inc54

for.inc54:                                        ; preds = %if.end53, %if.then42
  %57 = load i32, ptr %i, align 4, !tbaa !29
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %i, align 4, !tbaa !29
  br label %for.cond33, !llvm.loop !133

for.end55:                                        ; preds = %if.then52, %for.cond33
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end55
  %58 = load ptr, ptr %oo, align 8, !tbaa !4
  %59 = load i32, ptr %58, align 4, !tbaa !29
  %tobool56 = icmp ne i32 %59, 0
  br i1 %tobool56, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %60 = load ptr, ptr %oo, align 8, !tbaa !4
  %incdec.ptr57 = getelementptr inbounds i32, ptr %60, i32 1
  store ptr %incdec.ptr57, ptr %oo, align 8, !tbaa !4
  %61 = load i32, ptr %60, align 4, !tbaa !29
  call void @queue_push(ptr noundef %q, i32 noundef %61)
  br label %while.cond, !llvm.loop !134

while.end:                                        ; preds = %while.cond
  %count58 = getelementptr inbounds %struct.s_Queue, ptr %q, i32 0, i32 1
  %62 = load i32, ptr %count58, align 8, !tbaa !102
  %conv59 = sext i32 %62 to i64
  %63 = load ptr, ptr %oo, align 8, !tbaa !4
  %64 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata60 = getelementptr inbounds %struct.s_Pool, ptr %64, i32 0, i32 20
  %65 = load ptr, ptr %whatprovidesdata60, align 8, !tbaa !40
  %66 = load i32, ptr %oldoffset, align 4, !tbaa !29
  %idx.ext61 = sext i32 %66 to i64
  %add.ptr62 = getelementptr inbounds i32, ptr %65, i64 %idx.ext61
  %sub.ptr.lhs.cast = ptrtoint ptr %63 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr62 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp63 = icmp eq i64 %conv59, %sub.ptr.div
  br i1 %cmp63, label %if.then65, label %if.end69

if.then65:                                        ; preds = %while.end
  call void @queue_free(ptr noundef %q)
  %67 = load i32, ptr %oldoffset, align 4, !tbaa !29
  %68 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides66 = getelementptr inbounds %struct.s_Pool, ptr %68, i32 0, i32 18
  %69 = load ptr, ptr %whatprovides66, align 8, !tbaa !38
  %70 = load i32, ptr %d.addr, align 4, !tbaa !29
  %idxprom67 = sext i32 %70 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %69, i64 %idxprom67
  store i32 %67, ptr %arrayidx68, align 4, !tbaa !29
  %71 = load i32, ptr %oldoffset, align 4, !tbaa !29
  store i32 %71, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70

if.end69:                                         ; preds = %while.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup70

cleanup70:                                        ; preds = %if.end69, %if.then65
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %oo) #10
  %cleanup.dest72 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest72, label %cleanup83 [
    i32 0, label %cleanup.cont73
  ]

cleanup.cont73:                                   ; preds = %cleanup70
  br label %if.end74

if.end74:                                         ; preds = %cleanup.cont73, %if.else
  %72 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %call75 = call i32 @pool_queuetowhatprovides(ptr noundef %72, ptr noundef %q)
  %73 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides76 = getelementptr inbounds %struct.s_Pool, ptr %73, i32 0, i32 18
  %74 = load ptr, ptr %whatprovides76, align 8, !tbaa !38
  %75 = load i32, ptr %d.addr, align 4, !tbaa !29
  %idxprom77 = sext i32 %75 to i64
  %arrayidx78 = getelementptr inbounds i32, ptr %74, i64 %idxprom77
  store i32 %call75, ptr %arrayidx78, align 4, !tbaa !29
  br label %if.end79

if.end79:                                         ; preds = %if.end74, %cond.end
  call void @queue_free(ptr noundef %q)
  %76 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides80 = getelementptr inbounds %struct.s_Pool, ptr %76, i32 0, i32 18
  %77 = load ptr, ptr %whatprovides80, align 8, !tbaa !38
  %78 = load i32, ptr %d.addr, align 4, !tbaa !29
  %idxprom81 = sext i32 %78 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %77, i64 %idxprom81
  %79 = load i32, ptr %arrayidx82, align 4, !tbaa !29
  store i32 %79, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83

cleanup83:                                        ; preds = %if.end79, %cleanup70, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldoffset) #10
  call void @llvm.lifetime.end.p0(i64 416, ptr %di) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr %qbuf) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr %q) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #10
  %80 = load i32, ptr %retval, align 4
  ret i32 %80

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @queue_init_buffer(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pool_whatprovides(ptr noundef %pool, i32 noundef %d) #3 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %d.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %d, ptr %d.addr, align 4, !tbaa !29
  %0 = load i32, ptr %d.addr, align 4, !tbaa !29
  %and = and i32 %0, -2147483648
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 18
  %2 = load ptr, ptr %whatprovides, align 8, !tbaa !38
  %3 = load i32, ptr %d.addr, align 4, !tbaa !29
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !29
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides2 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 18
  %6 = load ptr, ptr %whatprovides2, align 8, !tbaa !38
  %7 = load i32, ptr %d.addr, align 4, !tbaa !29
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %6, i64 %idxprom3
  %8 = load i32, ptr %arrayidx4, align 4, !tbaa !29
  store i32 %8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #10
  %9 = load i32, ptr %d.addr, align 4, !tbaa !29
  %xor = xor i32 %9, -2147483648
  store i32 %xor, ptr %v, align 4, !tbaa !29
  %10 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides_rel = getelementptr inbounds %struct.s_Pool, ptr %10, i32 0, i32 19
  %11 = load ptr, ptr %whatprovides_rel, align 8, !tbaa !39
  %12 = load i32, ptr %v, align 4, !tbaa !29
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %11, i64 %idxprom5
  %13 = load i32, ptr %arrayidx6, align 4, !tbaa !29
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.else
  %14 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides_rel9 = getelementptr inbounds %struct.s_Pool, ptr %14, i32 0, i32 19
  %15 = load ptr, ptr %whatprovides_rel9, align 8, !tbaa !39
  %16 = load i32, ptr %v, align 4, !tbaa !29
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %15, i64 %idxprom10
  %17 = load i32, ptr %arrayidx11, align 4, !tbaa !29
  store i32 %17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.else
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end13

if.end13:                                         ; preds = %cleanup.cont, %if.end
  %18 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %19 = load i32, ptr %d.addr, align 4, !tbaa !29
  %call = call i32 @pool_addrelproviders(ptr noundef %18, i32 noundef %19)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %cleanup, %if.then1
  %20 = load i32, ptr %retval, align 4
  ret i32 %20

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @pool_whatprovides_ptr(ptr noundef %pool, i32 noundef %d) #3 {
entry:
  %pool.addr = alloca ptr, align 8
  %d.addr = alloca i32, align 4
  %off = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %d, ptr %d.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %off) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %1 = load i32, ptr %d.addr, align 4, !tbaa !29
  %call = call i32 @pool_whatprovides(ptr noundef %0, i32 noundef %1)
  store i32 %call, ptr %off, align 4, !tbaa !29
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata = getelementptr inbounds %struct.s_Pool, ptr %2, i32 0, i32 20
  %3 = load ptr, ptr %whatprovidesdata, align 8, !tbaa !40
  %4 = load i32, ptr %off, align 4, !tbaa !29
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i32, ptr %3, i64 %idx.ext
  call void @llvm.lifetime.end.p0(i64 4, ptr %off) #10
  ret ptr %add.ptr
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @queue_push(ptr noundef %q, i32 noundef %id) #3 {
entry:
  %q.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store i32 %id, ptr %id.addr, align 4, !tbaa !29
  %0 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %left = getelementptr inbounds %struct.s_Queue, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %left, align 8, !tbaa !103
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %q.addr, align 8, !tbaa !4
  call void @queue_alloc_one(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %id.addr, align 4, !tbaa !29
  %4 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %elements = getelementptr inbounds %struct.s_Queue, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %elements, align 8, !tbaa !101
  %6 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %count = getelementptr inbounds %struct.s_Queue, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %count, align 8, !tbaa !102
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %count, align 8, !tbaa !102
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  store i32 %3, ptr %arrayidx, align 4, !tbaa !29
  %8 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %left1 = getelementptr inbounds %struct.s_Queue, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %left1, align 8, !tbaa !103
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %left1, align 8, !tbaa !103
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pool_disabled_solvable(ptr noundef %pool, ptr noundef %s) #3 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %repo = getelementptr inbounds %struct.s_Solvable, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %repo, align 8, !tbaa !69
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %repo1 = getelementptr inbounds %struct.s_Solvable, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %repo1, align 8, !tbaa !69
  %disabled = getelementptr inbounds %struct.s_Repo, ptr %3, i32 0, i32 7
  %4 = load i32, ptr %disabled, align 4, !tbaa !70
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %considered = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 23
  %6 = load ptr, ptr %considered, align 8, !tbaa !90
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #10
  %7 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %solvables, align 8, !tbaa !16
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 56
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, ptr %id, align 4, !tbaa !29
  %10 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %considered5 = getelementptr inbounds %struct.s_Pool, ptr %10, i32 0, i32 23
  %11 = load ptr, ptr %considered5, align 8, !tbaa !90
  %map = getelementptr inbounds %struct.s_Map, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %map, align 8, !tbaa !91
  %13 = load i32, ptr %id, align 4, !tbaa !29
  %shr = ashr i32 %13, 3
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %14 = load i8, ptr %arrayidx, align 1, !tbaa !85
  %conv6 = zext i8 %14 to i32
  %15 = load i32, ptr %id, align 4, !tbaa !29
  %and = and i32 %15, 7
  %shl = shl i32 1, %and
  %and7 = and i32 %conv6, %shl
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then4
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.then4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end11

if.end11:                                         ; preds = %cleanup.cont, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %cleanup, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pool_installable(ptr noundef %pool, ptr noundef %s) #3 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arch = getelementptr inbounds %struct.s_Solvable, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %arch, align 4, !tbaa !22
  %cmp = icmp eq i32 %1, 24
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arch1 = getelementptr inbounds %struct.s_Solvable, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %arch1, align 4, !tbaa !22
  %cmp2 = icmp eq i32 %3, 25
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %repo = getelementptr inbounds %struct.s_Solvable, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %repo, align 8, !tbaa !69
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %repo3 = getelementptr inbounds %struct.s_Solvable, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %repo3, align 8, !tbaa !69
  %disabled = getelementptr inbounds %struct.s_Repo, ptr %7, i32 0, i32 7
  %8 = load i32, ptr %disabled, align 4, !tbaa !70
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %id2arch = getelementptr inbounds %struct.s_Pool, ptr %9, i32 0, i32 13
  %10 = load ptr, ptr %id2arch, align 8, !tbaa !27
  %tobool7 = icmp ne ptr %10, null
  br i1 %tobool7, label %land.lhs.true8, label %if.end15

land.lhs.true8:                                   ; preds = %if.end6
  %11 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arch9 = getelementptr inbounds %struct.s_Solvable, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %arch9, align 4, !tbaa !22
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %lor.lhs.false11, label %if.then14

lor.lhs.false11:                                  ; preds = %land.lhs.true8
  %13 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arch12 = getelementptr inbounds %struct.s_Solvable, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %arch12, align 4, !tbaa !22
  %call = call i32 @pool_arch2score(ptr noundef %13, i32 noundef %15)
  %cmp13 = icmp eq i32 %call, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false11, %land.lhs.true8
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false11, %if.end6
  %16 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %considered = getelementptr inbounds %struct.s_Pool, ptr %16, i32 0, i32 23
  %17 = load ptr, ptr %considered, align 8, !tbaa !90
  %tobool16 = icmp ne ptr %17, null
  br i1 %tobool16, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #10
  %18 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %19, i32 0, i32 8
  %20 = load ptr, ptr %solvables, align 8, !tbaa !16
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 56
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, ptr %id, align 4, !tbaa !29
  %21 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %considered18 = getelementptr inbounds %struct.s_Pool, ptr %21, i32 0, i32 23
  %22 = load ptr, ptr %considered18, align 8, !tbaa !90
  %map = getelementptr inbounds %struct.s_Map, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %map, align 8, !tbaa !91
  %24 = load i32, ptr %id, align 4, !tbaa !29
  %shr = ashr i32 %24, 3
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i8, ptr %23, i64 %idxprom
  %25 = load i8, ptr %arrayidx, align 1, !tbaa !85
  %conv19 = zext i8 %25 to i32
  %26 = load i32, ptr %id, align 4, !tbaa !29
  %and = and i32 %26, 7
  %shl = shl i32 1, %and
  %and20 = and i32 %conv19, %shl
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.then17
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.then17
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then22
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end24

if.end24:                                         ; preds = %cleanup.cont, %if.end15
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %cleanup, %if.then14, %if.then5, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pool_is_kind(ptr noundef %pool, i32 noundef %name, i32 noundef %kind) #3 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %name.addr = alloca i32, align 4
  %kind.addr = alloca i32, align 4
  %n = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %kn = alloca ptr, align 8
  %knl = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %name, ptr %name.addr, align 4, !tbaa !29
  store i32 %kind, ptr %kind.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10
  %0 = load i32, ptr %kind.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %2 = load i32, ptr %name.addr, align 4, !tbaa !29
  %call = call ptr @pool_id2str(ptr noundef %1, i32 noundef %2)
  store ptr %call, ptr %n, align 8, !tbaa !4
  %3 = load i32, ptr %kind.addr, align 4, !tbaa !29
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #10
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %5 = load i32, ptr %kind.addr, align 4, !tbaa !29
  %call2 = call ptr @pool_id2str(ptr noundef %4, i32 noundef %5)
  store ptr %call2, ptr %kn, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %knl) #10
  %6 = load ptr, ptr %kn, align 8, !tbaa !4
  %call3 = call i64 @strlen(ptr noundef %6) #12
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %knl, align 4, !tbaa !29
  %7 = load ptr, ptr %n, align 8, !tbaa !4
  %8 = load ptr, ptr %kn, align 8, !tbaa !4
  %9 = load i32, ptr %knl, align 4, !tbaa !29
  %conv4 = sext i32 %9 to i64
  %call5 = call i32 @strncmp(ptr noundef %7, ptr noundef %8, i64 noundef %conv4) #12
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then1
  %10 = load ptr, ptr %n, align 8, !tbaa !4
  %11 = load i32, ptr %knl, align 4, !tbaa !29
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %idxprom
  %12 = load i8, ptr %arrayidx, align 1, !tbaa !85
  %conv7 = sext i8 %12 to i32
  %cmp8 = icmp eq i32 %conv7, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then1
  %13 = phi i1 [ false, %if.then1 ], [ %cmp8, %land.rhs ]
  %14 = zext i1 %13 to i64
  %cond = select i1 %13, i32 1, i32 0
  store i32 %cond, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %knl) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %15 = load ptr, ptr %n, align 8, !tbaa !4
  %16 = load i8, ptr %15, align 1, !tbaa !85
  %conv10 = sext i8 %16 to i32
  %cmp11 = icmp eq i32 %conv10, 58
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.else
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end14
  %17 = load ptr, ptr %n, align 8, !tbaa !4
  %18 = load i8, ptr %17, align 1, !tbaa !85
  %conv15 = sext i8 %18 to i32
  %cmp16 = icmp sge i32 %conv15, 97
  br i1 %cmp16, label %land.rhs18, label %land.end22

land.rhs18:                                       ; preds = %while.cond
  %19 = load ptr, ptr %n, align 8, !tbaa !4
  %20 = load i8, ptr %19, align 1, !tbaa !85
  %conv19 = sext i8 %20 to i32
  %cmp20 = icmp sle i32 %conv19, 122
  br label %land.end22

land.end22:                                       ; preds = %land.rhs18, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp20, %land.rhs18 ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end22
  %22 = load ptr, ptr %n, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %n, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !135

while.end:                                        ; preds = %land.end22
  %23 = load ptr, ptr %n, align 8, !tbaa !4
  %24 = load i8, ptr %23, align 1, !tbaa !85
  %conv23 = sext i8 %24 to i32
  %cmp24 = icmp eq i32 %conv23, 58
  %25 = zext i1 %cmp24 to i64
  %cond26 = select i1 %cmp24, i32 0, i32 1
  store i32 %cond26, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then13, %land.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rpmeqmagic_init(ptr noundef %pool, i32 noundef %flags, i32 noundef %evr) #3 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %evr.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !29
  store i32 %evr, ptr %evr.addr, align 4, !tbaa !29
  %0 = load i32, ptr %flags.addr, align 4, !tbaa !29
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %disttype = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 12
  %2 = load i32, ptr %disttype, align 4, !tbaa !18
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %promoteepoch = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 33
  %4 = load i32, ptr %promoteepoch, align 8, !tbaa !51
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false2
  %5 = load i32, ptr %evr.addr, align 4, !tbaa !29
  %and = and i32 %5, -2147483648
  %cmp4 = icmp ne i32 %and, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false3
  %6 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %7 = load i32, ptr %evr.addr, align 4, !tbaa !29
  %call = call i32 @rpmeqmagic(ptr noundef %6, i32 noundef %7)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rpmeqmagic_cantmatch(ptr noundef %pool, i32 noundef %flags, i32 noundef %evr, i32 noundef %eqmagic) #3 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %evr.addr = alloca i32, align 4
  %eqmagic.addr = alloca i32, align 4
  %peqmagic = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !29
  store i32 %evr, ptr %evr.addr, align 4, !tbaa !29
  store i32 %eqmagic, ptr %eqmagic.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %peqmagic) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %1 = load i32, ptr %evr.addr, align 4, !tbaa !29
  %call = call i32 @rpmeqmagic(ptr noundef %0, i32 noundef %1)
  store i32 %call, ptr %peqmagic, align 4, !tbaa !29
  %2 = load i32, ptr %peqmagic, align 4, !tbaa !29
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %peqmagic, align 4, !tbaa !29
  %4 = load i32, ptr %eqmagic.addr, align 4, !tbaa !29
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %peqmagic) #10
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #7

declare ptr @pool_id2str(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @pool_flush_namespaceproviders(ptr noundef %pool, i32 noundef %ns, i32 noundef %evr) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %ns.addr = alloca i32, align 4
  %evr.addr = alloca i32, align 4
  %nrels = alloca i32, align 4
  %d = alloca i32, align 4
  %rd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %ns, ptr %ns.addr, align 4, !tbaa !29
  store i32 %evr, ptr %evr.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrels) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nrels1 = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %nrels1, align 8, !tbaa !15
  store i32 %1, ptr %nrels, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd) #10
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides_rel = getelementptr inbounds %struct.s_Pool, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %whatprovides_rel, align 8, !tbaa !39
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 1, ptr %d, align 4, !tbaa !29
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %rels, align 8, !tbaa !8
  %6 = load i32, ptr %d, align 4, !tbaa !29
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct.s_Reldep, ptr %5, i64 %idx.ext
  store ptr %add.ptr, ptr %rd, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %d, align 4, !tbaa !29
  %8 = load i32, ptr %nrels, align 4, !tbaa !29
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %rd, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.s_Reldep, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %flags, align 4, !tbaa !105
  %cmp2 = icmp ne i32 %10, 19
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load ptr, ptr %rd, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.s_Reldep, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %name, align 4, !tbaa !73
  %cmp3 = icmp eq i32 %12, 22
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end5:                                          ; preds = %lor.lhs.false
  %13 = load i32, ptr %ns.addr, align 4, !tbaa !29
  %tobool6 = icmp ne i32 %13, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %14 = load ptr, ptr %rd, align 8, !tbaa !4
  %name7 = getelementptr inbounds %struct.s_Reldep, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %name7, align 4, !tbaa !73
  %16 = load i32, ptr %ns.addr, align 4, !tbaa !29
  %cmp8 = icmp ne i32 %15, %16
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  br label %for.inc

if.end10:                                         ; preds = %land.lhs.true, %if.end5
  %17 = load i32, ptr %evr.addr, align 4, !tbaa !29
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %land.lhs.true12, label %if.end16

land.lhs.true12:                                  ; preds = %if.end10
  %18 = load ptr, ptr %rd, align 8, !tbaa !4
  %evr13 = getelementptr inbounds %struct.s_Reldep, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %evr13, align 4, !tbaa !104
  %20 = load i32, ptr %evr.addr, align 4, !tbaa !29
  %cmp14 = icmp ne i32 %19, %20
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true12
  br label %for.inc

if.end16:                                         ; preds = %land.lhs.true12, %if.end10
  %21 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides_rel17 = getelementptr inbounds %struct.s_Pool, ptr %21, i32 0, i32 19
  %22 = load ptr, ptr %whatprovides_rel17, align 8, !tbaa !39
  %23 = load i32, ptr %d, align 4, !tbaa !29
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds i32, ptr %22, i64 %idxprom
  %24 = load i32, ptr %arrayidx, align 4, !tbaa !29
  %tobool18 = icmp ne i32 %24, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  %25 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %26 = load i32, ptr %d, align 4, !tbaa !29
  %or = or i32 %26, -2147483648
  call void @pool_set_whatprovides(ptr noundef %25, i32 noundef %or, i32 noundef 0)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %if.then15, %if.then9, %if.then4
  %27 = load i32, ptr %d, align 4, !tbaa !29
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %d, align 4, !tbaa !29
  %28 = load ptr, ptr %rd, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.s_Reldep, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %rd, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !136

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrels) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @pool_set_whatprovides(ptr noundef %pool, i32 noundef %id, i32 noundef %providers) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %providers.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %nrels = alloca i32, align 4
  %rd = alloca ptr, align 8
  %m = alloca %struct.s_Map, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %id, ptr %id.addr, align 4, !tbaa !29
  store i32 %providers, ptr %providers.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrels) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nrels1 = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %nrels1, align 8, !tbaa !15
  store i32 %1, ptr %nrels, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr %m) #10
  %2 = load i32, ptr %id.addr, align 4, !tbaa !29
  %and = and i32 %2, -2147483648
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %id.addr, align 4, !tbaa !29
  %xor = xor i32 %3, -2147483648
  store i32 %xor, ptr %d, align 4, !tbaa !29
  %4 = load i32, ptr %providers.addr, align 4, !tbaa !29
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides_rel = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 19
  %6 = load ptr, ptr %whatprovides_rel, align 8, !tbaa !39
  %7 = load i32, ptr %d, align 4, !tbaa !29
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  store i32 %4, ptr %arrayidx, align 4, !tbaa !29
  %8 = load i32, ptr %d, align 4, !tbaa !29
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %d, align 4, !tbaa !29
  br label %if.end8

if.else:                                          ; preds = %entry
  %9 = load i32, ptr %providers.addr, align 4, !tbaa !29
  %10 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides = getelementptr inbounds %struct.s_Pool, ptr %10, i32 0, i32 18
  %11 = load ptr, ptr %whatprovides, align 8, !tbaa !38
  %12 = load i32, ptr %id.addr, align 4, !tbaa !29
  %idxprom2 = sext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %11, i64 %idxprom2
  store i32 %9, ptr %arrayidx3, align 4, !tbaa !29
  %13 = load i32, ptr %id.addr, align 4, !tbaa !29
  %14 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesauxoff = getelementptr inbounds %struct.s_Pool, ptr %14, i32 0, i32 57
  %15 = load i32, ptr %whatprovidesauxoff, align 8, !tbaa !45
  %cmp4 = icmp ult i32 %13, %15
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %16 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesaux = getelementptr inbounds %struct.s_Pool, ptr %16, i32 0, i32 56
  %17 = load ptr, ptr %whatprovidesaux, align 8, !tbaa !43
  %18 = load i32, ptr %id.addr, align 4, !tbaa !29
  %idxprom6 = sext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %17, i64 %idxprom6
  store i32 0, ptr %arrayidx7, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  store i32 1, ptr %d, align 4, !tbaa !29
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %19 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides_rel9 = getelementptr inbounds %struct.s_Pool, ptr %19, i32 0, i32 19
  %20 = load ptr, ptr %whatprovides_rel9, align 8, !tbaa !39
  %tobool = icmp ne ptr %20, null
  br i1 %tobool, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @map_init(ptr noundef %m, i32 noundef 0)
  %21 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels = getelementptr inbounds %struct.s_Pool, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %rels, align 8, !tbaa !8
  %23 = load i32, ptr %d, align 4, !tbaa !29
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds %struct.s_Reldep, ptr %22, i64 %idx.ext
  store ptr %add.ptr, ptr %rd, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %24 = load i32, ptr %d, align 4, !tbaa !29
  %25 = load i32, ptr %nrels, align 4, !tbaa !29
  %cmp12 = icmp slt i32 %24, %25
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %rd, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.s_Reldep, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %name, align 4, !tbaa !73
  %28 = load i32, ptr %id.addr, align 4, !tbaa !29
  %cmp13 = icmp eq i32 %27, %28
  br i1 %cmp13, label %if.then52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %29 = load ptr, ptr %rd, align 8, !tbaa !4
  %evr = getelementptr inbounds %struct.s_Reldep, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %evr, align 4, !tbaa !104
  %31 = load i32, ptr %id.addr, align 4, !tbaa !29
  %cmp14 = icmp eq i32 %30, %31
  br i1 %cmp14, label %if.then52, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %size = getelementptr inbounds %struct.s_Map, ptr %m, i32 0, i32 1
  %32 = load i32, ptr %size, align 8, !tbaa !137
  %tobool16 = icmp ne i32 %32, 0
  br i1 %tobool16, label %land.lhs.true, label %lor.lhs.false30

land.lhs.true:                                    ; preds = %lor.lhs.false15
  %33 = load ptr, ptr %rd, align 8, !tbaa !4
  %name17 = getelementptr inbounds %struct.s_Reldep, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %name17, align 4, !tbaa !73
  %and18 = and i32 %34, -2147483648
  %cmp19 = icmp ne i32 %and18, 0
  br i1 %cmp19, label %land.lhs.true20, label %lor.lhs.false30

land.lhs.true20:                                  ; preds = %land.lhs.true
  %map = getelementptr inbounds %struct.s_Map, ptr %m, i32 0, i32 0
  %35 = load ptr, ptr %map, align 8, !tbaa !91
  %36 = load ptr, ptr %rd, align 8, !tbaa !4
  %name21 = getelementptr inbounds %struct.s_Reldep, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %name21, align 4, !tbaa !73
  %xor22 = xor i32 %37, -2147483648
  %shr = lshr i32 %xor22, 3
  %idxprom23 = zext i32 %shr to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %35, i64 %idxprom23
  %38 = load i8, ptr %arrayidx24, align 1, !tbaa !85
  %conv = zext i8 %38 to i32
  %39 = load ptr, ptr %rd, align 8, !tbaa !4
  %name25 = getelementptr inbounds %struct.s_Reldep, ptr %39, i32 0, i32 0
  %40 = load i32, ptr %name25, align 4, !tbaa !73
  %xor26 = xor i32 %40, -2147483648
  %and27 = and i32 %xor26, 7
  %shl = shl i32 1, %and27
  %and28 = and i32 %conv, %shl
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then52, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true20, %land.lhs.true, %lor.lhs.false15
  %size31 = getelementptr inbounds %struct.s_Map, ptr %m, i32 0, i32 1
  %41 = load i32, ptr %size31, align 8, !tbaa !137
  %tobool32 = icmp ne i32 %41, 0
  br i1 %tobool32, label %land.lhs.true33, label %if.end68

land.lhs.true33:                                  ; preds = %lor.lhs.false30
  %42 = load ptr, ptr %rd, align 8, !tbaa !4
  %evr34 = getelementptr inbounds %struct.s_Reldep, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %evr34, align 4, !tbaa !104
  %and35 = and i32 %43, -2147483648
  %cmp36 = icmp ne i32 %and35, 0
  br i1 %cmp36, label %land.lhs.true38, label %if.end68

land.lhs.true38:                                  ; preds = %land.lhs.true33
  %map39 = getelementptr inbounds %struct.s_Map, ptr %m, i32 0, i32 0
  %44 = load ptr, ptr %map39, align 8, !tbaa !91
  %45 = load ptr, ptr %rd, align 8, !tbaa !4
  %evr40 = getelementptr inbounds %struct.s_Reldep, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %evr40, align 4, !tbaa !104
  %xor41 = xor i32 %46, -2147483648
  %shr42 = lshr i32 %xor41, 3
  %idxprom43 = zext i32 %shr42 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %44, i64 %idxprom43
  %47 = load i8, ptr %arrayidx44, align 1, !tbaa !85
  %conv45 = zext i8 %47 to i32
  %48 = load ptr, ptr %rd, align 8, !tbaa !4
  %evr46 = getelementptr inbounds %struct.s_Reldep, ptr %48, i32 0, i32 1
  %49 = load i32, ptr %evr46, align 4, !tbaa !104
  %xor47 = xor i32 %49, -2147483648
  %and48 = and i32 %xor47, 7
  %shl49 = shl i32 1, %and48
  %and50 = and i32 %conv45, %shl49
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then52, label %if.end68

if.then52:                                        ; preds = %land.lhs.true38, %land.lhs.true20, %lor.lhs.false, %for.body
  %50 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides_rel53 = getelementptr inbounds %struct.s_Pool, ptr %50, i32 0, i32 19
  %51 = load ptr, ptr %whatprovides_rel53, align 8, !tbaa !39
  %52 = load i32, ptr %d, align 4, !tbaa !29
  %idxprom54 = sext i32 %52 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %51, i64 %idxprom54
  store i32 0, ptr %arrayidx55, align 4, !tbaa !29
  %size56 = getelementptr inbounds %struct.s_Map, ptr %m, i32 0, i32 1
  %53 = load i32, ptr %size56, align 8, !tbaa !137
  %tobool57 = icmp ne i32 %53, 0
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.then52
  %54 = load i32, ptr %nrels, align 4, !tbaa !29
  call void @map_init(ptr noundef %m, i32 noundef %54)
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.then52
  %55 = load i32, ptr %d, align 4, !tbaa !29
  %and60 = and i32 %55, 7
  %shl61 = shl i32 1, %and60
  %map62 = getelementptr inbounds %struct.s_Map, ptr %m, i32 0, i32 0
  %56 = load ptr, ptr %map62, align 8, !tbaa !91
  %57 = load i32, ptr %d, align 4, !tbaa !29
  %shr63 = ashr i32 %57, 3
  %idxprom64 = sext i32 %shr63 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %56, i64 %idxprom64
  %58 = load i8, ptr %arrayidx65, align 1, !tbaa !85
  %conv66 = zext i8 %58 to i32
  %or = or i32 %conv66, %shl61
  %conv67 = trunc i32 %or to i8
  store i8 %conv67, ptr %arrayidx65, align 1, !tbaa !85
  br label %if.end68

if.end68:                                         ; preds = %if.end59, %land.lhs.true38, %land.lhs.true33, %lor.lhs.false30
  br label %for.inc

for.inc:                                          ; preds = %if.end68
  %59 = load i32, ptr %d, align 4, !tbaa !29
  %inc69 = add nsw i32 %59, 1
  store i32 %inc69, ptr %d, align 4, !tbaa !29
  %60 = load ptr, ptr %rd, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.s_Reldep, ptr %60, i32 1
  store ptr %incdec.ptr, ptr %rd, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !138

for.end:                                          ; preds = %for.cond
  call void @map_free(ptr noundef %m)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then10
  call void @llvm.lifetime.end.p0(i64 16, ptr %m) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrels) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @pool_whatmatchesdep(ptr noundef %pool, i32 noundef %keyname, i32 noundef %dep, ptr noundef %q, i32 noundef %marker) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %keyname.addr = alloca i32, align 4
  %dep.addr = alloca i32, align 4
  %q.addr = alloca ptr, align 8
  %marker.addr = alloca i32, align 4
  %p = alloca i32, align 4
  %qq = alloca %struct.s_Queue, align 8
  %i = alloca i32, align 4
  %pp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %keyname, ptr %keyname.addr, align 4, !tbaa !29
  store i32 %dep, ptr %dep.addr, align 4, !tbaa !29
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store i32 %marker, ptr %marker.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr %qq) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load ptr, ptr %q.addr, align 8, !tbaa !4
  call void @queue_empty(ptr noundef %0)
  %1 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pp) #10
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %3 = load i32, ptr %dep.addr, align 4, !tbaa !29
  %call = call i32 @pool_whatprovides(ptr noundef %2, i32 noundef %3)
  store i32 %call, ptr %pp, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %if.end, %if.then
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 20
  %5 = load ptr, ptr %whatprovidesdata, align 8, !tbaa !40
  %6 = load i32, ptr %pp, align 4, !tbaa !29
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %pp, align 4, !tbaa !29
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !29
  store i32 %7, ptr %p, align 4, !tbaa !29
  %cmp1 = icmp ne i32 %7, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %9 = load i32, ptr %p, align 4, !tbaa !29
  %10 = load i32, ptr %dep.addr, align 4, !tbaa !29
  %call2 = call i32 @pool_match_dep(ptr noundef %8, i32 noundef %9, i32 noundef %10)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  %11 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %12 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %11, i32 noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then3, %for.body
  br label %for.cond, !llvm.loop !139

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pp) #10
  br label %cleanup43

if.end4:                                          ; preds = %entry
  call void @queue_init(ptr noundef %qq)
  store i32 2, ptr %p, align 4, !tbaa !29
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc40, %if.end4
  %13 = load i32, ptr %p, align 4, !tbaa !29
  %14 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables = getelementptr inbounds %struct.s_Pool, ptr %14, i32 0, i32 9
  %15 = load i32, ptr %nsolvables, align 8, !tbaa !17
  %cmp6 = icmp slt i32 %13, %15
  br i1 %cmp6, label %for.body7, label %for.end42

for.body7:                                        ; preds = %for.cond5
  %16 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %16, i32 0, i32 8
  %17 = load ptr, ptr %solvables, align 8, !tbaa !16
  %18 = load i32, ptr %p, align 4, !tbaa !29
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds %struct.s_Solvable, ptr %17, i64 %idxprom8
  %repo = getelementptr inbounds %struct.s_Solvable, ptr %arrayidx9, i32 0, i32 4
  %19 = load ptr, ptr %repo, align 8, !tbaa !69
  %cmp10 = icmp eq ptr %19, null
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body7
  br label %for.inc40

if.else:                                          ; preds = %for.body7
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10
  %20 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables12 = getelementptr inbounds %struct.s_Pool, ptr %20, i32 0, i32 8
  %21 = load ptr, ptr %solvables12, align 8, !tbaa !16
  %22 = load i32, ptr %p, align 4, !tbaa !29
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %21, i64 %idx.ext
  store ptr %add.ptr, ptr %s, align 8, !tbaa !4
  %23 = load ptr, ptr %s, align 8, !tbaa !4
  %repo13 = getelementptr inbounds %struct.s_Solvable, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %repo13, align 8, !tbaa !69
  %disabled = getelementptr inbounds %struct.s_Repo, ptr %24, i32 0, i32 7
  %25 = load i32, ptr %disabled, align 4, !tbaa !70
  %tobool14 = icmp ne i32 %25, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.else
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.else
  %26 = load ptr, ptr %s, align 8, !tbaa !4
  %repo17 = getelementptr inbounds %struct.s_Solvable, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %repo17, align 8, !tbaa !69
  %28 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %installed = getelementptr inbounds %struct.s_Pool, ptr %28, i32 0, i32 7
  %29 = load ptr, ptr %installed, align 8, !tbaa !63
  %cmp18 = icmp ne ptr %27, %29
  br i1 %cmp18, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end16
  %30 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %s, align 8, !tbaa !4
  %call19 = call i32 @pool_installable(ptr noundef %30, ptr noundef %31)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true, %if.end16
  %count = getelementptr inbounds %struct.s_Queue, ptr %qq, i32 0, i32 1
  %32 = load i32, ptr %count, align 8, !tbaa !102
  %tobool23 = icmp ne i32 %32, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @queue_empty(ptr noundef %qq)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %33 = load ptr, ptr %s, align 8, !tbaa !4
  %34 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %35 = load i32, ptr %marker.addr, align 4, !tbaa !29
  %call26 = call i32 @solvable_lookup_deparray(ptr noundef %33, i32 noundef %34, ptr noundef %qq, i32 noundef %35)
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc, %if.end25
  %36 = load i32, ptr %i, align 4, !tbaa !29
  %count28 = getelementptr inbounds %struct.s_Queue, ptr %qq, i32 0, i32 1
  %37 = load i32, ptr %count28, align 8, !tbaa !102
  %cmp29 = icmp slt i32 %36, %37
  br i1 %cmp29, label %for.body30, label %for.end38

for.body30:                                       ; preds = %for.cond27
  %38 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %elements = getelementptr inbounds %struct.s_Queue, ptr %qq, i32 0, i32 0
  %39 = load ptr, ptr %elements, align 8, !tbaa !101
  %40 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom31 = sext i32 %40 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %39, i64 %idxprom31
  %41 = load i32, ptr %arrayidx32, align 4, !tbaa !29
  %42 = load i32, ptr %dep.addr, align 4, !tbaa !29
  %call33 = call i32 @pool_match_dep(ptr noundef %38, i32 noundef %41, i32 noundef %42)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.body30
  %43 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %44 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %43, i32 noundef %44)
  br label %for.end38

if.end36:                                         ; preds = %for.body30
  br label %for.inc

for.inc:                                          ; preds = %if.end36
  %45 = load i32, ptr %i, align 4, !tbaa !29
  %inc37 = add nsw i32 %45, 1
  store i32 %inc37, ptr %i, align 4, !tbaa !29
  br label %for.cond27, !llvm.loop !140

for.end38:                                        ; preds = %if.then35, %for.cond27
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end38, %if.then21, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.inc40
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end39

if.end39:                                         ; preds = %cleanup.cont
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39, %cleanup, %if.then11
  %46 = load i32, ptr %p, align 4, !tbaa !29
  %inc41 = add nsw i32 %46, 1
  store i32 %inc41, ptr %p, align 4, !tbaa !29
  br label %for.cond5, !llvm.loop !141

for.end42:                                        ; preds = %for.cond5
  call void @queue_free(ptr noundef %qq)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %for.end42, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr %qq) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #10
  %cleanup.dest46 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest46, label %unreachable [
    i32 0, label %cleanup.cont47
    i32 1, label %cleanup.cont47
  ]

cleanup.cont47:                                   ; preds = %cleanup43, %cleanup43
  ret void

unreachable:                                      ; preds = %cleanup43, %cleanup
  unreachable
}

declare i32 @solvable_lookup_deparray(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @pool_whatcontainsdep(ptr noundef %pool, i32 noundef %keyname, i32 noundef %dep, ptr noundef %q, i32 noundef %marker) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %keyname.addr = alloca i32, align 4
  %dep.addr = alloca i32, align 4
  %q.addr = alloca ptr, align 8
  %marker.addr = alloca i32, align 4
  %p = alloca i32, align 4
  %qq = alloca %struct.s_Queue, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %keyname, ptr %keyname.addr, align 4, !tbaa !29
  store i32 %dep, ptr %dep.addr, align 4, !tbaa !29
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store i32 %marker, ptr %marker.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr %qq) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load ptr, ptr %q.addr, align 8, !tbaa !4
  call void @queue_empty(ptr noundef %0)
  %1 = load i32, ptr %dep.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30

if.end:                                           ; preds = %entry
  call void @queue_init(ptr noundef %qq)
  store i32 2, ptr %p, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %if.end
  %2 = load i32, ptr %p, align 4, !tbaa !29
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %nsolvables, align 8, !tbaa !17
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 8
  %6 = load ptr, ptr %solvables, align 8, !tbaa !16
  %7 = load i32, ptr %p, align 4, !tbaa !29
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.s_Solvable, ptr %6, i64 %idxprom
  %repo = getelementptr inbounds %struct.s_Solvable, ptr %arrayidx, i32 0, i32 4
  %8 = load ptr, ptr %repo, align 8, !tbaa !69
  %cmp1 = icmp eq ptr %8, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %for.body
  br label %for.inc27

if.else:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10
  %9 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables3 = getelementptr inbounds %struct.s_Pool, ptr %9, i32 0, i32 8
  %10 = load ptr, ptr %solvables3, align 8, !tbaa !16
  %11 = load i32, ptr %p, align 4, !tbaa !29
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %10, i64 %idx.ext
  store ptr %add.ptr, ptr %s, align 8, !tbaa !4
  %12 = load ptr, ptr %s, align 8, !tbaa !4
  %repo4 = getelementptr inbounds %struct.s_Solvable, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %repo4, align 8, !tbaa !69
  %disabled = getelementptr inbounds %struct.s_Repo, ptr %13, i32 0, i32 7
  %14 = load i32, ptr %disabled, align 4, !tbaa !70
  %tobool5 = icmp ne i32 %14, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %15 = load ptr, ptr %s, align 8, !tbaa !4
  %repo8 = getelementptr inbounds %struct.s_Solvable, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %repo8, align 8, !tbaa !69
  %17 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %installed = getelementptr inbounds %struct.s_Pool, ptr %17, i32 0, i32 7
  %18 = load ptr, ptr %installed, align 8, !tbaa !63
  %cmp9 = icmp ne ptr %16, %18
  br i1 %cmp9, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end7
  %19 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %s, align 8, !tbaa !4
  %call = call i32 @pool_installable(ptr noundef %19, ptr noundef %20)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true, %if.end7
  %count = getelementptr inbounds %struct.s_Queue, ptr %qq, i32 0, i32 1
  %21 = load i32, ptr %count, align 8, !tbaa !102
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @queue_empty(ptr noundef %qq)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12
  %22 = load ptr, ptr %s, align 8, !tbaa !4
  %23 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %24 = load i32, ptr %marker.addr, align 4, !tbaa !29
  %call16 = call i32 @solvable_lookup_deparray(ptr noundef %22, i32 noundef %23, ptr noundef %qq, i32 noundef %24)
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.end15
  %25 = load i32, ptr %i, align 4, !tbaa !29
  %count18 = getelementptr inbounds %struct.s_Queue, ptr %qq, i32 0, i32 1
  %26 = load i32, ptr %count18, align 8, !tbaa !102
  %cmp19 = icmp slt i32 %25, %26
  br i1 %cmp19, label %for.body20, label %for.end

for.body20:                                       ; preds = %for.cond17
  %elements = getelementptr inbounds %struct.s_Queue, ptr %qq, i32 0, i32 0
  %27 = load ptr, ptr %elements, align 8, !tbaa !101
  %28 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %27, i64 %idxprom21
  %29 = load i32, ptr %arrayidx22, align 4, !tbaa !29
  %30 = load i32, ptr %dep.addr, align 4, !tbaa !29
  %cmp23 = icmp eq i32 %29, %30
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body20
  %31 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %32 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %31, i32 noundef %32)
  br label %for.end

if.end25:                                         ; preds = %for.body20
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %33 = load i32, ptr %i, align 4, !tbaa !29
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %i, align 4, !tbaa !29
  br label %for.cond17, !llvm.loop !142

for.end:                                          ; preds = %if.then24, %for.cond17
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then11, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc27
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end26

if.end26:                                         ; preds = %cleanup.cont
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26, %cleanup, %if.then2
  %34 = load i32, ptr %p, align 4, !tbaa !29
  %inc28 = add nsw i32 %34, 1
  store i32 %inc28, ptr %p, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !143

for.end29:                                        ; preds = %for.cond
  call void @queue_free(ptr noundef %qq)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup30

cleanup30:                                        ; preds = %for.end29, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr %qq) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #10
  %cleanup.dest33 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest33, label %unreachable [
    i32 0, label %cleanup.cont34
    i32 1, label %cleanup.cont34
  ]

cleanup.cont34:                                   ; preds = %cleanup30, %cleanup30
  ret void

unreachable:                                      ; preds = %cleanup30, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @pool_whatmatchessolvable(ptr noundef %pool, i32 noundef %keyname, i32 noundef %solvid, ptr noundef %q, i32 noundef %marker) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %keyname.addr = alloca i32, align 4
  %solvid.addr = alloca i32, align 4
  %q.addr = alloca ptr, align 8
  %marker.addr = alloca i32, align 4
  %p = alloca i32, align 4
  %qq = alloca %struct.s_Queue, align 8
  %missc = alloca %struct.s_Map, align 8
  %reloff = alloca i32, align 4
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %keyname, ptr %keyname.addr, align 4, !tbaa !29
  store i32 %solvid, ptr %solvid.addr, align 4, !tbaa !29
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store i32 %marker, ptr %marker.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr %qq) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr %missc) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %reloff) #10
  %0 = load ptr, ptr %q.addr, align 8, !tbaa !4
  call void @queue_empty(ptr noundef %0)
  call void @queue_init(ptr noundef %qq)
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %ss = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 1
  %nstrings = getelementptr inbounds %struct.s_Stringpool, ptr %ss, i32 0, i32 1
  %2 = load i32, ptr %nstrings, align 8, !tbaa !64
  store i32 %2, ptr %reloff, align 4, !tbaa !29
  %3 = load i32, ptr %reloff, align 4, !tbaa !29
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nrels = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %nrels, align 8, !tbaa !15
  %add = add nsw i32 %3, %5
  call void @map_init(ptr noundef %missc, i32 noundef %add)
  store i32 2, ptr %p, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %p, align 4, !tbaa !29
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables = getelementptr inbounds %struct.s_Pool, ptr %7, i32 0, i32 9
  %8 = load i32, ptr %nsolvables, align 8, !tbaa !17
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %9, i32 0, i32 8
  %10 = load ptr, ptr %solvables, align 8, !tbaa !16
  %11 = load i32, ptr %p, align 4, !tbaa !29
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.s_Solvable, ptr %10, i64 %idxprom
  %repo = getelementptr inbounds %struct.s_Solvable, ptr %arrayidx, i32 0, i32 4
  %12 = load ptr, ptr %repo, align 8, !tbaa !69
  %cmp1 = icmp eq ptr %12, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10
  %13 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables2 = getelementptr inbounds %struct.s_Pool, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %solvables2, align 8, !tbaa !16
  %15 = load i32, ptr %p, align 4, !tbaa !29
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %14, i64 %idx.ext
  store ptr %add.ptr, ptr %s, align 8, !tbaa !4
  %16 = load i32, ptr %p, align 4, !tbaa !29
  %17 = load i32, ptr %solvid.addr, align 4, !tbaa !29
  %cmp3 = icmp eq i32 %16, %17
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  %18 = load ptr, ptr %s, align 8, !tbaa !4
  %repo5 = getelementptr inbounds %struct.s_Solvable, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %repo5, align 8, !tbaa !69
  %disabled = getelementptr inbounds %struct.s_Repo, ptr %19, i32 0, i32 7
  %20 = load i32, ptr %disabled, align 4, !tbaa !70
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %21 = load ptr, ptr %s, align 8, !tbaa !4
  %repo8 = getelementptr inbounds %struct.s_Solvable, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %repo8, align 8, !tbaa !69
  %23 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %installed = getelementptr inbounds %struct.s_Pool, ptr %23, i32 0, i32 7
  %24 = load ptr, ptr %installed, align 8, !tbaa !63
  %cmp9 = icmp ne ptr %22, %24
  br i1 %cmp9, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end7
  %25 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %s, align 8, !tbaa !4
  %call = call i32 @pool_installable(ptr noundef %25, ptr noundef %26)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true, %if.end7
  %27 = load ptr, ptr %s, align 8, !tbaa !4
  %28 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %29 = load i32, ptr %marker.addr, align 4, !tbaa !29
  %30 = load i32, ptr %solvid.addr, align 4, !tbaa !29
  %31 = load i32, ptr %reloff, align 4, !tbaa !29
  %call13 = call i32 @solvable_matchessolvable_int(ptr noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef null, ptr noundef %qq, ptr noundef %missc, i32 noundef %31, ptr noundef null)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %32 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %33 = load i32, ptr %p, align 4, !tbaa !29
  call void @queue_push(ptr noundef %32, i32 noundef %33)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then11, %if.then6, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end17

if.end17:                                         ; preds = %cleanup.cont
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %cleanup, %if.then
  %34 = load i32, ptr %p, align 4, !tbaa !29
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %p, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !144

for.end:                                          ; preds = %for.cond
  call void @map_free(ptr noundef %missc)
  call void @queue_free(ptr noundef %qq)
  call void @llvm.lifetime.end.p0(i64 4, ptr %reloff) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %missc) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr %qq) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #10
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @map_init(ptr noundef, i32 noundef) #2

declare i32 @solvable_matchessolvable_int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @map_free(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @vprintf(ptr noalias noundef %__fmt, ptr noundef %__arg) #3 {
entry:
  %__fmt.addr = alloca ptr, align 8
  %__arg.addr = alloca ptr, align 8
  store ptr %__fmt, ptr %__fmt.addr, align 8, !tbaa !4
  store ptr %__arg, ptr %__arg.addr, align 8, !tbaa !4
  %0 = load ptr, ptr @stdout, align 8, !tbaa !4
  %1 = load ptr, ptr %__fmt.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %__arg.addr, align 8, !tbaa !4
  %call = call i32 @vfprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define i32 @pool_error(ptr noundef %pool, i32 noundef %ret, ptr noundef %format, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %ret.addr = alloca i32, align 4
  %format.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %ret, ptr %ret.addr, align 4, !tbaa !29
  store ptr %format, ptr %format.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ret.addr, align 4, !tbaa !29
  store i32 %1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstr = getelementptr inbounds %struct.s_Pool, ptr %2, i32 0, i32 48
  %3 = load ptr, ptr %errstr, align 8, !tbaa !36
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstra = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 49
  store i32 1024, ptr %errstra, align 8, !tbaa !145
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstra3 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 49
  %6 = load i32, ptr %errstra3, align 8, !tbaa !145
  %conv = sext i32 %6 to i64
  %call = call ptr @solv_malloc(i64 noundef %conv)
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstr4 = getelementptr inbounds %struct.s_Pool, ptr %7, i32 0, i32 48
  store ptr %call, ptr %errstr4, align 8, !tbaa !36
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %8 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %9 = load i8, ptr %8, align 1, !tbaa !85
  %tobool6 = icmp ne i8 %9, 0
  br i1 %tobool6, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  %10 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstr8 = getelementptr inbounds %struct.s_Pool, ptr %10, i32 0, i32 48
  %11 = load ptr, ptr %errstr8, align 8, !tbaa !36
  store i8 0, ptr %11, align 1, !tbaa !85
  store i32 0, ptr %l, align 4, !tbaa !29
  br label %if.end14

if.else:                                          ; preds = %if.end5
  %12 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstr9 = getelementptr inbounds %struct.s_Pool, ptr %12, i32 0, i32 48
  %13 = load ptr, ptr %errstr9, align 8, !tbaa !36
  %14 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstra10 = getelementptr inbounds %struct.s_Pool, ptr %14, i32 0, i32 49
  %15 = load i32, ptr %errstra10, align 8, !tbaa !145
  %conv11 = sext i32 %15 to i64
  %16 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  %call13 = call i32 @vsnprintf(ptr noundef %13, i64 noundef %conv11, ptr noundef %16, ptr noundef %arraydecay12) #10
  store i32 %call13, ptr %l, align 4, !tbaa !29
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then7
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay15)
  %17 = load i32, ptr %l, align 4, !tbaa !29
  %cmp = icmp sge i32 %17, 0
  br i1 %cmp, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.end14
  %18 = load i32, ptr %l, align 4, !tbaa !29
  %add = add nsw i32 %18, 1
  %19 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstra17 = getelementptr inbounds %struct.s_Pool, ptr %19, i32 0, i32 49
  %20 = load i32, ptr %errstra17, align 8, !tbaa !145
  %cmp18 = icmp sgt i32 %add, %20
  br i1 %cmp18, label %if.then20, label %if.end35

if.then20:                                        ; preds = %land.lhs.true
  %21 = load i32, ptr %l, align 4, !tbaa !29
  %add21 = add nsw i32 %21, 256
  %22 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstra22 = getelementptr inbounds %struct.s_Pool, ptr %22, i32 0, i32 49
  store i32 %add21, ptr %errstra22, align 8, !tbaa !145
  %23 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstr23 = getelementptr inbounds %struct.s_Pool, ptr %23, i32 0, i32 48
  %24 = load ptr, ptr %errstr23, align 8, !tbaa !36
  %25 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstra24 = getelementptr inbounds %struct.s_Pool, ptr %25, i32 0, i32 49
  %26 = load i32, ptr %errstra24, align 8, !tbaa !145
  %conv25 = sext i32 %26 to i64
  %call26 = call ptr @solv_realloc(ptr noundef %24, i64 noundef %conv25)
  %27 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstr27 = getelementptr inbounds %struct.s_Pool, ptr %27, i32 0, i32 48
  store ptr %call26, ptr %errstr27, align 8, !tbaa !36
  %arraydecay28 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay28)
  %28 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstr29 = getelementptr inbounds %struct.s_Pool, ptr %28, i32 0, i32 48
  %29 = load ptr, ptr %errstr29, align 8, !tbaa !36
  %30 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstra30 = getelementptr inbounds %struct.s_Pool, ptr %30, i32 0, i32 49
  %31 = load i32, ptr %errstra30, align 8, !tbaa !145
  %conv31 = sext i32 %31 to i64
  %32 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %arraydecay32 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  %call33 = call i32 @vsnprintf(ptr noundef %29, i64 noundef %conv31, ptr noundef %32, ptr noundef %arraydecay32) #10
  store i32 %call33, ptr %l, align 4, !tbaa !29
  %arraydecay34 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay34)
  br label %if.end35

if.end35:                                         ; preds = %if.then20, %land.lhs.true, %if.end14
  %33 = load i32, ptr %l, align 4, !tbaa !29
  %cmp36 = icmp slt i32 %33, 0
  br i1 %cmp36, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end35
  %34 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstr39 = getelementptr inbounds %struct.s_Pool, ptr %34, i32 0, i32 48
  %35 = load ptr, ptr %errstr39, align 8, !tbaa !36
  %call40 = call ptr @strcpy(ptr noundef %35, ptr noundef @.str.13) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end35
  %36 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask = getelementptr inbounds %struct.s_Pool, ptr %36, i32 0, i32 26
  %37 = load i32, ptr %debugmask, align 8, !tbaa !24
  %and = and i32 %37, 2
  %tobool42 = icmp ne i32 %and, 0
  br i1 %tobool42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end41
  %38 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %39 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstr44 = getelementptr inbounds %struct.s_Pool, ptr %39, i32 0, i32 48
  %40 = load ptr, ptr %errstr44, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @pool_debug(ptr noundef %38, i32 noundef 2, ptr noundef @.str.14, ptr noundef %40)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41
  %41 = load i32, ptr %ret.addr, align 4, !tbaa !29
  store i32 %41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #10
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

declare ptr @solv_malloc(i64 noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define ptr @pool_errstr(ptr noundef %pool) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstr = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 48
  %1 = load ptr, ptr %errstr, align 8, !tbaa !36
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %errstr1 = getelementptr inbounds %struct.s_Pool, ptr %2, i32 0, i32 48
  %3 = load ptr, ptr %errstr1, align 8, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ @.str.15, %cond.false ]
  ret ptr %cond
}

; Function Attrs: nounwind uwtable
define void @pool_setdebuglevel(ptr noundef %pool, i32 noundef %level) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #10
  store i32 1024, ptr %mask, align 4, !tbaa !29
  %0 = load i32, ptr %level.addr, align 4, !tbaa !29
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %mask, align 4, !tbaa !29
  %or = or i32 %1, 12490
  store i32 %or, ptr %mask, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %level.addr, align 4, !tbaa !29
  %cmp1 = icmp sgt i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %mask, align 4, !tbaa !29
  %or3 = or i32 %3, 2816
  store i32 %or3, ptr %mask, align 4, !tbaa !29
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = load i32, ptr %level.addr, align 4, !tbaa !29
  %cmp5 = icmp sgt i32 %4, 2
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %5 = load i32, ptr %mask, align 4, !tbaa !29
  %or7 = or i32 %5, 32
  store i32 %or7, ptr %mask, align 4, !tbaa !29
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %6 = load i32, ptr %level.addr, align 4, !tbaa !29
  %cmp9 = icmp sgt i32 %6, 3
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %7 = load i32, ptr %mask, align 4, !tbaa !29
  %or11 = or i32 %7, 16400
  store i32 %or11, ptr %mask, align 4, !tbaa !29
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask = getelementptr inbounds %struct.s_Pool, ptr %8, i32 0, i32 26
  %9 = load i32, ptr %debugmask, align 8, !tbaa !24
  %and = and i32 %9, 1073741824
  %10 = load i32, ptr %mask, align 4, !tbaa !29
  %or13 = or i32 %10, %and
  store i32 %or13, ptr %mask, align 4, !tbaa !29
  %11 = load i32, ptr %mask, align 4, !tbaa !29
  %12 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask14 = getelementptr inbounds %struct.s_Pool, ptr %12, i32 0, i32 26
  store i32 %11, ptr %debugmask14, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #10
  ret void
}

; Function Attrs: nounwind uwtable
define void @pool_setdebugcallback(ptr noundef %pool, ptr noundef %debugcallback, ptr noundef %debugcallbackdata) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %debugcallback.addr = alloca ptr, align 8
  %debugcallbackdata.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %debugcallback, ptr %debugcallback.addr, align 8, !tbaa !4
  store ptr %debugcallbackdata, ptr %debugcallbackdata.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %debugcallback.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugcallback1 = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 27
  store ptr %0, ptr %debugcallback1, align 8, !tbaa !88
  %2 = load ptr, ptr %debugcallbackdata.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugcallbackdata2 = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 28
  store ptr %2, ptr %debugcallbackdata2, align 8, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define void @pool_setdebugmask(ptr noundef %pool, i32 noundef %mask) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %mask, ptr %mask.addr, align 4, !tbaa !29
  %0 = load i32, ptr %mask.addr, align 4, !tbaa !29
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %debugmask = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 26
  store i32 %0, ptr %debugmask, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define void @pool_setloadcallback(ptr noundef %pool, ptr noundef %cb, ptr noundef %loadcbdata) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %loadcbdata.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !4
  store ptr %loadcbdata, ptr %loadcbdata.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %loadcallback = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 29
  store ptr %0, ptr %loadcallback, align 8, !tbaa !146
  %2 = load ptr, ptr %loadcbdata.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %loadcallbackdata = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 30
  store ptr %2, ptr %loadcallbackdata, align 8, !tbaa !147
  ret void
}

; Function Attrs: nounwind uwtable
define void @pool_setnamespacecallback(ptr noundef %pool, ptr noundef %cb, ptr noundef %nscbdata) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %nscbdata.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !4
  store ptr %nscbdata, ptr %nscbdata.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nscallback = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 24
  store ptr %0, ptr %nscallback, align 8, !tbaa !116
  %2 = load ptr, ptr %nscbdata.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nscallbackdata = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 25
  store ptr %2, ptr %nscallbackdata, align 8, !tbaa !117
  ret void
}

; Function Attrs: nounwind uwtable
define void @pool_search(ptr noundef %pool, i32 noundef %p, i32 noundef %key, ptr noundef %match, i32 noundef %flags, ptr noundef %callback, ptr noundef %cbdata) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %p.addr = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %match.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %callback.addr = alloca ptr, align 8
  %cbdata.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %p, ptr %p.addr, align 4, !tbaa !29
  store i32 %key, ptr %key.addr, align 4, !tbaa !29
  store ptr %match, ptr %match.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !29
  store ptr %callback, ptr %callback.addr, align 8, !tbaa !4
  store ptr %cbdata, ptr %cbdata.addr, align 8, !tbaa !4
  %0 = load i32, ptr %p.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %solvables, align 8, !tbaa !16
  %3 = load i32, ptr %p.addr, align 4, !tbaa !29
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.s_Solvable, ptr %2, i64 %idxprom
  %repo = getelementptr inbounds %struct.s_Solvable, ptr %arrayidx, i32 0, i32 4
  %4 = load ptr, ptr %repo, align 8, !tbaa !69
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables3 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 8
  %6 = load ptr, ptr %solvables3, align 8, !tbaa !16
  %7 = load i32, ptr %p.addr, align 4, !tbaa !29
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds %struct.s_Solvable, ptr %6, i64 %idxprom4
  %repo6 = getelementptr inbounds %struct.s_Solvable, ptr %arrayidx5, i32 0, i32 4
  %8 = load ptr, ptr %repo6, align 8, !tbaa !69
  %9 = load i32, ptr %p.addr, align 4, !tbaa !29
  %10 = load i32, ptr %key.addr, align 4, !tbaa !29
  %11 = load ptr, ptr %match.addr, align 8, !tbaa !4
  %12 = load i32, ptr %flags.addr, align 4, !tbaa !29
  %13 = load ptr, ptr %callback.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %cbdata.addr, align 8, !tbaa !4
  call void @repo_search(ptr noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %for.end

if.end7:                                          ; preds = %entry
  store i32 1, ptr %p.addr, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %15 = load i32, ptr %p.addr, align 4, !tbaa !29
  %16 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nsolvables = getelementptr inbounds %struct.s_Pool, ptr %16, i32 0, i32 9
  %17 = load i32, ptr %nsolvables, align 8, !tbaa !17
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables8 = getelementptr inbounds %struct.s_Pool, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %solvables8, align 8, !tbaa !16
  %20 = load i32, ptr %p.addr, align 4, !tbaa !29
  %idxprom9 = sext i32 %20 to i64
  %arrayidx10 = getelementptr inbounds %struct.s_Solvable, ptr %19, i64 %idxprom9
  %repo11 = getelementptr inbounds %struct.s_Solvable, ptr %arrayidx10, i32 0, i32 4
  %21 = load ptr, ptr %repo11, align 8, !tbaa !69
  %tobool12 = icmp ne ptr %21, null
  br i1 %tobool12, label %if.then13, label %if.end18

if.then13:                                        ; preds = %for.body
  %22 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables14 = getelementptr inbounds %struct.s_Pool, ptr %22, i32 0, i32 8
  %23 = load ptr, ptr %solvables14, align 8, !tbaa !16
  %24 = load i32, ptr %p.addr, align 4, !tbaa !29
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds %struct.s_Solvable, ptr %23, i64 %idxprom15
  %repo17 = getelementptr inbounds %struct.s_Solvable, ptr %arrayidx16, i32 0, i32 4
  %25 = load ptr, ptr %repo17, align 8, !tbaa !69
  %26 = load i32, ptr %p.addr, align 4, !tbaa !29
  %27 = load i32, ptr %key.addr, align 4, !tbaa !29
  %28 = load ptr, ptr %match.addr, align 8, !tbaa !4
  %29 = load i32, ptr %flags.addr, align 4, !tbaa !29
  %30 = load ptr, ptr %callback.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %cbdata.addr, align 8, !tbaa !4
  call void @repo_search(ptr noundef %25, i32 noundef %26, i32 noundef %27, ptr noundef %28, i32 noundef %29, ptr noundef %30, ptr noundef %31)
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %32 = load i32, ptr %p.addr, align 4, !tbaa !29
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %p.addr, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !148

for.end:                                          ; preds = %if.end, %for.cond
  ret void
}

declare void @repo_search(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @pool_clear_pos(ptr noundef %pool) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 31
  call void @llvm.memset.p0.i64(ptr align 8 %pos, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @pool_set_languages(ptr noundef %pool, ptr noundef %languages, i32 noundef %nlanguages) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %languages.addr = alloca ptr, align 8
  %nlanguages.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %languages, ptr %languages.addr, align 8, !tbaa !4
  store i32 %nlanguages, ptr %nlanguages.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %languagecache = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 45
  %1 = load ptr, ptr %languagecache, align 8, !tbaa !35
  %call = call ptr @solv_free(ptr noundef %1)
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %languagecache1 = getelementptr inbounds %struct.s_Pool, ptr %2, i32 0, i32 45
  store ptr %call, ptr %languagecache1, align 8, !tbaa !35
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %languagecacheother = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 46
  store i32 0, ptr %languagecacheother, align 8, !tbaa !149
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !29
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nlanguages2 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 11
  %6 = load i32, ptr %nlanguages2, align 8, !tbaa !32
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %languages3 = getelementptr inbounds %struct.s_Pool, ptr %7, i32 0, i32 10
  %8 = load ptr, ptr %languages3, align 8, !tbaa !33
  %9 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  call void @free(ptr noundef %10) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !tbaa !29
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !150

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %languages4 = getelementptr inbounds %struct.s_Pool, ptr %12, i32 0, i32 10
  %13 = load ptr, ptr %languages4, align 8, !tbaa !33
  %call5 = call ptr @solv_free(ptr noundef %13)
  %14 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %languages6 = getelementptr inbounds %struct.s_Pool, ptr %14, i32 0, i32 10
  store ptr %call5, ptr %languages6, align 8, !tbaa !33
  %15 = load i32, ptr %nlanguages.addr, align 4, !tbaa !29
  %16 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nlanguages7 = getelementptr inbounds %struct.s_Pool, ptr %16, i32 0, i32 11
  store i32 %15, ptr %nlanguages7, align 8, !tbaa !32
  %17 = load i32, ptr %nlanguages.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.end
  %18 = load i32, ptr %nlanguages.addr, align 4, !tbaa !29
  %conv = sext i32 %18 to i64
  %call8 = call ptr @solv_calloc(i64 noundef %conv, i64 noundef 8)
  %19 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %languages9 = getelementptr inbounds %struct.s_Pool, ptr %19, i32 0, i32 10
  store ptr %call8, ptr %languages9, align 8, !tbaa !33
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc21, %if.end
  %20 = load i32, ptr %i, align 4, !tbaa !29
  %21 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %nlanguages11 = getelementptr inbounds %struct.s_Pool, ptr %21, i32 0, i32 11
  %22 = load i32, ptr %nlanguages11, align 8, !tbaa !32
  %cmp12 = icmp slt i32 %20, %22
  br i1 %cmp12, label %for.body14, label %for.end23

for.body14:                                       ; preds = %for.cond10
  %23 = load ptr, ptr %languages.addr, align 8, !tbaa !4
  %24 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %23, i64 %idxprom15
  %25 = load ptr, ptr %arrayidx16, align 8, !tbaa !4
  %call17 = call ptr @solv_strdup(ptr noundef %25)
  %26 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %languages18 = getelementptr inbounds %struct.s_Pool, ptr %26, i32 0, i32 10
  %27 = load ptr, ptr %languages18, align 8, !tbaa !33
  %28 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom19 = sext i32 %28 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %27, i64 %idxprom19
  store ptr %call17, ptr %arrayidx20, align 8, !tbaa !4
  br label %for.inc21

for.inc21:                                        ; preds = %for.body14
  %29 = load i32, ptr %i, align 4, !tbaa !29
  %inc22 = add nsw i32 %29, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !29
  br label %for.cond10, !llvm.loop !151

for.end23:                                        ; preds = %for.cond10
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare ptr @solv_strdup(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @pool_id2langid(ptr noundef %pool, i32 noundef %id, ptr noundef %lang, i32 noundef %create) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %lang.addr = alloca ptr, align 8
  %create.addr = alloca i32, align 4
  %n = alloca ptr, align 8
  %buf = alloca [256 x i8], align 16
  %p = alloca ptr, align 8
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %id, ptr %id.addr, align 4, !tbaa !29
  store ptr %lang, ptr %lang.addr, align 8, !tbaa !4
  store i32 %create, ptr %create.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr %buf) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #10
  %0 = load ptr, ptr %lang.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %lang.addr, align 8, !tbaa !4
  %2 = load i8, ptr %1, align 1, !tbaa !85
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, ptr %id.addr, align 4, !tbaa !29
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %5 = load i32, ptr %id.addr, align 4, !tbaa !29
  %call = call ptr @pool_id2str(ptr noundef %4, i32 noundef %5)
  store ptr %call, ptr %n, align 8, !tbaa !4
  %6 = load ptr, ptr %n, align 8, !tbaa !4
  %call2 = call i64 @strlen(ptr noundef %6) #12
  %7 = load ptr, ptr %lang.addr, align 8, !tbaa !4
  %call3 = call i64 @strlen(ptr noundef %7) #12
  %add = add i64 %call2, %call3
  %add4 = add i64 %add, 2
  %conv = trunc i64 %add4 to i32
  store i32 %conv, ptr %l, align 4, !tbaa !29
  %8 = load i32, ptr %l, align 4, !tbaa !29
  %conv5 = sext i32 %8 to i64
  %cmp = icmp ugt i64 %conv5, 256
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %9 = load ptr, ptr %n, align 8, !tbaa !4
  %call8 = call i64 @strlen(ptr noundef %9) #12
  %10 = load ptr, ptr %lang.addr, align 8, !tbaa !4
  %call9 = call i64 @strlen(ptr noundef %10) #12
  %add10 = add i64 %call8, %call9
  %add11 = add i64 %add10, 2
  %call12 = call ptr @solv_malloc(i64 noundef %add11)
  store ptr %call12, ptr %p, align 8, !tbaa !4
  br label %if.end13

if.else:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  %11 = load ptr, ptr %p, align 8, !tbaa !4
  %12 = load ptr, ptr %n, align 8, !tbaa !4
  %13 = load ptr, ptr %lang.addr, align 8, !tbaa !4
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %11, ptr noundef @.str.16, ptr noundef %12, ptr noundef %13) #10
  %14 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %p, align 8, !tbaa !4
  %16 = load i32, ptr %create.addr, align 4, !tbaa !29
  %call15 = call i32 @pool_str2id(ptr noundef %14, ptr noundef %15, i32 noundef %16)
  store i32 %call15, ptr %id.addr, align 4, !tbaa !29
  %17 = load ptr, ptr %p, align 8, !tbaa !4
  %arraydecay16 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %cmp17 = icmp ne ptr %17, %arraydecay16
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end13
  %18 = load ptr, ptr %p, align 8, !tbaa !4
  call void @free(ptr noundef %18) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end13
  %19 = load i32, ptr %id.addr, align 4, !tbaa !29
  store i32 %19, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr %buf) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #7

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #5

declare i32 @pool_str2id(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define ptr @pool_alloctmpspace(ptr noundef %pool, i32 noundef %len) #0 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %len, ptr %len.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 47
  %n1 = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace, i32 0, i32 2
  %1 = load i32, ptr %n1, align 8, !tbaa !152
  store i32 %1, ptr %n, align 4, !tbaa !29
  %2 = load i32, ptr %len.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %len.addr, align 4, !tbaa !29
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace2 = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 47
  %len3 = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace2, i32 0, i32 1
  %5 = load i32, ptr %n, align 4, !tbaa !29
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %len3, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !29
  %cmp = icmp sgt i32 %3, %6
  br i1 %cmp, label %if.then4, label %if.end17

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace5 = getelementptr inbounds %struct.s_Pool, ptr %7, i32 0, i32 47
  %buf = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace5, i32 0, i32 0
  %8 = load i32, ptr %n, align 4, !tbaa !29
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [16 x ptr], ptr %buf, i64 0, i64 %idxprom6
  %9 = load ptr, ptr %arrayidx7, align 8, !tbaa !4
  %10 = load i32, ptr %len.addr, align 4, !tbaa !29
  %add = add nsw i32 %10, 32
  %conv = sext i32 %add to i64
  %call = call ptr @solv_realloc(ptr noundef %9, i64 noundef %conv)
  %11 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace8 = getelementptr inbounds %struct.s_Pool, ptr %11, i32 0, i32 47
  %buf9 = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace8, i32 0, i32 0
  %12 = load i32, ptr %n, align 4, !tbaa !29
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [16 x ptr], ptr %buf9, i64 0, i64 %idxprom10
  store ptr %call, ptr %arrayidx11, align 8, !tbaa !4
  %13 = load i32, ptr %len.addr, align 4, !tbaa !29
  %add12 = add nsw i32 %13, 32
  %14 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace13 = getelementptr inbounds %struct.s_Pool, ptr %14, i32 0, i32 47
  %len14 = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace13, i32 0, i32 1
  %15 = load i32, ptr %n, align 4, !tbaa !29
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [16 x i32], ptr %len14, i64 0, i64 %idxprom15
  store i32 %add12, ptr %arrayidx16, align 4, !tbaa !29
  br label %if.end17

if.end17:                                         ; preds = %if.then4, %if.end
  %16 = load i32, ptr %n, align 4, !tbaa !29
  %add18 = add nsw i32 %16, 1
  %rem = srem i32 %add18, 16
  %17 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace19 = getelementptr inbounds %struct.s_Pool, ptr %17, i32 0, i32 47
  %n20 = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace19, i32 0, i32 2
  store i32 %rem, ptr %n20, align 8, !tbaa !152
  %18 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace21 = getelementptr inbounds %struct.s_Pool, ptr %18, i32 0, i32 47
  %buf22 = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace21, i32 0, i32 0
  %19 = load i32, ptr %n, align 4, !tbaa !29
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [16 x ptr], ptr %buf22, i64 0, i64 %idxprom23
  %20 = load ptr, ptr %arrayidx24, align 8, !tbaa !4
  store ptr %20, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  %21 = load ptr, ptr %retval, align 8
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define void @pool_freetmpspace(ptr noundef %pool, ptr noundef %space) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %space.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %space, ptr %space.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 47
  %n1 = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace, i32 0, i32 2
  %1 = load i32, ptr %n1, align 8, !tbaa !152
  store i32 %1, ptr %n, align 4, !tbaa !29
  %2 = load ptr, ptr %space.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %n, align 4, !tbaa !29
  %add = add nsw i32 %3, 15
  %rem = srem i32 %add, 16
  store i32 %rem, ptr %n, align 4, !tbaa !29
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace2 = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 47
  %buf = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace2, i32 0, i32 0
  %5 = load i32, ptr %n, align 4, !tbaa !29
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %buf, i64 0, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %7 = load ptr, ptr %space.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %6, %7
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %8 = load i32, ptr %n, align 4, !tbaa !29
  %9 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace4 = getelementptr inbounds %struct.s_Pool, ptr %9, i32 0, i32 47
  %n5 = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace4, i32 0, i32 2
  store i32 %8, ptr %n5, align 8, !tbaa !152
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define ptr @pool_tmpjoin(ptr noundef %pool, ptr noundef %str1, ptr noundef %str2, ptr noundef %str3) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %str1.addr = alloca ptr, align 8
  %str2.addr = alloca ptr, align 8
  %str3.addr = alloca ptr, align 8
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  %l3 = alloca i32, align 4
  %s = alloca ptr, align 8
  %str = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %str1, ptr %str1.addr, align 8, !tbaa !4
  store ptr %str2, ptr %str2.addr, align 8, !tbaa !4
  store ptr %str3, ptr %str3.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %l2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %l3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #10
  %0 = load ptr, ptr %str1.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %str1.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %1) #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, ptr %l1, align 4, !tbaa !29
  %2 = load ptr, ptr %str2.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %cond.true2, label %cond.false4

cond.true2:                                       ; preds = %cond.end
  %3 = load ptr, ptr %str2.addr, align 8, !tbaa !4
  %call3 = call i64 @strlen(ptr noundef %3) #12
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %cond.true2
  %cond6 = phi i64 [ %call3, %cond.true2 ], [ 0, %cond.false4 ]
  %conv7 = trunc i64 %cond6 to i32
  store i32 %conv7, ptr %l2, align 4, !tbaa !29
  %4 = load ptr, ptr %str3.addr, align 8, !tbaa !4
  %tobool8 = icmp ne ptr %4, null
  br i1 %tobool8, label %cond.true9, label %cond.false11

cond.true9:                                       ; preds = %cond.end5
  %5 = load ptr, ptr %str3.addr, align 8, !tbaa !4
  %call10 = call i64 @strlen(ptr noundef %5) #12
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end5
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true9
  %cond13 = phi i64 [ %call10, %cond.true9 ], [ 0, %cond.false11 ]
  %conv14 = trunc i64 %cond13 to i32
  store i32 %conv14, ptr %l3, align 4, !tbaa !29
  %6 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %7 = load i32, ptr %l1, align 4, !tbaa !29
  %8 = load i32, ptr %l2, align 4, !tbaa !29
  %add = add nsw i32 %7, %8
  %9 = load i32, ptr %l3, align 4, !tbaa !29
  %add15 = add nsw i32 %add, %9
  %add16 = add nsw i32 %add15, 1
  %call17 = call ptr @pool_alloctmpspace(ptr noundef %6, i32 noundef %add16)
  store ptr %call17, ptr %str, align 8, !tbaa !4
  store ptr %call17, ptr %s, align 8, !tbaa !4
  %10 = load i32, ptr %l1, align 4, !tbaa !29
  %tobool18 = icmp ne i32 %10, 0
  br i1 %tobool18, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end12
  %11 = load ptr, ptr %s, align 8, !tbaa !4
  %12 = load ptr, ptr %str1.addr, align 8, !tbaa !4
  %call19 = call ptr @strcpy(ptr noundef %11, ptr noundef %12) #10
  %13 = load i32, ptr %l1, align 4, !tbaa !29
  %14 = load ptr, ptr %s, align 8, !tbaa !4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  store ptr %add.ptr, ptr %s, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end12
  %15 = load i32, ptr %l2, align 4, !tbaa !29
  %tobool20 = icmp ne i32 %15, 0
  br i1 %tobool20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end
  %16 = load ptr, ptr %s, align 8, !tbaa !4
  %17 = load ptr, ptr %str2.addr, align 8, !tbaa !4
  %call22 = call ptr @strcpy(ptr noundef %16, ptr noundef %17) #10
  %18 = load i32, ptr %l2, align 4, !tbaa !29
  %19 = load ptr, ptr %s, align 8, !tbaa !4
  %idx.ext23 = sext i32 %18 to i64
  %add.ptr24 = getelementptr inbounds i8, ptr %19, i64 %idx.ext23
  store ptr %add.ptr24, ptr %s, align 8, !tbaa !4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end
  %20 = load i32, ptr %l3, align 4, !tbaa !29
  %tobool26 = icmp ne i32 %20, 0
  br i1 %tobool26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end25
  %21 = load ptr, ptr %s, align 8, !tbaa !4
  %22 = load ptr, ptr %str3.addr, align 8, !tbaa !4
  %call28 = call ptr @strcpy(ptr noundef %21, ptr noundef %22) #10
  %23 = load i32, ptr %l3, align 4, !tbaa !29
  %24 = load ptr, ptr %s, align 8, !tbaa !4
  %idx.ext29 = sext i32 %23 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %24, i64 %idx.ext29
  store ptr %add.ptr30, ptr %s, align 8, !tbaa !4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end25
  %25 = load ptr, ptr %s, align 8, !tbaa !4
  store i8 0, ptr %25, align 1, !tbaa !85
  %26 = load ptr, ptr %str, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %l3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %l2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %l1) #10
  ret ptr %26
}

; Function Attrs: nounwind uwtable
define ptr @pool_tmpappend(ptr noundef %pool, ptr noundef %str1, ptr noundef %str2, ptr noundef %str3) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %str1.addr = alloca ptr, align 8
  %str2.addr = alloca ptr, align 8
  %str3.addr = alloca ptr, align 8
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  %l3 = alloca i32, align 4
  %s = alloca ptr, align 8
  %str = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %str1, ptr %str1.addr, align 8, !tbaa !4
  store ptr %str2, ptr %str2.addr, align 8, !tbaa !4
  store ptr %str3, ptr %str3.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %l2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %l3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #10
  %0 = load ptr, ptr %str1.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %str1.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %1) #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, ptr %l1, align 4, !tbaa !29
  %2 = load ptr, ptr %str2.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %cond.true2, label %cond.false4

cond.true2:                                       ; preds = %cond.end
  %3 = load ptr, ptr %str2.addr, align 8, !tbaa !4
  %call3 = call i64 @strlen(ptr noundef %3) #12
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %cond.true2
  %cond6 = phi i64 [ %call3, %cond.true2 ], [ 0, %cond.false4 ]
  %conv7 = trunc i64 %cond6 to i32
  store i32 %conv7, ptr %l2, align 4, !tbaa !29
  %4 = load ptr, ptr %str3.addr, align 8, !tbaa !4
  %tobool8 = icmp ne ptr %4, null
  br i1 %tobool8, label %cond.true9, label %cond.false11

cond.true9:                                       ; preds = %cond.end5
  %5 = load ptr, ptr %str3.addr, align 8, !tbaa !4
  %call10 = call i64 @strlen(ptr noundef %5) #12
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end5
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true9
  %cond13 = phi i64 [ %call10, %cond.true9 ], [ 0, %cond.false11 ]
  %conv14 = trunc i64 %cond13 to i32
  store i32 %conv14, ptr %l3, align 4, !tbaa !29
  %6 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %str1.addr, align 8, !tbaa !4
  %8 = load i32, ptr %l1, align 4, !tbaa !29
  %9 = load i32, ptr %l2, align 4, !tbaa !29
  %add = add nsw i32 %8, %9
  %10 = load i32, ptr %l3, align 4, !tbaa !29
  %add15 = add nsw i32 %add, %10
  %add16 = add nsw i32 %add15, 1
  %call17 = call ptr @pool_alloctmpspace_free(ptr noundef %6, ptr noundef %7, i32 noundef %add16)
  store ptr %call17, ptr %str, align 8, !tbaa !4
  %11 = load ptr, ptr %str, align 8, !tbaa !4
  %tobool18 = icmp ne ptr %11, null
  br i1 %tobool18, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end12
  %12 = load ptr, ptr %str, align 8, !tbaa !4
  store ptr %12, ptr %str1.addr, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %cond.end12
  %13 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %14 = load i32, ptr %l1, align 4, !tbaa !29
  %15 = load i32, ptr %l2, align 4, !tbaa !29
  %add19 = add nsw i32 %14, %15
  %16 = load i32, ptr %l3, align 4, !tbaa !29
  %add20 = add nsw i32 %add19, %16
  %add21 = add nsw i32 %add20, 1
  %call22 = call ptr @pool_alloctmpspace(ptr noundef %13, i32 noundef %add21)
  store ptr %call22, ptr %str, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load ptr, ptr %str, align 8, !tbaa !4
  store ptr %17, ptr %s, align 8, !tbaa !4
  %18 = load i32, ptr %l1, align 4, !tbaa !29
  %tobool23 = icmp ne i32 %18, 0
  br i1 %tobool23, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.end
  %19 = load ptr, ptr %s, align 8, !tbaa !4
  %20 = load ptr, ptr %str1.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %19, %20
  br i1 %cmp, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then24
  %21 = load ptr, ptr %s, align 8, !tbaa !4
  %22 = load ptr, ptr %str1.addr, align 8, !tbaa !4
  %call27 = call ptr @strcpy(ptr noundef %21, ptr noundef %22) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then24
  %23 = load i32, ptr %l1, align 4, !tbaa !29
  %24 = load ptr, ptr %s, align 8, !tbaa !4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %idx.ext
  store ptr %add.ptr, ptr %s, align 8, !tbaa !4
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end
  %25 = load i32, ptr %l2, align 4, !tbaa !29
  %tobool30 = icmp ne i32 %25, 0
  br i1 %tobool30, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end29
  %26 = load ptr, ptr %s, align 8, !tbaa !4
  %27 = load ptr, ptr %str2.addr, align 8, !tbaa !4
  %call32 = call ptr @strcpy(ptr noundef %26, ptr noundef %27) #10
  %28 = load i32, ptr %l2, align 4, !tbaa !29
  %29 = load ptr, ptr %s, align 8, !tbaa !4
  %idx.ext33 = sext i32 %28 to i64
  %add.ptr34 = getelementptr inbounds i8, ptr %29, i64 %idx.ext33
  store ptr %add.ptr34, ptr %s, align 8, !tbaa !4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end29
  %30 = load i32, ptr %l3, align 4, !tbaa !29
  %tobool36 = icmp ne i32 %30, 0
  br i1 %tobool36, label %if.then37, label %if.end41

if.then37:                                        ; preds = %if.end35
  %31 = load ptr, ptr %s, align 8, !tbaa !4
  %32 = load ptr, ptr %str3.addr, align 8, !tbaa !4
  %call38 = call ptr @strcpy(ptr noundef %31, ptr noundef %32) #10
  %33 = load i32, ptr %l3, align 4, !tbaa !29
  %34 = load ptr, ptr %s, align 8, !tbaa !4
  %idx.ext39 = sext i32 %33 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %34, i64 %idx.ext39
  store ptr %add.ptr40, ptr %s, align 8, !tbaa !4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end35
  %35 = load ptr, ptr %s, align 8, !tbaa !4
  store i8 0, ptr %35, align 1, !tbaa !85
  %36 = load ptr, ptr %str, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %l3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %l2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %l1) #10
  ret ptr %36
}

; Function Attrs: nounwind uwtable
define internal ptr @pool_alloctmpspace_free(ptr noundef %pool, ptr noundef %space, i32 noundef %len) #0 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %space.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %oldn = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %space, ptr %space.addr, align 8, !tbaa !4
  store i32 %len, ptr %len.addr, align 4, !tbaa !29
  %0 = load ptr, ptr %space.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end35

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldn) #10
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 47
  %n1 = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace, i32 0, i32 2
  %2 = load i32, ptr %n1, align 8, !tbaa !152
  store i32 %2, ptr %oldn, align 4, !tbaa !29
  store i32 %2, ptr %n, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %if.then8, %if.then
  %3 = load i32, ptr %n, align 4, !tbaa !29
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n, align 4, !tbaa !29
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %for.cond
  store i32 15, ptr %n, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then3, %for.cond
  %4 = load i32, ptr %n, align 4, !tbaa !29
  %5 = load i32, ptr %oldn, align 4, !tbaa !29
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %for.end

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace6 = getelementptr inbounds %struct.s_Pool, ptr %6, i32 0, i32 47
  %buf = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace6, i32 0, i32 0
  %7 = load i32, ptr %n, align 4, !tbaa !29
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %buf, i64 0, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %9 = load ptr, ptr %space.addr, align 8, !tbaa !4
  %cmp7 = icmp ne ptr %8, %9
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  br label %for.cond

if.end9:                                          ; preds = %if.end5
  %10 = load i32, ptr %len.addr, align 4, !tbaa !29
  %11 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace10 = getelementptr inbounds %struct.s_Pool, ptr %11, i32 0, i32 47
  %len11 = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace10, i32 0, i32 1
  %12 = load i32, ptr %n, align 4, !tbaa !29
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [16 x i32], ptr %len11, i64 0, i64 %idxprom12
  %13 = load i32, ptr %arrayidx13, align 4, !tbaa !29
  %cmp14 = icmp sgt i32 %10, %13
  br i1 %cmp14, label %if.then15, label %if.end29

if.then15:                                        ; preds = %if.end9
  %14 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace16 = getelementptr inbounds %struct.s_Pool, ptr %14, i32 0, i32 47
  %buf17 = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace16, i32 0, i32 0
  %15 = load i32, ptr %n, align 4, !tbaa !29
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [16 x ptr], ptr %buf17, i64 0, i64 %idxprom18
  %16 = load ptr, ptr %arrayidx19, align 8, !tbaa !4
  %17 = load i32, ptr %len.addr, align 4, !tbaa !29
  %add = add nsw i32 %17, 32
  %conv = sext i32 %add to i64
  %call = call ptr @solv_realloc(ptr noundef %16, i64 noundef %conv)
  %18 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace20 = getelementptr inbounds %struct.s_Pool, ptr %18, i32 0, i32 47
  %buf21 = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace20, i32 0, i32 0
  %19 = load i32, ptr %n, align 4, !tbaa !29
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [16 x ptr], ptr %buf21, i64 0, i64 %idxprom22
  store ptr %call, ptr %arrayidx23, align 8, !tbaa !4
  %20 = load i32, ptr %len.addr, align 4, !tbaa !29
  %add24 = add nsw i32 %20, 32
  %21 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace25 = getelementptr inbounds %struct.s_Pool, ptr %21, i32 0, i32 47
  %len26 = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace25, i32 0, i32 1
  %22 = load i32, ptr %n, align 4, !tbaa !29
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [16 x i32], ptr %len26, i64 0, i64 %idxprom27
  store i32 %add24, ptr %arrayidx28, align 4, !tbaa !29
  br label %if.end29

if.end29:                                         ; preds = %if.then15, %if.end9
  %23 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %tmpspace30 = getelementptr inbounds %struct.s_Pool, ptr %23, i32 0, i32 47
  %buf31 = getelementptr inbounds %struct.s_Pool_tmpspace, ptr %tmpspace30, i32 0, i32 0
  %24 = load i32, ptr %n, align 4, !tbaa !29
  %idxprom32 = sext i32 %24 to i64
  %arrayidx33 = getelementptr inbounds [16 x ptr], ptr %buf31, i64 0, i64 %idxprom32
  %25 = load ptr, ptr %arrayidx33, align 8, !tbaa !4
  store ptr %25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.end:                                          ; preds = %if.then4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end29
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldn) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end35

if.end35:                                         ; preds = %cleanup.cont, %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end35, %cleanup
  %26 = load ptr, ptr %retval, align 8
  ret ptr %26

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define ptr @pool_bin2hex(ptr noundef %pool, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i32 %len, ptr %len.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10
  %0 = load i32, ptr %len.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr @.str.17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %2 = load i32, ptr %len.addr, align 4, !tbaa !29
  %mul = mul nsw i32 2, %2
  %add = add nsw i32 %mul, 1
  %call = call ptr @pool_alloctmpspace(ptr noundef %1, i32 noundef %add)
  store ptr %call, ptr %s, align 8, !tbaa !4
  %3 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %4 = load i32, ptr %len.addr, align 4, !tbaa !29
  %5 = load ptr, ptr %s, align 8, !tbaa !4
  %call1 = call ptr @solv_bin2hex(ptr noundef %3, i32 noundef %4, ptr noundef %5)
  %6 = load ptr, ptr %s, align 8, !tbaa !4
  store ptr %6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

declare ptr @solv_bin2hex(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @pool_lookup_str(ptr noundef %pool, i32 noundef %entry1, i32 noundef %keyname) #0 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %entry.addr = alloca i32, align 4
  %keyname.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %entry1, ptr %entry.addr, align 4, !tbaa !29
  store i32 %keyname, ptr %keyname.addr, align 4, !tbaa !29
  %0 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 31
  %repo = getelementptr inbounds %struct.s_Datapos, ptr %pos, i32 0, i32 0
  %2 = load ptr, ptr %repo, align 8, !tbaa !153
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos2 = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 31
  %repo3 = getelementptr inbounds %struct.s_Datapos, ptr %pos2, i32 0, i32 0
  %4 = load ptr, ptr %repo3, align 8, !tbaa !153
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos4 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 31
  %repodataid = getelementptr inbounds %struct.s_Datapos, ptr %pos4, i32 0, i32 2
  %6 = load i32, ptr %repodataid, align 4, !tbaa !154
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load i32, ptr %entry.addr, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos6 = getelementptr inbounds %struct.s_Pool, ptr %8, i32 0, i32 31
  %solvid = getelementptr inbounds %struct.s_Datapos, ptr %pos6, i32 0, i32 1
  %9 = load i32, ptr %solvid, align 8, !tbaa !155
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %9, %cond.false ]
  %10 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %call = call ptr @repo_lookup_str(ptr noundef %4, i32 noundef %cond, i32 noundef %10)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp7 = icmp sle i32 %11, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %12 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %12, i32 0, i32 8
  %13 = load ptr, ptr %solvables, align 8, !tbaa !16
  %14 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %13, i64 %idx.ext
  %15 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %call10 = call ptr @solvable_lookup_str(ptr noundef %add.ptr, i32 noundef %15)
  store ptr %call10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %cond.end
  %16 = load ptr, ptr %retval, align 8
  ret ptr %16
}

declare ptr @repo_lookup_str(ptr noundef, i32 noundef, i32 noundef) #2

declare ptr @solvable_lookup_str(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @pool_lookup_id(ptr noundef %pool, i32 noundef %entry1, i32 noundef %keyname) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %entry.addr = alloca i32, align 4
  %keyname.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %entry1, ptr %entry.addr, align 4, !tbaa !29
  store i32 %keyname, ptr %keyname.addr, align 4, !tbaa !29
  %0 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 31
  %repo = getelementptr inbounds %struct.s_Datapos, ptr %pos, i32 0, i32 0
  %2 = load ptr, ptr %repo, align 8, !tbaa !153
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos2 = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 31
  %repo3 = getelementptr inbounds %struct.s_Datapos, ptr %pos2, i32 0, i32 0
  %4 = load ptr, ptr %repo3, align 8, !tbaa !153
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos4 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 31
  %repodataid = getelementptr inbounds %struct.s_Datapos, ptr %pos4, i32 0, i32 2
  %6 = load i32, ptr %repodataid, align 4, !tbaa !154
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load i32, ptr %entry.addr, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos6 = getelementptr inbounds %struct.s_Pool, ptr %8, i32 0, i32 31
  %solvid = getelementptr inbounds %struct.s_Datapos, ptr %pos6, i32 0, i32 1
  %9 = load i32, ptr %solvid, align 8, !tbaa !155
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %9, %cond.false ]
  %10 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %call = call i32 @repo_lookup_id(ptr noundef %4, i32 noundef %cond, i32 noundef %10)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp7 = icmp sle i32 %11, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %12 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %12, i32 0, i32 8
  %13 = load ptr, ptr %solvables, align 8, !tbaa !16
  %14 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %13, i64 %idx.ext
  %15 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %call10 = call i32 @solvable_lookup_id(ptr noundef %add.ptr, i32 noundef %15)
  store i32 %call10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %cond.end
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare i32 @repo_lookup_id(ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @solvable_lookup_id(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i64 @pool_lookup_num(ptr noundef %pool, i32 noundef %entry1, i32 noundef %keyname, i64 noundef %notfound) #0 {
entry:
  %retval = alloca i64, align 8
  %pool.addr = alloca ptr, align 8
  %entry.addr = alloca i32, align 4
  %keyname.addr = alloca i32, align 4
  %notfound.addr = alloca i64, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %entry1, ptr %entry.addr, align 4, !tbaa !29
  store i32 %keyname, ptr %keyname.addr, align 4, !tbaa !29
  store i64 %notfound, ptr %notfound.addr, align 8, !tbaa !156
  %0 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 31
  %repo = getelementptr inbounds %struct.s_Datapos, ptr %pos, i32 0, i32 0
  %2 = load ptr, ptr %repo, align 8, !tbaa !153
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos2 = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 31
  %repo3 = getelementptr inbounds %struct.s_Datapos, ptr %pos2, i32 0, i32 0
  %4 = load ptr, ptr %repo3, align 8, !tbaa !153
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos4 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 31
  %repodataid = getelementptr inbounds %struct.s_Datapos, ptr %pos4, i32 0, i32 2
  %6 = load i32, ptr %repodataid, align 4, !tbaa !154
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load i32, ptr %entry.addr, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos6 = getelementptr inbounds %struct.s_Pool, ptr %8, i32 0, i32 31
  %solvid = getelementptr inbounds %struct.s_Datapos, ptr %pos6, i32 0, i32 1
  %9 = load i32, ptr %solvid, align 8, !tbaa !155
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %9, %cond.false ]
  %10 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %11 = load i64, ptr %notfound.addr, align 8, !tbaa !156
  %call = call i64 @repo_lookup_num(ptr noundef %4, i32 noundef %cond, i32 noundef %10, i64 noundef %11)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp7 = icmp sle i32 %12, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %13 = load i64, ptr %notfound.addr, align 8, !tbaa !156
  store i64 %13, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %14 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %14, i32 0, i32 8
  %15 = load ptr, ptr %solvables, align 8, !tbaa !16
  %16 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %15, i64 %idx.ext
  %17 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %18 = load i64, ptr %notfound.addr, align 8, !tbaa !156
  %call10 = call i64 @solvable_lookup_num(ptr noundef %add.ptr, i32 noundef %17, i64 noundef %18)
  store i64 %call10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %cond.end
  %19 = load i64, ptr %retval, align 8
  ret i64 %19
}

declare i64 @repo_lookup_num(ptr noundef, i32 noundef, i32 noundef, i64 noundef) #2

declare i64 @solvable_lookup_num(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @pool_lookup_void(ptr noundef %pool, i32 noundef %entry1, i32 noundef %keyname) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %entry.addr = alloca i32, align 4
  %keyname.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %entry1, ptr %entry.addr, align 4, !tbaa !29
  store i32 %keyname, ptr %keyname.addr, align 4, !tbaa !29
  %0 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 31
  %repo = getelementptr inbounds %struct.s_Datapos, ptr %pos, i32 0, i32 0
  %2 = load ptr, ptr %repo, align 8, !tbaa !153
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos2 = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 31
  %repo3 = getelementptr inbounds %struct.s_Datapos, ptr %pos2, i32 0, i32 0
  %4 = load ptr, ptr %repo3, align 8, !tbaa !153
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos4 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 31
  %repodataid = getelementptr inbounds %struct.s_Datapos, ptr %pos4, i32 0, i32 2
  %6 = load i32, ptr %repodataid, align 4, !tbaa !154
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load i32, ptr %entry.addr, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos6 = getelementptr inbounds %struct.s_Pool, ptr %8, i32 0, i32 31
  %solvid = getelementptr inbounds %struct.s_Datapos, ptr %pos6, i32 0, i32 1
  %9 = load i32, ptr %solvid, align 8, !tbaa !155
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %9, %cond.false ]
  %10 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %call = call i32 @repo_lookup_void(ptr noundef %4, i32 noundef %cond, i32 noundef %10)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp7 = icmp sle i32 %11, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %12 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %12, i32 0, i32 8
  %13 = load ptr, ptr %solvables, align 8, !tbaa !16
  %14 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %13, i64 %idx.ext
  %15 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %call10 = call i32 @solvable_lookup_void(ptr noundef %add.ptr, i32 noundef %15)
  store i32 %call10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %cond.end
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare i32 @repo_lookup_void(ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @solvable_lookup_void(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define ptr @pool_lookup_bin_checksum(ptr noundef %pool, i32 noundef %entry1, i32 noundef %keyname, ptr noundef %typep) #0 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %entry.addr = alloca i32, align 4
  %keyname.addr = alloca i32, align 4
  %typep.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %entry1, ptr %entry.addr, align 4, !tbaa !29
  store i32 %keyname, ptr %keyname.addr, align 4, !tbaa !29
  store ptr %typep, ptr %typep.addr, align 8, !tbaa !4
  %0 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 31
  %repo = getelementptr inbounds %struct.s_Datapos, ptr %pos, i32 0, i32 0
  %2 = load ptr, ptr %repo, align 8, !tbaa !153
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos2 = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 31
  %repo3 = getelementptr inbounds %struct.s_Datapos, ptr %pos2, i32 0, i32 0
  %4 = load ptr, ptr %repo3, align 8, !tbaa !153
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos4 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 31
  %repodataid = getelementptr inbounds %struct.s_Datapos, ptr %pos4, i32 0, i32 2
  %6 = load i32, ptr %repodataid, align 4, !tbaa !154
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load i32, ptr %entry.addr, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos6 = getelementptr inbounds %struct.s_Pool, ptr %8, i32 0, i32 31
  %solvid = getelementptr inbounds %struct.s_Datapos, ptr %pos6, i32 0, i32 1
  %9 = load i32, ptr %solvid, align 8, !tbaa !155
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %9, %cond.false ]
  %10 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %11 = load ptr, ptr %typep.addr, align 8, !tbaa !4
  %call = call ptr @repo_lookup_bin_checksum(ptr noundef %4, i32 noundef %cond, i32 noundef %10, ptr noundef %11)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp7 = icmp sle i32 %12, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %solvables, align 8, !tbaa !16
  %15 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %14, i64 %idx.ext
  %16 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %17 = load ptr, ptr %typep.addr, align 8, !tbaa !4
  %call10 = call ptr @solvable_lookup_bin_checksum(ptr noundef %add.ptr, i32 noundef %16, ptr noundef %17)
  store ptr %call10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %cond.end
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

declare ptr @repo_lookup_bin_checksum(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare ptr @solvable_lookup_bin_checksum(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @pool_lookup_checksum(ptr noundef %pool, i32 noundef %entry1, i32 noundef %keyname, ptr noundef %typep) #0 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %entry.addr = alloca i32, align 4
  %keyname.addr = alloca i32, align 4
  %typep.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %entry1, ptr %entry.addr, align 4, !tbaa !29
  store i32 %keyname, ptr %keyname.addr, align 4, !tbaa !29
  store ptr %typep, ptr %typep.addr, align 8, !tbaa !4
  %0 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 31
  %repo = getelementptr inbounds %struct.s_Datapos, ptr %pos, i32 0, i32 0
  %2 = load ptr, ptr %repo, align 8, !tbaa !153
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos2 = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 31
  %repo3 = getelementptr inbounds %struct.s_Datapos, ptr %pos2, i32 0, i32 0
  %4 = load ptr, ptr %repo3, align 8, !tbaa !153
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos4 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 31
  %repodataid = getelementptr inbounds %struct.s_Datapos, ptr %pos4, i32 0, i32 2
  %6 = load i32, ptr %repodataid, align 4, !tbaa !154
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load i32, ptr %entry.addr, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos6 = getelementptr inbounds %struct.s_Pool, ptr %8, i32 0, i32 31
  %solvid = getelementptr inbounds %struct.s_Datapos, ptr %pos6, i32 0, i32 1
  %9 = load i32, ptr %solvid, align 8, !tbaa !155
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %9, %cond.false ]
  %10 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %11 = load ptr, ptr %typep.addr, align 8, !tbaa !4
  %call = call ptr @repo_lookup_checksum(ptr noundef %4, i32 noundef %cond, i32 noundef %10, ptr noundef %11)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp7 = icmp sle i32 %12, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %solvables, align 8, !tbaa !16
  %15 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %14, i64 %idx.ext
  %16 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %17 = load ptr, ptr %typep.addr, align 8, !tbaa !4
  %call10 = call ptr @solvable_lookup_checksum(ptr noundef %add.ptr, i32 noundef %16, ptr noundef %17)
  store ptr %call10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %cond.end
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

declare ptr @repo_lookup_checksum(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare ptr @solvable_lookup_checksum(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @pool_lookup_idarray(ptr noundef %pool, i32 noundef %entry1, i32 noundef %keyname, ptr noundef %q) #0 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %entry.addr = alloca i32, align 4
  %keyname.addr = alloca i32, align 4
  %q.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %entry1, ptr %entry.addr, align 4, !tbaa !29
  store i32 %keyname, ptr %keyname.addr, align 4, !tbaa !29
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  %0 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp = icmp eq i32 %0, -2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 31
  %repo = getelementptr inbounds %struct.s_Datapos, ptr %pos, i32 0, i32 0
  %2 = load ptr, ptr %repo, align 8, !tbaa !153
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos2 = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 31
  %repo3 = getelementptr inbounds %struct.s_Datapos, ptr %pos2, i32 0, i32 0
  %4 = load ptr, ptr %repo3, align 8, !tbaa !153
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos4 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 31
  %repodataid = getelementptr inbounds %struct.s_Datapos, ptr %pos4, i32 0, i32 2
  %6 = load i32, ptr %repodataid, align 4, !tbaa !154
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load i32, ptr %entry.addr, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %pos6 = getelementptr inbounds %struct.s_Pool, ptr %8, i32 0, i32 31
  %solvid = getelementptr inbounds %struct.s_Datapos, ptr %pos6, i32 0, i32 1
  %9 = load i32, ptr %solvid, align 8, !tbaa !155
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %9, %cond.false ]
  %10 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %11 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %call = call i32 @repo_lookup_idarray(ptr noundef %4, i32 noundef %cond, i32 noundef %10, ptr noundef %11)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp7 = icmp sle i32 %12, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %solvables, align 8, !tbaa !16
  %15 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %14, i64 %idx.ext
  %16 = load i32, ptr %keyname.addr, align 4, !tbaa !29
  %17 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %call10 = call i32 @solvable_lookup_idarray(ptr noundef %add.ptr, i32 noundef %16, ptr noundef %17)
  store i32 %call10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %cond.end
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

declare i32 @repo_lookup_idarray(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @solvable_lookup_idarray(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @pool_lookup_deltalocation(ptr noundef %pool, i32 noundef %entry1, ptr noundef %medianrp) #0 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %entry.addr = alloca i32, align 4
  %medianrp.addr = alloca ptr, align 8
  %loc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %entry1, ptr %entry.addr, align 4, !tbaa !29
  store ptr %medianrp, ptr %medianrp.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %loc) #10
  %0 = load ptr, ptr %medianrp.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %medianrp.addr, align 8, !tbaa !4
  store i32 0, ptr %1, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %cmp = icmp ne i32 %2, -2
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %4 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %call = call ptr @pool_lookup_str(ptr noundef %3, i32 noundef %4, i32 noundef 159)
  store ptr %call, ptr %loc, align 8, !tbaa !4
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %loc, align 8, !tbaa !4
  %7 = load ptr, ptr %loc, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %7, null
  %8 = zext i1 %tobool4 to i64
  %cond = select i1 %tobool4, ptr @.str.18, ptr null
  %9 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %10 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %call5 = call ptr @pool_lookup_str(ptr noundef %9, i32 noundef %10, i32 noundef 160)
  %call6 = call ptr @pool_tmpjoin(ptr noundef %5, ptr noundef %6, ptr noundef %cond, ptr noundef %call5)
  store ptr %call6, ptr %loc, align 8, !tbaa !4
  %11 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %loc, align 8, !tbaa !4
  %13 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %14 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %call7 = call ptr @pool_lookup_str(ptr noundef %13, i32 noundef %14, i32 noundef 161)
  %call8 = call ptr @pool_tmpappend(ptr noundef %11, ptr noundef %12, ptr noundef @.str.19, ptr noundef %call7)
  store ptr %call8, ptr %loc, align 8, !tbaa !4
  %15 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %loc, align 8, !tbaa !4
  %17 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %18 = load i32, ptr %entry.addr, align 4, !tbaa !29
  %call9 = call ptr @pool_lookup_str(ptr noundef %17, i32 noundef %18, i32 noundef 162)
  %call10 = call ptr @pool_tmpappend(ptr noundef %15, ptr noundef %16, ptr noundef @.str.20, ptr noundef %call9)
  store ptr %call10, ptr %loc, align 8, !tbaa !4
  %19 = load ptr, ptr %loc, align 8, !tbaa !4
  store ptr %19, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %loc) #10
  %20 = load ptr, ptr %retval, align 8
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define void @pool_add_fileconflicts_deps(ptr noundef %pool, ptr noundef %conflicts) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %conflicts.addr = alloca ptr, align 8
  %hadhashes = alloca i32, align 4
  %s = alloca ptr, align 8
  %fn = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %md5 = alloca i32, align 4
  %id = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %conflicts, ptr %conflicts.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hadhashes) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %relhashtbl = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 43
  %1 = load ptr, ptr %relhashtbl, align 8, !tbaa !158
  %tobool = icmp ne ptr %1, null
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, ptr %hadhashes, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %fn) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %md5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %3 = load ptr, ptr %conflicts.addr, align 8, !tbaa !4
  %count = getelementptr inbounds %struct.s_Queue, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %count, align 8, !tbaa !102
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !tbaa !29
  %6 = load ptr, ptr %conflicts.addr, align 8, !tbaa !4
  %count2 = getelementptr inbounds %struct.s_Queue, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %count2, align 8, !tbaa !102
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %conflicts.addr, align 8, !tbaa !4
  %elements = getelementptr inbounds %struct.s_Queue, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %elements, align 8, !tbaa !101
  %10 = load i32, ptr %i, align 4, !tbaa !29
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %idxprom
  %11 = load i32, ptr %arrayidx, align 4, !tbaa !29
  store i32 %11, ptr %fn, align 4, !tbaa !29
  %12 = load ptr, ptr %conflicts.addr, align 8, !tbaa !4
  %elements3 = getelementptr inbounds %struct.s_Queue, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %elements3, align 8, !tbaa !101
  %14 = load i32, ptr %i, align 4, !tbaa !29
  %add = add nsw i32 %14, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %13, i64 %idxprom4
  %15 = load i32, ptr %arrayidx5, align 4, !tbaa !29
  store i32 %15, ptr %p, align 4, !tbaa !29
  %16 = load ptr, ptr %conflicts.addr, align 8, !tbaa !4
  %elements6 = getelementptr inbounds %struct.s_Queue, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %elements6, align 8, !tbaa !101
  %18 = load i32, ptr %i, align 4, !tbaa !29
  %add7 = add nsw i32 %18, 2
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %17, i64 %idxprom8
  %19 = load i32, ptr %arrayidx9, align 4, !tbaa !29
  store i32 %19, ptr %md5, align 4, !tbaa !29
  %20 = load ptr, ptr %conflicts.addr, align 8, !tbaa !4
  %elements10 = getelementptr inbounds %struct.s_Queue, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %elements10, align 8, !tbaa !101
  %22 = load i32, ptr %i, align 4, !tbaa !29
  %add11 = add nsw i32 %22, 4
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %21, i64 %idxprom12
  %23 = load i32, ptr %arrayidx13, align 4, !tbaa !29
  store i32 %23, ptr %q, align 4, !tbaa !29
  %24 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %25 = load i32, ptr %fn, align 4, !tbaa !29
  %26 = load i32, ptr %md5, align 4, !tbaa !29
  %call = call i32 @pool_rel2id(ptr noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef 21, i32 noundef 1)
  store i32 %call, ptr %id, align 4, !tbaa !29
  %27 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables = getelementptr inbounds %struct.s_Pool, ptr %27, i32 0, i32 8
  %28 = load ptr, ptr %solvables, align 8, !tbaa !16
  %29 = load i32, ptr %p, align 4, !tbaa !29
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds %struct.s_Solvable, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %s, align 8, !tbaa !4
  %30 = load ptr, ptr %s, align 8, !tbaa !4
  %repo = getelementptr inbounds %struct.s_Solvable, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %repo, align 8, !tbaa !69
  %tobool14 = icmp ne ptr %31, null
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %for.body
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %32 = load ptr, ptr %s, align 8, !tbaa !4
  %repo17 = getelementptr inbounds %struct.s_Solvable, ptr %32, i32 0, i32 4
  %33 = load ptr, ptr %repo17, align 8, !tbaa !69
  %34 = load ptr, ptr %s, align 8, !tbaa !4
  %provides = getelementptr inbounds %struct.s_Solvable, ptr %34, i32 0, i32 5
  %35 = load i32, ptr %provides, align 8, !tbaa !68
  %36 = load i32, ptr %id, align 4, !tbaa !29
  %call18 = call i32 @repo_addid_dep(ptr noundef %33, i32 noundef %35, i32 noundef %36, i32 noundef 16)
  %37 = load ptr, ptr %s, align 8, !tbaa !4
  %provides19 = getelementptr inbounds %struct.s_Solvable, ptr %37, i32 0, i32 5
  store i32 %call18, ptr %provides19, align 8, !tbaa !68
  %38 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides = getelementptr inbounds %struct.s_Pool, ptr %38, i32 0, i32 18
  %39 = load ptr, ptr %whatprovides, align 8, !tbaa !38
  %tobool20 = icmp ne ptr %39, null
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  %40 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %41 = load i32, ptr %id, align 4, !tbaa !29
  %42 = load i32, ptr %p, align 4, !tbaa !29
  call void @add_new_provider(ptr noundef %40, i32 noundef %41, i32 noundef %42)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end16
  %43 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %solvables23 = getelementptr inbounds %struct.s_Pool, ptr %43, i32 0, i32 8
  %44 = load ptr, ptr %solvables23, align 8, !tbaa !16
  %45 = load i32, ptr %q, align 4, !tbaa !29
  %idx.ext24 = sext i32 %45 to i64
  %add.ptr25 = getelementptr inbounds %struct.s_Solvable, ptr %44, i64 %idx.ext24
  store ptr %add.ptr25, ptr %s, align 8, !tbaa !4
  %46 = load ptr, ptr %s, align 8, !tbaa !4
  %repo26 = getelementptr inbounds %struct.s_Solvable, ptr %46, i32 0, i32 4
  %47 = load ptr, ptr %repo26, align 8, !tbaa !69
  %tobool27 = icmp ne ptr %47, null
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end22
  br label %for.inc

if.end29:                                         ; preds = %if.end22
  %48 = load ptr, ptr %s, align 8, !tbaa !4
  %repo30 = getelementptr inbounds %struct.s_Solvable, ptr %48, i32 0, i32 4
  %49 = load ptr, ptr %repo30, align 8, !tbaa !69
  %50 = load ptr, ptr %s, align 8, !tbaa !4
  %conflicts31 = getelementptr inbounds %struct.s_Solvable, ptr %50, i32 0, i32 7
  %51 = load i32, ptr %conflicts31, align 8, !tbaa !159
  %52 = load i32, ptr %id, align 4, !tbaa !29
  %call32 = call i32 @repo_addid_dep(ptr noundef %49, i32 noundef %51, i32 noundef %52, i32 noundef 0)
  %53 = load ptr, ptr %s, align 8, !tbaa !4
  %conflicts33 = getelementptr inbounds %struct.s_Solvable, ptr %53, i32 0, i32 7
  store i32 %call32, ptr %conflicts33, align 8, !tbaa !159
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %if.then28, %if.then15
  %54 = load i32, ptr %i, align 4, !tbaa !29
  %add34 = add nsw i32 %54, 6
  store i32 %add34, ptr %i, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !160

for.end:                                          ; preds = %for.cond
  %55 = load i32, ptr %hadhashes, align 4, !tbaa !29
  %tobool35 = icmp ne i32 %55, 0
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %for.end
  %56 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  call void @pool_freeidhashes(ptr noundef %56)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %md5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %fn) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %hadhashes) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @pool_rel2id(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @repo_addid_dep(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @add_new_provider(ptr noundef %pool, i32 noundef %id, i32 noundef %p) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %q = alloca %struct.s_Queue, align 8
  %pp = alloca ptr, align 8
  %rd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %id, ptr %id.addr, align 4, !tbaa !29
  store i32 %p, ptr %p.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 32, ptr %q) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp) #10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %id.addr, align 4, !tbaa !29
  %and = and i32 %0, -2147483648
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd) #10
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rels = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %rels, align 8, !tbaa !8
  %3 = load i32, ptr %id.addr, align 4, !tbaa !29
  %xor = xor i32 %3, -2147483648
  %idx.ext = zext i32 %xor to i64
  %add.ptr = getelementptr inbounds %struct.s_Reldep, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %rd, align 8, !tbaa !4
  %4 = load ptr, ptr %rd, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.s_Reldep, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %name, align 4, !tbaa !73
  store i32 %5, ptr %id.addr, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd) #10
  br label %while.cond, !llvm.loop !161

while.end:                                        ; preds = %while.cond
  call void @queue_init(ptr noundef %q)
  %6 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovidesdata = getelementptr inbounds %struct.s_Pool, ptr %6, i32 0, i32 20
  %7 = load ptr, ptr %whatprovidesdata, align 8, !tbaa !40
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %whatprovides = getelementptr inbounds %struct.s_Pool, ptr %8, i32 0, i32 18
  %9 = load ptr, ptr %whatprovides, align 8, !tbaa !38
  %10 = load i32, ptr %id.addr, align 4, !tbaa !29
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %idxprom
  %11 = load i32, ptr %arrayidx, align 4, !tbaa !29
  %idx.ext1 = zext i32 %11 to i64
  %add.ptr2 = getelementptr inbounds i32, ptr %7, i64 %idx.ext1
  store ptr %add.ptr2, ptr %pp, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %12 = load ptr, ptr %pp, align 8, !tbaa !4
  %13 = load i32, ptr %12, align 4, !tbaa !29
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %pp, align 8, !tbaa !4
  %15 = load i32, ptr %14, align 4, !tbaa !29
  %16 = load i32, ptr %p.addr, align 4, !tbaa !29
  %cmp3 = icmp eq i32 %15, %16
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @queue_free(ptr noundef %q)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %17 = load ptr, ptr %pp, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !29
  %19 = load i32, ptr %p.addr, align 4, !tbaa !29
  %cmp4 = icmp sgt i32 %18, %19
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %20 = load i32, ptr %p.addr, align 4, !tbaa !29
  call void @queue_push(ptr noundef %q, i32 noundef %20)
  store i32 0, ptr %p.addr, align 4, !tbaa !29
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %21 = load ptr, ptr %pp, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !29
  call void @queue_push(ptr noundef %q, i32 noundef %22)
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %23 = load ptr, ptr %pp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %pp, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !162

for.end:                                          ; preds = %for.cond
  %24 = load i32, ptr %p.addr, align 4, !tbaa !29
  %tobool7 = icmp ne i32 %24, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.end
  %25 = load i32, ptr %p.addr, align 4, !tbaa !29
  call void @queue_push(ptr noundef %q, i32 noundef %25)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %for.end
  %26 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %27 = load i32, ptr %id.addr, align 4, !tbaa !29
  %28 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %call = call i32 @pool_queuetowhatprovides(ptr noundef %28, ptr noundef %q)
  call void @pool_set_whatprovides(ptr noundef %26, i32 noundef %27, i32 noundef %call)
  call void @queue_free(ptr noundef %q)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr %q) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define ptr @pool_prepend_rootdir(ptr noundef %pool, ptr noundef %path) #0 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %path, ptr %path.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rootdir = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 50
  %2 = load ptr, ptr %rootdir, align 8, !tbaa !37
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call = call ptr @solv_strdup(ptr noundef %3)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rootdir4 = getelementptr inbounds %struct.s_Pool, ptr %4, i32 0, i32 50
  %5 = load ptr, ptr %rootdir4, align 8, !tbaa !37
  %6 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %7 = load i8, ptr %6, align 1, !tbaa !85
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  %8 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  %9 = load ptr, ptr %path.addr, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %9, %cond.false ]
  %call6 = call ptr @solv_dupjoin(ptr noundef %5, ptr noundef @.str.18, ptr noundef %cond)
  store ptr %call6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

declare ptr @solv_dupjoin(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @pool_prepend_rootdir_tmp(ptr noundef %pool, ptr noundef %path) #0 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %path, ptr %path.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rootdir = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 50
  %2 = load ptr, ptr %rootdir, align 8, !tbaa !37
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %path.addr, align 8, !tbaa !4
  store ptr %3, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rootdir4 = getelementptr inbounds %struct.s_Pool, ptr %5, i32 0, i32 50
  %6 = load ptr, ptr %rootdir4, align 8, !tbaa !37
  %7 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %8 = load i8, ptr %7, align 1, !tbaa !85
  %conv = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  %9 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  %10 = load ptr, ptr %path.addr, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %10, %cond.false ]
  %call = call ptr @pool_tmpjoin(ptr noundef %4, ptr noundef %6, ptr noundef @.str.18, ptr noundef %cond)
  store ptr %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define void @pool_set_rootdir(ptr noundef %pool, ptr noundef %rootdir) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %rootdir.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %rootdir, ptr %rootdir.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rootdir1 = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 50
  %1 = load ptr, ptr %rootdir1, align 8, !tbaa !37
  %call = call ptr @solv_free(ptr noundef %1)
  %2 = load ptr, ptr %rootdir.addr, align 8, !tbaa !4
  %call2 = call ptr @solv_strdup(ptr noundef %2)
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rootdir3 = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 50
  store ptr %call2, ptr %rootdir3, align 8, !tbaa !37
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @pool_get_rootdir(ptr noundef %pool) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %rootdir = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 50
  %1 = load ptr, ptr %rootdir, align 8, !tbaa !37
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define void @pool_set_custom_vendorcheck(ptr noundef %pool, ptr noundef %vendorcheck) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %vendorcheck.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %vendorcheck, ptr %vendorcheck.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %vendorcheck.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %custom_vendorcheck = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 51
  store ptr %0, ptr %custom_vendorcheck, align 8, !tbaa !163
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @pool_get_custom_vendorcheck(ptr noundef %pool) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %custom_vendorcheck = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 51
  %1 = load ptr, ptr %custom_vendorcheck, align 8, !tbaa !163
  ret ptr %1
}

declare ptr @solv_extend_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pool_badarch_solvable(ptr noundef %pool, ptr noundef %s) #3 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %id2arch = getelementptr inbounds %struct.s_Pool, ptr %0, i32 0, i32 13
  %1 = load ptr, ptr %id2arch, align 8, !tbaa !27
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arch = getelementptr inbounds %struct.s_Solvable, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %arch, align 4, !tbaa !22
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %arch2 = getelementptr inbounds %struct.s_Solvable, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %arch2, align 4, !tbaa !22
  %call = call i32 @pool_arch2score(ptr noundef %4, i32 noundef %6)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pool_arch2score(ptr noundef %pool, i32 noundef %arch) #3 {
entry:
  %pool.addr = alloca ptr, align 8
  %arch.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %arch, ptr %arch.addr, align 4, !tbaa !29
  %0 = load i32, ptr %arch.addr, align 4, !tbaa !29
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %lastarch = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 15
  %2 = load i32, ptr %lastarch, align 8, !tbaa !164
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %id2arch = getelementptr inbounds %struct.s_Pool, ptr %3, i32 0, i32 13
  %4 = load ptr, ptr %id2arch, align 8, !tbaa !27
  %5 = load i32, ptr %arch.addr, align 4, !tbaa !29
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

declare ptr @solv_malloc2(i64 noundef, i64 noundef) #2

declare void @solv_sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @pool_shrink_whatprovides_sortcmp(ptr noundef %ap, ptr noundef %bp, ptr noundef %dp) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %dp.addr = alloca ptr, align 8
  %r = alloca i32, align 4
  %pool = alloca ptr, align 8
  %oa = alloca i32, align 4
  %ob = alloca i32, align 4
  %da = alloca ptr, align 8
  %db = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !4
  store ptr %dp, ptr %dp.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #10
  %0 = load ptr, ptr %dp.addr, align 8, !tbaa !4
  store ptr %0, ptr %pool, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %oa) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %ob) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %da) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %db) #10
  %1 = load ptr, ptr %pool, align 8, !tbaa !4
  %whatprovides = getelementptr inbounds %struct.s_Pool, ptr %1, i32 0, i32 18
  %2 = load ptr, ptr %whatprovides, align 8, !tbaa !38
  %3 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %4 = load i32, ptr %3, align 4, !tbaa !29
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !29
  store i32 %5, ptr %oa, align 4, !tbaa !29
  %6 = load ptr, ptr %pool, align 8, !tbaa !4
  %whatprovides1 = getelementptr inbounds %struct.s_Pool, ptr %6, i32 0, i32 18
  %7 = load ptr, ptr %whatprovides1, align 8, !tbaa !38
  %8 = load ptr, ptr %bp.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !29
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 %idxprom2
  %10 = load i32, ptr %arrayidx3, align 4, !tbaa !29
  store i32 %10, ptr %ob, align 4, !tbaa !29
  %11 = load i32, ptr %oa, align 4, !tbaa !29
  %12 = load i32, ptr %ob, align 4, !tbaa !29
  %cmp = icmp eq i32 %11, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !29
  %15 = load ptr, ptr %bp.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !29
  %sub = sub nsw i32 %14, %16
  store i32 %sub, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load ptr, ptr %pool, align 8, !tbaa !4
  %whatprovidesdata = getelementptr inbounds %struct.s_Pool, ptr %17, i32 0, i32 20
  %18 = load ptr, ptr %whatprovidesdata, align 8, !tbaa !40
  %19 = load i32, ptr %oa, align 4, !tbaa !29
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i32, ptr %18, i64 %idx.ext
  store ptr %add.ptr, ptr %da, align 8, !tbaa !4
  %20 = load ptr, ptr %pool, align 8, !tbaa !4
  %whatprovidesdata4 = getelementptr inbounds %struct.s_Pool, ptr %20, i32 0, i32 20
  %21 = load ptr, ptr %whatprovidesdata4, align 8, !tbaa !40
  %22 = load i32, ptr %ob, align 4, !tbaa !29
  %idx.ext5 = sext i32 %22 to i64
  %add.ptr6 = getelementptr inbounds i32, ptr %21, i64 %idx.ext5
  store ptr %add.ptr6, ptr %db, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end
  %23 = load ptr, ptr %db, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !29
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load ptr, ptr %da, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %da, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !29
  %27 = load ptr, ptr %db, align 8, !tbaa !4
  %incdec.ptr7 = getelementptr inbounds i32, ptr %27, i32 1
  store ptr %incdec.ptr7, ptr %db, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !29
  %sub8 = sub nsw i32 %26, %28
  store i32 %sub8, ptr %r, align 4, !tbaa !29
  %cmp9 = icmp ne i32 %sub8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  %29 = load i32, ptr %r, align 4, !tbaa !29
  store i32 %29, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !165

while.end:                                        ; preds = %while.cond
  %30 = load ptr, ptr %da, align 8, !tbaa !4
  %31 = load i32, ptr %30, align 4, !tbaa !29
  %tobool12 = icmp ne i32 %31, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %while.end
  %32 = load ptr, ptr %da, align 8, !tbaa !4
  %33 = load i32, ptr %32, align 4, !tbaa !29
  store i32 %33, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %while.end
  %34 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %35 = load i32, ptr %34, align 4, !tbaa !29
  %36 = load ptr, ptr %bp.addr, align 8, !tbaa !4
  %37 = load i32, ptr %36, align 4, !tbaa !29
  %sub15 = sub nsw i32 %35, %37
  store i32 %sub15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %db) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %da) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ob) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %oa) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #10
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: noreturn nounwind
declare void @abort() #8

declare i32 @dataiterator_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @dataiterator_step(ptr noundef) #2

declare void @dataiterator_skip_solvable(ptr noundef) #2

declare void @dataiterator_free(ptr noundef) #2

declare void @queue_insert(ptr noundef, i32 noundef, i32 noundef) #2

declare void @queue_alloc_one(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rpmeqmagic(ptr noundef %pool, i32 noundef %evr) #3 {
entry:
  %retval = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  %evr.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  store i32 %evr, ptr %evr.addr, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %1 = load i32, ptr %evr.addr, align 4, !tbaa !29
  %call = call ptr @pool_id2str(ptr noundef %0, i32 noundef %1)
  store ptr %call, ptr %s, align 8, !tbaa !4
  %2 = load ptr, ptr %s, align 8, !tbaa !4
  %3 = load i8, ptr %2, align 1, !tbaa !85
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 48
  br i1 %cmp, label %if.then, label %if.end39

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load ptr, ptr %s, align 8, !tbaa !4
  %5 = load i8, ptr %4, align 1, !tbaa !85
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 48
  br i1 %cmp3, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 1
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !85
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp sge i32 %conv5, 48
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %arrayidx8, align 1, !tbaa !85
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp sle i32 %conv9, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %s, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !166

while.end:                                        ; preds = %land.end
  %12 = load ptr, ptr %s, align 8, !tbaa !4
  %13 = load i8, ptr %12, align 1, !tbaa !85
  %conv12 = sext i8 %13 to i32
  %cmp13 = icmp eq i32 %conv12, 48
  br i1 %cmp13, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %while.end
  %14 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx16 = getelementptr inbounds i8, ptr %14, i64 1
  %15 = load i8, ptr %arrayidx16, align 1, !tbaa !85
  %conv17 = sext i8 %15 to i32
  %cmp18 = icmp eq i32 %conv17, 58
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %land.lhs.true15
  %16 = load ptr, ptr %s, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 2
  store ptr %add.ptr, ptr %s, align 8, !tbaa !4
  br label %while.cond21

while.cond21:                                     ; preds = %while.body36, %if.then20
  %17 = load ptr, ptr %s, align 8, !tbaa !4
  %18 = load i8, ptr %17, align 1, !tbaa !85
  %conv22 = sext i8 %18 to i32
  %cmp23 = icmp eq i32 %conv22, 48
  br i1 %cmp23, label %land.lhs.true25, label %land.end35

land.lhs.true25:                                  ; preds = %while.cond21
  %19 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds i8, ptr %19, i64 1
  %20 = load i8, ptr %arrayidx26, align 1, !tbaa !85
  %conv27 = sext i8 %20 to i32
  %cmp28 = icmp sge i32 %conv27, 48
  br i1 %cmp28, label %land.rhs30, label %land.end35

land.rhs30:                                       ; preds = %land.lhs.true25
  %21 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx31 = getelementptr inbounds i8, ptr %21, i64 1
  %22 = load i8, ptr %arrayidx31, align 1, !tbaa !85
  %conv32 = sext i8 %22 to i32
  %cmp33 = icmp sle i32 %conv32, 57
  br label %land.end35

land.end35:                                       ; preds = %land.rhs30, %land.lhs.true25, %while.cond21
  %23 = phi i1 [ false, %land.lhs.true25 ], [ false, %while.cond21 ], [ %cmp33, %land.rhs30 ]
  br i1 %23, label %while.body36, label %while.end38

while.body36:                                     ; preds = %land.end35
  %24 = load ptr, ptr %s, align 8, !tbaa !4
  %incdec.ptr37 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr37, ptr %s, align 8, !tbaa !4
  br label %while.cond21, !llvm.loop !167

while.end38:                                      ; preds = %land.end35
  br label %if.end

if.end:                                           ; preds = %while.end38, %land.lhs.true15, %while.end
  br label %if.end39

if.end39:                                         ; preds = %if.end, %entry
  %25 = load ptr, ptr %s, align 8, !tbaa !4
  %26 = load i8, ptr %25, align 1, !tbaa !85
  %conv40 = sext i8 %26 to i32
  %cmp41 = icmp sge i32 %conv40, 48
  br i1 %cmp41, label %land.lhs.true43, label %if.end63

land.lhs.true43:                                  ; preds = %if.end39
  %27 = load ptr, ptr %s, align 8, !tbaa !4
  %28 = load i8, ptr %27, align 1, !tbaa !85
  %conv44 = sext i8 %28 to i32
  %cmp45 = icmp sle i32 %conv44, 57
  br i1 %cmp45, label %if.then47, label %if.end63

if.then47:                                        ; preds = %land.lhs.true43
  %29 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx48 = getelementptr inbounds i8, ptr %29, i64 1
  %30 = load i8, ptr %arrayidx48, align 1, !tbaa !85
  %conv49 = sext i8 %30 to i32
  %cmp50 = icmp sge i32 %conv49, 48
  br i1 %cmp50, label %land.lhs.true52, label %if.end61

land.lhs.true52:                                  ; preds = %if.then47
  %31 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx53 = getelementptr inbounds i8, ptr %31, i64 1
  %32 = load i8, ptr %arrayidx53, align 1, !tbaa !85
  %conv54 = sext i8 %32 to i32
  %cmp55 = icmp sle i32 %conv54, 57
  br i1 %cmp55, label %if.then57, label %if.end61

if.then57:                                        ; preds = %land.lhs.true52
  %33 = load ptr, ptr %s, align 8, !tbaa !4
  %34 = load i8, ptr %33, align 1, !tbaa !85
  %conv58 = sext i8 %34 to i32
  %35 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx59 = getelementptr inbounds i8, ptr %35, i64 1
  %36 = load i8, ptr %arrayidx59, align 1, !tbaa !85
  %conv60 = sext i8 %36 to i32
  %shl = shl i32 %conv60, 8
  %add = add nsw i32 %conv58, %shl
  store i32 %add, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %land.lhs.true52, %if.then47
  %37 = load ptr, ptr %s, align 8, !tbaa !4
  %38 = load i8, ptr %37, align 1, !tbaa !85
  %conv62 = sext i8 %38 to i32
  store i32 %conv62, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end63:                                         ; preds = %land.lhs.true43, %if.end39
  %39 = load ptr, ptr %s, align 8, !tbaa !4
  %40 = load i8, ptr %39, align 1, !tbaa !85
  %conv64 = sext i8 %40 to i32
  %cmp65 = icmp sge i32 %conv64, 97
  br i1 %cmp65, label %land.lhs.true67, label %lor.lhs.false

land.lhs.true67:                                  ; preds = %if.end63
  %41 = load ptr, ptr %s, align 8, !tbaa !4
  %42 = load i8, ptr %41, align 1, !tbaa !85
  %conv68 = sext i8 %42 to i32
  %cmp69 = icmp sle i32 %conv68, 122
  br i1 %cmp69, label %if.then78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true67, %if.end63
  %43 = load ptr, ptr %s, align 8, !tbaa !4
  %44 = load i8, ptr %43, align 1, !tbaa !85
  %conv71 = sext i8 %44 to i32
  %cmp72 = icmp sge i32 %conv71, 65
  br i1 %cmp72, label %land.lhs.true74, label %if.end106

land.lhs.true74:                                  ; preds = %lor.lhs.false
  %45 = load ptr, ptr %s, align 8, !tbaa !4
  %46 = load i8, ptr %45, align 1, !tbaa !85
  %conv75 = sext i8 %46 to i32
  %cmp76 = icmp sle i32 %conv75, 90
  br i1 %cmp76, label %if.then78, label %if.end106

if.then78:                                        ; preds = %land.lhs.true74, %land.lhs.true67
  %47 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx79 = getelementptr inbounds i8, ptr %47, i64 1
  %48 = load i8, ptr %arrayidx79, align 1, !tbaa !85
  %conv80 = sext i8 %48 to i32
  %cmp81 = icmp sge i32 %conv80, 97
  br i1 %cmp81, label %land.lhs.true83, label %lor.lhs.false88

land.lhs.true83:                                  ; preds = %if.then78
  %49 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds i8, ptr %49, i64 1
  %50 = load i8, ptr %arrayidx84, align 1, !tbaa !85
  %conv85 = sext i8 %50 to i32
  %cmp86 = icmp sle i32 %conv85, 122
  br i1 %cmp86, label %if.then98, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %land.lhs.true83, %if.then78
  %51 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx89 = getelementptr inbounds i8, ptr %51, i64 1
  %52 = load i8, ptr %arrayidx89, align 1, !tbaa !85
  %conv90 = sext i8 %52 to i32
  %cmp91 = icmp sge i32 %conv90, 65
  br i1 %cmp91, label %land.lhs.true93, label %if.end104

land.lhs.true93:                                  ; preds = %lor.lhs.false88
  %53 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx94 = getelementptr inbounds i8, ptr %53, i64 1
  %54 = load i8, ptr %arrayidx94, align 1, !tbaa !85
  %conv95 = sext i8 %54 to i32
  %cmp96 = icmp sle i32 %conv95, 90
  br i1 %cmp96, label %if.then98, label %if.end104

if.then98:                                        ; preds = %land.lhs.true93, %land.lhs.true83
  %55 = load ptr, ptr %s, align 8, !tbaa !4
  %56 = load i8, ptr %55, align 1, !tbaa !85
  %conv99 = sext i8 %56 to i32
  %57 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx100 = getelementptr inbounds i8, ptr %57, i64 1
  %58 = load i8, ptr %arrayidx100, align 1, !tbaa !85
  %conv101 = sext i8 %58 to i32
  %shl102 = shl i32 %conv101, 8
  %add103 = add nsw i32 %conv99, %shl102
  store i32 %add103, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end104:                                        ; preds = %land.lhs.true93, %lor.lhs.false88
  %59 = load ptr, ptr %s, align 8, !tbaa !4
  %60 = load i8, ptr %59, align 1, !tbaa !85
  %conv105 = sext i8 %60 to i32
  store i32 %conv105, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end106:                                        ; preds = %land.lhs.true74, %lor.lhs.false
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %if.end104, %if.then98, %if.end61, %if.then57
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 56}
!9 = !{!"s_Pool", !5, i64 0, !10, i64 8, !5, i64 56, !11, i64 64, !5, i64 72, !11, i64 80, !11, i64 84, !5, i64 88, !5, i64 96, !11, i64 104, !5, i64 112, !11, i64 120, !11, i64 124, !5, i64 128, !5, i64 136, !11, i64 144, !12, i64 152, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !11, i64 216, !11, i64 220, !5, i64 224, !5, i64 232, !5, i64 240, !11, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !13, i64 288, !12, i64 312, !11, i64 344, !11, i64 348, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !11, i64 368, !11, i64 372, !11, i64 376, !11, i64 380, !5, i64 384, !11, i64 392, !5, i64 400, !11, i64 408, !14, i64 416, !5, i64 616, !11, i64 624, !5, i64 632, !5, i64 640, !11, i64 648, !11, i64 652, !12, i64 656, !11, i64 688, !5, i64 696, !11, i64 704, !5, i64 712, !11, i64 720, !11, i64 724}
!10 = !{!"s_Stringpool", !5, i64 0, !11, i64 8, !5, i64 16, !11, i64 24, !5, i64 32, !11, i64 40}
!11 = !{!"int", !6, i64 0}
!12 = !{!"s_Queue", !5, i64 0, !11, i64 8, !5, i64 16, !11, i64 24}
!13 = !{!"s_Datapos", !5, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!14 = !{!"s_Pool_tmpspace", !6, i64 0, !6, i64 128, !11, i64 192}
!15 = !{!9, !11, i64 64}
!16 = !{!9, !5, i64 96}
!17 = !{!9, !11, i64 104}
!18 = !{!9, !11, i64 124}
!19 = !{!9, !11, i64 380}
!20 = !{!21, !11, i64 0}
!21 = !{!"s_Solvable", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !5, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52}
!22 = !{!21, !11, i64 4}
!23 = !{!21, !11, i64 8}
!24 = !{!9, !11, i64 248}
!25 = !{!26, !26, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!9, !5, i64 128}
!28 = !{!9, !5, i64 136}
!29 = !{!11, !11, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!9, !11, i64 120}
!33 = !{!9, !5, i64 112}
!34 = distinct !{!34, !31}
!35 = !{!9, !5, i64 400}
!36 = !{!9, !5, i64 616}
!37 = !{!9, !5, i64 632}
!38 = !{!9, !5, i64 192}
!39 = !{!9, !5, i64 200}
!40 = !{!9, !5, i64 208}
!41 = !{!9, !11, i64 216}
!42 = !{!9, !11, i64 220}
!43 = !{!9, !5, i64 696}
!44 = !{!9, !5, i64 712}
!45 = !{!9, !11, i64 704}
!46 = !{!9, !11, i64 720}
!47 = !{!9, !11, i64 80}
!48 = !{!9, !5, i64 72}
!49 = distinct !{!49, !31}
!50 = !{!9, !11, i64 84}
!51 = !{!9, !11, i64 344}
!52 = !{!9, !11, i64 372}
!53 = !{!9, !11, i64 352}
!54 = !{!9, !11, i64 356}
!55 = !{!9, !11, i64 360}
!56 = !{!9, !11, i64 364}
!57 = !{!9, !11, i64 368}
!58 = !{!9, !11, i64 348}
!59 = !{!9, !11, i64 376}
!60 = !{!9, !11, i64 648}
!61 = !{!9, !11, i64 688}
!62 = !{!9, !11, i64 724}
!63 = !{!9, !5, i64 88}
!64 = !{!9, !11, i64 16}
!65 = !{!9, !11, i64 32}
!66 = !{!9, !11, i64 48}
!67 = !{!9, !11, i64 392}
!68 = !{!21, !11, i64 24}
!69 = !{!21, !5, i64 16}
!70 = !{!71, !11, i64 44}
!71 = !{!"s_Repo", !5, i64 0, !11, i64 8, !5, i64 16, !5, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !5, i64 56, !11, i64 64, !11, i64 68, !5, i64 72, !5, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116}
!72 = !{!71, !5, i64 56}
!73 = !{!74, !11, i64 0}
!74 = !{!"s_Reldep", !11, i64 0, !11, i64 4, !11, i64 8}
!75 = distinct !{!75, !31}
!76 = distinct !{!76, !31}
!77 = distinct !{!77, !31}
!78 = distinct !{!78, !31}
!79 = distinct !{!79, !31}
!80 = distinct !{!80, !31}
!81 = distinct !{!81, !31}
!82 = !{!9, !11, i64 652}
!83 = !{!9, !5, i64 24}
!84 = !{!9, !5, i64 8}
!85 = !{!6, !6, i64 0}
!86 = distinct !{!86, !31}
!87 = !{!9, !11, i64 664}
!88 = !{!9, !5, i64 256}
!89 = !{!9, !5, i64 264}
!90 = !{!9, !5, i64 224}
!91 = !{!92, !5, i64 0}
!92 = !{!"s_Map", !5, i64 0, !11, i64 8}
!93 = distinct !{!93, !31}
!94 = distinct !{!94, !31}
!95 = distinct !{!95, !31}
!96 = distinct !{!96, !31}
!97 = distinct !{!97, !31}
!98 = distinct !{!98, !31}
!99 = distinct !{!99, !31}
!100 = !{!12, !5, i64 16}
!101 = !{!12, !5, i64 0}
!102 = !{!12, !11, i64 8}
!103 = !{!12, !11, i64 24}
!104 = !{!74, !11, i64 4}
!105 = !{!74, !11, i64 8}
!106 = !{!9, !5, i64 656}
!107 = distinct !{!107, !31}
!108 = distinct !{!108, !31}
!109 = distinct !{!109, !31}
!110 = distinct !{!110, !31}
!111 = distinct !{!111, !31}
!112 = distinct !{!112, !31}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31}
!116 = !{!9, !5, i64 232}
!117 = !{!9, !5, i64 240}
!118 = distinct !{!118, !31}
!119 = distinct !{!119, !31}
!120 = distinct !{!120, !31}
!121 = distinct !{!121, !31}
!122 = distinct !{!122, !31}
!123 = distinct !{!123, !31}
!124 = distinct !{!124, !31}
!125 = distinct !{!125, !31}
!126 = distinct !{!126, !31}
!127 = distinct !{!127, !31}
!128 = !{!129, !11, i64 152}
!129 = !{!"s_Dataiterator", !11, i64 0, !11, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !130, i64 72, !131, i64 112, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !6, i64 160, !11, i64 176, !11, i64 180, !6, i64 184, !11, i64 352, !5, i64 360, !11, i64 368, !11, i64 372, !11, i64 376, !5, i64 384, !11, i64 392, !5, i64 400, !5, i64 408}
!130 = !{!"s_KeyValue", !11, i64 0, !5, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !5, i64 32}
!131 = !{!"s_Datamatcher", !11, i64 0, !5, i64 8, !5, i64 16, !11, i64 24}
!132 = distinct !{!132, !31}
!133 = distinct !{!133, !31}
!134 = distinct !{!134, !31}
!135 = distinct !{!135, !31}
!136 = distinct !{!136, !31}
!137 = !{!92, !11, i64 8}
!138 = distinct !{!138, !31}
!139 = distinct !{!139, !31}
!140 = distinct !{!140, !31}
!141 = distinct !{!141, !31}
!142 = distinct !{!142, !31}
!143 = distinct !{!143, !31}
!144 = distinct !{!144, !31}
!145 = !{!9, !11, i64 624}
!146 = !{!9, !5, i64 272}
!147 = !{!9, !5, i64 280}
!148 = distinct !{!148, !31}
!149 = !{!9, !11, i64 408}
!150 = distinct !{!150, !31}
!151 = distinct !{!151, !31}
!152 = !{!9, !11, i64 608}
!153 = !{!9, !5, i64 288}
!154 = !{!9, !11, i64 300}
!155 = !{!9, !11, i64 296}
!156 = !{!157, !157, i64 0}
!157 = !{!"long long", !6, i64 0}
!158 = !{!9, !5, i64 384}
!159 = !{!21, !11, i64 32}
!160 = distinct !{!160, !31}
!161 = distinct !{!161, !31}
!162 = distinct !{!162, !31}
!163 = !{!9, !5, i64 640}
!164 = !{!9, !11, i64 144}
!165 = distinct !{!165, !31}
!166 = distinct !{!166, !31}
!167 = distinct !{!167, !31}

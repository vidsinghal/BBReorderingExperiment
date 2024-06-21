; ModuleID = 'samples/235.bc'
source_filename = "/local-ssd/sio-ydswxtg7f4vm7ydz5gp6uoebcsl5ltpu-build/aidengro/spack-stage-sio-0.1-ydswxtg7f4vm7ydz5gp6uoebcsl5ltpu/spack-src/zlib/infback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.code = type { i8, i8, i16 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"1.2.8\00", align 1
@inflateBack.order = internal constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@fixedtables.lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 16
@fixedtables.distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @inflateBackInit_(ptr noundef %strm, i32 noundef %windowBits, ptr noundef %window, ptr noundef %version, i32 noundef %stream_size) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %windowBits.addr = alloca i32, align 4
  %window.addr = alloca ptr, align 8
  %version.addr = alloca ptr, align 8
  %stream_size.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8, !tbaa !4
  store i32 %windowBits, ptr %windowBits.addr, align 4, !tbaa !8
  store ptr %window, ptr %window.addr, align 8, !tbaa !4
  store ptr %version, ptr %version.addr, align 8, !tbaa !4
  store i32 %stream_size, ptr %stream_size.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #4
  %0 = load ptr, ptr %version.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %version.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = sext i8 %2 to i32
  %3 = load i8, ptr @.str, align 1, !tbaa !10
  %conv1 = sext i8 %3 to i32
  %cmp2 = icmp ne i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %stream_size.addr, align 4, !tbaa !8
  %cmp5 = icmp ne i32 %4, 112
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 -6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %cmp7 = icmp eq ptr %5, null
  br i1 %cmp7, label %if.then18, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %6 = load ptr, ptr %window.addr, align 8, !tbaa !4
  %cmp10 = icmp eq ptr %6, null
  br i1 %cmp10, label %if.then18, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %7 = load i32, ptr %windowBits.addr, align 4, !tbaa !8
  %cmp13 = icmp slt i32 %7, 8
  br i1 %cmp13, label %if.then18, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %8 = load i32, ptr %windowBits.addr, align 4, !tbaa !8
  %cmp16 = icmp sgt i32 %8, 15
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %if.end
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false15
  %9 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 6
  store ptr null, ptr %msg, align 8, !tbaa !11
  %10 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %zalloc, align 8, !tbaa !14
  %cmp20 = icmp eq ptr %11, null
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  %12 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %zalloc23 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 8
  store ptr @zcalloc, ptr %zalloc23, align 8, !tbaa !14
  %13 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 10
  store ptr null, ptr %opaque, align 8, !tbaa !15
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19
  %14 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 9
  %15 = load ptr, ptr %zfree, align 8, !tbaa !16
  %cmp25 = icmp eq ptr %15, null
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %16 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %zfree28 = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 9
  store ptr @zcfree, ptr %zfree28, align 8, !tbaa !16
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24
  %17 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %zalloc30 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %zalloc30, align 8, !tbaa !14
  %19 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %opaque31 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 10
  %20 = load ptr, ptr %opaque31, align 8, !tbaa !15
  %call = call ptr %18(ptr noundef %20, i32 noundef 1, i32 noundef 7152)
  store ptr %call, ptr %state, align 8, !tbaa !4
  %21 = load ptr, ptr %state, align 8, !tbaa !4
  %cmp32 = icmp eq ptr %21, null
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end29
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %22 = load ptr, ptr %state, align 8, !tbaa !4
  %23 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %state36 = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 7
  store ptr %22, ptr %state36, align 8, !tbaa !17
  %24 = load ptr, ptr %state, align 8, !tbaa !4
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 5
  store i32 32768, ptr %dmax, align 4, !tbaa !18
  %25 = load i32, ptr %windowBits.addr, align 4, !tbaa !8
  %26 = load ptr, ptr %state, align 8, !tbaa !4
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 9
  store i32 %25, ptr %wbits, align 8, !tbaa !20
  %27 = load i32, ptr %windowBits.addr, align 4, !tbaa !8
  %shl = shl i32 1, %27
  %28 = load ptr, ptr %state, align 8, !tbaa !4
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %28, i32 0, i32 10
  store i32 %shl, ptr %wsize, align 4, !tbaa !21
  %29 = load ptr, ptr %window.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %state, align 8, !tbaa !4
  %window37 = getelementptr inbounds %struct.inflate_state, ptr %30, i32 0, i32 13
  store ptr %29, ptr %window37, align 8, !tbaa !22
  %31 = load ptr, ptr %state, align 8, !tbaa !4
  %wnext = getelementptr inbounds %struct.inflate_state, ptr %31, i32 0, i32 12
  store i32 0, ptr %wnext, align 4, !tbaa !23
  %32 = load ptr, ptr %state, align 8, !tbaa !4
  %whave = getelementptr inbounds %struct.inflate_state, ptr %32, i32 0, i32 11
  store i32 0, ptr %whave, align 8, !tbaa !24
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then34, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #4
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #2

declare void @zcfree(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden i32 @inflateBack(ptr noundef %strm, ptr noundef %in, ptr noundef %in_desc, ptr noundef %out, ptr noundef %out_desc) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %in_desc.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %out_desc.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %next = alloca ptr, align 8
  %put = alloca ptr, align 8
  %have = alloca i32, align 4
  %left = alloca i32, align 4
  %hold = alloca i64, align 8
  %bits = alloca i32, align 4
  %copy = alloca i32, align 4
  %from = alloca ptr, align 8
  %here = alloca %struct.code, align 2
  %last = alloca %struct.code, align 2
  %len = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strm, ptr %strm.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store ptr %in_desc, ptr %in_desc.addr, align 8, !tbaa !4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %out_desc, ptr %out_desc.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %put) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %have) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hold) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %copy) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %from) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %here) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #4
  %0 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state1, align 8, !tbaa !17
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %state3 = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %state3, align 8, !tbaa !17
  store ptr %4, ptr %state, align 8, !tbaa !4
  %5 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 6
  store ptr null, ptr %msg, align 8, !tbaa !11
  %6 = load ptr, ptr %state, align 8, !tbaa !4
  %mode = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 0
  store i32 11, ptr %mode, align 8, !tbaa !25
  %7 = load ptr, ptr %state, align 8, !tbaa !4
  %last4 = getelementptr inbounds %struct.inflate_state, ptr %7, i32 0, i32 1
  store i32 0, ptr %last4, align 4, !tbaa !26
  %8 = load ptr, ptr %state, align 8, !tbaa !4
  %whave = getelementptr inbounds %struct.inflate_state, ptr %8, i32 0, i32 11
  store i32 0, ptr %whave, align 8, !tbaa !24
  %9 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %next_in, align 8, !tbaa !27
  store ptr %10, ptr %next, align 8, !tbaa !4
  %11 = load ptr, ptr %next, align 8, !tbaa !4
  %cmp5 = icmp ne ptr %11, null
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %12 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %avail_in, align 8, !tbaa !28
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %have, align 4, !tbaa !8
  store i64 0, ptr %hold, align 8, !tbaa !29
  store i32 0, ptr %bits, align 4, !tbaa !8
  %14 = load ptr, ptr %state, align 8, !tbaa !4
  %window = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 13
  %15 = load ptr, ptr %window, align 8, !tbaa !22
  store ptr %15, ptr %put, align 8, !tbaa !4
  %16 = load ptr, ptr %state, align 8, !tbaa !4
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %16, i32 0, i32 10
  %17 = load i32, ptr %wsize, align 4, !tbaa !21
  store i32 %17, ptr %left, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog1128, %cond.end
  %18 = load ptr, ptr %state, align 8, !tbaa !4
  %mode6 = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %mode6, align 8, !tbaa !25
  switch i32 %19, label %sw.default [
    i32 11, label %sw.bb
    i32 13, label %sw.bb54
    i32 16, label %sw.bb155
    i32 20, label %sw.bb617
    i32 28, label %sw.bb1114
    i32 29, label %sw.bb1127
  ]

sw.bb:                                            ; preds = %for.cond
  %20 = load ptr, ptr %state, align 8, !tbaa !4
  %last7 = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %last7, align 4, !tbaa !26
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then8, label %if.end11

if.then8:                                         ; preds = %sw.bb
  br label %do.body

do.body:                                          ; preds = %if.then8
  %22 = load i32, ptr %bits, align 4, !tbaa !8
  %and = and i32 %22, 7
  %23 = load i64, ptr %hold, align 8, !tbaa !29
  %sh_prom = zext i32 %and to i64
  %shr = lshr i64 %23, %sh_prom
  store i64 %shr, ptr %hold, align 8, !tbaa !29
  %24 = load i32, ptr %bits, align 4, !tbaa !8
  %and9 = and i32 %24, 7
  %25 = load i32, ptr %bits, align 4, !tbaa !8
  %sub = sub i32 %25, %and9
  store i32 %sub, ptr %bits, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load ptr, ptr %state, align 8, !tbaa !4
  %mode10 = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 0
  store i32 28, ptr %mode10, align 8, !tbaa !25
  br label %sw.epilog1128

if.end11:                                         ; preds = %sw.bb
  br label %do.body12

do.body12:                                        ; preds = %if.end11
  br label %while.cond

while.cond:                                       ; preds = %do.end27, %do.body12
  %27 = load i32, ptr %bits, align 4, !tbaa !8
  %cmp13 = icmp ult i32 %27, 3
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body14

do.body14:                                        ; preds = %while.body
  br label %do.body15

do.body15:                                        ; preds = %do.body14
  %28 = load i32, ptr %have, align 4, !tbaa !8
  %cmp16 = icmp eq i32 %28, 0
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %do.body15
  %29 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call = call i32 %29(ptr noundef %30, ptr noundef %next)
  store i32 %call, ptr %have, align 4, !tbaa !8
  %31 = load i32, ptr %have, align 4, !tbaa !8
  %cmp18 = icmp eq i32 %31, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end20:                                         ; preds = %if.then17
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %do.body15
  br label %do.cond22

do.cond22:                                        ; preds = %if.end21
  br label %do.end23

do.end23:                                         ; preds = %do.cond22
  %32 = load i32, ptr %have, align 4, !tbaa !8
  %dec = add i32 %32, -1
  store i32 %dec, ptr %have, align 4, !tbaa !8
  %33 = load ptr, ptr %next, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr, ptr %next, align 8, !tbaa !4
  %34 = load i8, ptr %33, align 1, !tbaa !10
  %conv = zext i8 %34 to i64
  %35 = load i32, ptr %bits, align 4, !tbaa !8
  %sh_prom24 = zext i32 %35 to i64
  %shl = shl i64 %conv, %sh_prom24
  %36 = load i64, ptr %hold, align 8, !tbaa !29
  %add = add i64 %36, %shl
  store i64 %add, ptr %hold, align 8, !tbaa !29
  %37 = load i32, ptr %bits, align 4, !tbaa !8
  %add25 = add i32 %37, 8
  store i32 %add25, ptr %bits, align 4, !tbaa !8
  br label %do.cond26

do.cond26:                                        ; preds = %do.end23
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  br label %do.cond28

do.cond28:                                        ; preds = %while.end
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  %38 = load i64, ptr %hold, align 8, !tbaa !29
  %conv30 = trunc i64 %38 to i32
  %and31 = and i32 %conv30, 1
  %39 = load ptr, ptr %state, align 8, !tbaa !4
  %last32 = getelementptr inbounds %struct.inflate_state, ptr %39, i32 0, i32 1
  store i32 %and31, ptr %last32, align 4, !tbaa !26
  br label %do.body33

do.body33:                                        ; preds = %do.end29
  %40 = load i64, ptr %hold, align 8, !tbaa !29
  %shr34 = lshr i64 %40, 1
  store i64 %shr34, ptr %hold, align 8, !tbaa !29
  %41 = load i32, ptr %bits, align 4, !tbaa !8
  %sub35 = sub i32 %41, 1
  store i32 %sub35, ptr %bits, align 4, !tbaa !8
  br label %do.cond36

do.cond36:                                        ; preds = %do.body33
  br label %do.end37

do.end37:                                         ; preds = %do.cond36
  %42 = load i64, ptr %hold, align 8, !tbaa !29
  %conv38 = trunc i64 %42 to i32
  %and39 = and i32 %conv38, 3
  switch i32 %and39, label %sw.epilog [
    i32 0, label %sw.bb40
    i32 1, label %sw.bb42
    i32 2, label %sw.bb44
    i32 3, label %sw.bb46
  ]

sw.bb40:                                          ; preds = %do.end37
  %43 = load ptr, ptr %state, align 8, !tbaa !4
  %mode41 = getelementptr inbounds %struct.inflate_state, ptr %43, i32 0, i32 0
  store i32 13, ptr %mode41, align 8, !tbaa !25
  br label %sw.epilog

sw.bb42:                                          ; preds = %do.end37
  %44 = load ptr, ptr %state, align 8, !tbaa !4
  call void @fixedtables(ptr noundef %44)
  %45 = load ptr, ptr %state, align 8, !tbaa !4
  %mode43 = getelementptr inbounds %struct.inflate_state, ptr %45, i32 0, i32 0
  store i32 20, ptr %mode43, align 8, !tbaa !25
  br label %sw.epilog

sw.bb44:                                          ; preds = %do.end37
  %46 = load ptr, ptr %state, align 8, !tbaa !4
  %mode45 = getelementptr inbounds %struct.inflate_state, ptr %46, i32 0, i32 0
  store i32 16, ptr %mode45, align 8, !tbaa !25
  br label %sw.epilog

sw.bb46:                                          ; preds = %do.end37
  %47 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %msg47 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 6
  store ptr @.str.1, ptr %msg47, align 8, !tbaa !11
  %48 = load ptr, ptr %state, align 8, !tbaa !4
  %mode48 = getelementptr inbounds %struct.inflate_state, ptr %48, i32 0, i32 0
  store i32 29, ptr %mode48, align 8, !tbaa !25
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb46, %do.end37, %sw.bb44, %sw.bb42, %sw.bb40
  br label %do.body49

do.body49:                                        ; preds = %sw.epilog
  %49 = load i64, ptr %hold, align 8, !tbaa !29
  %shr50 = lshr i64 %49, 2
  store i64 %shr50, ptr %hold, align 8, !tbaa !29
  %50 = load i32, ptr %bits, align 4, !tbaa !8
  %sub51 = sub i32 %50, 2
  store i32 %sub51, ptr %bits, align 4, !tbaa !8
  br label %do.cond52

do.cond52:                                        ; preds = %do.body49
  br label %do.end53

do.end53:                                         ; preds = %do.cond52
  br label %sw.epilog1128

sw.bb54:                                          ; preds = %for.cond
  br label %do.body55

do.body55:                                        ; preds = %sw.bb54
  %51 = load i32, ptr %bits, align 4, !tbaa !8
  %and56 = and i32 %51, 7
  %52 = load i64, ptr %hold, align 8, !tbaa !29
  %sh_prom57 = zext i32 %and56 to i64
  %shr58 = lshr i64 %52, %sh_prom57
  store i64 %shr58, ptr %hold, align 8, !tbaa !29
  %53 = load i32, ptr %bits, align 4, !tbaa !8
  %and59 = and i32 %53, 7
  %54 = load i32, ptr %bits, align 4, !tbaa !8
  %sub60 = sub i32 %54, %and59
  store i32 %sub60, ptr %bits, align 4, !tbaa !8
  br label %do.cond61

do.cond61:                                        ; preds = %do.body55
  br label %do.end62

do.end62:                                         ; preds = %do.cond61
  br label %do.body63

do.body63:                                        ; preds = %do.end62
  br label %while.cond64

while.cond64:                                     ; preds = %do.end89, %do.body63
  %55 = load i32, ptr %bits, align 4, !tbaa !8
  %cmp65 = icmp ult i32 %55, 32
  br i1 %cmp65, label %while.body67, label %while.end90

while.body67:                                     ; preds = %while.cond64
  br label %do.body68

do.body68:                                        ; preds = %while.body67
  br label %do.body69

do.body69:                                        ; preds = %do.body68
  %56 = load i32, ptr %have, align 4, !tbaa !8
  %cmp70 = icmp eq i32 %56, 0
  br i1 %cmp70, label %if.then72, label %if.end78

if.then72:                                        ; preds = %do.body69
  %57 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %58 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call73 = call i32 %57(ptr noundef %58, ptr noundef %next)
  store i32 %call73, ptr %have, align 4, !tbaa !8
  %59 = load i32, ptr %have, align 4, !tbaa !8
  %cmp74 = icmp eq i32 %59, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.then72
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end77:                                         ; preds = %if.then72
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %do.body69
  br label %do.cond79

do.cond79:                                        ; preds = %if.end78
  br label %do.end80

do.end80:                                         ; preds = %do.cond79
  %60 = load i32, ptr %have, align 4, !tbaa !8
  %dec81 = add i32 %60, -1
  store i32 %dec81, ptr %have, align 4, !tbaa !8
  %61 = load ptr, ptr %next, align 8, !tbaa !4
  %incdec.ptr82 = getelementptr inbounds i8, ptr %61, i32 1
  store ptr %incdec.ptr82, ptr %next, align 8, !tbaa !4
  %62 = load i8, ptr %61, align 1, !tbaa !10
  %conv83 = zext i8 %62 to i64
  %63 = load i32, ptr %bits, align 4, !tbaa !8
  %sh_prom84 = zext i32 %63 to i64
  %shl85 = shl i64 %conv83, %sh_prom84
  %64 = load i64, ptr %hold, align 8, !tbaa !29
  %add86 = add i64 %64, %shl85
  store i64 %add86, ptr %hold, align 8, !tbaa !29
  %65 = load i32, ptr %bits, align 4, !tbaa !8
  %add87 = add i32 %65, 8
  store i32 %add87, ptr %bits, align 4, !tbaa !8
  br label %do.cond88

do.cond88:                                        ; preds = %do.end80
  br label %do.end89

do.end89:                                         ; preds = %do.cond88
  br label %while.cond64, !llvm.loop !32

while.end90:                                      ; preds = %while.cond64
  br label %do.cond91

do.cond91:                                        ; preds = %while.end90
  br label %do.end92

do.end92:                                         ; preds = %do.cond91
  %66 = load i64, ptr %hold, align 8, !tbaa !29
  %and93 = and i64 %66, 65535
  %67 = load i64, ptr %hold, align 8, !tbaa !29
  %shr94 = lshr i64 %67, 16
  %xor = xor i64 %shr94, 65535
  %cmp95 = icmp ne i64 %and93, %xor
  br i1 %cmp95, label %if.then97, label %if.end100

if.then97:                                        ; preds = %do.end92
  %68 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %msg98 = getelementptr inbounds %struct.z_stream_s, ptr %68, i32 0, i32 6
  store ptr @.str.2, ptr %msg98, align 8, !tbaa !11
  %69 = load ptr, ptr %state, align 8, !tbaa !4
  %mode99 = getelementptr inbounds %struct.inflate_state, ptr %69, i32 0, i32 0
  store i32 29, ptr %mode99, align 8, !tbaa !25
  br label %sw.epilog1128

if.end100:                                        ; preds = %do.end92
  %70 = load i64, ptr %hold, align 8, !tbaa !29
  %conv101 = trunc i64 %70 to i32
  %and102 = and i32 %conv101, 65535
  %71 = load ptr, ptr %state, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.inflate_state, ptr %71, i32 0, i32 16
  store i32 %and102, ptr %length, align 4, !tbaa !33
  br label %do.body103

do.body103:                                       ; preds = %if.end100
  store i64 0, ptr %hold, align 8, !tbaa !29
  store i32 0, ptr %bits, align 4, !tbaa !8
  br label %do.cond104

do.cond104:                                       ; preds = %do.body103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  br label %while.cond106

while.cond106:                                    ; preds = %if.end145, %do.end105
  %72 = load ptr, ptr %state, align 8, !tbaa !4
  %length107 = getelementptr inbounds %struct.inflate_state, ptr %72, i32 0, i32 16
  %73 = load i32, ptr %length107, align 4, !tbaa !33
  %cmp108 = icmp ne i32 %73, 0
  br i1 %cmp108, label %while.body110, label %while.end153

while.body110:                                    ; preds = %while.cond106
  %74 = load ptr, ptr %state, align 8, !tbaa !4
  %length111 = getelementptr inbounds %struct.inflate_state, ptr %74, i32 0, i32 16
  %75 = load i32, ptr %length111, align 4, !tbaa !33
  store i32 %75, ptr %copy, align 4, !tbaa !8
  br label %do.body112

do.body112:                                       ; preds = %while.body110
  %76 = load i32, ptr %have, align 4, !tbaa !8
  %cmp113 = icmp eq i32 %76, 0
  br i1 %cmp113, label %if.then115, label %if.end121

if.then115:                                       ; preds = %do.body112
  %77 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %78 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call116 = call i32 %77(ptr noundef %78, ptr noundef %next)
  store i32 %call116, ptr %have, align 4, !tbaa !8
  %79 = load i32, ptr %have, align 4, !tbaa !8
  %cmp117 = icmp eq i32 %79, 0
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.then115
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end120:                                        ; preds = %if.then115
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %do.body112
  br label %do.cond122

do.cond122:                                       ; preds = %if.end121
  br label %do.end123

do.end123:                                        ; preds = %do.cond122
  br label %do.body124

do.body124:                                       ; preds = %do.end123
  %80 = load i32, ptr %left, align 4, !tbaa !8
  %cmp125 = icmp eq i32 %80, 0
  br i1 %cmp125, label %if.then127, label %if.end135

if.then127:                                       ; preds = %do.body124
  %81 = load ptr, ptr %state, align 8, !tbaa !4
  %window128 = getelementptr inbounds %struct.inflate_state, ptr %81, i32 0, i32 13
  %82 = load ptr, ptr %window128, align 8, !tbaa !22
  store ptr %82, ptr %put, align 8, !tbaa !4
  %83 = load ptr, ptr %state, align 8, !tbaa !4
  %wsize129 = getelementptr inbounds %struct.inflate_state, ptr %83, i32 0, i32 10
  %84 = load i32, ptr %wsize129, align 4, !tbaa !21
  store i32 %84, ptr %left, align 4, !tbaa !8
  %85 = load i32, ptr %left, align 4, !tbaa !8
  %86 = load ptr, ptr %state, align 8, !tbaa !4
  %whave130 = getelementptr inbounds %struct.inflate_state, ptr %86, i32 0, i32 11
  store i32 %85, ptr %whave130, align 8, !tbaa !24
  %87 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %88 = load ptr, ptr %out_desc.addr, align 8, !tbaa !4
  %89 = load ptr, ptr %put, align 8, !tbaa !4
  %90 = load i32, ptr %left, align 4, !tbaa !8
  %call131 = call i32 %87(ptr noundef %88, ptr noundef %89, i32 noundef %90)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.then127
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end134:                                        ; preds = %if.then127
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %do.body124
  br label %do.cond136

do.cond136:                                       ; preds = %if.end135
  br label %do.end137

do.end137:                                        ; preds = %do.cond136
  %91 = load i32, ptr %copy, align 4, !tbaa !8
  %92 = load i32, ptr %have, align 4, !tbaa !8
  %cmp138 = icmp ugt i32 %91, %92
  br i1 %cmp138, label %if.then140, label %if.end141

if.then140:                                       ; preds = %do.end137
  %93 = load i32, ptr %have, align 4, !tbaa !8
  store i32 %93, ptr %copy, align 4, !tbaa !8
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %do.end137
  %94 = load i32, ptr %copy, align 4, !tbaa !8
  %95 = load i32, ptr %left, align 4, !tbaa !8
  %cmp142 = icmp ugt i32 %94, %95
  br i1 %cmp142, label %if.then144, label %if.end145

if.then144:                                       ; preds = %if.end141
  %96 = load i32, ptr %left, align 4, !tbaa !8
  store i32 %96, ptr %copy, align 4, !tbaa !8
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %if.end141
  %97 = load ptr, ptr %put, align 8, !tbaa !4
  %98 = load ptr, ptr %next, align 8, !tbaa !4
  %99 = load i32, ptr %copy, align 4, !tbaa !8
  %conv146 = zext i32 %99 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %97, ptr align 1 %98, i64 %conv146, i1 false)
  %100 = load i32, ptr %copy, align 4, !tbaa !8
  %101 = load i32, ptr %have, align 4, !tbaa !8
  %sub147 = sub i32 %101, %100
  store i32 %sub147, ptr %have, align 4, !tbaa !8
  %102 = load i32, ptr %copy, align 4, !tbaa !8
  %103 = load ptr, ptr %next, align 8, !tbaa !4
  %idx.ext = zext i32 %102 to i64
  %add.ptr = getelementptr inbounds i8, ptr %103, i64 %idx.ext
  store ptr %add.ptr, ptr %next, align 8, !tbaa !4
  %104 = load i32, ptr %copy, align 4, !tbaa !8
  %105 = load i32, ptr %left, align 4, !tbaa !8
  %sub148 = sub i32 %105, %104
  store i32 %sub148, ptr %left, align 4, !tbaa !8
  %106 = load i32, ptr %copy, align 4, !tbaa !8
  %107 = load ptr, ptr %put, align 8, !tbaa !4
  %idx.ext149 = zext i32 %106 to i64
  %add.ptr150 = getelementptr inbounds i8, ptr %107, i64 %idx.ext149
  store ptr %add.ptr150, ptr %put, align 8, !tbaa !4
  %108 = load i32, ptr %copy, align 4, !tbaa !8
  %109 = load ptr, ptr %state, align 8, !tbaa !4
  %length151 = getelementptr inbounds %struct.inflate_state, ptr %109, i32 0, i32 16
  %110 = load i32, ptr %length151, align 4, !tbaa !33
  %sub152 = sub i32 %110, %108
  store i32 %sub152, ptr %length151, align 4, !tbaa !33
  br label %while.cond106, !llvm.loop !34

while.end153:                                     ; preds = %while.cond106
  %111 = load ptr, ptr %state, align 8, !tbaa !4
  %mode154 = getelementptr inbounds %struct.inflate_state, ptr %111, i32 0, i32 0
  store i32 11, ptr %mode154, align 8, !tbaa !25
  br label %sw.epilog1128

sw.bb155:                                         ; preds = %for.cond
  br label %do.body156

do.body156:                                       ; preds = %sw.bb155
  br label %while.cond157

while.cond157:                                    ; preds = %do.end182, %do.body156
  %112 = load i32, ptr %bits, align 4, !tbaa !8
  %cmp158 = icmp ult i32 %112, 14
  br i1 %cmp158, label %while.body160, label %while.end183

while.body160:                                    ; preds = %while.cond157
  br label %do.body161

do.body161:                                       ; preds = %while.body160
  br label %do.body162

do.body162:                                       ; preds = %do.body161
  %113 = load i32, ptr %have, align 4, !tbaa !8
  %cmp163 = icmp eq i32 %113, 0
  br i1 %cmp163, label %if.then165, label %if.end171

if.then165:                                       ; preds = %do.body162
  %114 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %115 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call166 = call i32 %114(ptr noundef %115, ptr noundef %next)
  store i32 %call166, ptr %have, align 4, !tbaa !8
  %116 = load i32, ptr %have, align 4, !tbaa !8
  %cmp167 = icmp eq i32 %116, 0
  br i1 %cmp167, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.then165
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end170:                                        ; preds = %if.then165
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %do.body162
  br label %do.cond172

do.cond172:                                       ; preds = %if.end171
  br label %do.end173

do.end173:                                        ; preds = %do.cond172
  %117 = load i32, ptr %have, align 4, !tbaa !8
  %dec174 = add i32 %117, -1
  store i32 %dec174, ptr %have, align 4, !tbaa !8
  %118 = load ptr, ptr %next, align 8, !tbaa !4
  %incdec.ptr175 = getelementptr inbounds i8, ptr %118, i32 1
  store ptr %incdec.ptr175, ptr %next, align 8, !tbaa !4
  %119 = load i8, ptr %118, align 1, !tbaa !10
  %conv176 = zext i8 %119 to i64
  %120 = load i32, ptr %bits, align 4, !tbaa !8
  %sh_prom177 = zext i32 %120 to i64
  %shl178 = shl i64 %conv176, %sh_prom177
  %121 = load i64, ptr %hold, align 8, !tbaa !29
  %add179 = add i64 %121, %shl178
  store i64 %add179, ptr %hold, align 8, !tbaa !29
  %122 = load i32, ptr %bits, align 4, !tbaa !8
  %add180 = add i32 %122, 8
  store i32 %add180, ptr %bits, align 4, !tbaa !8
  br label %do.cond181

do.cond181:                                       ; preds = %do.end173
  br label %do.end182

do.end182:                                        ; preds = %do.cond181
  br label %while.cond157, !llvm.loop !35

while.end183:                                     ; preds = %while.cond157
  br label %do.cond184

do.cond184:                                       ; preds = %while.end183
  br label %do.end185

do.end185:                                        ; preds = %do.cond184
  %123 = load i64, ptr %hold, align 8, !tbaa !29
  %conv186 = trunc i64 %123 to i32
  %and187 = and i32 %conv186, 31
  %add188 = add i32 %and187, 257
  %124 = load ptr, ptr %state, align 8, !tbaa !4
  %nlen = getelementptr inbounds %struct.inflate_state, ptr %124, i32 0, i32 24
  store i32 %add188, ptr %nlen, align 4, !tbaa !36
  br label %do.body189

do.body189:                                       ; preds = %do.end185
  %125 = load i64, ptr %hold, align 8, !tbaa !29
  %shr190 = lshr i64 %125, 5
  store i64 %shr190, ptr %hold, align 8, !tbaa !29
  %126 = load i32, ptr %bits, align 4, !tbaa !8
  %sub191 = sub i32 %126, 5
  store i32 %sub191, ptr %bits, align 4, !tbaa !8
  br label %do.cond192

do.cond192:                                       ; preds = %do.body189
  br label %do.end193

do.end193:                                        ; preds = %do.cond192
  %127 = load i64, ptr %hold, align 8, !tbaa !29
  %conv194 = trunc i64 %127 to i32
  %and195 = and i32 %conv194, 31
  %add196 = add i32 %and195, 1
  %128 = load ptr, ptr %state, align 8, !tbaa !4
  %ndist = getelementptr inbounds %struct.inflate_state, ptr %128, i32 0, i32 25
  store i32 %add196, ptr %ndist, align 8, !tbaa !37
  br label %do.body197

do.body197:                                       ; preds = %do.end193
  %129 = load i64, ptr %hold, align 8, !tbaa !29
  %shr198 = lshr i64 %129, 5
  store i64 %shr198, ptr %hold, align 8, !tbaa !29
  %130 = load i32, ptr %bits, align 4, !tbaa !8
  %sub199 = sub i32 %130, 5
  store i32 %sub199, ptr %bits, align 4, !tbaa !8
  br label %do.cond200

do.cond200:                                       ; preds = %do.body197
  br label %do.end201

do.end201:                                        ; preds = %do.cond200
  %131 = load i64, ptr %hold, align 8, !tbaa !29
  %conv202 = trunc i64 %131 to i32
  %and203 = and i32 %conv202, 15
  %add204 = add i32 %and203, 4
  %132 = load ptr, ptr %state, align 8, !tbaa !4
  %ncode = getelementptr inbounds %struct.inflate_state, ptr %132, i32 0, i32 23
  store i32 %add204, ptr %ncode, align 8, !tbaa !38
  br label %do.body205

do.body205:                                       ; preds = %do.end201
  %133 = load i64, ptr %hold, align 8, !tbaa !29
  %shr206 = lshr i64 %133, 4
  store i64 %shr206, ptr %hold, align 8, !tbaa !29
  %134 = load i32, ptr %bits, align 4, !tbaa !8
  %sub207 = sub i32 %134, 4
  store i32 %sub207, ptr %bits, align 4, !tbaa !8
  br label %do.cond208

do.cond208:                                       ; preds = %do.body205
  br label %do.end209

do.end209:                                        ; preds = %do.cond208
  %135 = load ptr, ptr %state, align 8, !tbaa !4
  %nlen210 = getelementptr inbounds %struct.inflate_state, ptr %135, i32 0, i32 24
  %136 = load i32, ptr %nlen210, align 4, !tbaa !36
  %cmp211 = icmp ugt i32 %136, 286
  br i1 %cmp211, label %if.then217, label %lor.lhs.false213

lor.lhs.false213:                                 ; preds = %do.end209
  %137 = load ptr, ptr %state, align 8, !tbaa !4
  %ndist214 = getelementptr inbounds %struct.inflate_state, ptr %137, i32 0, i32 25
  %138 = load i32, ptr %ndist214, align 8, !tbaa !37
  %cmp215 = icmp ugt i32 %138, 30
  br i1 %cmp215, label %if.then217, label %if.end220

if.then217:                                       ; preds = %lor.lhs.false213, %do.end209
  %139 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %msg218 = getelementptr inbounds %struct.z_stream_s, ptr %139, i32 0, i32 6
  store ptr @.str.3, ptr %msg218, align 8, !tbaa !11
  %140 = load ptr, ptr %state, align 8, !tbaa !4
  %mode219 = getelementptr inbounds %struct.inflate_state, ptr %140, i32 0, i32 0
  store i32 29, ptr %mode219, align 8, !tbaa !25
  br label %sw.epilog1128

if.end220:                                        ; preds = %lor.lhs.false213
  %141 = load ptr, ptr %state, align 8, !tbaa !4
  %have221 = getelementptr inbounds %struct.inflate_state, ptr %141, i32 0, i32 26
  store i32 0, ptr %have221, align 4, !tbaa !39
  br label %while.cond222

while.cond222:                                    ; preds = %do.end268, %if.end220
  %142 = load ptr, ptr %state, align 8, !tbaa !4
  %have223 = getelementptr inbounds %struct.inflate_state, ptr %142, i32 0, i32 26
  %143 = load i32, ptr %have223, align 4, !tbaa !39
  %144 = load ptr, ptr %state, align 8, !tbaa !4
  %ncode224 = getelementptr inbounds %struct.inflate_state, ptr %144, i32 0, i32 23
  %145 = load i32, ptr %ncode224, align 8, !tbaa !38
  %cmp225 = icmp ult i32 %143, %145
  br i1 %cmp225, label %while.body227, label %while.end269

while.body227:                                    ; preds = %while.cond222
  br label %do.body228

do.body228:                                       ; preds = %while.body227
  br label %while.cond229

while.cond229:                                    ; preds = %do.end254, %do.body228
  %146 = load i32, ptr %bits, align 4, !tbaa !8
  %cmp230 = icmp ult i32 %146, 3
  br i1 %cmp230, label %while.body232, label %while.end255

while.body232:                                    ; preds = %while.cond229
  br label %do.body233

do.body233:                                       ; preds = %while.body232
  br label %do.body234

do.body234:                                       ; preds = %do.body233
  %147 = load i32, ptr %have, align 4, !tbaa !8
  %cmp235 = icmp eq i32 %147, 0
  br i1 %cmp235, label %if.then237, label %if.end243

if.then237:                                       ; preds = %do.body234
  %148 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %149 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call238 = call i32 %148(ptr noundef %149, ptr noundef %next)
  store i32 %call238, ptr %have, align 4, !tbaa !8
  %150 = load i32, ptr %have, align 4, !tbaa !8
  %cmp239 = icmp eq i32 %150, 0
  br i1 %cmp239, label %if.then241, label %if.end242

if.then241:                                       ; preds = %if.then237
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end242:                                        ; preds = %if.then237
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %do.body234
  br label %do.cond244

do.cond244:                                       ; preds = %if.end243
  br label %do.end245

do.end245:                                        ; preds = %do.cond244
  %151 = load i32, ptr %have, align 4, !tbaa !8
  %dec246 = add i32 %151, -1
  store i32 %dec246, ptr %have, align 4, !tbaa !8
  %152 = load ptr, ptr %next, align 8, !tbaa !4
  %incdec.ptr247 = getelementptr inbounds i8, ptr %152, i32 1
  store ptr %incdec.ptr247, ptr %next, align 8, !tbaa !4
  %153 = load i8, ptr %152, align 1, !tbaa !10
  %conv248 = zext i8 %153 to i64
  %154 = load i32, ptr %bits, align 4, !tbaa !8
  %sh_prom249 = zext i32 %154 to i64
  %shl250 = shl i64 %conv248, %sh_prom249
  %155 = load i64, ptr %hold, align 8, !tbaa !29
  %add251 = add i64 %155, %shl250
  store i64 %add251, ptr %hold, align 8, !tbaa !29
  %156 = load i32, ptr %bits, align 4, !tbaa !8
  %add252 = add i32 %156, 8
  store i32 %add252, ptr %bits, align 4, !tbaa !8
  br label %do.cond253

do.cond253:                                       ; preds = %do.end245
  br label %do.end254

do.end254:                                        ; preds = %do.cond253
  br label %while.cond229, !llvm.loop !40

while.end255:                                     ; preds = %while.cond229
  br label %do.cond256

do.cond256:                                       ; preds = %while.end255
  br label %do.end257

do.end257:                                        ; preds = %do.cond256
  %157 = load i64, ptr %hold, align 8, !tbaa !29
  %conv258 = trunc i64 %157 to i32
  %and259 = and i32 %conv258, 7
  %conv260 = trunc i32 %and259 to i16
  %158 = load ptr, ptr %state, align 8, !tbaa !4
  %lens = getelementptr inbounds %struct.inflate_state, ptr %158, i32 0, i32 28
  %159 = load ptr, ptr %state, align 8, !tbaa !4
  %have261 = getelementptr inbounds %struct.inflate_state, ptr %159, i32 0, i32 26
  %160 = load i32, ptr %have261, align 4, !tbaa !39
  %inc = add i32 %160, 1
  store i32 %inc, ptr %have261, align 4, !tbaa !39
  %idxprom = zext i32 %160 to i64
  %arrayidx = getelementptr inbounds [19 x i16], ptr @inflateBack.order, i64 0, i64 %idxprom
  %161 = load i16, ptr %arrayidx, align 2, !tbaa !41
  %idxprom262 = zext i16 %161 to i64
  %arrayidx263 = getelementptr inbounds [320 x i16], ptr %lens, i64 0, i64 %idxprom262
  store i16 %conv260, ptr %arrayidx263, align 2, !tbaa !41
  br label %do.body264

do.body264:                                       ; preds = %do.end257
  %162 = load i64, ptr %hold, align 8, !tbaa !29
  %shr265 = lshr i64 %162, 3
  store i64 %shr265, ptr %hold, align 8, !tbaa !29
  %163 = load i32, ptr %bits, align 4, !tbaa !8
  %sub266 = sub i32 %163, 3
  store i32 %sub266, ptr %bits, align 4, !tbaa !8
  br label %do.cond267

do.cond267:                                       ; preds = %do.body264
  br label %do.end268

do.end268:                                        ; preds = %do.cond267
  br label %while.cond222, !llvm.loop !43

while.end269:                                     ; preds = %while.cond222
  br label %while.cond270

while.cond270:                                    ; preds = %while.body274, %while.end269
  %164 = load ptr, ptr %state, align 8, !tbaa !4
  %have271 = getelementptr inbounds %struct.inflate_state, ptr %164, i32 0, i32 26
  %165 = load i32, ptr %have271, align 4, !tbaa !39
  %cmp272 = icmp ult i32 %165, 19
  br i1 %cmp272, label %while.body274, label %while.end282

while.body274:                                    ; preds = %while.cond270
  %166 = load ptr, ptr %state, align 8, !tbaa !4
  %lens275 = getelementptr inbounds %struct.inflate_state, ptr %166, i32 0, i32 28
  %167 = load ptr, ptr %state, align 8, !tbaa !4
  %have276 = getelementptr inbounds %struct.inflate_state, ptr %167, i32 0, i32 26
  %168 = load i32, ptr %have276, align 4, !tbaa !39
  %inc277 = add i32 %168, 1
  store i32 %inc277, ptr %have276, align 4, !tbaa !39
  %idxprom278 = zext i32 %168 to i64
  %arrayidx279 = getelementptr inbounds [19 x i16], ptr @inflateBack.order, i64 0, i64 %idxprom278
  %169 = load i16, ptr %arrayidx279, align 2, !tbaa !41
  %idxprom280 = zext i16 %169 to i64
  %arrayidx281 = getelementptr inbounds [320 x i16], ptr %lens275, i64 0, i64 %idxprom280
  store i16 0, ptr %arrayidx281, align 2, !tbaa !41
  br label %while.cond270, !llvm.loop !44

while.end282:                                     ; preds = %while.cond270
  %170 = load ptr, ptr %state, align 8, !tbaa !4
  %codes = getelementptr inbounds %struct.inflate_state, ptr %170, i32 0, i32 30
  %arraydecay = getelementptr inbounds [1444 x %struct.code], ptr %codes, i64 0, i64 0
  %171 = load ptr, ptr %state, align 8, !tbaa !4
  %next283 = getelementptr inbounds %struct.inflate_state, ptr %171, i32 0, i32 27
  store ptr %arraydecay, ptr %next283, align 8, !tbaa !45
  %172 = load ptr, ptr %state, align 8, !tbaa !4
  %next284 = getelementptr inbounds %struct.inflate_state, ptr %172, i32 0, i32 27
  %173 = load ptr, ptr %next284, align 8, !tbaa !45
  %174 = load ptr, ptr %state, align 8, !tbaa !4
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %174, i32 0, i32 19
  store ptr %173, ptr %lencode, align 8, !tbaa !46
  %175 = load ptr, ptr %state, align 8, !tbaa !4
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %175, i32 0, i32 21
  store i32 7, ptr %lenbits, align 8, !tbaa !47
  %176 = load ptr, ptr %state, align 8, !tbaa !4
  %lens285 = getelementptr inbounds %struct.inflate_state, ptr %176, i32 0, i32 28
  %arraydecay286 = getelementptr inbounds [320 x i16], ptr %lens285, i64 0, i64 0
  %177 = load ptr, ptr %state, align 8, !tbaa !4
  %next287 = getelementptr inbounds %struct.inflate_state, ptr %177, i32 0, i32 27
  %178 = load ptr, ptr %state, align 8, !tbaa !4
  %lenbits288 = getelementptr inbounds %struct.inflate_state, ptr %178, i32 0, i32 21
  %179 = load ptr, ptr %state, align 8, !tbaa !4
  %work = getelementptr inbounds %struct.inflate_state, ptr %179, i32 0, i32 29
  %arraydecay289 = getelementptr inbounds [288 x i16], ptr %work, i64 0, i64 0
  %call290 = call i32 @inflate_table(i32 noundef 0, ptr noundef %arraydecay286, i32 noundef 19, ptr noundef %next287, ptr noundef %lenbits288, ptr noundef %arraydecay289)
  store i32 %call290, ptr %ret, align 4, !tbaa !8
  %180 = load i32, ptr %ret, align 4, !tbaa !8
  %tobool291 = icmp ne i32 %180, 0
  br i1 %tobool291, label %if.then292, label %if.end295

if.then292:                                       ; preds = %while.end282
  %181 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %msg293 = getelementptr inbounds %struct.z_stream_s, ptr %181, i32 0, i32 6
  store ptr @.str.4, ptr %msg293, align 8, !tbaa !11
  %182 = load ptr, ptr %state, align 8, !tbaa !4
  %mode294 = getelementptr inbounds %struct.inflate_state, ptr %182, i32 0, i32 0
  store i32 29, ptr %mode294, align 8, !tbaa !25
  br label %sw.epilog1128

if.end295:                                        ; preds = %while.end282
  %183 = load ptr, ptr %state, align 8, !tbaa !4
  %have296 = getelementptr inbounds %struct.inflate_state, ptr %183, i32 0, i32 26
  store i32 0, ptr %have296, align 4, !tbaa !39
  br label %while.cond297

while.cond297:                                    ; preds = %if.end564, %if.end295
  %184 = load ptr, ptr %state, align 8, !tbaa !4
  %have298 = getelementptr inbounds %struct.inflate_state, ptr %184, i32 0, i32 26
  %185 = load i32, ptr %have298, align 4, !tbaa !39
  %186 = load ptr, ptr %state, align 8, !tbaa !4
  %nlen299 = getelementptr inbounds %struct.inflate_state, ptr %186, i32 0, i32 24
  %187 = load i32, ptr %nlen299, align 4, !tbaa !36
  %188 = load ptr, ptr %state, align 8, !tbaa !4
  %ndist300 = getelementptr inbounds %struct.inflate_state, ptr %188, i32 0, i32 25
  %189 = load i32, ptr %ndist300, align 8, !tbaa !37
  %add301 = add i32 %187, %189
  %cmp302 = icmp ult i32 %185, %add301
  br i1 %cmp302, label %while.body304, label %while.end565

while.body304:                                    ; preds = %while.cond297
  br label %for.cond305

for.cond305:                                      ; preds = %do.end341, %while.body304
  %190 = load ptr, ptr %state, align 8, !tbaa !4
  %lencode306 = getelementptr inbounds %struct.inflate_state, ptr %190, i32 0, i32 19
  %191 = load ptr, ptr %lencode306, align 8, !tbaa !46
  %192 = load i64, ptr %hold, align 8, !tbaa !29
  %conv307 = trunc i64 %192 to i32
  %193 = load ptr, ptr %state, align 8, !tbaa !4
  %lenbits308 = getelementptr inbounds %struct.inflate_state, ptr %193, i32 0, i32 21
  %194 = load i32, ptr %lenbits308, align 8, !tbaa !47
  %shl309 = shl i32 1, %194
  %sub310 = sub i32 %shl309, 1
  %and311 = and i32 %conv307, %sub310
  %idxprom312 = zext i32 %and311 to i64
  %arrayidx313 = getelementptr inbounds %struct.code, ptr %191, i64 %idxprom312
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %here, ptr align 2 %arrayidx313, i64 4, i1 false), !tbaa.struct !48
  %bits314 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %195 = load i8, ptr %bits314, align 1, !tbaa !49
  %conv315 = zext i8 %195 to i32
  %196 = load i32, ptr %bits, align 4, !tbaa !8
  %cmp316 = icmp ule i32 %conv315, %196
  br i1 %cmp316, label %if.then318, label %if.end319

if.then318:                                       ; preds = %for.cond305
  br label %for.end

if.end319:                                        ; preds = %for.cond305
  br label %do.body320

do.body320:                                       ; preds = %if.end319
  br label %do.body321

do.body321:                                       ; preds = %do.body320
  %197 = load i32, ptr %have, align 4, !tbaa !8
  %cmp322 = icmp eq i32 %197, 0
  br i1 %cmp322, label %if.then324, label %if.end330

if.then324:                                       ; preds = %do.body321
  %198 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %199 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call325 = call i32 %198(ptr noundef %199, ptr noundef %next)
  store i32 %call325, ptr %have, align 4, !tbaa !8
  %200 = load i32, ptr %have, align 4, !tbaa !8
  %cmp326 = icmp eq i32 %200, 0
  br i1 %cmp326, label %if.then328, label %if.end329

if.then328:                                       ; preds = %if.then324
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end329:                                        ; preds = %if.then324
  br label %if.end330

if.end330:                                        ; preds = %if.end329, %do.body321
  br label %do.cond331

do.cond331:                                       ; preds = %if.end330
  br label %do.end332

do.end332:                                        ; preds = %do.cond331
  %201 = load i32, ptr %have, align 4, !tbaa !8
  %dec333 = add i32 %201, -1
  store i32 %dec333, ptr %have, align 4, !tbaa !8
  %202 = load ptr, ptr %next, align 8, !tbaa !4
  %incdec.ptr334 = getelementptr inbounds i8, ptr %202, i32 1
  store ptr %incdec.ptr334, ptr %next, align 8, !tbaa !4
  %203 = load i8, ptr %202, align 1, !tbaa !10
  %conv335 = zext i8 %203 to i64
  %204 = load i32, ptr %bits, align 4, !tbaa !8
  %sh_prom336 = zext i32 %204 to i64
  %shl337 = shl i64 %conv335, %sh_prom336
  %205 = load i64, ptr %hold, align 8, !tbaa !29
  %add338 = add i64 %205, %shl337
  store i64 %add338, ptr %hold, align 8, !tbaa !29
  %206 = load i32, ptr %bits, align 4, !tbaa !8
  %add339 = add i32 %206, 8
  store i32 %add339, ptr %bits, align 4, !tbaa !8
  br label %do.cond340

do.cond340:                                       ; preds = %do.end332
  br label %do.end341

do.end341:                                        ; preds = %do.cond340
  br label %for.cond305

for.end:                                          ; preds = %if.then318
  %val = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 2
  %207 = load i16, ptr %val, align 2, !tbaa !51
  %conv342 = zext i16 %207 to i32
  %cmp343 = icmp slt i32 %conv342, 16
  br i1 %cmp343, label %if.then345, label %if.else

if.then345:                                       ; preds = %for.end
  br label %do.body346

do.body346:                                       ; preds = %if.then345
  %bits347 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %208 = load i8, ptr %bits347, align 1, !tbaa !49
  %conv348 = zext i8 %208 to i32
  %209 = load i64, ptr %hold, align 8, !tbaa !29
  %sh_prom349 = zext i32 %conv348 to i64
  %shr350 = lshr i64 %209, %sh_prom349
  store i64 %shr350, ptr %hold, align 8, !tbaa !29
  %bits351 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %210 = load i8, ptr %bits351, align 1, !tbaa !49
  %conv352 = zext i8 %210 to i32
  %211 = load i32, ptr %bits, align 4, !tbaa !8
  %sub353 = sub i32 %211, %conv352
  store i32 %sub353, ptr %bits, align 4, !tbaa !8
  br label %do.cond354

do.cond354:                                       ; preds = %do.body346
  br label %do.end355

do.end355:                                        ; preds = %do.cond354
  %val356 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 2
  %212 = load i16, ptr %val356, align 2, !tbaa !51
  %213 = load ptr, ptr %state, align 8, !tbaa !4
  %lens357 = getelementptr inbounds %struct.inflate_state, ptr %213, i32 0, i32 28
  %214 = load ptr, ptr %state, align 8, !tbaa !4
  %have358 = getelementptr inbounds %struct.inflate_state, ptr %214, i32 0, i32 26
  %215 = load i32, ptr %have358, align 4, !tbaa !39
  %inc359 = add i32 %215, 1
  store i32 %inc359, ptr %have358, align 4, !tbaa !39
  %idxprom360 = zext i32 %215 to i64
  %arrayidx361 = getelementptr inbounds [320 x i16], ptr %lens357, i64 0, i64 %idxprom360
  store i16 %212, ptr %arrayidx361, align 2, !tbaa !41
  br label %if.end564

if.else:                                          ; preds = %for.end
  %val362 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 2
  %216 = load i16, ptr %val362, align 2, !tbaa !51
  %conv363 = zext i16 %216 to i32
  %cmp364 = icmp eq i32 %conv363, 16
  br i1 %cmp364, label %if.then366, label %if.else431

if.then366:                                       ; preds = %if.else
  br label %do.body367

do.body367:                                       ; preds = %if.then366
  br label %while.cond368

while.cond368:                                    ; preds = %do.end396, %do.body367
  %217 = load i32, ptr %bits, align 4, !tbaa !8
  %bits369 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %218 = load i8, ptr %bits369, align 1, !tbaa !49
  %conv370 = zext i8 %218 to i32
  %add371 = add nsw i32 %conv370, 2
  %cmp372 = icmp ult i32 %217, %add371
  br i1 %cmp372, label %while.body374, label %while.end397

while.body374:                                    ; preds = %while.cond368
  br label %do.body375

do.body375:                                       ; preds = %while.body374
  br label %do.body376

do.body376:                                       ; preds = %do.body375
  %219 = load i32, ptr %have, align 4, !tbaa !8
  %cmp377 = icmp eq i32 %219, 0
  br i1 %cmp377, label %if.then379, label %if.end385

if.then379:                                       ; preds = %do.body376
  %220 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %221 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call380 = call i32 %220(ptr noundef %221, ptr noundef %next)
  store i32 %call380, ptr %have, align 4, !tbaa !8
  %222 = load i32, ptr %have, align 4, !tbaa !8
  %cmp381 = icmp eq i32 %222, 0
  br i1 %cmp381, label %if.then383, label %if.end384

if.then383:                                       ; preds = %if.then379
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end384:                                        ; preds = %if.then379
  br label %if.end385

if.end385:                                        ; preds = %if.end384, %do.body376
  br label %do.cond386

do.cond386:                                       ; preds = %if.end385
  br label %do.end387

do.end387:                                        ; preds = %do.cond386
  %223 = load i32, ptr %have, align 4, !tbaa !8
  %dec388 = add i32 %223, -1
  store i32 %dec388, ptr %have, align 4, !tbaa !8
  %224 = load ptr, ptr %next, align 8, !tbaa !4
  %incdec.ptr389 = getelementptr inbounds i8, ptr %224, i32 1
  store ptr %incdec.ptr389, ptr %next, align 8, !tbaa !4
  %225 = load i8, ptr %224, align 1, !tbaa !10
  %conv390 = zext i8 %225 to i64
  %226 = load i32, ptr %bits, align 4, !tbaa !8
  %sh_prom391 = zext i32 %226 to i64
  %shl392 = shl i64 %conv390, %sh_prom391
  %227 = load i64, ptr %hold, align 8, !tbaa !29
  %add393 = add i64 %227, %shl392
  store i64 %add393, ptr %hold, align 8, !tbaa !29
  %228 = load i32, ptr %bits, align 4, !tbaa !8
  %add394 = add i32 %228, 8
  store i32 %add394, ptr %bits, align 4, !tbaa !8
  br label %do.cond395

do.cond395:                                       ; preds = %do.end387
  br label %do.end396

do.end396:                                        ; preds = %do.cond395
  br label %while.cond368, !llvm.loop !52

while.end397:                                     ; preds = %while.cond368
  br label %do.cond398

do.cond398:                                       ; preds = %while.end397
  br label %do.end399

do.end399:                                        ; preds = %do.cond398
  br label %do.body400

do.body400:                                       ; preds = %do.end399
  %bits401 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %229 = load i8, ptr %bits401, align 1, !tbaa !49
  %conv402 = zext i8 %229 to i32
  %230 = load i64, ptr %hold, align 8, !tbaa !29
  %sh_prom403 = zext i32 %conv402 to i64
  %shr404 = lshr i64 %230, %sh_prom403
  store i64 %shr404, ptr %hold, align 8, !tbaa !29
  %bits405 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %231 = load i8, ptr %bits405, align 1, !tbaa !49
  %conv406 = zext i8 %231 to i32
  %232 = load i32, ptr %bits, align 4, !tbaa !8
  %sub407 = sub i32 %232, %conv406
  store i32 %sub407, ptr %bits, align 4, !tbaa !8
  br label %do.cond408

do.cond408:                                       ; preds = %do.body400
  br label %do.end409

do.end409:                                        ; preds = %do.cond408
  %233 = load ptr, ptr %state, align 8, !tbaa !4
  %have410 = getelementptr inbounds %struct.inflate_state, ptr %233, i32 0, i32 26
  %234 = load i32, ptr %have410, align 4, !tbaa !39
  %cmp411 = icmp eq i32 %234, 0
  br i1 %cmp411, label %if.then413, label %if.end416

if.then413:                                       ; preds = %do.end409
  %235 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %msg414 = getelementptr inbounds %struct.z_stream_s, ptr %235, i32 0, i32 6
  store ptr @.str.5, ptr %msg414, align 8, !tbaa !11
  %236 = load ptr, ptr %state, align 8, !tbaa !4
  %mode415 = getelementptr inbounds %struct.inflate_state, ptr %236, i32 0, i32 0
  store i32 29, ptr %mode415, align 8, !tbaa !25
  br label %while.end565

if.end416:                                        ; preds = %do.end409
  %237 = load ptr, ptr %state, align 8, !tbaa !4
  %lens417 = getelementptr inbounds %struct.inflate_state, ptr %237, i32 0, i32 28
  %238 = load ptr, ptr %state, align 8, !tbaa !4
  %have418 = getelementptr inbounds %struct.inflate_state, ptr %238, i32 0, i32 26
  %239 = load i32, ptr %have418, align 4, !tbaa !39
  %sub419 = sub i32 %239, 1
  %idxprom420 = zext i32 %sub419 to i64
  %arrayidx421 = getelementptr inbounds [320 x i16], ptr %lens417, i64 0, i64 %idxprom420
  %240 = load i16, ptr %arrayidx421, align 2, !tbaa !41
  %conv422 = zext i16 %240 to i32
  store i32 %conv422, ptr %len, align 4, !tbaa !8
  %241 = load i64, ptr %hold, align 8, !tbaa !29
  %conv423 = trunc i64 %241 to i32
  %and424 = and i32 %conv423, 3
  %add425 = add i32 3, %and424
  store i32 %add425, ptr %copy, align 4, !tbaa !8
  br label %do.body426

do.body426:                                       ; preds = %if.end416
  %242 = load i64, ptr %hold, align 8, !tbaa !29
  %shr427 = lshr i64 %242, 2
  store i64 %shr427, ptr %hold, align 8, !tbaa !29
  %243 = load i32, ptr %bits, align 4, !tbaa !8
  %sub428 = sub i32 %243, 2
  store i32 %sub428, ptr %bits, align 4, !tbaa !8
  br label %do.cond429

do.cond429:                                       ; preds = %do.body426
  br label %do.end430

do.end430:                                        ; preds = %do.cond429
  br label %if.end541

if.else431:                                       ; preds = %if.else
  %val432 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 2
  %244 = load i16, ptr %val432, align 2, !tbaa !51
  %conv433 = zext i16 %244 to i32
  %cmp434 = icmp eq i32 %conv433, 17
  br i1 %cmp434, label %if.then436, label %if.else488

if.then436:                                       ; preds = %if.else431
  br label %do.body437

do.body437:                                       ; preds = %if.then436
  br label %while.cond438

while.cond438:                                    ; preds = %do.end466, %do.body437
  %245 = load i32, ptr %bits, align 4, !tbaa !8
  %bits439 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %246 = load i8, ptr %bits439, align 1, !tbaa !49
  %conv440 = zext i8 %246 to i32
  %add441 = add nsw i32 %conv440, 3
  %cmp442 = icmp ult i32 %245, %add441
  br i1 %cmp442, label %while.body444, label %while.end467

while.body444:                                    ; preds = %while.cond438
  br label %do.body445

do.body445:                                       ; preds = %while.body444
  br label %do.body446

do.body446:                                       ; preds = %do.body445
  %247 = load i32, ptr %have, align 4, !tbaa !8
  %cmp447 = icmp eq i32 %247, 0
  br i1 %cmp447, label %if.then449, label %if.end455

if.then449:                                       ; preds = %do.body446
  %248 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %249 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call450 = call i32 %248(ptr noundef %249, ptr noundef %next)
  store i32 %call450, ptr %have, align 4, !tbaa !8
  %250 = load i32, ptr %have, align 4, !tbaa !8
  %cmp451 = icmp eq i32 %250, 0
  br i1 %cmp451, label %if.then453, label %if.end454

if.then453:                                       ; preds = %if.then449
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end454:                                        ; preds = %if.then449
  br label %if.end455

if.end455:                                        ; preds = %if.end454, %do.body446
  br label %do.cond456

do.cond456:                                       ; preds = %if.end455
  br label %do.end457

do.end457:                                        ; preds = %do.cond456
  %251 = load i32, ptr %have, align 4, !tbaa !8
  %dec458 = add i32 %251, -1
  store i32 %dec458, ptr %have, align 4, !tbaa !8
  %252 = load ptr, ptr %next, align 8, !tbaa !4
  %incdec.ptr459 = getelementptr inbounds i8, ptr %252, i32 1
  store ptr %incdec.ptr459, ptr %next, align 8, !tbaa !4
  %253 = load i8, ptr %252, align 1, !tbaa !10
  %conv460 = zext i8 %253 to i64
  %254 = load i32, ptr %bits, align 4, !tbaa !8
  %sh_prom461 = zext i32 %254 to i64
  %shl462 = shl i64 %conv460, %sh_prom461
  %255 = load i64, ptr %hold, align 8, !tbaa !29
  %add463 = add i64 %255, %shl462
  store i64 %add463, ptr %hold, align 8, !tbaa !29
  %256 = load i32, ptr %bits, align 4, !tbaa !8
  %add464 = add i32 %256, 8
  store i32 %add464, ptr %bits, align 4, !tbaa !8
  br label %do.cond465

do.cond465:                                       ; preds = %do.end457
  br label %do.end466

do.end466:                                        ; preds = %do.cond465
  br label %while.cond438, !llvm.loop !53

while.end467:                                     ; preds = %while.cond438
  br label %do.cond468

do.cond468:                                       ; preds = %while.end467
  br label %do.end469

do.end469:                                        ; preds = %do.cond468
  br label %do.body470

do.body470:                                       ; preds = %do.end469
  %bits471 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %257 = load i8, ptr %bits471, align 1, !tbaa !49
  %conv472 = zext i8 %257 to i32
  %258 = load i64, ptr %hold, align 8, !tbaa !29
  %sh_prom473 = zext i32 %conv472 to i64
  %shr474 = lshr i64 %258, %sh_prom473
  store i64 %shr474, ptr %hold, align 8, !tbaa !29
  %bits475 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %259 = load i8, ptr %bits475, align 1, !tbaa !49
  %conv476 = zext i8 %259 to i32
  %260 = load i32, ptr %bits, align 4, !tbaa !8
  %sub477 = sub i32 %260, %conv476
  store i32 %sub477, ptr %bits, align 4, !tbaa !8
  br label %do.cond478

do.cond478:                                       ; preds = %do.body470
  br label %do.end479

do.end479:                                        ; preds = %do.cond478
  store i32 0, ptr %len, align 4, !tbaa !8
  %261 = load i64, ptr %hold, align 8, !tbaa !29
  %conv480 = trunc i64 %261 to i32
  %and481 = and i32 %conv480, 7
  %add482 = add i32 3, %and481
  store i32 %add482, ptr %copy, align 4, !tbaa !8
  br label %do.body483

do.body483:                                       ; preds = %do.end479
  %262 = load i64, ptr %hold, align 8, !tbaa !29
  %shr484 = lshr i64 %262, 3
  store i64 %shr484, ptr %hold, align 8, !tbaa !29
  %263 = load i32, ptr %bits, align 4, !tbaa !8
  %sub485 = sub i32 %263, 3
  store i32 %sub485, ptr %bits, align 4, !tbaa !8
  br label %do.cond486

do.cond486:                                       ; preds = %do.body483
  br label %do.end487

do.end487:                                        ; preds = %do.cond486
  br label %if.end540

if.else488:                                       ; preds = %if.else431
  br label %do.body489

do.body489:                                       ; preds = %if.else488
  br label %while.cond490

while.cond490:                                    ; preds = %do.end518, %do.body489
  %264 = load i32, ptr %bits, align 4, !tbaa !8
  %bits491 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %265 = load i8, ptr %bits491, align 1, !tbaa !49
  %conv492 = zext i8 %265 to i32
  %add493 = add nsw i32 %conv492, 7
  %cmp494 = icmp ult i32 %264, %add493
  br i1 %cmp494, label %while.body496, label %while.end519

while.body496:                                    ; preds = %while.cond490
  br label %do.body497

do.body497:                                       ; preds = %while.body496
  br label %do.body498

do.body498:                                       ; preds = %do.body497
  %266 = load i32, ptr %have, align 4, !tbaa !8
  %cmp499 = icmp eq i32 %266, 0
  br i1 %cmp499, label %if.then501, label %if.end507

if.then501:                                       ; preds = %do.body498
  %267 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %268 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call502 = call i32 %267(ptr noundef %268, ptr noundef %next)
  store i32 %call502, ptr %have, align 4, !tbaa !8
  %269 = load i32, ptr %have, align 4, !tbaa !8
  %cmp503 = icmp eq i32 %269, 0
  br i1 %cmp503, label %if.then505, label %if.end506

if.then505:                                       ; preds = %if.then501
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end506:                                        ; preds = %if.then501
  br label %if.end507

if.end507:                                        ; preds = %if.end506, %do.body498
  br label %do.cond508

do.cond508:                                       ; preds = %if.end507
  br label %do.end509

do.end509:                                        ; preds = %do.cond508
  %270 = load i32, ptr %have, align 4, !tbaa !8
  %dec510 = add i32 %270, -1
  store i32 %dec510, ptr %have, align 4, !tbaa !8
  %271 = load ptr, ptr %next, align 8, !tbaa !4
  %incdec.ptr511 = getelementptr inbounds i8, ptr %271, i32 1
  store ptr %incdec.ptr511, ptr %next, align 8, !tbaa !4
  %272 = load i8, ptr %271, align 1, !tbaa !10
  %conv512 = zext i8 %272 to i64
  %273 = load i32, ptr %bits, align 4, !tbaa !8
  %sh_prom513 = zext i32 %273 to i64
  %shl514 = shl i64 %conv512, %sh_prom513
  %274 = load i64, ptr %hold, align 8, !tbaa !29
  %add515 = add i64 %274, %shl514
  store i64 %add515, ptr %hold, align 8, !tbaa !29
  %275 = load i32, ptr %bits, align 4, !tbaa !8
  %add516 = add i32 %275, 8
  store i32 %add516, ptr %bits, align 4, !tbaa !8
  br label %do.cond517

do.cond517:                                       ; preds = %do.end509
  br label %do.end518

do.end518:                                        ; preds = %do.cond517
  br label %while.cond490, !llvm.loop !54

while.end519:                                     ; preds = %while.cond490
  br label %do.cond520

do.cond520:                                       ; preds = %while.end519
  br label %do.end521

do.end521:                                        ; preds = %do.cond520
  br label %do.body522

do.body522:                                       ; preds = %do.end521
  %bits523 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %276 = load i8, ptr %bits523, align 1, !tbaa !49
  %conv524 = zext i8 %276 to i32
  %277 = load i64, ptr %hold, align 8, !tbaa !29
  %sh_prom525 = zext i32 %conv524 to i64
  %shr526 = lshr i64 %277, %sh_prom525
  store i64 %shr526, ptr %hold, align 8, !tbaa !29
  %bits527 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %278 = load i8, ptr %bits527, align 1, !tbaa !49
  %conv528 = zext i8 %278 to i32
  %279 = load i32, ptr %bits, align 4, !tbaa !8
  %sub529 = sub i32 %279, %conv528
  store i32 %sub529, ptr %bits, align 4, !tbaa !8
  br label %do.cond530

do.cond530:                                       ; preds = %do.body522
  br label %do.end531

do.end531:                                        ; preds = %do.cond530
  store i32 0, ptr %len, align 4, !tbaa !8
  %280 = load i64, ptr %hold, align 8, !tbaa !29
  %conv532 = trunc i64 %280 to i32
  %and533 = and i32 %conv532, 127
  %add534 = add i32 11, %and533
  store i32 %add534, ptr %copy, align 4, !tbaa !8
  br label %do.body535

do.body535:                                       ; preds = %do.end531
  %281 = load i64, ptr %hold, align 8, !tbaa !29
  %shr536 = lshr i64 %281, 7
  store i64 %shr536, ptr %hold, align 8, !tbaa !29
  %282 = load i32, ptr %bits, align 4, !tbaa !8
  %sub537 = sub i32 %282, 7
  store i32 %sub537, ptr %bits, align 4, !tbaa !8
  br label %do.cond538

do.cond538:                                       ; preds = %do.body535
  br label %do.end539

do.end539:                                        ; preds = %do.cond538
  br label %if.end540

if.end540:                                        ; preds = %do.end539, %do.end487
  br label %if.end541

if.end541:                                        ; preds = %if.end540, %do.end430
  %283 = load ptr, ptr %state, align 8, !tbaa !4
  %have542 = getelementptr inbounds %struct.inflate_state, ptr %283, i32 0, i32 26
  %284 = load i32, ptr %have542, align 4, !tbaa !39
  %285 = load i32, ptr %copy, align 4, !tbaa !8
  %add543 = add i32 %284, %285
  %286 = load ptr, ptr %state, align 8, !tbaa !4
  %nlen544 = getelementptr inbounds %struct.inflate_state, ptr %286, i32 0, i32 24
  %287 = load i32, ptr %nlen544, align 4, !tbaa !36
  %288 = load ptr, ptr %state, align 8, !tbaa !4
  %ndist545 = getelementptr inbounds %struct.inflate_state, ptr %288, i32 0, i32 25
  %289 = load i32, ptr %ndist545, align 8, !tbaa !37
  %add546 = add i32 %287, %289
  %cmp547 = icmp ugt i32 %add543, %add546
  br i1 %cmp547, label %if.then549, label %if.end552

if.then549:                                       ; preds = %if.end541
  %290 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %msg550 = getelementptr inbounds %struct.z_stream_s, ptr %290, i32 0, i32 6
  store ptr @.str.5, ptr %msg550, align 8, !tbaa !11
  %291 = load ptr, ptr %state, align 8, !tbaa !4
  %mode551 = getelementptr inbounds %struct.inflate_state, ptr %291, i32 0, i32 0
  store i32 29, ptr %mode551, align 8, !tbaa !25
  br label %while.end565

if.end552:                                        ; preds = %if.end541
  br label %while.cond553

while.cond553:                                    ; preds = %while.body556, %if.end552
  %292 = load i32, ptr %copy, align 4, !tbaa !8
  %dec554 = add i32 %292, -1
  store i32 %dec554, ptr %copy, align 4, !tbaa !8
  %tobool555 = icmp ne i32 %292, 0
  br i1 %tobool555, label %while.body556, label %while.end563

while.body556:                                    ; preds = %while.cond553
  %293 = load i32, ptr %len, align 4, !tbaa !8
  %conv557 = trunc i32 %293 to i16
  %294 = load ptr, ptr %state, align 8, !tbaa !4
  %lens558 = getelementptr inbounds %struct.inflate_state, ptr %294, i32 0, i32 28
  %295 = load ptr, ptr %state, align 8, !tbaa !4
  %have559 = getelementptr inbounds %struct.inflate_state, ptr %295, i32 0, i32 26
  %296 = load i32, ptr %have559, align 4, !tbaa !39
  %inc560 = add i32 %296, 1
  store i32 %inc560, ptr %have559, align 4, !tbaa !39
  %idxprom561 = zext i32 %296 to i64
  %arrayidx562 = getelementptr inbounds [320 x i16], ptr %lens558, i64 0, i64 %idxprom561
  store i16 %conv557, ptr %arrayidx562, align 2, !tbaa !41
  br label %while.cond553, !llvm.loop !55

while.end563:                                     ; preds = %while.cond553
  br label %if.end564

if.end564:                                        ; preds = %while.end563, %do.end355
  br label %while.cond297, !llvm.loop !56

while.end565:                                     ; preds = %if.then549, %if.then413, %while.cond297
  %297 = load ptr, ptr %state, align 8, !tbaa !4
  %mode566 = getelementptr inbounds %struct.inflate_state, ptr %297, i32 0, i32 0
  %298 = load i32, ptr %mode566, align 8, !tbaa !25
  %cmp567 = icmp eq i32 %298, 29
  br i1 %cmp567, label %if.then569, label %if.end570

if.then569:                                       ; preds = %while.end565
  br label %sw.epilog1128

if.end570:                                        ; preds = %while.end565
  %299 = load ptr, ptr %state, align 8, !tbaa !4
  %lens571 = getelementptr inbounds %struct.inflate_state, ptr %299, i32 0, i32 28
  %arrayidx572 = getelementptr inbounds [320 x i16], ptr %lens571, i64 0, i64 256
  %300 = load i16, ptr %arrayidx572, align 8, !tbaa !41
  %conv573 = zext i16 %300 to i32
  %cmp574 = icmp eq i32 %conv573, 0
  br i1 %cmp574, label %if.then576, label %if.end579

if.then576:                                       ; preds = %if.end570
  %301 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %msg577 = getelementptr inbounds %struct.z_stream_s, ptr %301, i32 0, i32 6
  store ptr @.str.6, ptr %msg577, align 8, !tbaa !11
  %302 = load ptr, ptr %state, align 8, !tbaa !4
  %mode578 = getelementptr inbounds %struct.inflate_state, ptr %302, i32 0, i32 0
  store i32 29, ptr %mode578, align 8, !tbaa !25
  br label %sw.epilog1128

if.end579:                                        ; preds = %if.end570
  %303 = load ptr, ptr %state, align 8, !tbaa !4
  %codes580 = getelementptr inbounds %struct.inflate_state, ptr %303, i32 0, i32 30
  %arraydecay581 = getelementptr inbounds [1444 x %struct.code], ptr %codes580, i64 0, i64 0
  %304 = load ptr, ptr %state, align 8, !tbaa !4
  %next582 = getelementptr inbounds %struct.inflate_state, ptr %304, i32 0, i32 27
  store ptr %arraydecay581, ptr %next582, align 8, !tbaa !45
  %305 = load ptr, ptr %state, align 8, !tbaa !4
  %next583 = getelementptr inbounds %struct.inflate_state, ptr %305, i32 0, i32 27
  %306 = load ptr, ptr %next583, align 8, !tbaa !45
  %307 = load ptr, ptr %state, align 8, !tbaa !4
  %lencode584 = getelementptr inbounds %struct.inflate_state, ptr %307, i32 0, i32 19
  store ptr %306, ptr %lencode584, align 8, !tbaa !46
  %308 = load ptr, ptr %state, align 8, !tbaa !4
  %lenbits585 = getelementptr inbounds %struct.inflate_state, ptr %308, i32 0, i32 21
  store i32 9, ptr %lenbits585, align 8, !tbaa !47
  %309 = load ptr, ptr %state, align 8, !tbaa !4
  %lens586 = getelementptr inbounds %struct.inflate_state, ptr %309, i32 0, i32 28
  %arraydecay587 = getelementptr inbounds [320 x i16], ptr %lens586, i64 0, i64 0
  %310 = load ptr, ptr %state, align 8, !tbaa !4
  %nlen588 = getelementptr inbounds %struct.inflate_state, ptr %310, i32 0, i32 24
  %311 = load i32, ptr %nlen588, align 4, !tbaa !36
  %312 = load ptr, ptr %state, align 8, !tbaa !4
  %next589 = getelementptr inbounds %struct.inflate_state, ptr %312, i32 0, i32 27
  %313 = load ptr, ptr %state, align 8, !tbaa !4
  %lenbits590 = getelementptr inbounds %struct.inflate_state, ptr %313, i32 0, i32 21
  %314 = load ptr, ptr %state, align 8, !tbaa !4
  %work591 = getelementptr inbounds %struct.inflate_state, ptr %314, i32 0, i32 29
  %arraydecay592 = getelementptr inbounds [288 x i16], ptr %work591, i64 0, i64 0
  %call593 = call i32 @inflate_table(i32 noundef 1, ptr noundef %arraydecay587, i32 noundef %311, ptr noundef %next589, ptr noundef %lenbits590, ptr noundef %arraydecay592)
  store i32 %call593, ptr %ret, align 4, !tbaa !8
  %315 = load i32, ptr %ret, align 4, !tbaa !8
  %tobool594 = icmp ne i32 %315, 0
  br i1 %tobool594, label %if.then595, label %if.end598

if.then595:                                       ; preds = %if.end579
  %316 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %msg596 = getelementptr inbounds %struct.z_stream_s, ptr %316, i32 0, i32 6
  store ptr @.str.7, ptr %msg596, align 8, !tbaa !11
  %317 = load ptr, ptr %state, align 8, !tbaa !4
  %mode597 = getelementptr inbounds %struct.inflate_state, ptr %317, i32 0, i32 0
  store i32 29, ptr %mode597, align 8, !tbaa !25
  br label %sw.epilog1128

if.end598:                                        ; preds = %if.end579
  %318 = load ptr, ptr %state, align 8, !tbaa !4
  %next599 = getelementptr inbounds %struct.inflate_state, ptr %318, i32 0, i32 27
  %319 = load ptr, ptr %next599, align 8, !tbaa !45
  %320 = load ptr, ptr %state, align 8, !tbaa !4
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %320, i32 0, i32 20
  store ptr %319, ptr %distcode, align 8, !tbaa !57
  %321 = load ptr, ptr %state, align 8, !tbaa !4
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %321, i32 0, i32 22
  store i32 6, ptr %distbits, align 4, !tbaa !58
  %322 = load ptr, ptr %state, align 8, !tbaa !4
  %lens600 = getelementptr inbounds %struct.inflate_state, ptr %322, i32 0, i32 28
  %arraydecay601 = getelementptr inbounds [320 x i16], ptr %lens600, i64 0, i64 0
  %323 = load ptr, ptr %state, align 8, !tbaa !4
  %nlen602 = getelementptr inbounds %struct.inflate_state, ptr %323, i32 0, i32 24
  %324 = load i32, ptr %nlen602, align 4, !tbaa !36
  %idx.ext603 = zext i32 %324 to i64
  %add.ptr604 = getelementptr inbounds i16, ptr %arraydecay601, i64 %idx.ext603
  %325 = load ptr, ptr %state, align 8, !tbaa !4
  %ndist605 = getelementptr inbounds %struct.inflate_state, ptr %325, i32 0, i32 25
  %326 = load i32, ptr %ndist605, align 8, !tbaa !37
  %327 = load ptr, ptr %state, align 8, !tbaa !4
  %next606 = getelementptr inbounds %struct.inflate_state, ptr %327, i32 0, i32 27
  %328 = load ptr, ptr %state, align 8, !tbaa !4
  %distbits607 = getelementptr inbounds %struct.inflate_state, ptr %328, i32 0, i32 22
  %329 = load ptr, ptr %state, align 8, !tbaa !4
  %work608 = getelementptr inbounds %struct.inflate_state, ptr %329, i32 0, i32 29
  %arraydecay609 = getelementptr inbounds [288 x i16], ptr %work608, i64 0, i64 0
  %call610 = call i32 @inflate_table(i32 noundef 2, ptr noundef %add.ptr604, i32 noundef %326, ptr noundef %next606, ptr noundef %distbits607, ptr noundef %arraydecay609)
  store i32 %call610, ptr %ret, align 4, !tbaa !8
  %330 = load i32, ptr %ret, align 4, !tbaa !8
  %tobool611 = icmp ne i32 %330, 0
  br i1 %tobool611, label %if.then612, label %if.end615

if.then612:                                       ; preds = %if.end598
  %331 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %msg613 = getelementptr inbounds %struct.z_stream_s, ptr %331, i32 0, i32 6
  store ptr @.str.8, ptr %msg613, align 8, !tbaa !11
  %332 = load ptr, ptr %state, align 8, !tbaa !4
  %mode614 = getelementptr inbounds %struct.inflate_state, ptr %332, i32 0, i32 0
  store i32 29, ptr %mode614, align 8, !tbaa !25
  br label %sw.epilog1128

if.end615:                                        ; preds = %if.end598
  %333 = load ptr, ptr %state, align 8, !tbaa !4
  %mode616 = getelementptr inbounds %struct.inflate_state, ptr %333, i32 0, i32 0
  store i32 20, ptr %mode616, align 8, !tbaa !25
  br label %sw.bb617

sw.bb617:                                         ; preds = %for.cond, %if.end615
  %334 = load i32, ptr %have, align 4, !tbaa !8
  %cmp618 = icmp uge i32 %334, 6
  br i1 %cmp618, label %land.lhs.true, label %if.end649

land.lhs.true:                                    ; preds = %sw.bb617
  %335 = load i32, ptr %left, align 4, !tbaa !8
  %cmp620 = icmp uge i32 %335, 258
  br i1 %cmp620, label %if.then622, label %if.end649

if.then622:                                       ; preds = %land.lhs.true
  br label %do.body623

do.body623:                                       ; preds = %if.then622
  %336 = load ptr, ptr %put, align 8, !tbaa !4
  %337 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %337, i32 0, i32 3
  store ptr %336, ptr %next_out, align 8, !tbaa !59
  %338 = load i32, ptr %left, align 4, !tbaa !8
  %339 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %339, i32 0, i32 4
  store i32 %338, ptr %avail_out, align 8, !tbaa !60
  %340 = load ptr, ptr %next, align 8, !tbaa !4
  %341 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %next_in624 = getelementptr inbounds %struct.z_stream_s, ptr %341, i32 0, i32 0
  store ptr %340, ptr %next_in624, align 8, !tbaa !27
  %342 = load i32, ptr %have, align 4, !tbaa !8
  %343 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %avail_in625 = getelementptr inbounds %struct.z_stream_s, ptr %343, i32 0, i32 1
  store i32 %342, ptr %avail_in625, align 8, !tbaa !28
  %344 = load i64, ptr %hold, align 8, !tbaa !29
  %345 = load ptr, ptr %state, align 8, !tbaa !4
  %hold626 = getelementptr inbounds %struct.inflate_state, ptr %345, i32 0, i32 14
  store i64 %344, ptr %hold626, align 8, !tbaa !61
  %346 = load i32, ptr %bits, align 4, !tbaa !8
  %347 = load ptr, ptr %state, align 8, !tbaa !4
  %bits627 = getelementptr inbounds %struct.inflate_state, ptr %347, i32 0, i32 15
  store i32 %346, ptr %bits627, align 8, !tbaa !62
  br label %do.cond628

do.cond628:                                       ; preds = %do.body623
  br label %do.end629

do.end629:                                        ; preds = %do.cond628
  %348 = load ptr, ptr %state, align 8, !tbaa !4
  %whave630 = getelementptr inbounds %struct.inflate_state, ptr %348, i32 0, i32 11
  %349 = load i32, ptr %whave630, align 8, !tbaa !24
  %350 = load ptr, ptr %state, align 8, !tbaa !4
  %wsize631 = getelementptr inbounds %struct.inflate_state, ptr %350, i32 0, i32 10
  %351 = load i32, ptr %wsize631, align 4, !tbaa !21
  %cmp632 = icmp ult i32 %349, %351
  br i1 %cmp632, label %if.then634, label %if.end638

if.then634:                                       ; preds = %do.end629
  %352 = load ptr, ptr %state, align 8, !tbaa !4
  %wsize635 = getelementptr inbounds %struct.inflate_state, ptr %352, i32 0, i32 10
  %353 = load i32, ptr %wsize635, align 4, !tbaa !21
  %354 = load i32, ptr %left, align 4, !tbaa !8
  %sub636 = sub i32 %353, %354
  %355 = load ptr, ptr %state, align 8, !tbaa !4
  %whave637 = getelementptr inbounds %struct.inflate_state, ptr %355, i32 0, i32 11
  store i32 %sub636, ptr %whave637, align 8, !tbaa !24
  br label %if.end638

if.end638:                                        ; preds = %if.then634, %do.end629
  %356 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %357 = load ptr, ptr %state, align 8, !tbaa !4
  %wsize639 = getelementptr inbounds %struct.inflate_state, ptr %357, i32 0, i32 10
  %358 = load i32, ptr %wsize639, align 4, !tbaa !21
  call void @inflate_fast(ptr noundef %356, i32 noundef %358)
  br label %do.body640

do.body640:                                       ; preds = %if.end638
  %359 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %next_out641 = getelementptr inbounds %struct.z_stream_s, ptr %359, i32 0, i32 3
  %360 = load ptr, ptr %next_out641, align 8, !tbaa !59
  store ptr %360, ptr %put, align 8, !tbaa !4
  %361 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %avail_out642 = getelementptr inbounds %struct.z_stream_s, ptr %361, i32 0, i32 4
  %362 = load i32, ptr %avail_out642, align 8, !tbaa !60
  store i32 %362, ptr %left, align 4, !tbaa !8
  %363 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %next_in643 = getelementptr inbounds %struct.z_stream_s, ptr %363, i32 0, i32 0
  %364 = load ptr, ptr %next_in643, align 8, !tbaa !27
  store ptr %364, ptr %next, align 8, !tbaa !4
  %365 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %avail_in644 = getelementptr inbounds %struct.z_stream_s, ptr %365, i32 0, i32 1
  %366 = load i32, ptr %avail_in644, align 8, !tbaa !28
  store i32 %366, ptr %have, align 4, !tbaa !8
  %367 = load ptr, ptr %state, align 8, !tbaa !4
  %hold645 = getelementptr inbounds %struct.inflate_state, ptr %367, i32 0, i32 14
  %368 = load i64, ptr %hold645, align 8, !tbaa !61
  store i64 %368, ptr %hold, align 8, !tbaa !29
  %369 = load ptr, ptr %state, align 8, !tbaa !4
  %bits646 = getelementptr inbounds %struct.inflate_state, ptr %369, i32 0, i32 15
  %370 = load i32, ptr %bits646, align 8, !tbaa !62
  store i32 %370, ptr %bits, align 4, !tbaa !8
  br label %do.cond647

do.cond647:                                       ; preds = %do.body640
  br label %do.end648

do.end648:                                        ; preds = %do.cond647
  br label %sw.epilog1128

if.end649:                                        ; preds = %land.lhs.true, %sw.bb617
  br label %for.cond650

for.cond650:                                      ; preds = %do.end686, %if.end649
  %371 = load ptr, ptr %state, align 8, !tbaa !4
  %lencode651 = getelementptr inbounds %struct.inflate_state, ptr %371, i32 0, i32 19
  %372 = load ptr, ptr %lencode651, align 8, !tbaa !46
  %373 = load i64, ptr %hold, align 8, !tbaa !29
  %conv652 = trunc i64 %373 to i32
  %374 = load ptr, ptr %state, align 8, !tbaa !4
  %lenbits653 = getelementptr inbounds %struct.inflate_state, ptr %374, i32 0, i32 21
  %375 = load i32, ptr %lenbits653, align 8, !tbaa !47
  %shl654 = shl i32 1, %375
  %sub655 = sub i32 %shl654, 1
  %and656 = and i32 %conv652, %sub655
  %idxprom657 = zext i32 %and656 to i64
  %arrayidx658 = getelementptr inbounds %struct.code, ptr %372, i64 %idxprom657
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %here, ptr align 2 %arrayidx658, i64 4, i1 false), !tbaa.struct !48
  %bits659 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %376 = load i8, ptr %bits659, align 1, !tbaa !49
  %conv660 = zext i8 %376 to i32
  %377 = load i32, ptr %bits, align 4, !tbaa !8
  %cmp661 = icmp ule i32 %conv660, %377
  br i1 %cmp661, label %if.then663, label %if.end664

if.then663:                                       ; preds = %for.cond650
  br label %for.end687

if.end664:                                        ; preds = %for.cond650
  br label %do.body665

do.body665:                                       ; preds = %if.end664
  br label %do.body666

do.body666:                                       ; preds = %do.body665
  %378 = load i32, ptr %have, align 4, !tbaa !8
  %cmp667 = icmp eq i32 %378, 0
  br i1 %cmp667, label %if.then669, label %if.end675

if.then669:                                       ; preds = %do.body666
  %379 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %380 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call670 = call i32 %379(ptr noundef %380, ptr noundef %next)
  store i32 %call670, ptr %have, align 4, !tbaa !8
  %381 = load i32, ptr %have, align 4, !tbaa !8
  %cmp671 = icmp eq i32 %381, 0
  br i1 %cmp671, label %if.then673, label %if.end674

if.then673:                                       ; preds = %if.then669
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end674:                                        ; preds = %if.then669
  br label %if.end675

if.end675:                                        ; preds = %if.end674, %do.body666
  br label %do.cond676

do.cond676:                                       ; preds = %if.end675
  br label %do.end677

do.end677:                                        ; preds = %do.cond676
  %382 = load i32, ptr %have, align 4, !tbaa !8
  %dec678 = add i32 %382, -1
  store i32 %dec678, ptr %have, align 4, !tbaa !8
  %383 = load ptr, ptr %next, align 8, !tbaa !4
  %incdec.ptr679 = getelementptr inbounds i8, ptr %383, i32 1
  store ptr %incdec.ptr679, ptr %next, align 8, !tbaa !4
  %384 = load i8, ptr %383, align 1, !tbaa !10
  %conv680 = zext i8 %384 to i64
  %385 = load i32, ptr %bits, align 4, !tbaa !8
  %sh_prom681 = zext i32 %385 to i64
  %shl682 = shl i64 %conv680, %sh_prom681
  %386 = load i64, ptr %hold, align 8, !tbaa !29
  %add683 = add i64 %386, %shl682
  store i64 %add683, ptr %hold, align 8, !tbaa !29
  %387 = load i32, ptr %bits, align 4, !tbaa !8
  %add684 = add i32 %387, 8
  store i32 %add684, ptr %bits, align 4, !tbaa !8
  br label %do.cond685

do.cond685:                                       ; preds = %do.end677
  br label %do.end686

do.end686:                                        ; preds = %do.cond685
  br label %for.cond650

for.end687:                                       ; preds = %if.then663
  %op = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %388 = load i8, ptr %op, align 2, !tbaa !63
  %conv688 = zext i8 %388 to i32
  %tobool689 = icmp ne i32 %conv688, 0
  br i1 %tobool689, label %land.lhs.true690, label %if.end758

land.lhs.true690:                                 ; preds = %for.end687
  %op691 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %389 = load i8, ptr %op691, align 2, !tbaa !63
  %conv692 = zext i8 %389 to i32
  %and693 = and i32 %conv692, 240
  %cmp694 = icmp eq i32 %and693, 0
  br i1 %cmp694, label %if.then696, label %if.end758

if.then696:                                       ; preds = %land.lhs.true690
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %last, ptr align 2 %here, i64 4, i1 false), !tbaa.struct !48
  br label %for.cond697

for.cond697:                                      ; preds = %do.end746, %if.then696
  %390 = load ptr, ptr %state, align 8, !tbaa !4
  %lencode698 = getelementptr inbounds %struct.inflate_state, ptr %390, i32 0, i32 19
  %391 = load ptr, ptr %lencode698, align 8, !tbaa !46
  %val699 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 2
  %392 = load i16, ptr %val699, align 2, !tbaa !51
  %conv700 = zext i16 %392 to i32
  %393 = load i64, ptr %hold, align 8, !tbaa !29
  %conv701 = trunc i64 %393 to i32
  %bits702 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %394 = load i8, ptr %bits702, align 1, !tbaa !49
  %conv703 = zext i8 %394 to i32
  %op704 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 0
  %395 = load i8, ptr %op704, align 2, !tbaa !63
  %conv705 = zext i8 %395 to i32
  %add706 = add nsw i32 %conv703, %conv705
  %shl707 = shl i32 1, %add706
  %sub708 = sub i32 %shl707, 1
  %and709 = and i32 %conv701, %sub708
  %bits710 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %396 = load i8, ptr %bits710, align 1, !tbaa !49
  %conv711 = zext i8 %396 to i32
  %shr712 = lshr i32 %and709, %conv711
  %add713 = add i32 %conv700, %shr712
  %idxprom714 = zext i32 %add713 to i64
  %arrayidx715 = getelementptr inbounds %struct.code, ptr %391, i64 %idxprom714
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %here, ptr align 2 %arrayidx715, i64 4, i1 false), !tbaa.struct !48
  %bits716 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %397 = load i8, ptr %bits716, align 1, !tbaa !49
  %conv717 = zext i8 %397 to i32
  %bits718 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %398 = load i8, ptr %bits718, align 1, !tbaa !49
  %conv719 = zext i8 %398 to i32
  %add720 = add nsw i32 %conv717, %conv719
  %399 = load i32, ptr %bits, align 4, !tbaa !8
  %cmp721 = icmp ule i32 %add720, %399
  br i1 %cmp721, label %if.then723, label %if.end724

if.then723:                                       ; preds = %for.cond697
  br label %for.end747

if.end724:                                        ; preds = %for.cond697
  br label %do.body725

do.body725:                                       ; preds = %if.end724
  br label %do.body726

do.body726:                                       ; preds = %do.body725
  %400 = load i32, ptr %have, align 4, !tbaa !8
  %cmp727 = icmp eq i32 %400, 0
  br i1 %cmp727, label %if.then729, label %if.end735

if.then729:                                       ; preds = %do.body726
  %401 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %402 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call730 = call i32 %401(ptr noundef %402, ptr noundef %next)
  store i32 %call730, ptr %have, align 4, !tbaa !8
  %403 = load i32, ptr %have, align 4, !tbaa !8
  %cmp731 = icmp eq i32 %403, 0
  br i1 %cmp731, label %if.then733, label %if.end734

if.then733:                                       ; preds = %if.then729
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end734:                                        ; preds = %if.then729
  br label %if.end735

if.end735:                                        ; preds = %if.end734, %do.body726
  br label %do.cond736

do.cond736:                                       ; preds = %if.end735
  br label %do.end737

do.end737:                                        ; preds = %do.cond736
  %404 = load i32, ptr %have, align 4, !tbaa !8
  %dec738 = add i32 %404, -1
  store i32 %dec738, ptr %have, align 4, !tbaa !8
  %405 = load ptr, ptr %next, align 8, !tbaa !4
  %incdec.ptr739 = getelementptr inbounds i8, ptr %405, i32 1
  store ptr %incdec.ptr739, ptr %next, align 8, !tbaa !4
  %406 = load i8, ptr %405, align 1, !tbaa !10
  %conv740 = zext i8 %406 to i64
  %407 = load i32, ptr %bits, align 4, !tbaa !8
  %sh_prom741 = zext i32 %407 to i64
  %shl742 = shl i64 %conv740, %sh_prom741
  %408 = load i64, ptr %hold, align 8, !tbaa !29
  %add743 = add i64 %408, %shl742
  store i64 %add743, ptr %hold, align 8, !tbaa !29
  %409 = load i32, ptr %bits, align 4, !tbaa !8
  %add744 = add i32 %409, 8
  store i32 %add744, ptr %bits, align 4, !tbaa !8
  br label %do.cond745

do.cond745:                                       ; preds = %do.end737
  br label %do.end746

do.end746:                                        ; preds = %do.cond745
  br label %for.cond697

for.end747:                                       ; preds = %if.then723
  br label %do.body748

do.body748:                                       ; preds = %for.end747
  %bits749 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %410 = load i8, ptr %bits749, align 1, !tbaa !49
  %conv750 = zext i8 %410 to i32
  %411 = load i64, ptr %hold, align 8, !tbaa !29
  %sh_prom751 = zext i32 %conv750 to i64
  %shr752 = lshr i64 %411, %sh_prom751
  store i64 %shr752, ptr %hold, align 8, !tbaa !29
  %bits753 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %412 = load i8, ptr %bits753, align 1, !tbaa !49
  %conv754 = zext i8 %412 to i32
  %413 = load i32, ptr %bits, align 4, !tbaa !8
  %sub755 = sub i32 %413, %conv754
  store i32 %sub755, ptr %bits, align 4, !tbaa !8
  br label %do.cond756

do.cond756:                                       ; preds = %do.body748
  br label %do.end757

do.end757:                                        ; preds = %do.cond756
  br label %if.end758

if.end758:                                        ; preds = %do.end757, %land.lhs.true690, %for.end687
  br label %do.body759

do.body759:                                       ; preds = %if.end758
  %bits760 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %414 = load i8, ptr %bits760, align 1, !tbaa !49
  %conv761 = zext i8 %414 to i32
  %415 = load i64, ptr %hold, align 8, !tbaa !29
  %sh_prom762 = zext i32 %conv761 to i64
  %shr763 = lshr i64 %415, %sh_prom762
  store i64 %shr763, ptr %hold, align 8, !tbaa !29
  %bits764 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %416 = load i8, ptr %bits764, align 1, !tbaa !49
  %conv765 = zext i8 %416 to i32
  %417 = load i32, ptr %bits, align 4, !tbaa !8
  %sub766 = sub i32 %417, %conv765
  store i32 %sub766, ptr %bits, align 4, !tbaa !8
  br label %do.cond767

do.cond767:                                       ; preds = %do.body759
  br label %do.end768

do.end768:                                        ; preds = %do.cond767
  %val769 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 2
  %418 = load i16, ptr %val769, align 2, !tbaa !51
  %conv770 = zext i16 %418 to i32
  %419 = load ptr, ptr %state, align 8, !tbaa !4
  %length771 = getelementptr inbounds %struct.inflate_state, ptr %419, i32 0, i32 16
  store i32 %conv770, ptr %length771, align 4, !tbaa !33
  %op772 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %420 = load i8, ptr %op772, align 2, !tbaa !63
  %conv773 = zext i8 %420 to i32
  %cmp774 = icmp eq i32 %conv773, 0
  br i1 %cmp774, label %if.then776, label %if.end796

if.then776:                                       ; preds = %do.end768
  br label %do.body777

do.body777:                                       ; preds = %if.then776
  %421 = load i32, ptr %left, align 4, !tbaa !8
  %cmp778 = icmp eq i32 %421, 0
  br i1 %cmp778, label %if.then780, label %if.end788

if.then780:                                       ; preds = %do.body777
  %422 = load ptr, ptr %state, align 8, !tbaa !4
  %window781 = getelementptr inbounds %struct.inflate_state, ptr %422, i32 0, i32 13
  %423 = load ptr, ptr %window781, align 8, !tbaa !22
  store ptr %423, ptr %put, align 8, !tbaa !4
  %424 = load ptr, ptr %state, align 8, !tbaa !4
  %wsize782 = getelementptr inbounds %struct.inflate_state, ptr %424, i32 0, i32 10
  %425 = load i32, ptr %wsize782, align 4, !tbaa !21
  store i32 %425, ptr %left, align 4, !tbaa !8
  %426 = load i32, ptr %left, align 4, !tbaa !8
  %427 = load ptr, ptr %state, align 8, !tbaa !4
  %whave783 = getelementptr inbounds %struct.inflate_state, ptr %427, i32 0, i32 11
  store i32 %426, ptr %whave783, align 8, !tbaa !24
  %428 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %429 = load ptr, ptr %out_desc.addr, align 8, !tbaa !4
  %430 = load ptr, ptr %put, align 8, !tbaa !4
  %431 = load i32, ptr %left, align 4, !tbaa !8
  %call784 = call i32 %428(ptr noundef %429, ptr noundef %430, i32 noundef %431)
  %tobool785 = icmp ne i32 %call784, 0
  br i1 %tobool785, label %if.then786, label %if.end787

if.then786:                                       ; preds = %if.then780
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end787:                                        ; preds = %if.then780
  br label %if.end788

if.end788:                                        ; preds = %if.end787, %do.body777
  br label %do.cond789

do.cond789:                                       ; preds = %if.end788
  br label %do.end790

do.end790:                                        ; preds = %do.cond789
  %432 = load ptr, ptr %state, align 8, !tbaa !4
  %length791 = getelementptr inbounds %struct.inflate_state, ptr %432, i32 0, i32 16
  %433 = load i32, ptr %length791, align 4, !tbaa !33
  %conv792 = trunc i32 %433 to i8
  %434 = load ptr, ptr %put, align 8, !tbaa !4
  %incdec.ptr793 = getelementptr inbounds i8, ptr %434, i32 1
  store ptr %incdec.ptr793, ptr %put, align 8, !tbaa !4
  store i8 %conv792, ptr %434, align 1, !tbaa !10
  %435 = load i32, ptr %left, align 4, !tbaa !8
  %dec794 = add i32 %435, -1
  store i32 %dec794, ptr %left, align 4, !tbaa !8
  %436 = load ptr, ptr %state, align 8, !tbaa !4
  %mode795 = getelementptr inbounds %struct.inflate_state, ptr %436, i32 0, i32 0
  store i32 20, ptr %mode795, align 8, !tbaa !25
  br label %sw.epilog1128

if.end796:                                        ; preds = %do.end768
  %op797 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %437 = load i8, ptr %op797, align 2, !tbaa !63
  %conv798 = zext i8 %437 to i32
  %and799 = and i32 %conv798, 32
  %tobool800 = icmp ne i32 %and799, 0
  br i1 %tobool800, label %if.then801, label %if.end803

if.then801:                                       ; preds = %if.end796
  %438 = load ptr, ptr %state, align 8, !tbaa !4
  %mode802 = getelementptr inbounds %struct.inflate_state, ptr %438, i32 0, i32 0
  store i32 11, ptr %mode802, align 8, !tbaa !25
  br label %sw.epilog1128

if.end803:                                        ; preds = %if.end796
  %op804 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %439 = load i8, ptr %op804, align 2, !tbaa !63
  %conv805 = zext i8 %439 to i32
  %and806 = and i32 %conv805, 64
  %tobool807 = icmp ne i32 %and806, 0
  br i1 %tobool807, label %if.then808, label %if.end811

if.then808:                                       ; preds = %if.end803
  %440 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %msg809 = getelementptr inbounds %struct.z_stream_s, ptr %440, i32 0, i32 6
  store ptr @.str.9, ptr %msg809, align 8, !tbaa !11
  %441 = load ptr, ptr %state, align 8, !tbaa !4
  %mode810 = getelementptr inbounds %struct.inflate_state, ptr %441, i32 0, i32 0
  store i32 29, ptr %mode810, align 8, !tbaa !25
  br label %sw.epilog1128

if.end811:                                        ; preds = %if.end803
  %op812 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %442 = load i8, ptr %op812, align 2, !tbaa !63
  %conv813 = zext i8 %442 to i32
  %and814 = and i32 %conv813, 15
  %443 = load ptr, ptr %state, align 8, !tbaa !4
  %extra = getelementptr inbounds %struct.inflate_state, ptr %443, i32 0, i32 18
  store i32 %and814, ptr %extra, align 4, !tbaa !64
  %444 = load ptr, ptr %state, align 8, !tbaa !4
  %extra815 = getelementptr inbounds %struct.inflate_state, ptr %444, i32 0, i32 18
  %445 = load i32, ptr %extra815, align 4, !tbaa !64
  %cmp816 = icmp ne i32 %445, 0
  br i1 %cmp816, label %if.then818, label %if.end865

if.then818:                                       ; preds = %if.end811
  br label %do.body819

do.body819:                                       ; preds = %if.then818
  br label %while.cond820

while.cond820:                                    ; preds = %do.end846, %do.body819
  %446 = load i32, ptr %bits, align 4, !tbaa !8
  %447 = load ptr, ptr %state, align 8, !tbaa !4
  %extra821 = getelementptr inbounds %struct.inflate_state, ptr %447, i32 0, i32 18
  %448 = load i32, ptr %extra821, align 4, !tbaa !64
  %cmp822 = icmp ult i32 %446, %448
  br i1 %cmp822, label %while.body824, label %while.end847

while.body824:                                    ; preds = %while.cond820
  br label %do.body825

do.body825:                                       ; preds = %while.body824
  br label %do.body826

do.body826:                                       ; preds = %do.body825
  %449 = load i32, ptr %have, align 4, !tbaa !8
  %cmp827 = icmp eq i32 %449, 0
  br i1 %cmp827, label %if.then829, label %if.end835

if.then829:                                       ; preds = %do.body826
  %450 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %451 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call830 = call i32 %450(ptr noundef %451, ptr noundef %next)
  store i32 %call830, ptr %have, align 4, !tbaa !8
  %452 = load i32, ptr %have, align 4, !tbaa !8
  %cmp831 = icmp eq i32 %452, 0
  br i1 %cmp831, label %if.then833, label %if.end834

if.then833:                                       ; preds = %if.then829
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end834:                                        ; preds = %if.then829
  br label %if.end835

if.end835:                                        ; preds = %if.end834, %do.body826
  br label %do.cond836

do.cond836:                                       ; preds = %if.end835
  br label %do.end837

do.end837:                                        ; preds = %do.cond836
  %453 = load i32, ptr %have, align 4, !tbaa !8
  %dec838 = add i32 %453, -1
  store i32 %dec838, ptr %have, align 4, !tbaa !8
  %454 = load ptr, ptr %next, align 8, !tbaa !4
  %incdec.ptr839 = getelementptr inbounds i8, ptr %454, i32 1
  store ptr %incdec.ptr839, ptr %next, align 8, !tbaa !4
  %455 = load i8, ptr %454, align 1, !tbaa !10
  %conv840 = zext i8 %455 to i64
  %456 = load i32, ptr %bits, align 4, !tbaa !8
  %sh_prom841 = zext i32 %456 to i64
  %shl842 = shl i64 %conv840, %sh_prom841
  %457 = load i64, ptr %hold, align 8, !tbaa !29
  %add843 = add i64 %457, %shl842
  store i64 %add843, ptr %hold, align 8, !tbaa !29
  %458 = load i32, ptr %bits, align 4, !tbaa !8
  %add844 = add i32 %458, 8
  store i32 %add844, ptr %bits, align 4, !tbaa !8
  br label %do.cond845

do.cond845:                                       ; preds = %do.end837
  br label %do.end846

do.end846:                                        ; preds = %do.cond845
  br label %while.cond820, !llvm.loop !65

while.end847:                                     ; preds = %while.cond820
  br label %do.cond848

do.cond848:                                       ; preds = %while.end847
  br label %do.end849

do.end849:                                        ; preds = %do.cond848
  %459 = load i64, ptr %hold, align 8, !tbaa !29
  %conv850 = trunc i64 %459 to i32
  %460 = load ptr, ptr %state, align 8, !tbaa !4
  %extra851 = getelementptr inbounds %struct.inflate_state, ptr %460, i32 0, i32 18
  %461 = load i32, ptr %extra851, align 4, !tbaa !64
  %shl852 = shl i32 1, %461
  %sub853 = sub i32 %shl852, 1
  %and854 = and i32 %conv850, %sub853
  %462 = load ptr, ptr %state, align 8, !tbaa !4
  %length855 = getelementptr inbounds %struct.inflate_state, ptr %462, i32 0, i32 16
  %463 = load i32, ptr %length855, align 4, !tbaa !33
  %add856 = add i32 %463, %and854
  store i32 %add856, ptr %length855, align 4, !tbaa !33
  br label %do.body857

do.body857:                                       ; preds = %do.end849
  %464 = load ptr, ptr %state, align 8, !tbaa !4
  %extra858 = getelementptr inbounds %struct.inflate_state, ptr %464, i32 0, i32 18
  %465 = load i32, ptr %extra858, align 4, !tbaa !64
  %466 = load i64, ptr %hold, align 8, !tbaa !29
  %sh_prom859 = zext i32 %465 to i64
  %shr860 = lshr i64 %466, %sh_prom859
  store i64 %shr860, ptr %hold, align 8, !tbaa !29
  %467 = load ptr, ptr %state, align 8, !tbaa !4
  %extra861 = getelementptr inbounds %struct.inflate_state, ptr %467, i32 0, i32 18
  %468 = load i32, ptr %extra861, align 4, !tbaa !64
  %469 = load i32, ptr %bits, align 4, !tbaa !8
  %sub862 = sub i32 %469, %468
  store i32 %sub862, ptr %bits, align 4, !tbaa !8
  br label %do.cond863

do.cond863:                                       ; preds = %do.body857
  br label %do.end864

do.end864:                                        ; preds = %do.cond863
  br label %if.end865

if.end865:                                        ; preds = %do.end864, %if.end811
  br label %for.cond866

for.cond866:                                      ; preds = %do.end902, %if.end865
  %470 = load ptr, ptr %state, align 8, !tbaa !4
  %distcode867 = getelementptr inbounds %struct.inflate_state, ptr %470, i32 0, i32 20
  %471 = load ptr, ptr %distcode867, align 8, !tbaa !57
  %472 = load i64, ptr %hold, align 8, !tbaa !29
  %conv868 = trunc i64 %472 to i32
  %473 = load ptr, ptr %state, align 8, !tbaa !4
  %distbits869 = getelementptr inbounds %struct.inflate_state, ptr %473, i32 0, i32 22
  %474 = load i32, ptr %distbits869, align 4, !tbaa !58
  %shl870 = shl i32 1, %474
  %sub871 = sub i32 %shl870, 1
  %and872 = and i32 %conv868, %sub871
  %idxprom873 = zext i32 %and872 to i64
  %arrayidx874 = getelementptr inbounds %struct.code, ptr %471, i64 %idxprom873
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %here, ptr align 2 %arrayidx874, i64 4, i1 false), !tbaa.struct !48
  %bits875 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %475 = load i8, ptr %bits875, align 1, !tbaa !49
  %conv876 = zext i8 %475 to i32
  %476 = load i32, ptr %bits, align 4, !tbaa !8
  %cmp877 = icmp ule i32 %conv876, %476
  br i1 %cmp877, label %if.then879, label %if.end880

if.then879:                                       ; preds = %for.cond866
  br label %for.end903

if.end880:                                        ; preds = %for.cond866
  br label %do.body881

do.body881:                                       ; preds = %if.end880
  br label %do.body882

do.body882:                                       ; preds = %do.body881
  %477 = load i32, ptr %have, align 4, !tbaa !8
  %cmp883 = icmp eq i32 %477, 0
  br i1 %cmp883, label %if.then885, label %if.end891

if.then885:                                       ; preds = %do.body882
  %478 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %479 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call886 = call i32 %478(ptr noundef %479, ptr noundef %next)
  store i32 %call886, ptr %have, align 4, !tbaa !8
  %480 = load i32, ptr %have, align 4, !tbaa !8
  %cmp887 = icmp eq i32 %480, 0
  br i1 %cmp887, label %if.then889, label %if.end890

if.then889:                                       ; preds = %if.then885
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end890:                                        ; preds = %if.then885
  br label %if.end891

if.end891:                                        ; preds = %if.end890, %do.body882
  br label %do.cond892

do.cond892:                                       ; preds = %if.end891
  br label %do.end893

do.end893:                                        ; preds = %do.cond892
  %481 = load i32, ptr %have, align 4, !tbaa !8
  %dec894 = add i32 %481, -1
  store i32 %dec894, ptr %have, align 4, !tbaa !8
  %482 = load ptr, ptr %next, align 8, !tbaa !4
  %incdec.ptr895 = getelementptr inbounds i8, ptr %482, i32 1
  store ptr %incdec.ptr895, ptr %next, align 8, !tbaa !4
  %483 = load i8, ptr %482, align 1, !tbaa !10
  %conv896 = zext i8 %483 to i64
  %484 = load i32, ptr %bits, align 4, !tbaa !8
  %sh_prom897 = zext i32 %484 to i64
  %shl898 = shl i64 %conv896, %sh_prom897
  %485 = load i64, ptr %hold, align 8, !tbaa !29
  %add899 = add i64 %485, %shl898
  store i64 %add899, ptr %hold, align 8, !tbaa !29
  %486 = load i32, ptr %bits, align 4, !tbaa !8
  %add900 = add i32 %486, 8
  store i32 %add900, ptr %bits, align 4, !tbaa !8
  br label %do.cond901

do.cond901:                                       ; preds = %do.end893
  br label %do.end902

do.end902:                                        ; preds = %do.cond901
  br label %for.cond866

for.end903:                                       ; preds = %if.then879
  %op904 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %487 = load i8, ptr %op904, align 2, !tbaa !63
  %conv905 = zext i8 %487 to i32
  %and906 = and i32 %conv905, 240
  %cmp907 = icmp eq i32 %and906, 0
  br i1 %cmp907, label %if.then909, label %if.end971

if.then909:                                       ; preds = %for.end903
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %last, ptr align 2 %here, i64 4, i1 false), !tbaa.struct !48
  br label %for.cond910

for.cond910:                                      ; preds = %do.end959, %if.then909
  %488 = load ptr, ptr %state, align 8, !tbaa !4
  %distcode911 = getelementptr inbounds %struct.inflate_state, ptr %488, i32 0, i32 20
  %489 = load ptr, ptr %distcode911, align 8, !tbaa !57
  %val912 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 2
  %490 = load i16, ptr %val912, align 2, !tbaa !51
  %conv913 = zext i16 %490 to i32
  %491 = load i64, ptr %hold, align 8, !tbaa !29
  %conv914 = trunc i64 %491 to i32
  %bits915 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %492 = load i8, ptr %bits915, align 1, !tbaa !49
  %conv916 = zext i8 %492 to i32
  %op917 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 0
  %493 = load i8, ptr %op917, align 2, !tbaa !63
  %conv918 = zext i8 %493 to i32
  %add919 = add nsw i32 %conv916, %conv918
  %shl920 = shl i32 1, %add919
  %sub921 = sub i32 %shl920, 1
  %and922 = and i32 %conv914, %sub921
  %bits923 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %494 = load i8, ptr %bits923, align 1, !tbaa !49
  %conv924 = zext i8 %494 to i32
  %shr925 = lshr i32 %and922, %conv924
  %add926 = add i32 %conv913, %shr925
  %idxprom927 = zext i32 %add926 to i64
  %arrayidx928 = getelementptr inbounds %struct.code, ptr %489, i64 %idxprom927
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %here, ptr align 2 %arrayidx928, i64 4, i1 false), !tbaa.struct !48
  %bits929 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %495 = load i8, ptr %bits929, align 1, !tbaa !49
  %conv930 = zext i8 %495 to i32
  %bits931 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %496 = load i8, ptr %bits931, align 1, !tbaa !49
  %conv932 = zext i8 %496 to i32
  %add933 = add nsw i32 %conv930, %conv932
  %497 = load i32, ptr %bits, align 4, !tbaa !8
  %cmp934 = icmp ule i32 %add933, %497
  br i1 %cmp934, label %if.then936, label %if.end937

if.then936:                                       ; preds = %for.cond910
  br label %for.end960

if.end937:                                        ; preds = %for.cond910
  br label %do.body938

do.body938:                                       ; preds = %if.end937
  br label %do.body939

do.body939:                                       ; preds = %do.body938
  %498 = load i32, ptr %have, align 4, !tbaa !8
  %cmp940 = icmp eq i32 %498, 0
  br i1 %cmp940, label %if.then942, label %if.end948

if.then942:                                       ; preds = %do.body939
  %499 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %500 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call943 = call i32 %499(ptr noundef %500, ptr noundef %next)
  store i32 %call943, ptr %have, align 4, !tbaa !8
  %501 = load i32, ptr %have, align 4, !tbaa !8
  %cmp944 = icmp eq i32 %501, 0
  br i1 %cmp944, label %if.then946, label %if.end947

if.then946:                                       ; preds = %if.then942
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end947:                                        ; preds = %if.then942
  br label %if.end948

if.end948:                                        ; preds = %if.end947, %do.body939
  br label %do.cond949

do.cond949:                                       ; preds = %if.end948
  br label %do.end950

do.end950:                                        ; preds = %do.cond949
  %502 = load i32, ptr %have, align 4, !tbaa !8
  %dec951 = add i32 %502, -1
  store i32 %dec951, ptr %have, align 4, !tbaa !8
  %503 = load ptr, ptr %next, align 8, !tbaa !4
  %incdec.ptr952 = getelementptr inbounds i8, ptr %503, i32 1
  store ptr %incdec.ptr952, ptr %next, align 8, !tbaa !4
  %504 = load i8, ptr %503, align 1, !tbaa !10
  %conv953 = zext i8 %504 to i64
  %505 = load i32, ptr %bits, align 4, !tbaa !8
  %sh_prom954 = zext i32 %505 to i64
  %shl955 = shl i64 %conv953, %sh_prom954
  %506 = load i64, ptr %hold, align 8, !tbaa !29
  %add956 = add i64 %506, %shl955
  store i64 %add956, ptr %hold, align 8, !tbaa !29
  %507 = load i32, ptr %bits, align 4, !tbaa !8
  %add957 = add i32 %507, 8
  store i32 %add957, ptr %bits, align 4, !tbaa !8
  br label %do.cond958

do.cond958:                                       ; preds = %do.end950
  br label %do.end959

do.end959:                                        ; preds = %do.cond958
  br label %for.cond910

for.end960:                                       ; preds = %if.then936
  br label %do.body961

do.body961:                                       ; preds = %for.end960
  %bits962 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %508 = load i8, ptr %bits962, align 1, !tbaa !49
  %conv963 = zext i8 %508 to i32
  %509 = load i64, ptr %hold, align 8, !tbaa !29
  %sh_prom964 = zext i32 %conv963 to i64
  %shr965 = lshr i64 %509, %sh_prom964
  store i64 %shr965, ptr %hold, align 8, !tbaa !29
  %bits966 = getelementptr inbounds %struct.code, ptr %last, i32 0, i32 1
  %510 = load i8, ptr %bits966, align 1, !tbaa !49
  %conv967 = zext i8 %510 to i32
  %511 = load i32, ptr %bits, align 4, !tbaa !8
  %sub968 = sub i32 %511, %conv967
  store i32 %sub968, ptr %bits, align 4, !tbaa !8
  br label %do.cond969

do.cond969:                                       ; preds = %do.body961
  br label %do.end970

do.end970:                                        ; preds = %do.cond969
  br label %if.end971

if.end971:                                        ; preds = %do.end970, %for.end903
  br label %do.body972

do.body972:                                       ; preds = %if.end971
  %bits973 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %512 = load i8, ptr %bits973, align 1, !tbaa !49
  %conv974 = zext i8 %512 to i32
  %513 = load i64, ptr %hold, align 8, !tbaa !29
  %sh_prom975 = zext i32 %conv974 to i64
  %shr976 = lshr i64 %513, %sh_prom975
  store i64 %shr976, ptr %hold, align 8, !tbaa !29
  %bits977 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 1
  %514 = load i8, ptr %bits977, align 1, !tbaa !49
  %conv978 = zext i8 %514 to i32
  %515 = load i32, ptr %bits, align 4, !tbaa !8
  %sub979 = sub i32 %515, %conv978
  store i32 %sub979, ptr %bits, align 4, !tbaa !8
  br label %do.cond980

do.cond980:                                       ; preds = %do.body972
  br label %do.end981

do.end981:                                        ; preds = %do.cond980
  %op982 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %516 = load i8, ptr %op982, align 2, !tbaa !63
  %conv983 = zext i8 %516 to i32
  %and984 = and i32 %conv983, 64
  %tobool985 = icmp ne i32 %and984, 0
  br i1 %tobool985, label %if.then986, label %if.end989

if.then986:                                       ; preds = %do.end981
  %517 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %msg987 = getelementptr inbounds %struct.z_stream_s, ptr %517, i32 0, i32 6
  store ptr @.str.10, ptr %msg987, align 8, !tbaa !11
  %518 = load ptr, ptr %state, align 8, !tbaa !4
  %mode988 = getelementptr inbounds %struct.inflate_state, ptr %518, i32 0, i32 0
  store i32 29, ptr %mode988, align 8, !tbaa !25
  br label %sw.epilog1128

if.end989:                                        ; preds = %do.end981
  %val990 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 2
  %519 = load i16, ptr %val990, align 2, !tbaa !51
  %conv991 = zext i16 %519 to i32
  %520 = load ptr, ptr %state, align 8, !tbaa !4
  %offset = getelementptr inbounds %struct.inflate_state, ptr %520, i32 0, i32 17
  store i32 %conv991, ptr %offset, align 8, !tbaa !66
  %op992 = getelementptr inbounds %struct.code, ptr %here, i32 0, i32 0
  %521 = load i8, ptr %op992, align 2, !tbaa !63
  %conv993 = zext i8 %521 to i32
  %and994 = and i32 %conv993, 15
  %522 = load ptr, ptr %state, align 8, !tbaa !4
  %extra995 = getelementptr inbounds %struct.inflate_state, ptr %522, i32 0, i32 18
  store i32 %and994, ptr %extra995, align 4, !tbaa !64
  %523 = load ptr, ptr %state, align 8, !tbaa !4
  %extra996 = getelementptr inbounds %struct.inflate_state, ptr %523, i32 0, i32 18
  %524 = load i32, ptr %extra996, align 4, !tbaa !64
  %cmp997 = icmp ne i32 %524, 0
  br i1 %cmp997, label %if.then999, label %if.end1046

if.then999:                                       ; preds = %if.end989
  br label %do.body1000

do.body1000:                                      ; preds = %if.then999
  br label %while.cond1001

while.cond1001:                                   ; preds = %do.end1027, %do.body1000
  %525 = load i32, ptr %bits, align 4, !tbaa !8
  %526 = load ptr, ptr %state, align 8, !tbaa !4
  %extra1002 = getelementptr inbounds %struct.inflate_state, ptr %526, i32 0, i32 18
  %527 = load i32, ptr %extra1002, align 4, !tbaa !64
  %cmp1003 = icmp ult i32 %525, %527
  br i1 %cmp1003, label %while.body1005, label %while.end1028

while.body1005:                                   ; preds = %while.cond1001
  br label %do.body1006

do.body1006:                                      ; preds = %while.body1005
  br label %do.body1007

do.body1007:                                      ; preds = %do.body1006
  %528 = load i32, ptr %have, align 4, !tbaa !8
  %cmp1008 = icmp eq i32 %528, 0
  br i1 %cmp1008, label %if.then1010, label %if.end1016

if.then1010:                                      ; preds = %do.body1007
  %529 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %530 = load ptr, ptr %in_desc.addr, align 8, !tbaa !4
  %call1011 = call i32 %529(ptr noundef %530, ptr noundef %next)
  store i32 %call1011, ptr %have, align 4, !tbaa !8
  %531 = load i32, ptr %have, align 4, !tbaa !8
  %cmp1012 = icmp eq i32 %531, 0
  br i1 %cmp1012, label %if.then1014, label %if.end1015

if.then1014:                                      ; preds = %if.then1010
  store ptr null, ptr %next, align 8, !tbaa !4
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end1015:                                       ; preds = %if.then1010
  br label %if.end1016

if.end1016:                                       ; preds = %if.end1015, %do.body1007
  br label %do.cond1017

do.cond1017:                                      ; preds = %if.end1016
  br label %do.end1018

do.end1018:                                       ; preds = %do.cond1017
  %532 = load i32, ptr %have, align 4, !tbaa !8
  %dec1019 = add i32 %532, -1
  store i32 %dec1019, ptr %have, align 4, !tbaa !8
  %533 = load ptr, ptr %next, align 8, !tbaa !4
  %incdec.ptr1020 = getelementptr inbounds i8, ptr %533, i32 1
  store ptr %incdec.ptr1020, ptr %next, align 8, !tbaa !4
  %534 = load i8, ptr %533, align 1, !tbaa !10
  %conv1021 = zext i8 %534 to i64
  %535 = load i32, ptr %bits, align 4, !tbaa !8
  %sh_prom1022 = zext i32 %535 to i64
  %shl1023 = shl i64 %conv1021, %sh_prom1022
  %536 = load i64, ptr %hold, align 8, !tbaa !29
  %add1024 = add i64 %536, %shl1023
  store i64 %add1024, ptr %hold, align 8, !tbaa !29
  %537 = load i32, ptr %bits, align 4, !tbaa !8
  %add1025 = add i32 %537, 8
  store i32 %add1025, ptr %bits, align 4, !tbaa !8
  br label %do.cond1026

do.cond1026:                                      ; preds = %do.end1018
  br label %do.end1027

do.end1027:                                       ; preds = %do.cond1026
  br label %while.cond1001, !llvm.loop !67

while.end1028:                                    ; preds = %while.cond1001
  br label %do.cond1029

do.cond1029:                                      ; preds = %while.end1028
  br label %do.end1030

do.end1030:                                       ; preds = %do.cond1029
  %538 = load i64, ptr %hold, align 8, !tbaa !29
  %conv1031 = trunc i64 %538 to i32
  %539 = load ptr, ptr %state, align 8, !tbaa !4
  %extra1032 = getelementptr inbounds %struct.inflate_state, ptr %539, i32 0, i32 18
  %540 = load i32, ptr %extra1032, align 4, !tbaa !64
  %shl1033 = shl i32 1, %540
  %sub1034 = sub i32 %shl1033, 1
  %and1035 = and i32 %conv1031, %sub1034
  %541 = load ptr, ptr %state, align 8, !tbaa !4
  %offset1036 = getelementptr inbounds %struct.inflate_state, ptr %541, i32 0, i32 17
  %542 = load i32, ptr %offset1036, align 8, !tbaa !66
  %add1037 = add i32 %542, %and1035
  store i32 %add1037, ptr %offset1036, align 8, !tbaa !66
  br label %do.body1038

do.body1038:                                      ; preds = %do.end1030
  %543 = load ptr, ptr %state, align 8, !tbaa !4
  %extra1039 = getelementptr inbounds %struct.inflate_state, ptr %543, i32 0, i32 18
  %544 = load i32, ptr %extra1039, align 4, !tbaa !64
  %545 = load i64, ptr %hold, align 8, !tbaa !29
  %sh_prom1040 = zext i32 %544 to i64
  %shr1041 = lshr i64 %545, %sh_prom1040
  store i64 %shr1041, ptr %hold, align 8, !tbaa !29
  %546 = load ptr, ptr %state, align 8, !tbaa !4
  %extra1042 = getelementptr inbounds %struct.inflate_state, ptr %546, i32 0, i32 18
  %547 = load i32, ptr %extra1042, align 4, !tbaa !64
  %548 = load i32, ptr %bits, align 4, !tbaa !8
  %sub1043 = sub i32 %548, %547
  store i32 %sub1043, ptr %bits, align 4, !tbaa !8
  br label %do.cond1044

do.cond1044:                                      ; preds = %do.body1038
  br label %do.end1045

do.end1045:                                       ; preds = %do.cond1044
  br label %if.end1046

if.end1046:                                       ; preds = %do.end1045, %if.end989
  %549 = load ptr, ptr %state, align 8, !tbaa !4
  %offset1047 = getelementptr inbounds %struct.inflate_state, ptr %549, i32 0, i32 17
  %550 = load i32, ptr %offset1047, align 8, !tbaa !66
  %551 = load ptr, ptr %state, align 8, !tbaa !4
  %wsize1048 = getelementptr inbounds %struct.inflate_state, ptr %551, i32 0, i32 10
  %552 = load i32, ptr %wsize1048, align 4, !tbaa !21
  %553 = load ptr, ptr %state, align 8, !tbaa !4
  %whave1049 = getelementptr inbounds %struct.inflate_state, ptr %553, i32 0, i32 11
  %554 = load i32, ptr %whave1049, align 8, !tbaa !24
  %555 = load ptr, ptr %state, align 8, !tbaa !4
  %wsize1050 = getelementptr inbounds %struct.inflate_state, ptr %555, i32 0, i32 10
  %556 = load i32, ptr %wsize1050, align 4, !tbaa !21
  %cmp1051 = icmp ult i32 %554, %556
  br i1 %cmp1051, label %cond.true1053, label %cond.false1054

cond.true1053:                                    ; preds = %if.end1046
  %557 = load i32, ptr %left, align 4, !tbaa !8
  br label %cond.end1055

cond.false1054:                                   ; preds = %if.end1046
  br label %cond.end1055

cond.end1055:                                     ; preds = %cond.false1054, %cond.true1053
  %cond1056 = phi i32 [ %557, %cond.true1053 ], [ 0, %cond.false1054 ]
  %sub1057 = sub i32 %552, %cond1056
  %cmp1058 = icmp ugt i32 %550, %sub1057
  br i1 %cmp1058, label %if.then1060, label %if.end1063

if.then1060:                                      ; preds = %cond.end1055
  %558 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %msg1061 = getelementptr inbounds %struct.z_stream_s, ptr %558, i32 0, i32 6
  store ptr @.str.11, ptr %msg1061, align 8, !tbaa !11
  %559 = load ptr, ptr %state, align 8, !tbaa !4
  %mode1062 = getelementptr inbounds %struct.inflate_state, ptr %559, i32 0, i32 0
  store i32 29, ptr %mode1062, align 8, !tbaa !25
  br label %sw.epilog1128

if.end1063:                                       ; preds = %cond.end1055
  br label %do.body1064

do.body1064:                                      ; preds = %do.cond1109, %if.end1063
  br label %do.body1065

do.body1065:                                      ; preds = %do.body1064
  %560 = load i32, ptr %left, align 4, !tbaa !8
  %cmp1066 = icmp eq i32 %560, 0
  br i1 %cmp1066, label %if.then1068, label %if.end1076

if.then1068:                                      ; preds = %do.body1065
  %561 = load ptr, ptr %state, align 8, !tbaa !4
  %window1069 = getelementptr inbounds %struct.inflate_state, ptr %561, i32 0, i32 13
  %562 = load ptr, ptr %window1069, align 8, !tbaa !22
  store ptr %562, ptr %put, align 8, !tbaa !4
  %563 = load ptr, ptr %state, align 8, !tbaa !4
  %wsize1070 = getelementptr inbounds %struct.inflate_state, ptr %563, i32 0, i32 10
  %564 = load i32, ptr %wsize1070, align 4, !tbaa !21
  store i32 %564, ptr %left, align 4, !tbaa !8
  %565 = load i32, ptr %left, align 4, !tbaa !8
  %566 = load ptr, ptr %state, align 8, !tbaa !4
  %whave1071 = getelementptr inbounds %struct.inflate_state, ptr %566, i32 0, i32 11
  store i32 %565, ptr %whave1071, align 8, !tbaa !24
  %567 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %568 = load ptr, ptr %out_desc.addr, align 8, !tbaa !4
  %569 = load ptr, ptr %put, align 8, !tbaa !4
  %570 = load i32, ptr %left, align 4, !tbaa !8
  %call1072 = call i32 %567(ptr noundef %568, ptr noundef %569, i32 noundef %570)
  %tobool1073 = icmp ne i32 %call1072, 0
  br i1 %tobool1073, label %if.then1074, label %if.end1075

if.then1074:                                      ; preds = %if.then1068
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

if.end1075:                                       ; preds = %if.then1068
  br label %if.end1076

if.end1076:                                       ; preds = %if.end1075, %do.body1065
  br label %do.cond1077

do.cond1077:                                      ; preds = %if.end1076
  br label %do.end1078

do.end1078:                                       ; preds = %do.cond1077
  %571 = load ptr, ptr %state, align 8, !tbaa !4
  %wsize1079 = getelementptr inbounds %struct.inflate_state, ptr %571, i32 0, i32 10
  %572 = load i32, ptr %wsize1079, align 4, !tbaa !21
  %573 = load ptr, ptr %state, align 8, !tbaa !4
  %offset1080 = getelementptr inbounds %struct.inflate_state, ptr %573, i32 0, i32 17
  %574 = load i32, ptr %offset1080, align 8, !tbaa !66
  %sub1081 = sub i32 %572, %574
  store i32 %sub1081, ptr %copy, align 4, !tbaa !8
  %575 = load i32, ptr %copy, align 4, !tbaa !8
  %576 = load i32, ptr %left, align 4, !tbaa !8
  %cmp1082 = icmp ult i32 %575, %576
  br i1 %cmp1082, label %if.then1084, label %if.else1088

if.then1084:                                      ; preds = %do.end1078
  %577 = load ptr, ptr %put, align 8, !tbaa !4
  %578 = load i32, ptr %copy, align 4, !tbaa !8
  %idx.ext1085 = zext i32 %578 to i64
  %add.ptr1086 = getelementptr inbounds i8, ptr %577, i64 %idx.ext1085
  store ptr %add.ptr1086, ptr %from, align 8, !tbaa !4
  %579 = load i32, ptr %left, align 4, !tbaa !8
  %580 = load i32, ptr %copy, align 4, !tbaa !8
  %sub1087 = sub i32 %579, %580
  store i32 %sub1087, ptr %copy, align 4, !tbaa !8
  br label %if.end1092

if.else1088:                                      ; preds = %do.end1078
  %581 = load ptr, ptr %put, align 8, !tbaa !4
  %582 = load ptr, ptr %state, align 8, !tbaa !4
  %offset1089 = getelementptr inbounds %struct.inflate_state, ptr %582, i32 0, i32 17
  %583 = load i32, ptr %offset1089, align 8, !tbaa !66
  %idx.ext1090 = zext i32 %583 to i64
  %idx.neg = sub i64 0, %idx.ext1090
  %add.ptr1091 = getelementptr inbounds i8, ptr %581, i64 %idx.neg
  store ptr %add.ptr1091, ptr %from, align 8, !tbaa !4
  %584 = load i32, ptr %left, align 4, !tbaa !8
  store i32 %584, ptr %copy, align 4, !tbaa !8
  br label %if.end1092

if.end1092:                                       ; preds = %if.else1088, %if.then1084
  %585 = load i32, ptr %copy, align 4, !tbaa !8
  %586 = load ptr, ptr %state, align 8, !tbaa !4
  %length1093 = getelementptr inbounds %struct.inflate_state, ptr %586, i32 0, i32 16
  %587 = load i32, ptr %length1093, align 4, !tbaa !33
  %cmp1094 = icmp ugt i32 %585, %587
  br i1 %cmp1094, label %if.then1096, label %if.end1098

if.then1096:                                      ; preds = %if.end1092
  %588 = load ptr, ptr %state, align 8, !tbaa !4
  %length1097 = getelementptr inbounds %struct.inflate_state, ptr %588, i32 0, i32 16
  %589 = load i32, ptr %length1097, align 4, !tbaa !33
  store i32 %589, ptr %copy, align 4, !tbaa !8
  br label %if.end1098

if.end1098:                                       ; preds = %if.then1096, %if.end1092
  %590 = load i32, ptr %copy, align 4, !tbaa !8
  %591 = load ptr, ptr %state, align 8, !tbaa !4
  %length1099 = getelementptr inbounds %struct.inflate_state, ptr %591, i32 0, i32 16
  %592 = load i32, ptr %length1099, align 4, !tbaa !33
  %sub1100 = sub i32 %592, %590
  store i32 %sub1100, ptr %length1099, align 4, !tbaa !33
  %593 = load i32, ptr %copy, align 4, !tbaa !8
  %594 = load i32, ptr %left, align 4, !tbaa !8
  %sub1101 = sub i32 %594, %593
  store i32 %sub1101, ptr %left, align 4, !tbaa !8
  br label %do.body1102

do.body1102:                                      ; preds = %do.cond1105, %if.end1098
  %595 = load ptr, ptr %from, align 8, !tbaa !4
  %incdec.ptr1103 = getelementptr inbounds i8, ptr %595, i32 1
  store ptr %incdec.ptr1103, ptr %from, align 8, !tbaa !4
  %596 = load i8, ptr %595, align 1, !tbaa !10
  %597 = load ptr, ptr %put, align 8, !tbaa !4
  %incdec.ptr1104 = getelementptr inbounds i8, ptr %597, i32 1
  store ptr %incdec.ptr1104, ptr %put, align 8, !tbaa !4
  store i8 %596, ptr %597, align 1, !tbaa !10
  br label %do.cond1105

do.cond1105:                                      ; preds = %do.body1102
  %598 = load i32, ptr %copy, align 4, !tbaa !8
  %dec1106 = add i32 %598, -1
  store i32 %dec1106, ptr %copy, align 4, !tbaa !8
  %tobool1107 = icmp ne i32 %dec1106, 0
  br i1 %tobool1107, label %do.body1102, label %do.end1108, !llvm.loop !68

do.end1108:                                       ; preds = %do.cond1105
  br label %do.cond1109

do.cond1109:                                      ; preds = %do.end1108
  %599 = load ptr, ptr %state, align 8, !tbaa !4
  %length1110 = getelementptr inbounds %struct.inflate_state, ptr %599, i32 0, i32 16
  %600 = load i32, ptr %length1110, align 4, !tbaa !33
  %cmp1111 = icmp ne i32 %600, 0
  br i1 %cmp1111, label %do.body1064, label %do.end1113, !llvm.loop !69

do.end1113:                                       ; preds = %do.cond1109
  br label %sw.epilog1128

sw.bb1114:                                        ; preds = %for.cond
  store i32 1, ptr %ret, align 4, !tbaa !8
  %601 = load i32, ptr %left, align 4, !tbaa !8
  %602 = load ptr, ptr %state, align 8, !tbaa !4
  %wsize1115 = getelementptr inbounds %struct.inflate_state, ptr %602, i32 0, i32 10
  %603 = load i32, ptr %wsize1115, align 4, !tbaa !21
  %cmp1116 = icmp ult i32 %601, %603
  br i1 %cmp1116, label %if.then1118, label %if.end1126

if.then1118:                                      ; preds = %sw.bb1114
  %604 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %605 = load ptr, ptr %out_desc.addr, align 8, !tbaa !4
  %606 = load ptr, ptr %state, align 8, !tbaa !4
  %window1119 = getelementptr inbounds %struct.inflate_state, ptr %606, i32 0, i32 13
  %607 = load ptr, ptr %window1119, align 8, !tbaa !22
  %608 = load ptr, ptr %state, align 8, !tbaa !4
  %wsize1120 = getelementptr inbounds %struct.inflate_state, ptr %608, i32 0, i32 10
  %609 = load i32, ptr %wsize1120, align 4, !tbaa !21
  %610 = load i32, ptr %left, align 4, !tbaa !8
  %sub1121 = sub i32 %609, %610
  %call1122 = call i32 %604(ptr noundef %605, ptr noundef %607, i32 noundef %sub1121)
  %tobool1123 = icmp ne i32 %call1122, 0
  br i1 %tobool1123, label %if.then1124, label %if.end1125

if.then1124:                                      ; preds = %if.then1118
  store i32 -5, ptr %ret, align 4, !tbaa !8
  br label %if.end1125

if.end1125:                                       ; preds = %if.then1124, %if.then1118
  br label %if.end1126

if.end1126:                                       ; preds = %if.end1125, %sw.bb1114
  br label %inf_leave

sw.bb1127:                                        ; preds = %for.cond
  store i32 -3, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

sw.default:                                       ; preds = %for.cond
  store i32 -2, ptr %ret, align 4, !tbaa !8
  br label %inf_leave

sw.epilog1128:                                    ; preds = %do.end1113, %if.then1060, %if.then986, %if.then808, %if.then801, %do.end790, %do.end648, %if.then612, %if.then595, %if.then576, %if.then569, %if.then292, %if.then217, %while.end153, %if.then97, %do.end53, %do.end
  br label %for.cond

inf_leave:                                        ; preds = %sw.default, %sw.bb1127, %if.end1126, %if.then1074, %if.then1014, %if.then946, %if.then889, %if.then833, %if.then786, %if.then733, %if.then673, %if.then505, %if.then453, %if.then383, %if.then328, %if.then241, %if.then169, %if.then133, %if.then119, %if.then76, %if.then19
  %611 = load ptr, ptr %next, align 8, !tbaa !4
  %612 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %next_in1129 = getelementptr inbounds %struct.z_stream_s, ptr %612, i32 0, i32 0
  store ptr %611, ptr %next_in1129, align 8, !tbaa !27
  %613 = load i32, ptr %have, align 4, !tbaa !8
  %614 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %avail_in1130 = getelementptr inbounds %struct.z_stream_s, ptr %614, i32 0, i32 1
  store i32 %613, ptr %avail_in1130, align 8, !tbaa !28
  %615 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %615, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %inf_leave, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %here) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %from) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %copy) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %hold) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %have) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %put) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #4
  %616 = load i32, ptr %retval, align 4
  ret i32 %616
}

; Function Attrs: nounwind uwtable
define internal void @fixedtables(ptr noundef %state) #0 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 19
  store ptr @fixedtables.lenfix, ptr %lencode, align 8, !tbaa !46
  %1 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 21
  store i32 9, ptr %lenbits, align 8, !tbaa !47
  %2 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %2, i32 0, i32 20
  store ptr @fixedtables.distfix, ptr %distcode, align 8, !tbaa !57
  %3 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %3, i32 0, i32 22
  store i32 5, ptr %distbits, align 4, !tbaa !58
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @inflate_fast(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @inflateBackEnd(ptr noundef %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %state = getelementptr inbounds %struct.z_stream_s, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %state, align 8, !tbaa !17
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %zfree, align 8, !tbaa !16
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %zfree4 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %zfree4, align 8, !tbaa !16
  %7 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 10
  %8 = load ptr, ptr %opaque, align 8, !tbaa !15
  %9 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %state5 = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %state5, align 8, !tbaa !17
  call void %6(ptr noundef %8, ptr noundef %10)
  %11 = load ptr, ptr %strm.addr, align 8, !tbaa !4
  %state6 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 7
  store ptr null, ptr %state6, align 8, !tbaa !17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+pclmul,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+pclmul,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !5, i64 48}
!12 = !{!"z_stream_s", !5, i64 0, !9, i64 8, !13, i64 16, !5, i64 24, !9, i64 32, !13, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !9, i64 88, !13, i64 96, !13, i64 104}
!13 = !{!"long", !6, i64 0}
!14 = !{!12, !5, i64 64}
!15 = !{!12, !5, i64 80}
!16 = !{!12, !5, i64 72}
!17 = !{!12, !5, i64 56}
!18 = !{!19, !9, i64 20}
!19 = !{!"inflate_state", !6, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !13, i64 24, !13, i64 32, !5, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !5, i64 64, !13, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !5, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !5, i64 136, !6, i64 144, !6, i64 784, !6, i64 1360, !9, i64 7136, !9, i64 7140, !9, i64 7144}
!20 = !{!19, !9, i64 48}
!21 = !{!19, !9, i64 52}
!22 = !{!19, !5, i64 64}
!23 = !{!19, !9, i64 60}
!24 = !{!19, !9, i64 56}
!25 = !{!19, !6, i64 0}
!26 = !{!19, !9, i64 4}
!27 = !{!12, !5, i64 0}
!28 = !{!12, !9, i64 8}
!29 = !{!13, !13, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = distinct !{!32, !31}
!33 = !{!19, !9, i64 84}
!34 = distinct !{!34, !31}
!35 = distinct !{!35, !31}
!36 = !{!19, !9, i64 124}
!37 = !{!19, !9, i64 128}
!38 = !{!19, !9, i64 120}
!39 = !{!19, !9, i64 132}
!40 = distinct !{!40, !31}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !6, i64 0}
!43 = distinct !{!43, !31}
!44 = distinct !{!44, !31}
!45 = !{!19, !5, i64 136}
!46 = !{!19, !5, i64 96}
!47 = !{!19, !9, i64 112}
!48 = !{i64 0, i64 1, !10, i64 1, i64 1, !10, i64 2, i64 2, !41}
!49 = !{!50, !6, i64 1}
!50 = !{!"", !6, i64 0, !6, i64 1, !42, i64 2}
!51 = !{!50, !42, i64 2}
!52 = distinct !{!52, !31}
!53 = distinct !{!53, !31}
!54 = distinct !{!54, !31}
!55 = distinct !{!55, !31}
!56 = distinct !{!56, !31}
!57 = !{!19, !5, i64 104}
!58 = !{!19, !9, i64 116}
!59 = !{!12, !5, i64 24}
!60 = !{!12, !9, i64 32}
!61 = !{!19, !13, i64 72}
!62 = !{!19, !9, i64 80}
!63 = !{!50, !6, i64 0}
!64 = !{!19, !9, i64 92}
!65 = distinct !{!65, !31}
!66 = !{!19, !9, i64 88}
!67 = distinct !{!67, !31}
!68 = distinct !{!68, !31}
!69 = distinct !{!69, !31}

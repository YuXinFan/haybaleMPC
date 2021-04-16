; ModuleID = 'max.c'
source_filename = "max.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @declassify(i1 zeroext %0) #0 !dbg !8 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !12, metadata !DIExpression()), !dbg !13
  %4 = load i8, i8* %2, align 1, !dbg !14
  %5 = trunc i8 %4 to i1, !dbg !14
  ret i1 %5, !dbg !15
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @DoMpc(i32 (i32*, i32)* %0, i32* %1, i32 %2) #0 !dbg !16 {
  %4 = alloca i32 (i32*, i32)*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 (i32*, i32)* %0, i32 (i32*, i32)** %4, align 8
  call void @llvm.dbg.declare(metadata i32 (i32*, i32)** %4, metadata !24, metadata !DIExpression()), !dbg !25
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %7, metadata !30, metadata !DIExpression()), !dbg !31
  %8 = load i32 (i32*, i32)*, i32 (i32*, i32)** %4, align 8, !dbg !32
  %9 = load i32*, i32** %5, align 8, !dbg !33
  %10 = load i32, i32* %6, align 4, !dbg !34
  %11 = call i32 %8(i32* %9, i32 %10), !dbg !35
  store i32 %11, i32* %7, align 4, !dbg !31
  %12 = load i32, i32* %7, align 4, !dbg !36
  ret i32 %12, !dbg !37
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @MpcMax(i32* %0, i32 %1) #0 !dbg !38 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !39, metadata !DIExpression()), !dbg !40
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %5, metadata !43, metadata !DIExpression()), !dbg !44
  %7 = load i32*, i32** %3, align 8, !dbg !45
  %8 = getelementptr inbounds i32, i32* %7, i64 0, !dbg !45
  %9 = load i32, i32* %8, align 4, !dbg !45
  store i32 %9, i32* %5, align 4, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %6, metadata !46, metadata !DIExpression()), !dbg !48
  store i32 1, i32* %6, align 4, !dbg !48
  br label %10, !dbg !49

10:                                               ; preds = %29, %2
  %11 = load i32, i32* %6, align 4, !dbg !50
  %12 = load i32, i32* %4, align 4, !dbg !52
  %13 = icmp slt i32 %11, %12, !dbg !53
  br i1 %13, label %14, label %32, !dbg !54

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4, !dbg !55
  %16 = load i32*, i32** %3, align 8, !dbg !58
  %17 = load i32, i32* %6, align 4, !dbg !59
  %18 = sext i32 %17 to i64, !dbg !58
  %19 = getelementptr inbounds i32, i32* %16, i64 %18, !dbg !58
  %20 = load i32, i32* %19, align 4, !dbg !58
  %21 = icmp slt i32 %15, %20, !dbg !60
  br i1 %21, label %22, label %28, !dbg !61

22:                                               ; preds = %14
  %23 = load i32*, i32** %3, align 8, !dbg !62
  %24 = load i32, i32* %6, align 4, !dbg !64
  %25 = sext i32 %24 to i64, !dbg !62
  %26 = getelementptr inbounds i32, i32* %23, i64 %25, !dbg !62
  %27 = load i32, i32* %26, align 4, !dbg !62
  store i32 %27, i32* %5, align 4, !dbg !65
  br label %28, !dbg !66

28:                                               ; preds = %22, %14
  br label %29, !dbg !67

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4, !dbg !68
  %31 = add nsw i32 %30, 1, !dbg !68
  store i32 %31, i32* %6, align 4, !dbg !68
  br label %10, !dbg !69, !llvm.loop !70

32:                                               ; preds = %10
  %33 = load i32, i32* %5, align 4, !dbg !72
  ret i32 %33, !dbg !73
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @TwoMax(i32 %0, i32 %1) #0 !dbg !74 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !77, metadata !DIExpression()), !dbg !78
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %5, metadata !81, metadata !DIExpression()), !dbg !82
  %6 = load i32, i32* %3, align 4, !dbg !83
  store i32 %6, i32* %5, align 4, !dbg !82
  %7 = load i32, i32* %3, align 4, !dbg !84
  %8 = load i32, i32* %4, align 4, !dbg !86
  %9 = icmp slt i32 %7, %8, !dbg !87
  %10 = call zeroext i1 @declassify(i1 zeroext %9), !dbg !88
  br i1 %10, label %11, label %13, !dbg !89

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4, !dbg !90
  store i32 %12, i32* %5, align 4, !dbg !92
  br label %13, !dbg !93

13:                                               ; preds = %11, %2
  %14 = load i32, i32* %5, align 4, !dbg !94
  ret i32 %14, !dbg !95
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @ThreeMax0(i32 %0, i32 %1, i32 %2) #0 !dbg !96 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !101, metadata !DIExpression()), !dbg !102
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %7, metadata !105, metadata !DIExpression()), !dbg !106
  %8 = load i32, i32* %4, align 4, !dbg !107
  store i32 %8, i32* %7, align 4, !dbg !106
  %9 = load i32, i32* %4, align 4, !dbg !108
  %10 = load i32, i32* %5, align 4, !dbg !110
  %11 = icmp slt i32 %9, %10, !dbg !111
  br i1 %11, label %12, label %14, !dbg !112

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4, !dbg !113
  store i32 %13, i32* %7, align 4, !dbg !115
  br label %14, !dbg !116

14:                                               ; preds = %12, %3
  %15 = load i32, i32* %7, align 4, !dbg !117
  %16 = load i32, i32* %6, align 4, !dbg !119
  %17 = icmp slt i32 %15, %16, !dbg !120
  br i1 %17, label %18, label %20, !dbg !121

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4, !dbg !122
  store i32 %19, i32* %7, align 4, !dbg !124
  br label %20, !dbg !125

20:                                               ; preds = %18, %14
  %21 = load i32, i32* %7, align 4, !dbg !126
  ret i32 %21, !dbg !127
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @ThreeMax1(i32 %0, i32 %1, i32 %2) #0 !dbg !128 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !129, metadata !DIExpression()), !dbg !130
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !131, metadata !DIExpression()), !dbg !132
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %7, metadata !135, metadata !DIExpression()), !dbg !136
  %8 = load i32, i32* %4, align 4, !dbg !137
  store i32 %8, i32* %7, align 4, !dbg !136
  %9 = load i32, i32* %7, align 4, !dbg !138
  %10 = load i32, i32* %5, align 4, !dbg !140
  %11 = icmp slt i32 %9, %10, !dbg !141
  %12 = call zeroext i1 @declassify(i1 zeroext %11), !dbg !142
  br i1 %12, label %13, label %15, !dbg !143

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4, !dbg !144
  store i32 %14, i32* %7, align 4, !dbg !146
  br label %15, !dbg !147

15:                                               ; preds = %13, %3
  %16 = load i32, i32* %7, align 4, !dbg !148
  %17 = load i32, i32* %6, align 4, !dbg !150
  %18 = icmp slt i32 %16, %17, !dbg !151
  br i1 %18, label %19, label %21, !dbg !152

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4, !dbg !153
  store i32 %20, i32* %7, align 4, !dbg !155
  br label %21, !dbg !156

21:                                               ; preds = %19, %15
  store i32 2, i32* %6, align 4, !dbg !157
  %22 = load i32, i32* %7, align 4, !dbg !158
  ret i32 %22, !dbg !159
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @ThreeMax2(i32 %0, i32 %1, i32 %2) #0 !dbg !160 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !161, metadata !DIExpression()), !dbg !162
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !163, metadata !DIExpression()), !dbg !164
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i32* %7, metadata !167, metadata !DIExpression()), !dbg !168
  %8 = load i32, i32* %4, align 4, !dbg !169
  store i32 %8, i32* %7, align 4, !dbg !168
  %9 = load i32, i32* %4, align 4, !dbg !170
  %10 = load i32, i32* %5, align 4, !dbg !172
  %11 = icmp slt i32 %9, %10, !dbg !173
  br i1 %11, label %12, label %14, !dbg !174

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4, !dbg !175
  store i32 %13, i32* %7, align 4, !dbg !177
  br label %14, !dbg !178

14:                                               ; preds = %12, %3
  %15 = load i32, i32* %7, align 4, !dbg !179
  %16 = load i32, i32* %6, align 4, !dbg !181
  %17 = icmp slt i32 %15, %16, !dbg !182
  %18 = call zeroext i1 @declassify(i1 zeroext %17), !dbg !183
  br i1 %18, label %19, label %21, !dbg !184

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4, !dbg !185
  store i32 %20, i32* %7, align 4, !dbg !187
  br label %21, !dbg !188

21:                                               ; preds = %19, %14
  %22 = load i32, i32* %7, align 4, !dbg !189
  ret i32 %22, !dbg !190
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @ThreeMax3(i32 %0, i32 %1, i32 %2) #0 !dbg !191 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !192, metadata !DIExpression()), !dbg !193
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !194, metadata !DIExpression()), !dbg !195
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata i32* %7, metadata !198, metadata !DIExpression()), !dbg !199
  %8 = load i32, i32* %4, align 4, !dbg !200
  store i32 %8, i32* %7, align 4, !dbg !199
  %9 = load i32, i32* %4, align 4, !dbg !201
  %10 = load i32, i32* %5, align 4, !dbg !203
  %11 = icmp slt i32 %9, %10, !dbg !204
  %12 = call zeroext i1 @declassify(i1 zeroext %11), !dbg !205
  br i1 %12, label %13, label %15, !dbg !206

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4, !dbg !207
  store i32 %14, i32* %7, align 4, !dbg !209
  br label %15, !dbg !210

15:                                               ; preds = %13, %3
  %16 = load i32, i32* %7, align 4, !dbg !211
  %17 = load i32, i32* %6, align 4, !dbg !213
  %18 = icmp slt i32 %16, %17, !dbg !214
  %19 = call zeroext i1 @declassify(i1 zeroext %18), !dbg !215
  br i1 %19, label %20, label %22, !dbg !216

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4, !dbg !217
  store i32 %21, i32* %7, align 4, !dbg !219
  br label %22, !dbg !220

22:                                               ; preds = %20, %15
  %23 = load i32, i32* %7, align 4, !dbg !221
  ret i32 %23, !dbg !222
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @FourMax(i32 %0, i32 %1, i32 %2, i32 %3) #0 !dbg !223 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !226, metadata !DIExpression()), !dbg !227
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !228, metadata !DIExpression()), !dbg !229
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !230, metadata !DIExpression()), !dbg !231
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata i32* %9, metadata !234, metadata !DIExpression()), !dbg !235
  %10 = load i32, i32* %5, align 4, !dbg !236
  store i32 %10, i32* %9, align 4, !dbg !235
  %11 = load i32, i32* %9, align 4, !dbg !237
  %12 = load i32, i32* %6, align 4, !dbg !239
  %13 = icmp slt i32 %11, %12, !dbg !240
  br i1 %13, label %14, label %16, !dbg !241

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4, !dbg !242
  store i32 %15, i32* %9, align 4, !dbg !244
  br label %16, !dbg !245

16:                                               ; preds = %14, %4
  %17 = load i32, i32* %9, align 4, !dbg !246
  %18 = load i32, i32* %7, align 4, !dbg !248
  %19 = icmp slt i32 %17, %18, !dbg !249
  br i1 %19, label %20, label %22, !dbg !250

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4, !dbg !251
  store i32 %21, i32* %9, align 4, !dbg !253
  br label %22, !dbg !254

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %9, align 4, !dbg !255
  %24 = load i32, i32* %8, align 4, !dbg !257
  %25 = icmp slt i32 %23, %24, !dbg !258
  br i1 %25, label %26, label %28, !dbg !259

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4, !dbg !260
  store i32 %27, i32* %9, align 4, !dbg !262
  br label %28, !dbg !263

28:                                               ; preds = %26, %22
  %29 = load i32, i32* %9, align 4, !dbg !264
  ret i32 %29, !dbg !265
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @FiveMax(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 !dbg !266 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !269, metadata !DIExpression()), !dbg !270
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !271, metadata !DIExpression()), !dbg !272
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !273, metadata !DIExpression()), !dbg !274
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !275, metadata !DIExpression()), !dbg !276
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i32* %11, metadata !279, metadata !DIExpression()), !dbg !280
  %12 = load i32, i32* %6, align 4, !dbg !281
  store i32 %12, i32* %11, align 4, !dbg !280
  %13 = load i32, i32* %11, align 4, !dbg !282
  %14 = load i32, i32* %7, align 4, !dbg !284
  %15 = icmp slt i32 %13, %14, !dbg !285
  br i1 %15, label %16, label %18, !dbg !286

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4, !dbg !287
  store i32 %17, i32* %11, align 4, !dbg !289
  br label %18, !dbg !290

18:                                               ; preds = %16, %5
  %19 = load i32, i32* %11, align 4, !dbg !291
  %20 = load i32, i32* %8, align 4, !dbg !293
  %21 = icmp slt i32 %19, %20, !dbg !294
  br i1 %21, label %22, label %24, !dbg !295

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4, !dbg !296
  store i32 %23, i32* %11, align 4, !dbg !298
  br label %24, !dbg !299

24:                                               ; preds = %22, %18
  %25 = load i32, i32* %11, align 4, !dbg !300
  %26 = load i32, i32* %9, align 4, !dbg !302
  %27 = icmp slt i32 %25, %26, !dbg !303
  br i1 %27, label %28, label %30, !dbg !304

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4, !dbg !305
  store i32 %29, i32* %11, align 4, !dbg !307
  br label %30, !dbg !308

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %11, align 4, !dbg !309
  %32 = load i32, i32* %10, align 4, !dbg !311
  %33 = icmp slt i32 %31, %32, !dbg !312
  br i1 %33, label %34, label %36, !dbg !313

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4, !dbg !314
  store i32 %35, i32* %11, align 4, !dbg !316
  br label %36, !dbg !317

36:                                               ; preds = %34, %30
  %37 = load i32, i32* %11, align 4, !dbg !318
  ret i32 %37, !dbg !319
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 !dbg !320 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i32], align 16
  %3 = alloca [10 x i32], align 16
  %4 = alloca [20 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i32]* %2, metadata !323, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.declare(metadata [10 x i32]* %3, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.declare(metadata [20 x i32]* %4, metadata !330, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata i32* %5, metadata !335, metadata !DIExpression()), !dbg !337
  store i32 0, i32* %5, align 4, !dbg !337
  br label %7, !dbg !338

7:                                                ; preds = %26, %0
  %8 = load i32, i32* %5, align 4, !dbg !339
  %9 = icmp slt i32 %8, 10, !dbg !341
  br i1 %9, label %10, label %29, !dbg !342

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4, !dbg !343
  %12 = sext i32 %11 to i64, !dbg !345
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %12, !dbg !345
  %14 = load i32, i32* %13, align 4, !dbg !345
  %15 = load i32, i32* %5, align 4, !dbg !346
  %16 = sext i32 %15 to i64, !dbg !347
  %17 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 %16, !dbg !347
  store i32 %14, i32* %17, align 4, !dbg !348
  %18 = load i32, i32* %5, align 4, !dbg !349
  %19 = sext i32 %18 to i64, !dbg !350
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %19, !dbg !350
  %21 = load i32, i32* %20, align 4, !dbg !350
  %22 = load i32, i32* %5, align 4, !dbg !351
  %23 = add nsw i32 %22, 10, !dbg !352
  %24 = sext i32 %23 to i64, !dbg !353
  %25 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 %24, !dbg !353
  store i32 %21, i32* %25, align 4, !dbg !354
  br label %26, !dbg !355

26:                                               ; preds = %10
  %27 = load i32, i32* %5, align 4, !dbg !356
  %28 = add nsw i32 %27, 1, !dbg !356
  store i32 %28, i32* %5, align 4, !dbg !356
  br label %7, !dbg !357, !llvm.loop !358

29:                                               ; preds = %7
  call void @llvm.dbg.declare(metadata i32* %6, metadata !360, metadata !DIExpression()), !dbg !361
  %30 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0, !dbg !362
  %31 = call i32 @DoMpc(i32 (i32*, i32)* @MpcMax, i32* %30, i32 20), !dbg !363
  store i32 %31, i32* %6, align 4, !dbg !361
  %32 = load i32, i32* %6, align 4, !dbg !364
  ret i32 %32, !dbg !365
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.0.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!1 = !DIFile(filename: "max.c", directory: "/Users/fanyx/apps/leakage-verification/inputs")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 11.0.1"}
!8 = distinct !DISubprogram(name: "declassify", scope: !1, file: !1, line: 5, type: !9, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11}
!11 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!12 = !DILocalVariable(name: "b", arg: 1, scope: !8, file: !1, line: 5, type: !11)
!13 = !DILocation(line: 5, column: 22, scope: !8)
!14 = !DILocation(line: 6, column: 12, scope: !8)
!15 = !DILocation(line: 6, column: 5, scope: !8)
!16 = distinct !DISubprogram(name: "DoMpc", scope: !1, file: !1, line: 9, type: !17, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !20, !23, !19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DISubroutineType(types: !22)
!22 = !{!19, !23, !19}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!24 = !DILocalVariable(name: "f", arg: 1, scope: !16, file: !1, line: 9, type: !20)
!25 = !DILocation(line: 9, column: 17, scope: !16)
!26 = !DILocalVariable(name: "arr", arg: 2, scope: !16, file: !1, line: 9, type: !23)
!27 = !DILocation(line: 9, column: 37, scope: !16)
!28 = !DILocalVariable(name: "l", arg: 3, scope: !16, file: !1, line: 9, type: !19)
!29 = !DILocation(line: 9, column: 46, scope: !16)
!30 = !DILocalVariable(name: "ret", scope: !16, file: !1, line: 11, type: !19)
!31 = !DILocation(line: 11, column: 9, scope: !16)
!32 = !DILocation(line: 11, column: 17, scope: !16)
!33 = !DILocation(line: 11, column: 20, scope: !16)
!34 = !DILocation(line: 11, column: 24, scope: !16)
!35 = !DILocation(line: 11, column: 15, scope: !16)
!36 = !DILocation(line: 12, column: 12, scope: !16)
!37 = !DILocation(line: 12, column: 5, scope: !16)
!38 = distinct !DISubprogram(name: "MpcMax", scope: !1, file: !1, line: 15, type: !21, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!39 = !DILocalVariable(name: "arr", arg: 1, scope: !38, file: !1, line: 15, type: !23)
!40 = !DILocation(line: 15, column: 17, scope: !38)
!41 = !DILocalVariable(name: "len", arg: 2, scope: !38, file: !1, line: 15, type: !19)
!42 = !DILocation(line: 15, column: 26, scope: !38)
!43 = !DILocalVariable(name: "max", scope: !38, file: !1, line: 17, type: !19)
!44 = !DILocation(line: 17, column: 9, scope: !38)
!45 = !DILocation(line: 17, column: 15, scope: !38)
!46 = !DILocalVariable(name: "i", scope: !47, file: !1, line: 18, type: !19)
!47 = distinct !DILexicalBlock(scope: !38, file: !1, line: 18, column: 5)
!48 = !DILocation(line: 18, column: 14, scope: !47)
!49 = !DILocation(line: 18, column: 10, scope: !47)
!50 = !DILocation(line: 18, column: 21, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 18, column: 5)
!52 = !DILocation(line: 18, column: 25, scope: !51)
!53 = !DILocation(line: 18, column: 23, scope: !51)
!54 = !DILocation(line: 18, column: 5, scope: !47)
!55 = !DILocation(line: 19, column: 14, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 19, column: 14)
!57 = distinct !DILexicalBlock(scope: !51, file: !1, line: 18, column: 35)
!58 = !DILocation(line: 19, column: 20, scope: !56)
!59 = !DILocation(line: 19, column: 24, scope: !56)
!60 = !DILocation(line: 19, column: 18, scope: !56)
!61 = !DILocation(line: 19, column: 14, scope: !57)
!62 = !DILocation(line: 21, column: 19, scope: !63)
!63 = distinct !DILexicalBlock(scope: !56, file: !1, line: 20, column: 9)
!64 = !DILocation(line: 21, column: 23, scope: !63)
!65 = !DILocation(line: 21, column: 17, scope: !63)
!66 = !DILocation(line: 22, column: 9, scope: !63)
!67 = !DILocation(line: 23, column: 5, scope: !57)
!68 = !DILocation(line: 18, column: 31, scope: !51)
!69 = !DILocation(line: 18, column: 5, scope: !51)
!70 = distinct !{!70, !54, !71}
!71 = !DILocation(line: 23, column: 5, scope: !47)
!72 = !DILocation(line: 24, column: 12, scope: !38)
!73 = !DILocation(line: 24, column: 5, scope: !38)
!74 = distinct !DISubprogram(name: "TwoMax", scope: !1, file: !1, line: 26, type: !75, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!75 = !DISubroutineType(types: !76)
!76 = !{!19, !19, !19}
!77 = !DILocalVariable(name: "a", arg: 1, scope: !74, file: !1, line: 26, type: !19)
!78 = !DILocation(line: 26, column: 16, scope: !74)
!79 = !DILocalVariable(name: "b", arg: 2, scope: !74, file: !1, line: 26, type: !19)
!80 = !DILocation(line: 26, column: 23, scope: !74)
!81 = !DILocalVariable(name: "max", scope: !74, file: !1, line: 27, type: !19)
!82 = !DILocation(line: 27, column: 9, scope: !74)
!83 = !DILocation(line: 27, column: 15, scope: !74)
!84 = !DILocation(line: 28, column: 22, scope: !85)
!85 = distinct !DILexicalBlock(scope: !74, file: !1, line: 28, column: 10)
!86 = !DILocation(line: 28, column: 26, scope: !85)
!87 = !DILocation(line: 28, column: 24, scope: !85)
!88 = !DILocation(line: 28, column: 10, scope: !85)
!89 = !DILocation(line: 28, column: 10, scope: !74)
!90 = !DILocation(line: 29, column: 14, scope: !91)
!91 = distinct !DILexicalBlock(scope: !85, file: !1, line: 28, column: 30)
!92 = !DILocation(line: 29, column: 13, scope: !91)
!93 = !DILocation(line: 30, column: 5, scope: !91)
!94 = !DILocation(line: 31, column: 12, scope: !74)
!95 = !DILocation(line: 31, column: 5, scope: !74)
!96 = distinct !DISubprogram(name: "ThreeMax0", scope: !1, file: !1, line: 34, type: !97, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!97 = !DISubroutineType(types: !98)
!98 = !{!19, !19, !19, !19}
!99 = !DILocalVariable(name: "a", arg: 1, scope: !96, file: !1, line: 34, type: !19)
!100 = !DILocation(line: 34, column: 19, scope: !96)
!101 = !DILocalVariable(name: "b", arg: 2, scope: !96, file: !1, line: 34, type: !19)
!102 = !DILocation(line: 34, column: 26, scope: !96)
!103 = !DILocalVariable(name: "c", arg: 3, scope: !96, file: !1, line: 34, type: !19)
!104 = !DILocation(line: 34, column: 33, scope: !96)
!105 = !DILocalVariable(name: "max", scope: !96, file: !1, line: 35, type: !19)
!106 = !DILocation(line: 35, column: 9, scope: !96)
!107 = !DILocation(line: 35, column: 15, scope: !96)
!108 = !DILocation(line: 36, column: 10, scope: !109)
!109 = distinct !DILexicalBlock(scope: !96, file: !1, line: 36, column: 10)
!110 = !DILocation(line: 36, column: 14, scope: !109)
!111 = !DILocation(line: 36, column: 12, scope: !109)
!112 = !DILocation(line: 36, column: 10, scope: !96)
!113 = !DILocation(line: 37, column: 15, scope: !114)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 36, column: 17)
!115 = !DILocation(line: 37, column: 13, scope: !114)
!116 = !DILocation(line: 38, column: 5, scope: !114)
!117 = !DILocation(line: 39, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !96, file: !1, line: 39, column: 9)
!119 = !DILocation(line: 39, column: 15, scope: !118)
!120 = !DILocation(line: 39, column: 13, scope: !118)
!121 = !DILocation(line: 39, column: 9, scope: !96)
!122 = !DILocation(line: 40, column: 15, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !1, line: 39, column: 18)
!124 = !DILocation(line: 40, column: 13, scope: !123)
!125 = !DILocation(line: 41, column: 5, scope: !123)
!126 = !DILocation(line: 42, column: 12, scope: !96)
!127 = !DILocation(line: 42, column: 5, scope: !96)
!128 = distinct !DISubprogram(name: "ThreeMax1", scope: !1, file: !1, line: 45, type: !97, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!129 = !DILocalVariable(name: "a", arg: 1, scope: !128, file: !1, line: 45, type: !19)
!130 = !DILocation(line: 45, column: 19, scope: !128)
!131 = !DILocalVariable(name: "b", arg: 2, scope: !128, file: !1, line: 45, type: !19)
!132 = !DILocation(line: 45, column: 26, scope: !128)
!133 = !DILocalVariable(name: "c", arg: 3, scope: !128, file: !1, line: 45, type: !19)
!134 = !DILocation(line: 45, column: 33, scope: !128)
!135 = !DILocalVariable(name: "max", scope: !128, file: !1, line: 46, type: !19)
!136 = !DILocation(line: 46, column: 9, scope: !128)
!137 = !DILocation(line: 46, column: 15, scope: !128)
!138 = !DILocation(line: 47, column: 21, scope: !139)
!139 = distinct !DILexicalBlock(scope: !128, file: !1, line: 47, column: 10)
!140 = !DILocation(line: 47, column: 27, scope: !139)
!141 = !DILocation(line: 47, column: 25, scope: !139)
!142 = !DILocation(line: 47, column: 10, scope: !139)
!143 = !DILocation(line: 47, column: 10, scope: !128)
!144 = !DILocation(line: 48, column: 15, scope: !145)
!145 = distinct !DILexicalBlock(scope: !139, file: !1, line: 47, column: 31)
!146 = !DILocation(line: 48, column: 13, scope: !145)
!147 = !DILocation(line: 49, column: 5, scope: !145)
!148 = !DILocation(line: 50, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !128, file: !1, line: 50, column: 9)
!150 = !DILocation(line: 50, column: 15, scope: !149)
!151 = !DILocation(line: 50, column: 13, scope: !149)
!152 = !DILocation(line: 50, column: 9, scope: !128)
!153 = !DILocation(line: 51, column: 15, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !1, line: 50, column: 18)
!155 = !DILocation(line: 51, column: 13, scope: !154)
!156 = !DILocation(line: 52, column: 5, scope: !154)
!157 = !DILocation(line: 53, column: 7, scope: !128)
!158 = !DILocation(line: 54, column: 12, scope: !128)
!159 = !DILocation(line: 54, column: 5, scope: !128)
!160 = distinct !DISubprogram(name: "ThreeMax2", scope: !1, file: !1, line: 57, type: !97, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!161 = !DILocalVariable(name: "a", arg: 1, scope: !160, file: !1, line: 57, type: !19)
!162 = !DILocation(line: 57, column: 19, scope: !160)
!163 = !DILocalVariable(name: "b", arg: 2, scope: !160, file: !1, line: 57, type: !19)
!164 = !DILocation(line: 57, column: 26, scope: !160)
!165 = !DILocalVariable(name: "c", arg: 3, scope: !160, file: !1, line: 57, type: !19)
!166 = !DILocation(line: 57, column: 33, scope: !160)
!167 = !DILocalVariable(name: "max", scope: !160, file: !1, line: 58, type: !19)
!168 = !DILocation(line: 58, column: 9, scope: !160)
!169 = !DILocation(line: 58, column: 15, scope: !160)
!170 = !DILocation(line: 59, column: 10, scope: !171)
!171 = distinct !DILexicalBlock(scope: !160, file: !1, line: 59, column: 10)
!172 = !DILocation(line: 59, column: 14, scope: !171)
!173 = !DILocation(line: 59, column: 12, scope: !171)
!174 = !DILocation(line: 59, column: 10, scope: !160)
!175 = !DILocation(line: 60, column: 15, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !1, line: 59, column: 17)
!177 = !DILocation(line: 60, column: 13, scope: !176)
!178 = !DILocation(line: 61, column: 5, scope: !176)
!179 = !DILocation(line: 62, column: 20, scope: !180)
!180 = distinct !DILexicalBlock(scope: !160, file: !1, line: 62, column: 9)
!181 = !DILocation(line: 62, column: 26, scope: !180)
!182 = !DILocation(line: 62, column: 24, scope: !180)
!183 = !DILocation(line: 62, column: 9, scope: !180)
!184 = !DILocation(line: 62, column: 9, scope: !160)
!185 = !DILocation(line: 63, column: 15, scope: !186)
!186 = distinct !DILexicalBlock(scope: !180, file: !1, line: 62, column: 30)
!187 = !DILocation(line: 63, column: 13, scope: !186)
!188 = !DILocation(line: 64, column: 5, scope: !186)
!189 = !DILocation(line: 65, column: 12, scope: !160)
!190 = !DILocation(line: 65, column: 5, scope: !160)
!191 = distinct !DISubprogram(name: "ThreeMax3", scope: !1, file: !1, line: 68, type: !97, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!192 = !DILocalVariable(name: "a", arg: 1, scope: !191, file: !1, line: 68, type: !19)
!193 = !DILocation(line: 68, column: 19, scope: !191)
!194 = !DILocalVariable(name: "b", arg: 2, scope: !191, file: !1, line: 68, type: !19)
!195 = !DILocation(line: 68, column: 26, scope: !191)
!196 = !DILocalVariable(name: "c", arg: 3, scope: !191, file: !1, line: 68, type: !19)
!197 = !DILocation(line: 68, column: 33, scope: !191)
!198 = !DILocalVariable(name: "max", scope: !191, file: !1, line: 69, type: !19)
!199 = !DILocation(line: 69, column: 9, scope: !191)
!200 = !DILocation(line: 69, column: 15, scope: !191)
!201 = !DILocation(line: 70, column: 21, scope: !202)
!202 = distinct !DILexicalBlock(scope: !191, file: !1, line: 70, column: 10)
!203 = !DILocation(line: 70, column: 25, scope: !202)
!204 = !DILocation(line: 70, column: 23, scope: !202)
!205 = !DILocation(line: 70, column: 10, scope: !202)
!206 = !DILocation(line: 70, column: 10, scope: !191)
!207 = !DILocation(line: 71, column: 15, scope: !208)
!208 = distinct !DILexicalBlock(scope: !202, file: !1, line: 70, column: 29)
!209 = !DILocation(line: 71, column: 13, scope: !208)
!210 = !DILocation(line: 72, column: 5, scope: !208)
!211 = !DILocation(line: 73, column: 20, scope: !212)
!212 = distinct !DILexicalBlock(scope: !191, file: !1, line: 73, column: 9)
!213 = !DILocation(line: 73, column: 26, scope: !212)
!214 = !DILocation(line: 73, column: 24, scope: !212)
!215 = !DILocation(line: 73, column: 9, scope: !212)
!216 = !DILocation(line: 73, column: 9, scope: !191)
!217 = !DILocation(line: 74, column: 15, scope: !218)
!218 = distinct !DILexicalBlock(scope: !212, file: !1, line: 73, column: 30)
!219 = !DILocation(line: 74, column: 13, scope: !218)
!220 = !DILocation(line: 75, column: 5, scope: !218)
!221 = !DILocation(line: 76, column: 12, scope: !191)
!222 = !DILocation(line: 76, column: 5, scope: !191)
!223 = distinct !DISubprogram(name: "FourMax", scope: !1, file: !1, line: 79, type: !224, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!224 = !DISubroutineType(types: !225)
!225 = !{!19, !19, !19, !19, !19}
!226 = !DILocalVariable(name: "a", arg: 1, scope: !223, file: !1, line: 79, type: !19)
!227 = !DILocation(line: 79, column: 17, scope: !223)
!228 = !DILocalVariable(name: "b", arg: 2, scope: !223, file: !1, line: 79, type: !19)
!229 = !DILocation(line: 79, column: 24, scope: !223)
!230 = !DILocalVariable(name: "c", arg: 3, scope: !223, file: !1, line: 79, type: !19)
!231 = !DILocation(line: 79, column: 31, scope: !223)
!232 = !DILocalVariable(name: "d", arg: 4, scope: !223, file: !1, line: 79, type: !19)
!233 = !DILocation(line: 79, column: 38, scope: !223)
!234 = !DILocalVariable(name: "max", scope: !223, file: !1, line: 80, type: !19)
!235 = !DILocation(line: 80, column: 9, scope: !223)
!236 = !DILocation(line: 80, column: 15, scope: !223)
!237 = !DILocation(line: 81, column: 10, scope: !238)
!238 = distinct !DILexicalBlock(scope: !223, file: !1, line: 81, column: 10)
!239 = !DILocation(line: 81, column: 16, scope: !238)
!240 = !DILocation(line: 81, column: 14, scope: !238)
!241 = !DILocation(line: 81, column: 10, scope: !223)
!242 = !DILocation(line: 82, column: 15, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !1, line: 81, column: 19)
!244 = !DILocation(line: 82, column: 13, scope: !243)
!245 = !DILocation(line: 83, column: 5, scope: !243)
!246 = !DILocation(line: 84, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !223, file: !1, line: 84, column: 9)
!248 = !DILocation(line: 84, column: 15, scope: !247)
!249 = !DILocation(line: 84, column: 13, scope: !247)
!250 = !DILocation(line: 84, column: 9, scope: !223)
!251 = !DILocation(line: 85, column: 15, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !1, line: 84, column: 18)
!253 = !DILocation(line: 85, column: 13, scope: !252)
!254 = !DILocation(line: 86, column: 5, scope: !252)
!255 = !DILocation(line: 87, column: 10, scope: !256)
!256 = distinct !DILexicalBlock(scope: !223, file: !1, line: 87, column: 10)
!257 = !DILocation(line: 87, column: 16, scope: !256)
!258 = !DILocation(line: 87, column: 14, scope: !256)
!259 = !DILocation(line: 87, column: 10, scope: !223)
!260 = !DILocation(line: 88, column: 15, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !1, line: 87, column: 19)
!262 = !DILocation(line: 88, column: 13, scope: !261)
!263 = !DILocation(line: 89, column: 5, scope: !261)
!264 = !DILocation(line: 90, column: 12, scope: !223)
!265 = !DILocation(line: 90, column: 5, scope: !223)
!266 = distinct !DISubprogram(name: "FiveMax", scope: !1, file: !1, line: 93, type: !267, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!267 = !DISubroutineType(types: !268)
!268 = !{!19, !19, !19, !19, !19, !19}
!269 = !DILocalVariable(name: "a", arg: 1, scope: !266, file: !1, line: 93, type: !19)
!270 = !DILocation(line: 93, column: 17, scope: !266)
!271 = !DILocalVariable(name: "b", arg: 2, scope: !266, file: !1, line: 93, type: !19)
!272 = !DILocation(line: 93, column: 24, scope: !266)
!273 = !DILocalVariable(name: "c", arg: 3, scope: !266, file: !1, line: 93, type: !19)
!274 = !DILocation(line: 93, column: 31, scope: !266)
!275 = !DILocalVariable(name: "d", arg: 4, scope: !266, file: !1, line: 93, type: !19)
!276 = !DILocation(line: 93, column: 38, scope: !266)
!277 = !DILocalVariable(name: "e", arg: 5, scope: !266, file: !1, line: 93, type: !19)
!278 = !DILocation(line: 93, column: 45, scope: !266)
!279 = !DILocalVariable(name: "max", scope: !266, file: !1, line: 94, type: !19)
!280 = !DILocation(line: 94, column: 9, scope: !266)
!281 = !DILocation(line: 94, column: 15, scope: !266)
!282 = !DILocation(line: 95, column: 10, scope: !283)
!283 = distinct !DILexicalBlock(scope: !266, file: !1, line: 95, column: 10)
!284 = !DILocation(line: 95, column: 16, scope: !283)
!285 = !DILocation(line: 95, column: 14, scope: !283)
!286 = !DILocation(line: 95, column: 10, scope: !266)
!287 = !DILocation(line: 96, column: 15, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !1, line: 95, column: 19)
!289 = !DILocation(line: 96, column: 13, scope: !288)
!290 = !DILocation(line: 97, column: 5, scope: !288)
!291 = !DILocation(line: 98, column: 9, scope: !292)
!292 = distinct !DILexicalBlock(scope: !266, file: !1, line: 98, column: 9)
!293 = !DILocation(line: 98, column: 15, scope: !292)
!294 = !DILocation(line: 98, column: 13, scope: !292)
!295 = !DILocation(line: 98, column: 9, scope: !266)
!296 = !DILocation(line: 99, column: 15, scope: !297)
!297 = distinct !DILexicalBlock(scope: !292, file: !1, line: 98, column: 18)
!298 = !DILocation(line: 99, column: 13, scope: !297)
!299 = !DILocation(line: 100, column: 5, scope: !297)
!300 = !DILocation(line: 101, column: 10, scope: !301)
!301 = distinct !DILexicalBlock(scope: !266, file: !1, line: 101, column: 10)
!302 = !DILocation(line: 101, column: 16, scope: !301)
!303 = !DILocation(line: 101, column: 14, scope: !301)
!304 = !DILocation(line: 101, column: 10, scope: !266)
!305 = !DILocation(line: 102, column: 15, scope: !306)
!306 = distinct !DILexicalBlock(scope: !301, file: !1, line: 101, column: 19)
!307 = !DILocation(line: 102, column: 13, scope: !306)
!308 = !DILocation(line: 103, column: 5, scope: !306)
!309 = !DILocation(line: 104, column: 10, scope: !310)
!310 = distinct !DILexicalBlock(scope: !266, file: !1, line: 104, column: 10)
!311 = !DILocation(line: 104, column: 16, scope: !310)
!312 = !DILocation(line: 104, column: 14, scope: !310)
!313 = !DILocation(line: 104, column: 10, scope: !266)
!314 = !DILocation(line: 105, column: 15, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !1, line: 104, column: 19)
!316 = !DILocation(line: 105, column: 13, scope: !315)
!317 = !DILocation(line: 106, column: 5, scope: !315)
!318 = !DILocation(line: 107, column: 12, scope: !266)
!319 = !DILocation(line: 107, column: 5, scope: !266)
!320 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 110, type: !321, scopeLine: 110, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!321 = !DISubroutineType(types: !322)
!322 = !{!19}
!323 = !DILocalVariable(name: "alice", scope: !320, file: !1, line: 111, type: !324)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 320, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 10)
!327 = !DILocation(line: 111, column: 9, scope: !320)
!328 = !DILocalVariable(name: "bob", scope: !320, file: !1, line: 112, type: !324)
!329 = !DILocation(line: 112, column: 9, scope: !320)
!330 = !DILocalVariable(name: "in", scope: !320, file: !1, line: 113, type: !331)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 640, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 20)
!334 = !DILocation(line: 113, column: 9, scope: !320)
!335 = !DILocalVariable(name: "i", scope: !336, file: !1, line: 114, type: !19)
!336 = distinct !DILexicalBlock(scope: !320, file: !1, line: 114, column: 5)
!337 = !DILocation(line: 114, column: 14, scope: !336)
!338 = !DILocation(line: 114, column: 10, scope: !336)
!339 = !DILocation(line: 114, column: 21, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !1, line: 114, column: 5)
!341 = !DILocation(line: 114, column: 23, scope: !340)
!342 = !DILocation(line: 114, column: 5, scope: !336)
!343 = !DILocation(line: 116, column: 23, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !1, line: 115, column: 5)
!345 = !DILocation(line: 116, column: 17, scope: !344)
!346 = !DILocation(line: 116, column: 12, scope: !344)
!347 = !DILocation(line: 116, column: 9, scope: !344)
!348 = !DILocation(line: 116, column: 15, scope: !344)
!349 = !DILocation(line: 117, column: 24, scope: !344)
!350 = !DILocation(line: 117, column: 20, scope: !344)
!351 = !DILocation(line: 117, column: 12, scope: !344)
!352 = !DILocation(line: 117, column: 13, scope: !344)
!353 = !DILocation(line: 117, column: 9, scope: !344)
!354 = !DILocation(line: 117, column: 18, scope: !344)
!355 = !DILocation(line: 118, column: 5, scope: !344)
!356 = !DILocation(line: 114, column: 30, scope: !340)
!357 = !DILocation(line: 114, column: 5, scope: !340)
!358 = distinct !{!358, !342, !359}
!359 = !DILocation(line: 118, column: 5, scope: !336)
!360 = !DILocalVariable(name: "r", scope: !320, file: !1, line: 119, type: !19)
!361 = !DILocation(line: 119, column: 9, scope: !320)
!362 = !DILocation(line: 119, column: 27, scope: !320)
!363 = !DILocation(line: 119, column: 13, scope: !320)
!364 = !DILocation(line: 121, column: 12, scope: !320)
!365 = !DILocation(line: 121, column: 5, scope: !320)

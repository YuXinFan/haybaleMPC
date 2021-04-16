; ModuleID = 'array.c'
source_filename = "array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @declassify(i1 zeroext %0) #0 !dbg !7 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !11, metadata !DIExpression()), !dbg !12
  %4 = load i8, i8* %2, align 1, !dbg !13
  %5 = trunc i8 %4 to i1, !dbg !13
  ret i1 %5, !dbg !14
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayElementExtract(i32* %0, i32 %1) #0 !dbg !15 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %5, metadata !24, metadata !DIExpression()), !dbg !25
  %8 = load i32*, i32** %3, align 8, !dbg !26
  %9 = getelementptr inbounds i32, i32* %8, i64 0, !dbg !26
  %10 = load i32, i32* %9, align 4, !dbg !26
  store i32 %10, i32* %5, align 4, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %6, metadata !27, metadata !DIExpression()), !dbg !28
  %11 = load i32*, i32** %3, align 8, !dbg !29
  %12 = getelementptr inbounds i32, i32* %11, i64 1, !dbg !29
  %13 = load i32, i32* %12, align 4, !dbg !29
  store i32 %13, i32* %6, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %7, metadata !30, metadata !DIExpression()), !dbg !31
  %14 = load i32*, i32** %3, align 8, !dbg !32
  %15 = getelementptr inbounds i32, i32* %14, i64 2, !dbg !32
  %16 = load i32, i32* %15, align 4, !dbg !32
  store i32 %16, i32* %7, align 4, !dbg !31
  %17 = load i32, i32* %5, align 4, !dbg !33
  %18 = load i32, i32* %6, align 4, !dbg !34
  %19 = icmp sgt i32 %17, %18, !dbg !35
  br i1 %19, label %20, label %24, !dbg !36

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4, !dbg !37
  %22 = load i32, i32* %7, align 4, !dbg !38
  %23 = icmp sgt i32 %21, %22, !dbg !39
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i1 [ false, %2 ], [ %23, %20 ], !dbg !40
  %26 = zext i1 %25 to i32, !dbg !36
  ret i32 %26, !dbg !41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayElementAssignConstant(i32* %0, i32 %1) #0 !dbg !42 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !43, metadata !DIExpression()), !dbg !44
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !45, metadata !DIExpression()), !dbg !46
  %5 = load i32*, i32** %3, align 8, !dbg !47
  %6 = getelementptr inbounds i32, i32* %5, i64 0, !dbg !47
  store i32 1, i32* %6, align 4, !dbg !48
  %7 = load i32*, i32** %3, align 8, !dbg !49
  %8 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !49
  store i32 2, i32* %8, align 4, !dbg !50
  %9 = load i32*, i32** %3, align 8, !dbg !51
  %10 = getelementptr inbounds i32, i32* %9, i64 2, !dbg !51
  store i32 3, i32* %10, align 4, !dbg !52
  %11 = load i32*, i32** %3, align 8, !dbg !53
  %12 = getelementptr inbounds i32, i32* %11, i64 0, !dbg !53
  %13 = load i32, i32* %12, align 4, !dbg !53
  %14 = load i32*, i32** %3, align 8, !dbg !54
  %15 = getelementptr inbounds i32, i32* %14, i64 1, !dbg !54
  %16 = load i32, i32* %15, align 4, !dbg !54
  %17 = icmp slt i32 %13, %16, !dbg !55
  br i1 %17, label %18, label %26, !dbg !56

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8, !dbg !57
  %20 = getelementptr inbounds i32, i32* %19, i64 1, !dbg !57
  %21 = load i32, i32* %20, align 4, !dbg !57
  %22 = load i32*, i32** %3, align 8, !dbg !58
  %23 = getelementptr inbounds i32, i32* %22, i64 2, !dbg !58
  %24 = load i32, i32* %23, align 4, !dbg !58
  %25 = icmp slt i32 %21, %24, !dbg !59
  br label %26

26:                                               ; preds = %18, %2
  %27 = phi i1 [ false, %2 ], [ %25, %18 ], !dbg !60
  %28 = zext i1 %27 to i32, !dbg !56
  ret i32 %28, !dbg !61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayElementAssignVar(i32* %0, i32 %1, i32 %2) #0 !dbg !62 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !65, metadata !DIExpression()), !dbg !66
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !69, metadata !DIExpression()), !dbg !70
  %7 = load i32, i32* %6, align 4, !dbg !71
  %8 = load i32*, i32** %4, align 8, !dbg !72
  %9 = getelementptr inbounds i32, i32* %8, i64 0, !dbg !72
  store i32 %7, i32* %9, align 4, !dbg !73
  %10 = load i32, i32* %6, align 4, !dbg !74
  %11 = load i32*, i32** %4, align 8, !dbg !75
  %12 = getelementptr inbounds i32, i32* %11, i64 1, !dbg !75
  store i32 %10, i32* %12, align 4, !dbg !76
  %13 = load i32, i32* %6, align 4, !dbg !77
  %14 = load i32*, i32** %4, align 8, !dbg !78
  %15 = getelementptr inbounds i32, i32* %14, i64 2, !dbg !78
  store i32 %13, i32* %15, align 4, !dbg !79
  %16 = load i32*, i32** %4, align 8, !dbg !80
  %17 = getelementptr inbounds i32, i32* %16, i64 0, !dbg !80
  %18 = load i32, i32* %17, align 4, !dbg !80
  %19 = load i32*, i32** %4, align 8, !dbg !81
  %20 = getelementptr inbounds i32, i32* %19, i64 1, !dbg !81
  %21 = load i32, i32* %20, align 4, !dbg !81
  %22 = icmp eq i32 %18, %21, !dbg !82
  br i1 %22, label %23, label %31, !dbg !83

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8, !dbg !84
  %25 = getelementptr inbounds i32, i32* %24, i64 1, !dbg !84
  %26 = load i32, i32* %25, align 4, !dbg !84
  %27 = load i32*, i32** %4, align 8, !dbg !85
  %28 = getelementptr inbounds i32, i32* %27, i64 2, !dbg !85
  %29 = load i32, i32* %28, align 4, !dbg !85
  %30 = icmp eq i32 %26, %29, !dbg !86
  br label %31

31:                                               ; preds = %23, %3
  %32 = phi i1 [ false, %3 ], [ %30, %23 ], !dbg !87
  %33 = zext i1 %32 to i32, !dbg !83
  ret i32 %33, !dbg !88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayElementExchange(i32* %0, i32 %1) #0 !dbg !89 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !90, metadata !DIExpression()), !dbg !91
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !92, metadata !DIExpression()), !dbg !93
  %7 = load i32*, i32** %3, align 8, !dbg !94
  %8 = getelementptr inbounds i32, i32* %7, i64 0, !dbg !94
  %9 = load i32, i32* %8, align 4, !dbg !94
  %10 = load i32*, i32** %3, align 8, !dbg !96
  %11 = getelementptr inbounds i32, i32* %10, i64 1, !dbg !96
  %12 = load i32, i32* %11, align 4, !dbg !96
  %13 = icmp slt i32 %9, %12, !dbg !97
  br i1 %13, label %14, label %26, !dbg !98

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !99, metadata !DIExpression()), !dbg !101
  %15 = load i32*, i32** %3, align 8, !dbg !102
  %16 = getelementptr inbounds i32, i32* %15, i64 0, !dbg !102
  %17 = load i32, i32* %16, align 4, !dbg !102
  store i32 %17, i32* %5, align 4, !dbg !101
  %18 = load i32*, i32** %3, align 8, !dbg !103
  %19 = getelementptr inbounds i32, i32* %18, i64 1, !dbg !103
  %20 = load i32, i32* %19, align 4, !dbg !103
  %21 = load i32*, i32** %3, align 8, !dbg !104
  %22 = getelementptr inbounds i32, i32* %21, i64 0, !dbg !104
  store i32 %20, i32* %22, align 4, !dbg !105
  %23 = load i32, i32* %5, align 4, !dbg !106
  %24 = load i32*, i32** %3, align 8, !dbg !107
  %25 = getelementptr inbounds i32, i32* %24, i64 1, !dbg !107
  store i32 %23, i32* %25, align 4, !dbg !108
  br label %26, !dbg !109

26:                                               ; preds = %14, %2
  %27 = load i32*, i32** %3, align 8, !dbg !110
  %28 = getelementptr inbounds i32, i32* %27, i64 0, !dbg !110
  %29 = load i32, i32* %28, align 4, !dbg !110
  %30 = load i32*, i32** %3, align 8, !dbg !112
  %31 = getelementptr inbounds i32, i32* %30, i64 2, !dbg !112
  %32 = load i32, i32* %31, align 4, !dbg !112
  %33 = icmp slt i32 %29, %32, !dbg !113
  br i1 %33, label %34, label %46, !dbg !114

34:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata i32* %6, metadata !115, metadata !DIExpression()), !dbg !117
  %35 = load i32*, i32** %3, align 8, !dbg !118
  %36 = getelementptr inbounds i32, i32* %35, i64 0, !dbg !118
  %37 = load i32, i32* %36, align 4, !dbg !118
  store i32 %37, i32* %6, align 4, !dbg !117
  %38 = load i32*, i32** %3, align 8, !dbg !119
  %39 = getelementptr inbounds i32, i32* %38, i64 2, !dbg !119
  %40 = load i32, i32* %39, align 4, !dbg !119
  %41 = load i32*, i32** %3, align 8, !dbg !120
  %42 = getelementptr inbounds i32, i32* %41, i64 0, !dbg !120
  store i32 %40, i32* %42, align 4, !dbg !121
  %43 = load i32, i32* %6, align 4, !dbg !122
  %44 = load i32*, i32** %3, align 8, !dbg !123
  %45 = getelementptr inbounds i32, i32* %44, i64 2, !dbg !123
  store i32 %43, i32* %45, align 4, !dbg !124
  br label %46, !dbg !125

46:                                               ; preds = %34, %26
  %47 = load i32*, i32** %3, align 8, !dbg !126
  %48 = getelementptr inbounds i32, i32* %47, i64 0, !dbg !126
  %49 = load i32, i32* %48, align 4, !dbg !126
  %50 = load i32*, i32** %3, align 8, !dbg !127
  %51 = getelementptr inbounds i32, i32* %50, i64 1, !dbg !127
  %52 = load i32, i32* %51, align 4, !dbg !127
  %53 = icmp sgt i32 %49, %52, !dbg !128
  br i1 %53, label %54, label %62, !dbg !129

54:                                               ; preds = %46
  %55 = load i32*, i32** %3, align 8, !dbg !130
  %56 = getelementptr inbounds i32, i32* %55, i64 0, !dbg !130
  %57 = load i32, i32* %56, align 4, !dbg !130
  %58 = load i32*, i32** %3, align 8, !dbg !131
  %59 = getelementptr inbounds i32, i32* %58, i64 2, !dbg !131
  %60 = load i32, i32* %59, align 4, !dbg !131
  %61 = icmp sgt i32 %57, %60, !dbg !132
  br label %62

62:                                               ; preds = %54, %46
  %63 = phi i1 [ false, %46 ], [ %61, %54 ], !dbg !133
  %64 = zext i1 %63 to i32, !dbg !129
  ret i32 %64, !dbg !134
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayMax(i32* %0, i32 %1) #0 !dbg !135 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !136, metadata !DIExpression()), !dbg !137
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %6, metadata !140, metadata !DIExpression()), !dbg !141
  %9 = load i32*, i32** %4, align 8, !dbg !142
  %10 = getelementptr inbounds i32, i32* %9, i64 0, !dbg !142
  %11 = load i32, i32* %10, align 4, !dbg !142
  store i32 %11, i32* %6, align 4, !dbg !141
  call void @llvm.dbg.declare(metadata i32* %7, metadata !143, metadata !DIExpression()), !dbg !145
  store i32 0, i32* %7, align 4, !dbg !145
  br label %12, !dbg !146

12:                                               ; preds = %31, %2
  %13 = load i32, i32* %7, align 4, !dbg !147
  %14 = load i32, i32* %5, align 4, !dbg !149
  %15 = icmp slt i32 %13, %14, !dbg !150
  br i1 %15, label %16, label %34, !dbg !151

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8, !dbg !152
  %18 = load i32, i32* %7, align 4, !dbg !155
  %19 = sext i32 %18 to i64, !dbg !152
  %20 = getelementptr inbounds i32, i32* %17, i64 %19, !dbg !152
  %21 = load i32, i32* %20, align 4, !dbg !152
  %22 = load i32, i32* %6, align 4, !dbg !156
  %23 = icmp sgt i32 %21, %22, !dbg !157
  br i1 %23, label %24, label %30, !dbg !158

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8, !dbg !159
  %26 = load i32, i32* %7, align 4, !dbg !161
  %27 = sext i32 %26 to i64, !dbg !159
  %28 = getelementptr inbounds i32, i32* %25, i64 %27, !dbg !159
  %29 = load i32, i32* %28, align 4, !dbg !159
  store i32 %29, i32* %6, align 4, !dbg !162
  br label %30, !dbg !163

30:                                               ; preds = %24, %16
  br label %31, !dbg !164

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4, !dbg !165
  %33 = add nsw i32 %32, 1, !dbg !165
  store i32 %33, i32* %7, align 4, !dbg !165
  br label %12, !dbg !166, !llvm.loop !167

34:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata i32* %8, metadata !169, metadata !DIExpression()), !dbg !171
  store i32 0, i32* %8, align 4, !dbg !171
  br label %35, !dbg !172

35:                                               ; preds = %49, %34
  %36 = load i32, i32* %8, align 4, !dbg !173
  %37 = load i32, i32* %5, align 4, !dbg !175
  %38 = icmp slt i32 %36, %37, !dbg !176
  br i1 %38, label %39, label %52, !dbg !177

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4, !dbg !178
  %41 = load i32*, i32** %4, align 8, !dbg !181
  %42 = load i32, i32* %8, align 4, !dbg !182
  %43 = sext i32 %42 to i64, !dbg !181
  %44 = getelementptr inbounds i32, i32* %41, i64 %43, !dbg !181
  %45 = load i32, i32* %44, align 4, !dbg !181
  %46 = icmp slt i32 %40, %45, !dbg !183
  br i1 %46, label %47, label %48, !dbg !184

47:                                               ; preds = %39
  store i32 0, i32* %3, align 4, !dbg !185
  br label %53, !dbg !185

48:                                               ; preds = %39
  br label %49, !dbg !187

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4, !dbg !188
  %51 = add nsw i32 %50, 1, !dbg !188
  store i32 %51, i32* %8, align 4, !dbg !188
  br label %35, !dbg !189, !llvm.loop !190

52:                                               ; preds = %35
  store i32 1, i32* %3, align 4, !dbg !192
  br label %53, !dbg !192

53:                                               ; preds = %52, %47
  %54 = load i32, i32* %3, align 4, !dbg !193
  ret i32 %54, !dbg !193
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayTwoMax(i32* %0, i32 %1, i32* %2, i32 %3) #0 !dbg !194 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !197, metadata !DIExpression()), !dbg !198
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !199, metadata !DIExpression()), !dbg !200
  store i32* %2, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !201, metadata !DIExpression()), !dbg !202
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata i32* %10, metadata !205, metadata !DIExpression()), !dbg !206
  %15 = load i32*, i32** %6, align 8, !dbg !207
  %16 = getelementptr inbounds i32, i32* %15, i64 0, !dbg !207
  %17 = load i32, i32* %16, align 4, !dbg !207
  store i32 %17, i32* %10, align 4, !dbg !206
  call void @llvm.dbg.declare(metadata i32* %11, metadata !208, metadata !DIExpression()), !dbg !210
  store i32 0, i32* %11, align 4, !dbg !210
  br label %18, !dbg !211

18:                                               ; preds = %37, %4
  %19 = load i32, i32* %11, align 4, !dbg !212
  %20 = load i32, i32* %7, align 4, !dbg !214
  %21 = icmp slt i32 %19, %20, !dbg !215
  br i1 %21, label %22, label %40, !dbg !216

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8, !dbg !217
  %24 = load i32, i32* %11, align 4, !dbg !220
  %25 = sext i32 %24 to i64, !dbg !217
  %26 = getelementptr inbounds i32, i32* %23, i64 %25, !dbg !217
  %27 = load i32, i32* %26, align 4, !dbg !217
  %28 = load i32, i32* %10, align 4, !dbg !221
  %29 = icmp sgt i32 %27, %28, !dbg !222
  br i1 %29, label %30, label %36, !dbg !223

30:                                               ; preds = %22
  %31 = load i32*, i32** %6, align 8, !dbg !224
  %32 = load i32, i32* %11, align 4, !dbg !226
  %33 = sext i32 %32 to i64, !dbg !224
  %34 = getelementptr inbounds i32, i32* %31, i64 %33, !dbg !224
  %35 = load i32, i32* %34, align 4, !dbg !224
  store i32 %35, i32* %10, align 4, !dbg !227
  br label %36, !dbg !228

36:                                               ; preds = %30, %22
  br label %37, !dbg !229

37:                                               ; preds = %36
  %38 = load i32, i32* %11, align 4, !dbg !230
  %39 = add nsw i32 %38, 1, !dbg !230
  store i32 %39, i32* %11, align 4, !dbg !230
  br label %18, !dbg !231, !llvm.loop !232

40:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %12, metadata !234, metadata !DIExpression()), !dbg !236
  store i32 0, i32* %12, align 4, !dbg !236
  br label %41, !dbg !237

41:                                               ; preds = %60, %40
  %42 = load i32, i32* %12, align 4, !dbg !238
  %43 = load i32, i32* %9, align 4, !dbg !240
  %44 = icmp slt i32 %42, %43, !dbg !241
  br i1 %44, label %45, label %63, !dbg !242

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8, !dbg !243
  %47 = load i32, i32* %12, align 4, !dbg !246
  %48 = sext i32 %47 to i64, !dbg !243
  %49 = getelementptr inbounds i32, i32* %46, i64 %48, !dbg !243
  %50 = load i32, i32* %49, align 4, !dbg !243
  %51 = load i32, i32* %10, align 4, !dbg !247
  %52 = icmp sgt i32 %50, %51, !dbg !248
  br i1 %52, label %53, label %59, !dbg !249

53:                                               ; preds = %45
  %54 = load i32*, i32** %8, align 8, !dbg !250
  %55 = load i32, i32* %12, align 4, !dbg !252
  %56 = sext i32 %55 to i64, !dbg !250
  %57 = getelementptr inbounds i32, i32* %54, i64 %56, !dbg !250
  %58 = load i32, i32* %57, align 4, !dbg !250
  store i32 %58, i32* %10, align 4, !dbg !253
  br label %59, !dbg !254

59:                                               ; preds = %53, %45
  br label %60, !dbg !255

60:                                               ; preds = %59
  %61 = load i32, i32* %12, align 4, !dbg !256
  %62 = add nsw i32 %61, 1, !dbg !256
  store i32 %62, i32* %12, align 4, !dbg !256
  br label %41, !dbg !257, !llvm.loop !258

63:                                               ; preds = %41
  call void @llvm.dbg.declare(metadata i32* %13, metadata !260, metadata !DIExpression()), !dbg !262
  store i32 0, i32* %13, align 4, !dbg !262
  br label %64, !dbg !263

64:                                               ; preds = %78, %63
  %65 = load i32, i32* %13, align 4, !dbg !264
  %66 = load i32, i32* %7, align 4, !dbg !266
  %67 = icmp slt i32 %65, %66, !dbg !267
  br i1 %67, label %68, label %81, !dbg !268

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4, !dbg !269
  %70 = load i32*, i32** %6, align 8, !dbg !272
  %71 = load i32, i32* %13, align 4, !dbg !273
  %72 = sext i32 %71 to i64, !dbg !272
  %73 = getelementptr inbounds i32, i32* %70, i64 %72, !dbg !272
  %74 = load i32, i32* %73, align 4, !dbg !272
  %75 = icmp slt i32 %69, %74, !dbg !274
  br i1 %75, label %76, label %77, !dbg !275

76:                                               ; preds = %68
  store i32 0, i32* %5, align 4, !dbg !276
  br label %100, !dbg !276

77:                                               ; preds = %68
  br label %78, !dbg !278

78:                                               ; preds = %77
  %79 = load i32, i32* %13, align 4, !dbg !279
  %80 = add nsw i32 %79, 1, !dbg !279
  store i32 %80, i32* %13, align 4, !dbg !279
  br label %64, !dbg !280, !llvm.loop !281

81:                                               ; preds = %64
  call void @llvm.dbg.declare(metadata i32* %14, metadata !283, metadata !DIExpression()), !dbg !285
  store i32 0, i32* %14, align 4, !dbg !285
  br label %82, !dbg !286

82:                                               ; preds = %96, %81
  %83 = load i32, i32* %14, align 4, !dbg !287
  %84 = load i32, i32* %9, align 4, !dbg !289
  %85 = icmp slt i32 %83, %84, !dbg !290
  br i1 %85, label %86, label %99, !dbg !291

86:                                               ; preds = %82
  %87 = load i32, i32* %10, align 4, !dbg !292
  %88 = load i32*, i32** %8, align 8, !dbg !295
  %89 = load i32, i32* %14, align 4, !dbg !296
  %90 = sext i32 %89 to i64, !dbg !295
  %91 = getelementptr inbounds i32, i32* %88, i64 %90, !dbg !295
  %92 = load i32, i32* %91, align 4, !dbg !295
  %93 = icmp slt i32 %87, %92, !dbg !297
  br i1 %93, label %94, label %95, !dbg !298

94:                                               ; preds = %86
  store i32 0, i32* %5, align 4, !dbg !299
  br label %100, !dbg !299

95:                                               ; preds = %86
  br label %96, !dbg !301

96:                                               ; preds = %95
  %97 = load i32, i32* %14, align 4, !dbg !302
  %98 = add nsw i32 %97, 1, !dbg !302
  store i32 %98, i32* %14, align 4, !dbg !302
  br label %82, !dbg !303, !llvm.loop !304

99:                                               ; preds = %82
  store i32 1, i32* %5, align 4, !dbg !306
  br label %100, !dbg !306

100:                                              ; preds = %99, %94, %76
  %101 = load i32, i32* %5, align 4, !dbg !307
  ret i32 %101, !dbg !307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !308 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0, !dbg !311
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 11.1.0-++20210204121720+1fdec59bffc1-1~exp1~20210203232336.162", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "array.c", directory: "/home/fanyx/projects/haybaleMPC/tests/newfiles")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"Ubuntu clang version 11.1.0-++20210204121720+1fdec59bffc1-1~exp1~20210203232336.162"}
!7 = distinct !DISubprogram(name: "declassify", scope: !1, file: !1, line: 5, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!11 = !DILocalVariable(name: "b", arg: 1, scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 22, scope: !7)
!13 = !DILocation(line: 6, column: 12, scope: !7)
!14 = !DILocation(line: 6, column: 5, scope: !7)
!15 = distinct !DISubprogram(name: "ArrayElementExtract", scope: !1, file: !1, line: 9, type: !16, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!20 = !DILocalVariable(name: "a", arg: 1, scope: !15, file: !1, line: 9, type: !19)
!21 = !DILocation(line: 9, column: 29, scope: !15)
!22 = !DILocalVariable(name: "n", arg: 2, scope: !15, file: !1, line: 9, type: !18)
!23 = !DILocation(line: 9, column: 38, scope: !15)
!24 = !DILocalVariable(name: "t", scope: !15, file: !1, line: 10, type: !18)
!25 = !DILocation(line: 10, column: 9, scope: !15)
!26 = !DILocation(line: 10, column: 13, scope: !15)
!27 = !DILocalVariable(name: "c", scope: !15, file: !1, line: 11, type: !18)
!28 = !DILocation(line: 11, column: 9, scope: !15)
!29 = !DILocation(line: 11, column: 13, scope: !15)
!30 = !DILocalVariable(name: "d", scope: !15, file: !1, line: 12, type: !18)
!31 = !DILocation(line: 12, column: 9, scope: !15)
!32 = !DILocation(line: 12, column: 13, scope: !15)
!33 = !DILocation(line: 13, column: 12, scope: !15)
!34 = !DILocation(line: 13, column: 16, scope: !15)
!35 = !DILocation(line: 13, column: 14, scope: !15)
!36 = !DILocation(line: 13, column: 18, scope: !15)
!37 = !DILocation(line: 13, column: 21, scope: !15)
!38 = !DILocation(line: 13, column: 25, scope: !15)
!39 = !DILocation(line: 13, column: 23, scope: !15)
!40 = !DILocation(line: 0, scope: !15)
!41 = !DILocation(line: 13, column: 5, scope: !15)
!42 = distinct !DISubprogram(name: "ArrayElementAssignConstant", scope: !1, file: !1, line: 15, type: !16, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!43 = !DILocalVariable(name: "a", arg: 1, scope: !42, file: !1, line: 15, type: !19)
!44 = !DILocation(line: 15, column: 36, scope: !42)
!45 = !DILocalVariable(name: "n", arg: 2, scope: !42, file: !1, line: 15, type: !18)
!46 = !DILocation(line: 15, column: 45, scope: !42)
!47 = !DILocation(line: 16, column: 5, scope: !42)
!48 = !DILocation(line: 16, column: 10, scope: !42)
!49 = !DILocation(line: 17, column: 5, scope: !42)
!50 = !DILocation(line: 17, column: 10, scope: !42)
!51 = !DILocation(line: 18, column: 5, scope: !42)
!52 = !DILocation(line: 18, column: 10, scope: !42)
!53 = !DILocation(line: 19, column: 12, scope: !42)
!54 = !DILocation(line: 19, column: 18, scope: !42)
!55 = !DILocation(line: 19, column: 16, scope: !42)
!56 = !DILocation(line: 19, column: 23, scope: !42)
!57 = !DILocation(line: 19, column: 26, scope: !42)
!58 = !DILocation(line: 19, column: 33, scope: !42)
!59 = !DILocation(line: 19, column: 31, scope: !42)
!60 = !DILocation(line: 0, scope: !42)
!61 = !DILocation(line: 19, column: 5, scope: !42)
!62 = distinct !DISubprogram(name: "ArrayElementAssignVar", scope: !1, file: !1, line: 21, type: !63, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!63 = !DISubroutineType(types: !64)
!64 = !{!18, !19, !18, !18}
!65 = !DILocalVariable(name: "a", arg: 1, scope: !62, file: !1, line: 21, type: !19)
!66 = !DILocation(line: 21, column: 31, scope: !62)
!67 = !DILocalVariable(name: "n", arg: 2, scope: !62, file: !1, line: 21, type: !18)
!68 = !DILocation(line: 21, column: 40, scope: !62)
!69 = !DILocalVariable(name: "x", arg: 3, scope: !62, file: !1, line: 21, type: !18)
!70 = !DILocation(line: 21, column: 47, scope: !62)
!71 = !DILocation(line: 22, column: 12, scope: !62)
!72 = !DILocation(line: 22, column: 5, scope: !62)
!73 = !DILocation(line: 22, column: 10, scope: !62)
!74 = !DILocation(line: 23, column: 12, scope: !62)
!75 = !DILocation(line: 23, column: 5, scope: !62)
!76 = !DILocation(line: 23, column: 10, scope: !62)
!77 = !DILocation(line: 24, column: 12, scope: !62)
!78 = !DILocation(line: 24, column: 5, scope: !62)
!79 = !DILocation(line: 24, column: 10, scope: !62)
!80 = !DILocation(line: 25, column: 12, scope: !62)
!81 = !DILocation(line: 25, column: 20, scope: !62)
!82 = !DILocation(line: 25, column: 17, scope: !62)
!83 = !DILocation(line: 25, column: 25, scope: !62)
!84 = !DILocation(line: 25, column: 28, scope: !62)
!85 = !DILocation(line: 25, column: 36, scope: !62)
!86 = !DILocation(line: 25, column: 33, scope: !62)
!87 = !DILocation(line: 0, scope: !62)
!88 = !DILocation(line: 25, column: 5, scope: !62)
!89 = distinct !DISubprogram(name: "ArrayElementExchange", scope: !1, file: !1, line: 28, type: !16, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!90 = !DILocalVariable(name: "a", arg: 1, scope: !89, file: !1, line: 28, type: !19)
!91 = !DILocation(line: 28, column: 30, scope: !89)
!92 = !DILocalVariable(name: "n", arg: 2, scope: !89, file: !1, line: 28, type: !18)
!93 = !DILocation(line: 28, column: 39, scope: !89)
!94 = !DILocation(line: 29, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !89, file: !1, line: 29, column: 9)
!96 = !DILocation(line: 29, column: 16, scope: !95)
!97 = !DILocation(line: 29, column: 14, scope: !95)
!98 = !DILocation(line: 29, column: 9, scope: !89)
!99 = !DILocalVariable(name: "t", scope: !100, file: !1, line: 30, type: !18)
!100 = distinct !DILexicalBlock(scope: !95, file: !1, line: 29, column: 22)
!101 = !DILocation(line: 30, column: 13, scope: !100)
!102 = !DILocation(line: 30, column: 17, scope: !100)
!103 = !DILocation(line: 31, column: 16, scope: !100)
!104 = !DILocation(line: 31, column: 9, scope: !100)
!105 = !DILocation(line: 31, column: 14, scope: !100)
!106 = !DILocation(line: 32, column: 16, scope: !100)
!107 = !DILocation(line: 32, column: 9, scope: !100)
!108 = !DILocation(line: 32, column: 14, scope: !100)
!109 = !DILocation(line: 33, column: 5, scope: !100)
!110 = !DILocation(line: 34, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !89, file: !1, line: 34, column: 9)
!112 = !DILocation(line: 34, column: 16, scope: !111)
!113 = !DILocation(line: 34, column: 14, scope: !111)
!114 = !DILocation(line: 34, column: 9, scope: !89)
!115 = !DILocalVariable(name: "y", scope: !116, file: !1, line: 35, type: !18)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 34, column: 22)
!117 = !DILocation(line: 35, column: 13, scope: !116)
!118 = !DILocation(line: 35, column: 17, scope: !116)
!119 = !DILocation(line: 36, column: 16, scope: !116)
!120 = !DILocation(line: 36, column: 9, scope: !116)
!121 = !DILocation(line: 36, column: 14, scope: !116)
!122 = !DILocation(line: 37, column: 16, scope: !116)
!123 = !DILocation(line: 37, column: 9, scope: !116)
!124 = !DILocation(line: 37, column: 14, scope: !116)
!125 = !DILocation(line: 38, column: 5, scope: !116)
!126 = !DILocation(line: 39, column: 12, scope: !89)
!127 = !DILocation(line: 39, column: 19, scope: !89)
!128 = !DILocation(line: 39, column: 17, scope: !89)
!129 = !DILocation(line: 39, column: 24, scope: !89)
!130 = !DILocation(line: 39, column: 27, scope: !89)
!131 = !DILocation(line: 39, column: 34, scope: !89)
!132 = !DILocation(line: 39, column: 32, scope: !89)
!133 = !DILocation(line: 0, scope: !89)
!134 = !DILocation(line: 39, column: 5, scope: !89)
!135 = distinct !DISubprogram(name: "ArrayMax", scope: !1, file: !1, line: 42, type: !16, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!136 = !DILocalVariable(name: "a", arg: 1, scope: !135, file: !1, line: 42, type: !19)
!137 = !DILocation(line: 42, column: 18, scope: !135)
!138 = !DILocalVariable(name: "n", arg: 2, scope: !135, file: !1, line: 42, type: !18)
!139 = !DILocation(line: 42, column: 27, scope: !135)
!140 = !DILocalVariable(name: "max", scope: !135, file: !1, line: 43, type: !18)
!141 = !DILocation(line: 43, column: 9, scope: !135)
!142 = !DILocation(line: 43, column: 15, scope: !135)
!143 = !DILocalVariable(name: "i", scope: !144, file: !1, line: 44, type: !18)
!144 = distinct !DILexicalBlock(scope: !135, file: !1, line: 44, column: 5)
!145 = !DILocation(line: 44, column: 14, scope: !144)
!146 = !DILocation(line: 44, column: 10, scope: !144)
!147 = !DILocation(line: 44, column: 21, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !1, line: 44, column: 5)
!149 = !DILocation(line: 44, column: 25, scope: !148)
!150 = !DILocation(line: 44, column: 23, scope: !148)
!151 = !DILocation(line: 44, column: 5, scope: !144)
!152 = !DILocation(line: 45, column: 13, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 45, column: 13)
!154 = distinct !DILexicalBlock(scope: !148, file: !1, line: 44, column: 33)
!155 = !DILocation(line: 45, column: 15, scope: !153)
!156 = !DILocation(line: 45, column: 18, scope: !153)
!157 = !DILocation(line: 45, column: 17, scope: !153)
!158 = !DILocation(line: 45, column: 13, scope: !154)
!159 = !DILocation(line: 46, column: 19, scope: !160)
!160 = distinct !DILexicalBlock(scope: !153, file: !1, line: 45, column: 22)
!161 = !DILocation(line: 46, column: 21, scope: !160)
!162 = !DILocation(line: 46, column: 17, scope: !160)
!163 = !DILocation(line: 47, column: 9, scope: !160)
!164 = !DILocation(line: 48, column: 5, scope: !154)
!165 = !DILocation(line: 44, column: 29, scope: !148)
!166 = !DILocation(line: 44, column: 5, scope: !148)
!167 = distinct !{!167, !151, !168}
!168 = !DILocation(line: 48, column: 5, scope: !144)
!169 = !DILocalVariable(name: "i", scope: !170, file: !1, line: 49, type: !18)
!170 = distinct !DILexicalBlock(scope: !135, file: !1, line: 49, column: 5)
!171 = !DILocation(line: 49, column: 14, scope: !170)
!172 = !DILocation(line: 49, column: 10, scope: !170)
!173 = !DILocation(line: 49, column: 21, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 49, column: 5)
!175 = !DILocation(line: 49, column: 25, scope: !174)
!176 = !DILocation(line: 49, column: 23, scope: !174)
!177 = !DILocation(line: 49, column: 5, scope: !170)
!178 = !DILocation(line: 50, column: 13, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 50, column: 13)
!180 = distinct !DILexicalBlock(scope: !174, file: !1, line: 49, column: 33)
!181 = !DILocation(line: 50, column: 19, scope: !179)
!182 = !DILocation(line: 50, column: 21, scope: !179)
!183 = !DILocation(line: 50, column: 17, scope: !179)
!184 = !DILocation(line: 50, column: 13, scope: !180)
!185 = !DILocation(line: 51, column: 13, scope: !186)
!186 = distinct !DILexicalBlock(scope: !179, file: !1, line: 50, column: 25)
!187 = !DILocation(line: 53, column: 5, scope: !180)
!188 = !DILocation(line: 49, column: 29, scope: !174)
!189 = !DILocation(line: 49, column: 5, scope: !174)
!190 = distinct !{!190, !177, !191}
!191 = !DILocation(line: 53, column: 5, scope: !170)
!192 = !DILocation(line: 54, column: 5, scope: !135)
!193 = !DILocation(line: 55, column: 1, scope: !135)
!194 = distinct !DISubprogram(name: "ArrayTwoMax", scope: !1, file: !1, line: 56, type: !195, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!195 = !DISubroutineType(types: !196)
!196 = !{!18, !19, !18, !19, !18}
!197 = !DILocalVariable(name: "a", arg: 1, scope: !194, file: !1, line: 56, type: !19)
!198 = !DILocation(line: 56, column: 21, scope: !194)
!199 = !DILocalVariable(name: "n1", arg: 2, scope: !194, file: !1, line: 56, type: !18)
!200 = !DILocation(line: 56, column: 30, scope: !194)
!201 = !DILocalVariable(name: "b", arg: 3, scope: !194, file: !1, line: 56, type: !19)
!202 = !DILocation(line: 56, column: 38, scope: !194)
!203 = !DILocalVariable(name: "n2", arg: 4, scope: !194, file: !1, line: 56, type: !18)
!204 = !DILocation(line: 56, column: 47, scope: !194)
!205 = !DILocalVariable(name: "max", scope: !194, file: !1, line: 57, type: !18)
!206 = !DILocation(line: 57, column: 9, scope: !194)
!207 = !DILocation(line: 57, column: 15, scope: !194)
!208 = !DILocalVariable(name: "i", scope: !209, file: !1, line: 58, type: !18)
!209 = distinct !DILexicalBlock(scope: !194, file: !1, line: 58, column: 5)
!210 = !DILocation(line: 58, column: 14, scope: !209)
!211 = !DILocation(line: 58, column: 10, scope: !209)
!212 = !DILocation(line: 58, column: 21, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !1, line: 58, column: 5)
!214 = !DILocation(line: 58, column: 25, scope: !213)
!215 = !DILocation(line: 58, column: 23, scope: !213)
!216 = !DILocation(line: 58, column: 5, scope: !209)
!217 = !DILocation(line: 59, column: 13, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !1, line: 59, column: 13)
!219 = distinct !DILexicalBlock(scope: !213, file: !1, line: 58, column: 34)
!220 = !DILocation(line: 59, column: 15, scope: !218)
!221 = !DILocation(line: 59, column: 20, scope: !218)
!222 = !DILocation(line: 59, column: 18, scope: !218)
!223 = !DILocation(line: 59, column: 13, scope: !219)
!224 = !DILocation(line: 60, column: 19, scope: !225)
!225 = distinct !DILexicalBlock(scope: !218, file: !1, line: 59, column: 25)
!226 = !DILocation(line: 60, column: 21, scope: !225)
!227 = !DILocation(line: 60, column: 17, scope: !225)
!228 = !DILocation(line: 61, column: 9, scope: !225)
!229 = !DILocation(line: 62, column: 5, scope: !219)
!230 = !DILocation(line: 58, column: 30, scope: !213)
!231 = !DILocation(line: 58, column: 5, scope: !213)
!232 = distinct !{!232, !216, !233}
!233 = !DILocation(line: 62, column: 5, scope: !209)
!234 = !DILocalVariable(name: "i", scope: !235, file: !1, line: 64, type: !18)
!235 = distinct !DILexicalBlock(scope: !194, file: !1, line: 64, column: 5)
!236 = !DILocation(line: 64, column: 14, scope: !235)
!237 = !DILocation(line: 64, column: 10, scope: !235)
!238 = !DILocation(line: 64, column: 21, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !1, line: 64, column: 5)
!240 = !DILocation(line: 64, column: 25, scope: !239)
!241 = !DILocation(line: 64, column: 23, scope: !239)
!242 = !DILocation(line: 64, column: 5, scope: !235)
!243 = !DILocation(line: 65, column: 14, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 65, column: 14)
!245 = distinct !DILexicalBlock(scope: !239, file: !1, line: 64, column: 34)
!246 = !DILocation(line: 65, column: 16, scope: !244)
!247 = !DILocation(line: 65, column: 21, scope: !244)
!248 = !DILocation(line: 65, column: 19, scope: !244)
!249 = !DILocation(line: 65, column: 14, scope: !245)
!250 = !DILocation(line: 66, column: 19, scope: !251)
!251 = distinct !DILexicalBlock(scope: !244, file: !1, line: 65, column: 26)
!252 = !DILocation(line: 66, column: 21, scope: !251)
!253 = !DILocation(line: 66, column: 17, scope: !251)
!254 = !DILocation(line: 67, column: 9, scope: !251)
!255 = !DILocation(line: 68, column: 5, scope: !245)
!256 = !DILocation(line: 64, column: 30, scope: !239)
!257 = !DILocation(line: 64, column: 5, scope: !239)
!258 = distinct !{!258, !242, !259}
!259 = !DILocation(line: 68, column: 5, scope: !235)
!260 = !DILocalVariable(name: "i", scope: !261, file: !1, line: 69, type: !18)
!261 = distinct !DILexicalBlock(scope: !194, file: !1, line: 69, column: 5)
!262 = !DILocation(line: 69, column: 14, scope: !261)
!263 = !DILocation(line: 69, column: 10, scope: !261)
!264 = !DILocation(line: 69, column: 21, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !1, line: 69, column: 5)
!266 = !DILocation(line: 69, column: 25, scope: !265)
!267 = !DILocation(line: 69, column: 23, scope: !265)
!268 = !DILocation(line: 69, column: 5, scope: !261)
!269 = !DILocation(line: 70, column: 13, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !1, line: 70, column: 13)
!271 = distinct !DILexicalBlock(scope: !265, file: !1, line: 69, column: 34)
!272 = !DILocation(line: 70, column: 19, scope: !270)
!273 = !DILocation(line: 70, column: 21, scope: !270)
!274 = !DILocation(line: 70, column: 17, scope: !270)
!275 = !DILocation(line: 70, column: 13, scope: !271)
!276 = !DILocation(line: 71, column: 13, scope: !277)
!277 = distinct !DILexicalBlock(scope: !270, file: !1, line: 70, column: 25)
!278 = !DILocation(line: 73, column: 5, scope: !271)
!279 = !DILocation(line: 69, column: 30, scope: !265)
!280 = !DILocation(line: 69, column: 5, scope: !265)
!281 = distinct !{!281, !268, !282}
!282 = !DILocation(line: 73, column: 5, scope: !261)
!283 = !DILocalVariable(name: "i", scope: !284, file: !1, line: 74, type: !18)
!284 = distinct !DILexicalBlock(scope: !194, file: !1, line: 74, column: 5)
!285 = !DILocation(line: 74, column: 14, scope: !284)
!286 = !DILocation(line: 74, column: 10, scope: !284)
!287 = !DILocation(line: 74, column: 21, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !1, line: 74, column: 5)
!289 = !DILocation(line: 74, column: 25, scope: !288)
!290 = !DILocation(line: 74, column: 23, scope: !288)
!291 = !DILocation(line: 74, column: 5, scope: !284)
!292 = !DILocation(line: 75, column: 13, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !1, line: 75, column: 13)
!294 = distinct !DILexicalBlock(scope: !288, file: !1, line: 74, column: 34)
!295 = !DILocation(line: 75, column: 19, scope: !293)
!296 = !DILocation(line: 75, column: 21, scope: !293)
!297 = !DILocation(line: 75, column: 17, scope: !293)
!298 = !DILocation(line: 75, column: 13, scope: !294)
!299 = !DILocation(line: 76, column: 13, scope: !300)
!300 = distinct !DILexicalBlock(scope: !293, file: !1, line: 75, column: 25)
!301 = !DILocation(line: 78, column: 5, scope: !294)
!302 = !DILocation(line: 74, column: 30, scope: !288)
!303 = !DILocation(line: 74, column: 5, scope: !288)
!304 = distinct !{!304, !291, !305}
!305 = !DILocation(line: 78, column: 5, scope: !284)
!306 = !DILocation(line: 79, column: 5, scope: !194)
!307 = !DILocation(line: 80, column: 1, scope: !194)
!308 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 81, type: !309, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!309 = !DISubroutineType(types: !310)
!310 = !{!18}
!311 = !DILocation(line: 83, column: 5, scope: !308)

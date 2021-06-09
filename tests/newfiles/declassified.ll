; ModuleID = 'declassified.c'
source_filename = "declassified.c"
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
define dso_local i32 @Millionaire(i32 %0, i32 %1) #0 !dbg !15 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  %6 = load i32, i32* %4, align 4, !dbg !23
  %7 = load i32, i32* %5, align 4, !dbg !25
  %8 = icmp sgt i32 %6, %7, !dbg !26
  %9 = call zeroext i1 @declassify(i1 zeroext %8), !dbg !27
  br i1 %9, label %10, label %11, !dbg !28

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !29
  br label %12, !dbg !29

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !31
  br label %12, !dbg !31

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !33
  ret i32 %13, !dbg !33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Max(i32 %0, i32 %1, i32 %2) #0 !dbg !34 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !39, metadata !DIExpression()), !dbg !40
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i8* %7, metadata !43, metadata !DIExpression()), !dbg !45
  store i8 97, i8* %7, align 1, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %8, metadata !46, metadata !DIExpression()), !dbg !47
  %9 = load i32, i32* %4, align 4, !dbg !48
  store i32 %9, i32* %8, align 4, !dbg !47
  %10 = load i32, i32* %8, align 4, !dbg !49
  %11 = load i32, i32* %5, align 4, !dbg !51
  %12 = icmp slt i32 %10, %11, !dbg !52
  br i1 %12, label %13, label %15, !dbg !53

13:                                               ; preds = %3
  store i8 98, i8* %7, align 1, !dbg !54
  %14 = load i32, i32* %5, align 4, !dbg !56
  store i32 %14, i32* %8, align 4, !dbg !57
  br label %15, !dbg !58

15:                                               ; preds = %13, %3
  %16 = load i32, i32* %8, align 4, !dbg !59
  %17 = load i32, i32* %6, align 4, !dbg !61
  %18 = icmp slt i32 %16, %17, !dbg !62
  %19 = call zeroext i1 @declassify(i1 zeroext %18), !dbg !63
  br i1 %19, label %20, label %21, !dbg !64

20:                                               ; preds = %15
  store i8 99, i8* %7, align 1, !dbg !65
  br label %21, !dbg !67

21:                                               ; preds = %20, %15
  %22 = load i8, i8* %7, align 1, !dbg !68
  %23 = sext i8 %22 to i32, !dbg !68
  ret i32 %23, !dbg !69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MaxLeak(i32 %0, i32 %1, i32 %2) #0 !dbg !70 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !71, metadata !DIExpression()), !dbg !72
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !73, metadata !DIExpression()), !dbg !74
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i8* %7, metadata !77, metadata !DIExpression()), !dbg !78
  store i8 97, i8* %7, align 1, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %8, metadata !79, metadata !DIExpression()), !dbg !80
  %9 = load i32, i32* %4, align 4, !dbg !81
  store i32 %9, i32* %8, align 4, !dbg !80
  %10 = load i32, i32* %8, align 4, !dbg !82
  %11 = load i32, i32* %5, align 4, !dbg !84
  %12 = icmp slt i32 %10, %11, !dbg !85
  %13 = call zeroext i1 @declassify(i1 zeroext %12), !dbg !86
  br i1 %13, label %14, label %16, !dbg !87

14:                                               ; preds = %3
  store i8 98, i8* %7, align 1, !dbg !88
  %15 = load i32, i32* %5, align 4, !dbg !90
  store i32 %15, i32* %8, align 4, !dbg !91
  br label %16, !dbg !92

16:                                               ; preds = %14, %3
  %17 = load i32, i32* %8, align 4, !dbg !93
  %18 = load i32, i32* %6, align 4, !dbg !95
  %19 = icmp slt i32 %17, %18, !dbg !96
  br i1 %19, label %20, label %21, !dbg !97

20:                                               ; preds = %16
  store i8 99, i8* %7, align 1, !dbg !98
  br label %21, !dbg !100

21:                                               ; preds = %20, %16
  %22 = load i8, i8* %7, align 1, !dbg !101
  %23 = sext i8 %22 to i32, !dbg !101
  ret i32 %23, !dbg !102
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @Intersection(i32* %0, i32 %1, i32* %2, i32 %3) #0 !dbg !103 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !107, metadata !DIExpression()), !dbg !108
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !109, metadata !DIExpression()), !dbg !110
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !111, metadata !DIExpression()), !dbg !112
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !113, metadata !DIExpression()), !dbg !114
  %14 = load i32, i32* %6, align 4, !dbg !115
  %15 = load i32, i32* %8, align 4, !dbg !116
  %16 = add nsw i32 %14, %15, !dbg !117
  %17 = zext i32 %16 to i64, !dbg !118
  %18 = call i8* @llvm.stacksave(), !dbg !118
  store i8* %18, i8** %9, align 8, !dbg !118
  %19 = alloca i32, i64 %17, align 16, !dbg !118
  store i64 %17, i64* %10, align 8, !dbg !118
  call void @llvm.dbg.declare(metadata i64* %10, metadata !119, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i32* %19, metadata !122, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata i32* %11, metadata !127, metadata !DIExpression()), !dbg !129
  store i32 0, i32* %11, align 4, !dbg !129
  br label %20, !dbg !130

20:                                               ; preds = %30, %4
  %21 = load i32, i32* %11, align 4, !dbg !131
  %22 = load i32, i32* %6, align 4, !dbg !133
  %23 = load i32, i32* %8, align 4, !dbg !134
  %24 = add nsw i32 %22, %23, !dbg !135
  %25 = icmp slt i32 %21, %24, !dbg !136
  br i1 %25, label %26, label %33, !dbg !137

26:                                               ; preds = %20
  %27 = load i32, i32* %11, align 4, !dbg !138
  %28 = sext i32 %27 to i64, !dbg !140
  %29 = getelementptr inbounds i32, i32* %19, i64 %28, !dbg !140
  store i32 0, i32* %29, align 4, !dbg !141
  br label %30, !dbg !142

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4, !dbg !143
  %32 = add nsw i32 %31, 1, !dbg !143
  store i32 %32, i32* %11, align 4, !dbg !143
  br label %20, !dbg !144, !llvm.loop !145

33:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata i32* %12, metadata !147, metadata !DIExpression()), !dbg !149
  store i32 0, i32* %12, align 4, !dbg !149
  br label %34, !dbg !150

34:                                               ; preds = %88, %33
  %35 = load i32, i32* %12, align 4, !dbg !151
  %36 = load i32, i32* %6, align 4, !dbg !153
  %37 = icmp slt i32 %35, %36, !dbg !154
  br i1 %37, label %38, label %89, !dbg !155

38:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata i32* %13, metadata !156, metadata !DIExpression()), !dbg !159
  store i32 0, i32* %13, align 4, !dbg !159
  br label %39, !dbg !160

39:                                               ; preds = %87, %38
  %40 = load i32, i32* %13, align 4, !dbg !161
  %41 = load i32, i32* %8, align 4, !dbg !163
  %42 = icmp slt i32 %40, %41, !dbg !164
  br i1 %42, label %43, label %88, !dbg !165

43:                                               ; preds = %39
  %44 = load i32*, i32** %5, align 8, !dbg !166
  %45 = load i32, i32* %12, align 4, !dbg !169
  %46 = sext i32 %45 to i64, !dbg !166
  %47 = getelementptr inbounds i32, i32* %44, i64 %46, !dbg !166
  %48 = load i32, i32* %47, align 4, !dbg !166
  %49 = load i32*, i32** %7, align 8, !dbg !170
  %50 = load i32, i32* %13, align 4, !dbg !171
  %51 = sext i32 %50 to i64, !dbg !170
  %52 = getelementptr inbounds i32, i32* %49, i64 %51, !dbg !170
  %53 = load i32, i32* %52, align 4, !dbg !170
  %54 = icmp eq i32 %48, %53, !dbg !172
  br i1 %54, label %55, label %68, !dbg !173

55:                                               ; preds = %43
  %56 = load i32, i32* %12, align 4, !dbg !174
  %57 = sext i32 %56 to i64, !dbg !176
  %58 = getelementptr inbounds i32, i32* %19, i64 %57, !dbg !176
  store i32 1, i32* %58, align 4, !dbg !177
  %59 = load i32, i32* %6, align 4, !dbg !178
  %60 = load i32, i32* %13, align 4, !dbg !179
  %61 = add nsw i32 %59, %60, !dbg !180
  %62 = sext i32 %61 to i64, !dbg !181
  %63 = getelementptr inbounds i32, i32* %19, i64 %62, !dbg !181
  store i32 1, i32* %63, align 4, !dbg !182
  %64 = load i32, i32* %12, align 4, !dbg !183
  %65 = add nsw i32 %64, 1, !dbg !184
  store i32 %65, i32* %12, align 4, !dbg !185
  %66 = load i32, i32* %13, align 4, !dbg !186
  %67 = add nsw i32 %66, 1, !dbg !187
  store i32 %67, i32* %13, align 4, !dbg !188
  br label %87, !dbg !189

68:                                               ; preds = %43
  %69 = load i32*, i32** %5, align 8, !dbg !190
  %70 = load i32, i32* %12, align 4, !dbg !193
  %71 = sext i32 %70 to i64, !dbg !190
  %72 = getelementptr inbounds i32, i32* %69, i64 %71, !dbg !190
  %73 = load i32, i32* %72, align 4, !dbg !190
  %74 = load i32*, i32** %7, align 8, !dbg !194
  %75 = load i32, i32* %13, align 4, !dbg !195
  %76 = sext i32 %75 to i64, !dbg !194
  %77 = getelementptr inbounds i32, i32* %74, i64 %76, !dbg !194
  %78 = load i32, i32* %77, align 4, !dbg !194
  %79 = icmp slt i32 %73, %78, !dbg !196
  br i1 %79, label %80, label %83, !dbg !197

80:                                               ; preds = %68
  %81 = load i32, i32* %12, align 4, !dbg !198
  %82 = add nsw i32 %81, 1, !dbg !200
  store i32 %82, i32* %12, align 4, !dbg !201
  br label %86, !dbg !202

83:                                               ; preds = %68
  %84 = load i32, i32* %13, align 4, !dbg !203
  %85 = add nsw i32 %84, 1, !dbg !205
  store i32 %85, i32* %13, align 4, !dbg !206
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %55
  br label %39, !dbg !207, !llvm.loop !208

88:                                               ; preds = %39
  br label %34, !dbg !210, !llvm.loop !211

89:                                               ; preds = %34
  %90 = load i8*, i8** %9, align 8, !dbg !213
  call void @llvm.stackrestore(i8* %90), !dbg !213
  ret i32* %19, !dbg !213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !214 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0, !dbg !217
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 11.1.0-++20210204121720+1fdec59bffc1-1~exp1~20210203232336.162", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "declassified.c", directory: "/home/fanyx/projects/haybaleMPC/tests/newfiles")
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
!15 = distinct !DISubprogram(name: "Millionaire", scope: !1, file: !1, line: 9, type: !16, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18, !18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DILocalVariable(name: "a", arg: 1, scope: !15, file: !1, line: 9, type: !18)
!20 = !DILocation(line: 9, column: 21, scope: !15)
!21 = !DILocalVariable(name: "b", arg: 2, scope: !15, file: !1, line: 9, type: !18)
!22 = !DILocation(line: 9, column: 28, scope: !15)
!23 = !DILocation(line: 10, column: 22, scope: !24)
!24 = distinct !DILexicalBlock(scope: !15, file: !1, line: 10, column: 10)
!25 = !DILocation(line: 10, column: 26, scope: !24)
!26 = !DILocation(line: 10, column: 24, scope: !24)
!27 = !DILocation(line: 10, column: 10, scope: !24)
!28 = !DILocation(line: 10, column: 10, scope: !15)
!29 = !DILocation(line: 11, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !24, file: !1, line: 10, column: 32)
!31 = !DILocation(line: 13, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !24, file: !1, line: 12, column: 11)
!33 = !DILocation(line: 15, column: 1, scope: !15)
!34 = distinct !DISubprogram(name: "Max", scope: !1, file: !1, line: 17, type: !35, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!35 = !DISubroutineType(types: !36)
!36 = !{!18, !18, !18, !18}
!37 = !DILocalVariable(name: "a", arg: 1, scope: !34, file: !1, line: 17, type: !18)
!38 = !DILocation(line: 17, column: 13, scope: !34)
!39 = !DILocalVariable(name: "b", arg: 2, scope: !34, file: !1, line: 17, type: !18)
!40 = !DILocation(line: 17, column: 20, scope: !34)
!41 = !DILocalVariable(name: "c", arg: 3, scope: !34, file: !1, line: 17, type: !18)
!42 = !DILocation(line: 17, column: 27, scope: !34)
!43 = !DILocalVariable(name: "m", scope: !34, file: !1, line: 18, type: !44)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DILocation(line: 18, column: 10, scope: !34)
!46 = !DILocalVariable(name: "max", scope: !34, file: !1, line: 19, type: !18)
!47 = !DILocation(line: 19, column: 9, scope: !34)
!48 = !DILocation(line: 19, column: 15, scope: !34)
!49 = !DILocation(line: 20, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !34, file: !1, line: 20, column: 9)
!51 = !DILocation(line: 20, column: 15, scope: !50)
!52 = !DILocation(line: 20, column: 13, scope: !50)
!53 = !DILocation(line: 20, column: 9, scope: !34)
!54 = !DILocation(line: 21, column: 11, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 20, column: 18)
!56 = !DILocation(line: 22, column: 15, scope: !55)
!57 = !DILocation(line: 22, column: 13, scope: !55)
!58 = !DILocation(line: 23, column: 5, scope: !55)
!59 = !DILocation(line: 24, column: 20, scope: !60)
!60 = distinct !DILexicalBlock(scope: !34, file: !1, line: 24, column: 9)
!61 = !DILocation(line: 24, column: 26, scope: !60)
!62 = !DILocation(line: 24, column: 24, scope: !60)
!63 = !DILocation(line: 24, column: 9, scope: !60)
!64 = !DILocation(line: 24, column: 9, scope: !34)
!65 = !DILocation(line: 25, column: 11, scope: !66)
!66 = distinct !DILexicalBlock(scope: !60, file: !1, line: 24, column: 32)
!67 = !DILocation(line: 26, column: 5, scope: !66)
!68 = !DILocation(line: 27, column: 12, scope: !34)
!69 = !DILocation(line: 27, column: 5, scope: !34)
!70 = distinct !DISubprogram(name: "MaxLeak", scope: !1, file: !1, line: 30, type: !35, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!71 = !DILocalVariable(name: "a", arg: 1, scope: !70, file: !1, line: 30, type: !18)
!72 = !DILocation(line: 30, column: 17, scope: !70)
!73 = !DILocalVariable(name: "b", arg: 2, scope: !70, file: !1, line: 30, type: !18)
!74 = !DILocation(line: 30, column: 24, scope: !70)
!75 = !DILocalVariable(name: "c", arg: 3, scope: !70, file: !1, line: 30, type: !18)
!76 = !DILocation(line: 30, column: 31, scope: !70)
!77 = !DILocalVariable(name: "m", scope: !70, file: !1, line: 31, type: !44)
!78 = !DILocation(line: 31, column: 10, scope: !70)
!79 = !DILocalVariable(name: "max", scope: !70, file: !1, line: 32, type: !18)
!80 = !DILocation(line: 32, column: 9, scope: !70)
!81 = !DILocation(line: 32, column: 15, scope: !70)
!82 = !DILocation(line: 33, column: 20, scope: !83)
!83 = distinct !DILexicalBlock(scope: !70, file: !1, line: 33, column: 9)
!84 = !DILocation(line: 33, column: 26, scope: !83)
!85 = !DILocation(line: 33, column: 24, scope: !83)
!86 = !DILocation(line: 33, column: 9, scope: !83)
!87 = !DILocation(line: 33, column: 9, scope: !70)
!88 = !DILocation(line: 34, column: 11, scope: !89)
!89 = distinct !DILexicalBlock(scope: !83, file: !1, line: 33, column: 30)
!90 = !DILocation(line: 35, column: 15, scope: !89)
!91 = !DILocation(line: 35, column: 13, scope: !89)
!92 = !DILocation(line: 36, column: 5, scope: !89)
!93 = !DILocation(line: 37, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !70, file: !1, line: 37, column: 9)
!95 = !DILocation(line: 37, column: 15, scope: !94)
!96 = !DILocation(line: 37, column: 13, scope: !94)
!97 = !DILocation(line: 37, column: 9, scope: !70)
!98 = !DILocation(line: 38, column: 11, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !1, line: 37, column: 18)
!100 = !DILocation(line: 39, column: 5, scope: !99)
!101 = !DILocation(line: 40, column: 12, scope: !70)
!102 = !DILocation(line: 40, column: 5, scope: !70)
!103 = distinct !DISubprogram(name: "Intersection", scope: !1, file: !1, line: 43, type: !104, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !106, !18, !106, !18}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!107 = !DILocalVariable(name: "a", arg: 1, scope: !103, file: !1, line: 43, type: !106)
!108 = !DILocation(line: 43, column: 23, scope: !103)
!109 = !DILocalVariable(name: "lena", arg: 2, scope: !103, file: !1, line: 43, type: !18)
!110 = !DILocation(line: 43, column: 32, scope: !103)
!111 = !DILocalVariable(name: "b", arg: 3, scope: !103, file: !1, line: 43, type: !106)
!112 = !DILocation(line: 43, column: 42, scope: !103)
!113 = !DILocalVariable(name: "lenb", arg: 4, scope: !103, file: !1, line: 43, type: !18)
!114 = !DILocation(line: 43, column: 51, scope: !103)
!115 = !DILocation(line: 44, column: 13, scope: !103)
!116 = !DILocation(line: 44, column: 18, scope: !103)
!117 = !DILocation(line: 44, column: 17, scope: !103)
!118 = !DILocation(line: 44, column: 5, scope: !103)
!119 = !DILocalVariable(name: "__vla_expr0", scope: !103, type: !120, flags: DIFlagArtificial)
!120 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!121 = !DILocation(line: 0, scope: !103)
!122 = !DILocalVariable(name: "ret", scope: !103, file: !1, line: 44, type: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: !119)
!126 = !DILocation(line: 44, column: 9, scope: !103)
!127 = !DILocalVariable(name: "i", scope: !128, file: !1, line: 45, type: !18)
!128 = distinct !DILexicalBlock(scope: !103, file: !1, line: 45, column: 5)
!129 = !DILocation(line: 45, column: 14, scope: !128)
!130 = !DILocation(line: 45, column: 10, scope: !128)
!131 = !DILocation(line: 45, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 45, column: 5)
!133 = !DILocation(line: 45, column: 25, scope: !132)
!134 = !DILocation(line: 45, column: 30, scope: !132)
!135 = !DILocation(line: 45, column: 29, scope: !132)
!136 = !DILocation(line: 45, column: 23, scope: !132)
!137 = !DILocation(line: 45, column: 5, scope: !128)
!138 = !DILocation(line: 46, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !132, file: !1, line: 45, column: 41)
!140 = !DILocation(line: 46, column: 9, scope: !139)
!141 = !DILocation(line: 46, column: 16, scope: !139)
!142 = !DILocation(line: 47, column: 5, scope: !139)
!143 = !DILocation(line: 45, column: 37, scope: !132)
!144 = !DILocation(line: 45, column: 5, scope: !132)
!145 = distinct !{!145, !137, !146}
!146 = !DILocation(line: 47, column: 5, scope: !128)
!147 = !DILocalVariable(name: "i", scope: !148, file: !1, line: 48, type: !18)
!148 = distinct !DILexicalBlock(scope: !103, file: !1, line: 48, column: 5)
!149 = !DILocation(line: 48, column: 14, scope: !148)
!150 = !DILocation(line: 48, column: 10, scope: !148)
!151 = !DILocation(line: 48, column: 21, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 48, column: 5)
!153 = !DILocation(line: 48, column: 25, scope: !152)
!154 = !DILocation(line: 48, column: 23, scope: !152)
!155 = !DILocation(line: 48, column: 5, scope: !148)
!156 = !DILocalVariable(name: "j", scope: !157, file: !1, line: 49, type: !18)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 49, column: 9)
!158 = distinct !DILexicalBlock(scope: !152, file: !1, line: 48, column: 32)
!159 = !DILocation(line: 49, column: 18, scope: !157)
!160 = !DILocation(line: 49, column: 14, scope: !157)
!161 = !DILocation(line: 49, column: 25, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !1, line: 49, column: 9)
!163 = !DILocation(line: 49, column: 29, scope: !162)
!164 = !DILocation(line: 49, column: 27, scope: !162)
!165 = !DILocation(line: 49, column: 9, scope: !157)
!166 = !DILocation(line: 50, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 50, column: 17)
!168 = distinct !DILexicalBlock(scope: !162, file: !1, line: 49, column: 36)
!169 = !DILocation(line: 50, column: 19, scope: !167)
!170 = !DILocation(line: 50, column: 25, scope: !167)
!171 = !DILocation(line: 50, column: 27, scope: !167)
!172 = !DILocation(line: 50, column: 22, scope: !167)
!173 = !DILocation(line: 50, column: 17, scope: !168)
!174 = !DILocation(line: 51, column: 21, scope: !175)
!175 = distinct !DILexicalBlock(scope: !167, file: !1, line: 50, column: 31)
!176 = !DILocation(line: 51, column: 17, scope: !175)
!177 = !DILocation(line: 51, column: 24, scope: !175)
!178 = !DILocation(line: 52, column: 21, scope: !175)
!179 = !DILocation(line: 52, column: 26, scope: !175)
!180 = !DILocation(line: 52, column: 25, scope: !175)
!181 = !DILocation(line: 52, column: 17, scope: !175)
!182 = !DILocation(line: 52, column: 29, scope: !175)
!183 = !DILocation(line: 53, column: 21, scope: !175)
!184 = !DILocation(line: 53, column: 23, scope: !175)
!185 = !DILocation(line: 53, column: 19, scope: !175)
!186 = !DILocation(line: 54, column: 21, scope: !175)
!187 = !DILocation(line: 54, column: 23, scope: !175)
!188 = !DILocation(line: 54, column: 19, scope: !175)
!189 = !DILocation(line: 55, column: 13, scope: !175)
!190 = !DILocation(line: 56, column: 21, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 56, column: 21)
!192 = distinct !DILexicalBlock(scope: !167, file: !1, line: 55, column: 19)
!193 = !DILocation(line: 56, column: 23, scope: !191)
!194 = !DILocation(line: 56, column: 28, scope: !191)
!195 = !DILocation(line: 56, column: 30, scope: !191)
!196 = !DILocation(line: 56, column: 26, scope: !191)
!197 = !DILocation(line: 56, column: 21, scope: !192)
!198 = !DILocation(line: 57, column: 25, scope: !199)
!199 = distinct !DILexicalBlock(scope: !191, file: !1, line: 56, column: 34)
!200 = !DILocation(line: 57, column: 27, scope: !199)
!201 = !DILocation(line: 57, column: 23, scope: !199)
!202 = !DILocation(line: 58, column: 17, scope: !199)
!203 = !DILocation(line: 59, column: 25, scope: !204)
!204 = distinct !DILexicalBlock(scope: !191, file: !1, line: 58, column: 23)
!205 = !DILocation(line: 59, column: 27, scope: !204)
!206 = !DILocation(line: 59, column: 23, scope: !204)
!207 = !DILocation(line: 49, column: 9, scope: !162)
!208 = distinct !{!208, !165, !209}
!209 = !DILocation(line: 62, column: 9, scope: !157)
!210 = !DILocation(line: 48, column: 5, scope: !152)
!211 = distinct !{!211, !155, !212}
!212 = !DILocation(line: 63, column: 5, scope: !148)
!213 = !DILocation(line: 65, column: 1, scope: !103)
!214 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 84, type: !215, scopeLine: 84, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!215 = !DISubroutineType(types: !216)
!216 = !{!18}
!217 = !DILocation(line: 85, column: 5, scope: !214)

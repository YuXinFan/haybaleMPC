; ModuleID = 'binary_search.c'
source_filename = "binary_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @declassify(i1 zeroext %0) #0 !dbg !10 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !14, metadata !DIExpression()), !dbg !15
  %4 = load i8, i8* %2, align 1, !dbg !16
  %5 = trunc i8 %4 to i1, !dbg !16
  ret i1 %5, !dbg !17
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oram_read(i8* %0, i8* %1, i32 %2) #0 !dbg !18 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !22, metadata !DIExpression()), !dbg !23
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !26, metadata !DIExpression()), !dbg !27
  %7 = load i8*, i8** %5, align 8, !dbg !28
  %8 = bitcast i8* %7 to i32*, !dbg !29
  %9 = load i32, i32* %6, align 4, !dbg !30
  %10 = sext i32 %9 to i64, !dbg !31
  %11 = getelementptr inbounds i32, i32* %8, i64 %10, !dbg !31
  %12 = load i32, i32* %11, align 4, !dbg !31
  %13 = load i8*, i8** %4, align 8, !dbg !32
  %14 = bitcast i8* %13 to i32*, !dbg !33
  store i32 %12, i32* %14, align 4, !dbg !34
  ret void, !dbg !35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocCopy(i8* %0, i8* %1) #0 !dbg !36 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !39, metadata !DIExpression()), !dbg !40
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !41, metadata !DIExpression()), !dbg !42
  %5 = load i8*, i8** %4, align 8, !dbg !43
  %6 = bitcast i8* %5 to i32*, !dbg !44
  %7 = load i32, i32* %6, align 4, !dbg !45
  %8 = load i8*, i8** %3, align 8, !dbg !46
  %9 = bitcast i8* %8 to i32*, !dbg !47
  store i32 %7, i32* %9, align 4, !dbg !48
  ret void, !dbg !49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obinary_search_oram(i8* %0, i32* %1, i8* %2) #0 !dbg !50 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !53, metadata !DIExpression()), !dbg !54
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !55, metadata !DIExpression()), !dbg !56
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %7, metadata !59, metadata !DIExpression()), !dbg !60
  store i32 5, i32* %7, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %8, metadata !61, metadata !DIExpression()), !dbg !62
  store i32 -1, i32* %8, align 4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %9, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 0, i32* %9, align 4, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %10, metadata !65, metadata !DIExpression()), !dbg !66
  store i32 15, i32* %10, align 4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %11, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32** %12, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32** %13, metadata !71, metadata !DIExpression()), !dbg !72
  %19 = load i8*, i8** %6, align 8, !dbg !73
  %20 = bitcast i8* %19 to i32*, !dbg !74
  store i32* %20, i32** %13, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i8* %14, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i8* %15, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i8** %16, metadata !79, metadata !DIExpression()), !dbg !80
  %21 = call noalias i8* @calloc(i64 1, i64 4) #3, !dbg !81
  store i8* %21, i8** %16, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i8* %17, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata i32* %18, metadata !84, metadata !DIExpression()), !dbg !86
  store i32 0, i32* %18, align 4, !dbg !86
  br label %22, !dbg !87

22:                                               ; preds = %63, %3
  %23 = load i32, i32* %18, align 4, !dbg !88
  %24 = load i32, i32* %7, align 4, !dbg !90
  %25 = icmp slt i32 %23, %24, !dbg !91
  br i1 %25, label %26, label %66, !dbg !92

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4, !dbg !93
  %28 = load i32, i32* %10, align 4, !dbg !95
  %29 = add nsw i32 %27, %28, !dbg !96
  %30 = sdiv i32 %29, 2, !dbg !97
  store i32 %30, i32* %11, align 4, !dbg !98
  %31 = load i8*, i8** %16, align 8, !dbg !99
  %32 = load i32*, i32** %5, align 8, !dbg !100
  %33 = bitcast i32* %32 to i8*, !dbg !100
  %34 = load i32, i32* %11, align 4, !dbg !101
  call void @oram_read(i8* %31, i8* %33, i32 %34), !dbg !102
  %35 = load i8*, i8** %16, align 8, !dbg !103
  %36 = bitcast i8* %35 to i32*, !dbg !104
  store i32* %36, i32** %12, align 8, !dbg !105
  %37 = load i32*, i32** %12, align 8, !dbg !106
  %38 = load i32, i32* %37, align 4, !dbg !108
  %39 = load i32*, i32** %13, align 8, !dbg !109
  %40 = load i32, i32* %39, align 4, !dbg !110
  %41 = icmp eq i32 %38, %40, !dbg !111
  %42 = call zeroext i1 @declassify(i1 zeroext %41), !dbg !112
  br i1 %42, label %43, label %47, !dbg !113

43:                                               ; preds = %26
  %44 = load i8*, i8** %4, align 8, !dbg !114
  %45 = load i8*, i8** %16, align 8, !dbg !116
  call void @ocCopy(i8* %44, i8* %45), !dbg !117
  %46 = load i32, i32* %11, align 4, !dbg !118
  store i32 %46, i32* %8, align 4, !dbg !119
  br label %62, !dbg !120

47:                                               ; preds = %26
  %48 = load i32*, i32** %12, align 8, !dbg !121
  %49 = load i32, i32* %48, align 4, !dbg !123
  %50 = load i32*, i32** %13, align 8, !dbg !124
  %51 = load i32, i32* %50, align 4, !dbg !125
  %52 = icmp slt i32 %49, %51, !dbg !126
  %53 = zext i1 %52 to i8, !dbg !127
  store i8 %53, i8* %14, align 1, !dbg !127
  %54 = load i8, i8* %14, align 1, !dbg !128
  %55 = trunc i8 %54 to i1, !dbg !128
  br i1 %55, label %56, label %59, !dbg !130

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4, !dbg !131
  %58 = add nsw i32 %57, 1, !dbg !133
  store i32 %58, i32* %9, align 4, !dbg !134
  br label %61, !dbg !135

59:                                               ; preds = %47
  %60 = load i32, i32* %11, align 4, !dbg !136
  store i32 %60, i32* %10, align 4, !dbg !138
  br label %61

61:                                               ; preds = %59, %56
  br label %62

62:                                               ; preds = %61, %43
  br label %63, !dbg !139

63:                                               ; preds = %62
  %64 = load i32, i32* %18, align 4, !dbg !140
  %65 = add nsw i32 %64, 1, !dbg !140
  store i32 %65, i32* %18, align 4, !dbg !140
  br label %22, !dbg !141, !llvm.loop !142

66:                                               ; preds = %22
  %67 = load i8*, i8** %16, align 8, !dbg !144
  call void @free(i8* %67) #3, !dbg !145
  %68 = load i32, i32* %8, align 4, !dbg !146
  ret i32 %68, !dbg !147
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !148 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0, !dbg !151
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.0.0 (https://github.com/llvm/llvm-project.git 0160ad802e899c2922bc9b29564080c22eb0908c)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "binary_search.c", directory: "/home/fanyx/mine/haybaleMPC/tests/newfiles")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 11.0.0 (https://github.com/llvm/llvm-project.git 0160ad802e899c2922bc9b29564080c22eb0908c)"}
!10 = distinct !DISubprogram(name: "declassify", scope: !1, file: !1, line: 7, type: !11, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!14 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !1, line: 7, type: !13)
!15 = !DILocation(line: 7, column: 22, scope: !10)
!16 = !DILocation(line: 8, column: 12, scope: !10)
!17 = !DILocation(line: 8, column: 5, scope: !10)
!18 = distinct !DISubprogram(name: "oram_read", scope: !1, file: !1, line: 10, type: !19, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !21, !5}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DILocalVariable(name: "t", arg: 1, scope: !18, file: !1, line: 10, type: !21)
!23 = !DILocation(line: 10, column: 22, scope: !18)
!24 = !DILocalVariable(name: "s", arg: 2, scope: !18, file: !1, line: 10, type: !21)
!25 = !DILocation(line: 10, column: 31, scope: !18)
!26 = !DILocalVariable(name: "idx", arg: 3, scope: !18, file: !1, line: 10, type: !5)
!27 = !DILocation(line: 10, column: 38, scope: !18)
!28 = !DILocation(line: 11, column: 25, scope: !18)
!29 = !DILocation(line: 11, column: 18, scope: !18)
!30 = !DILocation(line: 11, column: 28, scope: !18)
!31 = !DILocation(line: 11, column: 17, scope: !18)
!32 = !DILocation(line: 11, column: 13, scope: !18)
!33 = !DILocation(line: 11, column: 6, scope: !18)
!34 = !DILocation(line: 11, column: 15, scope: !18)
!35 = !DILocation(line: 12, column: 1, scope: !18)
!36 = distinct !DISubprogram(name: "ocCopy", scope: !1, file: !1, line: 14, type: !37, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !21, !21}
!39 = !DILocalVariable(name: "r", arg: 1, scope: !36, file: !1, line: 14, type: !21)
!40 = !DILocation(line: 14, column: 19, scope: !36)
!41 = !DILocalVariable(name: "t", arg: 2, scope: !36, file: !1, line: 14, type: !21)
!42 = !DILocation(line: 14, column: 28, scope: !36)
!43 = !DILocation(line: 15, column: 25, scope: !36)
!44 = !DILocation(line: 15, column: 18, scope: !36)
!45 = !DILocation(line: 15, column: 17, scope: !36)
!46 = !DILocation(line: 15, column: 13, scope: !36)
!47 = !DILocation(line: 15, column: 6, scope: !36)
!48 = !DILocation(line: 15, column: 15, scope: !36)
!49 = !DILocation(line: 16, column: 1, scope: !36)
!50 = distinct !DISubprogram(name: "obinary_search_oram", scope: !1, file: !1, line: 17, type: !51, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!51 = !DISubroutineType(types: !52)
!52 = !{!5, !21, !4, !21}
!53 = !DILocalVariable(name: "result", arg: 1, scope: !50, file: !1, line: 17, type: !21)
!54 = !DILocation(line: 17, column: 31, scope: !50)
!55 = !DILocalVariable(name: "haystack", arg: 2, scope: !50, file: !1, line: 17, type: !4)
!56 = !DILocation(line: 17, column: 44, scope: !50)
!57 = !DILocalVariable(name: "needle", arg: 3, scope: !50, file: !1, line: 17, type: !21)
!58 = !DILocation(line: 17, column: 60, scope: !50)
!59 = !DILocalVariable(name: "upper_bound", scope: !50, file: !1, line: 18, type: !5)
!60 = !DILocation(line: 18, column: 6, scope: !50)
!61 = !DILocalVariable(name: "index", scope: !50, file: !1, line: 20, type: !5)
!62 = !DILocation(line: 20, column: 6, scope: !50)
!63 = !DILocalVariable(name: "iimin", scope: !50, file: !1, line: 21, type: !5)
!64 = !DILocation(line: 21, column: 6, scope: !50)
!65 = !DILocalVariable(name: "iimax", scope: !50, file: !1, line: 22, type: !5)
!66 = !DILocation(line: 22, column: 6, scope: !50)
!67 = !DILocalVariable(name: "iimid", scope: !50, file: !1, line: 23, type: !5)
!68 = !DILocation(line: 23, column: 6, scope: !50)
!69 = !DILocalVariable(name: "aa", scope: !50, file: !1, line: 25, type: !4)
!70 = !DILocation(line: 25, column: 7, scope: !50)
!71 = !DILocalVariable(name: "bb", scope: !50, file: !1, line: 26, type: !4)
!72 = !DILocation(line: 26, column: 7, scope: !50)
!73 = !DILocation(line: 26, column: 20, scope: !50)
!74 = !DILocation(line: 26, column: 13, scope: !50)
!75 = !DILocalVariable(name: "olt", scope: !50, file: !1, line: 27, type: !13)
!76 = !DILocation(line: 27, column: 7, scope: !50)
!77 = !DILocalVariable(name: "oeq", scope: !50, file: !1, line: 28, type: !13)
!78 = !DILocation(line: 28, column: 7, scope: !50)
!79 = !DILocalVariable(name: "temp_element", scope: !50, file: !1, line: 29, type: !21)
!80 = !DILocation(line: 29, column: 9, scope: !50)
!81 = !DILocation(line: 29, column: 24, scope: !50)
!82 = !DILocalVariable(name: "eq", scope: !50, file: !1, line: 32, type: !13)
!83 = !DILocation(line: 32, column: 7, scope: !50)
!84 = !DILocalVariable(name: "ii", scope: !85, file: !1, line: 33, type: !5)
!85 = distinct !DILexicalBlock(scope: !50, file: !1, line: 33, column: 2)
!86 = !DILocation(line: 33, column: 11, scope: !85)
!87 = !DILocation(line: 33, column: 7, scope: !85)
!88 = !DILocation(line: 33, column: 19, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 33, column: 2)
!90 = !DILocation(line: 33, column: 24, scope: !89)
!91 = !DILocation(line: 33, column: 22, scope: !89)
!92 = !DILocation(line: 33, column: 2, scope: !85)
!93 = !DILocation(line: 34, column: 12, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !1, line: 33, column: 43)
!95 = !DILocation(line: 34, column: 20, scope: !94)
!96 = !DILocation(line: 34, column: 18, scope: !94)
!97 = !DILocation(line: 34, column: 27, scope: !94)
!98 = !DILocation(line: 34, column: 9, scope: !94)
!99 = !DILocation(line: 35, column: 13, scope: !94)
!100 = !DILocation(line: 35, column: 27, scope: !94)
!101 = !DILocation(line: 35, column: 37, scope: !94)
!102 = !DILocation(line: 35, column: 3, scope: !94)
!103 = !DILocation(line: 36, column: 15, scope: !94)
!104 = !DILocation(line: 36, column: 8, scope: !94)
!105 = !DILocation(line: 36, column: 6, scope: !94)
!106 = !DILocation(line: 38, column: 19, scope: !107)
!107 = distinct !DILexicalBlock(scope: !94, file: !1, line: 38, column: 7)
!108 = !DILocation(line: 38, column: 18, scope: !107)
!109 = !DILocation(line: 38, column: 26, scope: !107)
!110 = !DILocation(line: 38, column: 25, scope: !107)
!111 = !DILocation(line: 38, column: 22, scope: !107)
!112 = !DILocation(line: 38, column: 7, scope: !107)
!113 = !DILocation(line: 38, column: 7, scope: !94)
!114 = !DILocation(line: 39, column: 11, scope: !115)
!115 = distinct !DILexicalBlock(scope: !107, file: !1, line: 38, column: 31)
!116 = !DILocation(line: 39, column: 19, scope: !115)
!117 = !DILocation(line: 39, column: 4, scope: !115)
!118 = !DILocation(line: 40, column: 12, scope: !115)
!119 = !DILocation(line: 40, column: 10, scope: !115)
!120 = !DILocation(line: 42, column: 3, scope: !115)
!121 = !DILocation(line: 43, column: 11, scope: !122)
!122 = distinct !DILexicalBlock(scope: !107, file: !1, line: 42, column: 8)
!123 = !DILocation(line: 43, column: 10, scope: !122)
!124 = !DILocation(line: 43, column: 17, scope: !122)
!125 = !DILocation(line: 43, column: 16, scope: !122)
!126 = !DILocation(line: 43, column: 14, scope: !122)
!127 = !DILocation(line: 43, column: 8, scope: !122)
!128 = !DILocation(line: 44, column: 8, scope: !129)
!129 = distinct !DILexicalBlock(scope: !122, file: !1, line: 44, column: 8)
!130 = !DILocation(line: 44, column: 8, scope: !122)
!131 = !DILocation(line: 45, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !1, line: 44, column: 13)
!133 = !DILocation(line: 45, column: 19, scope: !132)
!134 = !DILocation(line: 45, column: 11, scope: !132)
!135 = !DILocation(line: 46, column: 4, scope: !132)
!136 = !DILocation(line: 47, column: 13, scope: !137)
!137 = distinct !DILexicalBlock(scope: !129, file: !1, line: 46, column: 10)
!138 = !DILocation(line: 47, column: 11, scope: !137)
!139 = !DILocation(line: 51, column: 2, scope: !94)
!140 = !DILocation(line: 33, column: 39, scope: !89)
!141 = !DILocation(line: 33, column: 2, scope: !89)
!142 = distinct !{!142, !92, !143}
!143 = !DILocation(line: 51, column: 2, scope: !85)
!144 = !DILocation(line: 52, column: 7, scope: !50)
!145 = !DILocation(line: 52, column: 2, scope: !50)
!146 = !DILocation(line: 53, column: 9, scope: !50)
!147 = !DILocation(line: 53, column: 2, scope: !50)
!148 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !149, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!149 = !DISubroutineType(types: !150)
!150 = !{!5}
!151 = !DILocation(line: 57, column: 5, scope: !148)

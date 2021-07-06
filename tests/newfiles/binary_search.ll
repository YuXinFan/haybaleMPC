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
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !53, metadata !DIExpression()), !dbg !54
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !55, metadata !DIExpression()), !dbg !56
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %7, metadata !59, metadata !DIExpression()), !dbg !61
  store i32 1, i32* %7, align 4, !dbg !61
  br label %20, !dbg !62

20:                                               ; preds = %36, %3
  %21 = load i32, i32* %7, align 4, !dbg !63
  %22 = icmp slt i32 %21, 16, !dbg !65
  br i1 %22, label %23, label %39, !dbg !66

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8, !dbg !67
  %25 = load i32, i32* %7, align 4, !dbg !69
  %26 = sub nsw i32 %25, 1, !dbg !70
  %27 = sext i32 %26 to i64, !dbg !67
  %28 = getelementptr inbounds i32, i32* %24, i64 %27, !dbg !67
  %29 = load i32, i32* %28, align 4, !dbg !67
  %30 = load i32*, i32** %5, align 8, !dbg !71
  %31 = load i32, i32* %7, align 4, !dbg !72
  %32 = sext i32 %31 to i64, !dbg !71
  %33 = getelementptr inbounds i32, i32* %30, i64 %32, !dbg !71
  %34 = load i32, i32* %33, align 4, !dbg !71
  %35 = icmp slt i32 %29, %34, !dbg !73
  call void @llvm.assume(i1 %35), !dbg !74
  br label %36, !dbg !75

36:                                               ; preds = %23
  %37 = load i32, i32* %7, align 4, !dbg !76
  %38 = add nsw i32 %37, 1, !dbg !76
  store i32 %38, i32* %7, align 4, !dbg !76
  br label %20, !dbg !77, !llvm.loop !78

39:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata i32* %8, metadata !80, metadata !DIExpression()), !dbg !81
  store i32 5, i32* %8, align 4, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %9, metadata !82, metadata !DIExpression()), !dbg !83
  store i32 -1, i32* %9, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %10, metadata !84, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %10, align 4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %11, metadata !86, metadata !DIExpression()), !dbg !87
  store i32 15, i32* %11, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %12, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i32** %13, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32** %14, metadata !92, metadata !DIExpression()), !dbg !93
  %40 = load i8*, i8** %6, align 8, !dbg !94
  %41 = bitcast i8* %40 to i32*, !dbg !95
  store i32* %41, i32** %14, align 8, !dbg !93
  call void @llvm.dbg.declare(metadata i8* %15, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata i8* %16, metadata !98, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata i8** %17, metadata !100, metadata !DIExpression()), !dbg !101
  %42 = call noalias i8* @calloc(i64 1, i64 4) #4, !dbg !102
  store i8* %42, i8** %17, align 8, !dbg !101
  call void @llvm.dbg.declare(metadata i8* %18, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %19, metadata !105, metadata !DIExpression()), !dbg !107
  store i32 0, i32* %19, align 4, !dbg !107
  br label %43, !dbg !108

43:                                               ; preds = %87, %39
  %44 = load i32, i32* %19, align 4, !dbg !109
  %45 = load i32, i32* %8, align 4, !dbg !111
  %46 = icmp slt i32 %44, %45, !dbg !112
  br i1 %46, label %47, label %90, !dbg !113

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4, !dbg !114
  %49 = load i32, i32* %11, align 4, !dbg !116
  %50 = add nsw i32 %48, %49, !dbg !117
  %51 = sdiv i32 %50, 2, !dbg !118
  store i32 %51, i32* %12, align 4, !dbg !119
  %52 = load i8*, i8** %17, align 8, !dbg !120
  %53 = load i32*, i32** %5, align 8, !dbg !121
  %54 = bitcast i32* %53 to i8*, !dbg !121
  %55 = load i32, i32* %12, align 4, !dbg !122
  call void @oram_read(i8* %52, i8* %54, i32 %55), !dbg !123
  %56 = load i8*, i8** %17, align 8, !dbg !124
  %57 = bitcast i8* %56 to i32*, !dbg !125
  store i32* %57, i32** %13, align 8, !dbg !126
  %58 = load i32*, i32** %13, align 8, !dbg !127
  %59 = load i32, i32* %58, align 4, !dbg !128
  %60 = load i32*, i32** %14, align 8, !dbg !129
  %61 = load i32, i32* %60, align 4, !dbg !130
  %62 = icmp eq i32 %59, %61, !dbg !131
  %63 = zext i1 %62 to i8, !dbg !132
  store i8 %63, i8* %16, align 1, !dbg !132
  %64 = load i8, i8* %16, align 1, !dbg !133
  %65 = trunc i8 %64 to i1, !dbg !133
  %66 = call zeroext i1 @declassify(i1 zeroext %65), !dbg !135
  br i1 %66, label %67, label %71, !dbg !136

67:                                               ; preds = %47
  %68 = load i8*, i8** %4, align 8, !dbg !137
  %69 = load i8*, i8** %17, align 8, !dbg !139
  call void @ocCopy(i8* %68, i8* %69), !dbg !140
  %70 = load i32, i32* %12, align 4, !dbg !141
  store i32 %70, i32* %9, align 4, !dbg !142
  br label %90, !dbg !143

71:                                               ; preds = %47
  %72 = load i32*, i32** %13, align 8, !dbg !144
  %73 = load i32, i32* %72, align 4, !dbg !146
  %74 = load i32*, i32** %14, align 8, !dbg !147
  %75 = load i32, i32* %74, align 4, !dbg !148
  %76 = icmp slt i32 %73, %75, !dbg !149
  %77 = zext i1 %76 to i8, !dbg !150
  store i8 %77, i8* %15, align 1, !dbg !150
  %78 = load i8, i8* %15, align 1, !dbg !151
  %79 = trunc i8 %78 to i1, !dbg !151
  br i1 %79, label %80, label %83, !dbg !153

80:                                               ; preds = %71
  %81 = load i32, i32* %12, align 4, !dbg !154
  %82 = add nsw i32 %81, 1, !dbg !156
  store i32 %82, i32* %10, align 4, !dbg !157
  br label %85, !dbg !158

83:                                               ; preds = %71
  %84 = load i32, i32* %12, align 4, !dbg !159
  store i32 %84, i32* %11, align 4, !dbg !161
  br label %85

85:                                               ; preds = %83, %80
  br label %86

86:                                               ; preds = %85
  br label %87, !dbg !162

87:                                               ; preds = %86
  %88 = load i32, i32* %19, align 4, !dbg !163
  %89 = add nsw i32 %88, 1, !dbg !163
  store i32 %89, i32* %19, align 4, !dbg !163
  br label %43, !dbg !164, !llvm.loop !165

90:                                               ; preds = %67, %43
  %91 = load i8*, i8** %17, align 8, !dbg !167
  call void @free(i8* %91) #4, !dbg !168
  %92 = load i32, i32* %9, align 4, !dbg !169
  ret i32 %92, !dbg !170
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !171 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0, !dbg !174
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

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
!10 = distinct !DISubprogram(name: "declassify", scope: !1, file: !1, line: 6, type: !11, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!14 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !1, line: 6, type: !13)
!15 = !DILocation(line: 6, column: 22, scope: !10)
!16 = !DILocation(line: 7, column: 12, scope: !10)
!17 = !DILocation(line: 7, column: 5, scope: !10)
!18 = distinct !DISubprogram(name: "oram_read", scope: !1, file: !1, line: 9, type: !19, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !21, !5}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DILocalVariable(name: "t", arg: 1, scope: !18, file: !1, line: 9, type: !21)
!23 = !DILocation(line: 9, column: 22, scope: !18)
!24 = !DILocalVariable(name: "s", arg: 2, scope: !18, file: !1, line: 9, type: !21)
!25 = !DILocation(line: 9, column: 31, scope: !18)
!26 = !DILocalVariable(name: "idx", arg: 3, scope: !18, file: !1, line: 9, type: !5)
!27 = !DILocation(line: 9, column: 38, scope: !18)
!28 = !DILocation(line: 10, column: 25, scope: !18)
!29 = !DILocation(line: 10, column: 18, scope: !18)
!30 = !DILocation(line: 10, column: 28, scope: !18)
!31 = !DILocation(line: 10, column: 17, scope: !18)
!32 = !DILocation(line: 10, column: 13, scope: !18)
!33 = !DILocation(line: 10, column: 6, scope: !18)
!34 = !DILocation(line: 10, column: 15, scope: !18)
!35 = !DILocation(line: 11, column: 1, scope: !18)
!36 = distinct !DISubprogram(name: "ocCopy", scope: !1, file: !1, line: 13, type: !37, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !21, !21}
!39 = !DILocalVariable(name: "r", arg: 1, scope: !36, file: !1, line: 13, type: !21)
!40 = !DILocation(line: 13, column: 19, scope: !36)
!41 = !DILocalVariable(name: "t", arg: 2, scope: !36, file: !1, line: 13, type: !21)
!42 = !DILocation(line: 13, column: 28, scope: !36)
!43 = !DILocation(line: 14, column: 25, scope: !36)
!44 = !DILocation(line: 14, column: 18, scope: !36)
!45 = !DILocation(line: 14, column: 17, scope: !36)
!46 = !DILocation(line: 14, column: 13, scope: !36)
!47 = !DILocation(line: 14, column: 6, scope: !36)
!48 = !DILocation(line: 14, column: 15, scope: !36)
!49 = !DILocation(line: 15, column: 1, scope: !36)
!50 = distinct !DISubprogram(name: "obinary_search_oram", scope: !1, file: !1, line: 16, type: !51, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!51 = !DISubroutineType(types: !52)
!52 = !{!5, !21, !4, !21}
!53 = !DILocalVariable(name: "result", arg: 1, scope: !50, file: !1, line: 16, type: !21)
!54 = !DILocation(line: 16, column: 31, scope: !50)
!55 = !DILocalVariable(name: "haystack", arg: 2, scope: !50, file: !1, line: 16, type: !4)
!56 = !DILocation(line: 16, column: 44, scope: !50)
!57 = !DILocalVariable(name: "needle", arg: 3, scope: !50, file: !1, line: 16, type: !21)
!58 = !DILocation(line: 16, column: 60, scope: !50)
!59 = !DILocalVariable(name: "i", scope: !60, file: !1, line: 17, type: !5)
!60 = distinct !DILexicalBlock(scope: !50, file: !1, line: 17, column: 2)
!61 = !DILocation(line: 17, column: 11, scope: !60)
!62 = !DILocation(line: 17, column: 7, scope: !60)
!63 = !DILocation(line: 17, column: 18, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 17, column: 2)
!65 = !DILocation(line: 17, column: 20, scope: !64)
!66 = !DILocation(line: 17, column: 2, scope: !60)
!67 = !DILocation(line: 18, column: 20, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 17, column: 31)
!69 = !DILocation(line: 18, column: 29, scope: !68)
!70 = !DILocation(line: 18, column: 30, scope: !68)
!71 = !DILocation(line: 18, column: 36, scope: !68)
!72 = !DILocation(line: 18, column: 45, scope: !68)
!73 = !DILocation(line: 18, column: 34, scope: !68)
!74 = !DILocation(line: 18, column: 3, scope: !68)
!75 = !DILocation(line: 19, column: 2, scope: !68)
!76 = !DILocation(line: 17, column: 27, scope: !64)
!77 = !DILocation(line: 17, column: 2, scope: !64)
!78 = distinct !{!78, !66, !79}
!79 = !DILocation(line: 19, column: 2, scope: !60)
!80 = !DILocalVariable(name: "upper_bound", scope: !50, file: !1, line: 22, type: !5)
!81 = !DILocation(line: 22, column: 6, scope: !50)
!82 = !DILocalVariable(name: "index", scope: !50, file: !1, line: 24, type: !5)
!83 = !DILocation(line: 24, column: 6, scope: !50)
!84 = !DILocalVariable(name: "iimin", scope: !50, file: !1, line: 25, type: !5)
!85 = !DILocation(line: 25, column: 6, scope: !50)
!86 = !DILocalVariable(name: "iimax", scope: !50, file: !1, line: 26, type: !5)
!87 = !DILocation(line: 26, column: 6, scope: !50)
!88 = !DILocalVariable(name: "iimid", scope: !50, file: !1, line: 27, type: !5)
!89 = !DILocation(line: 27, column: 6, scope: !50)
!90 = !DILocalVariable(name: "aa", scope: !50, file: !1, line: 29, type: !4)
!91 = !DILocation(line: 29, column: 7, scope: !50)
!92 = !DILocalVariable(name: "bb", scope: !50, file: !1, line: 30, type: !4)
!93 = !DILocation(line: 30, column: 7, scope: !50)
!94 = !DILocation(line: 30, column: 20, scope: !50)
!95 = !DILocation(line: 30, column: 13, scope: !50)
!96 = !DILocalVariable(name: "olt", scope: !50, file: !1, line: 31, type: !13)
!97 = !DILocation(line: 31, column: 7, scope: !50)
!98 = !DILocalVariable(name: "oeq", scope: !50, file: !1, line: 32, type: !13)
!99 = !DILocation(line: 32, column: 7, scope: !50)
!100 = !DILocalVariable(name: "temp_element", scope: !50, file: !1, line: 33, type: !21)
!101 = !DILocation(line: 33, column: 9, scope: !50)
!102 = !DILocation(line: 33, column: 24, scope: !50)
!103 = !DILocalVariable(name: "eq", scope: !50, file: !1, line: 35, type: !13)
!104 = !DILocation(line: 35, column: 7, scope: !50)
!105 = !DILocalVariable(name: "ii", scope: !106, file: !1, line: 36, type: !5)
!106 = distinct !DILexicalBlock(scope: !50, file: !1, line: 36, column: 2)
!107 = !DILocation(line: 36, column: 11, scope: !106)
!108 = !DILocation(line: 36, column: 7, scope: !106)
!109 = !DILocation(line: 36, column: 19, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 36, column: 2)
!111 = !DILocation(line: 36, column: 24, scope: !110)
!112 = !DILocation(line: 36, column: 22, scope: !110)
!113 = !DILocation(line: 36, column: 2, scope: !106)
!114 = !DILocation(line: 37, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !110, file: !1, line: 36, column: 43)
!116 = !DILocation(line: 37, column: 20, scope: !115)
!117 = !DILocation(line: 37, column: 18, scope: !115)
!118 = !DILocation(line: 37, column: 27, scope: !115)
!119 = !DILocation(line: 37, column: 9, scope: !115)
!120 = !DILocation(line: 38, column: 13, scope: !115)
!121 = !DILocation(line: 38, column: 27, scope: !115)
!122 = !DILocation(line: 38, column: 37, scope: !115)
!123 = !DILocation(line: 38, column: 3, scope: !115)
!124 = !DILocation(line: 39, column: 15, scope: !115)
!125 = !DILocation(line: 39, column: 8, scope: !115)
!126 = !DILocation(line: 39, column: 6, scope: !115)
!127 = !DILocation(line: 40, column: 10, scope: !115)
!128 = !DILocation(line: 40, column: 9, scope: !115)
!129 = !DILocation(line: 40, column: 17, scope: !115)
!130 = !DILocation(line: 40, column: 16, scope: !115)
!131 = !DILocation(line: 40, column: 13, scope: !115)
!132 = !DILocation(line: 40, column: 7, scope: !115)
!133 = !DILocation(line: 41, column: 18, scope: !134)
!134 = distinct !DILexicalBlock(scope: !115, file: !1, line: 41, column: 7)
!135 = !DILocation(line: 41, column: 7, scope: !134)
!136 = !DILocation(line: 41, column: 7, scope: !115)
!137 = !DILocation(line: 42, column: 11, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !1, line: 41, column: 24)
!139 = !DILocation(line: 42, column: 19, scope: !138)
!140 = !DILocation(line: 42, column: 4, scope: !138)
!141 = !DILocation(line: 43, column: 12, scope: !138)
!142 = !DILocation(line: 43, column: 10, scope: !138)
!143 = !DILocation(line: 44, column: 13, scope: !138)
!144 = !DILocation(line: 46, column: 11, scope: !145)
!145 = distinct !DILexicalBlock(scope: !134, file: !1, line: 45, column: 8)
!146 = !DILocation(line: 46, column: 10, scope: !145)
!147 = !DILocation(line: 46, column: 17, scope: !145)
!148 = !DILocation(line: 46, column: 16, scope: !145)
!149 = !DILocation(line: 46, column: 14, scope: !145)
!150 = !DILocation(line: 46, column: 8, scope: !145)
!151 = !DILocation(line: 47, column: 8, scope: !152)
!152 = distinct !DILexicalBlock(scope: !145, file: !1, line: 47, column: 8)
!153 = !DILocation(line: 47, column: 8, scope: !145)
!154 = !DILocation(line: 48, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !1, line: 47, column: 13)
!156 = !DILocation(line: 48, column: 19, scope: !155)
!157 = !DILocation(line: 48, column: 11, scope: !155)
!158 = !DILocation(line: 49, column: 4, scope: !155)
!159 = !DILocation(line: 50, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !152, file: !1, line: 49, column: 10)
!161 = !DILocation(line: 50, column: 11, scope: !160)
!162 = !DILocation(line: 54, column: 2, scope: !115)
!163 = !DILocation(line: 36, column: 39, scope: !110)
!164 = !DILocation(line: 36, column: 2, scope: !110)
!165 = distinct !{!165, !113, !166}
!166 = !DILocation(line: 54, column: 2, scope: !106)
!167 = !DILocation(line: 55, column: 7, scope: !50)
!168 = !DILocation(line: 55, column: 2, scope: !50)
!169 = !DILocation(line: 56, column: 9, scope: !50)
!170 = !DILocation(line: 56, column: 2, scope: !50)
!171 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 59, type: !172, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!172 = !DISubroutineType(types: !173)
!173 = !{!5}
!174 = !DILocation(line: 60, column: 5, scope: !171)

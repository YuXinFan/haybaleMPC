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
  br i1 %8, label %9, label %10, !dbg !27

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !28
  br label %11, !dbg !28

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !30
  br label %11, !dbg !30

11:                                               ; preds = %10, %9
  %12 = load i32, i32* %3, align 4, !dbg !32
  ret i32 %12, !dbg !32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Max(i32 %0, i32 %1, i32 %2) #0 !dbg !33 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !36, metadata !DIExpression()), !dbg !37
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !38, metadata !DIExpression()), !dbg !39
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %7, metadata !42, metadata !DIExpression()), !dbg !43
  store i32 0, i32* %7, align 4, !dbg !43
  %8 = load i32, i32* %7, align 4, !dbg !44
  %9 = load i32, i32* %5, align 4, !dbg !46
  %10 = icmp slt i32 %8, %9, !dbg !47
  br i1 %10, label %11, label %12, !dbg !48

11:                                               ; preds = %3
  store i32 1, i32* %7, align 4, !dbg !49
  br label %12, !dbg !51

12:                                               ; preds = %11, %3
  %13 = load i32, i32* %7, align 4, !dbg !52
  %14 = load i32, i32* %6, align 4, !dbg !54
  %15 = icmp slt i32 %13, %14, !dbg !55
  br i1 %15, label %16, label %17, !dbg !56

16:                                               ; preds = %12
  store i32 2, i32* %7, align 4, !dbg !57
  br label %17, !dbg !59

17:                                               ; preds = %16, %12
  %18 = load i32, i32* %7, align 4, !dbg !60
  ret i32 %18, !dbg !61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !62 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0, !dbg !65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

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
!23 = !DILocation(line: 10, column: 9, scope: !24)
!24 = distinct !DILexicalBlock(scope: !15, file: !1, line: 10, column: 9)
!25 = !DILocation(line: 10, column: 13, scope: !24)
!26 = !DILocation(line: 10, column: 11, scope: !24)
!27 = !DILocation(line: 10, column: 9, scope: !15)
!28 = !DILocation(line: 11, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 10, column: 16)
!30 = !DILocation(line: 13, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !1, line: 12, column: 11)
!32 = !DILocation(line: 15, column: 1, scope: !15)
!33 = distinct !DISubprogram(name: "Max", scope: !1, file: !1, line: 17, type: !34, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!34 = !DISubroutineType(types: !35)
!35 = !{!18, !18, !18, !18}
!36 = !DILocalVariable(name: "a", arg: 1, scope: !33, file: !1, line: 17, type: !18)
!37 = !DILocation(line: 17, column: 13, scope: !33)
!38 = !DILocalVariable(name: "b", arg: 2, scope: !33, file: !1, line: 17, type: !18)
!39 = !DILocation(line: 17, column: 20, scope: !33)
!40 = !DILocalVariable(name: "c", arg: 3, scope: !33, file: !1, line: 17, type: !18)
!41 = !DILocation(line: 17, column: 27, scope: !33)
!42 = !DILocalVariable(name: "m", scope: !33, file: !1, line: 18, type: !18)
!43 = !DILocation(line: 18, column: 9, scope: !33)
!44 = !DILocation(line: 19, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !33, file: !1, line: 19, column: 9)
!46 = !DILocation(line: 19, column: 13, scope: !45)
!47 = !DILocation(line: 19, column: 11, scope: !45)
!48 = !DILocation(line: 19, column: 9, scope: !33)
!49 = !DILocation(line: 20, column: 11, scope: !50)
!50 = distinct !DILexicalBlock(scope: !45, file: !1, line: 19, column: 16)
!51 = !DILocation(line: 21, column: 5, scope: !50)
!52 = !DILocation(line: 22, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !33, file: !1, line: 22, column: 9)
!54 = !DILocation(line: 22, column: 13, scope: !53)
!55 = !DILocation(line: 22, column: 11, scope: !53)
!56 = !DILocation(line: 22, column: 9, scope: !33)
!57 = !DILocation(line: 23, column: 11, scope: !58)
!58 = distinct !DILexicalBlock(scope: !53, file: !1, line: 22, column: 16)
!59 = !DILocation(line: 24, column: 5, scope: !58)
!60 = !DILocation(line: 25, column: 12, scope: !33)
!61 = !DILocation(line: 25, column: 5, scope: !33)
!62 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 46, type: !63, scopeLine: 46, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!63 = !DISubroutineType(types: !64)
!64 = !{!18}
!65 = !DILocation(line: 47, column: 5, scope: !62)

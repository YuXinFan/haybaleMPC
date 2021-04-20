; ModuleID = 'basic.c'
source_filename = "basic.c"
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
define dso_local i32 @Dummy(i32 %0) #0 !dbg !15 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !19, metadata !DIExpression()), !dbg !20
  %3 = load i32, i32* %2, align 4, !dbg !21
  ret i32 %3, !dbg !22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Add(i32 %0, i32 %1) #0 !dbg !23 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %5, metadata !30, metadata !DIExpression()), !dbg !31
  %6 = load i32, i32* %3, align 4, !dbg !32
  %7 = load i32, i32* %4, align 4, !dbg !33
  %8 = add nsw i32 %6, %7, !dbg !34
  store i32 %8, i32* %5, align 4, !dbg !31
  %9 = load i32, i32* %5, align 4, !dbg !35
  ret i32 %9, !dbg !36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Mul(i32 %0, i32 %1) #0 !dbg !37 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !38, metadata !DIExpression()), !dbg !39
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %5, metadata !42, metadata !DIExpression()), !dbg !43
  %6 = load i32, i32* %3, align 4, !dbg !44
  %7 = load i32, i32* %4, align 4, !dbg !45
  %8 = mul nsw i32 %6, %7, !dbg !46
  store i32 %8, i32* %5, align 4, !dbg !43
  %9 = load i32, i32* %5, align 4, !dbg !47
  ret i32 %9, !dbg !48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Max(i32 %0, i32 %1) #0 !dbg !49 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !50, metadata !DIExpression()), !dbg !51
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !52, metadata !DIExpression()), !dbg !53
  %6 = load i32, i32* %4, align 4, !dbg !54
  %7 = load i32, i32* %5, align 4, !dbg !56
  %8 = icmp sgt i32 %6, %7, !dbg !57
  br i1 %8, label %9, label %11, !dbg !58

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4, !dbg !59
  store i32 %10, i32* %3, align 4, !dbg !61
  br label %13, !dbg !61

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4, !dbg !62
  store i32 %12, i32* %3, align 4, !dbg !64
  br label %13, !dbg !64

13:                                               ; preds = %11, %9
  %14 = load i32, i32* %3, align 4, !dbg !65
  ret i32 %14, !dbg !65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Const(i32 %0, i32 %1) #0 !dbg !66 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %5, metadata !71, metadata !DIExpression()), !dbg !72
  %6 = load i32, i32* %3, align 4, !dbg !73
  %7 = load i32, i32* %4, align 4, !dbg !74
  %8 = add nsw i32 %6, %7, !dbg !75
  store i32 %8, i32* %5, align 4, !dbg !72
  %9 = load i32, i32* %5, align 4, !dbg !76
  ret i32 %9, !dbg !77
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !78 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0, !dbg !81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 11.1.0-++20210204121720+1fdec59bffc1-1~exp1~20210203232336.162", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "basic.c", directory: "/home/fanyx/projects/haybaleMPC/tests/newfiles")
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
!15 = distinct !DISubprogram(name: "Dummy", scope: !1, file: !1, line: 9, type: !16, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DILocalVariable(name: "a", arg: 1, scope: !15, file: !1, line: 9, type: !18)
!20 = !DILocation(line: 9, column: 15, scope: !15)
!21 = !DILocation(line: 10, column: 12, scope: !15)
!22 = !DILocation(line: 10, column: 5, scope: !15)
!23 = distinct !DISubprogram(name: "Add", scope: !1, file: !1, line: 13, type: !24, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{!18, !18, !18}
!26 = !DILocalVariable(name: "a", arg: 1, scope: !23, file: !1, line: 13, type: !18)
!27 = !DILocation(line: 13, column: 13, scope: !23)
!28 = !DILocalVariable(name: "b", arg: 2, scope: !23, file: !1, line: 13, type: !18)
!29 = !DILocation(line: 13, column: 20, scope: !23)
!30 = !DILocalVariable(name: "c", scope: !23, file: !1, line: 14, type: !18)
!31 = !DILocation(line: 14, column: 9, scope: !23)
!32 = !DILocation(line: 14, column: 13, scope: !23)
!33 = !DILocation(line: 14, column: 17, scope: !23)
!34 = !DILocation(line: 14, column: 15, scope: !23)
!35 = !DILocation(line: 15, column: 12, scope: !23)
!36 = !DILocation(line: 15, column: 5, scope: !23)
!37 = distinct !DISubprogram(name: "Mul", scope: !1, file: !1, line: 18, type: !24, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!38 = !DILocalVariable(name: "a", arg: 1, scope: !37, file: !1, line: 18, type: !18)
!39 = !DILocation(line: 18, column: 13, scope: !37)
!40 = !DILocalVariable(name: "b", arg: 2, scope: !37, file: !1, line: 18, type: !18)
!41 = !DILocation(line: 18, column: 20, scope: !37)
!42 = !DILocalVariable(name: "c", scope: !37, file: !1, line: 19, type: !18)
!43 = !DILocation(line: 19, column: 9, scope: !37)
!44 = !DILocation(line: 19, column: 13, scope: !37)
!45 = !DILocation(line: 19, column: 17, scope: !37)
!46 = !DILocation(line: 19, column: 15, scope: !37)
!47 = !DILocation(line: 20, column: 12, scope: !37)
!48 = !DILocation(line: 20, column: 5, scope: !37)
!49 = distinct !DISubprogram(name: "Max", scope: !1, file: !1, line: 23, type: !24, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!50 = !DILocalVariable(name: "a", arg: 1, scope: !49, file: !1, line: 23, type: !18)
!51 = !DILocation(line: 23, column: 13, scope: !49)
!52 = !DILocalVariable(name: "b", arg: 2, scope: !49, file: !1, line: 23, type: !18)
!53 = !DILocation(line: 23, column: 20, scope: !49)
!54 = !DILocation(line: 24, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !49, file: !1, line: 24, column: 10)
!56 = !DILocation(line: 24, column: 14, scope: !55)
!57 = !DILocation(line: 24, column: 12, scope: !55)
!58 = !DILocation(line: 24, column: 10, scope: !49)
!59 = !DILocation(line: 25, column: 16, scope: !60)
!60 = distinct !DILexicalBlock(scope: !55, file: !1, line: 24, column: 17)
!61 = !DILocation(line: 25, column: 9, scope: !60)
!62 = !DILocation(line: 27, column: 16, scope: !63)
!63 = distinct !DILexicalBlock(scope: !55, file: !1, line: 26, column: 11)
!64 = !DILocation(line: 27, column: 9, scope: !63)
!65 = !DILocation(line: 29, column: 1, scope: !49)
!66 = distinct !DISubprogram(name: "Const", scope: !1, file: !1, line: 31, type: !24, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!67 = !DILocalVariable(name: "a", arg: 1, scope: !66, file: !1, line: 31, type: !18)
!68 = !DILocation(line: 31, column: 15, scope: !66)
!69 = !DILocalVariable(name: "c", arg: 2, scope: !66, file: !1, line: 31, type: !18)
!70 = !DILocation(line: 31, column: 22, scope: !66)
!71 = !DILocalVariable(name: "b", scope: !66, file: !1, line: 32, type: !18)
!72 = !DILocation(line: 32, column: 9, scope: !66)
!73 = !DILocation(line: 32, column: 13, scope: !66)
!74 = !DILocation(line: 32, column: 17, scope: !66)
!75 = !DILocation(line: 32, column: 15, scope: !66)
!76 = !DILocation(line: 33, column: 12, scope: !66)
!77 = !DILocation(line: 33, column: 5, scope: !66)
!78 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 35, type: !79, scopeLine: 35, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!79 = !DISubroutineType(types: !80)
!80 = !{!18}
!81 = !DILocation(line: 36, column: 5, scope: !78)

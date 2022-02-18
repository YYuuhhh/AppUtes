.class Ljxl/write/biff/SheetCopier;
.super Ljava/lang/Object;
.source "SheetCopier.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

.field private chartOnly:Z

.field private columnBreaks:Ljava/util/ArrayList;

.field private columnFormats:Ljava/util/TreeSet;

.field private comboBox:Ljxl/biff/drawing/ComboBox;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawings:Ljava/util/ArrayList;

.field private fonts:Ljava/util/HashMap;

.field private formatRecords:Ljxl/biff/FormattingRecords;

.field private formats:Ljava/util/HashMap;

.field private fromSheet:Ljxl/read/biff/SheetImpl;

.field private hyperlinks:Ljava/util/ArrayList;

.field private images:Ljava/util/ArrayList;

.field private maxColumnOutlineLevel:I

.field private maxRowOutlineLevel:I

.field private mergedCells:Ljxl/write/biff/MergedCells;

.field private numRows:I

.field private plsRecord:Ljxl/write/biff/PLSRecord;

.field private rowBreaks:Ljava/util/ArrayList;

.field private sheetWriter:Ljxl/write/biff/SheetWriter;

.field private toSheet:Ljxl/write/biff/WritableSheetImpl;

.field private validatedCells:Ljava/util/ArrayList;

.field private workbookSettings:Ljxl/WorkbookSettings;

.field private xfRecords:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    const-class v0, Ljxl/write/biff/SheetCopier;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SheetCopier;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/Sheet;Ljxl/write/WritableSheet;)V
    .locals 1
    .param p1, "f"    # Ljxl/Sheet;
    .param p2, "t"    # Ljxl/write/WritableSheet;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    move-object v0, p1

    check-cast v0, Ljxl/read/biff/SheetImpl;

    iput-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    .line 123
    move-object v0, p2

    check-cast v0, Ljxl/write/biff/WritableSheetImpl;

    iput-object v0, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    .line 124
    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/write/biff/WritableWorkbookImpl;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/write/biff/SheetCopier;->chartOnly:Z

    .line 126
    return-void
.end method

.method private copyCellFormat(Ljxl/format/CellFormat;)Ljxl/write/WritableCellFormat;
    .locals 9
    .param p1, "cf"    # Ljxl/format/CellFormat;

    .line 1024
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljxl/biff/XFRecord;

    .line 1025
    .local v0, "xfr":Ljxl/biff/XFRecord;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/format/CellFormat;)V

    .line 1026
    .local v1, "f":Ljxl/write/WritableCellFormat;
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v2, v1}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 1029
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v2

    .line 1030
    .local v2, "xfIndex":I
    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->xfRecords:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getFontIndex()I

    move-result v3

    .line 1033
    .local v3, "fontIndex":I
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->fonts:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/write/WritableCellFormat;->getFontIndex()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result v4

    .line 1036
    .local v4, "formatIndex":I
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->formats:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/write/WritableCellFormat;->getFormatRecord()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    return-object v1

    .line 1040
    .end local v0    # "xfr":Ljxl/biff/XFRecord;
    .end local v1    # "f":Ljxl/write/WritableCellFormat;
    .end local v2    # "xfIndex":I
    .end local v3    # "fontIndex":I
    .end local v4    # "formatIndex":I
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Ljxl/biff/NumFormatRecordsException;
    sget-object v1, Ljxl/write/biff/SheetCopier;->logger:Ljxl/common/Logger;

    const-string v2, "Maximum number of format records exceeded.  Using default format."

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1045
    sget-object v1, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    return-object v1
.end method

.method private deepCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;
    .locals 8
    .param p1, "cell"    # Ljxl/Cell;

    .line 863
    invoke-direct {p0, p1}, Ljxl/write/biff/SheetCopier;->shallowCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;

    move-result-object v0

    .line 865
    .local v0, "c":Ljxl/write/WritableCell;
    if-nez v0, :cond_0

    .line 867
    return-object v0

    .line 870
    :cond_0
    instance-of v1, v0, Ljxl/write/biff/ReadFormulaRecord;

    if-eqz v1, :cond_1

    .line 872
    move-object v1, v0

    check-cast v1, Ljxl/write/biff/ReadFormulaRecord;

    .line 873
    .local v1, "rfr":Ljxl/write/biff/ReadFormulaRecord;
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v2

    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v3}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v3

    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1, v2, v3, v4}, Ljxl/write/biff/ReadFormulaRecord;->handleImportedCellReferences(Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 878
    .local v2, "crossSheetReference":Z
    if-eqz v2, :cond_1

    .line 882
    :try_start_0
    sget-object v3, Ljxl/write/biff/SheetCopier;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Formula "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljxl/write/biff/ReadFormulaRecord;->getFormula()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in cell "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v5

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v6

    invoke-static {v5, v6}, Ljxl/biff/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be imported because it references another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sheet from the source workbook"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    goto :goto_0

    .line 889
    :catch_0
    move-exception v3

    .line 891
    .local v3, "e":Ljxl/biff/formula/FormulaException;
    sget-object v4, Ljxl/write/biff/SheetCopier;->logger:Ljxl/common/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Formula  in cell "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v6

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v7

    invoke-static {v6, v7}, Ljxl/biff/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot be imported:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 898
    .end local v3    # "e":Ljxl/biff/formula/FormulaException;
    :goto_0
    new-instance v3, Ljxl/write/Formula;

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v4

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v5

    const-string v6, "\"ERROR\""

    invoke-direct {v3, v4, v5, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    move-object v0, v3

    .line 903
    .end local v1    # "rfr":Ljxl/write/biff/ReadFormulaRecord;
    .end local v2    # "crossSheetReference":Z
    :cond_1
    invoke-interface {v0}, Ljxl/write/WritableCell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v1

    .line 904
    .local v1, "cf":Ljxl/format/CellFormat;
    move-object v2, v1

    check-cast v2, Ljxl/biff/XFRecord;

    invoke-virtual {v2}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v2

    .line 905
    .local v2, "index":I
    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->xfRecords:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/WritableCellFormat;

    .line 908
    .local v3, "wcf":Ljxl/write/WritableCellFormat;
    if-nez v3, :cond_2

    .line 910
    invoke-direct {p0, v1}, Ljxl/write/biff/SheetCopier;->copyCellFormat(Ljxl/format/CellFormat;)Ljxl/write/WritableCellFormat;

    move-result-object v3

    .line 913
    :cond_2
    invoke-interface {v0, v3}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 915
    return-object v0
.end method

.method private importNames()V
    .locals 18

    .line 1054
    move-object/from16 v0, p0

    iget-object v1, v0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v1

    .line 1055
    .local v1, "fromWorkbook":Ljxl/read/biff/WorkbookParser;
    iget-object v2, v0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v2

    .line 1056
    .local v2, "toWorkbook":Ljxl/write/WritableWorkbook;
    iget-object v3, v0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1, v3}, Ljxl/read/biff/WorkbookParser;->getIndex(Ljxl/Sheet;)I

    move-result v10

    .line 1057
    .local v10, "fromSheetIndex":I
    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getNameRecords()[Ljxl/read/biff/NameRecord;

    move-result-object v11

    .line 1058
    .local v11, "nameRecords":[Ljxl/read/biff/NameRecord;
    invoke-virtual {v2}, Ljxl/write/WritableWorkbook;->getRangeNames()[Ljava/lang/String;

    move-result-object v12

    .line 1060
    .local v12, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    move v13, v3

    .local v13, "i":I
    :goto_0
    array-length v3, v11

    if-ge v13, v3, :cond_3

    .line 1062
    aget-object v3, v11, v13

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object v14

    .line 1064
    .local v14, "nameRanges":[Ljxl/read/biff/NameRecord$NameRange;
    const/4 v3, 0x0

    move v15, v3

    .local v15, "j":I
    :goto_1
    array-length v3, v14

    if-ge v15, v3, :cond_2

    .line 1066
    aget-object v3, v14, v15

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v3

    invoke-virtual {v1, v3}, Ljxl/read/biff/WorkbookParser;->getExternalSheetIndex(I)I

    move-result v9

    .line 1069
    .local v9, "nameSheetIndex":I
    if-ne v10, v9, :cond_1

    .line 1071
    aget-object v3, v11, v13

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1072
    .local v8, "name":Ljava/lang/String;
    invoke-static {v12, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 1074
    iget-object v5, v0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    aget-object v3, v14, v15

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v6

    aget-object v3, v14, v15

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v7

    aget-object v3, v14, v15

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v16

    aget-object v3, v14, v15

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getLastRow()I

    move-result v17

    move-object v3, v2

    move-object v4, v8

    move-object v0, v8

    .end local v8    # "name":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    move/from16 v8, v16

    move/from16 v16, v9

    .end local v9    # "nameSheetIndex":I
    .local v16, "nameSheetIndex":I
    move/from16 v9, v17

    invoke-virtual/range {v3 .. v9}, Ljxl/write/WritableWorkbook;->addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V

    goto :goto_2

    .line 1083
    .end local v0    # "name":Ljava/lang/String;
    .end local v16    # "nameSheetIndex":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "nameSheetIndex":I
    :cond_0
    move-object v0, v8

    move/from16 v16, v9

    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "nameSheetIndex":I
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v16    # "nameSheetIndex":I
    sget-object v3, Ljxl/write/biff/SheetCopier;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Named range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already present in the destination workbook"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_2

    .line 1069
    .end local v0    # "name":Ljava/lang/String;
    .end local v16    # "nameSheetIndex":I
    .restart local v9    # "nameSheetIndex":I
    :cond_1
    move/from16 v16, v9

    .line 1064
    .end local v9    # "nameSheetIndex":I
    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 1060
    .end local v14    # "nameRanges":[Ljxl/read/biff/NameRecord$NameRange;
    .end local v15    # "j":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 1090
    .end local v13    # "i":I
    :cond_3
    return-void
.end method

.method private shallowCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;
    .locals 4
    .param p1, "cell"    # Ljxl/Cell;

    .line 803
    invoke-interface {p1}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v0

    .line 804
    .local v0, "ct":Ljxl/CellType;
    const/4 v1, 0x0

    .line 806
    .local v1, "newCell":Ljxl/write/WritableCell;
    sget-object v2, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v0, v2, :cond_0

    .line 808
    new-instance v2, Ljxl/write/Label;

    move-object v3, p1

    check-cast v3, Ljxl/LabelCell;

    invoke-direct {v2, v3}, Ljxl/write/Label;-><init>(Ljxl/LabelCell;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 810
    :cond_0
    sget-object v2, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v0, v2, :cond_1

    .line 812
    new-instance v2, Ljxl/write/Number;

    move-object v3, p1

    check-cast v3, Ljxl/NumberCell;

    invoke-direct {v2, v3}, Ljxl/write/Number;-><init>(Ljxl/NumberCell;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 814
    :cond_1
    sget-object v2, Ljxl/CellType;->DATE:Ljxl/CellType;

    if-ne v0, v2, :cond_2

    .line 816
    new-instance v2, Ljxl/write/DateTime;

    move-object v3, p1

    check-cast v3, Ljxl/DateCell;

    invoke-direct {v2, v3}, Ljxl/write/DateTime;-><init>(Ljxl/DateCell;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 818
    :cond_2
    sget-object v2, Ljxl/CellType;->BOOLEAN:Ljxl/CellType;

    if-ne v0, v2, :cond_3

    .line 820
    new-instance v2, Ljxl/write/Boolean;

    move-object v3, p1

    check-cast v3, Ljxl/BooleanCell;

    invoke-direct {v2, v3}, Ljxl/write/Boolean;-><init>(Ljxl/BooleanCell;)V

    move-object v1, v2

    goto :goto_0

    .line 822
    :cond_3
    sget-object v2, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v0, v2, :cond_4

    .line 824
    new-instance v2, Ljxl/write/biff/ReadNumberFormulaRecord;

    move-object v3, p1

    check-cast v3, Ljxl/biff/FormulaData;

    invoke-direct {v2, v3}, Ljxl/write/biff/ReadNumberFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    move-object v1, v2

    goto :goto_0

    .line 826
    :cond_4
    sget-object v2, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    if-ne v0, v2, :cond_5

    .line 828
    new-instance v2, Ljxl/write/biff/ReadStringFormulaRecord;

    move-object v3, p1

    check-cast v3, Ljxl/biff/FormulaData;

    invoke-direct {v2, v3}, Ljxl/write/biff/ReadStringFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    move-object v1, v2

    goto :goto_0

    .line 830
    :cond_5
    sget-object v2, Ljxl/CellType;->BOOLEAN_FORMULA:Ljxl/CellType;

    if-ne v0, v2, :cond_6

    .line 832
    new-instance v2, Ljxl/write/biff/ReadBooleanFormulaRecord;

    move-object v3, p1

    check-cast v3, Ljxl/biff/FormulaData;

    invoke-direct {v2, v3}, Ljxl/write/biff/ReadBooleanFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    move-object v1, v2

    goto :goto_0

    .line 834
    :cond_6
    sget-object v2, Ljxl/CellType;->DATE_FORMULA:Ljxl/CellType;

    if-ne v0, v2, :cond_7

    .line 836
    new-instance v2, Ljxl/write/biff/ReadDateFormulaRecord;

    move-object v3, p1

    check-cast v3, Ljxl/biff/FormulaData;

    invoke-direct {v2, v3}, Ljxl/write/biff/ReadDateFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    move-object v1, v2

    goto :goto_0

    .line 838
    :cond_7
    sget-object v2, Ljxl/CellType;->FORMULA_ERROR:Ljxl/CellType;

    if-ne v0, v2, :cond_8

    .line 840
    new-instance v2, Ljxl/write/biff/ReadErrorFormulaRecord;

    move-object v3, p1

    check-cast v3, Ljxl/biff/FormulaData;

    invoke-direct {v2, v3}, Ljxl/write/biff/ReadErrorFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    move-object v1, v2

    goto :goto_0

    .line 842
    :cond_8
    sget-object v2, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-ne v0, v2, :cond_9

    .line 844
    invoke-interface {p1}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 849
    new-instance v2, Ljxl/write/Blank;

    invoke-direct {v2, p1}, Ljxl/write/Blank;-><init>(Ljxl/Cell;)V

    move-object v1, v2

    .line 853
    :cond_9
    :goto_0
    return-object v1
.end method


# virtual methods
.method public copySheet()V
    .locals 17

    .line 219
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Ljxl/write/biff/SheetCopier;->shallowCopyCells()V

    .line 222
    iget-object v0, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getColumnInfos()[Ljxl/read/biff/ColumnInfoRecord;

    move-result-object v2

    .line 224
    .local v2, "readCirs":[Ljxl/read/biff/ColumnInfoRecord;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 226
    aget-object v3, v2, v0

    .line 227
    .local v3, "rcir":Ljxl/read/biff/ColumnInfoRecord;
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getStartColumn()I

    move-result v4

    .local v4, "j":I
    :goto_1
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getEndColumn()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 229
    new-instance v5, Ljxl/write/biff/ColumnInfoRecord;

    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-direct {v5, v3, v4, v6}, Ljxl/write/biff/ColumnInfoRecord;-><init>(Ljxl/read/biff/ColumnInfoRecord;ILjxl/biff/FormattingRecords;)V

    .line 231
    .local v5, "cir":Ljxl/write/biff/ColumnInfoRecord;
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljxl/write/biff/ColumnInfoRecord;->setHidden(Z)V

    .line 232
    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v5    # "cir":Ljxl/write/biff/ColumnInfoRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    .end local v3    # "rcir":Ljxl/read/biff/ColumnInfoRecord;
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "i":I
    :cond_1
    iget-object v0, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getHyperlinks()[Ljxl/Hyperlink;

    move-result-object v3

    .line 238
    .local v3, "hls":[Ljxl/Hyperlink;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 240
    new-instance v4, Ljxl/write/WritableHyperlink;

    aget-object v5, v3, v0

    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-direct {v4, v5, v6}, Ljxl/write/WritableHyperlink;-><init>(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V

    .line 242
    .local v4, "hr":Ljxl/write/WritableHyperlink;
    iget-object v5, v1, Ljxl/write/biff/SheetCopier;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v4    # "hr":Ljxl/write/WritableHyperlink;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 246
    .end local v0    # "i":I
    :cond_2
    iget-object v0, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getMergedCells()[Ljxl/Range;

    move-result-object v4

    .line 248
    .local v4, "merged":[Ljxl/Range;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 250
    iget-object v5, v1, Ljxl/write/biff/SheetCopier;->mergedCells:Ljxl/write/biff/MergedCells;

    new-instance v6, Ljxl/biff/SheetRangeImpl;

    aget-object v7, v4, v0

    check-cast v7, Ljxl/biff/SheetRangeImpl;

    iget-object v8, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-direct {v6, v7, v8}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/biff/SheetRangeImpl;Ljxl/Sheet;)V

    invoke-virtual {v5, v6}, Ljxl/write/biff/MergedCells;->add(Ljxl/Range;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 256
    .end local v0    # "i":I
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getRowProperties()[Ljxl/read/biff/RowRecord;

    move-result-object v0

    .line 258
    .local v0, "rowprops":[Ljxl/read/biff/RowRecord;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    array-length v8, v0

    if-ge v7, v8, :cond_5

    .line 260
    iget-object v8, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    aget-object v9, v0, v7

    invoke-virtual {v9}, Ljxl/read/biff/RowRecord;->getRowNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v10

    .line 261
    .local v10, "rr":Ljxl/write/biff/RowRecord;
    aget-object v8, v0, v7

    invoke-virtual {v8}, Ljxl/read/biff/RowRecord;->hasDefaultFormat()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v1, Ljxl/write/biff/SheetCopier;->formatRecords:Ljxl/biff/FormattingRecords;

    aget-object v9, v0, v7

    invoke-virtual {v9}, Ljxl/read/biff/RowRecord;->getXFIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object v8

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v16, v8

    .line 263
    .local v16, "format":Ljxl/biff/XFRecord;
    aget-object v8, v0, v7

    invoke-virtual {v8}, Ljxl/read/biff/RowRecord;->getRowHeight()I

    move-result v11

    aget-object v8, v0, v7

    invoke-virtual {v8}, Ljxl/read/biff/RowRecord;->matchesDefaultFontHeight()Z

    move-result v12

    aget-object v8, v0, v7

    invoke-virtual {v8}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v13

    aget-object v8, v0, v7

    invoke-virtual {v8}, Ljxl/read/biff/RowRecord;->getOutlineLevel()I

    move-result v14

    aget-object v8, v0, v7

    invoke-virtual {v8}, Ljxl/read/biff/RowRecord;->getGroupStart()Z

    move-result v15

    invoke-virtual/range {v10 .. v16}, Ljxl/write/biff/RowRecord;->setRowDetails(IZZIZLjxl/biff/XFRecord;)V

    .line 269
    iget v8, v1, Ljxl/write/biff/SheetCopier;->numRows:I

    aget-object v9, v0, v7

    invoke-virtual {v9}, Ljxl/read/biff/RowRecord;->getRowNumber()I

    move-result v9

    add-int/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Ljxl/write/biff/SheetCopier;->numRows:I
    :try_end_0
    .catch Ljxl/write/biff/RowsExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v10    # "rr":Ljxl/write/biff/RowRecord;
    .end local v16    # "format":Ljxl/biff/XFRecord;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 277
    .end local v0    # "rowprops":[Ljxl/read/biff/RowRecord;
    .end local v7    # "i":I
    :cond_5
    goto :goto_6

    .line 272
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljxl/write/biff/RowsExceededException;
    invoke-static {v5}, Ljxl/common/Assert;->verify(Z)V

    .line 284
    .end local v0    # "e":Ljxl/write/biff/RowsExceededException;
    :goto_6
    iget-object v0, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getRowPageBreaks()[I

    move-result-object v0

    .line 286
    .local v0, "rowbreaks":[I
    if-eqz v0, :cond_6

    .line 288
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_7
    array-length v8, v0

    if-ge v7, v8, :cond_6

    .line 290
    iget-object v8, v1, Ljxl/write/biff/SheetCopier;->rowBreaks:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/Integer;

    aget v10, v0, v7

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 294
    .end local v7    # "i":I
    :cond_6
    iget-object v7, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v7}, Ljxl/read/biff/SheetImpl;->getColumnPageBreaks()[I

    move-result-object v7

    .line 296
    .local v7, "columnbreaks":[I
    if-eqz v7, :cond_7

    .line 298
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8
    array-length v9, v7

    if-ge v8, v9, :cond_7

    .line 300
    iget-object v9, v1, Ljxl/write/biff/SheetCopier;->columnBreaks:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/Integer;

    aget v11, v7, v8

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 305
    .end local v8    # "i":I
    :cond_7
    iget-object v8, v1, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v9, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v9}, Ljxl/read/biff/SheetImpl;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljxl/write/biff/SheetWriter;->setCharts([Ljxl/biff/drawing/Chart;)V

    .line 308
    iget-object v8, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v8}, Ljxl/read/biff/SheetImpl;->getDrawings()[Ljxl/biff/drawing/DrawingGroupObject;

    move-result-object v8

    .line 309
    .local v8, "dr":[Ljxl/biff/drawing/DrawingGroupObject;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_9
    array-length v10, v8

    if-ge v9, v10, :cond_e

    .line 311
    aget-object v10, v8, v9

    instance-of v10, v10, Ljxl/biff/drawing/Drawing;

    if-eqz v10, :cond_8

    .line 313
    new-instance v10, Ljxl/write/WritableImage;

    aget-object v11, v8, v9

    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v12}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljxl/write/WritableImage;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;)V

    .line 315
    .local v10, "wi":Ljxl/write/WritableImage;
    iget-object v11, v1, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v11, v1, Ljxl/write/biff/SheetCopier;->images:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v10    # "wi":Ljxl/write/WritableImage;
    goto/16 :goto_b

    .line 318
    :cond_8
    aget-object v10, v8, v9

    instance-of v10, v10, Ljxl/biff/drawing/Comment;

    if-eqz v10, :cond_a

    .line 320
    new-instance v10, Ljxl/biff/drawing/Comment;

    aget-object v11, v8, v9

    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v12}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v12

    iget-object v13, v1, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v10, v11, v12, v13}, Ljxl/biff/drawing/Comment;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 324
    .local v10, "c":Ljxl/biff/drawing/Comment;
    iget-object v11, v1, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v11, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v10}, Ljxl/biff/drawing/Comment;->getColumn()I

    move-result v12

    invoke-virtual {v10}, Ljxl/biff/drawing/Comment;->getRow()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljxl/write/biff/WritableSheetImpl;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v11

    check-cast v11, Ljxl/write/biff/CellValue;

    .line 329
    .local v11, "cv":Ljxl/write/biff/CellValue;
    invoke-virtual {v11}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v12

    if-eqz v12, :cond_9

    move v12, v6

    goto :goto_a

    :cond_9
    move v12, v5

    :goto_a
    invoke-static {v12}, Ljxl/common/Assert;->verify(Z)V

    .line 330
    invoke-virtual {v11}, Ljxl/write/biff/CellValue;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljxl/write/WritableCellFeatures;->setCommentDrawing(Ljxl/biff/drawing/Comment;)V

    .line 331
    .end local v10    # "c":Ljxl/biff/drawing/Comment;
    .end local v11    # "cv":Ljxl/write/biff/CellValue;
    goto :goto_b

    .line 332
    :cond_a
    aget-object v10, v8, v9

    instance-of v10, v10, Ljxl/biff/drawing/Button;

    if-eqz v10, :cond_b

    .line 334
    new-instance v10, Ljxl/biff/drawing/Button;

    aget-object v11, v8, v9

    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v12}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v12

    iget-object v13, v1, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v10, v11, v12, v13}, Ljxl/biff/drawing/Button;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 339
    .local v10, "b":Ljxl/biff/drawing/Button;
    iget-object v11, v1, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .end local v10    # "b":Ljxl/biff/drawing/Button;
    goto :goto_b

    .line 341
    :cond_b
    aget-object v10, v8, v9

    instance-of v10, v10, Ljxl/biff/drawing/ComboBox;

    if-eqz v10, :cond_c

    .line 343
    new-instance v10, Ljxl/biff/drawing/ComboBox;

    aget-object v11, v8, v9

    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v12}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v12

    iget-object v13, v1, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v10, v11, v12, v13}, Ljxl/biff/drawing/ComboBox;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 348
    .local v10, "cb":Ljxl/biff/drawing/ComboBox;
    iget-object v11, v1, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .end local v10    # "cb":Ljxl/biff/drawing/ComboBox;
    goto :goto_b

    .line 350
    :cond_c
    aget-object v10, v8, v9

    instance-of v10, v10, Ljxl/biff/drawing/CheckBox;

    if-eqz v10, :cond_d

    .line 352
    new-instance v10, Ljxl/biff/drawing/CheckBox;

    aget-object v11, v8, v9

    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v12}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v12

    iget-object v13, v1, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v10, v11, v12, v13}, Ljxl/biff/drawing/CheckBox;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 357
    .local v10, "cb":Ljxl/biff/drawing/CheckBox;
    iget-object v11, v1, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v10    # "cb":Ljxl/biff/drawing/CheckBox;
    :cond_d
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9

    .line 363
    .end local v9    # "i":I
    :cond_e
    iget-object v5, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v5}, Ljxl/read/biff/SheetImpl;->getDataValidation()Ljxl/biff/DataValidation;

    move-result-object v5

    .line 364
    .local v5, "rdv":Ljxl/biff/DataValidation;
    if-eqz v5, :cond_f

    .line 366
    new-instance v9, Ljxl/biff/DataValidation;

    iget-object v10, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v10}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v10

    iget-object v11, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v11}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v11

    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v9, v5, v10, v11, v12}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidation;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v9, v1, Ljxl/write/biff/SheetCopier;->dataValidation:Ljxl/biff/DataValidation;

    .line 370
    invoke-virtual {v9}, Ljxl/biff/DataValidation;->getComboBoxObjectId()I

    move-result v9

    .line 372
    .local v9, "objid":I
    if-eqz v9, :cond_f

    .line 374
    iget-object v10, v1, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljxl/biff/drawing/ComboBox;

    iput-object v10, v1, Ljxl/write/biff/SheetCopier;->comboBox:Ljxl/biff/drawing/ComboBox;

    .line 379
    .end local v9    # "objid":I
    :cond_f
    iget-object v9, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v9}, Ljxl/read/biff/SheetImpl;->getConditionalFormats()[Ljxl/biff/ConditionalFormat;

    move-result-object v9

    .line 380
    .local v9, "cf":[Ljxl/biff/ConditionalFormat;
    array-length v10, v9

    if-lez v10, :cond_10

    .line 382
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_c
    array-length v11, v9

    if-ge v10, v11, :cond_10

    .line 384
    iget-object v11, v1, Ljxl/write/biff/SheetCopier;->conditionalFormats:Ljava/util/ArrayList;

    aget-object v12, v9, v10

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 389
    .end local v10    # "i":I
    :cond_10
    iget-object v10, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v10}, Ljxl/read/biff/SheetImpl;->getAutoFilter()Ljxl/biff/AutoFilter;

    move-result-object v10

    iput-object v10, v1, Ljxl/write/biff/SheetCopier;->autoFilter:Ljxl/biff/AutoFilter;

    .line 392
    iget-object v10, v1, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v11, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v11}, Ljxl/read/biff/SheetImpl;->getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljxl/write/biff/SheetWriter;->setWorkspaceOptions(Ljxl/biff/WorkspaceInformationRecord;)V

    .line 395
    iget-object v10, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v10}, Ljxl/read/biff/SheetImpl;->getSheetBof()Ljxl/read/biff/BOFRecord;

    move-result-object v10

    invoke-virtual {v10}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 397
    iput-boolean v6, v1, Ljxl/write/biff/SheetCopier;->chartOnly:Z

    .line 398
    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v6}, Ljxl/write/biff/SheetWriter;->setChartOnly()V

    .line 402
    :cond_11
    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v6}, Ljxl/read/biff/SheetImpl;->getPLS()Ljxl/read/biff/PLSRecord;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 404
    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v6}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 406
    sget-object v6, Ljxl/write/biff/SheetCopier;->logger:Ljxl/common/Logger;

    const-string v10, "Cannot copy Biff7 print settings record - ignoring"

    invoke-virtual {v6, v10}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_d

    .line 410
    :cond_12
    new-instance v6, Ljxl/write/biff/PLSRecord;

    iget-object v10, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v10}, Ljxl/read/biff/SheetImpl;->getPLS()Ljxl/read/biff/PLSRecord;

    move-result-object v10

    invoke-direct {v6, v10}, Ljxl/write/biff/PLSRecord;-><init>(Ljxl/read/biff/PLSRecord;)V

    iput-object v6, v1, Ljxl/write/biff/SheetCopier;->plsRecord:Ljxl/write/biff/PLSRecord;

    .line 415
    :cond_13
    :goto_d
    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v6}, Ljxl/read/biff/SheetImpl;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 417
    new-instance v6, Ljxl/write/biff/ButtonPropertySetRecord;

    iget-object v10, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v10}, Ljxl/read/biff/SheetImpl;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v10

    invoke-direct {v6, v10}, Ljxl/write/biff/ButtonPropertySetRecord;-><init>(Ljxl/read/biff/ButtonPropertySetRecord;)V

    iput-object v6, v1, Ljxl/write/biff/SheetCopier;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    .line 422
    :cond_14
    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v6}, Ljxl/read/biff/SheetImpl;->getMaxRowOutlineLevel()I

    move-result v6

    iput v6, v1, Ljxl/write/biff/SheetCopier;->maxRowOutlineLevel:I

    .line 423
    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v6}, Ljxl/read/biff/SheetImpl;->getMaxColumnOutlineLevel()I

    move-result v6

    iput v6, v1, Ljxl/write/biff/SheetCopier;->maxColumnOutlineLevel:I

    .line 424
    return-void
.end method

.method public copyWritableSheet()V
    .locals 0

    .line 432
    invoke-virtual {p0}, Ljxl/write/biff/SheetCopier;->shallowCopyCells()V

    .line 531
    return-void
.end method

.method deepCopyCells()V
    .locals 9

    .line 971
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getRows()I

    move-result v0

    .line 972
    .local v0, "cells":I
    const/4 v1, 0x0

    .line 973
    .local v1, "row":[Ljxl/Cell;
    const/4 v2, 0x0

    .line 974
    .local v2, "cell":Ljxl/Cell;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 976
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v4, v3}, Ljxl/read/biff/SheetImpl;->getRow(I)[Ljxl/Cell;

    move-result-object v1

    .line 978
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 980
    aget-object v2, v1, v4

    .line 981
    invoke-direct {p0, v2}, Ljxl/write/biff/SheetCopier;->deepCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;

    move-result-object v5

    .line 990
    .local v5, "c":Ljxl/write/WritableCell;
    if-eqz v5, :cond_1

    .line 992
    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v7, v5}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 996
    invoke-interface {v5}, Ljxl/write/WritableCell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_2

    :cond_0
    move v7, v6

    :goto_2
    invoke-interface {v5}, Ljxl/write/WritableCell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v8

    invoke-virtual {v8}, Ljxl/CellFeatures;->hasDataValidation()Z

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_1

    .line 999
    iget-object v7, p0, Ljxl/write/biff/SheetCopier;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljxl/write/WriteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1003
    :catch_0
    move-exception v7

    .line 1005
    .local v7, "e":Ljxl/write/WriteException;
    invoke-static {v6}, Ljxl/common/Assert;->verify(Z)V

    goto :goto_4

    .line 1006
    .end local v7    # "e":Ljxl/write/WriteException;
    :cond_1
    :goto_3
    nop

    .line 978
    .end local v5    # "c":Ljxl/write/WritableCell;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 974
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1009
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method getAutoFilter()Ljxl/biff/AutoFilter;
    .locals 1

    .line 185
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->autoFilter:Ljxl/biff/AutoFilter;

    return-object v0
.end method

.method getButtonPropertySet()Ljxl/write/biff/ButtonPropertySetRecord;
    .locals 1

    .line 210
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    return-object v0
.end method

.method getComboBox()Ljxl/biff/drawing/ComboBox;
    .locals 1

    .line 195
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->comboBox:Ljxl/biff/drawing/ComboBox;

    return-object v0
.end method

.method getDataValidation()Ljxl/biff/DataValidation;
    .locals 1

    .line 190
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->dataValidation:Ljxl/biff/DataValidation;

    return-object v0
.end method

.method public getMaxColumnOutlineLevel()I
    .locals 1

    .line 1110
    iget v0, p0, Ljxl/write/biff/SheetCopier;->maxColumnOutlineLevel:I

    return v0
.end method

.method public getMaxRowOutlineLevel()I
    .locals 1

    .line 1120
    iget v0, p0, Ljxl/write/biff/SheetCopier;->maxRowOutlineLevel:I

    return v0
.end method

.method getPLSRecord()Ljxl/write/biff/PLSRecord;
    .locals 1

    .line 200
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->plsRecord:Ljxl/write/biff/PLSRecord;

    return-object v0
.end method

.method getRows()I
    .locals 1

    .line 1100
    iget v0, p0, Ljxl/write/biff/SheetCopier;->numRows:I

    return v0
.end method

.method public importSheet()V
    .locals 22

    .line 538
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Ljxl/write/biff/SheetCopier;->xfRecords:Ljava/util/HashMap;

    .line 539
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Ljxl/write/biff/SheetCopier;->fonts:Ljava/util/HashMap;

    .line 540
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Ljxl/write/biff/SheetCopier;->formats:Ljava/util/HashMap;

    .line 542
    invoke-virtual/range {p0 .. p0}, Ljxl/write/biff/SheetCopier;->deepCopyCells()V

    .line 545
    iget-object v0, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getColumnInfos()[Ljxl/read/biff/ColumnInfoRecord;

    move-result-object v2

    .line 547
    .local v2, "readCirs":[Ljxl/read/biff/ColumnInfoRecord;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 549
    aget-object v3, v2, v0

    .line 550
    .local v3, "rcir":Ljxl/read/biff/ColumnInfoRecord;
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getStartColumn()I

    move-result v4

    .local v4, "j":I
    :goto_1
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getEndColumn()I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 552
    new-instance v5, Ljxl/write/biff/ColumnInfoRecord;

    invoke-direct {v5, v3, v4}, Ljxl/write/biff/ColumnInfoRecord;-><init>(Ljxl/read/biff/ColumnInfoRecord;I)V

    .line 553
    .local v5, "cir":Ljxl/write/biff/ColumnInfoRecord;
    invoke-virtual {v5}, Ljxl/write/biff/ColumnInfoRecord;->getXfIndex()I

    move-result v6

    .line 554
    .local v6, "xfIndex":I
    iget-object v7, v1, Ljxl/write/biff/SheetCopier;->xfRecords:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljxl/write/WritableCellFormat;

    .line 556
    .local v7, "cf":Ljxl/biff/XFRecord;
    if-nez v7, :cond_0

    .line 558
    iget-object v8, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v8, v4}, Ljxl/read/biff/SheetImpl;->getColumnView(I)Ljxl/CellView;

    move-result-object v8

    invoke-virtual {v8}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v8

    .line 559
    .local v8, "readFormat":Ljxl/format/CellFormat;
    invoke-direct {v1, v8}, Ljxl/write/biff/SheetCopier;->copyCellFormat(Ljxl/format/CellFormat;)Ljxl/write/WritableCellFormat;

    .line 562
    .end local v8    # "readFormat":Ljxl/format/CellFormat;
    :cond_0
    invoke-virtual {v5, v7}, Ljxl/write/biff/ColumnInfoRecord;->setCellFormat(Ljxl/biff/XFRecord;)V

    .line 563
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getHidden()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljxl/write/biff/ColumnInfoRecord;->setHidden(Z)V

    .line 564
    iget-object v8, v1, Ljxl/write/biff/SheetCopier;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v8, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 550
    .end local v5    # "cir":Ljxl/write/biff/ColumnInfoRecord;
    .end local v6    # "xfIndex":I
    .end local v7    # "cf":Ljxl/biff/XFRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 547
    .end local v3    # "rcir":Ljxl/read/biff/ColumnInfoRecord;
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    .end local v0    # "i":I
    :cond_2
    iget-object v0, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getHyperlinks()[Ljxl/Hyperlink;

    move-result-object v3

    .line 570
    .local v3, "hls":[Ljxl/Hyperlink;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 572
    new-instance v4, Ljxl/write/WritableHyperlink;

    aget-object v5, v3, v0

    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-direct {v4, v5, v6}, Ljxl/write/WritableHyperlink;-><init>(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V

    .line 574
    .local v4, "hr":Ljxl/write/WritableHyperlink;
    iget-object v5, v1, Ljxl/write/biff/SheetCopier;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    .end local v4    # "hr":Ljxl/write/WritableHyperlink;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 578
    .end local v0    # "i":I
    :cond_3
    iget-object v0, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getMergedCells()[Ljxl/Range;

    move-result-object v4

    .line 580
    .local v4, "merged":[Ljxl/Range;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 582
    iget-object v5, v1, Ljxl/write/biff/SheetCopier;->mergedCells:Ljxl/write/biff/MergedCells;

    new-instance v6, Ljxl/biff/SheetRangeImpl;

    aget-object v7, v4, v0

    check-cast v7, Ljxl/biff/SheetRangeImpl;

    iget-object v8, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-direct {v6, v7, v8}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/biff/SheetRangeImpl;Ljxl/Sheet;)V

    invoke-virtual {v5, v6}, Ljxl/write/biff/MergedCells;->add(Ljxl/Range;)V

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 588
    .end local v0    # "i":I
    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getRowProperties()[Ljxl/read/biff/RowRecord;

    move-result-object v0

    .line 590
    .local v0, "rowprops":[Ljxl/read/biff/RowRecord;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    array-length v8, v0

    if-ge v7, v8, :cond_6

    .line 592
    iget-object v8, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    aget-object v9, v0, v7

    invoke-virtual {v9}, Ljxl/read/biff/RowRecord;->getRowNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v10

    .line 593
    .local v10, "rr":Ljxl/write/biff/RowRecord;
    const/4 v8, 0x0

    .line 594
    .local v8, "format":Ljxl/biff/XFRecord;
    aget-object v9, v0, v7

    .line 595
    .local v9, "rowrec":Ljxl/read/biff/RowRecord;
    invoke-virtual {v9}, Ljxl/read/biff/RowRecord;->hasDefaultFormat()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 597
    iget-object v11, v1, Ljxl/write/biff/SheetCopier;->xfRecords:Ljava/util/HashMap;

    new-instance v12, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljxl/read/biff/RowRecord;->getXFIndex()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljxl/write/WritableCellFormat;

    move-object v8, v11

    .line 600
    if-nez v8, :cond_5

    .line 602
    invoke-virtual {v9}, Ljxl/read/biff/RowRecord;->getRowNumber()I

    move-result v11

    .line 603
    .local v11, "rownum":I
    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v12, v11}, Ljxl/read/biff/SheetImpl;->getRowView(I)Ljxl/CellView;

    move-result-object v12

    invoke-virtual {v12}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v12

    .line 604
    .local v12, "readFormat":Ljxl/format/CellFormat;
    invoke-direct {v1, v12}, Ljxl/write/biff/SheetCopier;->copyCellFormat(Ljxl/format/CellFormat;)Ljxl/write/WritableCellFormat;

    .line 608
    .end local v11    # "rownum":I
    .end local v12    # "readFormat":Ljxl/format/CellFormat;
    :cond_5
    invoke-virtual {v9}, Ljxl/read/biff/RowRecord;->getRowHeight()I

    move-result v11

    invoke-virtual {v9}, Ljxl/read/biff/RowRecord;->matchesDefaultFontHeight()Z

    move-result v12

    invoke-virtual {v9}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v13

    invoke-virtual {v9}, Ljxl/read/biff/RowRecord;->getOutlineLevel()I

    move-result v14

    invoke-virtual {v9}, Ljxl/read/biff/RowRecord;->getGroupStart()Z

    move-result v15

    move-object/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Ljxl/write/biff/RowRecord;->setRowDetails(IZZIZLjxl/biff/XFRecord;)V

    .line 614
    iget v11, v1, Ljxl/write/biff/SheetCopier;->numRows:I

    aget-object v12, v0, v7

    invoke-virtual {v12}, Ljxl/read/biff/RowRecord;->getRowNumber()I

    move-result v12

    add-int/2addr v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v1, Ljxl/write/biff/SheetCopier;->numRows:I
    :try_end_0
    .catch Ljxl/write/biff/RowsExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v8    # "format":Ljxl/biff/XFRecord;
    .end local v9    # "rowrec":Ljxl/read/biff/RowRecord;
    .end local v10    # "rr":Ljxl/write/biff/RowRecord;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 622
    .end local v0    # "rowprops":[Ljxl/read/biff/RowRecord;
    .end local v7    # "i":I
    :cond_6
    goto :goto_5

    .line 617
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljxl/write/biff/RowsExceededException;
    invoke-static {v5}, Ljxl/common/Assert;->verify(Z)V

    .line 629
    .end local v0    # "e":Ljxl/write/biff/RowsExceededException;
    :goto_5
    iget-object v0, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getRowPageBreaks()[I

    move-result-object v0

    .line 631
    .local v0, "rowbreaks":[I
    if-eqz v0, :cond_7

    .line 633
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_6
    array-length v8, v0

    if-ge v7, v8, :cond_7

    .line 635
    iget-object v8, v1, Ljxl/write/biff/SheetCopier;->rowBreaks:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/Integer;

    aget v10, v0, v7

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 639
    .end local v7    # "i":I
    :cond_7
    iget-object v7, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v7}, Ljxl/read/biff/SheetImpl;->getColumnPageBreaks()[I

    move-result-object v7

    .line 641
    .local v7, "columnbreaks":[I
    if-eqz v7, :cond_8

    .line 643
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_7
    array-length v9, v7

    if-ge v8, v9, :cond_8

    .line 645
    iget-object v9, v1, Ljxl/write/biff/SheetCopier;->columnBreaks:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/Integer;

    aget v11, v7, v8

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 650
    .end local v8    # "i":I
    :cond_8
    iget-object v8, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v8}, Ljxl/read/biff/SheetImpl;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v8

    .line 651
    .local v8, "fromCharts":[Ljxl/biff/drawing/Chart;
    if-eqz v8, :cond_9

    array-length v9, v8

    if-lez v9, :cond_9

    .line 653
    sget-object v9, Ljxl/write/biff/SheetCopier;->logger:Ljxl/common/Logger;

    const-string v10, "Importing of charts is not supported"

    invoke-virtual {v9, v10}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 690
    :cond_9
    iget-object v9, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v9}, Ljxl/read/biff/SheetImpl;->getDrawings()[Ljxl/biff/drawing/DrawingGroupObject;

    move-result-object v9

    .line 694
    .local v9, "dr":[Ljxl/biff/drawing/DrawingGroupObject;
    array-length v10, v9

    if-lez v10, :cond_a

    iget-object v10, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v10}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v10

    invoke-virtual {v10}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v10

    if-nez v10, :cond_a

    .line 697
    iget-object v10, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v10}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v10

    invoke-virtual {v10}, Ljxl/write/biff/WritableWorkbookImpl;->createDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    .line 700
    :cond_a
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_8
    array-length v11, v9

    if-ge v10, v11, :cond_10

    .line 702
    aget-object v11, v9, v10

    instance-of v11, v11, Ljxl/biff/drawing/Drawing;

    if-eqz v11, :cond_b

    .line 704
    new-instance v11, Ljxl/write/WritableImage;

    aget-object v12, v9, v10

    invoke-interface {v12}, Ljxl/biff/drawing/DrawingGroupObject;->getX()D

    move-result-wide v13

    aget-object v12, v9, v10

    invoke-interface {v12}, Ljxl/biff/drawing/DrawingGroupObject;->getY()D

    move-result-wide v15

    aget-object v12, v9, v10

    invoke-interface {v12}, Ljxl/biff/drawing/DrawingGroupObject;->getWidth()D

    move-result-wide v17

    aget-object v12, v9, v10

    invoke-interface {v12}, Ljxl/biff/drawing/DrawingGroupObject;->getHeight()D

    move-result-wide v19

    aget-object v12, v9, v10

    invoke-interface {v12}, Ljxl/biff/drawing/DrawingGroupObject;->getImageData()[B

    move-result-object v21

    move-object v12, v11

    invoke-direct/range {v12 .. v21}, Ljxl/write/WritableImage;-><init>(DDDD[B)V

    .line 708
    .local v11, "wi":Ljxl/write/WritableImage;
    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v12}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljxl/write/biff/WritableWorkbookImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 709
    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->images:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    .end local v11    # "wi":Ljxl/write/WritableImage;
    goto/16 :goto_a

    .line 712
    :cond_b
    aget-object v11, v9, v10

    instance-of v11, v11, Ljxl/biff/drawing/Comment;

    if-eqz v11, :cond_d

    .line 714
    new-instance v11, Ljxl/biff/drawing/Comment;

    aget-object v12, v9, v10

    iget-object v13, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v13}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v13

    invoke-virtual {v13}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v13

    iget-object v14, v1, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v11, v12, v13, v14}, Ljxl/biff/drawing/Comment;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 718
    .local v11, "c":Ljxl/biff/drawing/Comment;
    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v11}, Ljxl/biff/drawing/Comment;->getColumn()I

    move-result v13

    invoke-virtual {v11}, Ljxl/biff/drawing/Comment;->getRow()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljxl/write/biff/WritableSheetImpl;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v12

    check-cast v12, Ljxl/write/biff/CellValue;

    .line 723
    .local v12, "cv":Ljxl/write/biff/CellValue;
    invoke-virtual {v12}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v13

    if-eqz v13, :cond_c

    move v13, v6

    goto :goto_9

    :cond_c
    move v13, v5

    :goto_9
    invoke-static {v13}, Ljxl/common/Assert;->verify(Z)V

    .line 724
    invoke-virtual {v12}, Ljxl/write/biff/CellValue;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljxl/write/WritableCellFeatures;->setCommentDrawing(Ljxl/biff/drawing/Comment;)V

    .line 725
    .end local v11    # "c":Ljxl/biff/drawing/Comment;
    .end local v12    # "cv":Ljxl/write/biff/CellValue;
    goto :goto_a

    .line 726
    :cond_d
    aget-object v11, v9, v10

    instance-of v11, v11, Ljxl/biff/drawing/Button;

    if-eqz v11, :cond_e

    .line 728
    new-instance v11, Ljxl/biff/drawing/Button;

    aget-object v12, v9, v10

    iget-object v13, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v13}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v13

    invoke-virtual {v13}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v13

    iget-object v14, v1, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v11, v12, v13, v14}, Ljxl/biff/drawing/Button;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 733
    .local v11, "b":Ljxl/biff/drawing/Button;
    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    .end local v11    # "b":Ljxl/biff/drawing/Button;
    goto :goto_a

    .line 735
    :cond_e
    aget-object v11, v9, v10

    instance-of v11, v11, Ljxl/biff/drawing/ComboBox;

    if-eqz v11, :cond_f

    .line 737
    new-instance v11, Ljxl/biff/drawing/ComboBox;

    aget-object v12, v9, v10

    iget-object v13, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v13}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v13

    invoke-virtual {v13}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v13

    iget-object v14, v1, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v11, v12, v13, v14}, Ljxl/biff/drawing/ComboBox;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 742
    .local v11, "cb":Ljxl/biff/drawing/ComboBox;
    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .end local v11    # "cb":Ljxl/biff/drawing/ComboBox;
    :cond_f
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    .line 747
    .end local v10    # "i":I
    :cond_10
    iget-object v5, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v5}, Ljxl/read/biff/SheetImpl;->getDataValidation()Ljxl/biff/DataValidation;

    move-result-object v5

    .line 748
    .local v5, "rdv":Ljxl/biff/DataValidation;
    if-eqz v5, :cond_11

    .line 750
    new-instance v10, Ljxl/biff/DataValidation;

    iget-object v11, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v11}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v11

    iget-object v12, v1, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v12}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v12

    iget-object v13, v1, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v10, v5, v11, v12, v13}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidation;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v10, v1, Ljxl/write/biff/SheetCopier;->dataValidation:Ljxl/biff/DataValidation;

    .line 754
    invoke-virtual {v10}, Ljxl/biff/DataValidation;->getComboBoxObjectId()I

    move-result v10

    .line 755
    .local v10, "objid":I
    if-eqz v10, :cond_11

    .line 757
    iget-object v11, v1, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljxl/biff/drawing/ComboBox;

    iput-object v11, v1, Ljxl/write/biff/SheetCopier;->comboBox:Ljxl/biff/drawing/ComboBox;

    .line 762
    .end local v10    # "objid":I
    :cond_11
    iget-object v10, v1, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v11, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v11}, Ljxl/read/biff/SheetImpl;->getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljxl/write/biff/SheetWriter;->setWorkspaceOptions(Ljxl/biff/WorkspaceInformationRecord;)V

    .line 765
    iget-object v10, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v10}, Ljxl/read/biff/SheetImpl;->getSheetBof()Ljxl/read/biff/BOFRecord;

    move-result-object v10

    invoke-virtual {v10}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 767
    iput-boolean v6, v1, Ljxl/write/biff/SheetCopier;->chartOnly:Z

    .line 768
    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v6}, Ljxl/write/biff/SheetWriter;->setChartOnly()V

    .line 772
    :cond_12
    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v6}, Ljxl/read/biff/SheetImpl;->getPLS()Ljxl/read/biff/PLSRecord;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 774
    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v6}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 776
    sget-object v6, Ljxl/write/biff/SheetCopier;->logger:Ljxl/common/Logger;

    const-string v10, "Cannot copy Biff7 print settings record - ignoring"

    invoke-virtual {v6, v10}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_b

    .line 780
    :cond_13
    new-instance v6, Ljxl/write/biff/PLSRecord;

    iget-object v10, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v10}, Ljxl/read/biff/SheetImpl;->getPLS()Ljxl/read/biff/PLSRecord;

    move-result-object v10

    invoke-direct {v6, v10}, Ljxl/write/biff/PLSRecord;-><init>(Ljxl/read/biff/PLSRecord;)V

    iput-object v6, v1, Ljxl/write/biff/SheetCopier;->plsRecord:Ljxl/write/biff/PLSRecord;

    .line 785
    :cond_14
    :goto_b
    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v6}, Ljxl/read/biff/SheetImpl;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 787
    new-instance v6, Ljxl/write/biff/ButtonPropertySetRecord;

    iget-object v10, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v10}, Ljxl/read/biff/SheetImpl;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v10

    invoke-direct {v6, v10}, Ljxl/write/biff/ButtonPropertySetRecord;-><init>(Ljxl/read/biff/ButtonPropertySetRecord;)V

    iput-object v6, v1, Ljxl/write/biff/SheetCopier;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    .line 791
    :cond_15
    invoke-direct/range {p0 .. p0}, Ljxl/write/biff/SheetCopier;->importNames()V

    .line 794
    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v6}, Ljxl/read/biff/SheetImpl;->getMaxRowOutlineLevel()I

    move-result v6

    iput v6, v1, Ljxl/write/biff/SheetCopier;->maxRowOutlineLevel:I

    .line 795
    iget-object v6, v1, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v6}, Ljxl/read/biff/SheetImpl;->getMaxColumnOutlineLevel()I

    move-result v6

    iput v6, v1, Ljxl/write/biff/SheetCopier;->maxColumnOutlineLevel:I

    .line 796
    return-void
.end method

.method isChartOnly()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Ljxl/write/biff/SheetCopier;->chartOnly:Z

    return v0
.end method

.method setColumnBreaks(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "cb"    # Ljava/util/ArrayList;

    .line 155
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->columnBreaks:Ljava/util/ArrayList;

    .line 156
    return-void
.end method

.method setColumnFormats(Ljava/util/TreeSet;)V
    .locals 0
    .param p1, "cf"    # Ljava/util/TreeSet;

    .line 130
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->columnFormats:Ljava/util/TreeSet;

    .line 131
    return-void
.end method

.method setConditionalFormats(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "cf"    # Ljava/util/ArrayList;

    .line 175
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->conditionalFormats:Ljava/util/ArrayList;

    .line 176
    return-void
.end method

.method setDrawings(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "d"    # Ljava/util/ArrayList;

    .line 165
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    .line 166
    return-void
.end method

.method setFormatRecords(Ljxl/biff/FormattingRecords;)V
    .locals 0
    .param p1, "fr"    # Ljxl/biff/FormattingRecords;

    .line 135
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->formatRecords:Ljxl/biff/FormattingRecords;

    .line 136
    return-void
.end method

.method setHyperlinks(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "h"    # Ljava/util/ArrayList;

    .line 140
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->hyperlinks:Ljava/util/ArrayList;

    .line 141
    return-void
.end method

.method setImages(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "i"    # Ljava/util/ArrayList;

    .line 170
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->images:Ljava/util/ArrayList;

    .line 171
    return-void
.end method

.method setMergedCells(Ljxl/write/biff/MergedCells;)V
    .locals 0
    .param p1, "mc"    # Ljxl/write/biff/MergedCells;

    .line 145
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->mergedCells:Ljxl/write/biff/MergedCells;

    .line 146
    return-void
.end method

.method setRowBreaks(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "rb"    # Ljava/util/ArrayList;

    .line 150
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->rowBreaks:Ljava/util/ArrayList;

    .line 151
    return-void
.end method

.method setSheetWriter(Ljxl/write/biff/SheetWriter;)V
    .locals 0
    .param p1, "sw"    # Ljxl/write/biff/SheetWriter;

    .line 160
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    .line 161
    return-void
.end method

.method setValidatedCells(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "vc"    # Ljava/util/ArrayList;

    .line 180
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->validatedCells:Ljava/util/ArrayList;

    .line 181
    return-void
.end method

.method shallowCopyCells()V
    .locals 8

    .line 924
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getRows()I

    move-result v0

    .line 925
    .local v0, "cells":I
    const/4 v1, 0x0

    .line 926
    .local v1, "row":[Ljxl/Cell;
    const/4 v2, 0x0

    .line 927
    .local v2, "cell":Ljxl/Cell;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 929
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v4, v3}, Ljxl/read/biff/SheetImpl;->getRow(I)[Ljxl/Cell;

    move-result-object v1

    .line 931
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 933
    aget-object v2, v1, v4

    .line 934
    invoke-direct {p0, v2}, Ljxl/write/biff/SheetCopier;->shallowCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;

    move-result-object v5

    .line 943
    .local v5, "c":Ljxl/write/WritableCell;
    if-eqz v5, :cond_0

    .line 945
    :try_start_0
    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6, v5}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 949
    invoke-interface {v5}, Ljxl/write/WritableCell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljxl/write/WritableCell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/CellFeatures;->hasDataValidation()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 952
    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljxl/write/WriteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 956
    :catch_0
    move-exception v6

    .line 958
    .local v6, "e":Ljxl/write/WriteException;
    const/4 v7, 0x0

    invoke-static {v7}, Ljxl/common/Assert;->verify(Z)V

    goto :goto_3

    .line 959
    .end local v6    # "e":Ljxl/write/WriteException;
    :cond_0
    :goto_2
    nop

    .line 931
    .end local v5    # "c":Ljxl/write/WritableCell;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 927
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 962
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getRows()I

    move-result v3

    iput v3, p0, Ljxl/write/biff/SheetCopier;->numRows:I

    .line 963
    return-void
.end method

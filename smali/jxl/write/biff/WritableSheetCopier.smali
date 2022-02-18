.class Ljxl/write/biff/WritableSheetCopier;
.super Ljava/lang/Object;
.source "WritableSheetCopier.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private chartOnly:Z

.field private fonts:Ljava/util/HashMap;

.field private formatRecords:Ljxl/biff/FormattingRecords;

.field private formats:Ljava/util/HashMap;

.field private fromButtonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

.field private fromColumnBreaks:Ljava/util/ArrayList;

.field private fromColumnFormats:Ljava/util/TreeSet;

.field private fromDataValidation:Ljxl/biff/DataValidation;

.field private fromDrawings:Ljava/util/ArrayList;

.field private fromHyperlinks:Ljava/util/ArrayList;

.field private fromMergedCells:Ljxl/write/biff/MergedCells;

.field private fromPLSRecord:Ljxl/write/biff/PLSRecord;

.field private fromRowBreaks:Ljava/util/ArrayList;

.field private fromRows:[Ljxl/write/biff/RowRecord;

.field private fromSheet:Ljxl/write/biff/WritableSheetImpl;

.field private fromWorkspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

.field private maxColumnOutlineLevel:I

.field private maxRowOutlineLevel:I

.field private numRows:I

.field private sheetWriter:Ljxl/write/biff/SheetWriter;

.field private toButtonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

.field private toColumnBreaks:Ljava/util/ArrayList;

.field private toColumnFormats:Ljava/util/TreeSet;

.field private toDataValidation:Ljxl/biff/DataValidation;

.field private toDrawings:Ljava/util/ArrayList;

.field private toHyperlinks:Ljava/util/ArrayList;

.field private toImages:Ljava/util/ArrayList;

.field private toMergedCells:Ljxl/write/biff/MergedCells;

.field private toPLSRecord:Ljxl/write/biff/PLSRecord;

.field private toRowBreaks:Ljava/util/ArrayList;

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

    sput-object v0, Ljxl/write/biff/WritableSheetCopier;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableSheet;Ljxl/write/WritableSheet;)V
    .locals 1
    .param p1, "f"    # Ljxl/write/WritableSheet;
    .param p2, "t"    # Ljxl/write/WritableSheet;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    move-object v0, p1

    check-cast v0, Ljxl/write/biff/WritableSheetImpl;

    iput-object v0, p0, Ljxl/write/biff/WritableSheetCopier;->fromSheet:Ljxl/write/biff/WritableSheetImpl;

    .line 135
    move-object v0, p2

    check-cast v0, Ljxl/write/biff/WritableSheetImpl;

    iput-object v0, p0, Ljxl/write/biff/WritableSheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    .line 136
    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/write/biff/WritableWorkbookImpl;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/WritableSheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/write/biff/WritableSheetCopier;->chartOnly:Z

    .line 138
    return-void
.end method

.method private copyCellFormat(Ljxl/format/CellFormat;)Ljxl/write/WritableCellFormat;
    .locals 9
    .param p1, "cf"    # Ljxl/format/CellFormat;

    .line 574
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljxl/biff/XFRecord;

    .line 575
    .local v0, "xfr":Ljxl/biff/XFRecord;
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/format/CellFormat;)V

    .line 576
    .local v1, "f":Ljxl/write/WritableCellFormat;
    iget-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v2, v1}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 579
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v2

    .line 580
    .local v2, "xfIndex":I
    iget-object v3, p0, Ljxl/write/biff/WritableSheetCopier;->xfRecords:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getFontIndex()I

    move-result v3

    .line 583
    .local v3, "fontIndex":I
    iget-object v4, p0, Ljxl/write/biff/WritableSheetCopier;->fonts:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/write/WritableCellFormat;->getFontIndex()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result v4

    .line 586
    .local v4, "formatIndex":I
    iget-object v5, p0, Ljxl/write/biff/WritableSheetCopier;->formats:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/write/WritableCellFormat;->getFormatRecord()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    return-object v1

    .line 590
    .end local v0    # "xfr":Ljxl/biff/XFRecord;
    .end local v1    # "f":Ljxl/write/WritableCellFormat;
    .end local v2    # "xfIndex":I
    .end local v3    # "fontIndex":I
    .end local v4    # "formatIndex":I
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljxl/biff/NumFormatRecordsException;
    sget-object v1, Ljxl/write/biff/WritableSheetCopier;->logger:Ljxl/common/Logger;

    const-string v2, "Maximum number of format records exceeded.  Using default format."

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 595
    sget-object v1, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    return-object v1
.end method

.method private deepCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;
    .locals 8
    .param p1, "cell"    # Ljxl/Cell;

    .line 413
    invoke-direct {p0, p1}, Ljxl/write/biff/WritableSheetCopier;->shallowCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;

    move-result-object v0

    .line 415
    .local v0, "c":Ljxl/write/WritableCell;
    if-nez v0, :cond_0

    .line 417
    return-object v0

    .line 420
    :cond_0
    instance-of v1, v0, Ljxl/write/biff/ReadFormulaRecord;

    if-eqz v1, :cond_1

    .line 422
    move-object v1, v0

    check-cast v1, Ljxl/write/biff/ReadFormulaRecord;

    .line 423
    .local v1, "rfr":Ljxl/write/biff/ReadFormulaRecord;
    iget-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->fromSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v2

    iget-object v3, p0, Ljxl/write/biff/WritableSheetCopier;->fromSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v3

    iget-object v4, p0, Ljxl/write/biff/WritableSheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1, v2, v3, v4}, Ljxl/write/biff/ReadFormulaRecord;->handleImportedCellReferences(Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 428
    .local v2, "crossSheetReference":Z
    if-eqz v2, :cond_1

    .line 432
    :try_start_0
    sget-object v3, Ljxl/write/biff/WritableSheetCopier;->logger:Ljxl/common/Logger;

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

    .line 445
    goto :goto_0

    .line 439
    :catch_0
    move-exception v3

    .line 441
    .local v3, "e":Ljxl/biff/formula/FormulaException;
    sget-object v4, Ljxl/write/biff/WritableSheetCopier;->logger:Ljxl/common/Logger;

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

    .line 448
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

    .line 453
    .end local v1    # "rfr":Ljxl/write/biff/ReadFormulaRecord;
    .end local v2    # "crossSheetReference":Z
    :cond_1
    invoke-interface {v0}, Ljxl/write/WritableCell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v1

    .line 454
    .local v1, "cf":Ljxl/format/CellFormat;
    move-object v2, v1

    check-cast v2, Ljxl/biff/XFRecord;

    invoke-virtual {v2}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v2

    .line 455
    .local v2, "index":I
    iget-object v3, p0, Ljxl/write/biff/WritableSheetCopier;->xfRecords:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/WritableCellFormat;

    .line 458
    .local v3, "wcf":Ljxl/write/WritableCellFormat;
    if-nez v3, :cond_2

    .line 460
    invoke-direct {p0, v1}, Ljxl/write/biff/WritableSheetCopier;->copyCellFormat(Ljxl/format/CellFormat;)Ljxl/write/WritableCellFormat;

    move-result-object v3

    .line 463
    :cond_2
    invoke-interface {v0, v3}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 465
    return-object v0
.end method

.method private shallowCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;
    .locals 4
    .param p1, "cell"    # Ljxl/Cell;

    .line 353
    invoke-interface {p1}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v0

    .line 354
    .local v0, "ct":Ljxl/CellType;
    const/4 v1, 0x0

    .line 356
    .local v1, "newCell":Ljxl/write/WritableCell;
    sget-object v2, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v0, v2, :cond_0

    .line 358
    new-instance v2, Ljxl/write/Label;

    move-object v3, p1

    check-cast v3, Ljxl/LabelCell;

    invoke-direct {v2, v3}, Ljxl/write/Label;-><init>(Ljxl/LabelCell;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 360
    :cond_0
    sget-object v2, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v0, v2, :cond_1

    .line 362
    new-instance v2, Ljxl/write/Number;

    move-object v3, p1

    check-cast v3, Ljxl/NumberCell;

    invoke-direct {v2, v3}, Ljxl/write/Number;-><init>(Ljxl/NumberCell;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 364
    :cond_1
    sget-object v2, Ljxl/CellType;->DATE:Ljxl/CellType;

    if-ne v0, v2, :cond_2

    .line 366
    new-instance v2, Ljxl/write/DateTime;

    move-object v3, p1

    check-cast v3, Ljxl/DateCell;

    invoke-direct {v2, v3}, Ljxl/write/DateTime;-><init>(Ljxl/DateCell;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 368
    :cond_2
    sget-object v2, Ljxl/CellType;->BOOLEAN:Ljxl/CellType;

    if-ne v0, v2, :cond_3

    .line 370
    new-instance v2, Ljxl/write/Boolean;

    move-object v3, p1

    check-cast v3, Ljxl/BooleanCell;

    invoke-direct {v2, v3}, Ljxl/write/Boolean;-><init>(Ljxl/BooleanCell;)V

    move-object v1, v2

    goto :goto_0

    .line 372
    :cond_3
    sget-object v2, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v0, v2, :cond_4

    .line 374
    new-instance v2, Ljxl/write/biff/ReadNumberFormulaRecord;

    move-object v3, p1

    check-cast v3, Ljxl/biff/FormulaData;

    invoke-direct {v2, v3}, Ljxl/write/biff/ReadNumberFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    move-object v1, v2

    goto :goto_0

    .line 376
    :cond_4
    sget-object v2, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    if-ne v0, v2, :cond_5

    .line 378
    new-instance v2, Ljxl/write/biff/ReadStringFormulaRecord;

    move-object v3, p1

    check-cast v3, Ljxl/biff/FormulaData;

    invoke-direct {v2, v3}, Ljxl/write/biff/ReadStringFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    move-object v1, v2

    goto :goto_0

    .line 380
    :cond_5
    sget-object v2, Ljxl/CellType;->BOOLEAN_FORMULA:Ljxl/CellType;

    if-ne v0, v2, :cond_6

    .line 382
    new-instance v2, Ljxl/write/biff/ReadBooleanFormulaRecord;

    move-object v3, p1

    check-cast v3, Ljxl/biff/FormulaData;

    invoke-direct {v2, v3}, Ljxl/write/biff/ReadBooleanFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    move-object v1, v2

    goto :goto_0

    .line 384
    :cond_6
    sget-object v2, Ljxl/CellType;->DATE_FORMULA:Ljxl/CellType;

    if-ne v0, v2, :cond_7

    .line 386
    new-instance v2, Ljxl/write/biff/ReadDateFormulaRecord;

    move-object v3, p1

    check-cast v3, Ljxl/biff/FormulaData;

    invoke-direct {v2, v3}, Ljxl/write/biff/ReadDateFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    move-object v1, v2

    goto :goto_0

    .line 388
    :cond_7
    sget-object v2, Ljxl/CellType;->FORMULA_ERROR:Ljxl/CellType;

    if-ne v0, v2, :cond_8

    .line 390
    new-instance v2, Ljxl/write/biff/ReadErrorFormulaRecord;

    move-object v3, p1

    check-cast v3, Ljxl/biff/FormulaData;

    invoke-direct {v2, v3}, Ljxl/write/biff/ReadErrorFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    move-object v1, v2

    goto :goto_0

    .line 392
    :cond_8
    sget-object v2, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-ne v0, v2, :cond_9

    .line 394
    invoke-interface {p1}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 399
    new-instance v2, Ljxl/write/Blank;

    invoke-direct {v2, p1}, Ljxl/write/Blank;-><init>(Ljxl/Cell;)V

    move-object v1, v2

    .line 403
    :cond_9
    :goto_0
    return-object v1
.end method


# virtual methods
.method public copySheet()V
    .locals 13

    .line 239
    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetCopier;->shallowCopyCells()V

    .line 242
    iget-object v0, p0, Ljxl/write/biff/WritableSheetCopier;->fromColumnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 243
    .local v0, "cfit":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    new-instance v1, Ljxl/write/biff/ColumnInfoRecord;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/ColumnInfoRecord;

    invoke-direct {v1, v2}, Ljxl/write/biff/ColumnInfoRecord;-><init>(Ljxl/write/biff/ColumnInfoRecord;)V

    .line 247
    .local v1, "cv":Ljxl/write/biff/ColumnInfoRecord;
    iget-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->toColumnFormats:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v1    # "cv":Ljxl/write/biff/ColumnInfoRecord;
    goto :goto_0

    .line 251
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/WritableSheetCopier;->fromMergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v1}, Ljxl/write/biff/MergedCells;->getMergedCells()[Ljxl/Range;

    move-result-object v1

    .line 253
    .local v1, "merged":[Ljxl/Range;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 255
    iget-object v3, p0, Ljxl/write/biff/WritableSheetCopier;->toMergedCells:Ljxl/write/biff/MergedCells;

    new-instance v4, Ljxl/biff/SheetRangeImpl;

    aget-object v5, v1, v2

    check-cast v5, Ljxl/biff/SheetRangeImpl;

    iget-object v6, p0, Ljxl/write/biff/WritableSheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-direct {v4, v5, v6}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/biff/SheetRangeImpl;Ljxl/Sheet;)V

    invoke-virtual {v3, v4}, Ljxl/write/biff/MergedCells;->add(Ljxl/Range;)V

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 261
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 262
    .local v2, "row":Ljxl/write/biff/RowRecord;
    const/4 v3, 0x0

    .line 263
    .local v3, "newRow":Ljxl/write/biff/RowRecord;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    :try_start_0
    iget-object v5, p0, Ljxl/write/biff/WritableSheetCopier;->fromRows:[Ljxl/write/biff/RowRecord;

    array-length v6, v5

    if-ge v4, v6, :cond_4

    .line 265
    aget-object v5, v5, v4

    move-object v2, v5

    .line 267
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljxl/write/biff/RowRecord;->isDefaultHeight()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljxl/write/biff/RowRecord;->isCollapsed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 271
    :cond_2
    iget-object v5, p0, Ljxl/write/biff/WritableSheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v5, v4}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v6

    .line 272
    .end local v3    # "newRow":Ljxl/write/biff/RowRecord;
    .local v6, "newRow":Ljxl/write/biff/RowRecord;
    invoke-virtual {v2}, Ljxl/write/biff/RowRecord;->getRowHeight()I

    move-result v7

    invoke-virtual {v2}, Ljxl/write/biff/RowRecord;->matchesDefaultFontHeight()Z

    move-result v8

    invoke-virtual {v2}, Ljxl/write/biff/RowRecord;->isCollapsed()Z

    move-result v9

    invoke-virtual {v2}, Ljxl/write/biff/RowRecord;->getOutlineLevel()I

    move-result v10

    invoke-virtual {v2}, Ljxl/write/biff/RowRecord;->getGroupStart()Z

    move-result v11

    invoke-virtual {v2}, Ljxl/write/biff/RowRecord;->getStyle()Ljxl/biff/XFRecord;

    move-result-object v12

    invoke-virtual/range {v6 .. v12}, Ljxl/write/biff/RowRecord;->setRowDetails(IZZIZLjxl/biff/XFRecord;)V
    :try_end_0
    .catch Ljxl/write/biff/RowsExceededException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .line 263
    .end local v6    # "newRow":Ljxl/write/biff/RowRecord;
    .restart local v3    # "newRow":Ljxl/write/biff/RowRecord;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 286
    .end local v2    # "row":Ljxl/write/biff/RowRecord;
    .end local v3    # "newRow":Ljxl/write/biff/RowRecord;
    .end local v4    # "i":I
    :cond_4
    goto :goto_3

    .line 281
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Ljxl/write/biff/RowsExceededException;
    const/4 v3, 0x0

    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 289
    .end local v2    # "e":Ljxl/write/biff/RowsExceededException;
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetCopier;->fromRowBreaks:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->toRowBreaks:Ljava/util/ArrayList;

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetCopier;->fromColumnBreaks:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->toColumnBreaks:Ljava/util/ArrayList;

    .line 295
    iget-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->fromDataValidation:Ljxl/biff/DataValidation;

    if-eqz v2, :cond_5

    .line 297
    new-instance v2, Ljxl/biff/DataValidation;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetCopier;->fromDataValidation:Ljxl/biff/DataValidation;

    iget-object v4, p0, Ljxl/write/biff/WritableSheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v4

    iget-object v5, p0, Ljxl/write/biff/WritableSheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v5}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v5

    iget-object v6, p0, Ljxl/write/biff/WritableSheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/write/biff/WritableWorkbookImpl;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidation;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->toDataValidation:Ljxl/biff/DataValidation;

    .line 305
    :cond_5
    iget-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetCopier;->fromSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/write/biff/SheetWriter;->setCharts([Ljxl/biff/drawing/Chart;)V

    .line 308
    iget-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->fromDrawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 310
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 311
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Ljxl/biff/drawing/Drawing;

    if-eqz v4, :cond_6

    .line 313
    new-instance v4, Ljxl/write/WritableImage;

    move-object v5, v3

    check-cast v5, Ljxl/biff/drawing/Drawing;

    iget-object v6, p0, Ljxl/write/biff/WritableSheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljxl/write/WritableImage;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;)V

    .line 316
    .local v4, "wi":Ljxl/write/WritableImage;
    iget-object v5, p0, Ljxl/write/biff/WritableSheetCopier;->toDrawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v5, p0, Ljxl/write/biff/WritableSheetCopier;->toImages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "wi":Ljxl/write/WritableImage;
    :cond_6
    goto :goto_4

    .line 325
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_7
    iget-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetCopier;->fromWorkspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    invoke-virtual {v2, v3}, Ljxl/write/biff/SheetWriter;->setWorkspaceOptions(Ljxl/biff/WorkspaceInformationRecord;)V

    .line 328
    iget-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->fromPLSRecord:Ljxl/write/biff/PLSRecord;

    if-eqz v2, :cond_8

    .line 330
    new-instance v2, Ljxl/write/biff/PLSRecord;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetCopier;->fromPLSRecord:Ljxl/write/biff/PLSRecord;

    invoke-direct {v2, v3}, Ljxl/write/biff/PLSRecord;-><init>(Ljxl/write/biff/PLSRecord;)V

    iput-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->toPLSRecord:Ljxl/write/biff/PLSRecord;

    .line 334
    :cond_8
    iget-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->fromButtonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    if-eqz v2, :cond_9

    .line 336
    new-instance v2, Ljxl/write/biff/ButtonPropertySetRecord;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetCopier;->fromButtonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    invoke-direct {v2, v3}, Ljxl/write/biff/ButtonPropertySetRecord;-><init>(Ljxl/write/biff/ButtonPropertySetRecord;)V

    iput-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->toButtonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    .line 340
    :cond_9
    iget-object v2, p0, Ljxl/write/biff/WritableSheetCopier;->fromHyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 342
    new-instance v3, Ljxl/write/WritableHyperlink;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/write/WritableHyperlink;

    iget-object v5, p0, Ljxl/write/biff/WritableSheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-direct {v3, v4, v5}, Ljxl/write/WritableHyperlink;-><init>(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V

    .line 344
    .local v3, "hr":Ljxl/write/WritableHyperlink;
    iget-object v4, p0, Ljxl/write/biff/WritableSheetCopier;->toHyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v3    # "hr":Ljxl/write/WritableHyperlink;
    goto :goto_5

    .line 346
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_a
    return-void
.end method

.method deepCopyCells()V
    .locals 9

    .line 521
    iget-object v0, p0, Ljxl/write/biff/WritableSheetCopier;->fromSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getRows()I

    move-result v0

    .line 522
    .local v0, "cells":I
    const/4 v1, 0x0

    .line 523
    .local v1, "row":[Ljxl/Cell;
    const/4 v2, 0x0

    .line 524
    .local v2, "cell":Ljxl/Cell;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 526
    iget-object v4, p0, Ljxl/write/biff/WritableSheetCopier;->fromSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v4, v3}, Ljxl/write/biff/WritableSheetImpl;->getRow(I)[Ljxl/Cell;

    move-result-object v1

    .line 528
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 530
    aget-object v2, v1, v4

    .line 531
    invoke-direct {p0, v2}, Ljxl/write/biff/WritableSheetCopier;->deepCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;

    move-result-object v5

    .line 540
    .local v5, "c":Ljxl/write/WritableCell;
    if-eqz v5, :cond_1

    .line 542
    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Ljxl/write/biff/WritableSheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v7, v5}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 546
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

    .line 549
    iget-object v7, p0, Ljxl/write/biff/WritableSheetCopier;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljxl/write/WriteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 553
    :catch_0
    move-exception v7

    .line 555
    .local v7, "e":Ljxl/write/WriteException;
    invoke-static {v6}, Ljxl/common/Assert;->verify(Z)V

    goto :goto_4

    .line 556
    .end local v7    # "e":Ljxl/write/WriteException;
    :cond_1
    :goto_3
    nop

    .line 528
    .end local v5    # "c":Ljxl/write/WritableCell;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 524
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 559
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method getButtonPropertySet()Ljxl/write/biff/ButtonPropertySetRecord;
    .locals 1

    .line 230
    iget-object v0, p0, Ljxl/write/biff/WritableSheetCopier;->toButtonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    return-object v0
.end method

.method getDataValidation()Ljxl/biff/DataValidation;
    .locals 1

    .line 215
    iget-object v0, p0, Ljxl/write/biff/WritableSheetCopier;->toDataValidation:Ljxl/biff/DataValidation;

    return-object v0
.end method

.method public getMaxColumnOutlineLevel()I
    .locals 1

    .line 607
    iget v0, p0, Ljxl/write/biff/WritableSheetCopier;->maxColumnOutlineLevel:I

    return v0
.end method

.method public getMaxRowOutlineLevel()I
    .locals 1

    .line 617
    iget v0, p0, Ljxl/write/biff/WritableSheetCopier;->maxRowOutlineLevel:I

    return v0
.end method

.method getPLSRecord()Ljxl/write/biff/PLSRecord;
    .locals 1

    .line 220
    iget-object v0, p0, Ljxl/write/biff/WritableSheetCopier;->toPLSRecord:Ljxl/write/biff/PLSRecord;

    return-object v0
.end method

.method isChartOnly()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Ljxl/write/biff/WritableSheetCopier;->chartOnly:Z

    return v0
.end method

.method setButtonPropertySetRecord(Ljxl/write/biff/ButtonPropertySetRecord;)V
    .locals 0
    .param p1, "bpsr"    # Ljxl/write/biff/ButtonPropertySetRecord;

    .line 204
    iput-object p1, p0, Ljxl/write/biff/WritableSheetCopier;->fromButtonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    .line 205
    return-void
.end method

.method setColumnBreaks(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fcb"    # Ljava/util/ArrayList;
    .param p2, "tcb"    # Ljava/util/ArrayList;

    .line 170
    iput-object p1, p0, Ljxl/write/biff/WritableSheetCopier;->fromColumnBreaks:Ljava/util/ArrayList;

    .line 171
    iput-object p2, p0, Ljxl/write/biff/WritableSheetCopier;->toColumnBreaks:Ljava/util/ArrayList;

    .line 172
    return-void
.end method

.method setColumnFormats(Ljava/util/TreeSet;Ljava/util/TreeSet;)V
    .locals 0
    .param p1, "fcf"    # Ljava/util/TreeSet;
    .param p2, "tcf"    # Ljava/util/TreeSet;

    .line 142
    iput-object p1, p0, Ljxl/write/biff/WritableSheetCopier;->fromColumnFormats:Ljava/util/TreeSet;

    .line 143
    iput-object p2, p0, Ljxl/write/biff/WritableSheetCopier;->toColumnFormats:Ljava/util/TreeSet;

    .line 144
    return-void
.end method

.method setDataValidation(Ljxl/biff/DataValidation;)V
    .locals 0
    .param p1, "dv"    # Ljxl/biff/DataValidation;

    .line 194
    iput-object p1, p0, Ljxl/write/biff/WritableSheetCopier;->fromDataValidation:Ljxl/biff/DataValidation;

    .line 195
    return-void
.end method

.method setDrawings(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Ljava/util/ArrayList;
    .param p2, "td"    # Ljava/util/ArrayList;
    .param p3, "ti"    # Ljava/util/ArrayList;

    .line 176
    iput-object p1, p0, Ljxl/write/biff/WritableSheetCopier;->fromDrawings:Ljava/util/ArrayList;

    .line 177
    iput-object p2, p0, Ljxl/write/biff/WritableSheetCopier;->toDrawings:Ljava/util/ArrayList;

    .line 178
    iput-object p3, p0, Ljxl/write/biff/WritableSheetCopier;->toImages:Ljava/util/ArrayList;

    .line 179
    return-void
.end method

.method setHyperlinks(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fh"    # Ljava/util/ArrayList;
    .param p2, "th"    # Ljava/util/ArrayList;

    .line 183
    iput-object p1, p0, Ljxl/write/biff/WritableSheetCopier;->fromHyperlinks:Ljava/util/ArrayList;

    .line 184
    iput-object p2, p0, Ljxl/write/biff/WritableSheetCopier;->toHyperlinks:Ljava/util/ArrayList;

    .line 185
    return-void
.end method

.method setMergedCells(Ljxl/write/biff/MergedCells;Ljxl/write/biff/MergedCells;)V
    .locals 0
    .param p1, "fmc"    # Ljxl/write/biff/MergedCells;
    .param p2, "tmc"    # Ljxl/write/biff/MergedCells;

    .line 148
    iput-object p1, p0, Ljxl/write/biff/WritableSheetCopier;->fromMergedCells:Ljxl/write/biff/MergedCells;

    .line 149
    iput-object p2, p0, Ljxl/write/biff/WritableSheetCopier;->toMergedCells:Ljxl/write/biff/MergedCells;

    .line 150
    return-void
.end method

.method setPLSRecord(Ljxl/write/biff/PLSRecord;)V
    .locals 0
    .param p1, "plsr"    # Ljxl/write/biff/PLSRecord;

    .line 199
    iput-object p1, p0, Ljxl/write/biff/WritableSheetCopier;->fromPLSRecord:Ljxl/write/biff/PLSRecord;

    .line 200
    return-void
.end method

.method setRowBreaks(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "frb"    # Ljava/util/ArrayList;
    .param p2, "trb"    # Ljava/util/ArrayList;

    .line 164
    iput-object p1, p0, Ljxl/write/biff/WritableSheetCopier;->fromRowBreaks:Ljava/util/ArrayList;

    .line 165
    iput-object p2, p0, Ljxl/write/biff/WritableSheetCopier;->toRowBreaks:Ljava/util/ArrayList;

    .line 166
    return-void
.end method

.method setRows([Ljxl/write/biff/RowRecord;)V
    .locals 0
    .param p1, "r"    # [Ljxl/write/biff/RowRecord;

    .line 154
    iput-object p1, p0, Ljxl/write/biff/WritableSheetCopier;->fromRows:[Ljxl/write/biff/RowRecord;

    .line 155
    return-void
.end method

.method setSheetWriter(Ljxl/write/biff/SheetWriter;)V
    .locals 0
    .param p1, "sw"    # Ljxl/write/biff/SheetWriter;

    .line 209
    iput-object p1, p0, Ljxl/write/biff/WritableSheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    .line 210
    return-void
.end method

.method setValidatedCells(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "vc"    # Ljava/util/ArrayList;

    .line 159
    iput-object p1, p0, Ljxl/write/biff/WritableSheetCopier;->validatedCells:Ljava/util/ArrayList;

    .line 160
    return-void
.end method

.method setWorkspaceOptions(Ljxl/biff/WorkspaceInformationRecord;)V
    .locals 0
    .param p1, "wir"    # Ljxl/biff/WorkspaceInformationRecord;

    .line 189
    iput-object p1, p0, Ljxl/write/biff/WritableSheetCopier;->fromWorkspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    .line 190
    return-void
.end method

.method shallowCopyCells()V
    .locals 9

    .line 474
    iget-object v0, p0, Ljxl/write/biff/WritableSheetCopier;->fromSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getRows()I

    move-result v0

    .line 475
    .local v0, "cells":I
    const/4 v1, 0x0

    .line 476
    .local v1, "row":[Ljxl/Cell;
    const/4 v2, 0x0

    .line 477
    .local v2, "cell":Ljxl/Cell;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 479
    iget-object v4, p0, Ljxl/write/biff/WritableSheetCopier;->fromSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v4, v3}, Ljxl/write/biff/WritableSheetImpl;->getRow(I)[Ljxl/Cell;

    move-result-object v1

    .line 481
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 483
    aget-object v2, v1, v4

    .line 484
    invoke-direct {p0, v2}, Ljxl/write/biff/WritableSheetCopier;->shallowCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;

    move-result-object v5

    .line 493
    .local v5, "c":Ljxl/write/WritableCell;
    if-eqz v5, :cond_1

    .line 495
    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Ljxl/write/biff/WritableSheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v7, v5}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 499
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

    .line 502
    iget-object v7, p0, Ljxl/write/biff/WritableSheetCopier;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljxl/write/WriteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 506
    :catch_0
    move-exception v7

    .line 508
    .local v7, "e":Ljxl/write/WriteException;
    invoke-static {v6}, Ljxl/common/Assert;->verify(Z)V

    goto :goto_4

    .line 509
    .end local v7    # "e":Ljxl/write/WriteException;
    :cond_1
    :goto_3
    nop

    .line 481
    .end local v5    # "c":Ljxl/write/WritableCell;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 477
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 512
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Ljxl/write/biff/WritableSheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getRows()I

    move-result v3

    iput v3, p0, Ljxl/write/biff/WritableSheetCopier;->numRows:I

    .line 513
    return-void
.end method

.class public abstract Ljxl/write/biff/CellValue;
.super Ljxl/biff/WritableRecordData;
.source "CellValue.java"

# interfaces
.implements Ljxl/write/WritableCell;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private column:I

.field private copied:Z

.field private features:Ljxl/write/WritableCellFeatures;

.field private format:Ljxl/biff/XFRecord;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private referenced:Z

.field private row:I

.field private sheet:Ljxl/write/biff/WritableSheetImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Ljxl/write/biff/CellValue;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/CellValue;->logger:Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/Type;II)V
    .locals 1
    .param p1, "t"    # Ljxl/biff/Type;
    .param p2, "c"    # I
    .param p3, "r"    # I

    .line 113
    sget-object v0, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-direct {p0, p1, p2, p3, v0}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/write/biff/CellValue;->copied:Z

    .line 115
    return-void
.end method

.method protected constructor <init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V
    .locals 1
    .param p1, "t"    # Ljxl/biff/Type;
    .param p2, "c"    # I
    .param p3, "r"    # I
    .param p4, "st"    # Ljxl/format/CellFormat;

    .line 149
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 150
    iput p3, p0, Ljxl/write/biff/CellValue;->row:I

    .line 151
    iput p2, p0, Ljxl/write/biff/CellValue;->column:I

    .line 152
    move-object v0, p4

    check-cast v0, Ljxl/biff/XFRecord;

    iput-object v0, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/write/biff/CellValue;->referenced:Z

    .line 154
    iput-boolean v0, p0, Ljxl/write/biff/CellValue;->copied:Z

    .line 155
    return-void
.end method

.method protected constructor <init>(Ljxl/biff/Type;IILjxl/write/biff/CellValue;)V
    .locals 2
    .param p1, "t"    # Ljxl/biff/Type;
    .param p2, "c"    # I
    .param p3, "r"    # I
    .param p4, "cv"    # Ljxl/write/biff/CellValue;

    .line 167
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 168
    iput p3, p0, Ljxl/write/biff/CellValue;->row:I

    .line 169
    iput p2, p0, Ljxl/write/biff/CellValue;->column:I

    .line 170
    iget-object v0, p4, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    iput-object v0, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/write/biff/CellValue;->referenced:Z

    .line 172
    iput-boolean v0, p0, Ljxl/write/biff/CellValue;->copied:Z

    .line 175
    iget-object v0, p4, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljxl/write/WritableCellFeatures;

    iget-object v1, p4, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFeatures;-><init>(Ljxl/CellFeatures;)V

    iput-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    .line 178
    invoke-virtual {v0, p0}, Ljxl/write/WritableCellFeatures;->setWritableCell(Ljxl/write/biff/CellValue;)V

    .line 180
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljxl/biff/Type;Ljxl/Cell;)V
    .locals 2
    .param p1, "t"    # Ljxl/biff/Type;
    .param p2, "c"    # Ljxl/Cell;

    .line 126
    invoke-interface {p2}, Ljxl/Cell;->getColumn()I

    move-result v0

    invoke-interface {p2}, Ljxl/Cell;->getRow()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;II)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/write/biff/CellValue;->copied:Z

    .line 129
    invoke-interface {p2}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v0

    check-cast v0, Ljxl/biff/XFRecord;

    iput-object v0, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    .line 131
    invoke-interface {p2}, Ljxl/Cell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljxl/write/WritableCellFeatures;

    invoke-interface {p2}, Ljxl/Cell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFeatures;-><init>(Ljxl/CellFeatures;)V

    iput-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    .line 134
    invoke-virtual {v0, p0}, Ljxl/write/WritableCellFeatures;->setWritableCell(Ljxl/write/biff/CellValue;)V

    .line 136
    :cond_0
    return-void
.end method

.method private addCellFormat()V
    .locals 4

    .line 467
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v0

    .line 468
    .local v0, "styles":Ljxl/write/biff/Styles;
    iget-object v1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    invoke-virtual {v0, v1}, Ljxl/write/biff/Styles;->getFormat(Ljxl/biff/XFRecord;)Ljxl/biff/XFRecord;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    .line 472
    :try_start_0
    invoke-virtual {v1}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    iget-object v1, p0, Ljxl/write/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v2, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    invoke-virtual {v1, v2}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V
    :try_end_0
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_0
    goto :goto_0

    .line 477
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Ljxl/biff/NumFormatRecordsException;
    sget-object v2, Ljxl/write/biff/CellValue;->logger:Ljxl/common/Logger;

    const-string v3, "Maximum number of format records exceeded.  Using default format."

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 481
    invoke-virtual {v0}, Ljxl/write/biff/Styles;->getNormalStyle()Ljxl/write/WritableCellFormat;

    move-result-object v2

    iput-object v2, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    .line 483
    .end local v1    # "e":Ljxl/biff/NumFormatRecordsException;
    :goto_0
    return-void
.end method


# virtual methods
.method public final addCellFeatures()V
    .locals 10

    .line 556
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-nez v0, :cond_0

    .line 558
    return-void

    .line 561
    :cond_0
    iget-boolean v1, p0, Ljxl/write/biff/CellValue;->copied:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 563
    iput-boolean v3, p0, Ljxl/write/biff/CellValue;->copied:Z

    .line 565
    return-void

    .line 568
    :cond_1
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 570
    new-instance v0, Ljxl/biff/drawing/Comment;

    iget-object v1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v1}, Ljxl/write/WritableCellFeatures;->getComment()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ljxl/write/biff/CellValue;->column:I

    iget v4, p0, Ljxl/write/biff/CellValue;->row:I

    invoke-direct {v0, v1, v2, v4}, Ljxl/biff/drawing/Comment;-><init>(Ljava/lang/String;II)V

    .line 572
    .local v0, "comment":Ljxl/biff/drawing/Comment;
    iget-object v1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v1}, Ljxl/write/WritableCellFeatures;->getCommentWidth()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setWidth(D)V

    .line 573
    iget-object v1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v1}, Ljxl/write/WritableCellFeatures;->getCommentHeight()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setHeight(D)V

    .line 574
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableSheetImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 575
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableWorkbookImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 576
    iget-object v1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v1, v0}, Ljxl/write/WritableCellFeatures;->setCommentDrawing(Ljxl/biff/drawing/Comment;)V

    .line 579
    .end local v0    # "comment":Ljxl/biff/drawing/Comment;
    :cond_2
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->hasDataValidation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 583
    :try_start_0
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v4

    iget v5, p0, Ljxl/write/biff/CellValue;->column:I

    iget v6, p0, Ljxl/write/biff/CellValue;->row:I

    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v7

    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v8

    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Ljxl/biff/DVParser;->setCell(IILjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljxl/biff/formula/FormulaException;
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 594
    .end local v0    # "e":Ljxl/biff/formula/FormulaException;
    :goto_0
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0, p0}, Ljxl/write/biff/WritableSheetImpl;->addValidationCell(Ljxl/write/biff/CellValue;)V

    .line 595
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->hasDropDown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 597
    return-void

    .line 601
    :cond_3
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object v0

    if-nez v0, :cond_4

    .line 606
    new-instance v0, Ljxl/biff/drawing/ComboBox;

    invoke-direct {v0}, Ljxl/biff/drawing/ComboBox;-><init>()V

    .line 607
    .local v0, "cb":Ljxl/biff/drawing/ComboBox;
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableSheetImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 608
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableWorkbookImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 609
    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1, v0}, Ljxl/write/biff/WritableSheetImpl;->setComboBox(Ljxl/biff/drawing/ComboBox;)V

    .line 612
    .end local v0    # "cb":Ljxl/biff/drawing/ComboBox;
    :cond_4
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    iget-object v1, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableSheetImpl;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFeatures;->setComboBox(Ljxl/biff/drawing/ComboBox;)V

    .line 614
    :cond_5
    return-void
.end method

.method columnInserted(Ljxl/Sheet;II)V
    .locals 0
    .param p1, "s"    # Ljxl/Sheet;
    .param p2, "sheetIndex"    # I
    .param p3, "col"    # I

    .line 410
    return-void
.end method

.method columnRemoved(Ljxl/Sheet;II)V
    .locals 0
    .param p1, "s"    # Ljxl/Sheet;
    .param p2, "sheetIndex"    # I
    .param p3, "col"    # I

    .line 422
    return-void
.end method

.method decrementColumn()V
    .locals 3

    .line 386
    iget v0, p0, Ljxl/write/biff/CellValue;->column:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/CellValue;->column:I

    .line 388
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getCommentDrawing()Ljxl/biff/drawing/Comment;

    move-result-object v0

    .line 391
    .local v0, "c":Ljxl/biff/drawing/Comment;
    if-eqz v0, :cond_0

    .line 393
    iget v1, p0, Ljxl/write/biff/CellValue;->column:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setX(D)V

    .line 394
    iget v1, p0, Ljxl/write/biff/CellValue;->row:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setY(D)V

    .line 398
    .end local v0    # "c":Ljxl/biff/drawing/Comment;
    :cond_0
    return-void
.end method

.method decrementRow()V
    .locals 3

    .line 342
    iget v0, p0, Ljxl/write/biff/CellValue;->row:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/CellValue;->row:I

    .line 344
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getCommentDrawing()Ljxl/biff/drawing/Comment;

    move-result-object v0

    .line 347
    .local v0, "c":Ljxl/biff/drawing/Comment;
    if-eqz v0, :cond_0

    .line 349
    iget v1, p0, Ljxl/write/biff/CellValue;->column:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setX(D)V

    .line 350
    iget v1, p0, Ljxl/write/biff/CellValue;->row:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setY(D)V

    .line 353
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v1}, Ljxl/write/WritableCellFeatures;->hasDropDown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    sget-object v1, Ljxl/write/biff/CellValue;->logger:Ljxl/common/Logger;

    const-string v2, "need to change value for drop down drawing"

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 358
    .end local v0    # "c":Ljxl/biff/drawing/Comment;
    :cond_1
    return-void
.end method

.method public getCellFeatures()Ljxl/CellFeatures;
    .locals 1

    .line 492
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    return-object v0
.end method

.method public getCellFormat()Ljxl/format/CellFormat;
    .locals 1

    .line 314
    iget-object v0, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 223
    iget v0, p0, Ljxl/write/biff/CellValue;->column:I

    return v0
.end method

.method public getData()[B
    .locals 3

    .line 258
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 259
    .local v0, "mydata":[B
    iget v1, p0, Ljxl/write/biff/CellValue;->row:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 260
    iget v1, p0, Ljxl/write/biff/CellValue;->column:I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 261
    iget-object v1, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    invoke-virtual {v1}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 262
    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 213
    iget v0, p0, Ljxl/write/biff/CellValue;->row:I

    return v0
.end method

.method public getSheet()Ljxl/write/biff/WritableSheetImpl;
    .locals 1

    .line 455
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    return-object v0
.end method

.method public getWritableCellFeatures()Ljxl/write/WritableCellFeatures;
    .locals 1

    .line 502
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    return-object v0
.end method

.method final getXFIndex()I
    .locals 1

    .line 304
    iget-object v0, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    invoke-virtual {v0}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v0

    return v0
.end method

.method incrementColumn()V
    .locals 3

    .line 366
    iget v0, p0, Ljxl/write/biff/CellValue;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/write/biff/CellValue;->column:I

    .line 368
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getCommentDrawing()Ljxl/biff/drawing/Comment;

    move-result-object v0

    .line 371
    .local v0, "c":Ljxl/biff/drawing/Comment;
    if-eqz v0, :cond_0

    .line 373
    iget v1, p0, Ljxl/write/biff/CellValue;->column:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setX(D)V

    .line 374
    iget v1, p0, Ljxl/write/biff/CellValue;->row:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setY(D)V

    .line 378
    .end local v0    # "c":Ljxl/biff/drawing/Comment;
    :cond_0
    return-void
.end method

.method incrementRow()V
    .locals 3

    .line 323
    iget v0, p0, Ljxl/write/biff/CellValue;->row:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/write/biff/CellValue;->row:I

    .line 325
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getCommentDrawing()Ljxl/biff/drawing/Comment;

    move-result-object v0

    .line 328
    .local v0, "c":Ljxl/biff/drawing/Comment;
    if-eqz v0, :cond_0

    .line 330
    iget v1, p0, Ljxl/write/biff/CellValue;->column:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setX(D)V

    .line 331
    iget v1, p0, Ljxl/write/biff/CellValue;->row:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljxl/biff/drawing/Comment;->setY(D)V

    .line 334
    .end local v0    # "c":Ljxl/biff/drawing/Comment;
    :cond_0
    return-void
.end method

.method public isHidden()Z
    .locals 4

    .line 234
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    iget v1, p0, Ljxl/write/biff/CellValue;->column:I

    invoke-virtual {v0, v1}, Ljxl/write/biff/WritableSheetImpl;->getColumnInfo(I)Ljxl/write/biff/ColumnInfoRecord;

    move-result-object v0

    .line 236
    .local v0, "cir":Ljxl/write/biff/ColumnInfoRecord;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljxl/write/biff/ColumnInfoRecord;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    .line 238
    return v1

    .line 241
    :cond_0
    iget-object v2, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    iget v3, p0, Ljxl/write/biff/CellValue;->row:I

    invoke-virtual {v2, v3}, Ljxl/write/biff/WritableSheetImpl;->getRowInfo(I)Ljxl/write/biff/RowRecord;

    move-result-object v2

    .line 243
    .local v2, "rr":Ljxl/write/biff/RowRecord;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljxl/write/biff/RowRecord;->getRowHeight()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljxl/write/biff/RowRecord;->isCollapsed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    :cond_1
    return v1

    .line 248
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method final isReferenced()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Ljxl/write/biff/CellValue;->referenced:Z

    return v0
.end method

.method public final removeCellFeatures()V
    .locals 1

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    .line 631
    return-void
.end method

.method public final removeComment(Ljxl/biff/drawing/Comment;)V
    .locals 1
    .param p1, "c"    # Ljxl/biff/drawing/Comment;

    .line 641
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0, p1}, Ljxl/write/biff/WritableSheetImpl;->removeDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 642
    return-void
.end method

.method public final removeDataValidation()V
    .locals 1

    .line 649
    iget-object v0, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0, p0}, Ljxl/write/biff/WritableSheetImpl;->removeDataValidation(Ljxl/write/biff/CellValue;)V

    .line 650
    return-void
.end method

.method rowInserted(Ljxl/Sheet;II)V
    .locals 0
    .param p1, "s"    # Ljxl/Sheet;
    .param p2, "sheetIndex"    # I
    .param p3, "row"    # I

    .line 434
    return-void
.end method

.method rowRemoved(Ljxl/Sheet;II)V
    .locals 0
    .param p1, "s"    # Ljxl/Sheet;
    .param p2, "sheetIndex"    # I
    .param p3, "row"    # I

    .line 446
    return-void
.end method

.method setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V
    .locals 1
    .param p1, "fr"    # Ljxl/biff/FormattingRecords;
    .param p2, "ss"    # Ljxl/write/biff/SharedStrings;
    .param p3, "s"    # Ljxl/write/biff/WritableSheetImpl;

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/write/biff/CellValue;->referenced:Z

    .line 279
    iput-object p3, p0, Ljxl/write/biff/CellValue;->sheet:Ljxl/write/biff/WritableSheetImpl;

    .line 280
    iput-object p1, p0, Ljxl/write/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 282
    invoke-direct {p0}, Ljxl/write/biff/CellValue;->addCellFormat()V

    .line 283
    invoke-virtual {p0}, Ljxl/write/biff/CellValue;->addCellFeatures()V

    .line 284
    return-void
.end method

.method public setCellFeatures(Ljxl/write/WritableCellFeatures;)V
    .locals 5
    .param p1, "cf"    # Ljxl/write/WritableCellFeatures;

    .line 512
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    if-eqz v0, :cond_0

    .line 514
    sget-object v0, Ljxl/write/biff/CellValue;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current cell features for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not null - overwriting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->hasDataValidation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    .line 524
    .local v0, "dvp":Ljxl/biff/DVParser;
    sget-object v1, Ljxl/write/biff/CellValue;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add cell features to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it is part of the shared cell validation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v3

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result v4

    invoke-static {v3, v4}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getLastColumn()I

    move-result v3

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getLastRow()I

    move-result v4

    invoke-static {v3, v4}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 533
    return-void

    .line 537
    .end local v0    # "dvp":Ljxl/biff/DVParser;
    :cond_0
    iput-object p1, p0, Ljxl/write/biff/CellValue;->features:Ljxl/write/WritableCellFeatures;

    .line 538
    invoke-virtual {p1, p0}, Ljxl/write/WritableCellFeatures;->setWritableCell(Ljxl/write/biff/CellValue;)V

    .line 542
    iget-boolean v0, p0, Ljxl/write/biff/CellValue;->referenced:Z

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {p0}, Ljxl/write/biff/CellValue;->addCellFeatures()V

    .line 546
    :cond_1
    return-void
.end method

.method public setCellFormat(Ljxl/format/CellFormat;)V
    .locals 1
    .param p1, "cf"    # Ljxl/format/CellFormat;

    .line 189
    move-object v0, p1

    check-cast v0, Ljxl/biff/XFRecord;

    iput-object v0, p0, Ljxl/write/biff/CellValue;->format:Ljxl/biff/XFRecord;

    .line 194
    iget-boolean v0, p0, Ljxl/write/biff/CellValue;->referenced:Z

    if-nez v0, :cond_0

    .line 196
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/CellValue;->formattingRecords:Ljxl/biff/FormattingRecords;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 203
    invoke-direct {p0}, Ljxl/write/biff/CellValue;->addCellFormat()V

    .line 204
    return-void
.end method

.method final setCopied(Z)V
    .locals 0
    .param p1, "c"    # Z

    .line 661
    iput-boolean p1, p0, Ljxl/write/biff/CellValue;->copied:Z

    .line 662
    return-void
.end method

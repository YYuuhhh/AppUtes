.class final Ljxl/read/biff/SheetReader;
.super Ljava/lang/Object;
.source "SheetReader.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

.field private cells:[[Ljxl/Cell;

.field private charts:Ljava/util/ArrayList;

.field private columnBreaks:[I

.field private columnInfosArray:Ljava/util/ArrayList;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawings:Ljava/util/ArrayList;

.field private excelFile:Ljxl/read/biff/File;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private hyperlinks:Ljava/util/ArrayList;

.field private maxColumnOutlineLevel:I

.field private maxRowOutlineLevel:I

.field private mergedCells:[Ljxl/Range;

.field private nineteenFour:Z

.field private numCols:I

.field private numRows:I

.field private outOfBoundsCells:Ljava/util/ArrayList;

.field private plsRecord:Ljxl/read/biff/PLSRecord;

.field private rowBreaks:[I

.field private rowProperties:Ljava/util/ArrayList;

.field private settings:Ljxl/SheetSettings;

.field private sharedFormulas:Ljava/util/ArrayList;

.field private sharedStrings:Ljxl/read/biff/SSTRecord;

.field private sheet:Ljxl/read/biff/SheetImpl;

.field private sheetBof:Ljxl/read/biff/BOFRecord;

.field private startPosition:I

.field private workbook:Ljxl/read/biff/WorkbookParser;

.field private workbookBof:Ljxl/read/biff/BOFRecord;

.field private workbookSettings:Ljxl/WorkbookSettings;

.field private workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Ljxl/read/biff/SheetReader;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;ILjxl/read/biff/SheetImpl;)V
    .locals 2
    .param p1, "f"    # Ljxl/read/biff/File;
    .param p2, "sst"    # Ljxl/read/biff/SSTRecord;
    .param p3, "fr"    # Ljxl/biff/FormattingRecords;
    .param p4, "sb"    # Ljxl/read/biff/BOFRecord;
    .param p5, "wb"    # Ljxl/read/biff/BOFRecord;
    .param p6, "nf"    # Z
    .param p7, "wp"    # Ljxl/read/biff/WorkbookParser;
    .param p8, "sp"    # I
    .param p9, "sh"    # Ljxl/read/biff/SheetImpl;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    .line 274
    iput-object p2, p0, Ljxl/read/biff/SheetReader;->sharedStrings:Ljxl/read/biff/SSTRecord;

    .line 275
    iput-object p3, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 276
    iput-object p4, p0, Ljxl/read/biff/SheetReader;->sheetBof:Ljxl/read/biff/BOFRecord;

    .line 277
    iput-object p5, p0, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetReader;->columnInfosArray:Ljava/util/ArrayList;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetReader;->hyperlinks:Ljava/util/ArrayList;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetReader;->conditionalFormats:Ljava/util/ArrayList;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/read/biff/SheetReader;->rowProperties:Ljava/util/ArrayList;

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetReader;->charts:Ljava/util/ArrayList;

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    .line 286
    iput-boolean p6, p0, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    .line 287
    iput-object p7, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    .line 288
    iput p8, p0, Ljxl/read/biff/SheetReader;->startPosition:I

    .line 289
    iput-object p9, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    .line 290
    new-instance v0, Ljxl/SheetSettings;

    invoke-direct {v0, p9}, Ljxl/SheetSettings;-><init>(Ljxl/Sheet;)V

    iput-object v0, p0, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    .line 291
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    .line 292
    return-void
.end method

.method private addCell(Ljxl/Cell;)V
    .locals 4
    .param p1, "cell"    # Ljxl/Cell;

    .line 303
    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v0

    iget v1, p0, Ljxl/read/biff/SheetReader;->numRows:I

    if-ge v0, v1, :cond_1

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v0

    iget v1, p0, Ljxl/read/biff/SheetReader;->numCols:I

    if-ge v0, v1, :cond_1

    .line 305
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 308
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v1

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljxl/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 310
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already contains data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 313
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v1

    aput-object p1, v0, v1

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :goto_0
    return-void
.end method

.method private addCellComment(IILjava/lang/String;DD)V
    .locals 10
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "width"    # D
    .param p6, "height"    # D

    .line 1492
    move-object v0, p0

    iget-object v1, v0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    aget-object v1, v1, p2

    aget-object v1, v1, p1

    .line 1493
    .local v1, "c":Ljxl/Cell;
    if-nez v1, :cond_0

    .line 1495
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cell at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not present - adding a blank"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1497
    new-instance v8, Ljxl/read/biff/MulBlankCell;

    const/4 v5, 0x0

    iget-object v6, v0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v7, v0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v2, v8

    move v3, p2

    move v4, p1

    invoke-direct/range {v2 .. v7}, Ljxl/read/biff/MulBlankCell;-><init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 1502
    .local v2, "mbc":Ljxl/read/biff/MulBlankCell;
    new-instance v3, Ljxl/CellFeatures;

    invoke-direct {v3}, Ljxl/CellFeatures;-><init>()V

    .line 1503
    .local v3, "cf":Ljxl/CellFeatures;
    move-object v4, v3

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v4 .. v9}, Ljxl/CellFeatures;->setReadComment(Ljava/lang/String;DD)V

    .line 1504
    invoke-virtual {v2, v3}, Ljxl/read/biff/MulBlankCell;->setCellFeatures(Ljxl/CellFeatures;)V

    .line 1505
    invoke-direct {p0, v2}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 1507
    return-void

    .line 1510
    .end local v2    # "mbc":Ljxl/read/biff/MulBlankCell;
    .end local v3    # "cf":Ljxl/CellFeatures;
    :cond_0
    instance-of v2, v1, Ljxl/read/biff/CellFeaturesAccessor;

    if-eqz v2, :cond_2

    .line 1512
    move-object v2, v1

    check-cast v2, Ljxl/read/biff/CellFeaturesAccessor;

    .line 1513
    .local v2, "cv":Ljxl/read/biff/CellFeaturesAccessor;
    invoke-interface {v2}, Ljxl/read/biff/CellFeaturesAccessor;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v3

    .line 1515
    .restart local v3    # "cf":Ljxl/CellFeatures;
    if-nez v3, :cond_1

    .line 1517
    new-instance v4, Ljxl/CellFeatures;

    invoke-direct {v4}, Ljxl/CellFeatures;-><init>()V

    move-object v3, v4

    .line 1518
    invoke-interface {v2, v3}, Ljxl/read/biff/CellFeaturesAccessor;->setCellFeatures(Ljxl/CellFeatures;)V

    .line 1521
    :cond_1
    move-object v4, v3

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v4 .. v9}, Ljxl/CellFeatures;->setReadComment(Ljava/lang/String;DD)V

    .line 1522
    .end local v2    # "cv":Ljxl/read/biff/CellFeaturesAccessor;
    .end local v3    # "cf":Ljxl/CellFeatures;
    goto :goto_0

    .line 1525
    :cond_2
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to add comment to cell type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1529
    :goto_0
    return-void
.end method

.method private addCellValidation(IIIILjxl/biff/DataValiditySettingsRecord;)V
    .locals 10
    .param p1, "col1"    # I
    .param p2, "row1"    # I
    .param p3, "col2"    # I
    .param p4, "row2"    # I
    .param p5, "dvsr"    # Ljxl/biff/DataValiditySettingsRecord;

    .line 1546
    move v0, p2

    .local v0, "row":I
    :goto_0
    if-gt v0, p4, :cond_5

    .line 1548
    move v1, p1

    move v7, v1

    .local v7, "col":I
    :goto_1
    if-gt v7, p3, :cond_4

    .line 1550
    const/4 v1, 0x0

    .line 1552
    .local v1, "c":Ljxl/Cell;
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    array-length v3, v2

    if-le v3, v0, :cond_0

    aget-object v3, v2, v0

    array-length v3, v3

    if-le v3, v7, :cond_0

    .line 1554
    aget-object v2, v2, v0

    aget-object v1, v2, v7

    move-object v8, v1

    goto :goto_2

    .line 1557
    :cond_0
    move-object v8, v1

    .end local v1    # "c":Ljxl/Cell;
    .local v8, "c":Ljxl/Cell;
    :goto_2
    if-nez v8, :cond_1

    .line 1559
    new-instance v9, Ljxl/read/biff/MulBlankCell;

    const/4 v4, 0x0

    iget-object v5, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v6, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v1, v9

    move v2, v0

    move v3, v7

    invoke-direct/range {v1 .. v6}, Ljxl/read/biff/MulBlankCell;-><init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 1564
    .local v1, "mbc":Ljxl/read/biff/MulBlankCell;
    new-instance v2, Ljxl/CellFeatures;

    invoke-direct {v2}, Ljxl/CellFeatures;-><init>()V

    .line 1565
    .local v2, "cf":Ljxl/CellFeatures;
    invoke-virtual {v2, p5}, Ljxl/CellFeatures;->setValidationSettings(Ljxl/biff/DataValiditySettingsRecord;)V

    .line 1566
    invoke-virtual {v1, v2}, Ljxl/read/biff/MulBlankCell;->setCellFeatures(Ljxl/CellFeatures;)V

    .line 1567
    invoke-direct {p0, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 1568
    .end local v1    # "mbc":Ljxl/read/biff/MulBlankCell;
    .end local v2    # "cf":Ljxl/CellFeatures;
    goto :goto_3

    .line 1569
    :cond_1
    instance-of v1, v8, Ljxl/read/biff/CellFeaturesAccessor;

    if-eqz v1, :cond_3

    .line 1571
    move-object v1, v8

    check-cast v1, Ljxl/read/biff/CellFeaturesAccessor;

    .line 1572
    .local v1, "cv":Ljxl/read/biff/CellFeaturesAccessor;
    invoke-interface {v1}, Ljxl/read/biff/CellFeaturesAccessor;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v2

    .line 1574
    .restart local v2    # "cf":Ljxl/CellFeatures;
    if-nez v2, :cond_2

    .line 1576
    new-instance v3, Ljxl/CellFeatures;

    invoke-direct {v3}, Ljxl/CellFeatures;-><init>()V

    move-object v2, v3

    .line 1577
    invoke-interface {v1, v2}, Ljxl/read/biff/CellFeaturesAccessor;->setCellFeatures(Ljxl/CellFeatures;)V

    .line 1580
    :cond_2
    invoke-virtual {v2, p5}, Ljxl/CellFeatures;->setValidationSettings(Ljxl/biff/DataValiditySettingsRecord;)V

    .line 1581
    .end local v1    # "cv":Ljxl/read/biff/CellFeaturesAccessor;
    .end local v2    # "cf":Ljxl/CellFeatures;
    goto :goto_3

    .line 1584
    :cond_3
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not able to add comment to cell type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7, v0}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1548
    .end local v8    # "c":Ljxl/Cell;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1546
    .end local v7    # "col":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1590
    .end local v0    # "row":I
    :cond_5
    return-void
.end method

.method private addToSharedFormulas(Ljxl/read/biff/BaseSharedFormulaRecord;)Z
    .locals 5
    .param p1, "fr"    # Ljxl/read/biff/BaseSharedFormulaRecord;

    .line 1225
    const/4 v0, 0x0

    .line 1226
    .local v0, "added":Z
    const/4 v1, 0x0

    .line 1228
    .local v1, "sfr":Ljxl/read/biff/SharedFormulaRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_0

    if-nez v0, :cond_0

    .line 1230
    iget-object v4, p0, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljxl/read/biff/SharedFormulaRecord;

    .line 1231
    invoke-virtual {v1, p1}, Ljxl/read/biff/SharedFormulaRecord;->add(Ljxl/read/biff/BaseSharedFormulaRecord;)Z

    move-result v0

    .line 1228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1234
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_0
    return v0
.end method

.method private handleObjectRecord(Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/MsoDrawingRecord;Ljava/util/HashMap;)V
    .locals 10
    .param p1, "objRecord"    # Ljxl/biff/drawing/ObjRecord;
    .param p2, "msoRecord"    # Ljxl/biff/drawing/MsoDrawingRecord;
    .param p3, "comments"    # Ljava/util/HashMap;

    .line 1603
    if-nez p2, :cond_0

    .line 1605
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v1, "Object record is not associated with a drawing  record - ignoring"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1607
    return-void

    .line 1613
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v1, v2, :cond_2

    .line 1615
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v1, :cond_1

    .line 1617
    new-instance v1, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v1}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1620
    :cond_1
    new-instance v1, Ljxl/biff/drawing/Drawing;

    iget-object v5, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v2, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v2, v1

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Ljxl/biff/drawing/Drawing;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/Sheet;)V

    .line 1625
    .local v1, "drawing":Ljxl/biff/drawing/Drawing;
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    return-void

    .line 1630
    .end local v1    # "drawing":Ljxl/biff/drawing/Drawing;
    :cond_2
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_9

    .line 1632
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v1, :cond_3

    .line 1634
    new-instance v1, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v1}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1637
    :cond_3
    new-instance v1, Ljxl/biff/drawing/Comment;

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v2, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v8

    iget-object v9, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v4, v1

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Ljxl/biff/drawing/Comment;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1645
    .local v1, "comment":Ljxl/biff/drawing/Comment;
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v2

    .line 1646
    .local v2, "r2":Ljxl/read/biff/Record;
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v4

    sget-object v5, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq v4, v5, :cond_4

    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v4

    sget-object v5, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v4, v5, :cond_5

    .line 1648
    :cond_4
    new-instance v4, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v4, v2}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1649
    .local v4, "mso":Ljxl/biff/drawing/MsoDrawingRecord;
    invoke-virtual {v1, v4}, Ljxl/biff/drawing/Comment;->addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V

    .line 1650
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    move-object v2, v5

    .line 1652
    .end local v4    # "mso":Ljxl/biff/drawing/MsoDrawingRecord;
    :cond_5
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v4

    sget-object v5, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    if-ne v4, v5, :cond_6

    move v4, v0

    goto :goto_0

    :cond_6
    move v4, v3

    :goto_0
    invoke-static {v4}, Ljxl/common/Assert;->verify(Z)V

    .line 1653
    new-instance v4, Ljxl/biff/drawing/TextObjectRecord;

    invoke-direct {v4, v2}, Ljxl/biff/drawing/TextObjectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1654
    .local v4, "txo":Ljxl/biff/drawing/TextObjectRecord;
    invoke-virtual {v1, v4}, Ljxl/biff/drawing/Comment;->setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V

    .line 1656
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    move-object v2, v5

    .line 1657
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v5, v6, :cond_7

    move v3, v0

    :cond_7
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1658
    new-instance v3, Ljxl/biff/ContinueRecord;

    invoke-direct {v3, v2}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1659
    .local v3, "text":Ljxl/biff/ContinueRecord;
    invoke-virtual {v1, v3}, Ljxl/biff/drawing/Comment;->setText(Ljxl/biff/ContinueRecord;)V

    .line 1661
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    move-object v2, v5

    .line 1662
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v5, v6, :cond_8

    .line 1664
    new-instance v5, Ljxl/biff/ContinueRecord;

    invoke-direct {v5, v2}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1665
    .local v5, "formatting":Ljxl/biff/ContinueRecord;
    invoke-virtual {v1, v5}, Ljxl/biff/drawing/Comment;->setFormatting(Ljxl/biff/ContinueRecord;)V

    .line 1668
    .end local v5    # "formatting":Ljxl/biff/ContinueRecord;
    :cond_8
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljxl/biff/drawing/Comment;->getObjectId()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    return-void

    .line 1673
    .end local v1    # "comment":Ljxl/biff/drawing/Comment;
    .end local v2    # "r2":Ljxl/read/biff/Record;
    .end local v3    # "text":Ljxl/biff/ContinueRecord;
    .end local v4    # "txo":Ljxl/biff/drawing/TextObjectRecord;
    :cond_9
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->COMBOBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v1, v2, :cond_b

    .line 1675
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v1, :cond_a

    .line 1677
    new-instance v1, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v1}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1680
    :cond_a
    new-instance v1, Ljxl/biff/drawing/ComboBox;

    iget-object v5, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v2, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v2, v1

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Ljxl/biff/drawing/ComboBox;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1685
    .local v1, "comboBox":Ljxl/biff/drawing/ComboBox;
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1686
    return-void

    .line 1690
    .end local v1    # "comboBox":Ljxl/biff/drawing/ComboBox;
    :cond_b
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->CHECKBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v1, v2, :cond_15

    .line 1692
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v1, :cond_c

    .line 1694
    new-instance v1, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v1}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1697
    :cond_c
    new-instance v1, Ljxl/biff/drawing/CheckBox;

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v2, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v8

    iget-object v9, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v4, v1

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Ljxl/biff/drawing/CheckBox;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1703
    .local v1, "checkBox":Ljxl/biff/drawing/CheckBox;
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v2

    .line 1704
    .restart local v2    # "r2":Ljxl/read/biff/Record;
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v4

    sget-object v5, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq v4, v5, :cond_e

    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v4

    sget-object v5, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v4, v5, :cond_d

    goto :goto_1

    :cond_d
    move v4, v3

    goto :goto_2

    :cond_e
    :goto_1
    move v4, v0

    :goto_2
    invoke-static {v4}, Ljxl/common/Assert;->verify(Z)V

    .line 1706
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v4

    sget-object v5, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq v4, v5, :cond_f

    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v4

    sget-object v5, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v4, v5, :cond_10

    .line 1708
    :cond_f
    new-instance v4, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v4, v2}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1709
    .local v4, "mso":Ljxl/biff/drawing/MsoDrawingRecord;
    invoke-virtual {v1, v4}, Ljxl/biff/drawing/CheckBox;->addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V

    .line 1710
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    move-object v2, v5

    .line 1713
    .end local v4    # "mso":Ljxl/biff/drawing/MsoDrawingRecord;
    :cond_10
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v4

    sget-object v5, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    if-ne v4, v5, :cond_11

    move v4, v0

    goto :goto_3

    :cond_11
    move v4, v3

    :goto_3
    invoke-static {v4}, Ljxl/common/Assert;->verify(Z)V

    .line 1714
    new-instance v4, Ljxl/biff/drawing/TextObjectRecord;

    invoke-direct {v4, v2}, Ljxl/biff/drawing/TextObjectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1715
    .local v4, "txo":Ljxl/biff/drawing/TextObjectRecord;
    invoke-virtual {v1, v4}, Ljxl/biff/drawing/CheckBox;->setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V

    .line 1717
    invoke-virtual {v4}, Ljxl/biff/drawing/TextObjectRecord;->getTextLength()I

    move-result v5

    if-nez v5, :cond_12

    .line 1719
    return-void

    .line 1722
    :cond_12
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    move-object v2, v5

    .line 1723
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v5, v6, :cond_13

    move v3, v0

    :cond_13
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1724
    new-instance v3, Ljxl/biff/ContinueRecord;

    invoke-direct {v3, v2}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1725
    .restart local v3    # "text":Ljxl/biff/ContinueRecord;
    invoke-virtual {v1, v3}, Ljxl/biff/drawing/CheckBox;->setText(Ljxl/biff/ContinueRecord;)V

    .line 1727
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    move-object v2, v5

    .line 1728
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v5, v6, :cond_14

    .line 1730
    new-instance v5, Ljxl/biff/ContinueRecord;

    invoke-direct {v5, v2}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1731
    .restart local v5    # "formatting":Ljxl/biff/ContinueRecord;
    invoke-virtual {v1, v5}, Ljxl/biff/drawing/CheckBox;->setFormatting(Ljxl/biff/ContinueRecord;)V

    .line 1734
    .end local v5    # "formatting":Ljxl/biff/ContinueRecord;
    :cond_14
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    return-void

    .line 1740
    .end local v1    # "checkBox":Ljxl/biff/drawing/CheckBox;
    .end local v2    # "r2":Ljxl/read/biff/Record;
    .end local v3    # "text":Ljxl/biff/ContinueRecord;
    .end local v4    # "txo":Ljxl/biff/drawing/TextObjectRecord;
    :cond_15
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->BUTTON:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v1, v2, :cond_1e

    .line 1742
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v1, :cond_16

    .line 1744
    new-instance v1, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v1}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1747
    :cond_16
    new-instance v1, Ljxl/biff/drawing/Button;

    iget-object v7, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v2, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v8

    iget-object v9, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v4, v1

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Ljxl/biff/drawing/Button;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 1753
    .local v1, "button":Ljxl/biff/drawing/Button;
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v2

    .line 1754
    .restart local v2    # "r2":Ljxl/read/biff/Record;
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v4

    sget-object v5, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq v4, v5, :cond_18

    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v4

    sget-object v5, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v4, v5, :cond_17

    goto :goto_4

    :cond_17
    move v4, v3

    goto :goto_5

    :cond_18
    :goto_4
    move v4, v0

    :goto_5
    invoke-static {v4}, Ljxl/common/Assert;->verify(Z)V

    .line 1756
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v4

    sget-object v5, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq v4, v5, :cond_19

    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v4

    sget-object v5, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v4, v5, :cond_1a

    .line 1759
    :cond_19
    new-instance v4, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v4, v2}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1760
    .local v4, "mso":Ljxl/biff/drawing/MsoDrawingRecord;
    invoke-virtual {v1, v4}, Ljxl/biff/drawing/Button;->addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V

    .line 1761
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    move-object v2, v5

    .line 1764
    .end local v4    # "mso":Ljxl/biff/drawing/MsoDrawingRecord;
    :cond_1a
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v4

    sget-object v5, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    if-ne v4, v5, :cond_1b

    move v4, v0

    goto :goto_6

    :cond_1b
    move v4, v3

    :goto_6
    invoke-static {v4}, Ljxl/common/Assert;->verify(Z)V

    .line 1765
    new-instance v4, Ljxl/biff/drawing/TextObjectRecord;

    invoke-direct {v4, v2}, Ljxl/biff/drawing/TextObjectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1766
    .local v4, "txo":Ljxl/biff/drawing/TextObjectRecord;
    invoke-virtual {v1, v4}, Ljxl/biff/drawing/Button;->setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V

    .line 1768
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    move-object v2, v5

    .line 1769
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v5, v6, :cond_1c

    move v3, v0

    :cond_1c
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1770
    new-instance v3, Ljxl/biff/ContinueRecord;

    invoke-direct {v3, v2}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1771
    .restart local v3    # "text":Ljxl/biff/ContinueRecord;
    invoke-virtual {v1, v3}, Ljxl/biff/drawing/Button;->setText(Ljxl/biff/ContinueRecord;)V

    .line 1773
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v5}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v5

    move-object v2, v5

    .line 1774
    invoke-virtual {v2}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v5

    sget-object v6, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v5, v6, :cond_1d

    .line 1776
    new-instance v5, Ljxl/biff/ContinueRecord;

    invoke-direct {v5, v2}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1777
    .restart local v5    # "formatting":Ljxl/biff/ContinueRecord;
    invoke-virtual {v1, v5}, Ljxl/biff/drawing/Button;->setFormatting(Ljxl/biff/ContinueRecord;)V

    .line 1780
    .end local v5    # "formatting":Ljxl/biff/ContinueRecord;
    :cond_1d
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    return-void

    .line 1786
    .end local v1    # "button":Ljxl/biff/drawing/Button;
    .end local v2    # "r2":Ljxl/read/biff/Record;
    .end local v3    # "text":Ljxl/biff/ContinueRecord;
    .end local v4    # "txo":Ljxl/biff/drawing/TextObjectRecord;
    :cond_1e
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->TEXT:Ljxl/biff/drawing/ObjRecord$ObjType;
    :try_end_0
    .catch Ljxl/biff/drawing/DrawingDataException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "\" not supported - omitting"

    const-string v5, " Object on sheet \""

    if-ne v1, v2, :cond_26

    .line 1788
    :try_start_1
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v5}, Ljxl/read/biff/SheetImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1793
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v1, :cond_1f

    .line 1795
    new-instance v1, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v1}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1798
    :cond_1f
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {p2}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 1800
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v1

    .line 1801
    .local v1, "r2":Ljxl/read/biff/Record;
    invoke-virtual {v1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v2

    sget-object v4, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq v2, v4, :cond_21

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v2

    sget-object v4, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v2, v4, :cond_20

    goto :goto_7

    :cond_20
    move v2, v3

    goto :goto_8

    :cond_21
    :goto_7
    move v2, v0

    :goto_8
    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 1803
    invoke-virtual {v1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v2

    sget-object v4, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-eq v2, v4, :cond_22

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v2

    sget-object v4, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v2, v4, :cond_23

    .line 1806
    :cond_22
    new-instance v2, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v2, v1}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1807
    .local v2, "mso":Ljxl/biff/drawing/MsoDrawingRecord;
    iget-object v4, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {v2}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    .line 1808
    iget-object v4, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v4}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v4

    move-object v1, v4

    .line 1811
    .end local v2    # "mso":Ljxl/biff/drawing/MsoDrawingRecord;
    :cond_23
    invoke-virtual {v1}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v2

    sget-object v4, Ljxl/biff/Type;->TXO:Ljxl/biff/Type;

    if-ne v2, v4, :cond_24

    move v3, v0

    :cond_24
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 1813
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 1815
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Ljxl/biff/drawing/DrawingGroup;->setDrawingsOmitted(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;)V

    .line 1819
    :cond_25
    return-void

    .line 1823
    .end local v1    # "r2":Ljxl/read/biff/Record;
    :cond_26
    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-eq v1, v2, :cond_29

    .line 1825
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v3}, Ljxl/read/biff/SheetImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1830
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v1, :cond_27

    .line 1832
    new-instance v1, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v1}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1835
    :cond_27
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {p2}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 1837
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 1839
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Ljxl/biff/drawing/DrawingGroup;->setDrawingsOmitted(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;)V
    :try_end_1
    .catch Ljxl/biff/drawing/DrawingDataException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1843
    :cond_28
    return-void

    .line 1851
    :cond_29
    goto :goto_9

    .line 1846
    :catch_0
    move-exception v1

    .line 1848
    .local v1, "e":Ljxl/biff/drawing/DrawingDataException;
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljxl/biff/drawing/DrawingDataException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "...disabling drawings for the remainder of the workbook"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1850
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v2, v0}, Ljxl/WorkbookSettings;->setDrawingsDisabled(Z)V

    .line 1852
    .end local v1    # "e":Ljxl/biff/drawing/DrawingDataException;
    :goto_9
    return-void
.end method

.method private handleOutOfBoundsCells()V
    .locals 7

    .line 1868
    iget v0, p0, Ljxl/read/biff/SheetReader;->numRows:I

    .line 1869
    .local v0, "resizedRows":I
    iget v1, p0, Ljxl/read/biff/SheetReader;->numCols:I

    .line 1872
    .local v1, "resizedCols":I
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1874
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/Cell;

    .line 1875
    .local v3, "cell":Ljxl/Cell;
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1876
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1877
    .end local v3    # "cell":Ljxl/Cell;
    goto :goto_0

    .line 1885
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_0
    iget v2, p0, Ljxl/read/biff/SheetReader;->numCols:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    .line 1887
    const/4 v2, 0x0

    .local v2, "r":I
    :goto_1
    iget v4, p0, Ljxl/read/biff/SheetReader;->numRows:I

    if-ge v2, v4, :cond_1

    .line 1889
    new-array v4, v1, [Ljxl/Cell;

    .line 1890
    .local v4, "newRow":[Ljxl/Cell;
    iget-object v5, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    aget-object v5, v5, v2

    .line 1891
    .local v5, "oldRow":[Ljxl/Cell;
    array-length v6, v5

    invoke-static {v5, v3, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1892
    iget-object v6, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    aput-object v4, v6, v2

    .line 1887
    .end local v4    # "newRow":[Ljxl/Cell;
    .end local v5    # "oldRow":[Ljxl/Cell;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1897
    .end local v2    # "r":I
    :cond_1
    iget v2, p0, Ljxl/read/biff/SheetReader;->numRows:I

    if-le v0, v2, :cond_2

    .line 1899
    new-array v2, v0, [[Ljxl/Cell;

    .line 1900
    .local v2, "newCells":[[Ljxl/Cell;
    iget-object v4, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    array-length v5, v4

    invoke-static {v4, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1901
    iput-object v2, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    .line 1904
    iget v3, p0, Ljxl/read/biff/SheetReader;->numRows:I

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 1906
    new-array v4, v1, [Ljxl/Cell;

    aput-object v4, v2, v3

    .line 1904
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1910
    .end local v2    # "newCells":[[Ljxl/Cell;
    .end local v3    # "i":I
    :cond_2
    iput v0, p0, Ljxl/read/biff/SheetReader;->numRows:I

    .line 1911
    iput v1, p0, Ljxl/read/biff/SheetReader;->numCols:I

    .line 1914
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1916
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/Cell;

    .line 1917
    .local v3, "cell":Ljxl/Cell;
    invoke-direct {p0, v3}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 1918
    .end local v3    # "cell":Ljxl/Cell;
    goto :goto_3

    .line 1920
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1921
    return-void
.end method

.method private revertSharedFormula(Ljxl/read/biff/BaseSharedFormulaRecord;)Ljxl/Cell;
    .locals 12
    .param p1, "f"    # Ljxl/read/biff/BaseSharedFormulaRecord;

    .line 1250
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->getPos()I

    move-result v0

    .line 1251
    .local v0, "pos":I
    iget-object v1, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {p1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getFilePos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/read/biff/File;->setPos(I)V

    .line 1253
    new-instance v1, Ljxl/read/biff/FormulaRecord;

    invoke-virtual {p1}, Ljxl/read/biff/BaseSharedFormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v4

    iget-object v5, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget-object v6, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v8, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    sget-object v9, Ljxl/read/biff/FormulaRecord;->ignoreSharedFormula:Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;

    iget-object v10, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v11, p0, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object v3, v1

    move-object v7, v8

    invoke-direct/range {v3 .. v11}, Ljxl/read/biff/FormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/FormulaRecord$IgnoreSharedFormula;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    .line 1264
    .local v1, "fr":Ljxl/read/biff/FormulaRecord;
    :try_start_0
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v2

    .line 1267
    .local v2, "cell":Ljxl/Cell;
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/read/biff/CellValue;->getType()Ljxl/CellType;

    move-result-object v3

    sget-object v4, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v3, v4, :cond_0

    .line 1269
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljxl/read/biff/NumberFormulaRecord;

    .line 1270
    .local v5, "nfr":Ljxl/read/biff/NumberFormulaRecord;
    iget-object v3, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getXFIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1272
    new-instance v3, Ljxl/read/biff/DateFormulaRecord;

    iget-object v6, p0, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v8, p0, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-boolean v9, p0, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v10, p0, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v4, v3

    move-object v7, v8

    invoke-direct/range {v4 .. v10}, Ljxl/read/biff/DateFormulaRecord;-><init>(Ljxl/read/biff/NumberFormulaRecord;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;ZLjxl/read/biff/SheetImpl;)V

    move-object v2, v3

    .line 1281
    .end local v5    # "nfr":Ljxl/read/biff/NumberFormulaRecord;
    :cond_0
    iget-object v3, p0, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v3, v0}, Ljxl/read/biff/File;->setPos(I)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    return-object v2

    .line 1284
    .end local v2    # "cell":Ljxl/Cell;
    :catch_0
    move-exception v2

    .line 1288
    .local v2, "e":Ljxl/biff/formula/FormulaException;
    sget-object v3, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getColumn()I

    move-result v5

    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getRow()I

    move-result v6

    invoke-static {v5, v6}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1292
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method final getAutoFilter()Ljxl/biff/AutoFilter;
    .locals 1

    .line 1374
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    return-object v0
.end method

.method final getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;
    .locals 1

    .line 1474
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    return-object v0
.end method

.method final getCells()[[Ljxl/Cell;
    .locals 1

    .line 1324
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    return-object v0
.end method

.method final getCharts()Ljava/util/ArrayList;
    .locals 1

    .line 1384
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->charts:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getColumnBreaks()[I
    .locals 1

    .line 1444
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->columnBreaks:[I

    return-object v0
.end method

.method final getColumnInfosArray()Ljava/util/ArrayList;
    .locals 1

    .line 1344
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->columnInfosArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getConditionalFormats()Ljava/util/ArrayList;
    .locals 1

    .line 1364
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->conditionalFormats:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getDataValidation()Ljxl/biff/DataValidation;
    .locals 1

    .line 1404
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    return-object v0
.end method

.method getDrawingData()Ljxl/biff/drawing/DrawingData;
    .locals 1

    .line 1859
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    return-object v0
.end method

.method final getDrawings()Ljava/util/ArrayList;
    .locals 1

    .line 1394
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getHyperlinks()Ljava/util/ArrayList;
    .locals 1

    .line 1354
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->hyperlinks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxColumnOutlineLevel()I
    .locals 1

    .line 1930
    iget v0, p0, Ljxl/read/biff/SheetReader;->maxColumnOutlineLevel:I

    return v0
.end method

.method public getMaxRowOutlineLevel()I
    .locals 1

    .line 1940
    iget v0, p0, Ljxl/read/biff/SheetReader;->maxRowOutlineLevel:I

    return v0
.end method

.method final getMergedCells()[Ljxl/Range;
    .locals 1

    .line 1414
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    return-object v0
.end method

.method final getNumCols()I
    .locals 1

    .line 1314
    iget v0, p0, Ljxl/read/biff/SheetReader;->numCols:I

    return v0
.end method

.method final getNumRows()I
    .locals 1

    .line 1304
    iget v0, p0, Ljxl/read/biff/SheetReader;->numRows:I

    return v0
.end method

.method final getPLS()Ljxl/read/biff/PLSRecord;
    .locals 1

    .line 1464
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->plsRecord:Ljxl/read/biff/PLSRecord;

    return-object v0
.end method

.method final getRowBreaks()[I
    .locals 1

    .line 1434
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->rowBreaks:[I

    return-object v0
.end method

.method final getRowProperties()Ljava/util/ArrayList;
    .locals 1

    .line 1334
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->rowProperties:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getSettings()Ljxl/SheetSettings;
    .locals 1

    .line 1424
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    return-object v0
.end method

.method final getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;
    .locals 1

    .line 1454
    iget-object v0, p0, Ljxl/read/biff/SheetReader;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    return-object v0
.end method

.method final read()V
    .locals 36

    .line 333
    move-object/from16 v9, p0

    const/4 v0, 0x0

    .line 334
    .local v0, "r":Ljxl/read/biff/Record;
    const/4 v1, 0x0

    .line 335
    .local v1, "sharedFormula":Ljxl/read/biff/BaseSharedFormulaRecord;
    const/4 v2, 0x0

    .line 337
    .local v2, "sharedFormulaAdded":Z
    const/4 v3, 0x1

    .line 340
    .local v3, "cont":Z
    iget-object v4, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget v5, v9, Ljxl/read/biff/SheetReader;->startPosition:I

    invoke-virtual {v4, v5}, Ljxl/read/biff/File;->setPos(I)V

    .line 343
    const/4 v4, 0x0

    .line 344
    .local v4, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    const/4 v5, 0x0

    .line 345
    .local v5, "objRecord":Ljxl/biff/drawing/ObjRecord;
    const/4 v6, 0x1

    .line 348
    .local v6, "firstMsoRecord":Z
    const/4 v7, 0x0

    .line 351
    .local v7, "condFormat":Ljxl/biff/ConditionalFormat;
    const/4 v8, 0x0

    .line 352
    .local v8, "filterMode":Ljxl/biff/FilterModeRecord;
    const/4 v10, 0x0

    .line 355
    .local v10, "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    const/4 v11, 0x0

    .line 358
    .local v11, "window2Record":Ljxl/read/biff/Window2Record;
    const/4 v12, 0x0

    .line 361
    .local v12, "printGridLinesRecord":Ljxl/read/biff/PrintGridLinesRecord;
    const/4 v13, 0x0

    .line 365
    .local v13, "printHeadersRecord":Ljxl/read/biff/PrintHeadersRecord;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v14, "comments":Ljava/util/HashMap;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v15, "objectIds":Ljava/util/ArrayList;
    const/16 v16, 0x0

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v16

    move v11, v2

    move v12, v3

    move-object v13, v4

    move/from16 v16, v6

    move-object v6, v10

    move-object v10, v1

    move-object/from16 v35, v7

    move-object v7, v5

    move-object v5, v8

    move-object/from16 v8, v35

    .line 373
    .end local v1    # "sharedFormula":Ljxl/read/biff/BaseSharedFormulaRecord;
    .end local v2    # "sharedFormulaAdded":Z
    .end local v3    # "cont":Z
    .end local v4    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v5, "filterMode":Ljxl/biff/FilterModeRecord;
    .local v6, "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .local v7, "objRecord":Ljxl/biff/drawing/ObjRecord;
    .local v8, "condFormat":Ljxl/biff/ConditionalFormat;
    .local v10, "sharedFormula":Ljxl/read/biff/BaseSharedFormulaRecord;
    .local v11, "sharedFormulaAdded":Z
    .local v12, "cont":Z
    .local v13, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v16, "firstMsoRecord":Z
    .local v17, "window2Record":Ljxl/read/biff/Window2Record;
    .local v18, "printGridLinesRecord":Ljxl/read/biff/PrintGridLinesRecord;
    .local v19, "printHeadersRecord":Ljxl/read/biff/PrintHeadersRecord;
    .local v20, "continueRecord":Ljxl/biff/ContinueRecord;
    :goto_0
    if-eqz v12, :cond_74

    .line 375
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v4

    .line 376
    .end local v0    # "r":Ljxl/read/biff/Record;
    .local v4, "r":Ljxl/read/biff/Record;
    invoke-virtual {v4}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v3

    .line 378
    .local v3, "type":Ljxl/biff/Type;
    sget-object v0, Ljxl/biff/Type;->UNKNOWN:Ljxl/biff/Type;

    if-ne v3, v0, :cond_1

    invoke-virtual {v4}, Ljxl/read/biff/Record;->getCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 380
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v1, "Biff code zero found"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 383
    invoke-virtual {v4}, Ljxl/read/biff/Record;->getLength()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 385
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v1, "Biff code zero found - trying a dimension record."

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 386
    sget-object v0, Ljxl/biff/Type;->DIMENSION:Ljxl/biff/Type;

    invoke-virtual {v4, v0}, Ljxl/read/biff/Record;->setType(Ljxl/biff/Type;)V

    goto :goto_1

    .line 390
    :cond_0
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v1, "Biff code zero found - Ignoring."

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 394
    :cond_1
    :goto_1
    sget-object v0, Ljxl/biff/Type;->DIMENSION:Ljxl/biff/Type;

    if-ne v3, v0, :cond_3

    .line 396
    const/4 v0, 0x0

    .line 398
    .local v0, "dr":Ljxl/read/biff/DimensionRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    new-instance v1, Ljxl/read/biff/DimensionRecord;

    invoke-direct {v1, v4}, Ljxl/read/biff/DimensionRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v0, v1

    goto :goto_2

    .line 404
    :cond_2
    new-instance v1, Ljxl/read/biff/DimensionRecord;

    sget-object v2, Ljxl/read/biff/DimensionRecord;->biff7:Ljxl/read/biff/DimensionRecord$Biff7;

    invoke-direct {v1, v4, v2}, Ljxl/read/biff/DimensionRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/DimensionRecord$Biff7;)V

    move-object v0, v1

    .line 406
    :goto_2
    invoke-virtual {v0}, Ljxl/read/biff/DimensionRecord;->getNumberOfRows()I

    move-result v1

    iput v1, v9, Ljxl/read/biff/SheetReader;->numRows:I

    .line 407
    invoke-virtual {v0}, Ljxl/read/biff/DimensionRecord;->getNumberOfColumns()I

    move-result v1

    iput v1, v9, Ljxl/read/biff/SheetReader;->numCols:I

    .line 408
    iget v2, v9, Ljxl/read/biff/SheetReader;->numRows:I

    move-object/from16 v23, v0

    .end local v0    # "dr":Ljxl/read/biff/DimensionRecord;
    .local v23, "dr":Ljxl/read/biff/DimensionRecord;
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v22, 0x1

    aput v1, v0, v22

    const/4 v1, 0x0

    aput v2, v0, v1

    const-class v1, Ljxl/Cell;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljxl/Cell;

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->cells:[[Ljxl/Cell;

    .line 409
    .end local v23    # "dr":Ljxl/read/biff/DimensionRecord;
    move-object/from16 v34, v6

    move-object/from16 v32, v7

    move/from16 v30, v11

    move/from16 v29, v12

    move-object v11, v13

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object v14, v4

    move-object v12, v5

    move-object v13, v8

    goto/16 :goto_25

    .line 410
    :cond_3
    sget-object v0, Ljxl/biff/Type;->LABELSST:Ljxl/biff/Type;

    if-ne v3, v0, :cond_4

    .line 412
    new-instance v0, Ljxl/read/biff/LabelSSTRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    move-object/from16 v23, v5

    .end local v5    # "filterMode":Ljxl/biff/FilterModeRecord;
    .local v23, "filterMode":Ljxl/biff/FilterModeRecord;
    iget-object v5, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v0, v4, v1, v2, v5}, Ljxl/read/biff/LabelSSTRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 416
    .local v0, "label":Ljxl/read/biff/LabelSSTRecord;
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 417
    .end local v0    # "label":Ljxl/read/biff/LabelSSTRecord;
    move-object/from16 v34, v6

    move-object/from16 v32, v7

    move/from16 v30, v11

    move/from16 v29, v12

    move-object v11, v13

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v12, v23

    move-object v14, v4

    move-object v13, v8

    goto/16 :goto_25

    .line 418
    .end local v23    # "filterMode":Ljxl/biff/FilterModeRecord;
    .restart local v5    # "filterMode":Ljxl/biff/FilterModeRecord;
    :cond_4
    move-object/from16 v23, v5

    .end local v5    # "filterMode":Ljxl/biff/FilterModeRecord;
    .restart local v23    # "filterMode":Ljxl/biff/FilterModeRecord;
    sget-object v0, Ljxl/biff/Type;->RK:Ljxl/biff/Type;

    if-eq v3, v0, :cond_71

    sget-object v0, Ljxl/biff/Type;->RK2:Ljxl/biff/Type;

    if-ne v3, v0, :cond_5

    move-object/from16 v34, v6

    move-object/from16 v32, v7

    move/from16 v30, v11

    move/from16 v29, v12

    move-object v11, v13

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v12, v23

    move-object v15, v3

    move-object v14, v4

    move-object v13, v8

    goto/16 :goto_23

    .line 433
    :cond_5
    sget-object v0, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    if-ne v3, v0, :cond_6

    .line 435
    new-instance v0, Ljxl/read/biff/HyperlinkRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v0, v4, v1, v2}, Ljxl/read/biff/HyperlinkRecord;-><init>(Ljxl/read/biff/Record;Ljxl/Sheet;Ljxl/WorkbookSettings;)V

    .line 436
    .local v0, "hr":Ljxl/read/biff/HyperlinkRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .end local v0    # "hr":Ljxl/read/biff/HyperlinkRecord;
    move-object/from16 v34, v6

    move-object/from16 v32, v7

    move/from16 v30, v11

    move/from16 v29, v12

    move-object v11, v13

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v12, v23

    move-object v14, v4

    move-object v13, v8

    goto/16 :goto_25

    .line 438
    :cond_6
    sget-object v0, Ljxl/biff/Type;->MERGEDCELLS:Ljxl/biff/Type;

    if-ne v3, v0, :cond_8

    .line 440
    new-instance v0, Ljxl/read/biff/MergedCellsRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v0, v4, v1}, Ljxl/read/biff/MergedCellsRecord;-><init>(Ljxl/read/biff/Record;Ljxl/Sheet;)V

    .line 441
    .local v0, "mc":Ljxl/read/biff/MergedCellsRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    if-nez v1, :cond_7

    .line 443
    invoke-virtual {v0}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v1

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    move-object/from16 v24, v6

    move-object/from16 v21, v7

    goto :goto_3

    .line 447
    :cond_7
    array-length v1, v1

    invoke-virtual {v0}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [Ljxl/Range;

    .line 449
    .local v1, "newMergedCells":[Ljxl/Range;
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    array-length v5, v2

    move-object/from16 v24, v6

    const/4 v6, 0x0

    .end local v6    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .local v24, "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    invoke-static {v2, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    invoke-virtual {v0}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v2

    iget-object v5, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    array-length v5, v5

    move-object/from16 v21, v7

    .end local v7    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .local v21, "objRecord":Ljxl/biff/drawing/ObjRecord;
    invoke-virtual {v0}, Ljxl/read/biff/MergedCellsRecord;->getRanges()[Ljxl/Range;

    move-result-object v7

    array-length v7, v7

    invoke-static {v2, v6, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    iput-object v1, v9, Ljxl/read/biff/SheetReader;->mergedCells:[Ljxl/Range;

    .line 457
    .end local v0    # "mc":Ljxl/read/biff/MergedCellsRecord;
    .end local v1    # "newMergedCells":[Ljxl/Range;
    :goto_3
    move/from16 v30, v11

    move/from16 v29, v12

    move-object v11, v13

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v32, v21

    move-object/from16 v12, v23

    move-object/from16 v34, v24

    move-object v14, v4

    move-object v13, v8

    goto/16 :goto_25

    .line 458
    .end local v21    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .end local v24    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v6    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v7    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    :cond_8
    move-object/from16 v24, v6

    move-object/from16 v21, v7

    const/4 v6, 0x0

    .end local v6    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .end local v7    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .restart local v21    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .restart local v24    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    sget-object v0, Ljxl/biff/Type;->MULRK:Ljxl/biff/Type;

    if-ne v3, v0, :cond_b

    .line 460
    new-instance v0, Ljxl/read/biff/MulRKRecord;

    invoke-direct {v0, v4}, Ljxl/read/biff/MulRKRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 463
    .local v0, "mulrk":Ljxl/read/biff/MulRKRecord;
    invoke-virtual {v0}, Ljxl/read/biff/MulRKRecord;->getNumberOfColumns()I

    move-result v1

    .line 464
    .local v1, "num":I
    const/4 v2, 0x0

    .line 465
    .local v2, "ixf":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v1, :cond_a

    .line 467
    invoke-virtual {v0, v5}, Ljxl/read/biff/MulRKRecord;->getXFIndex(I)I

    move-result v2

    .line 469
    new-instance v6, Ljxl/read/biff/NumberValue;

    invoke-virtual {v0}, Ljxl/read/biff/MulRKRecord;->getRow()I

    move-result v26

    invoke-virtual {v0}, Ljxl/read/biff/MulRKRecord;->getFirstColumn()I

    move-result v7

    add-int v27, v7, v5

    invoke-virtual {v0, v5}, Ljxl/read/biff/MulRKRecord;->getRKNumber(I)I

    move-result v7

    invoke-static {v7}, Ljxl/read/biff/RKHelper;->getDouble(I)D

    move-result-wide v28

    iget-object v7, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    move-object/from16 v22, v0

    .end local v0    # "mulrk":Ljxl/read/biff/MulRKRecord;
    .local v22, "mulrk":Ljxl/read/biff/MulRKRecord;
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v25, v6

    move/from16 v30, v2

    move-object/from16 v31, v7

    move-object/from16 v32, v0

    invoke-direct/range {v25 .. v32}, Ljxl/read/biff/NumberValue;-><init>(IIDILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    move-object v0, v6

    .line 478
    .local v0, "nv":Ljxl/read/biff/NumberValue;
    iget-object v6, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v6, v2}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 480
    new-instance v6, Ljxl/read/biff/DateRecord;

    iget-object v7, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    move/from16 v31, v1

    .end local v1    # "num":I
    .local v31, "num":I
    iget-boolean v1, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    move-object/from16 v32, v8

    .end local v8    # "condFormat":Ljxl/biff/ConditionalFormat;
    .local v32, "condFormat":Ljxl/biff/ConditionalFormat;
    iget-object v8, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v25, v6

    move-object/from16 v26, v0

    move/from16 v27, v2

    move-object/from16 v28, v7

    move/from16 v29, v1

    move-object/from16 v30, v8

    invoke-direct/range {v25 .. v30}, Ljxl/read/biff/DateRecord;-><init>(Ljxl/NumberCell;ILjxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;)V

    move-object v1, v6

    .line 485
    .local v1, "dc":Ljxl/DateCell;
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 486
    .end local v1    # "dc":Ljxl/DateCell;
    goto :goto_5

    .line 489
    .end local v31    # "num":I
    .end local v32    # "condFormat":Ljxl/biff/ConditionalFormat;
    .local v1, "num":I
    .restart local v8    # "condFormat":Ljxl/biff/ConditionalFormat;
    :cond_9
    move/from16 v31, v1

    move-object/from16 v32, v8

    .end local v1    # "num":I
    .end local v8    # "condFormat":Ljxl/biff/ConditionalFormat;
    .restart local v31    # "num":I
    .restart local v32    # "condFormat":Ljxl/biff/ConditionalFormat;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1, v2}, Ljxl/biff/FormattingRecords;->getNumberFormat(I)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/read/biff/NumberValue;->setNumberFormat(Ljava/text/NumberFormat;)V

    .line 490
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 465
    .end local v0    # "nv":Ljxl/read/biff/NumberValue;
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v31

    move-object/from16 v8, v32

    goto :goto_4

    .end local v22    # "mulrk":Ljxl/read/biff/MulRKRecord;
    .end local v31    # "num":I
    .end local v32    # "condFormat":Ljxl/biff/ConditionalFormat;
    .local v0, "mulrk":Ljxl/read/biff/MulRKRecord;
    .restart local v1    # "num":I
    .restart local v8    # "condFormat":Ljxl/biff/ConditionalFormat;
    :cond_a
    move-object/from16 v22, v0

    move/from16 v31, v1

    move-object/from16 v32, v8

    .line 493
    .end local v0    # "mulrk":Ljxl/read/biff/MulRKRecord;
    .end local v1    # "num":I
    .end local v2    # "ixf":I
    .end local v5    # "i":I
    .end local v8    # "condFormat":Ljxl/biff/ConditionalFormat;
    .restart local v32    # "condFormat":Ljxl/biff/ConditionalFormat;
    move/from16 v30, v11

    move/from16 v29, v12

    move-object v11, v13

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v12, v23

    move-object/from16 v34, v24

    move-object/from16 v13, v32

    move-object v14, v4

    move-object/from16 v32, v21

    goto/16 :goto_25

    .line 494
    .end local v32    # "condFormat":Ljxl/biff/ConditionalFormat;
    .restart local v8    # "condFormat":Ljxl/biff/ConditionalFormat;
    :cond_b
    move-object/from16 v32, v8

    .end local v8    # "condFormat":Ljxl/biff/ConditionalFormat;
    .restart local v32    # "condFormat":Ljxl/biff/ConditionalFormat;
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    if-ne v3, v0, :cond_d

    .line 496
    new-instance v0, Ljxl/read/biff/NumberRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v0, v4, v1, v2}, Ljxl/read/biff/NumberRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 498
    .local v0, "nr":Ljxl/read/biff/NumberRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0}, Ljxl/read/biff/NumberRecord;->getXFIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 500
    new-instance v1, Ljxl/read/biff/DateRecord;

    invoke-virtual {v0}, Ljxl/read/biff/NumberRecord;->getXFIndex()I

    move-result v27

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-boolean v5, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v6, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v25, v1

    move-object/from16 v26, v0

    move-object/from16 v28, v2

    move/from16 v29, v5

    move-object/from16 v30, v6

    invoke-direct/range {v25 .. v30}, Ljxl/read/biff/DateRecord;-><init>(Ljxl/NumberCell;ILjxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;)V

    .line 504
    .local v1, "dc":Ljxl/DateCell;
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 505
    .end local v1    # "dc":Ljxl/DateCell;
    goto :goto_6

    .line 508
    :cond_c
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 510
    .end local v0    # "nr":Ljxl/read/biff/NumberRecord;
    :goto_6
    move/from16 v30, v11

    move/from16 v29, v12

    move-object v11, v13

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v12, v23

    move-object/from16 v34, v24

    move-object/from16 v13, v32

    move-object v14, v4

    move-object/from16 v32, v21

    goto/16 :goto_25

    .line 511
    :cond_d
    sget-object v0, Ljxl/biff/Type;->BOOLERR:Ljxl/biff/Type;

    if-ne v3, v0, :cond_f

    .line 513
    new-instance v0, Ljxl/read/biff/BooleanRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v0, v4, v1, v2}, Ljxl/read/biff/BooleanRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 515
    .local v0, "br":Ljxl/read/biff/BooleanRecord;
    invoke-virtual {v0}, Ljxl/read/biff/BooleanRecord;->isError()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 517
    new-instance v1, Ljxl/read/biff/ErrorRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BooleanRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v2

    iget-object v5, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v6, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v1, v2, v5, v6}, Ljxl/read/biff/ErrorRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 519
    .local v1, "er":Ljxl/read/biff/ErrorRecord;
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 520
    .end local v1    # "er":Ljxl/read/biff/ErrorRecord;
    goto :goto_7

    .line 523
    :cond_e
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 525
    .end local v0    # "br":Ljxl/read/biff/BooleanRecord;
    :goto_7
    move/from16 v30, v11

    move/from16 v29, v12

    move-object v11, v13

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v12, v23

    move-object/from16 v34, v24

    move-object/from16 v13, v32

    move-object v14, v4

    move-object/from16 v32, v21

    goto/16 :goto_25

    .line 526
    :cond_f
    sget-object v0, Ljxl/biff/Type;->PRINTGRIDLINES:Ljxl/biff/Type;

    if-ne v3, v0, :cond_10

    .line 528
    new-instance v0, Ljxl/read/biff/PrintGridLinesRecord;

    invoke-direct {v0, v4}, Ljxl/read/biff/PrintGridLinesRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 529
    .end local v18    # "printGridLinesRecord":Ljxl/read/biff/PrintGridLinesRecord;
    .local v0, "printGridLinesRecord":Ljxl/read/biff/PrintGridLinesRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/PrintGridLinesRecord;->getPrintGridLines()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setPrintGridLines(Z)V

    move-object/from16 v18, v0

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v7, v21

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v8, v32

    move-object v14, v4

    goto/16 :goto_26

    .line 531
    .end local v0    # "printGridLinesRecord":Ljxl/read/biff/PrintGridLinesRecord;
    .restart local v18    # "printGridLinesRecord":Ljxl/read/biff/PrintGridLinesRecord;
    :cond_10
    sget-object v0, Ljxl/biff/Type;->PRINTHEADERS:Ljxl/biff/Type;

    if-ne v3, v0, :cond_11

    .line 533
    new-instance v0, Ljxl/read/biff/PrintHeadersRecord;

    invoke-direct {v0, v4}, Ljxl/read/biff/PrintHeadersRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 534
    .end local v19    # "printHeadersRecord":Ljxl/read/biff/PrintHeadersRecord;
    .local v0, "printHeadersRecord":Ljxl/read/biff/PrintHeadersRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/PrintHeadersRecord;->getPrintHeaders()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setPrintHeaders(Z)V

    move-object/from16 v19, v0

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v7, v21

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v8, v32

    move-object v14, v4

    goto/16 :goto_26

    .line 536
    .end local v0    # "printHeadersRecord":Ljxl/read/biff/PrintHeadersRecord;
    .restart local v19    # "printHeadersRecord":Ljxl/read/biff/PrintHeadersRecord;
    :cond_11
    sget-object v0, Ljxl/biff/Type;->WINDOW2:Ljxl/biff/Type;

    if-ne v3, v0, :cond_13

    .line 538
    const/4 v0, 0x0

    .line 540
    .end local v17    # "window2Record":Ljxl/read/biff/Window2Record;
    .local v0, "window2Record":Ljxl/read/biff/Window2Record;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 542
    new-instance v1, Ljxl/read/biff/Window2Record;

    invoke-direct {v1, v4}, Ljxl/read/biff/Window2Record;-><init>(Ljxl/read/biff/Record;)V

    move-object v0, v1

    goto :goto_8

    .line 546
    :cond_12
    new-instance v1, Ljxl/read/biff/Window2Record;

    sget-object v2, Ljxl/read/biff/Window2Record;->biff7:Ljxl/read/biff/Window2Record$Biff7;

    invoke-direct {v1, v4, v2}, Ljxl/read/biff/Window2Record;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/Window2Record$Biff7;)V

    move-object v0, v1

    .line 549
    :goto_8
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/Window2Record;->getShowGridLines()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setShowGridLines(Z)V

    .line 550
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/Window2Record;->getDisplayZeroValues()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setDisplayZeroValues(Z)V

    .line 551
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setSelected(Z)V

    .line 552
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/Window2Record;->isPageBreakPreview()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setPageBreakPreviewMode(Z)V

    move-object/from16 v17, v0

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v7, v21

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v8, v32

    move-object v14, v4

    goto/16 :goto_26

    .line 554
    .end local v0    # "window2Record":Ljxl/read/biff/Window2Record;
    .restart local v17    # "window2Record":Ljxl/read/biff/Window2Record;
    :cond_13
    sget-object v0, Ljxl/biff/Type;->PANE:Ljxl/biff/Type;

    if-ne v3, v0, :cond_15

    .line 556
    new-instance v0, Ljxl/read/biff/PaneRecord;

    invoke-direct {v0, v4}, Ljxl/read/biff/PaneRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 558
    .local v0, "pr":Ljxl/read/biff/PaneRecord;
    if-eqz v17, :cond_14

    invoke-virtual/range {v17 .. v17}, Ljxl/read/biff/Window2Record;->getFrozen()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 561
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/PaneRecord;->getRowsVisible()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setVerticalFreeze(I)V

    .line 562
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/PaneRecord;->getColumnsVisible()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setHorizontalFreeze(I)V

    .line 564
    .end local v0    # "pr":Ljxl/read/biff/PaneRecord;
    :cond_14
    move/from16 v30, v11

    move/from16 v29, v12

    move-object v11, v13

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v12, v23

    move-object/from16 v34, v24

    move-object/from16 v13, v32

    move-object v14, v4

    move-object/from16 v32, v21

    goto/16 :goto_25

    .line 565
    :cond_15
    sget-object v0, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v3, v0, :cond_16

    .line 568
    new-instance v0, Ljxl/biff/ContinueRecord;

    invoke-direct {v0, v4}, Ljxl/biff/ContinueRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object/from16 v20, v0

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v7, v21

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v8, v32

    move-object v14, v4

    .end local v20    # "continueRecord":Ljxl/biff/ContinueRecord;
    .local v0, "continueRecord":Ljxl/biff/ContinueRecord;
    goto/16 :goto_26

    .line 570
    .end local v0    # "continueRecord":Ljxl/biff/ContinueRecord;
    .restart local v20    # "continueRecord":Ljxl/biff/ContinueRecord;
    :cond_16
    sget-object v0, Ljxl/biff/Type;->NOTE:Ljxl/biff/Type;

    if-ne v3, v0, :cond_19

    .line 572
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 574
    new-instance v0, Ljxl/biff/drawing/NoteRecord;

    invoke-direct {v0, v4}, Ljxl/biff/drawing/NoteRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 577
    .local v0, "nr":Ljxl/biff/drawing/NoteRecord;
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljxl/biff/drawing/NoteRecord;->getObjectId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljxl/biff/drawing/Comment;

    .line 580
    .local v7, "comment":Ljxl/biff/drawing/Comment;
    if-nez v7, :cond_17

    .line 582
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " cannot find comment for note id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljxl/biff/drawing/NoteRecord;->getObjectId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "...ignoring"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    move/from16 v30, v11

    move/from16 v29, v12

    move-object/from16 v34, v13

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v12, v23

    move-object/from16 v11, v24

    move-object/from16 v13, v32

    move-object v15, v3

    move-object v14, v4

    move-object/from16 v32, v21

    goto :goto_9

    .line 587
    :cond_17
    invoke-virtual {v7, v0}, Ljxl/biff/drawing/Comment;->setNote(Ljxl/biff/drawing/NoteRecord;)V

    .line 589
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {v7}, Ljxl/biff/drawing/Comment;->getColumn()I

    move-result v2

    invoke-virtual {v7}, Ljxl/biff/drawing/Comment;->getRow()I

    move-result v5

    invoke-virtual {v7}, Ljxl/biff/drawing/Comment;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljxl/biff/drawing/Comment;->getWidth()D

    move-result-wide v25

    invoke-virtual {v7}, Ljxl/biff/drawing/Comment;->getHeight()D

    move-result-wide v27

    move-object/from16 v1, p0

    move-object v8, v3

    .end local v3    # "type":Ljxl/biff/Type;
    .local v8, "type":Ljxl/biff/Type;
    move v3, v5

    move-object v5, v4

    .end local v4    # "r":Ljxl/read/biff/Record;
    .local v5, "r":Ljxl/read/biff/Record;
    move-object v4, v6

    move/from16 v30, v11

    move/from16 v29, v12

    move-object/from16 v31, v14

    move-object/from16 v12, v23

    move-object/from16 v11, v24

    move-object v14, v5

    .end local v5    # "r":Ljxl/read/biff/Record;
    .end local v23    # "filterMode":Ljxl/biff/FilterModeRecord;
    .end local v24    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .local v11, "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .local v12, "filterMode":Ljxl/biff/FilterModeRecord;
    .local v14, "r":Ljxl/read/biff/Record;
    .local v29, "cont":Z
    .local v30, "sharedFormulaAdded":Z
    .local v31, "comments":Ljava/util/HashMap;
    move-wide/from16 v5, v25

    move-object/from16 v34, v13

    move-object/from16 v33, v15

    move-object/from16 v13, v32

    move-object v15, v8

    move-object/from16 v32, v21

    move-object/from16 v21, v7

    .end local v7    # "comment":Ljxl/biff/drawing/Comment;
    .end local v8    # "type":Ljxl/biff/Type;
    .local v13, "condFormat":Ljxl/biff/ConditionalFormat;
    .local v15, "type":Ljxl/biff/Type;
    .local v21, "comment":Ljxl/biff/drawing/Comment;
    .local v32, "objRecord":Ljxl/biff/drawing/ObjRecord;
    .local v33, "objectIds":Ljava/util/ArrayList;
    .local v34, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    move-wide/from16 v7, v27

    invoke-direct/range {v1 .. v8}, Ljxl/read/biff/SheetReader;->addCellComment(IILjava/lang/String;DD)V

    .line 597
    .end local v0    # "nr":Ljxl/biff/drawing/NoteRecord;
    .end local v21    # "comment":Ljxl/biff/drawing/Comment;
    :goto_9
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 572
    .end local v29    # "cont":Z
    .end local v30    # "sharedFormulaAdded":Z
    .end local v31    # "comments":Ljava/util/HashMap;
    .end local v33    # "objectIds":Ljava/util/ArrayList;
    .end local v34    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v3    # "type":Ljxl/biff/Type;
    .restart local v4    # "r":Ljxl/read/biff/Record;
    .local v11, "sharedFormulaAdded":Z
    .local v12, "cont":Z
    .local v13, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v14, "comments":Ljava/util/HashMap;
    .local v15, "objectIds":Ljava/util/ArrayList;
    .local v21, "objRecord":Ljxl/biff/drawing/ObjRecord;
    .restart local v23    # "filterMode":Ljxl/biff/FilterModeRecord;
    .restart local v24    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .local v32, "condFormat":Ljxl/biff/ConditionalFormat;
    :cond_18
    move/from16 v30, v11

    move/from16 v29, v12

    move-object/from16 v34, v13

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v12, v23

    move-object/from16 v11, v24

    move-object/from16 v13, v32

    move-object v15, v3

    move-object v14, v4

    move-object/from16 v32, v21

    .end local v3    # "type":Ljxl/biff/Type;
    .end local v4    # "r":Ljxl/read/biff/Record;
    .end local v21    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .end local v23    # "filterMode":Ljxl/biff/FilterModeRecord;
    .end local v24    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .local v11, "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .local v12, "filterMode":Ljxl/biff/FilterModeRecord;
    .local v13, "condFormat":Ljxl/biff/ConditionalFormat;
    .local v14, "r":Ljxl/read/biff/Record;
    .local v15, "type":Ljxl/biff/Type;
    .restart local v29    # "cont":Z
    .restart local v30    # "sharedFormulaAdded":Z
    .restart local v31    # "comments":Ljava/util/HashMap;
    .local v32, "objRecord":Ljxl/biff/drawing/ObjRecord;
    .restart local v33    # "objectIds":Ljava/util/ArrayList;
    .restart local v34    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 599
    .end local v29    # "cont":Z
    .end local v30    # "sharedFormulaAdded":Z
    .end local v31    # "comments":Ljava/util/HashMap;
    .end local v33    # "objectIds":Ljava/util/ArrayList;
    .end local v34    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v3    # "type":Ljxl/biff/Type;
    .restart local v4    # "r":Ljxl/read/biff/Record;
    .local v11, "sharedFormulaAdded":Z
    .local v12, "cont":Z
    .local v13, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v14, "comments":Ljava/util/HashMap;
    .local v15, "objectIds":Ljava/util/ArrayList;
    .restart local v21    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .restart local v23    # "filterMode":Ljxl/biff/FilterModeRecord;
    .restart local v24    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .local v32, "condFormat":Ljxl/biff/ConditionalFormat;
    :cond_19
    move/from16 v30, v11

    move/from16 v29, v12

    move-object/from16 v34, v13

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v12, v23

    move-object/from16 v11, v24

    move-object/from16 v13, v32

    move-object v15, v3

    move-object v14, v4

    move-object/from16 v32, v21

    .end local v3    # "type":Ljxl/biff/Type;
    .end local v4    # "r":Ljxl/read/biff/Record;
    .end local v21    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .end local v23    # "filterMode":Ljxl/biff/FilterModeRecord;
    .end local v24    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .local v11, "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .local v12, "filterMode":Ljxl/biff/FilterModeRecord;
    .local v13, "condFormat":Ljxl/biff/ConditionalFormat;
    .local v14, "r":Ljxl/read/biff/Record;
    .local v15, "type":Ljxl/biff/Type;
    .restart local v29    # "cont":Z
    .restart local v30    # "sharedFormulaAdded":Z
    .restart local v31    # "comments":Ljava/util/HashMap;
    .local v32, "objRecord":Ljxl/biff/drawing/ObjRecord;
    .restart local v33    # "objectIds":Ljava/util/ArrayList;
    .restart local v34    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    sget-object v0, Ljxl/biff/Type;->ARRAY:Ljxl/biff/Type;

    if-ne v15, v0, :cond_1a

    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 603
    :cond_1a
    sget-object v0, Ljxl/biff/Type;->PROTECT:Ljxl/biff/Type;

    if-ne v15, v0, :cond_1b

    .line 605
    new-instance v0, Ljxl/read/biff/ProtectRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/ProtectRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 606
    .local v0, "pr":Ljxl/read/biff/ProtectRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/ProtectRecord;->isProtected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setProtected(Z)V

    .line 607
    .end local v0    # "pr":Ljxl/read/biff/ProtectRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 608
    :cond_1b
    sget-object v0, Ljxl/biff/Type;->SHAREDFORMULA:Ljxl/biff/Type;

    if-ne v15, v0, :cond_1d

    .line 610
    if-nez v10, :cond_1c

    .line 612
    sget-object v0, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v1, "Shared template formula is null - trying most recent formula template"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 614
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/SharedFormulaRecord;

    .line 617
    .local v0, "lastSharedFormula":Ljxl/read/biff/SharedFormulaRecord;
    if-eqz v0, :cond_1c

    .line 619
    invoke-virtual {v0}, Ljxl/read/biff/SharedFormulaRecord;->getTemplateFormula()Ljxl/read/biff/BaseSharedFormulaRecord;

    move-result-object v10

    .line 623
    .end local v0    # "lastSharedFormula":Ljxl/read/biff/SharedFormulaRecord;
    :cond_1c
    new-instance v0, Ljxl/read/biff/SharedFormulaRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v21, v0

    move-object/from16 v22, v14

    move-object/from16 v23, v10

    move-object/from16 v24, v1

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    invoke-direct/range {v21 .. v26}, Ljxl/read/biff/SharedFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/BaseSharedFormulaRecord;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V

    .line 625
    .local v0, "sfr":Ljxl/read/biff/SharedFormulaRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    const/4 v0, 0x0

    .line 627
    .end local v10    # "sharedFormula":Ljxl/read/biff/BaseSharedFormulaRecord;
    .local v0, "sharedFormula":Ljxl/read/biff/BaseSharedFormulaRecord;
    move-object v10, v0

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    move/from16 v12, v29

    move/from16 v11, v30

    move-object/from16 v7, v32

    move-object/from16 v13, v34

    goto/16 :goto_26

    .line 628
    .end local v0    # "sharedFormula":Ljxl/read/biff/BaseSharedFormulaRecord;
    .restart local v10    # "sharedFormula":Ljxl/read/biff/BaseSharedFormulaRecord;
    :cond_1d
    sget-object v0, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    if-eq v15, v0, :cond_6c

    sget-object v0, Ljxl/biff/Type;->FORMULA2:Ljxl/biff/Type;

    if-ne v15, v0, :cond_1e

    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_1f

    .line 695
    :cond_1e
    sget-object v0, Ljxl/biff/Type;->LABEL:Ljxl/biff/Type;

    if-ne v15, v0, :cond_20

    .line 697
    const/4 v0, 0x0

    .line 699
    .local v0, "lr":Ljxl/read/biff/LabelRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 701
    new-instance v1, Ljxl/read/biff/LabelRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v14, v2, v3, v4}, Ljxl/read/biff/LabelRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    move-object v0, v1

    goto :goto_a

    .line 705
    :cond_1f
    new-instance v1, Ljxl/read/biff/LabelRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v26, Ljxl/read/biff/LabelRecord;->biff7:Ljxl/read/biff/LabelRecord$Biff7;

    move-object/from16 v21, v1

    move-object/from16 v22, v14

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    invoke-direct/range {v21 .. v26}, Ljxl/read/biff/LabelRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;Ljxl/read/biff/LabelRecord$Biff7;)V

    move-object v0, v1

    .line 708
    :goto_a
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 709
    .end local v0    # "lr":Ljxl/read/biff/LabelRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 710
    :cond_20
    sget-object v0, Ljxl/biff/Type;->RSTRING:Ljxl/biff/Type;

    if-ne v15, v0, :cond_21

    .line 712
    const/4 v0, 0x0

    .line 715
    .local v0, "lr":Ljxl/read/biff/RStringRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 716
    new-instance v1, Ljxl/read/biff/RStringRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v26, Ljxl/read/biff/RStringRecord;->biff7:Ljxl/read/biff/RStringRecord$Biff7;

    move-object/from16 v21, v1

    move-object/from16 v22, v14

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    invoke-direct/range {v21 .. v26}, Ljxl/read/biff/RStringRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;Ljxl/read/biff/RStringRecord$Biff7;)V

    move-object v0, v1

    .line 719
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 720
    .end local v0    # "lr":Ljxl/read/biff/RStringRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 721
    :cond_21
    sget-object v0, Ljxl/biff/Type;->NAME:Ljxl/biff/Type;

    if-ne v15, v0, :cond_22

    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 725
    :cond_22
    sget-object v0, Ljxl/biff/Type;->PASSWORD:Ljxl/biff/Type;

    if-ne v15, v0, :cond_23

    .line 727
    new-instance v0, Ljxl/read/biff/PasswordRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/PasswordRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 728
    .local v0, "pr":Ljxl/read/biff/PasswordRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/PasswordRecord;->getPasswordHash()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setPasswordHash(I)V

    .line 729
    .end local v0    # "pr":Ljxl/read/biff/PasswordRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 730
    :cond_23
    sget-object v0, Ljxl/biff/Type;->ROW:Ljxl/biff/Type;

    if-ne v15, v0, :cond_26

    .line 732
    new-instance v0, Ljxl/read/biff/RowRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/RowRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 735
    .local v0, "rr":Ljxl/read/biff/RowRecord;
    invoke-virtual {v0}, Ljxl/read/biff/RowRecord;->isDefaultHeight()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Ljxl/read/biff/RowRecord;->matchesDefaultFontHeight()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Ljxl/read/biff/RowRecord;->hasDefaultFormat()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Ljxl/read/biff/RowRecord;->getOutlineLevel()I

    move-result v1

    if-eqz v1, :cond_25

    .line 741
    :cond_24
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->rowProperties:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    .end local v0    # "rr":Ljxl/read/biff/RowRecord;
    :cond_25
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 744
    :cond_26
    sget-object v0, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    if-ne v15, v0, :cond_28

    .line 746
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getIgnoreBlanks()Z

    move-result v0

    if-nez v0, :cond_27

    .line 748
    new-instance v0, Ljxl/read/biff/BlankCell;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v0, v14, v1, v2}, Ljxl/read/biff/BlankCell;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 749
    .local v0, "bc":Ljxl/read/biff/BlankCell;
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 750
    .end local v0    # "bc":Ljxl/read/biff/BlankCell;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 746
    :cond_27
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 752
    :cond_28
    sget-object v0, Ljxl/biff/Type;->MULBLANK:Ljxl/biff/Type;

    if-ne v15, v0, :cond_2b

    .line 754
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getIgnoreBlanks()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 756
    new-instance v0, Ljxl/read/biff/MulBlankRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/MulBlankRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 759
    .local v0, "mulblank":Ljxl/read/biff/MulBlankRecord;
    invoke-virtual {v0}, Ljxl/read/biff/MulBlankRecord;->getNumberOfColumns()I

    move-result v1

    .line 761
    .local v1, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_29

    .line 763
    invoke-virtual {v0, v2}, Ljxl/read/biff/MulBlankRecord;->getXFIndex(I)I

    move-result v21

    .line 765
    .local v21, "ixf":I
    new-instance v22, Ljxl/read/biff/MulBlankCell;

    invoke-virtual {v0}, Ljxl/read/biff/MulBlankRecord;->getRow()I

    move-result v4

    invoke-virtual {v0}, Ljxl/read/biff/MulBlankRecord;->getFirstColumn()I

    move-result v3

    add-int v5, v3, v2

    iget-object v7, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v8, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v3, v22

    move/from16 v6, v21

    invoke-direct/range {v3 .. v8}, Ljxl/read/biff/MulBlankCell;-><init>(IIILjxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 772
    .local v3, "mbc":Ljxl/read/biff/MulBlankCell;
    invoke-direct {v9, v3}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 761
    .end local v3    # "mbc":Ljxl/read/biff/MulBlankCell;
    .end local v21    # "ixf":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 774
    .end local v0    # "mulblank":Ljxl/read/biff/MulBlankRecord;
    .end local v1    # "num":I
    .end local v2    # "i":I
    :cond_29
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 754
    :cond_2a
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 776
    :cond_2b
    sget-object v0, Ljxl/biff/Type;->SCL:Ljxl/biff/Type;

    if-ne v15, v0, :cond_2c

    .line 778
    new-instance v0, Ljxl/read/biff/SCLRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/SCLRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 779
    .local v0, "scl":Ljxl/read/biff/SCLRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/SCLRecord;->getZoomFactor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setZoomFactor(I)V

    .line 780
    .end local v0    # "scl":Ljxl/read/biff/SCLRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 781
    :cond_2c
    sget-object v0, Ljxl/biff/Type;->COLINFO:Ljxl/biff/Type;

    if-ne v15, v0, :cond_2d

    .line 783
    new-instance v0, Ljxl/read/biff/ColumnInfoRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/ColumnInfoRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 784
    .local v0, "cir":Ljxl/read/biff/ColumnInfoRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    .end local v0    # "cir":Ljxl/read/biff/ColumnInfoRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 786
    :cond_2d
    sget-object v0, Ljxl/biff/Type;->HEADER:Ljxl/biff/Type;

    if-ne v15, v0, :cond_2f

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "hr":Ljxl/read/biff/HeaderRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 791
    new-instance v1, Ljxl/read/biff/HeaderRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v14, v2}, Ljxl/read/biff/HeaderRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    move-object v0, v1

    goto :goto_c

    .line 795
    :cond_2e
    new-instance v1, Ljxl/read/biff/HeaderRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v3, Ljxl/read/biff/HeaderRecord;->biff7:Ljxl/read/biff/HeaderRecord$Biff7;

    invoke-direct {v1, v14, v2, v3}, Ljxl/read/biff/HeaderRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/HeaderRecord$Biff7;)V

    move-object v0, v1

    .line 798
    :goto_c
    new-instance v1, Ljxl/HeaderFooter;

    invoke-virtual {v0}, Ljxl/read/biff/HeaderRecord;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/HeaderFooter;-><init>(Ljava/lang/String;)V

    .line 799
    .local v1, "header":Ljxl/HeaderFooter;
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2, v1}, Ljxl/SheetSettings;->setHeader(Ljxl/HeaderFooter;)V

    .line 800
    .end local v0    # "hr":Ljxl/read/biff/HeaderRecord;
    .end local v1    # "header":Ljxl/HeaderFooter;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 801
    :cond_2f
    sget-object v0, Ljxl/biff/Type;->FOOTER:Ljxl/biff/Type;

    if-ne v15, v0, :cond_31

    .line 803
    const/4 v0, 0x0

    .line 804
    .local v0, "fr":Ljxl/read/biff/FooterRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 806
    new-instance v1, Ljxl/read/biff/FooterRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v14, v2}, Ljxl/read/biff/FooterRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V

    move-object v0, v1

    goto :goto_d

    .line 810
    :cond_30
    new-instance v1, Ljxl/read/biff/FooterRecord;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    sget-object v3, Ljxl/read/biff/FooterRecord;->biff7:Ljxl/read/biff/FooterRecord$Biff7;

    invoke-direct {v1, v14, v2, v3}, Ljxl/read/biff/FooterRecord;-><init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/FooterRecord$Biff7;)V

    move-object v0, v1

    .line 813
    :goto_d
    new-instance v1, Ljxl/HeaderFooter;

    invoke-virtual {v0}, Ljxl/read/biff/FooterRecord;->getFooter()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/HeaderFooter;-><init>(Ljava/lang/String;)V

    .line 814
    .local v1, "footer":Ljxl/HeaderFooter;
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2, v1}, Ljxl/SheetSettings;->setFooter(Ljxl/HeaderFooter;)V

    .line 815
    .end local v0    # "fr":Ljxl/read/biff/FooterRecord;
    .end local v1    # "footer":Ljxl/HeaderFooter;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 816
    :cond_31
    sget-object v0, Ljxl/biff/Type;->SETUP:Ljxl/biff/Type;

    if-ne v15, v0, :cond_35

    .line 818
    new-instance v0, Ljxl/read/biff/SetupRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/SetupRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 822
    .local v0, "sr":Ljxl/read/biff/SetupRecord;
    invoke-virtual {v0}, Ljxl/read/biff/SetupRecord;->getInitialized()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 824
    invoke-virtual {v0}, Ljxl/read/biff/SetupRecord;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 826
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    sget-object v2, Ljxl/format/PageOrientation;->PORTRAIT:Ljxl/format/PageOrientation;

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    goto :goto_e

    .line 830
    :cond_32
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    sget-object v2, Ljxl/format/PageOrientation;->LANDSCAPE:Ljxl/format/PageOrientation;

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    .line 832
    :goto_e
    invoke-virtual {v0}, Ljxl/read/biff/SetupRecord;->isRightDown()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 834
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    sget-object v2, Ljxl/format/PageOrder;->RIGHT_THEN_DOWN:Ljxl/format/PageOrder;

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setPageOrder(Ljxl/format/PageOrder;)V

    goto :goto_f

    .line 838
    :cond_33
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    sget-object v2, Ljxl/format/PageOrder;->DOWN_THEN_RIGHT:Ljxl/format/PageOrder;

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setPageOrder(Ljxl/format/PageOrder;)V

    .line 840
    :goto_f
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/SetupRecord;->getPaperSize()I

    move-result v2

    invoke-static {v2}, Ljxl/format/PaperSize;->getPaperSize(I)Ljxl/format/PaperSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setPaperSize(Ljxl/format/PaperSize;)V

    .line 841
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/SetupRecord;->getHeaderMargin()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljxl/SheetSettings;->setHeaderMargin(D)V

    .line 842
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/SetupRecord;->getFooterMargin()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljxl/SheetSettings;->setFooterMargin(D)V

    .line 843
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/SetupRecord;->getScaleFactor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setScaleFactor(I)V

    .line 844
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/SetupRecord;->getPageStart()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setPageStart(I)V

    .line 845
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/SetupRecord;->getFitWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setFitWidth(I)V

    .line 846
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/SetupRecord;->getFitHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setFitHeight(I)V

    .line 847
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/SetupRecord;->getHorizontalPrintResolution()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setHorizontalPrintResolution(I)V

    .line 849
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/SetupRecord;->getVerticalPrintResolution()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setVerticalPrintResolution(I)V

    .line 850
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/SetupRecord;->getCopies()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setCopies(I)V

    .line 852
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    if-eqz v1, :cond_34

    .line 854
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/biff/WorkspaceInformationRecord;->getFitToPages()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljxl/SheetSettings;->setFitToPages(Z)V

    .line 857
    .end local v0    # "sr":Ljxl/read/biff/SetupRecord;
    :cond_34
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 858
    :cond_35
    sget-object v0, Ljxl/biff/Type;->WSBOOL:Ljxl/biff/Type;

    if-ne v15, v0, :cond_36

    .line 860
    new-instance v0, Ljxl/biff/WorkspaceInformationRecord;

    invoke-direct {v0, v14}, Ljxl/biff/WorkspaceInformationRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 862
    :cond_36
    sget-object v0, Ljxl/biff/Type;->DEFCOLWIDTH:Ljxl/biff/Type;

    if-ne v15, v0, :cond_37

    .line 864
    new-instance v0, Ljxl/read/biff/DefaultColumnWidthRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/DefaultColumnWidthRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 865
    .local v0, "dcwr":Ljxl/read/biff/DefaultColumnWidthRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/DefaultColumnWidthRecord;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setDefaultColumnWidth(I)V

    .line 866
    .end local v0    # "dcwr":Ljxl/read/biff/DefaultColumnWidthRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 867
    :cond_37
    sget-object v0, Ljxl/biff/Type;->DEFAULTROWHEIGHT:Ljxl/biff/Type;

    if-ne v15, v0, :cond_39

    .line 869
    new-instance v0, Ljxl/read/biff/DefaultRowHeightRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/DefaultRowHeightRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 870
    .local v0, "drhr":Ljxl/read/biff/DefaultRowHeightRecord;
    invoke-virtual {v0}, Ljxl/read/biff/DefaultRowHeightRecord;->getHeight()I

    move-result v1

    if-eqz v1, :cond_38

    .line 872
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/DefaultRowHeightRecord;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setDefaultRowHeight(I)V

    .line 874
    .end local v0    # "drhr":Ljxl/read/biff/DefaultRowHeightRecord;
    :cond_38
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 875
    :cond_39
    sget-object v0, Ljxl/biff/Type;->CONDFMT:Ljxl/biff/Type;

    if-ne v15, v0, :cond_3a

    .line 877
    new-instance v0, Ljxl/biff/ConditionalFormatRangeRecord;

    invoke-direct {v0, v14}, Ljxl/biff/ConditionalFormatRangeRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 879
    .local v0, "cfrr":Ljxl/biff/ConditionalFormatRangeRecord;
    new-instance v1, Ljxl/biff/ConditionalFormat;

    invoke-direct {v1, v0}, Ljxl/biff/ConditionalFormat;-><init>(Ljxl/biff/ConditionalFormatRangeRecord;)V

    .line 880
    .end local v13    # "condFormat":Ljxl/biff/ConditionalFormat;
    .local v1, "condFormat":Ljxl/biff/ConditionalFormat;
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    .end local v0    # "cfrr":Ljxl/biff/ConditionalFormatRangeRecord;
    move-object v8, v1

    move-object v6, v11

    move-object v5, v12

    move/from16 v12, v29

    move/from16 v11, v30

    move-object/from16 v7, v32

    move-object/from16 v13, v34

    goto/16 :goto_26

    .line 882
    .end local v1    # "condFormat":Ljxl/biff/ConditionalFormat;
    .restart local v13    # "condFormat":Ljxl/biff/ConditionalFormat;
    :cond_3a
    sget-object v0, Ljxl/biff/Type;->CF:Ljxl/biff/Type;

    if-ne v15, v0, :cond_3b

    .line 884
    new-instance v0, Ljxl/biff/ConditionalFormatRecord;

    invoke-direct {v0, v14}, Ljxl/biff/ConditionalFormatRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 885
    .local v0, "cfr":Ljxl/biff/ConditionalFormatRecord;
    invoke-virtual {v13, v0}, Ljxl/biff/ConditionalFormat;->addCondition(Ljxl/biff/ConditionalFormatRecord;)V

    .line 886
    .end local v0    # "cfr":Ljxl/biff/ConditionalFormatRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 887
    :cond_3b
    sget-object v0, Ljxl/biff/Type;->FILTERMODE:Ljxl/biff/Type;

    if-ne v15, v0, :cond_3c

    .line 889
    new-instance v0, Ljxl/biff/FilterModeRecord;

    invoke-direct {v0, v14}, Ljxl/biff/FilterModeRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v5, v0

    move-object v6, v11

    move-object v8, v13

    move/from16 v12, v29

    move/from16 v11, v30

    move-object/from16 v7, v32

    move-object/from16 v13, v34

    .end local v12    # "filterMode":Ljxl/biff/FilterModeRecord;
    .local v0, "filterMode":Ljxl/biff/FilterModeRecord;
    goto/16 :goto_26

    .line 891
    .end local v0    # "filterMode":Ljxl/biff/FilterModeRecord;
    .restart local v12    # "filterMode":Ljxl/biff/FilterModeRecord;
    :cond_3c
    sget-object v0, Ljxl/biff/Type;->AUTOFILTERINFO:Ljxl/biff/Type;

    if-ne v15, v0, :cond_3d

    .line 893
    new-instance v0, Ljxl/biff/AutoFilterInfoRecord;

    invoke-direct {v0, v14}, Ljxl/biff/AutoFilterInfoRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v6, v0

    move-object v5, v12

    move-object v8, v13

    move/from16 v12, v29

    move/from16 v11, v30

    move-object/from16 v7, v32

    move-object/from16 v13, v34

    .end local v11    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .local v0, "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    goto/16 :goto_26

    .line 895
    .end local v0    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v11    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    :cond_3d
    sget-object v0, Ljxl/biff/Type;->AUTOFILTER:Ljxl/biff/Type;

    if-ne v15, v0, :cond_40

    .line 897
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getAutoFilterDisabled()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 899
    new-instance v0, Ljxl/biff/AutoFilterRecord;

    invoke-direct {v0, v14}, Ljxl/biff/AutoFilterRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 901
    .local v0, "af":Ljxl/biff/AutoFilterRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    if-nez v1, :cond_3e

    .line 903
    new-instance v1, Ljxl/biff/AutoFilter;

    invoke-direct {v1, v12, v11}, Ljxl/biff/AutoFilter;-><init>(Ljxl/biff/FilterModeRecord;Ljxl/biff/AutoFilterInfoRecord;)V

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    .line 904
    const/4 v5, 0x0

    .line 905
    .end local v12    # "filterMode":Ljxl/biff/FilterModeRecord;
    .local v5, "filterMode":Ljxl/biff/FilterModeRecord;
    const/4 v6, 0x0

    .end local v11    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v6    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    goto :goto_10

    .line 901
    .end local v5    # "filterMode":Ljxl/biff/FilterModeRecord;
    .end local v6    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v11    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v12    # "filterMode":Ljxl/biff/FilterModeRecord;
    :cond_3e
    move-object v6, v11

    move-object v5, v12

    .line 908
    .end local v11    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .end local v12    # "filterMode":Ljxl/biff/FilterModeRecord;
    .restart local v5    # "filterMode":Ljxl/biff/FilterModeRecord;
    .restart local v6    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    :goto_10
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->autoFilter:Ljxl/biff/AutoFilter;

    invoke-virtual {v1, v0}, Ljxl/biff/AutoFilter;->add(Ljxl/biff/AutoFilterRecord;)V

    .line 909
    .end local v0    # "af":Ljxl/biff/AutoFilterRecord;
    move-object v8, v13

    move/from16 v12, v29

    move/from16 v11, v30

    move-object/from16 v7, v32

    move-object/from16 v13, v34

    goto/16 :goto_26

    .line 897
    .end local v5    # "filterMode":Ljxl/biff/FilterModeRecord;
    .end local v6    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v11    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v12    # "filterMode":Ljxl/biff/FilterModeRecord;
    :cond_3f
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 911
    :cond_40
    sget-object v0, Ljxl/biff/Type;->LEFTMARGIN:Ljxl/biff/Type;

    if-ne v15, v0, :cond_41

    .line 913
    new-instance v0, Ljxl/read/biff/LeftMarginRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/LeftMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 914
    .local v0, "m":Ljxl/read/biff/MarginRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljxl/SheetSettings;->setLeftMargin(D)V

    .line 915
    .end local v0    # "m":Ljxl/read/biff/MarginRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 916
    :cond_41
    sget-object v0, Ljxl/biff/Type;->RIGHTMARGIN:Ljxl/biff/Type;

    if-ne v15, v0, :cond_42

    .line 918
    new-instance v0, Ljxl/read/biff/RightMarginRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/RightMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 919
    .restart local v0    # "m":Ljxl/read/biff/MarginRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljxl/SheetSettings;->setRightMargin(D)V

    .line 920
    .end local v0    # "m":Ljxl/read/biff/MarginRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 921
    :cond_42
    sget-object v0, Ljxl/biff/Type;->TOPMARGIN:Ljxl/biff/Type;

    if-ne v15, v0, :cond_43

    .line 923
    new-instance v0, Ljxl/read/biff/TopMarginRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/TopMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 924
    .restart local v0    # "m":Ljxl/read/biff/MarginRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljxl/SheetSettings;->setTopMargin(D)V

    .line 925
    .end local v0    # "m":Ljxl/read/biff/MarginRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 926
    :cond_43
    sget-object v0, Ljxl/biff/Type;->BOTTOMMARGIN:Ljxl/biff/Type;

    if-ne v15, v0, :cond_44

    .line 928
    new-instance v0, Ljxl/read/biff/BottomMarginRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/BottomMarginRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 929
    .restart local v0    # "m":Ljxl/read/biff/MarginRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/MarginRecord;->getMargin()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljxl/SheetSettings;->setBottomMargin(D)V

    .line 930
    .end local v0    # "m":Ljxl/read/biff/MarginRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 931
    :cond_44
    sget-object v0, Ljxl/biff/Type;->HORIZONTALPAGEBREAKS:Ljxl/biff/Type;

    if-ne v15, v0, :cond_46

    .line 933
    const/4 v0, 0x0

    .line 935
    .local v0, "dr":Ljxl/read/biff/HorizontalPageBreaksRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 937
    new-instance v1, Ljxl/read/biff/HorizontalPageBreaksRecord;

    invoke-direct {v1, v14}, Ljxl/read/biff/HorizontalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v0, v1

    goto :goto_11

    .line 941
    :cond_45
    new-instance v1, Ljxl/read/biff/HorizontalPageBreaksRecord;

    sget-object v2, Ljxl/read/biff/HorizontalPageBreaksRecord;->biff7:Ljxl/read/biff/HorizontalPageBreaksRecord$Biff7;

    invoke-direct {v1, v14, v2}, Ljxl/read/biff/HorizontalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/HorizontalPageBreaksRecord$Biff7;)V

    move-object v0, v1

    .line 944
    :goto_11
    invoke-virtual {v0}, Ljxl/read/biff/HorizontalPageBreaksRecord;->getRowBreaks()[I

    move-result-object v1

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->rowBreaks:[I

    .line 945
    .end local v0    # "dr":Ljxl/read/biff/HorizontalPageBreaksRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 946
    :cond_46
    sget-object v0, Ljxl/biff/Type;->VERTICALPAGEBREAKS:Ljxl/biff/Type;

    if-ne v15, v0, :cond_48

    .line 948
    const/4 v0, 0x0

    .line 950
    .local v0, "dr":Ljxl/read/biff/VerticalPageBreaksRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 952
    new-instance v1, Ljxl/read/biff/VerticalPageBreaksRecord;

    invoke-direct {v1, v14}, Ljxl/read/biff/VerticalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;)V

    move-object v0, v1

    goto :goto_12

    .line 956
    :cond_47
    new-instance v1, Ljxl/read/biff/VerticalPageBreaksRecord;

    sget-object v2, Ljxl/read/biff/VerticalPageBreaksRecord;->biff7:Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;

    invoke-direct {v1, v14, v2}, Ljxl/read/biff/VerticalPageBreaksRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/VerticalPageBreaksRecord$Biff7;)V

    move-object v0, v1

    .line 959
    :goto_12
    invoke-virtual {v0}, Ljxl/read/biff/VerticalPageBreaksRecord;->getColumnBreaks()[I

    move-result-object v1

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->columnBreaks:[I

    .line 960
    .end local v0    # "dr":Ljxl/read/biff/VerticalPageBreaksRecord;
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 961
    :cond_48
    sget-object v0, Ljxl/biff/Type;->PLS:Ljxl/biff/Type;

    if-ne v15, v0, :cond_4a

    .line 963
    new-instance v0, Ljxl/read/biff/PLSRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/PLSRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->plsRecord:Ljxl/read/biff/PLSRecord;

    .line 966
    :goto_13
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->peek()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v0

    sget-object v1, Ljxl/biff/Type;->CONTINUE:Ljxl/biff/Type;

    if-ne v0, v1, :cond_49

    .line 968
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljxl/read/biff/Record;->addContinueRecord(Ljxl/read/biff/Record;)V

    goto :goto_13

    .line 966
    :cond_49
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    goto/16 :goto_25

    .line 971
    :cond_4a
    sget-object v0, Ljxl/biff/Type;->DVAL:Ljxl/biff/Type;

    if-ne v15, v0, :cond_50

    .line 973
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getCellValidationDisabled()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 975
    new-instance v0, Ljxl/biff/DataValidityListRecord;

    invoke-direct {v0, v14}, Ljxl/biff/DataValidityListRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 976
    .local v0, "dvlr":Ljxl/biff/DataValidityListRecord;
    invoke-virtual {v0}, Ljxl/biff/DataValidityListRecord;->getObjectId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4d

    .line 978
    if-eqz v34, :cond_4c

    if-nez v32, :cond_4c

    .line 981
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v1, :cond_4b

    .line 983
    new-instance v1, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v1}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 986
    :cond_4b
    new-instance v1, Ljxl/biff/drawing/Drawing2;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v3}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v3

    move-object/from16 v8, v34

    .end local v34    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v8, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    invoke-direct {v1, v8, v2, v3}, Ljxl/biff/drawing/Drawing2;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;)V

    .line 988
    .local v1, "d2":Ljxl/biff/drawing/Drawing2;
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    const/4 v2, 0x0

    .line 991
    .end local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v2, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    new-instance v3, Ljxl/biff/DataValidation;

    invoke-direct {v3, v0}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object v3, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    .line 992
    .end local v1    # "d2":Ljxl/biff/drawing/Drawing2;
    move-object/from16 v7, v33

    goto :goto_15

    .line 978
    .end local v2    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v34    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    :cond_4c
    move-object/from16 v8, v34

    .line 996
    .end local v34    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    new-instance v1, Ljxl/biff/DataValidation;

    invoke-direct {v1, v0}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    move-object/from16 v7, v33

    goto :goto_14

    .line 999
    .end local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v34    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    :cond_4d
    move-object/from16 v8, v34

    .end local v34    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljxl/biff/DataValidityListRecord;->getObjectId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v7, v33

    .end local v33    # "objectIds":Ljava/util/ArrayList;
    .local v7, "objectIds":Ljava/util/ArrayList;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1001
    new-instance v1, Ljxl/biff/DataValidation;

    invoke-direct {v1, v0}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    goto :goto_14

    .line 1005
    :cond_4e
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "object id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljxl/biff/DataValidityListRecord;->getObjectId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " referenced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by data validity list record not found - ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1008
    .end local v0    # "dvlr":Ljxl/biff/DataValidityListRecord;
    :goto_14
    move-object v2, v8

    .end local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v2    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    :goto_15
    move-object/from16 v33, v7

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    move/from16 v12, v29

    move/from16 v11, v30

    move-object/from16 v7, v32

    move-object v13, v2

    goto/16 :goto_26

    .line 973
    .end local v2    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .end local v7    # "objectIds":Ljava/util/ArrayList;
    .restart local v33    # "objectIds":Ljava/util/ArrayList;
    .restart local v34    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    :cond_4f
    move-object/from16 v7, v33

    move-object/from16 v8, v34

    .end local v33    # "objectIds":Ljava/util/ArrayList;
    .end local v34    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v7    # "objectIds":Ljava/util/ArrayList;
    .restart local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    move-object/from16 v34, v11

    move-object v11, v8

    goto/16 :goto_25

    .line 1010
    .end local v7    # "objectIds":Ljava/util/ArrayList;
    .end local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v33    # "objectIds":Ljava/util/ArrayList;
    .restart local v34    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    :cond_50
    move-object/from16 v7, v33

    move-object/from16 v8, v34

    .end local v33    # "objectIds":Ljava/util/ArrayList;
    .end local v34    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v7    # "objectIds":Ljava/util/ArrayList;
    .restart local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    sget-object v0, Ljxl/biff/Type;->HCENTER:Ljxl/biff/Type;

    if-ne v15, v0, :cond_51

    .line 1012
    new-instance v0, Ljxl/read/biff/CentreRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/CentreRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1013
    .local v0, "hr":Ljxl/read/biff/CentreRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/CentreRecord;->isCentre()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setHorizontalCentre(Z)V

    .line 1014
    .end local v0    # "hr":Ljxl/read/biff/CentreRecord;
    move-object/from16 v33, v7

    move-object/from16 v34, v11

    move-object v11, v8

    goto/16 :goto_25

    .line 1015
    :cond_51
    sget-object v0, Ljxl/biff/Type;->VCENTER:Ljxl/biff/Type;

    if-ne v15, v0, :cond_52

    .line 1017
    new-instance v0, Ljxl/read/biff/CentreRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/CentreRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1018
    .local v0, "vc":Ljxl/read/biff/CentreRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/CentreRecord;->isCentre()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setVerticalCentre(Z)V

    .line 1019
    .end local v0    # "vc":Ljxl/read/biff/CentreRecord;
    move-object/from16 v33, v7

    move-object/from16 v34, v11

    move-object v11, v8

    goto/16 :goto_25

    .line 1020
    :cond_52
    sget-object v0, Ljxl/biff/Type;->DV:Ljxl/biff/Type;

    if-ne v15, v0, :cond_55

    .line 1022
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getCellValidationDisabled()Z

    move-result v0

    if-nez v0, :cond_54

    .line 1024
    new-instance v0, Ljxl/biff/DataValiditySettingsRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v2

    invoke-direct {v0, v14, v1, v1, v2}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 1029
    .local v0, "dvsr":Ljxl/biff/DataValiditySettingsRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v1, :cond_53

    .line 1031
    invoke-virtual {v1, v0}, Ljxl/biff/DataValidation;->add(Ljxl/biff/DataValiditySettingsRecord;)V

    .line 1032
    invoke-virtual {v0}, Ljxl/biff/DataValiditySettingsRecord;->getFirstColumn()I

    move-result v2

    invoke-virtual {v0}, Ljxl/biff/DataValiditySettingsRecord;->getFirstRow()I

    move-result v3

    invoke-virtual {v0}, Ljxl/biff/DataValiditySettingsRecord;->getLastColumn()I

    move-result v4

    invoke-virtual {v0}, Ljxl/biff/DataValiditySettingsRecord;->getLastRow()I

    move-result v5

    move-object/from16 v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Ljxl/read/biff/SheetReader;->addCellValidation(IIIILjxl/biff/DataValiditySettingsRecord;)V

    goto :goto_16

    .line 1040
    :cond_53
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v2, "cannot add data validity settings"

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1042
    .end local v0    # "dvsr":Ljxl/biff/DataValiditySettingsRecord;
    :goto_16
    move-object/from16 v33, v7

    move-object/from16 v34, v11

    move-object v11, v8

    goto/16 :goto_25

    .line 1022
    :cond_54
    move-object/from16 v33, v7

    move-object/from16 v34, v11

    move-object v11, v8

    goto/16 :goto_25

    .line 1044
    :cond_55
    sget-object v0, Ljxl/biff/Type;->OBJ:Ljxl/biff/Type;

    if-ne v15, v0, :cond_59

    .line 1046
    new-instance v0, Ljxl/biff/drawing/ObjRecord;

    invoke-direct {v0, v14}, Ljxl/biff/drawing/ObjRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1048
    .end local v32    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .local v0, "objRecord":Ljxl/biff/drawing/ObjRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v1

    if-nez v1, :cond_57

    .line 1053
    if-nez v8, :cond_56

    if-eqz v20, :cond_56

    .line 1055
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v2, "Cannot find drawing record - using continue record"

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1056
    new-instance v1, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual/range {v20 .. v20}, Ljxl/biff/ContinueRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1057
    .end local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v1, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    const/16 v20, 0x0

    goto :goto_17

    .line 1059
    .end local v1    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    :cond_56
    move-object v1, v8

    .end local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v1    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    :goto_17
    move-object/from16 v5, v31

    .end local v31    # "comments":Ljava/util/HashMap;
    .local v5, "comments":Ljava/util/HashMap;
    invoke-direct {v9, v0, v1, v5}, Ljxl/read/biff/SheetReader;->handleObjectRecord(Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/MsoDrawingRecord;Ljava/util/HashMap;)V

    .line 1060
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljxl/biff/drawing/ObjRecord;->getObjectId()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1048
    .end local v1    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .end local v5    # "comments":Ljava/util/HashMap;
    .restart local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v31    # "comments":Ljava/util/HashMap;
    :cond_57
    move-object/from16 v5, v31

    .end local v31    # "comments":Ljava/util/HashMap;
    .restart local v5    # "comments":Ljava/util/HashMap;
    move-object v1, v8

    .line 1064
    .end local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v1    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    :goto_18
    invoke-virtual {v0}, Ljxl/biff/drawing/ObjRecord;->getType()Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v2

    sget-object v3, Ljxl/biff/drawing/ObjRecord;->CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-eq v2, v3, :cond_58

    .line 1066
    const/4 v0, 0x0

    .line 1067
    const/4 v1, 0x0

    move-object/from16 v31, v5

    move-object/from16 v33, v7

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    move/from16 v12, v29

    move/from16 v11, v30

    move-object v7, v0

    move-object v13, v1

    goto/16 :goto_26

    .line 1064
    :cond_58
    move-object/from16 v31, v5

    move-object/from16 v33, v7

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    move/from16 v12, v29

    move/from16 v11, v30

    move-object v7, v0

    move-object v13, v1

    goto/16 :goto_26

    .line 1070
    .end local v0    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .end local v1    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .end local v5    # "comments":Ljava/util/HashMap;
    .restart local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v31    # "comments":Ljava/util/HashMap;
    .restart local v32    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    :cond_59
    move-object/from16 v5, v31

    .end local v31    # "comments":Ljava/util/HashMap;
    .restart local v5    # "comments":Ljava/util/HashMap;
    sget-object v0, Ljxl/biff/Type;->MSODRAWING:Ljxl/biff/Type;

    if-ne v15, v0, :cond_5d

    .line 1072
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1074
    if-eqz v8, :cond_5a

    .line 1078
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {v8}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    .line 1080
    :cond_5a
    new-instance v0, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v0, v14}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1082
    .end local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v0, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    if-eqz v16, :cond_5b

    .line 1084
    invoke-virtual {v0}, Ljxl/biff/drawing/MsoDrawingRecord;->setFirst()V

    .line 1085
    const/4 v1, 0x0

    move/from16 v16, v1

    move-object/from16 v31, v5

    move-object/from16 v33, v7

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    move/from16 v12, v29

    move/from16 v11, v30

    move-object/from16 v7, v32

    move-object v13, v0

    .end local v16    # "firstMsoRecord":Z
    .local v1, "firstMsoRecord":Z
    goto/16 :goto_26

    .line 1082
    .end local v1    # "firstMsoRecord":Z
    .restart local v16    # "firstMsoRecord":Z
    :cond_5b
    move-object/from16 v31, v5

    move-object/from16 v33, v7

    move-object v6, v11

    move-object v5, v12

    move-object v8, v13

    move/from16 v12, v29

    move/from16 v11, v30

    move-object/from16 v7, v32

    move-object v13, v0

    goto/16 :goto_26

    .line 1072
    .end local v0    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    :cond_5c
    move-object/from16 v31, v5

    move-object/from16 v33, v7

    move-object/from16 v34, v11

    move-object v11, v8

    goto/16 :goto_25

    .line 1089
    :cond_5d
    sget-object v0, Ljxl/biff/Type;->BUTTONPROPERTYSET:Ljxl/biff/Type;

    if-ne v15, v0, :cond_5e

    .line 1091
    new-instance v0, Ljxl/read/biff/ButtonPropertySetRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/ButtonPropertySetRecord;-><init>(Ljxl/read/biff/Record;)V

    iput-object v0, v9, Ljxl/read/biff/SheetReader;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    move-object/from16 v31, v5

    move-object/from16 v33, v7

    move-object/from16 v34, v11

    move-object v11, v8

    goto/16 :goto_25

    .line 1093
    :cond_5e
    sget-object v0, Ljxl/biff/Type;->CALCMODE:Ljxl/biff/Type;

    if-ne v15, v0, :cond_5f

    .line 1095
    new-instance v0, Ljxl/read/biff/CalcModeRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/CalcModeRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1096
    .local v0, "cmr":Ljxl/read/biff/CalcModeRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/CalcModeRecord;->isAutomatic()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setAutomaticFormulaCalculation(Z)V

    .line 1097
    .end local v0    # "cmr":Ljxl/read/biff/CalcModeRecord;
    move-object/from16 v31, v5

    move-object/from16 v33, v7

    move-object/from16 v34, v11

    move-object v11, v8

    goto/16 :goto_25

    .line 1098
    :cond_5f
    sget-object v0, Ljxl/biff/Type;->SAVERECALC:Ljxl/biff/Type;

    if-ne v15, v0, :cond_60

    .line 1100
    new-instance v0, Ljxl/read/biff/SaveRecalcRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/SaveRecalcRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1101
    .local v0, "cmr":Ljxl/read/biff/SaveRecalcRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/read/biff/SaveRecalcRecord;->getRecalculateOnSave()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/SheetSettings;->setRecalculateFormulasBeforeSave(Z)V

    .line 1102
    .end local v0    # "cmr":Ljxl/read/biff/SaveRecalcRecord;
    move-object/from16 v31, v5

    move-object/from16 v33, v7

    move-object/from16 v34, v11

    move-object v11, v8

    goto/16 :goto_25

    .line 1103
    :cond_60
    sget-object v0, Ljxl/biff/Type;->GUTS:Ljxl/biff/Type;

    if-ne v15, v0, :cond_63

    .line 1105
    new-instance v0, Ljxl/read/biff/GuttersRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/GuttersRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1106
    .local v0, "gr":Ljxl/read/biff/GuttersRecord;
    invoke-virtual {v0}, Ljxl/read/biff/GuttersRecord;->getRowOutlineLevel()I

    move-result v1

    if-lez v1, :cond_61

    invoke-virtual {v0}, Ljxl/read/biff/GuttersRecord;->getRowOutlineLevel()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    goto :goto_19

    :cond_61
    const/4 v2, 0x1

    move v1, v6

    :goto_19
    iput v1, v9, Ljxl/read/biff/SheetReader;->maxRowOutlineLevel:I

    .line 1108
    invoke-virtual {v0}, Ljxl/read/biff/GuttersRecord;->getColumnOutlineLevel()I

    move-result v1

    if-lez v1, :cond_62

    invoke-virtual {v0}, Ljxl/read/biff/GuttersRecord;->getRowOutlineLevel()I

    move-result v1

    sub-int/2addr v1, v2

    goto :goto_1a

    :cond_62
    move v1, v6

    :goto_1a
    iput v1, v9, Ljxl/read/biff/SheetReader;->maxColumnOutlineLevel:I

    .line 1110
    .end local v0    # "gr":Ljxl/read/biff/GuttersRecord;
    move-object/from16 v31, v5

    move-object/from16 v33, v7

    move-object/from16 v34, v11

    move-object v11, v8

    goto/16 :goto_25

    .line 1111
    :cond_63
    sget-object v0, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    if-ne v15, v0, :cond_6b

    .line 1113
    new-instance v0, Ljxl/read/biff/BOFRecord;

    invoke-direct {v0, v14}, Ljxl/read/biff/BOFRecord;-><init>(Ljxl/read/biff/Record;)V

    .line 1114
    .local v0, "br":Ljxl/read/biff/BOFRecord;
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isWorksheet()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 1116
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v1}, Ljxl/read/biff/File;->getPos()I

    move-result v1

    invoke-virtual {v14}, Ljxl/read/biff/Record;->getLength()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v21, v1, -0x4

    .line 1120
    .local v21, "startpos":I
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v1

    move-object/from16 v22, v1

    .line 1121
    .local v22, "r2":Ljxl/read/biff/Record;
    :goto_1b
    invoke-virtual/range {v22 .. v22}, Ljxl/read/biff/Record;->getCode()I

    move-result v1

    sget-object v2, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    iget v2, v2, Ljxl/biff/Type;->value:I

    if-eq v1, v2, :cond_64

    .line 1123
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v22

    goto :goto_1b

    .line 1126
    :cond_64
    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1128
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v1

    if-nez v1, :cond_65

    .line 1130
    sget-object v1, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v2, "only biff8 charts are supported"

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    move-object/from16 v31, v5

    move-object/from16 v33, v7

    move-object/from16 v34, v11

    move-object v11, v8

    goto :goto_1c

    .line 1134
    :cond_65
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    if-nez v1, :cond_66

    .line 1136
    new-instance v1, Ljxl/biff/drawing/DrawingData;

    invoke-direct {v1}, Ljxl/biff/drawing/DrawingData;-><init>()V

    iput-object v1, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 1139
    :cond_66
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v1

    if-nez v1, :cond_67

    .line 1141
    new-instance v23, Ljxl/biff/drawing/Chart;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v1}, Ljxl/read/biff/File;->getPos()I

    move-result v6

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object/from16 v1, v23

    move-object/from16 v24, v2

    move-object v2, v8

    move-object/from16 v25, v3

    move-object/from16 v3, v32

    move-object/from16 v31, v5

    .end local v5    # "comments":Ljava/util/HashMap;
    .restart local v31    # "comments":Ljava/util/HashMap;
    move/from16 v5, v21

    move-object/from16 v33, v7

    .end local v7    # "objectIds":Ljava/util/ArrayList;
    .restart local v33    # "objectIds":Ljava/util/ArrayList;
    move-object/from16 v7, v25

    move-object/from16 v34, v11

    move-object v11, v8

    .end local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v11, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v34, "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    move-object/from16 v8, v24

    invoke-direct/range {v1 .. v8}, Ljxl/biff/drawing/Chart;-><init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;IILjxl/read/biff/File;Ljxl/WorkbookSettings;)V

    .line 1144
    .local v1, "chart":Ljxl/biff/drawing/Chart;
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->charts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 1148
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljxl/biff/drawing/DrawingGroup;->add(Ljxl/biff/drawing/Chart;)V

    goto :goto_1c

    .line 1139
    .end local v1    # "chart":Ljxl/biff/drawing/Chart;
    .end local v31    # "comments":Ljava/util/HashMap;
    .end local v33    # "objectIds":Ljava/util/ArrayList;
    .end local v34    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v5    # "comments":Ljava/util/HashMap;
    .restart local v7    # "objectIds":Ljava/util/ArrayList;
    .restart local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v11, "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    :cond_67
    move-object/from16 v31, v5

    move-object/from16 v33, v7

    move-object/from16 v34, v11

    move-object v11, v8

    .line 1154
    .end local v5    # "comments":Ljava/util/HashMap;
    .end local v7    # "objectIds":Ljava/util/ArrayList;
    .end local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v11, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v31    # "comments":Ljava/util/HashMap;
    .restart local v33    # "objectIds":Ljava/util/ArrayList;
    .restart local v34    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    :cond_68
    :goto_1c
    const/4 v1, 0x0

    .line 1155
    .end local v11    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v1, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    const/4 v7, 0x0

    .end local v32    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .local v7, "objRecord":Ljxl/biff/drawing/ObjRecord;
    goto :goto_1d

    .line 1126
    .end local v1    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .end local v31    # "comments":Ljava/util/HashMap;
    .end local v33    # "objectIds":Ljava/util/ArrayList;
    .end local v34    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v5    # "comments":Ljava/util/HashMap;
    .local v7, "objectIds":Ljava/util/ArrayList;
    .restart local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v11, "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v32    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    :cond_69
    move-object/from16 v31, v5

    move-object/from16 v33, v7

    move-object/from16 v34, v11

    move-object v11, v8

    .end local v5    # "comments":Ljava/util/HashMap;
    .end local v7    # "objectIds":Ljava/util/ArrayList;
    .end local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v11, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v31    # "comments":Ljava/util/HashMap;
    .restart local v33    # "objectIds":Ljava/util/ArrayList;
    .restart local v34    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    move-object v1, v11

    move-object/from16 v7, v32

    .line 1160
    .end local v11    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .end local v32    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .restart local v1    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v7, "objRecord":Ljxl/biff/drawing/ObjRecord;
    :goto_1d
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sheetBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v2}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1162
    const/4 v2, 0x0

    .end local v29    # "cont":Z
    .local v2, "cont":Z
    goto :goto_1e

    .line 1160
    .end local v2    # "cont":Z
    .restart local v29    # "cont":Z
    :cond_6a
    move/from16 v2, v29

    .line 1164
    .end local v0    # "br":Ljxl/read/biff/BOFRecord;
    .end local v21    # "startpos":I
    .end local v22    # "r2":Ljxl/read/biff/Record;
    .end local v29    # "cont":Z
    .restart local v2    # "cont":Z
    :goto_1e
    move-object v5, v12

    move-object v8, v13

    move/from16 v11, v30

    move-object/from16 v6, v34

    move-object v13, v1

    move v12, v2

    goto/16 :goto_26

    .line 1165
    .end local v1    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .end local v2    # "cont":Z
    .end local v31    # "comments":Ljava/util/HashMap;
    .end local v33    # "objectIds":Ljava/util/ArrayList;
    .end local v34    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v5    # "comments":Ljava/util/HashMap;
    .local v7, "objectIds":Ljava/util/ArrayList;
    .restart local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v11, "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v29    # "cont":Z
    .restart local v32    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    :cond_6b
    move-object/from16 v31, v5

    move-object/from16 v33, v7

    move-object/from16 v34, v11

    move-object v11, v8

    .end local v5    # "comments":Ljava/util/HashMap;
    .end local v7    # "objectIds":Ljava/util/ArrayList;
    .end local v8    # "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v11, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .restart local v31    # "comments":Ljava/util/HashMap;
    .restart local v33    # "objectIds":Ljava/util/ArrayList;
    .restart local v34    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    sget-object v0, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    if-ne v15, v0, :cond_73

    .line 1167
    const/4 v0, 0x0

    move-object v5, v12

    move-object v8, v13

    move-object/from16 v7, v32

    move-object/from16 v6, v34

    move v12, v0

    move-object v13, v11

    move/from16 v11, v30

    .end local v29    # "cont":Z
    .local v0, "cont":Z
    goto/16 :goto_26

    .line 628
    .end local v0    # "cont":Z
    .local v11, "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v29    # "cont":Z
    .local v34, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    :cond_6c
    move-object/from16 v35, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v35

    .line 630
    .local v11, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v34, "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    :goto_1f
    new-instance v0, Ljxl/read/biff/FormulaRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    iget-object v5, v9, Ljxl/read/biff/SheetReader;->workbookSettings:Ljxl/WorkbookSettings;

    move-object/from16 v21, v0

    move-object/from16 v22, v14

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    invoke-direct/range {v21 .. v28}, Ljxl/read/biff/FormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V

    move-object v1, v0

    .line 638
    .local v1, "fr":Ljxl/read/biff/FormulaRecord;
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->isShared()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 640
    move-object v0, v10

    .line 641
    .local v0, "prevSharedFormula":Ljxl/read/biff/BaseSharedFormulaRecord;
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/BaseSharedFormulaRecord;

    .line 644
    .end local v10    # "sharedFormula":Ljxl/read/biff/BaseSharedFormulaRecord;
    .local v2, "sharedFormula":Ljxl/read/biff/BaseSharedFormulaRecord;
    invoke-direct {v9, v2}, Ljxl/read/biff/SheetReader;->addToSharedFormulas(Ljxl/read/biff/BaseSharedFormulaRecord;)Z

    move-result v3

    .line 646
    .end local v30    # "sharedFormulaAdded":Z
    .local v3, "sharedFormulaAdded":Z
    if-eqz v3, :cond_6d

    .line 648
    move-object v2, v0

    move-object v10, v2

    goto :goto_20

    .line 646
    :cond_6d
    move-object v10, v2

    .line 653
    .end local v2    # "sharedFormula":Ljxl/read/biff/BaseSharedFormulaRecord;
    .restart local v10    # "sharedFormula":Ljxl/read/biff/BaseSharedFormulaRecord;
    :goto_20
    if-nez v3, :cond_6e

    if-eqz v0, :cond_6e

    .line 660
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->revertSharedFormula(Ljxl/read/biff/BaseSharedFormulaRecord;)Ljxl/Cell;

    move-result-object v2

    invoke-direct {v9, v2}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 662
    .end local v0    # "prevSharedFormula":Ljxl/read/biff/BaseSharedFormulaRecord;
    :cond_6e
    goto/16 :goto_22

    .line 665
    .end local v3    # "sharedFormulaAdded":Z
    .restart local v30    # "sharedFormulaAdded":Z
    :cond_6f
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v2

    .line 669
    .local v2, "cell":Ljxl/Cell;
    :try_start_0
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/CellValue;->getType()Ljxl/CellType;

    move-result-object v0

    sget-object v3, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v0, v3, :cond_70

    .line 671
    invoke-virtual {v1}, Ljxl/read/biff/FormulaRecord;->getFormula()Ljxl/read/biff/CellValue;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ljxl/read/biff/NumberFormulaRecord;

    .line 672
    .local v22, "nfr":Ljxl/read/biff/NumberFormulaRecord;
    iget-object v0, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual/range {v22 .. v22}, Ljxl/read/biff/NumberFormulaRecord;->getXFIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 674
    new-instance v0, Ljxl/read/biff/DateFormulaRecord;

    iget-object v3, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v4, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    iget-boolean v5, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v6, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object/from16 v21, v0

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v27, v6

    invoke-direct/range {v21 .. v27}, Ljxl/read/biff/DateFormulaRecord;-><init>(Ljxl/read/biff/NumberFormulaRecord;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;ZLjxl/read/biff/SheetImpl;)V

    move-object v2, v0

    .line 683
    .end local v22    # "nfr":Ljxl/read/biff/NumberFormulaRecord;
    :cond_70
    invoke-direct {v9, v2}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V
    :try_end_0
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    goto :goto_21

    .line 685
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljxl/biff/formula/FormulaException;
    sget-object v3, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljxl/Cell;->getColumn()I

    move-result v5

    invoke-interface {v2}, Ljxl/Cell;->getRow()I

    move-result v6

    invoke-static {v5, v6}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 694
    .end local v0    # "e":Ljxl/biff/formula/FormulaException;
    .end local v1    # "fr":Ljxl/read/biff/FormulaRecord;
    .end local v2    # "cell":Ljxl/Cell;
    :goto_21
    move/from16 v3, v30

    .end local v30    # "sharedFormulaAdded":Z
    .restart local v3    # "sharedFormulaAdded":Z
    :goto_22
    move-object v5, v12

    move-object v8, v13

    move/from16 v12, v29

    move-object/from16 v7, v32

    move-object/from16 v6, v34

    move-object v13, v11

    move v11, v3

    goto :goto_26

    .line 418
    .end local v29    # "cont":Z
    .end local v31    # "comments":Ljava/util/HashMap;
    .end local v32    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .end local v33    # "objectIds":Ljava/util/ArrayList;
    .end local v34    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .local v3, "type":Ljxl/biff/Type;
    .restart local v4    # "r":Ljxl/read/biff/Record;
    .restart local v6    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .local v7, "objRecord":Ljxl/biff/drawing/ObjRecord;
    .local v8, "condFormat":Ljxl/biff/ConditionalFormat;
    .local v11, "sharedFormulaAdded":Z
    .local v12, "cont":Z
    .local v13, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v14, "comments":Ljava/util/HashMap;
    .local v15, "objectIds":Ljava/util/ArrayList;
    .restart local v23    # "filterMode":Ljxl/biff/FilterModeRecord;
    :cond_71
    move-object/from16 v34, v6

    move-object/from16 v32, v7

    move/from16 v30, v11

    move/from16 v29, v12

    move-object v11, v13

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object/from16 v12, v23

    move-object v15, v3

    move-object v14, v4

    move-object v13, v8

    .line 420
    .end local v3    # "type":Ljxl/biff/Type;
    .end local v4    # "r":Ljxl/read/biff/Record;
    .end local v6    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .end local v7    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .end local v8    # "condFormat":Ljxl/biff/ConditionalFormat;
    .end local v23    # "filterMode":Ljxl/biff/FilterModeRecord;
    .local v11, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v12, "filterMode":Ljxl/biff/FilterModeRecord;
    .local v13, "condFormat":Ljxl/biff/ConditionalFormat;
    .local v14, "r":Ljxl/read/biff/Record;
    .local v15, "type":Ljxl/biff/Type;
    .restart local v29    # "cont":Z
    .restart local v30    # "sharedFormulaAdded":Z
    .restart local v31    # "comments":Ljava/util/HashMap;
    .restart local v32    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .restart local v33    # "objectIds":Ljava/util/ArrayList;
    .restart local v34    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    :goto_23
    new-instance v0, Ljxl/read/biff/RKRecord;

    iget-object v1, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    invoke-direct {v0, v14, v1, v2}, Ljxl/read/biff/RKRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 422
    .local v0, "rkr":Ljxl/read/biff/RKRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0}, Ljxl/read/biff/RKRecord;->getXFIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/biff/FormattingRecords;->isDate(I)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 424
    new-instance v1, Ljxl/read/biff/DateRecord;

    invoke-virtual {v0}, Ljxl/read/biff/RKRecord;->getXFIndex()I

    move-result v5

    iget-object v6, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-boolean v7, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    iget-object v8, v9, Ljxl/read/biff/SheetReader;->sheet:Ljxl/read/biff/SheetImpl;

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Ljxl/read/biff/DateRecord;-><init>(Ljxl/NumberCell;ILjxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;)V

    .line 426
    .local v1, "dc":Ljxl/DateCell;
    invoke-direct {v9, v1}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 427
    .end local v1    # "dc":Ljxl/DateCell;
    goto :goto_24

    .line 430
    :cond_72
    invoke-direct {v9, v0}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 432
    .end local v0    # "rkr":Ljxl/read/biff/RKRecord;
    :goto_24
    nop

    .line 1169
    .end local v29    # "cont":Z
    .end local v30    # "sharedFormulaAdded":Z
    .end local v31    # "comments":Ljava/util/HashMap;
    .end local v32    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .end local v33    # "objectIds":Ljava/util/ArrayList;
    .end local v34    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v4    # "r":Ljxl/read/biff/Record;
    .restart local v6    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .restart local v7    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .restart local v8    # "condFormat":Ljxl/biff/ConditionalFormat;
    .local v11, "sharedFormulaAdded":Z
    .local v12, "cont":Z
    .local v13, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v14, "comments":Ljava/util/HashMap;
    .local v15, "objectIds":Ljava/util/ArrayList;
    .restart local v23    # "filterMode":Ljxl/biff/FilterModeRecord;
    :cond_73
    :goto_25
    move-object v5, v12

    move-object v8, v13

    move/from16 v12, v29

    move-object/from16 v7, v32

    move-object/from16 v6, v34

    move-object v13, v11

    move/from16 v11, v30

    .end local v4    # "r":Ljxl/read/biff/Record;
    .end local v15    # "objectIds":Ljava/util/ArrayList;
    .end local v23    # "filterMode":Ljxl/biff/FilterModeRecord;
    .local v5, "filterMode":Ljxl/biff/FilterModeRecord;
    .local v14, "r":Ljxl/read/biff/Record;
    .restart local v31    # "comments":Ljava/util/HashMap;
    .restart local v33    # "objectIds":Ljava/util/ArrayList;
    :goto_26
    move-object v0, v14

    move-object/from16 v14, v31

    move-object/from16 v15, v33

    goto/16 :goto_0

    .line 1172
    .end local v31    # "comments":Ljava/util/HashMap;
    .end local v33    # "objectIds":Ljava/util/ArrayList;
    .local v0, "r":Ljxl/read/biff/Record;
    .local v14, "comments":Ljava/util/HashMap;
    .restart local v15    # "objectIds":Ljava/util/ArrayList;
    :cond_74
    move-object/from16 v34, v6

    move-object/from16 v32, v7

    move/from16 v30, v11

    move/from16 v29, v12

    move-object v11, v13

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    move-object v12, v5

    move-object v13, v8

    .end local v5    # "filterMode":Ljxl/biff/FilterModeRecord;
    .end local v6    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    .end local v7    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .end local v8    # "condFormat":Ljxl/biff/ConditionalFormat;
    .end local v14    # "comments":Ljava/util/HashMap;
    .end local v15    # "objectIds":Ljava/util/ArrayList;
    .local v11, "msoRecord":Ljxl/biff/drawing/MsoDrawingRecord;
    .local v12, "filterMode":Ljxl/biff/FilterModeRecord;
    .local v13, "condFormat":Ljxl/biff/ConditionalFormat;
    .restart local v29    # "cont":Z
    .restart local v30    # "sharedFormulaAdded":Z
    .restart local v31    # "comments":Ljava/util/HashMap;
    .restart local v32    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .restart local v33    # "objectIds":Ljava/util/ArrayList;
    .restart local v34    # "autoFilterInfo":Ljxl/biff/AutoFilterInfoRecord;
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->excelFile:Ljxl/read/biff/File;

    invoke-virtual {v1}, Ljxl/read/biff/File;->restorePos()V

    .line 1175
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->outOfBoundsCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_75

    .line 1177
    invoke-direct/range {p0 .. p0}, Ljxl/read/biff/SheetReader;->handleOutOfBoundsCells()V

    .line 1181
    :cond_75
    iget-object v1, v9, Ljxl/read/biff/SheetReader;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1183
    .local v1, "i":Ljava/util/Iterator;
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/SharedFormulaRecord;

    .line 1187
    .local v2, "sfr":Ljxl/read/biff/SharedFormulaRecord;
    iget-object v3, v9, Ljxl/read/biff/SheetReader;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-boolean v4, v9, Ljxl/read/biff/SheetReader;->nineteenFour:Z

    invoke-virtual {v2, v3, v4}, Ljxl/read/biff/SharedFormulaRecord;->getFormulas(Ljxl/biff/FormattingRecords;Z)[Ljxl/Cell;

    move-result-object v3

    .line 1189
    .local v3, "sfnr":[Ljxl/Cell;
    const/4 v4, 0x0

    .local v4, "sf":I
    :goto_28
    array-length v5, v3

    if-ge v4, v5, :cond_76

    .line 1191
    aget-object v5, v3, v4

    invoke-direct {v9, v5}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 1189
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 1193
    .end local v2    # "sfr":Ljxl/read/biff/SharedFormulaRecord;
    .end local v3    # "sfnr":[Ljxl/Cell;
    .end local v4    # "sf":I
    :cond_76
    goto :goto_27

    .line 1197
    :cond_77
    if-nez v30, :cond_78

    if-eqz v10, :cond_78

    .line 1199
    invoke-direct {v9, v10}, Ljxl/read/biff/SheetReader;->revertSharedFormula(Ljxl/read/biff/BaseSharedFormulaRecord;)Ljxl/Cell;

    move-result-object v2

    invoke-direct {v9, v2}, Ljxl/read/biff/SheetReader;->addCell(Ljxl/Cell;)V

    .line 1204
    :cond_78
    if-eqz v11, :cond_79

    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 1206
    iget-object v2, v9, Ljxl/read/biff/SheetReader;->workbook:Ljxl/read/biff/WorkbookParser;

    invoke-virtual {v2}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v2

    move-object/from16 v5, v32

    .end local v32    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .local v5, "objRecord":Ljxl/biff/drawing/ObjRecord;
    invoke-virtual {v2, v11, v5}, Ljxl/biff/drawing/DrawingGroup;->setDrawingsOmitted(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;)V

    goto :goto_29

    .line 1204
    .end local v5    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .restart local v32    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    :cond_79
    move-object/from16 v5, v32

    .line 1210
    .end local v32    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    .restart local v5    # "objRecord":Ljxl/biff/drawing/ObjRecord;
    :goto_29
    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7a

    .line 1212
    sget-object v2, Ljxl/read/biff/SheetReader;->logger:Ljxl/common/Logger;

    const-string v3, "Not all comments have a corresponding Note record"

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1214
    :cond_7a
    return-void
.end method

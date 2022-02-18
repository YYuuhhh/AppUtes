.class public Ljxl/read/biff/SheetImpl;
.super Ljava/lang/Object;
.source "SheetImpl.java"

# interfaces
.implements Ljxl/Sheet;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

.field private cells:[[Ljxl/Cell;

.field private charts:Ljava/util/ArrayList;

.field private columnBreaks:[I

.field private columnInfos:[Ljxl/read/biff/ColumnInfoRecord;

.field private columnInfosArray:Ljava/util/ArrayList;

.field private columnInfosInitialized:Z

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawings:Ljava/util/ArrayList;

.field private excelFile:Ljxl/read/biff/File;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private hidden:Z

.field private hyperlinks:Ljava/util/ArrayList;

.field private images:Ljava/util/ArrayList;

.field private localNames:Ljava/util/ArrayList;

.field private maxColumnOutlineLevel:I

.field private maxRowOutlineLevel:I

.field private mergedCells:[Ljxl/Range;

.field private name:Ljava/lang/String;

.field private nineteenFour:Z

.field private numCols:I

.field private numRows:I

.field private plsRecord:Ljxl/read/biff/PLSRecord;

.field private rowBreaks:[I

.field private rowProperties:Ljava/util/ArrayList;

.field private rowRecords:[Ljxl/read/biff/RowRecord;

.field private rowRecordsInitialized:Z

.field private settings:Ljxl/SheetSettings;

.field private sharedFormulas:Ljava/util/ArrayList;

.field private sharedStrings:Ljxl/read/biff/SSTRecord;

.field private sheetBof:Ljxl/read/biff/BOFRecord;

.field private startPosition:I

.field private workbook:Ljxl/read/biff/WorkbookParser;

.field private workbookBof:Ljxl/read/biff/BOFRecord;

.field private workbookSettings:Ljxl/WorkbookSettings;

.field private workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Ljxl/read/biff/SheetImpl;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SheetImpl;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;)V
    .locals 4
    .param p1, "f"    # Ljxl/read/biff/File;
    .param p2, "sst"    # Ljxl/read/biff/SSTRecord;
    .param p3, "fr"    # Ljxl/biff/FormattingRecords;
    .param p4, "sb"    # Ljxl/read/biff/BOFRecord;
    .param p5, "wb"    # Ljxl/read/biff/BOFRecord;
    .param p6, "nf"    # Z
    .param p7, "wp"    # Ljxl/read/biff/WorkbookParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Ljxl/read/biff/SheetImpl;->excelFile:Ljxl/read/biff/File;

    .line 284
    iput-object p2, p0, Ljxl/read/biff/SheetImpl;->sharedStrings:Ljxl/read/biff/SSTRecord;

    .line 285
    iput-object p3, p0, Ljxl/read/biff/SheetImpl;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 286
    iput-object p4, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    .line 287
    iput-object p5, p0, Ljxl/read/biff/SheetImpl;->workbookBof:Ljxl/read/biff/BOFRecord;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->sharedFormulas:Ljava/util/ArrayList;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->rowProperties:Ljava/util/ArrayList;

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosInitialized:Z

    .line 293
    iput-boolean v0, p0, Ljxl/read/biff/SheetImpl;->rowRecordsInitialized:Z

    .line 294
    iput-boolean p6, p0, Ljxl/read/biff/SheetImpl;->nineteenFour:Z

    .line 295
    iput-object p7, p0, Ljxl/read/biff/SheetImpl;->workbook:Ljxl/read/biff/WorkbookParser;

    .line 296
    invoke-virtual {p7}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    .line 299
    invoke-virtual {p1}, Ljxl/read/biff/File;->getPos()I

    move-result v0

    iput v0, p0, Ljxl/read/biff/SheetImpl;->startPosition:I

    .line 301
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget v0, p0, Ljxl/read/biff/SheetImpl;->startPosition:I

    iget-object v1, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    iput v0, p0, Ljxl/read/biff/SheetImpl;->startPosition:I

    .line 307
    :cond_0
    const/4 v0, 0x0

    .line 308
    .local v0, "r":Ljxl/read/biff/Record;
    const/4 v1, 0x1

    .line 310
    .local v1, "bofs":I
    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    .line 312
    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getCode()I

    move-result v2

    sget-object v3, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    iget v3, v3, Ljxl/biff/Type;->value:I

    if-ne v2, v3, :cond_2

    .line 317
    add-int/lit8 v1, v1, -0x1

    .line 320
    :cond_2
    invoke-virtual {v0}, Ljxl/read/biff/Record;->getCode()I

    move-result v2

    sget-object v3, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    iget v3, v3, Ljxl/biff/Type;->value:I

    if-ne v2, v3, :cond_1

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_3
    return-void
.end method

.method private initializeImages()V
    .locals 4

    .line 1160
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->images:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1162
    return-void

    .line 1165
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->images:Ljava/util/ArrayList;

    .line 1166
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->getDrawings()[Ljxl/biff/drawing/DrawingGroupObject;

    move-result-object v0

    .line 1168
    .local v0, "dgos":[Ljxl/biff/drawing/DrawingGroupObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1170
    aget-object v2, v0, v1

    instance-of v2, v2, Ljxl/biff/drawing/Drawing;

    if-eqz v2, :cond_1

    .line 1172
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->images:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1175
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method addLocalName(Ljxl/read/biff/NameRecord;)V
    .locals 1
    .param p1, "nr"    # Ljxl/read/biff/NameRecord;

    .line 1202
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->localNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->localNames:Ljava/util/ArrayList;

    .line 1207
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->localNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    return-void
.end method

.method final clear()V
    .locals 2

    .line 678
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [[Ljxl/Cell;

    iput-object v1, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    .line 679
    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->mergedCells:[Ljxl/Range;

    .line 680
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 681
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 682
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosInitialized:Z

    .line 685
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 689
    :cond_0
    return-void
.end method

.method public findCell(Ljava/lang/String;)Ljxl/Cell;
    .locals 2
    .param p1, "contents"    # Ljava/lang/String;

    .line 378
    new-instance v0, Ljxl/biff/CellFinder;

    invoke-direct {v0, p0}, Ljxl/biff/CellFinder;-><init>(Ljxl/Sheet;)V

    .line 379
    .local v0, "cellFinder":Ljxl/biff/CellFinder;
    invoke-virtual {v0, p1}, Ljxl/biff/CellFinder;->findCell(Ljava/lang/String;)Ljxl/Cell;

    move-result-object v1

    return-object v1
.end method

.method public findCell(Ljava/lang/String;IIIIZ)Ljxl/Cell;
    .locals 7
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "firstCol"    # I
    .param p3, "firstRow"    # I
    .param p4, "lastCol"    # I
    .param p5, "lastRow"    # I
    .param p6, "reverse"    # Z

    .line 403
    new-instance v0, Ljxl/biff/CellFinder;

    invoke-direct {v0, p0}, Ljxl/biff/CellFinder;-><init>(Ljxl/Sheet;)V

    .line 404
    .local v0, "cellFinder":Ljxl/biff/CellFinder;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljxl/biff/CellFinder;->findCell(Ljava/lang/String;IIIIZ)Ljxl/Cell;

    move-result-object v1

    return-object v1
.end method

.method public findCell(Ljava/util/regex/Pattern;IIIIZ)Ljxl/Cell;
    .locals 7
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "firstCol"    # I
    .param p3, "firstRow"    # I
    .param p4, "lastCol"    # I
    .param p5, "lastRow"    # I
    .param p6, "reverse"    # Z

    .line 433
    new-instance v0, Ljxl/biff/CellFinder;

    invoke-direct {v0, p0}, Ljxl/biff/CellFinder;-><init>(Ljxl/Sheet;)V

    .line 434
    .local v0, "cellFinder":Ljxl/biff/CellFinder;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljxl/biff/CellFinder;->findCell(Ljava/util/regex/Pattern;IIIIZ)Ljxl/Cell;

    move-result-object v1

    return-object v1
.end method

.method public findLabelCell(Ljava/lang/String;)Ljxl/LabelCell;
    .locals 2
    .param p1, "contents"    # Ljava/lang/String;

    .line 456
    new-instance v0, Ljxl/biff/CellFinder;

    invoke-direct {v0, p0}, Ljxl/biff/CellFinder;-><init>(Ljxl/Sheet;)V

    .line 457
    .local v0, "cellFinder":Ljxl/biff/CellFinder;
    invoke-virtual {v0, p1}, Ljxl/biff/CellFinder;->findLabelCell(Ljava/lang/String;)Ljxl/LabelCell;

    move-result-object v1

    return-object v1
.end method

.method public getAutoFilter()Ljxl/biff/AutoFilter;
    .locals 1

    .line 1230
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->autoFilter:Ljxl/biff/AutoFilter;

    return-object v0
.end method

.method public getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;
    .locals 1

    .line 1121
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    return-object v0
.end method

.method public getCell(II)Ljxl/Cell;
    .locals 2
    .param p1, "column"    # I
    .param p2, "row"    # I

    .line 351
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 356
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    .line 358
    .local v0, "c":Ljxl/Cell;
    if-nez v0, :cond_1

    .line 360
    new-instance v1, Ljxl/biff/EmptyCell;

    invoke-direct {v1, p1, p2}, Ljxl/biff/EmptyCell;-><init>(II)V

    move-object v0, v1

    .line 361
    iget-object v1, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    aget-object v1, v1, p2

    aput-object v0, v1, p1

    .line 364
    :cond_1
    return-object v0
.end method

.method public getCell(Ljava/lang/String;)Ljxl/Cell;
    .locals 2
    .param p1, "loc"    # Ljava/lang/String;

    .line 336
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljxl/read/biff/SheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v0

    return-object v0
.end method

.method public final getCharts()[Ljxl/biff/drawing/Chart;
    .locals 3

    .line 919
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->charts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/biff/drawing/Chart;

    .line 921
    .local v0, "ch":[Ljxl/biff/drawing/Chart;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 923
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->charts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/drawing/Chart;

    aput-object v2, v0, v1

    .line 921
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 925
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getColumn(I)[Ljxl/Cell;
    .locals 5
    .param p1, "col"    # I

    .line 546
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    if-nez v0, :cond_0

    .line 548
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 552
    :cond_0
    const/4 v0, 0x0

    .line 553
    .local v0, "found":Z
    iget v1, p0, Ljxl/read/biff/SheetImpl;->numRows:I

    add-int/lit8 v1, v1, -0x1

    .line 554
    .local v1, "row":I
    :goto_0
    if-ltz v1, :cond_2

    if-nez v0, :cond_2

    .line 556
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    aget-object v2, v2, v1

    aget-object v2, v2, p1

    if-eqz v2, :cond_1

    .line 558
    const/4 v0, 0x1

    goto :goto_0

    .line 562
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 567
    :cond_2
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljxl/Cell;

    .line 569
    .local v2, "c":[Ljxl/Cell;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-gt v3, v1, :cond_3

    .line 571
    invoke-virtual {p0, p1, v3}, Ljxl/read/biff/SheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v4

    aput-object v4, v2, v3

    .line 569
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 573
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method

.method public getColumnFormat(I)Ljxl/format/CellFormat;
    .locals 2
    .param p1, "col"    # I

    .line 992
    invoke-virtual {p0, p1}, Ljxl/read/biff/SheetImpl;->getColumnView(I)Ljxl/CellView;

    move-result-object v0

    .line 993
    .local v0, "cv":Ljxl/CellView;
    invoke-virtual {v0}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v1

    return-object v1
.end method

.method public getColumnInfo(I)Ljxl/read/biff/ColumnInfoRecord;
    .locals 6
    .param p1, "col"    # I

    .line 616
    iget-boolean v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosInitialized:Z

    if-nez v0, :cond_3

    .line 619
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 620
    .local v0, "i":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 621
    .local v1, "cir":Ljxl/read/biff/ColumnInfoRecord;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 623
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljxl/read/biff/ColumnInfoRecord;

    .line 625
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljxl/read/biff/ColumnInfoRecord;->getStartColumn()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 626
    .local v2, "startcol":I
    iget-object v4, p0, Ljxl/read/biff/SheetImpl;->columnInfos:[Ljxl/read/biff/ColumnInfoRecord;

    array-length v4, v4

    sub-int/2addr v4, v3

    invoke-virtual {v1}, Ljxl/read/biff/ColumnInfoRecord;->getEndColumn()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 628
    .local v3, "endcol":I
    move v4, v2

    .local v4, "c":I
    :goto_1
    if-gt v4, v3, :cond_0

    .line 630
    iget-object v5, p0, Ljxl/read/biff/SheetImpl;->columnInfos:[Ljxl/read/biff/ColumnInfoRecord;

    aput-object v1, v5, v4

    .line 628
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 633
    .end local v4    # "c":I
    :cond_0
    if-ge v3, v2, :cond_1

    .line 635
    iget-object v4, p0, Ljxl/read/biff/SheetImpl;->columnInfos:[Ljxl/read/biff/ColumnInfoRecord;

    aput-object v1, v4, v2

    .line 637
    .end local v2    # "startcol":I
    .end local v3    # "endcol":I
    :cond_1
    goto :goto_0

    .line 639
    :cond_2
    iput-boolean v3, p0, Ljxl/read/biff/SheetImpl;->columnInfosInitialized:Z

    .line 642
    .end local v0    # "i":Ljava/util/Iterator;
    .end local v1    # "cir":Ljxl/read/biff/ColumnInfoRecord;
    :cond_3
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfos:[Ljxl/read/biff/ColumnInfoRecord;

    array-length v1, v0

    if-ge p1, v1, :cond_4

    aget-object v0, v0, p1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public getColumnInfos()[Ljxl/read/biff/ColumnInfoRecord;
    .locals 3

    .line 653
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/ColumnInfoRecord;

    .line 654
    .local v0, "infos":[Ljxl/read/biff/ColumnInfoRecord;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 656
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/ColumnInfoRecord;

    aput-object v2, v0, v1

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final getColumnPageBreaks()[I
    .locals 1

    .line 909
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnBreaks:[I

    return-object v0
.end method

.method public getColumnView(I)Ljxl/CellView;
    .locals 4
    .param p1, "col"    # I

    .line 1017
    invoke-virtual {p0, p1}, Ljxl/read/biff/SheetImpl;->getColumnInfo(I)Ljxl/read/biff/ColumnInfoRecord;

    move-result-object v0

    .line 1018
    .local v0, "cir":Ljxl/read/biff/ColumnInfoRecord;
    new-instance v1, Ljxl/CellView;

    invoke-direct {v1}, Ljxl/CellView;-><init>()V

    .line 1020
    .local v1, "cv":Ljxl/CellView;
    if-eqz v0, :cond_0

    .line 1022
    invoke-virtual {v0}, Ljxl/read/biff/ColumnInfoRecord;->getWidth()I

    move-result v2

    div-int/lit16 v2, v2, 0x100

    invoke-virtual {v1, v2}, Ljxl/CellView;->setDimension(I)V

    .line 1023
    invoke-virtual {v0}, Ljxl/read/biff/ColumnInfoRecord;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/CellView;->setSize(I)V

    .line 1024
    invoke-virtual {v0}, Ljxl/read/biff/ColumnInfoRecord;->getHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/CellView;->setHidden(Z)V

    .line 1025
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0}, Ljxl/read/biff/ColumnInfoRecord;->getXFIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/CellView;->setFormat(Ljxl/format/CellFormat;)V

    goto :goto_0

    .line 1029
    :cond_0
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/SheetSettings;->getDefaultColumnWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/CellView;->setDimension(I)V

    .line 1030
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/SheetSettings;->getDefaultColumnWidth()I

    move-result v2

    mul-int/lit16 v2, v2, 0x100

    invoke-virtual {v1, v2}, Ljxl/CellView;->setSize(I)V

    .line 1033
    :goto_0
    return-object v1
.end method

.method public getColumnWidth(I)I
    .locals 1
    .param p1, "col"    # I

    .line 1005
    invoke-virtual {p0, p1}, Ljxl/read/biff/SheetImpl;->getColumnView(I)Ljxl/CellView;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/CellView;->getSize()I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public getColumns()I
    .locals 1

    .line 486
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 491
    :cond_0
    iget v0, p0, Ljxl/read/biff/SheetImpl;->numCols:I

    return v0
.end method

.method public getConditionalFormats()[Ljxl/biff/ConditionalFormat;
    .locals 2

    .line 1217
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/biff/ConditionalFormat;

    .line 1219
    .local v0, "formats":[Ljxl/biff/ConditionalFormat;
    iget-object v1, p0, Ljxl/read/biff/SheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljxl/biff/ConditionalFormat;

    move-object v0, v1

    check-cast v0, [Ljxl/biff/ConditionalFormat;

    .line 1220
    return-object v0
.end method

.method public getDataValidation()Ljxl/biff/DataValidation;
    .locals 1

    .line 857
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    return-object v0
.end method

.method public getDrawing(I)Ljxl/Image;
    .locals 1
    .param p1, "i"    # I

    .line 1147
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->images:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1149
    invoke-direct {p0}, Ljxl/read/biff/SheetImpl;->initializeImages()V

    .line 1152
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/Image;

    return-object v0
.end method

.method public getDrawingData()Ljxl/biff/drawing/DrawingData;
    .locals 11

    .line 1182
    new-instance v10, Ljxl/read/biff/SheetReader;

    iget-object v1, p0, Ljxl/read/biff/SheetImpl;->excelFile:Ljxl/read/biff/File;

    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v3, p0, Ljxl/read/biff/SheetImpl;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v4, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    iget-object v5, p0, Ljxl/read/biff/SheetImpl;->workbookBof:Ljxl/read/biff/BOFRecord;

    iget-boolean v6, p0, Ljxl/read/biff/SheetImpl;->nineteenFour:Z

    iget-object v7, p0, Ljxl/read/biff/SheetImpl;->workbook:Ljxl/read/biff/WorkbookParser;

    iget v8, p0, Ljxl/read/biff/SheetImpl;->startPosition:I

    move-object v0, v10

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Ljxl/read/biff/SheetReader;-><init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;ILjxl/read/biff/SheetImpl;)V

    .line 1191
    .local v0, "reader":Ljxl/read/biff/SheetReader;
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->read()V

    .line 1192
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getDrawingData()Ljxl/biff/drawing/DrawingData;

    move-result-object v1

    return-object v1
.end method

.method public final getDrawings()[Ljxl/biff/drawing/DrawingGroupObject;
    .locals 2

    .line 935
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/biff/drawing/DrawingGroupObject;

    .line 936
    .local v0, "dr":[Ljxl/biff/drawing/DrawingGroupObject;
    iget-object v1, p0, Ljxl/read/biff/SheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljxl/biff/drawing/DrawingGroupObject;

    move-object v0, v1

    check-cast v0, [Ljxl/biff/drawing/DrawingGroupObject;

    .line 937
    return-object v0
.end method

.method public getHyperlinks()[Ljxl/Hyperlink;
    .locals 3

    .line 809
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/Hyperlink;

    .line 811
    .local v0, "hl":[Ljxl/Hyperlink;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 813
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/Hyperlink;

    aput-object v2, v0, v1

    .line 811
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getMaxColumnOutlineLevel()I
    .locals 1

    .line 1240
    iget v0, p0, Ljxl/read/biff/SheetImpl;->maxColumnOutlineLevel:I

    return v0
.end method

.method public getMaxRowOutlineLevel()I
    .locals 1

    .line 1250
    iget v0, p0, Ljxl/read/biff/SheetImpl;->maxRowOutlineLevel:I

    return v0
.end method

.method public getMergedCells()[Ljxl/Range;
    .locals 1

    .line 826
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->mergedCells:[Ljxl/Range;

    if-nez v0, :cond_0

    .line 828
    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/Range;

    return-object v0

    .line 831
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 583
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfImages()I
    .locals 1

    .line 1131
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->images:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1133
    invoke-direct {p0}, Ljxl/read/biff/SheetImpl;->initializeImages()V

    .line 1136
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPLS()Ljxl/read/biff/PLSRecord;
    .locals 1

    .line 1111
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->plsRecord:Ljxl/read/biff/PLSRecord;

    return-object v0
.end method

.method public getRow(I)[Ljxl/Cell;
    .locals 5
    .param p1, "row"    # I

    .line 505
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 511
    :cond_0
    const/4 v0, 0x0

    .line 512
    .local v0, "found":Z
    iget v1, p0, Ljxl/read/biff/SheetImpl;->numCols:I

    add-int/lit8 v1, v1, -0x1

    .line 513
    .local v1, "col":I
    :goto_0
    if-ltz v1, :cond_2

    if-nez v0, :cond_2

    .line 515
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    aget-object v2, v2, p1

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 517
    const/4 v0, 0x1

    goto :goto_0

    .line 521
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 526
    :cond_2
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljxl/Cell;

    .line 528
    .local v2, "c":[Ljxl/Cell;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-gt v3, v1, :cond_3

    .line 530
    invoke-virtual {p0, v3, p1}, Ljxl/read/biff/SheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v4

    aput-object v4, v2, v3

    .line 528
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 532
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method

.method public getRowHeight(I)I
    .locals 1
    .param p1, "row"    # I

    .line 1046
    invoke-virtual {p0, p1}, Ljxl/read/biff/SheetImpl;->getRowView(I)Ljxl/CellView;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/CellView;->getDimension()I

    move-result v0

    return v0
.end method

.method getRowInfo(I)Ljxl/read/biff/RowRecord;
    .locals 5
    .param p1, "r"    # I

    .line 869
    iget-boolean v0, p0, Ljxl/read/biff/SheetImpl;->rowRecordsInitialized:Z

    if-nez v0, :cond_2

    .line 871
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->getRows()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/RowRecord;

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->rowRecords:[Ljxl/read/biff/RowRecord;

    .line 872
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->rowProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 874
    .local v0, "i":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 875
    .local v1, "rownum":I
    const/4 v2, 0x0

    .line 876
    .local v2, "rr":Ljxl/read/biff/RowRecord;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 878
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljxl/read/biff/RowRecord;

    .line 879
    invoke-virtual {v2}, Ljxl/read/biff/RowRecord;->getRowNumber()I

    move-result v1

    .line 880
    iget-object v3, p0, Ljxl/read/biff/SheetImpl;->rowRecords:[Ljxl/read/biff/RowRecord;

    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 882
    aput-object v2, v3, v1

    goto :goto_0

    .line 886
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljxl/read/biff/SheetImpl;->rowRecordsInitialized:Z

    .line 889
    .end local v0    # "i":Ljava/util/Iterator;
    .end local v1    # "rownum":I
    .end local v2    # "rr":Ljxl/read/biff/RowRecord;
    :cond_2
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->rowRecords:[Ljxl/read/biff/RowRecord;

    array-length v1, v0

    if-ge p1, v1, :cond_3

    aget-object v0, v0, p1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final getRowPageBreaks()[I
    .locals 1

    .line 899
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->rowBreaks:[I

    return-object v0
.end method

.method public getRowProperties()[Ljxl/read/biff/RowRecord;
    .locals 3

    .line 841
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->rowProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/RowRecord;

    .line 842
    .local v0, "rp":[Ljxl/read/biff/RowRecord;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 844
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->rowProperties:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/RowRecord;

    aput-object v2, v0, v1

    .line 842
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getRowView(I)Ljxl/CellView;
    .locals 4
    .param p1, "row"    # I

    .line 1058
    invoke-virtual {p0, p1}, Ljxl/read/biff/SheetImpl;->getRowInfo(I)Ljxl/read/biff/RowRecord;

    move-result-object v0

    .line 1060
    .local v0, "rr":Ljxl/read/biff/RowRecord;
    new-instance v1, Ljxl/CellView;

    invoke-direct {v1}, Ljxl/CellView;-><init>()V

    .line 1062
    .local v1, "cv":Ljxl/CellView;
    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {v0}, Ljxl/read/biff/RowRecord;->getRowHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/CellView;->setDimension(I)V

    .line 1065
    invoke-virtual {v0}, Ljxl/read/biff/RowRecord;->getRowHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/CellView;->setSize(I)V

    .line 1066
    invoke-virtual {v0}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/CellView;->setHidden(Z)V

    .line 1067
    invoke-virtual {v0}, Ljxl/read/biff/RowRecord;->hasDefaultFormat()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1069
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0}, Ljxl/read/biff/RowRecord;->getXFIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/CellView;->setFormat(Ljxl/format/CellFormat;)V

    goto :goto_0

    .line 1074
    :cond_0
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/CellView;->setDimension(I)V

    .line 1075
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/CellView;->setSize(I)V

    .line 1078
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getRows()I
    .locals 1

    .line 469
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    if-nez v0, :cond_0

    .line 471
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 474
    :cond_0
    iget v0, p0, Ljxl/read/biff/SheetImpl;->numRows:I

    return v0
.end method

.method public getSettings()Ljxl/SheetSettings;
    .locals 1

    .line 969
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    return-object v0
.end method

.method public getSheetBof()Ljxl/read/biff/BOFRecord;
    .locals 1

    .line 1089
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    return-object v0
.end method

.method public getWorkbook()Ljxl/read/biff/WorkbookParser;
    .locals 1

    .line 980
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->workbook:Ljxl/read/biff/WorkbookParser;

    return-object v0
.end method

.method public getWorkbookBof()Ljxl/read/biff/BOFRecord;
    .locals 1

    .line 1100
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->workbookBof:Ljxl/read/biff/BOFRecord;

    return-object v0
.end method

.method public getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;
    .locals 1

    .line 959
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 604
    iget-boolean v0, p0, Ljxl/read/biff/SheetImpl;->hidden:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 948
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/SheetSettings;->isProtected()Z

    move-result v0

    return v0
.end method

.method final readSheet()V
    .locals 12

    .line 699
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isWorksheet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 701
    iput v1, p0, Ljxl/read/biff/SheetImpl;->numRows:I

    .line 702
    iput v1, p0, Ljxl/read/biff/SheetImpl;->numCols:I

    .line 703
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v2, Ljxl/Cell;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljxl/Cell;

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    .line 707
    :cond_0
    new-instance v0, Ljxl/read/biff/SheetReader;

    iget-object v3, p0, Ljxl/read/biff/SheetImpl;->excelFile:Ljxl/read/biff/File;

    iget-object v4, p0, Ljxl/read/biff/SheetImpl;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v5, p0, Ljxl/read/biff/SheetImpl;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v6, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    iget-object v7, p0, Ljxl/read/biff/SheetImpl;->workbookBof:Ljxl/read/biff/BOFRecord;

    iget-boolean v8, p0, Ljxl/read/biff/SheetImpl;->nineteenFour:Z

    iget-object v9, p0, Ljxl/read/biff/SheetImpl;->workbook:Ljxl/read/biff/WorkbookParser;

    iget v10, p0, Ljxl/read/biff/SheetImpl;->startPosition:I

    move-object v2, v0

    move-object v11, p0

    invoke-direct/range {v2 .. v11}, Ljxl/read/biff/SheetReader;-><init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;ILjxl/read/biff/SheetImpl;)V

    .line 716
    .local v0, "reader":Ljxl/read/biff/SheetReader;
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->read()V

    .line 719
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getNumRows()I

    move-result v2

    iput v2, p0, Ljxl/read/biff/SheetImpl;->numRows:I

    .line 720
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getNumCols()I

    move-result v2

    iput v2, p0, Ljxl/read/biff/SheetImpl;->numCols:I

    .line 721
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getCells()[[Ljxl/Cell;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    .line 722
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getRowProperties()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->rowProperties:Ljava/util/ArrayList;

    .line 723
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getColumnInfosArray()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    .line 724
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getHyperlinks()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    .line 725
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getConditionalFormats()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    .line 726
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getAutoFilter()Ljxl/biff/AutoFilter;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->autoFilter:Ljxl/biff/AutoFilter;

    .line 727
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getCharts()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->charts:Ljava/util/ArrayList;

    .line 728
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getDrawings()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->drawings:Ljava/util/ArrayList;

    .line 729
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getDataValidation()Ljxl/biff/DataValidation;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    .line 730
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getMergedCells()[Ljxl/Range;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->mergedCells:[Ljxl/Range;

    .line 731
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getSettings()Ljxl/SheetSettings;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    .line 732
    iget-boolean v3, p0, Ljxl/read/biff/SheetImpl;->hidden:Z

    invoke-virtual {v2, v3}, Ljxl/SheetSettings;->setHidden(Z)V

    .line 733
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getRowBreaks()[I

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->rowBreaks:[I

    .line 734
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getColumnBreaks()[I

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->columnBreaks:[I

    .line 735
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    .line 736
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getPLS()Ljxl/read/biff/PLSRecord;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->plsRecord:Ljxl/read/biff/PLSRecord;

    .line 737
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    .line 738
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getMaxRowOutlineLevel()I

    move-result v2

    iput v2, p0, Ljxl/read/biff/SheetImpl;->maxRowOutlineLevel:I

    .line 739
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getMaxColumnOutlineLevel()I

    move-result v2

    iput v2, p0, Ljxl/read/biff/SheetImpl;->maxColumnOutlineLevel:I

    .line 741
    const/4 v0, 0x0

    .line 743
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v2}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 745
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 748
    :cond_1
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 750
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/ColumnInfoRecord;

    .line 752
    .local v2, "cir":Ljxl/read/biff/ColumnInfoRecord;
    invoke-virtual {v2}, Ljxl/read/biff/ColumnInfoRecord;->getEndColumn()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljxl/read/biff/ColumnInfoRecord;

    iput-object v3, p0, Ljxl/read/biff/SheetImpl;->columnInfos:[Ljxl/read/biff/ColumnInfoRecord;

    .line 753
    .end local v2    # "cir":Ljxl/read/biff/ColumnInfoRecord;
    goto :goto_0

    .line 756
    :cond_2
    new-array v2, v1, [Ljxl/read/biff/ColumnInfoRecord;

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->columnInfos:[Ljxl/read/biff/ColumnInfoRecord;

    .line 760
    :goto_0
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->localNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 762
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 764
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/read/biff/NameRecord;

    .line 765
    .local v3, "nr":Ljxl/read/biff/NameRecord;
    invoke-virtual {v3}, Ljxl/read/biff/NameRecord;->getBuiltInName()Ljxl/biff/BuiltInName;

    move-result-object v4

    sget-object v5, Ljxl/biff/BuiltInName;->PRINT_AREA:Ljxl/biff/BuiltInName;

    if-ne v4, v5, :cond_3

    .line 767
    invoke-virtual {v3}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_5

    .line 769
    invoke-virtual {v3}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object v4

    aget-object v4, v4, v1

    .line 770
    .local v4, "rng":Ljxl/read/biff/NameRecord$NameRange;
    iget-object v5, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v4}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v6

    invoke-virtual {v4}, Ljxl/read/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v7

    invoke-virtual {v4}, Ljxl/read/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v8

    invoke-virtual {v4}, Ljxl/read/biff/NameRecord$NameRange;->getLastRow()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Ljxl/SheetSettings;->setPrintArea(IIII)V

    .line 774
    .end local v4    # "rng":Ljxl/read/biff/NameRecord$NameRange;
    goto :goto_4

    .line 776
    :cond_3
    invoke-virtual {v3}, Ljxl/read/biff/NameRecord;->getBuiltInName()Ljxl/biff/BuiltInName;

    move-result-object v4

    sget-object v5, Ljxl/biff/BuiltInName;->PRINT_TITLES:Ljxl/biff/BuiltInName;

    if-ne v4, v5, :cond_5

    .line 783
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v3}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 785
    invoke-virtual {v3}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object v5

    aget-object v5, v5, v4

    .line 786
    .local v5, "rng":Ljxl/read/biff/NameRecord$NameRange;
    invoke-virtual {v5}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljxl/read/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v6

    const/16 v7, 0xff

    if-ne v6, v7, :cond_4

    .line 788
    iget-object v6, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/read/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v7

    invoke-virtual {v5}, Ljxl/read/biff/NameRecord$NameRange;->getLastRow()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljxl/SheetSettings;->setPrintTitlesRow(II)V

    goto :goto_3

    .line 793
    :cond_4
    iget-object v6, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v7

    invoke-virtual {v5}, Ljxl/read/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljxl/SheetSettings;->setPrintTitlesCol(II)V

    .line 783
    .end local v5    # "rng":Ljxl/read/biff/NameRecord$NameRange;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 798
    .end local v3    # "nr":Ljxl/read/biff/NameRecord;
    .end local v4    # "i":I
    :cond_5
    :goto_4
    goto :goto_1

    .line 800
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_6
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method final setHidden(Z)V
    .locals 0
    .param p1, "h"    # Z

    .line 669
    iput-boolean p1, p0, Ljxl/read/biff/SheetImpl;->hidden:Z

    .line 670
    return-void
.end method

.method final setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 593
    iput-object p1, p0, Ljxl/read/biff/SheetImpl;->name:Ljava/lang/String;

    .line 594
    return-void
.end method

.class Ljxl/write/biff/RowRecord;
.super Ljxl/biff/WritableRecordData;
.source "RowRecord.java"


# static fields
.field private static defaultHeightIndicator:I = 0x0

.field private static final growSize:I = 0xa

.field private static final logger:Ljxl/common/Logger;

.field private static maxColumns:I = 0x0

.field private static final maxRKValue:I = 0x1fffffff

.field private static final minRKValue:I = -0x20000000


# instance fields
.field private cells:[Ljxl/write/biff/CellValue;

.field private collapsed:Z

.field private data:[B

.field private defaultFormat:Z

.field private groupStart:Z

.field private matchesDefFontHeight:Z

.field private numColumns:I

.field private outlineLevel:I

.field private rowHeight:I

.field private rowNumber:I

.field private sheet:Ljxl/write/WritableSheet;

.field private style:Ljxl/biff/XFRecord;

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Ljxl/write/biff/RowRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/RowRecord;->logger:Ljxl/common/Logger;

    .line 109
    const/16 v0, 0xff

    sput v0, Ljxl/write/biff/RowRecord;->defaultHeightIndicator:I

    .line 114
    const/16 v0, 0x100

    sput v0, Ljxl/write/biff/RowRecord;->maxColumns:I

    return-void
.end method

.method public constructor <init>(ILjxl/write/WritableSheet;)V
    .locals 2
    .param p1, "rn"    # I
    .param p2, "ws"    # Ljxl/write/WritableSheet;

    .line 138
    sget-object v0, Ljxl/biff/Type;->ROW:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 139
    iput p1, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    .line 140
    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/write/biff/CellValue;

    iput-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    .line 141
    iput v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    .line 142
    sget v1, Ljxl/write/biff/RowRecord;->defaultHeightIndicator:I

    iput v1, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    .line 143
    iput-boolean v0, p0, Ljxl/write/biff/RowRecord;->collapsed:Z

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    .line 145
    iput-object p2, p0, Ljxl/write/biff/RowRecord;->sheet:Ljxl/write/WritableSheet;

    .line 146
    return-void
.end method

.method private writeIntegerValues(Ljava/util/ArrayList;Ljxl/write/biff/File;)V
    .locals 2
    .param p1, "integerValues"    # Ljava/util/ArrayList;
    .param p2, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 384
    new-instance v0, Ljxl/write/biff/MulRKRecord;

    invoke-direct {v0, p1}, Ljxl/write/biff/MulRKRecord;-><init>(Ljava/util/List;)V

    .line 385
    .local v0, "mulrk":Ljxl/write/biff/MulRKRecord;
    invoke-virtual {p2, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 386
    .end local v0    # "mulrk":Ljxl/write/biff/MulRKRecord;
    goto :goto_1

    .line 390
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 391
    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/CellValue;

    invoke-virtual {p2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_0

    .line 398
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 399
    return-void
.end method


# virtual methods
.method public addCell(Ljxl/write/biff/CellValue;)V
    .locals 5
    .param p1, "cv"    # Ljxl/write/biff/CellValue;

    .line 226
    invoke-virtual {p1}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result v0

    .line 228
    .local v0, "col":I
    sget v1, Ljxl/write/biff/RowRecord;->maxColumns:I

    if-lt v0, v1, :cond_0

    .line 230
    sget-object v1, Ljxl/write/biff/RowRecord;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not add cell at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljxl/write/biff/CellValue;->getRow()I

    move-result v3

    invoke-virtual {p1}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result v4

    invoke-static {v3, v4}, Ljxl/biff/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it exceeds the maximum column limit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 234
    return-void

    .line 238
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 240
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    .line 241
    .local v1, "oldCells":[Ljxl/write/biff/CellValue;
    array-length v2, v1

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [Ljxl/write/biff/CellValue;

    iput-object v2, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    .line 242
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    .end local v1    # "oldCells":[Ljxl/write/biff/CellValue;
    :cond_1
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 249
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v1

    .line 250
    .local v1, "wcf":Ljxl/write/WritableCellFeatures;
    if-eqz v1, :cond_2

    .line 252
    invoke-virtual {v1}, Ljxl/write/WritableCellFeatures;->removeComment()V

    .line 256
    invoke-virtual {v1}, Ljxl/write/WritableCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljxl/write/WritableCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v2

    if-nez v2, :cond_2

    .line 259
    invoke-virtual {v1}, Ljxl/write/WritableCellFeatures;->removeDataValidation()V

    .line 265
    .end local v1    # "wcf":Ljxl/write/WritableCellFeatures;
    :cond_2
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aput-object p1, v1, v0

    .line 267
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    .line 268
    return-void
.end method

.method public decrementOutlineLevel()V
    .locals 1

    .line 705
    iget v0, p0, Ljxl/write/biff/RowRecord;->outlineLevel:I

    if-lez v0, :cond_0

    .line 707
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/RowRecord;->outlineLevel:I

    .line 710
    :cond_0
    iget v0, p0, Ljxl/write/biff/RowRecord;->outlineLevel:I

    if-nez v0, :cond_1

    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/write/biff/RowRecord;->collapsed:Z

    .line 714
    :cond_1
    return-void
.end method

.method decrementRow()V
    .locals 3

    .line 503
    iget v0, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    .line 504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 506
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 508
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->decrementRow()V

    .line 504
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getCell(I)Ljxl/write/biff/CellValue;
    .locals 1
    .param p1, "col"    # I

    .line 477
    if-ltz p1, :cond_0

    iget v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getData()[B
    .locals 5

    .line 409
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 414
    .local v1, "data":[B
    iget v2, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    .line 415
    .local v2, "rh":I
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->sheet:Ljxl/write/WritableSheet;

    invoke-interface {v3}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_0

    .line 420
    sget v3, Ljxl/write/biff/RowRecord;->defaultHeightIndicator:I

    if-ne v2, v3, :cond_0

    .line 422
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->sheet:Ljxl/write/WritableSheet;

    invoke-interface {v3}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result v2

    .line 426
    :cond_0
    iget v3, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 427
    iget v3, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    const/4 v4, 0x4

    invoke-static {v3, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 428
    const/4 v3, 0x6

    invoke-static {v2, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 430
    iget v3, p0, Ljxl/write/biff/RowRecord;->outlineLevel:I

    add-int/lit16 v3, v3, 0x100

    .line 432
    .local v3, "options":I
    iget-boolean v4, p0, Ljxl/write/biff/RowRecord;->groupStart:Z

    if-eqz v4, :cond_1

    .line 434
    or-int/lit8 v3, v3, 0x10

    .line 437
    :cond_1
    iget-boolean v4, p0, Ljxl/write/biff/RowRecord;->collapsed:Z

    if-eqz v4, :cond_2

    .line 439
    or-int/lit8 v3, v3, 0x20

    .line 442
    :cond_2
    iget-boolean v4, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    if-nez v4, :cond_3

    .line 444
    or-int/lit8 v3, v3, 0x40

    .line 447
    :cond_3
    iget-boolean v4, p0, Ljxl/write/biff/RowRecord;->defaultFormat:Z

    if-eqz v4, :cond_4

    .line 449
    or-int/lit16 v3, v3, 0x80

    .line 450
    iget v4, p0, Ljxl/write/biff/RowRecord;->xfIndex:I

    shl-int/lit8 v0, v4, 0x10

    or-int/2addr v3, v0

    .line 453
    :cond_4
    const/16 v0, 0xc

    invoke-static {v3, v1, v0}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 455
    return-object v1
.end method

.method public getGroupStart()Z
    .locals 1

    .line 687
    iget-boolean v0, p0, Ljxl/write/biff/RowRecord;->groupStart:Z

    return v0
.end method

.method public getMaxColumn()I
    .locals 1

    .line 465
    iget v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    return v0
.end method

.method public getOutlineLevel()I
    .locals 1

    .line 677
    iget v0, p0, Ljxl/write/biff/RowRecord;->outlineLevel:I

    return v0
.end method

.method public getRowHeight()I
    .locals 1

    .line 614
    iget v0, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    return v0
.end method

.method public getRowNumber()I
    .locals 1

    .line 216
    iget v0, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    return v0
.end method

.method getStyle()Ljxl/biff/XFRecord;
    .locals 1

    .line 647
    iget-object v0, p0, Ljxl/write/biff/RowRecord;->style:Ljxl/biff/XFRecord;

    return-object v0
.end method

.method hasDefaultFormat()Z
    .locals 1

    .line 657
    iget-boolean v0, p0, Ljxl/write/biff/RowRecord;->defaultFormat:Z

    return v0
.end method

.method public incrementOutlineLevel()V
    .locals 1

    .line 695
    iget v0, p0, Ljxl/write/biff/RowRecord;->outlineLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/write/biff/RowRecord;->outlineLevel:I

    .line 696
    return-void
.end method

.method incrementRow()V
    .locals 3

    .line 486
    iget v0, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 490
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 492
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->incrementRow()V

    .line 488
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method insertColumn(I)V
    .locals 4
    .param p1, "col"    # I

    .line 523
    iget v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-lt p1, v0, :cond_0

    .line 525
    return-void

    .line 529
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    .line 531
    .local v1, "oldCells":[Ljxl/write/biff/CellValue;
    iget-object v2, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    .line 533
    array-length v0, v1

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [Ljxl/write/biff/CellValue;

    iput-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    goto :goto_0

    .line 537
    :cond_1
    array-length v0, v1

    new-array v0, v0, [Ljxl/write/biff/CellValue;

    iput-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    .line 541
    :goto_0
    iget-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    iget-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 547
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_1
    iget v2, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-gt v0, v2, :cond_3

    .line 549
    iget-object v2, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v3, v2, v0

    if-eqz v3, :cond_2

    .line 551
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljxl/write/biff/CellValue;->incrementColumn()V

    .line 547
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 556
    .end local v0    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    sget v0, Ljxl/write/biff/RowRecord;->maxColumns:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    .line 557
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .line 624
    iget-boolean v0, p0, Ljxl/write/biff/RowRecord;->collapsed:Z

    return v0
.end method

.method public isDefaultHeight()Z
    .locals 2

    .line 604
    iget v0, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    sget v1, Ljxl/write/biff/RowRecord;->defaultHeightIndicator:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method matchesDefaultFontHeight()Z
    .locals 1

    .line 667
    iget-boolean v0, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    return v0
.end method

.method rationalize(Ljxl/biff/IndexMapping;)V
    .locals 1
    .param p1, "xfmapping"    # Ljxl/biff/IndexMapping;

    .line 633
    iget-boolean v0, p0, Ljxl/write/biff/RowRecord;->defaultFormat:Z

    if-eqz v0, :cond_0

    .line 635
    iget v0, p0, Ljxl/write/biff/RowRecord;->xfIndex:I

    invoke-virtual {p1, v0}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v0

    iput v0, p0, Ljxl/write/biff/RowRecord;->xfIndex:I

    .line 637
    :cond_0
    return-void
.end method

.method public removeCell(I)V
    .locals 2
    .param p1, "col"    # I

    .line 278
    iget v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-lt p1, v0, :cond_0

    .line 280
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 284
    return-void
.end method

.method removeColumn(I)V
    .locals 5
    .param p1, "col"    # I

    .line 568
    iget v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-lt p1, v0, :cond_0

    .line 570
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    .line 576
    .local v0, "oldCells":[Ljxl/write/biff/CellValue;
    array-length v1, v0

    new-array v1, v1, [Ljxl/write/biff/CellValue;

    iput-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    .line 579
    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    iget v3, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    move v1, p1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-ge v1, v2, :cond_2

    .line 587
    iget-object v2, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 589
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljxl/write/biff/CellValue;->decrementColumn()V

    .line 585
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    .end local v1    # "i":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    .line 595
    return-void
.end method

.method public setCollapsed(Z)V
    .locals 0
    .param p1, "c"    # Z

    .line 206
    iput-boolean p1, p0, Ljxl/write/biff/RowRecord;->collapsed:Z

    .line 207
    return-void
.end method

.method public setGroupStart(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 733
    iput-boolean p1, p0, Ljxl/write/biff/RowRecord;->groupStart:Z

    .line 734
    return-void
.end method

.method public setOutlineLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 723
    iput p1, p0, Ljxl/write/biff/RowRecord;->outlineLevel:I

    .line 724
    return-void
.end method

.method setRowDetails(IZZIZLjxl/biff/XFRecord;)V
    .locals 1
    .param p1, "height"    # I
    .param p2, "mdfh"    # Z
    .param p3, "col"    # Z
    .param p4, "ol"    # I
    .param p5, "gs"    # Z
    .param p6, "xfr"    # Ljxl/biff/XFRecord;

    .line 185
    iput p1, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    .line 186
    iput-boolean p3, p0, Ljxl/write/biff/RowRecord;->collapsed:Z

    .line 187
    iput-boolean p2, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    .line 188
    iput p4, p0, Ljxl/write/biff/RowRecord;->outlineLevel:I

    .line 189
    iput-boolean p5, p0, Ljxl/write/biff/RowRecord;->groupStart:Z

    .line 191
    if-eqz p6, :cond_0

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/write/biff/RowRecord;->defaultFormat:Z

    .line 194
    iput-object p6, p0, Ljxl/write/biff/RowRecord;->style:Ljxl/biff/XFRecord;

    .line 195
    invoke-virtual {p6}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/RowRecord;->xfIndex:I

    .line 197
    :cond_0
    return-void
.end method

.method public setRowHeight(I)V
    .locals 2
    .param p1, "h"    # I

    .line 155
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 157
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljxl/write/biff/RowRecord;->setCollapsed(Z)V

    .line 158
    iput-boolean v0, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    goto :goto_0

    .line 162
    :cond_0
    iput p1, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    .line 163
    iput-boolean v0, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    .line 165
    :goto_0
    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 0
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p1, p0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 295
    return-void
.end method

.method public writeCells(Ljxl/write/biff/File;)V
    .locals 8
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "integerValues":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .line 313
    .local v1, "integerValue":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-ge v2, v3, :cond_4

    .line 315
    const/4 v1, 0x0

    .line 316
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v4, v3, v2

    if-eqz v4, :cond_2

    .line 320
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getType()Ljxl/CellType;

    move-result-object v3

    sget-object v4, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v3, v4, :cond_0

    .line 322
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v3, v3, v2

    check-cast v3, Ljxl/write/Number;

    .line 323
    .local v3, "nc":Ljxl/write/Number;
    invoke-virtual {v3}, Ljxl/write/Number;->getValue()D

    move-result-wide v4

    invoke-virtual {v3}, Ljxl/write/Number;->getValue()D

    move-result-wide v6

    double-to-int v6, v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljxl/write/Number;->getValue()D

    move-result-wide v4

    const-wide v6, 0x41bfffffff000000L    # 5.36870911E8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    invoke-virtual {v3}, Ljxl/write/Number;->getValue()D

    move-result-wide v4

    const-wide/high16 v6, -0x3e40000000000000L    # -5.36870912E8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    invoke-virtual {v3}, Ljxl/write/Number;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v4

    if-nez v4, :cond_0

    .line 328
    const/4 v1, 0x1

    .line 332
    .end local v3    # "nc":Ljxl/write/Number;
    :cond_0
    if-eqz v1, :cond_1

    .line 335
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 341
    :cond_1
    invoke-direct {p0, v0, p1}, Ljxl/write/biff/RowRecord;->writeIntegerValues(Ljava/util/ArrayList;Ljxl/write/biff/File;)V

    .line 342
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 346
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getType()Ljxl/CellType;

    move-result-object v3

    sget-object v4, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    if-ne v3, v4, :cond_3

    .line 348
    new-instance v3, Ljxl/write/biff/StringRecord;

    iget-object v4, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljxl/write/biff/CellValue;->getContents()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljxl/write/biff/StringRecord;-><init>(Ljava/lang/String;)V

    .line 349
    .local v3, "sr":Ljxl/write/biff/StringRecord;
    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 350
    .end local v3    # "sr":Ljxl/write/biff/StringRecord;
    goto :goto_1

    .line 357
    :cond_2
    invoke-direct {p0, v0, p1}, Ljxl/write/biff/RowRecord;->writeIntegerValues(Ljava/util/ArrayList;Ljxl/write/biff/File;)V

    .line 313
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    .end local v2    # "i":I
    :cond_4
    invoke-direct {p0, v0, p1}, Ljxl/write/biff/RowRecord;->writeIntegerValues(Ljava/util/ArrayList;Ljxl/write/biff/File;)V

    .line 363
    return-void
.end method

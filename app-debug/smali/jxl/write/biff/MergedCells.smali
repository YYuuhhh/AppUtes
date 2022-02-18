.class Ljxl/write/biff/MergedCells;
.super Ljava/lang/Object;
.source "MergedCells.java"


# static fields
.field private static logger:Ljxl/common/Logger; = null

.field private static final maxRangesPerSheet:I = 0x3fc


# instance fields
.field private ranges:Ljava/util/ArrayList;

.field private sheet:Ljxl/write/WritableSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Ljxl/write/biff/MergedCells;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/MergedCells;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableSheet;)V
    .locals 1
    .param p1, "ws"    # Ljxl/write/WritableSheet;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    .line 70
    iput-object p1, p0, Ljxl/write/biff/MergedCells;->sheet:Ljxl/write/WritableSheet;

    .line 71
    return-void
.end method

.method private checkIntersections()V
    .locals 9

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .local v0, "newcells":Ljava/util/ArrayList;
    iget-object v1, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mci":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/SheetRangeImpl;

    .line 206
    .local v2, "r":Ljxl/biff/SheetRangeImpl;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 207
    .local v3, "i":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 208
    .local v4, "range":Ljxl/biff/SheetRangeImpl;
    const/4 v5, 0x0

    .line 209
    .local v5, "intersects":Z
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v5, :cond_1

    .line 211
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Ljxl/biff/SheetRangeImpl;

    .line 213
    invoke-virtual {v4, v2}, Ljxl/biff/SheetRangeImpl;->intersects(Ljxl/biff/SheetRangeImpl;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 215
    sget-object v6, Ljxl/write/biff/MergedCells;->logger:Ljxl/common/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not merge cells "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as they clash with an existing set of merged cells."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 218
    const/4 v5, 0x1

    goto :goto_1

    .line 222
    :cond_1
    if-nez v5, :cond_2

    .line 224
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v2    # "r":Ljxl/biff/SheetRangeImpl;
    .end local v3    # "i":Ljava/util/Iterator;
    .end local v4    # "range":Ljxl/biff/SheetRangeImpl;
    .end local v5    # "intersects":Z
    :cond_2
    goto :goto_0

    .line 228
    .end local v1    # "mci":Ljava/util/Iterator;
    :cond_3
    iput-object v0, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    .line 229
    return-void
.end method

.method private checkRanges()V
    .locals 11

    .line 239
    const/4 v0, 0x0

    .line 242
    .local v0, "range":Ljxl/biff/SheetRangeImpl;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 244
    iget-object v2, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/SheetRangeImpl;

    move-object v0, v2

    .line 247
    invoke-virtual {v0}, Ljxl/biff/SheetRangeImpl;->getTopLeft()Ljxl/Cell;

    move-result-object v2

    .line 248
    .local v2, "tl":Ljxl/Cell;
    invoke-virtual {v0}, Ljxl/biff/SheetRangeImpl;->getBottomRight()Ljxl/Cell;

    move-result-object v3

    .line 249
    .local v3, "br":Ljxl/Cell;
    const/4 v4, 0x0

    .line 251
    .local v4, "found":Z
    invoke-interface {v2}, Ljxl/Cell;->getColumn()I

    move-result v5

    .local v5, "c":I
    :goto_1
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v6

    if-gt v5, v6, :cond_3

    .line 253
    invoke-interface {v2}, Ljxl/Cell;->getRow()I

    move-result v6

    .local v6, "r":I
    :goto_2
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v7

    if-gt v6, v7, :cond_2

    .line 255
    iget-object v7, p0, Ljxl/write/biff/MergedCells;->sheet:Ljxl/write/WritableSheet;

    invoke-interface {v7, v5, v6}, Ljxl/write/WritableSheet;->getCell(II)Ljxl/Cell;

    move-result-object v7

    .line 256
    .local v7, "cell":Ljxl/Cell;
    invoke-interface {v7}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v8

    sget-object v9, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-eq v8, v9, :cond_1

    .line 258
    if-nez v4, :cond_0

    .line 260
    const/4 v4, 0x1

    goto :goto_3

    .line 264
    :cond_0
    sget-object v8, Ljxl/write/biff/MergedCells;->logger:Ljxl/common/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Range "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " contains more than one data cell.  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Setting the other cells to blank."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 267
    new-instance v8, Ljxl/write/Blank;

    invoke-direct {v8, v5, v6}, Ljxl/write/Blank;-><init>(II)V

    .line 268
    .local v8, "b":Ljxl/write/Blank;
    iget-object v9, p0, Ljxl/write/biff/MergedCells;->sheet:Ljxl/write/WritableSheet;

    invoke-interface {v9, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V
    :try_end_0
    .catch Ljxl/write/WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v7    # "cell":Ljxl/Cell;
    .end local v8    # "b":Ljxl/write/Blank;
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 251
    .end local v6    # "r":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 242
    .end local v2    # "tl":Ljxl/Cell;
    .end local v3    # "br":Ljxl/Cell;
    .end local v4    # "found":Z
    .end local v5    # "c":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "range":Ljxl/biff/SheetRangeImpl;
    .end local v1    # "i":I
    :cond_4
    goto :goto_4

    .line 275
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljxl/write/WriteException;
    const/4 v1, 0x0

    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 280
    .end local v0    # "e":Ljxl/write/WriteException;
    :goto_4
    return-void
.end method


# virtual methods
.method add(Ljxl/Range;)V
    .locals 1
    .param p1, "r"    # Ljxl/Range;

    .line 81
    iget-object v0, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method getMergedCells()[Ljxl/Range;
    .locals 3

    .line 168
    iget-object v0, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/Range;

    .line 170
    .local v0, "cells":[Ljxl/Range;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 172
    iget-object v2, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/Range;

    aput-object v2, v0, v1

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method insertColumn(I)V
    .locals 3
    .param p1, "col"    # I

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "sr":Ljxl/biff/SheetRangeImpl;
    iget-object v1, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljxl/biff/SheetRangeImpl;

    .line 109
    invoke-virtual {v0, p1}, Ljxl/biff/SheetRangeImpl;->insertColumn(I)V

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method insertRow(I)V
    .locals 3
    .param p1, "row"    # I

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "sr":Ljxl/biff/SheetRangeImpl;
    iget-object v1, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljxl/biff/SheetRangeImpl;

    .line 95
    invoke-virtual {v0, p1}, Ljxl/biff/SheetRangeImpl;->insertRow(I)V

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method removeColumn(I)V
    .locals 3
    .param p1, "col"    # I

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "sr":Ljxl/biff/SheetRangeImpl;
    iget-object v1, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 120
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljxl/biff/SheetRangeImpl;

    .line 123
    invoke-virtual {v0}, Ljxl/biff/SheetRangeImpl;->getTopLeft()Ljxl/Cell;

    move-result-object v2

    invoke-interface {v2}, Ljxl/Cell;->getColumn()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Ljxl/biff/SheetRangeImpl;->getBottomRight()Ljxl/Cell;

    move-result-object v2

    invoke-interface {v2}, Ljxl/Cell;->getColumn()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v0, p1}, Ljxl/biff/SheetRangeImpl;->removeColumn(I)V

    goto :goto_0

    .line 135
    :cond_1
    return-void
.end method

.method removeRow(I)V
    .locals 3
    .param p1, "row"    # I

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "sr":Ljxl/biff/SheetRangeImpl;
    iget-object v1, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 144
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljxl/biff/SheetRangeImpl;

    .line 147
    invoke-virtual {v0}, Ljxl/biff/SheetRangeImpl;->getTopLeft()Ljxl/Cell;

    move-result-object v2

    invoke-interface {v2}, Ljxl/Cell;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Ljxl/biff/SheetRangeImpl;->getBottomRight()Ljxl/Cell;

    move-result-object v2

    invoke-interface {v2}, Ljxl/Cell;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0, p1}, Ljxl/biff/SheetRangeImpl;->removeRow(I)V

    goto :goto_0

    .line 159
    :cond_1
    return-void
.end method

.method unmergeCells(Ljxl/Range;)V
    .locals 2
    .param p1, "r"    # Ljxl/Range;

    .line 186
    iget-object v0, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 188
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 190
    iget-object v1, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 192
    :cond_0
    return-void
.end method

.method write(Ljxl/write/biff/File;)V
    .locals 10
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 286
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/MergedCells;->sheet:Ljxl/write/WritableSheet;

    check-cast v0, Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object v0

    .line 292
    .local v0, "ws":Ljxl/WorkbookSettings;
    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getMergedCellCheckingDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    invoke-direct {p0}, Ljxl/write/biff/MergedCells;->checkIntersections()V

    .line 295
    invoke-direct {p0}, Ljxl/write/biff/MergedCells;->checkRanges()V

    .line 300
    :cond_1
    iget-object v1, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x3fc

    if-ge v1, v2, :cond_2

    .line 302
    new-instance v1, Ljxl/write/biff/MergedCellsRecord;

    iget-object v2, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljxl/write/biff/MergedCellsRecord;-><init>(Ljava/util/ArrayList;)V

    .line 303
    .local v1, "mcr":Ljxl/write/biff/MergedCellsRecord;
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 304
    return-void

    .line 307
    .end local v1    # "mcr":Ljxl/write/biff/MergedCellsRecord;
    :cond_2
    iget-object v1, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 308
    .local v1, "numRecordsRequired":I
    const/4 v3, 0x0

    .line 310
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 312
    iget-object v5, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 314
    .local v5, "numranges":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    .local v6, "cells":Ljava/util/ArrayList;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v5, :cond_3

    .line 317
    iget-object v8, p0, Ljxl/write/biff/MergedCells;->ranges:Ljava/util/ArrayList;

    add-int v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 320
    .end local v7    # "j":I
    :cond_3
    new-instance v7, Ljxl/write/biff/MergedCellsRecord;

    invoke-direct {v7, v6}, Ljxl/write/biff/MergedCellsRecord;-><init>(Ljava/util/ArrayList;)V

    .line 321
    .local v7, "mcr":Ljxl/write/biff/MergedCellsRecord;
    invoke-virtual {p1, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 323
    add-int/2addr v3, v5

    .line 310
    .end local v5    # "numranges":I
    .end local v6    # "cells":Ljava/util/ArrayList;
    .end local v7    # "mcr":Ljxl/write/biff/MergedCellsRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 325
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

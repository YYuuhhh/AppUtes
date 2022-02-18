.class Ljxl/biff/formula/Area;
.super Ljxl/biff/formula/Operand;
.source "Area.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private columnFirst:I

.field private columnFirstRelative:Z

.field private columnLast:I

.field private columnLastRelative:Z

.field private rowFirst:I

.field private rowFirstRelative:Z

.field private rowLast:I

.field private rowLastRelative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Ljxl/biff/formula/Area;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/Area;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 92
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "seppos":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 94
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "startcell":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "endcell":Ljava/lang/String;
    invoke-static {v1}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljxl/biff/formula/Area;->columnFirst:I

    .line 98
    invoke-static {v1}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljxl/biff/formula/Area;->rowFirst:I

    .line 99
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljxl/biff/formula/Area;->columnLast:I

    .line 100
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljxl/biff/formula/Area;->rowLast:I

    .line 102
    invoke-static {v1}, Ljxl/biff/CellReferenceHelper;->isColumnRelative(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Ljxl/biff/formula/Area;->columnFirstRelative:Z

    .line 103
    invoke-static {v1}, Ljxl/biff/CellReferenceHelper;->isRowRelative(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Ljxl/biff/formula/Area;->rowFirstRelative:Z

    .line 104
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->isColumnRelative(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Ljxl/biff/formula/Area;->columnLastRelative:Z

    .line 105
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->isRowRelative(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Ljxl/biff/formula/Area;->rowLastRelative:Z

    .line 106
    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 1
    .param p1, "colAdjust"    # I
    .param p2, "rowAdjust"    # I

    .line 239
    iget-boolean v0, p0, Ljxl/biff/formula/Area;->columnFirstRelative:Z

    if-eqz v0, :cond_0

    .line 241
    iget v0, p0, Ljxl/biff/formula/Area;->columnFirst:I

    add-int/2addr v0, p1

    iput v0, p0, Ljxl/biff/formula/Area;->columnFirst:I

    .line 244
    :cond_0
    iget-boolean v0, p0, Ljxl/biff/formula/Area;->columnLastRelative:Z

    if-eqz v0, :cond_1

    .line 246
    iget v0, p0, Ljxl/biff/formula/Area;->columnLast:I

    add-int/2addr v0, p1

    iput v0, p0, Ljxl/biff/formula/Area;->columnLast:I

    .line 249
    :cond_1
    iget-boolean v0, p0, Ljxl/biff/formula/Area;->rowFirstRelative:Z

    if-eqz v0, :cond_2

    .line 251
    iget v0, p0, Ljxl/biff/formula/Area;->rowFirst:I

    add-int/2addr v0, p2

    iput v0, p0, Ljxl/biff/formula/Area;->rowFirst:I

    .line 254
    :cond_2
    iget-boolean v0, p0, Ljxl/biff/formula/Area;->rowLastRelative:Z

    if-eqz v0, :cond_3

    .line 256
    iget v0, p0, Ljxl/biff/formula/Area;->rowLast:I

    add-int/2addr v0, p2

    iput v0, p0, Ljxl/biff/formula/Area;->rowLast:I

    .line 258
    :cond_3
    return-void
.end method

.method columnInserted(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 272
    if-nez p3, :cond_0

    .line 274
    return-void

    .line 277
    :cond_0
    iget v0, p0, Ljxl/biff/formula/Area;->columnFirst:I

    if-gt p2, v0, :cond_1

    .line 279
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/formula/Area;->columnFirst:I

    .line 282
    :cond_1
    iget v0, p0, Ljxl/biff/formula/Area;->columnLast:I

    if-gt p2, v0, :cond_2

    .line 284
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/formula/Area;->columnLast:I

    .line 286
    :cond_2
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 300
    if-nez p3, :cond_0

    .line 302
    return-void

    .line 305
    :cond_0
    iget v0, p0, Ljxl/biff/formula/Area;->columnFirst:I

    if-ge p2, v0, :cond_1

    .line 307
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/biff/formula/Area;->columnFirst:I

    .line 310
    :cond_1
    iget v0, p0, Ljxl/biff/formula/Area;->columnLast:I

    if-gt p2, v0, :cond_2

    .line 312
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/biff/formula/Area;->columnLast:I

    .line 314
    :cond_2
    return-void
.end method

.method getBytes()[B
    .locals 4

    .line 190
    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 191
    .local v0, "data":[B
    invoke-virtual {p0}, Ljxl/biff/formula/Area;->useAlternateCode()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljxl/biff/formula/Token;->AREA:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Ljxl/biff/formula/Token;->AREA:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode2()B

    move-result v1

    :goto_0
    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 194
    iget v1, p0, Ljxl/biff/formula/Area;->rowFirst:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 195
    iget v1, p0, Ljxl/biff/formula/Area;->rowLast:I

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 197
    iget v1, p0, Ljxl/biff/formula/Area;->columnFirst:I

    .line 200
    .local v1, "grcol":I
    iget-boolean v2, p0, Ljxl/biff/formula/Area;->rowFirstRelative:Z

    const v3, 0x8000

    if-eqz v2, :cond_1

    .line 202
    or-int/2addr v1, v3

    .line 205
    :cond_1
    iget-boolean v2, p0, Ljxl/biff/formula/Area;->columnFirstRelative:Z

    if-eqz v2, :cond_2

    .line 207
    or-int/lit16 v1, v1, 0x4000

    .line 210
    :cond_2
    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 212
    iget v1, p0, Ljxl/biff/formula/Area;->columnLast:I

    .line 215
    iget-boolean v2, p0, Ljxl/biff/formula/Area;->rowLastRelative:Z

    if-eqz v2, :cond_3

    .line 217
    or-int/2addr v1, v3

    .line 220
    :cond_3
    iget-boolean v2, p0, Ljxl/biff/formula/Area;->columnLastRelative:Z

    if-eqz v2, :cond_4

    .line 222
    or-int/lit16 v1, v1, 0x4000

    .line 225
    :cond_4
    const/4 v2, 0x7

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 227
    return-object v0
.end method

.method getFirstColumn()I
    .locals 1

    .line 115
    iget v0, p0, Ljxl/biff/formula/Area;->columnFirst:I

    return v0
.end method

.method getFirstRow()I
    .locals 1

    .line 125
    iget v0, p0, Ljxl/biff/formula/Area;->rowFirst:I

    return v0
.end method

.method getLastColumn()I
    .locals 1

    .line 135
    iget v0, p0, Ljxl/biff/formula/Area;->columnLast:I

    return v0
.end method

.method getLastRow()I
    .locals 1

    .line 145
    iget v0, p0, Ljxl/biff/formula/Area;->rowLast:I

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 178
    iget v0, p0, Ljxl/biff/formula/Area;->columnFirst:I

    iget v1, p0, Ljxl/biff/formula/Area;->rowFirst:I

    invoke-static {v0, v1, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 179
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 180
    iget v0, p0, Ljxl/biff/formula/Area;->columnLast:I

    iget v1, p0, Ljxl/biff/formula/Area;->rowLast:I

    invoke-static {v0, v1, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 181
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 422
    return-void
.end method

.method public read([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 157
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area;->rowFirst:I

    .line 158
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area;->rowLast:I

    .line 159
    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 160
    .local v0, "columnMask":I
    and-int/lit16 v1, v0, 0xff

    iput v1, p0, Ljxl/biff/formula/Area;->columnFirst:I

    .line 161
    and-int/lit16 v1, v0, 0x4000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Ljxl/biff/formula/Area;->columnFirstRelative:Z

    .line 162
    const v1, 0x8000

    and-int v4, v0, v1

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput-boolean v4, p0, Ljxl/biff/formula/Area;->rowFirstRelative:Z

    .line 163
    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, p1, v5

    invoke-static {v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 164
    and-int/lit16 v4, v0, 0xff

    iput v4, p0, Ljxl/biff/formula/Area;->columnLast:I

    .line 165
    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Ljxl/biff/formula/Area;->columnLastRelative:Z

    .line 166
    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p0, Ljxl/biff/formula/Area;->rowLastRelative:Z

    .line 168
    const/16 v1, 0x8

    return v1
.end method

.method rowInserted(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 328
    if-nez p3, :cond_0

    .line 330
    return-void

    .line 333
    :cond_0
    iget v0, p0, Ljxl/biff/formula/Area;->rowLast:I

    const v1, 0xffff

    if-ne v0, v1, :cond_1

    .line 336
    return-void

    .line 339
    :cond_1
    iget v1, p0, Ljxl/biff/formula/Area;->rowFirst:I

    if-gt p2, v1, :cond_2

    .line 341
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljxl/biff/formula/Area;->rowFirst:I

    .line 344
    :cond_2
    if-gt p2, v0, :cond_3

    .line 346
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/formula/Area;->rowLast:I

    .line 348
    :cond_3
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 362
    if-nez p3, :cond_0

    .line 364
    return-void

    .line 367
    :cond_0
    iget v0, p0, Ljxl/biff/formula/Area;->rowLast:I

    const v1, 0xffff

    if-ne v0, v1, :cond_1

    .line 370
    return-void

    .line 373
    :cond_1
    iget v1, p0, Ljxl/biff/formula/Area;->rowFirst:I

    if-ge p2, v1, :cond_2

    .line 375
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljxl/biff/formula/Area;->rowFirst:I

    .line 378
    :cond_2
    if-gt p2, v0, :cond_3

    .line 380
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/biff/formula/Area;->rowLast:I

    .line 382
    :cond_3
    return-void
.end method

.method protected setRangeData(IIIIZZZZ)V
    .locals 0
    .param p1, "colFirst"    # I
    .param p2, "colLast"    # I
    .param p3, "rwFirst"    # I
    .param p4, "rwLast"    # I
    .param p5, "colFirstRel"    # Z
    .param p6, "colLastRel"    # Z
    .param p7, "rowFirstRel"    # Z
    .param p8, "rowLastRel"    # Z

    .line 405
    iput p1, p0, Ljxl/biff/formula/Area;->columnFirst:I

    .line 406
    iput p2, p0, Ljxl/biff/formula/Area;->columnLast:I

    .line 407
    iput p3, p0, Ljxl/biff/formula/Area;->rowFirst:I

    .line 408
    iput p4, p0, Ljxl/biff/formula/Area;->rowLast:I

    .line 409
    iput-boolean p5, p0, Ljxl/biff/formula/Area;->columnFirstRelative:Z

    .line 410
    iput-boolean p6, p0, Ljxl/biff/formula/Area;->columnLastRelative:Z

    .line 411
    iput-boolean p7, p0, Ljxl/biff/formula/Area;->rowFirstRelative:Z

    .line 412
    iput-boolean p8, p0, Ljxl/biff/formula/Area;->rowLastRelative:Z

    .line 413
    return-void
.end method

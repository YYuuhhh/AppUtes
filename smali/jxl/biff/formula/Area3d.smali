.class Ljxl/biff/formula/Area3d;
.super Ljxl/biff/formula/Operand;
.source "Area3d.java"

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

.field private sheet:I

.field private workbook:Ljxl/biff/formula/ExternalSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Ljxl/biff/formula/Area3d;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/Area3d;->logger:Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "es"    # Ljxl/biff/formula/ExternalSheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 107
    iput-object p2, p0, Ljxl/biff/formula/Area3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    .line 108
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "seppos":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 110
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "endcell":Ljava/lang/String;
    const/16 v4, 0x21

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 114
    .local v4, "sep":I
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "cellString":Ljava/lang/String;
    invoke-static {v5}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    .line 116
    invoke-static {v5}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    .line 119
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "sheetName":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x27

    if-ne v1, v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_1

    .line 125
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 128
    :cond_1
    invoke-interface {p2, v6}, Ljxl/biff/formula/ExternalSheet;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljxl/biff/formula/Area3d;->sheet:I

    .line 130
    if-ltz v1, :cond_2

    .line 137
    invoke-static {v3}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    .line 138
    invoke-static {v3}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    .line 140
    iput-boolean v2, p0, Ljxl/biff/formula/Area3d;->columnFirstRelative:Z

    .line 141
    iput-boolean v2, p0, Ljxl/biff/formula/Area3d;->rowFirstRelative:Z

    .line 142
    iput-boolean v2, p0, Ljxl/biff/formula/Area3d;->columnLastRelative:Z

    .line 143
    iput-boolean v2, p0, Ljxl/biff/formula/Area3d;->rowLastRelative:Z

    .line 144
    return-void

    .line 132
    :cond_2
    new-instance v1, Ljxl/biff/formula/FormulaException;

    sget-object v2, Ljxl/biff/formula/FormulaException;->SHEET_REF_NOT_FOUND:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v1, v2, v6}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Ljxl/biff/formula/ExternalSheet;)V
    .locals 0
    .param p1, "es"    # Ljxl/biff/formula/ExternalSheet;

    .line 94
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 95
    iput-object p1, p0, Ljxl/biff/formula/Area3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    .line 96
    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 1
    .param p1, "colAdjust"    # I
    .param p2, "rowAdjust"    # I

    .line 280
    iget-boolean v0, p0, Ljxl/biff/formula/Area3d;->columnFirstRelative:Z

    if-eqz v0, :cond_0

    .line 282
    iget v0, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    add-int/2addr v0, p1

    iput v0, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    .line 285
    :cond_0
    iget-boolean v0, p0, Ljxl/biff/formula/Area3d;->columnLastRelative:Z

    if-eqz v0, :cond_1

    .line 287
    iget v0, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    add-int/2addr v0, p1

    iput v0, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    .line 290
    :cond_1
    iget-boolean v0, p0, Ljxl/biff/formula/Area3d;->rowFirstRelative:Z

    if-eqz v0, :cond_2

    .line 292
    iget v0, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    add-int/2addr v0, p2

    iput v0, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    .line 295
    :cond_2
    iget-boolean v0, p0, Ljxl/biff/formula/Area3d;->rowLastRelative:Z

    if-eqz v0, :cond_3

    .line 297
    iget v0, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    add-int/2addr v0, p2

    iput v0, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    .line 299
    :cond_3
    return-void
.end method

.method public columnInserted(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 313
    iget v0, p0, Ljxl/biff/formula/Area3d;->sheet:I

    if-eq p1, v0, :cond_0

    .line 315
    return-void

    .line 318
    :cond_0
    iget v0, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    if-lt v0, p2, :cond_1

    .line 320
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    .line 323
    :cond_1
    iget v0, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    if-lt v0, p2, :cond_2

    .line 325
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    .line 327
    :cond_2
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 341
    iget v0, p0, Ljxl/biff/formula/Area3d;->sheet:I

    if-eq p1, v0, :cond_0

    .line 343
    return-void

    .line 346
    :cond_0
    iget v0, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    if-ge p2, v0, :cond_1

    .line 348
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    .line 351
    :cond_1
    iget v0, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    if-gt p2, v0, :cond_2

    .line 353
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    .line 355
    :cond_2
    return-void
.end method

.method getBytes()[B
    .locals 4

    .line 230
    const/16 v0, 0xb

    new-array v0, v0, [B

    .line 231
    .local v0, "data":[B
    sget-object v1, Ljxl/biff/formula/Token;->AREA3D:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 233
    iget v1, p0, Ljxl/biff/formula/Area3d;->sheet:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 235
    iget v1, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 236
    iget v1, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 238
    iget v1, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    .line 241
    .local v1, "grcol":I
    iget-boolean v2, p0, Ljxl/biff/formula/Area3d;->rowFirstRelative:Z

    const v3, 0x8000

    if-eqz v2, :cond_0

    .line 243
    or-int/2addr v1, v3

    .line 246
    :cond_0
    iget-boolean v2, p0, Ljxl/biff/formula/Area3d;->columnFirstRelative:Z

    if-eqz v2, :cond_1

    .line 248
    or-int/lit16 v1, v1, 0x4000

    .line 251
    :cond_1
    const/4 v2, 0x7

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 253
    iget v1, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    .line 256
    iget-boolean v2, p0, Ljxl/biff/formula/Area3d;->rowLastRelative:Z

    if-eqz v2, :cond_2

    .line 258
    or-int/2addr v1, v3

    .line 261
    :cond_2
    iget-boolean v2, p0, Ljxl/biff/formula/Area3d;->columnLastRelative:Z

    if-eqz v2, :cond_3

    .line 263
    or-int/lit16 v1, v1, 0x4000

    .line 266
    :cond_3
    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 268
    return-object v0
.end method

.method getFirstColumn()I
    .locals 1

    .line 153
    iget v0, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    return v0
.end method

.method getFirstRow()I
    .locals 1

    .line 163
    iget v0, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    return v0
.end method

.method getLastColumn()I
    .locals 1

    .line 173
    iget v0, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    return v0
.end method

.method getLastRow()I
    .locals 1

    .line 183
    iget v0, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 217
    iget v0, p0, Ljxl/biff/formula/Area3d;->sheet:I

    iget v1, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    iget v2, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    iget-object v3, p0, Ljxl/biff/formula/Area3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    invoke-static {v0, v1, v2, v3, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(IIILjxl/biff/formula/ExternalSheet;Ljava/lang/StringBuffer;)V

    .line 219
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 220
    iget v0, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    iget v1, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    invoke-static {v0, v1, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 221
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 465
    invoke-virtual {p0}, Ljxl/biff/formula/Area3d;->setInvalid()V

    .line 466
    return-void
.end method

.method public read([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 195
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area3d;->sheet:I

    .line 196
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    .line 197
    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    .line 198
    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x7

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 199
    .local v0, "columnMask":I
    and-int/lit16 v1, v0, 0xff

    iput v1, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    .line 200
    and-int/lit16 v1, v0, 0x4000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Ljxl/biff/formula/Area3d;->columnFirstRelative:Z

    .line 201
    const v1, 0x8000

    and-int v4, v0, v1

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput-boolean v4, p0, Ljxl/biff/formula/Area3d;->rowFirstRelative:Z

    .line 202
    add-int/lit8 v4, p2, 0x8

    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, p1, v5

    invoke-static {v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 203
    and-int/lit16 v4, v0, 0xff

    iput v4, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    .line 204
    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Ljxl/biff/formula/Area3d;->columnLastRelative:Z

    .line 205
    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p0, Ljxl/biff/formula/Area3d;->rowLastRelative:Z

    .line 207
    const/16 v1, 0xa

    return v1
.end method

.method rowInserted(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 369
    iget v0, p0, Ljxl/biff/formula/Area3d;->sheet:I

    if-eq p1, v0, :cond_0

    .line 371
    return-void

    .line 374
    :cond_0
    iget v0, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    const v1, 0xffff

    if-ne v0, v1, :cond_1

    .line 377
    return-void

    .line 380
    :cond_1
    iget v1, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    if-gt p2, v1, :cond_2

    .line 382
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    .line 385
    :cond_2
    if-gt p2, v0, :cond_3

    .line 387
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    .line 389
    :cond_3
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 2
    .param p1, "sheetIndex"    # I
    .param p2, "row"    # I
    .param p3, "currentSheet"    # Z

    .line 403
    iget v0, p0, Ljxl/biff/formula/Area3d;->sheet:I

    if-eq p1, v0, :cond_0

    .line 405
    return-void

    .line 408
    :cond_0
    iget v0, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    const v1, 0xffff

    if-ne v0, v1, :cond_1

    .line 411
    return-void

    .line 414
    :cond_1
    iget v1, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    if-ge p2, v1, :cond_2

    .line 416
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    .line 419
    :cond_2
    if-gt p2, v0, :cond_3

    .line 421
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    .line 423
    :cond_3
    return-void
.end method

.method protected setRangeData(IIIIIZZZZ)V
    .locals 0
    .param p1, "sht"    # I
    .param p2, "colFirst"    # I
    .param p3, "colLast"    # I
    .param p4, "rwFirst"    # I
    .param p5, "rwLast"    # I
    .param p6, "colFirstRel"    # Z
    .param p7, "colLastRel"    # Z
    .param p8, "rowFirstRel"    # Z
    .param p9, "rowLastRel"    # Z

    .line 448
    iput p1, p0, Ljxl/biff/formula/Area3d;->sheet:I

    .line 449
    iput p2, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    .line 450
    iput p3, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    .line 451
    iput p4, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    .line 452
    iput p5, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    .line 453
    iput-boolean p6, p0, Ljxl/biff/formula/Area3d;->columnFirstRelative:Z

    .line 454
    iput-boolean p7, p0, Ljxl/biff/formula/Area3d;->columnLastRelative:Z

    .line 455
    iput-boolean p8, p0, Ljxl/biff/formula/Area3d;->rowFirstRelative:Z

    .line 456
    iput-boolean p9, p0, Ljxl/biff/formula/Area3d;->rowLastRelative:Z

    .line 457
    return-void
.end method

.class Ljxl/biff/formula/CellReference3d;
.super Ljxl/biff/formula/Operand;
.source "CellReference3d.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private column:I

.field private columnRelative:Z

.field private relativeTo:Ljxl/Cell;

.field private row:I

.field private rowRelative:Z

.field private sheet:I

.field private workbook:Ljxl/biff/formula/ExternalSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Ljxl/biff/formula/CellReference3d;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/CellReference3d;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "w"    # Ljxl/biff/formula/ExternalSheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 96
    iput-object p2, p0, Ljxl/biff/formula/CellReference3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/formula/CellReference3d;->columnRelative:Z

    .line 98
    iput-boolean v0, p0, Ljxl/biff/formula/CellReference3d;->rowRelative:Z

    .line 101
    const/16 v1, 0x21

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 102
    .local v1, "sep":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "cellString":Ljava/lang/String;
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljxl/biff/formula/CellReference3d;->column:I

    .line 104
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljxl/biff/formula/CellReference3d;->row:I

    .line 107
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "sheetName":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x27

    if-ne v3, v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    .line 113
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 115
    :cond_0
    invoke-interface {p2, v4}, Ljxl/biff/formula/ExternalSheet;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    .line 117
    if-ltz v0, :cond_1

    .line 122
    return-void

    .line 119
    :cond_1
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v3, Ljxl/biff/formula/FormulaException;->SHEET_REF_NOT_FOUND:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v3, v4}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljxl/Cell;Ljxl/biff/formula/ExternalSheet;)V
    .locals 0
    .param p1, "rt"    # Ljxl/Cell;
    .param p2, "w"    # Ljxl/biff/formula/ExternalSheet;

    .line 82
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 83
    iput-object p1, p0, Ljxl/biff/formula/CellReference3d;->relativeTo:Ljxl/Cell;

    .line 84
    iput-object p2, p0, Ljxl/biff/formula/CellReference3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    .line 85
    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 1
    .param p1, "colAdjust"    # I
    .param p2, "rowAdjust"    # I

    .line 215
    iget-boolean v0, p0, Ljxl/biff/formula/CellReference3d;->columnRelative:Z

    if-eqz v0, :cond_0

    .line 217
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->column:I

    add-int/2addr v0, p1

    iput v0, p0, Ljxl/biff/formula/CellReference3d;->column:I

    .line 220
    :cond_0
    iget-boolean v0, p0, Ljxl/biff/formula/CellReference3d;->rowRelative:Z

    if-eqz v0, :cond_1

    .line 222
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->row:I

    add-int/2addr v0, p2

    iput v0, p0, Ljxl/biff/formula/CellReference3d;->row:I

    .line 224
    :cond_1
    return-void
.end method

.method public columnInserted(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 238
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    if-eq p1, v0, :cond_0

    .line 240
    return-void

    .line 243
    :cond_0
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->column:I

    if-lt v0, p2, :cond_1

    .line 245
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/formula/CellReference3d;->column:I

    .line 247
    :cond_1
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 262
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    if-eq p1, v0, :cond_0

    .line 264
    return-void

    .line 267
    :cond_0
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->column:I

    if-lt v0, p2, :cond_1

    .line 269
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/biff/formula/CellReference3d;->column:I

    .line 271
    :cond_1
    return-void
.end method

.method getBytes()[B
    .locals 3

    .line 182
    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 183
    .local v0, "data":[B
    sget-object v1, Ljxl/biff/formula/Token;->REF3D:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 185
    iget v1, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 186
    iget v1, p0, Ljxl/biff/formula/CellReference3d;->row:I

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 188
    iget v1, p0, Ljxl/biff/formula/CellReference3d;->column:I

    .line 191
    .local v1, "grcol":I
    iget-boolean v2, p0, Ljxl/biff/formula/CellReference3d;->rowRelative:Z

    if-eqz v2, :cond_0

    .line 193
    const v2, 0x8000

    or-int/2addr v1, v2

    .line 196
    :cond_0
    iget-boolean v2, p0, Ljxl/biff/formula/CellReference3d;->columnRelative:Z

    if-eqz v2, :cond_1

    .line 198
    or-int/lit16 v1, v1, 0x4000

    .line 201
    :cond_1
    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 203
    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 150
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 160
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->row:I

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 7
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 170
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    iget v1, p0, Ljxl/biff/formula/CellReference3d;->column:I

    iget-boolean v2, p0, Ljxl/biff/formula/CellReference3d;->columnRelative:Z

    xor-int/lit8 v2, v2, 0x1

    iget v3, p0, Ljxl/biff/formula/CellReference3d;->row:I

    iget-boolean v4, p0, Ljxl/biff/formula/CellReference3d;->rowRelative:Z

    xor-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ljxl/biff/formula/CellReference3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Ljxl/biff/CellReferenceHelper;->getCellReference(IIZIZLjxl/biff/formula/ExternalSheet;Ljava/lang/StringBuffer;)V

    .line 173
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 326
    invoke-virtual {p0}, Ljxl/biff/formula/CellReference3d;->setInvalid()V

    .line 327
    return-void
.end method

.method public read([BI)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 133
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    .line 134
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/CellReference3d;->row:I

    .line 135
    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 136
    .local v0, "columnMask":I
    and-int/lit16 v1, v0, 0xff

    iput v1, p0, Ljxl/biff/formula/CellReference3d;->column:I

    .line 137
    and-int/lit16 v1, v0, 0x4000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Ljxl/biff/formula/CellReference3d;->columnRelative:Z

    .line 138
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Ljxl/biff/formula/CellReference3d;->rowRelative:Z

    .line 140
    const/4 v1, 0x6

    return v1
.end method

.method rowInserted(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "r"    # I
    .param p3, "currentSheet"    # Z

    .line 285
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    if-eq p1, v0, :cond_0

    .line 287
    return-void

    .line 290
    :cond_0
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->row:I

    if-lt v0, p2, :cond_1

    .line 292
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/formula/CellReference3d;->row:I

    .line 294
    :cond_1
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "r"    # I
    .param p3, "currentSheet"    # Z

    .line 308
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    if-eq p1, v0, :cond_0

    .line 310
    return-void

    .line 313
    :cond_0
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->row:I

    if-lt v0, p2, :cond_1

    .line 315
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/biff/formula/CellReference3d;->row:I

    .line 317
    :cond_1
    return-void
.end method

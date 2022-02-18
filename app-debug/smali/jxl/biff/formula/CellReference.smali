.class Ljxl/biff/formula/CellReference;
.super Ljxl/biff/formula/Operand;
.source "CellReference.java"

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Ljxl/biff/formula/CellReference;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/CellReference;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 88
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/CellReference;->column:I

    .line 89
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/CellReference;->row:I

    .line 90
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->isColumnRelative(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ljxl/biff/formula/CellReference;->columnRelative:Z

    .line 91
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->isRowRelative(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ljxl/biff/formula/CellReference;->rowRelative:Z

    .line 92
    return-void
.end method

.method public constructor <init>(Ljxl/Cell;)V
    .locals 0
    .param p1, "rt"    # Ljxl/Cell;

    .line 70
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 71
    iput-object p1, p0, Ljxl/biff/formula/CellReference;->relativeTo:Ljxl/Cell;

    .line 72
    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .locals 1
    .param p1, "colAdjust"    # I
    .param p2, "rowAdjust"    # I

    .line 184
    iget-boolean v0, p0, Ljxl/biff/formula/CellReference;->columnRelative:Z

    if-eqz v0, :cond_0

    .line 186
    iget v0, p0, Ljxl/biff/formula/CellReference;->column:I

    add-int/2addr v0, p1

    iput v0, p0, Ljxl/biff/formula/CellReference;->column:I

    .line 189
    :cond_0
    iget-boolean v0, p0, Ljxl/biff/formula/CellReference;->rowRelative:Z

    if-eqz v0, :cond_1

    .line 191
    iget v0, p0, Ljxl/biff/formula/CellReference;->row:I

    add-int/2addr v0, p2

    iput v0, p0, Ljxl/biff/formula/CellReference;->row:I

    .line 193
    :cond_1
    return-void
.end method

.method public columnInserted(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 207
    if-nez p3, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    iget v0, p0, Ljxl/biff/formula/CellReference;->column:I

    if-lt v0, p2, :cond_1

    .line 214
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/formula/CellReference;->column:I

    .line 216
    :cond_1
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "col"    # I
    .param p3, "currentSheet"    # Z

    .line 230
    if-nez p3, :cond_0

    .line 232
    return-void

    .line 235
    :cond_0
    iget v0, p0, Ljxl/biff/formula/CellReference;->column:I

    if-lt v0, p2, :cond_1

    .line 237
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/biff/formula/CellReference;->column:I

    .line 239
    :cond_1
    return-void
.end method

.method getBytes()[B
    .locals 3

    .line 151
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 152
    .local v0, "data":[B
    invoke-virtual {p0}, Ljxl/biff/formula/CellReference;->useAlternateCode()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljxl/biff/formula/Token;->REF:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Ljxl/biff/formula/Token;->REF:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode2()B

    move-result v1

    :goto_0
    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 155
    iget v1, p0, Ljxl/biff/formula/CellReference;->row:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 157
    iget v1, p0, Ljxl/biff/formula/CellReference;->column:I

    .line 160
    .local v1, "grcol":I
    iget-boolean v2, p0, Ljxl/biff/formula/CellReference;->rowRelative:Z

    if-eqz v2, :cond_1

    .line 162
    const v2, 0x8000

    or-int/2addr v1, v2

    .line 165
    :cond_1
    iget-boolean v2, p0, Ljxl/biff/formula/CellReference;->columnRelative:Z

    if-eqz v2, :cond_2

    .line 167
    or-int/lit16 v1, v1, 0x4000

    .line 170
    :cond_2
    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 172
    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 119
    iget v0, p0, Ljxl/biff/formula/CellReference;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 129
    iget v0, p0, Ljxl/biff/formula/CellReference;->row:I

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 139
    iget v0, p0, Ljxl/biff/formula/CellReference;->column:I

    iget-boolean v1, p0, Ljxl/biff/formula/CellReference;->columnRelative:Z

    xor-int/lit8 v1, v1, 0x1

    iget v2, p0, Ljxl/biff/formula/CellReference;->row:I

    iget-boolean v3, p0, Ljxl/biff/formula/CellReference;->rowRelative:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(IZIZLjava/lang/StringBuffer;)V

    .line 142
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 295
    return-void
.end method

.method public read([BI)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 103
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/CellReference;->row:I

    .line 104
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 105
    .local v0, "columnMask":I
    and-int/lit16 v1, v0, 0xff

    iput v1, p0, Ljxl/biff/formula/CellReference;->column:I

    .line 106
    and-int/lit16 v1, v0, 0x4000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Ljxl/biff/formula/CellReference;->columnRelative:Z

    .line 107
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Ljxl/biff/formula/CellReference;->rowRelative:Z

    .line 109
    const/4 v1, 0x4

    return v1
.end method

.method rowInserted(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "r"    # I
    .param p3, "currentSheet"    # Z

    .line 253
    if-nez p3, :cond_0

    .line 255
    return-void

    .line 258
    :cond_0
    iget v0, p0, Ljxl/biff/formula/CellReference;->row:I

    if-lt v0, p2, :cond_1

    .line 260
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/formula/CellReference;->row:I

    .line 262
    :cond_1
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 1
    .param p1, "sheetIndex"    # I
    .param p2, "r"    # I
    .param p3, "currentSheet"    # Z

    .line 276
    if-nez p3, :cond_0

    .line 278
    return-void

    .line 281
    :cond_0
    iget v0, p0, Ljxl/biff/formula/CellReference;->row:I

    if-lt v0, p2, :cond_1

    .line 283
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/biff/formula/CellReference;->row:I

    .line 285
    :cond_1
    return-void
.end method

.class public Ljxl/read/biff/ColumnInfoRecord;
.super Ljxl/biff/RecordData;
.source "ColumnInfoRecord.java"


# instance fields
.field private collapsed:Z

.field private data:[B

.field private endColumn:I

.field private hidden:Z

.field private outlineLevel:I

.field private startColumn:I

.field private width:I

.field private xfIndex:I


# direct methods
.method constructor <init>(Ljxl/read/biff/Record;)V
    .locals 6
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 78
    sget-object v0, Ljxl/biff/Type;->COLINFO:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/RecordData;-><init>(Ljxl/biff/Type;)V

    .line 80
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    .line 82
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v0, v0, v3

    invoke-static {v2, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/ColumnInfoRecord;->startColumn:I

    .line 83
    iget-object v0, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    invoke-static {v2, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/ColumnInfoRecord;->endColumn:I

    .line 84
    iget-object v0, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    const/4 v2, 0x4

    aget-byte v2, v0, v2

    const/4 v4, 0x5

    aget-byte v0, v0, v4

    invoke-static {v2, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/ColumnInfoRecord;->width:I

    .line 85
    iget-object v0, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    const/4 v2, 0x6

    aget-byte v2, v0, v2

    const/4 v4, 0x7

    aget-byte v0, v0, v4

    invoke-static {v2, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/ColumnInfoRecord;->xfIndex:I

    .line 87
    iget-object v0, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    const/16 v2, 0x8

    aget-byte v4, v0, v2

    const/16 v5, 0x9

    aget-byte v0, v0, v5

    invoke-static {v4, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 88
    .local v0, "options":I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Ljxl/read/biff/ColumnInfoRecord;->hidden:Z

    .line 89
    and-int/lit16 v4, v0, 0x700

    shr-int/lit8 v2, v4, 0x8

    iput v2, p0, Ljxl/read/biff/ColumnInfoRecord;->outlineLevel:I

    .line 90
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_1

    move v1, v3

    :cond_1
    iput-boolean v1, p0, Ljxl/read/biff/ColumnInfoRecord;->collapsed:Z

    .line 91
    return-void
.end method


# virtual methods
.method public getCollapsed()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Ljxl/read/biff/ColumnInfoRecord;->collapsed:Z

    return v0
.end method

.method public getEndColumn()I
    .locals 1

    .line 110
    iget v0, p0, Ljxl/read/biff/ColumnInfoRecord;->endColumn:I

    return v0
.end method

.method public getHidden()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Ljxl/read/biff/ColumnInfoRecord;->hidden:Z

    return v0
.end method

.method public getOutlineLevel()I
    .locals 1

    .line 130
    iget v0, p0, Ljxl/read/biff/ColumnInfoRecord;->outlineLevel:I

    return v0
.end method

.method public getStartColumn()I
    .locals 1

    .line 100
    iget v0, p0, Ljxl/read/biff/ColumnInfoRecord;->startColumn:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 150
    iget v0, p0, Ljxl/read/biff/ColumnInfoRecord;->width:I

    return v0
.end method

.method public getXFIndex()I
    .locals 1

    .line 120
    iget v0, p0, Ljxl/read/biff/ColumnInfoRecord;->xfIndex:I

    return v0
.end method

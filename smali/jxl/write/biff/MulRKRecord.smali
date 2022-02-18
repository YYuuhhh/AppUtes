.class Ljxl/write/biff/MulRKRecord;
.super Ljxl/biff/WritableRecordData;
.source "MulRKRecord.java"


# instance fields
.field private colFirst:I

.field private colLast:I

.field private rknumbers:[I

.field private row:I

.field private xfIndices:[I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .param p1, "numbers"    # Ljava/util/List;

    .line 62
    sget-object v0, Ljxl/biff/Type;->MULRK:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 63
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/Number;

    invoke-virtual {v1}, Ljxl/write/Number;->getRow()I

    move-result v1

    iput v1, p0, Ljxl/write/biff/MulRKRecord;->row:I

    .line 64
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/write/Number;

    invoke-virtual {v0}, Ljxl/write/Number;->getColumn()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/MulRKRecord;->colFirst:I

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/MulRKRecord;->colLast:I

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Ljxl/write/biff/MulRKRecord;->rknumbers:[I

    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Ljxl/write/biff/MulRKRecord;->xfIndices:[I

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Ljxl/write/biff/MulRKRecord;->rknumbers:[I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/Number;

    invoke-virtual {v2}, Ljxl/write/Number;->getValue()D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, v1, v0

    .line 73
    iget-object v1, p0, Ljxl/write/biff/MulRKRecord;->xfIndices:[I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/CellValue;

    invoke-virtual {v2}, Ljxl/write/biff/CellValue;->getXFIndex()I

    move-result v2

    aput v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 7

    .line 84
    iget-object v0, p0, Ljxl/write/biff/MulRKRecord;->rknumbers:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [B

    .line 87
    .local v0, "data":[B
    iget v1, p0, Ljxl/write/biff/MulRKRecord;->row:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 88
    iget v1, p0, Ljxl/write/biff/MulRKRecord;->colFirst:I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 91
    const/4 v1, 0x4

    .line 92
    .local v1, "pos":I
    const/4 v3, 0x0

    .line 93
    .local v3, "rkValue":I
    const/4 v4, 0x4

    new-array v4, v4, [B

    .line 94
    .local v4, "rkBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Ljxl/write/biff/MulRKRecord;->rknumbers:[I

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 96
    iget-object v6, p0, Ljxl/write/biff/MulRKRecord;->xfIndices:[I

    aget v6, v6, v5

    invoke-static {v6, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 102
    iget-object v6, p0, Ljxl/write/biff/MulRKRecord;->rknumbers:[I

    aget v6, v6, v5

    shl-int/lit8 v3, v6, 0x2

    .line 105
    or-int/2addr v3, v2

    .line 106
    add-int/lit8 v6, v1, 0x2

    invoke-static {v3, v0, v6}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 108
    add-int/lit8 v1, v1, 0x6

    .line 94
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 112
    .end local v5    # "i":I
    :cond_0
    iget v2, p0, Ljxl/write/biff/MulRKRecord;->colLast:I

    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 114
    return-object v0
.end method

.class Ljxl/read/biff/MulRKRecord;
.super Ljxl/biff/RecordData;
.source "MulRKRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private colFirst:I

.field private colLast:I

.field private numrks:I

.field private rknumbers:[I

.field private row:I

.field private xfIndices:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ljxl/read/biff/MulRKRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/MulRKRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 5
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 69
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 70
    invoke-virtual {p0}, Ljxl/read/biff/MulRKRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 71
    .local v0, "data":[B
    invoke-virtual {p0}, Ljxl/read/biff/MulRKRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getLength()I

    move-result v1

    .line 72
    .local v1, "length":I
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/read/biff/MulRKRecord;->row:I

    .line 73
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/read/biff/MulRKRecord;->colFirst:I

    .line 74
    add-int/lit8 v2, v1, -0x2

    aget-byte v2, v0, v2

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v0, v4

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/read/biff/MulRKRecord;->colLast:I

    .line 75
    iget v4, p0, Ljxl/read/biff/MulRKRecord;->colFirst:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/read/biff/MulRKRecord;->numrks:I

    .line 76
    new-array v3, v2, [I

    iput-object v3, p0, Ljxl/read/biff/MulRKRecord;->rknumbers:[I

    .line 77
    new-array v2, v2, [I

    iput-object v2, p0, Ljxl/read/biff/MulRKRecord;->xfIndices:[I

    .line 79
    invoke-direct {p0, v0}, Ljxl/read/biff/MulRKRecord;->readRks([B)V

    .line 80
    return-void
.end method

.method private readRks([B)V
    .locals 6
    .param p1, "data"    # [B

    .line 89
    const/4 v0, 0x4

    .line 91
    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljxl/read/biff/MulRKRecord;->numrks:I

    if-ge v1, v2, :cond_0

    .line 93
    iget-object v2, p0, Ljxl/read/biff/MulRKRecord;->xfIndices:[I

    aget-byte v3, p1, v0

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    aput v3, v2, v1

    .line 94
    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, p1, v3

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, p1, v4

    add-int/lit8 v5, v0, 0x5

    aget-byte v5, p1, v5

    invoke-static {v2, v3, v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v2

    .line 96
    .local v2, "rk":I
    iget-object v3, p0, Ljxl/read/biff/MulRKRecord;->rknumbers:[I

    aput v2, v3, v1

    .line 97
    add-int/lit8 v0, v0, 0x6

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    .end local v2    # "rk":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getFirstColumn()I
    .locals 1

    .line 118
    iget v0, p0, Ljxl/read/biff/MulRKRecord;->colFirst:I

    return v0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .line 128
    iget v0, p0, Ljxl/read/biff/MulRKRecord;->numrks:I

    return v0
.end method

.method public getRKNumber(I)I
    .locals 1
    .param p1, "index"    # I

    .line 139
    iget-object v0, p0, Ljxl/read/biff/MulRKRecord;->rknumbers:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 108
    iget v0, p0, Ljxl/read/biff/MulRKRecord;->row:I

    return v0
.end method

.method public getXFIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 150
    iget-object v0, p0, Ljxl/read/biff/MulRKRecord;->xfIndices:[I

    aget v0, v0, p1

    return v0
.end method

.class Ljxl/read/biff/MulBlankRecord;
.super Ljxl/biff/RecordData;
.source "MulBlankRecord.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private colFirst:I

.field private colLast:I

.field private numblanks:I

.field private row:I

.field private xfIndices:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Ljxl/read/biff/MulBlankRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/MulBlankRecord;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 5
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 65
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 66
    invoke-virtual {p0}, Ljxl/read/biff/MulBlankRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 67
    .local v0, "data":[B
    invoke-virtual {p0}, Ljxl/read/biff/MulBlankRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getLength()I

    move-result v1

    .line 68
    .local v1, "length":I
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/read/biff/MulBlankRecord;->row:I

    .line 69
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/read/biff/MulBlankRecord;->colFirst:I

    .line 70
    add-int/lit8 v2, v1, -0x2

    aget-byte v2, v0, v2

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v0, v4

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/read/biff/MulBlankRecord;->colLast:I

    .line 71
    iget v4, p0, Ljxl/read/biff/MulBlankRecord;->colFirst:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    iput v2, p0, Ljxl/read/biff/MulBlankRecord;->numblanks:I

    .line 72
    new-array v2, v2, [I

    iput-object v2, p0, Ljxl/read/biff/MulBlankRecord;->xfIndices:[I

    .line 74
    invoke-direct {p0, v0}, Ljxl/read/biff/MulBlankRecord;->readBlanks([B)V

    .line 75
    return-void
.end method

.method private readBlanks([B)V
    .locals 5
    .param p1, "data"    # [B

    .line 84
    const/4 v0, 0x4

    .line 85
    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljxl/read/biff/MulBlankRecord;->numblanks:I

    if-ge v1, v2, :cond_0

    .line 87
    iget-object v2, p0, Ljxl/read/biff/MulBlankRecord;->xfIndices:[I

    aget-byte v3, p1, v0

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    aput v3, v2, v1

    .line 88
    add-int/lit8 v0, v0, 0x2

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getFirstColumn()I
    .locals 1

    .line 109
    iget v0, p0, Ljxl/read/biff/MulBlankRecord;->colFirst:I

    return v0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .line 119
    iget v0, p0, Ljxl/read/biff/MulBlankRecord;->numblanks:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 99
    iget v0, p0, Ljxl/read/biff/MulBlankRecord;->row:I

    return v0
.end method

.method public getXFIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 129
    iget-object v0, p0, Ljxl/read/biff/MulBlankRecord;->xfIndices:[I

    aget v0, v0, p1

    return v0
.end method

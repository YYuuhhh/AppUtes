.class Ljxl/read/biff/DimensionRecord;
.super Ljxl/biff/RecordData;
.source "DimensionRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/DimensionRecord$Biff7;
    }
.end annotation


# static fields
.field public static biff7:Ljxl/read/biff/DimensionRecord$Biff7;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private numCols:I

.field private numRows:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-class v0, Ljxl/read/biff/DimensionRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/DimensionRecord;->logger:Ljxl/common/Logger;

    .line 50
    new-instance v0, Ljxl/read/biff/DimensionRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/DimensionRecord$Biff7;-><init>(Ljxl/read/biff/DimensionRecord$1;)V

    sput-object v0, Ljxl/read/biff/DimensionRecord;->biff7:Ljxl/read/biff/DimensionRecord$Biff7;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 3
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 59
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 60
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 66
    .local v0, "data":[B
    array-length v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 68
    invoke-direct {p0, v0}, Ljxl/read/biff/DimensionRecord;->read10ByteData([B)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0, v0}, Ljxl/read/biff/DimensionRecord;->read14ByteData([B)V

    .line 74
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/DimensionRecord$Biff7;)V
    .locals 1
    .param p1, "t"    # Ljxl/read/biff/Record;
    .param p2, "biff7"    # Ljxl/read/biff/DimensionRecord$Biff7;

    .line 84
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 85
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 86
    .local v0, "data":[B
    invoke-direct {p0, v0}, Ljxl/read/biff/DimensionRecord;->read10ByteData([B)V

    .line 87
    return-void
.end method

.method private read10ByteData([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 95
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/DimensionRecord;->numRows:I

    .line 96
    const/4 v0, 0x6

    aget-byte v0, p1, v0

    const/4 v1, 0x7

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/DimensionRecord;->numCols:I

    .line 97
    return-void
.end method

.method private read14ByteData([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 105
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    const/4 v3, 0x7

    aget-byte v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/DimensionRecord;->numRows:I

    .line 106
    const/16 v0, 0xa

    aget-byte v0, p1, v0

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/DimensionRecord;->numCols:I

    .line 107
    return-void
.end method


# virtual methods
.method public getNumberOfColumns()I
    .locals 1

    .line 126
    iget v0, p0, Ljxl/read/biff/DimensionRecord;->numCols:I

    return v0
.end method

.method public getNumberOfRows()I
    .locals 1

    .line 116
    iget v0, p0, Ljxl/read/biff/DimensionRecord;->numRows:I

    return v0
.end method

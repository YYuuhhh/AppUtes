.class Ljxl/read/biff/DefaultRowHeightRecord;
.super Ljxl/biff/RecordData;
.source "DefaultRowHeightRecord.java"


# instance fields
.field private height:I


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 3
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 42
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 43
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 45
    .local v0, "data":[B
    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 47
    aget-byte v1, v0, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/DefaultRowHeightRecord;->height:I

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 58
    iget v0, p0, Ljxl/read/biff/DefaultRowHeightRecord;->height:I

    return v0
.end method

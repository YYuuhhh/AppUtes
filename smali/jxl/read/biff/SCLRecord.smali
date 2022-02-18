.class Ljxl/read/biff/SCLRecord;
.super Ljxl/biff/RecordData;
.source "SCLRecord.java"


# instance fields
.field private denominator:I

.field private numerator:I


# direct methods
.method protected constructor <init>(Ljxl/read/biff/Record;)V
    .locals 3
    .param p1, "r"    # Ljxl/read/biff/Record;

    .line 47
    sget-object v0, Ljxl/biff/Type;->SCL:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/RecordData;-><init>(Ljxl/biff/Type;)V

    .line 49
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 51
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/SCLRecord;->numerator:I

    .line 52
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/SCLRecord;->denominator:I

    .line 53
    return-void
.end method


# virtual methods
.method public getZoomFactor()I
    .locals 2

    .line 62
    iget v0, p0, Ljxl/read/biff/SCLRecord;->numerator:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Ljxl/read/biff/SCLRecord;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

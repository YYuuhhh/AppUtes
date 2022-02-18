.class Ljxl/read/biff/NineteenFourRecord;
.super Ljxl/biff/RecordData;
.source "NineteenFourRecord.java"


# instance fields
.field private nineteenFour:Z


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 4
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 41
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 43
    invoke-virtual {p0}, Ljxl/read/biff/NineteenFourRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 45
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Ljxl/read/biff/NineteenFourRecord;->nineteenFour:Z

    .line 47
    return-void
.end method


# virtual methods
.method public is1904()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Ljxl/read/biff/NineteenFourRecord;->nineteenFour:Z

    return v0
.end method

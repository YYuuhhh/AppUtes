.class Ljxl/read/biff/DefaultColumnWidthRecord;
.super Ljxl/biff/RecordData;
.source "DefaultColumnWidthRecord.java"


# instance fields
.field private width:I


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
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/DefaultColumnWidthRecord;->width:I

    .line 46
    return-void
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    .line 56
    iget v0, p0, Ljxl/read/biff/DefaultColumnWidthRecord;->width:I

    return v0
.end method

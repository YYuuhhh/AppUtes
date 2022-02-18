.class public Ljxl/read/biff/GuttersRecord;
.super Ljxl/biff/RecordData;
.source "GuttersRecord.java"


# instance fields
.field private columnOutlineLevel:I

.field private height:I

.field private rowOutlineLevel:I

.field private width:I


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 3
    .param p1, "r"    # Ljxl/read/biff/Record;

    .line 42
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 44
    invoke-virtual {p0}, Ljxl/read/biff/GuttersRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 45
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/GuttersRecord;->width:I

    .line 46
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/GuttersRecord;->height:I

    .line 47
    const/4 v1, 0x4

    aget-byte v1, v0, v1

    const/4 v2, 0x5

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/GuttersRecord;->rowOutlineLevel:I

    .line 48
    const/4 v1, 0x6

    aget-byte v1, v0, v1

    const/4 v2, 0x7

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/GuttersRecord;->columnOutlineLevel:I

    .line 49
    return-void
.end method


# virtual methods
.method getColumnOutlineLevel()I
    .locals 1

    .line 58
    iget v0, p0, Ljxl/read/biff/GuttersRecord;->columnOutlineLevel:I

    return v0
.end method

.method getRowOutlineLevel()I
    .locals 1

    .line 53
    iget v0, p0, Ljxl/read/biff/GuttersRecord;->rowOutlineLevel:I

    return v0
.end method

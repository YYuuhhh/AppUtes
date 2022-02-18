.class Ljxl/write/biff/DimensionRecord;
.super Ljxl/biff/WritableRecordData;
.source "DimensionRecord.java"


# instance fields
.field private data:[B

.field private numCols:I

.field private numRows:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "r"    # I
    .param p2, "c"    # I

    .line 53
    sget-object v0, Ljxl/biff/Type;->DIMENSION:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 54
    iput p1, p0, Ljxl/write/biff/DimensionRecord;->numRows:I

    .line 55
    iput p2, p0, Ljxl/write/biff/DimensionRecord;->numCols:I

    .line 57
    const/16 v0, 0xe

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/DimensionRecord;->data:[B

    .line 59
    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 60
    iget v0, p0, Ljxl/write/biff/DimensionRecord;->numCols:I

    iget-object v1, p0, Ljxl/write/biff/DimensionRecord;->data:[B

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 61
    return-void
.end method


# virtual methods
.method protected getData()[B
    .locals 1

    .line 70
    iget-object v0, p0, Ljxl/write/biff/DimensionRecord;->data:[B

    return-object v0
.end method

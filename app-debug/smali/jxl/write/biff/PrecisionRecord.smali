.class Ljxl/write/biff/PrecisionRecord;
.super Ljxl/biff/WritableRecordData;
.source "PrecisionRecord.java"


# instance fields
.field private asDisplayed:Z

.field private data:[B


# direct methods
.method public constructor <init>(Z)V
    .locals 3
    .param p1, "disp"    # Z

    .line 47
    sget-object v0, Ljxl/biff/Type;->PRECISION:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 49
    iput-boolean p1, p0, Ljxl/write/biff/PrecisionRecord;->asDisplayed:Z

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/PrecisionRecord;->data:[B

    .line 52
    if-nez p1, :cond_0

    .line 54
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 65
    iget-object v0, p0, Ljxl/write/biff/PrecisionRecord;->data:[B

    return-object v0
.end method

.class Ljxl/write/biff/NineteenFourRecord;
.super Ljxl/biff/WritableRecordData;
.source "NineteenFourRecord.java"


# instance fields
.field private data:[B

.field private nineteenFourDate:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 3
    .param p1, "oldDate"    # Z

    .line 49
    sget-object v0, Ljxl/biff/Type;->NINETEENFOUR:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 51
    iput-boolean p1, p0, Ljxl/write/biff/NineteenFourRecord;->nineteenFourDate:Z

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/NineteenFourRecord;->data:[B

    .line 54
    if-eqz p1, :cond_0

    .line 56
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 66
    iget-object v0, p0, Ljxl/write/biff/NineteenFourRecord;->data:[B

    return-object v0
.end method

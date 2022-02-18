.class Ljxl/write/biff/HideobjRecord;
.super Ljxl/biff/WritableRecordData;
.source "HideobjRecord.java"


# instance fields
.field private data:[B

.field private hidemode:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "newHideMode"    # I

    .line 53
    sget-object v0, Ljxl/biff/Type;->HIDEOBJ:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 55
    iput p1, p0, Ljxl/write/biff/HideobjRecord;->hidemode:I

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/HideobjRecord;->data:[B

    .line 58
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 59
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 68
    iget-object v0, p0, Ljxl/write/biff/HideobjRecord;->data:[B

    return-object v0
.end method

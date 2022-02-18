.class Ljxl/write/biff/SCLRecord;
.super Ljxl/biff/WritableRecordData;
.source "SCLRecord.java"


# instance fields
.field private zoomFactor:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "zf"    # I

    .line 43
    sget-object v0, Ljxl/biff/Type;->SCL:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 45
    iput p1, p0, Ljxl/write/biff/SCLRecord;->zoomFactor:I

    .line 46
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 4

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 56
    .local v0, "data":[B
    iget v1, p0, Ljxl/write/biff/SCLRecord;->zoomFactor:I

    .line 57
    .local v1, "numerator":I
    const/16 v2, 0x64

    .line 59
    .local v2, "denominator":I
    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 60
    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 62
    return-object v0
.end method

.class abstract Ljxl/write/biff/MarginRecord;
.super Ljxl/biff/WritableRecordData;
.source "MarginRecord.java"


# instance fields
.field private margin:D


# direct methods
.method public constructor <init>(Ljxl/biff/Type;D)V
    .locals 0
    .param p1, "t"    # Ljxl/biff/Type;
    .param p2, "v"    # D

    .line 41
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 42
    iput-wide p2, p0, Ljxl/write/biff/MarginRecord;->margin:D

    .line 43
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 4

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 53
    .local v0, "data":[B
    iget-wide v1, p0, Ljxl/write/biff/MarginRecord;->margin:D

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ljxl/biff/DoubleHelper;->getIEEEBytes(D[BI)V

    .line 55
    return-object v0
.end method

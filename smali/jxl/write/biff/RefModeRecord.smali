.class Ljxl/write/biff/RefModeRecord;
.super Ljxl/biff/WritableRecordData;
.source "RefModeRecord.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    sget-object v0, Ljxl/biff/Type;->REFMODE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 3

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 48
    .local v0, "data":[B
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 50
    return-object v0
.end method

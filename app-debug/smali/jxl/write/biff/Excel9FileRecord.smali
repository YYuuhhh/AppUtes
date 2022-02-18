.class Ljxl/write/biff/Excel9FileRecord;
.super Ljxl/biff/WritableRecordData;
.source "Excel9FileRecord.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    sget-object v0, Ljxl/biff/Type;->EXCEL9FILE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

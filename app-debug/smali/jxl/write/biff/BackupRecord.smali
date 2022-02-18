.class Ljxl/write/biff/BackupRecord;
.super Ljxl/biff/WritableRecordData;
.source "BackupRecord.java"


# instance fields
.field private backup:Z

.field private data:[B


# direct methods
.method public constructor <init>(Z)V
    .locals 3
    .param p1, "bu"    # Z

    .line 48
    sget-object v0, Ljxl/biff/Type;->BACKUP:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 50
    iput-boolean p1, p0, Ljxl/write/biff/BackupRecord;->backup:Z

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/BackupRecord;->data:[B

    .line 55
    if-eqz p1, :cond_0

    .line 57
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 68
    iget-object v0, p0, Ljxl/write/biff/BackupRecord;->data:[B

    return-object v0
.end method

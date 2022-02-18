.class Ljxl/read/biff/CentreRecord;
.super Ljxl/biff/RecordData;
.source "CentreRecord.java"


# instance fields
.field private centre:Z


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 5
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 42
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 43
    invoke-virtual {p0}, Ljxl/read/biff/CentreRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 44
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Ljxl/read/biff/CentreRecord;->centre:Z

    .line 45
    return-void
.end method


# virtual methods
.method public isCentre()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Ljxl/read/biff/CentreRecord;->centre:Z

    return v0
.end method

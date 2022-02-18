.class Ljxl/read/biff/PrintHeadersRecord;
.super Ljxl/biff/RecordData;
.source "PrintHeadersRecord.java"


# instance fields
.field private printHeaders:Z


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 4
    .param p1, "ph"    # Ljxl/read/biff/Record;

    .line 41
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 42
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 44
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Ljxl/read/biff/PrintHeadersRecord;->printHeaders:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getPrintHeaders()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Ljxl/read/biff/PrintHeadersRecord;->printHeaders:Z

    return v0
.end method

.class Ljxl/write/biff/PLSRecord;
.super Ljxl/biff/WritableRecordData;
.source "PLSRecord.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Ljxl/read/biff/PLSRecord;)V
    .locals 1
    .param p1, "hr"    # Ljxl/read/biff/PLSRecord;

    .line 42
    sget-object v0, Ljxl/biff/Type;->PLS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 44
    invoke-virtual {p1}, Ljxl/read/biff/PLSRecord;->getData()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/PLSRecord;->data:[B

    .line 45
    return-void
.end method

.method public constructor <init>(Ljxl/write/biff/PLSRecord;)V
    .locals 4
    .param p1, "hr"    # Ljxl/write/biff/PLSRecord;

    .line 54
    sget-object v0, Ljxl/biff/Type;->PLS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 56
    iget-object v0, p1, Ljxl/write/biff/PLSRecord;->data:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/PLSRecord;->data:[B

    .line 57
    iget-object v1, p1, Ljxl/write/biff/PLSRecord;->data:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 67
    iget-object v0, p0, Ljxl/write/biff/PLSRecord;->data:[B

    return-object v0
.end method

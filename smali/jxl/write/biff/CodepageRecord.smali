.class Ljxl/write/biff/CodepageRecord;
.super Ljxl/biff/WritableRecordData;
.source "CodepageRecord.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    sget-object v0, Ljxl/biff/Type;->CODEPAGE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Ljxl/write/biff/CodepageRecord;->data:[B

    .line 45
    return-void

    :array_0
    .array-data 1
        -0x1ct
        0x4t
    .end array-data
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 54
    iget-object v0, p0, Ljxl/write/biff/CodepageRecord;->data:[B

    return-object v0
.end method

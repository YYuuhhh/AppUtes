.class Ljxl/write/biff/TabIdRecord;
.super Ljxl/biff/WritableRecordData;
.source "TabIdRecord.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "sheets"    # I

    .line 43
    sget-object v0, Ljxl/biff/Type;->TABID:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 45
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/TabIdRecord;->data:[B

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 49
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Ljxl/write/biff/TabIdRecord;->data:[B

    mul-int/lit8 v3, v0, 0x2

    invoke-static {v1, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 60
    iget-object v0, p0, Ljxl/write/biff/TabIdRecord;->data:[B

    return-object v0
.end method

.class Ljxl/write/biff/HorizontalPageBreaksRecord;
.super Ljxl/biff/WritableRecordData;
.source "HorizontalPageBreaksRecord.java"


# instance fields
.field private rowBreaks:[I


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "breaks"    # [I

    .line 43
    sget-object v0, Ljxl/biff/Type;->HORIZONTALPAGEBREAKS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 45
    iput-object p1, p0, Ljxl/write/biff/HorizontalPageBreaksRecord;->rowBreaks:[I

    .line 46
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 5

    .line 55
    iget-object v0, p0, Ljxl/write/biff/HorizontalPageBreaksRecord;->rowBreaks:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 58
    .local v1, "data":[B
    array-length v0, v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 59
    const/4 v0, 0x2

    .line 61
    .local v0, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljxl/write/biff/HorizontalPageBreaksRecord;->rowBreaks:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 63
    aget v3, v3, v2

    invoke-static {v3, v1, v0}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 64
    const/16 v3, 0xff

    add-int/lit8 v4, v0, 0x4

    invoke-static {v3, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 65
    add-int/lit8 v0, v0, 0x6

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

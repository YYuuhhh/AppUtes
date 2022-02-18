.class Ljxl/write/biff/PaneRecord;
.super Ljxl/biff/WritableRecordData;
.source "PaneRecord.java"


# static fields
.field private static final bottomLeftPane:I = 0x2

.field private static final bottomRightPane:I = 0x0

.field private static final topLeftPane:I = 0x3

.field private static final topRightPane:I = 0x1


# instance fields
.field private columnsVisible:I

.field private rowsVisible:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "cols"    # I
    .param p2, "rows"    # I

    .line 56
    sget-object v0, Ljxl/biff/Type;->PANE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 58
    iput p2, p0, Ljxl/write/biff/PaneRecord;->rowsVisible:I

    .line 59
    iput p1, p0, Ljxl/write/biff/PaneRecord;->columnsVisible:I

    .line 60
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 4

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 72
    .local v0, "data":[B
    iget v1, p0, Ljxl/write/biff/PaneRecord;->columnsVisible:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 75
    iget v1, p0, Ljxl/write/biff/PaneRecord;->rowsVisible:I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 78
    iget v1, p0, Ljxl/write/biff/PaneRecord;->rowsVisible:I

    if-lez v1, :cond_0

    .line 80
    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 84
    :cond_0
    iget v1, p0, Ljxl/write/biff/PaneRecord;->columnsVisible:I

    if-lez v1, :cond_1

    .line 86
    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 90
    :cond_1
    const/4 v1, 0x3

    .line 92
    .local v1, "activePane":I
    iget v2, p0, Ljxl/write/biff/PaneRecord;->rowsVisible:I

    if-lez v2, :cond_2

    iget v3, p0, Ljxl/write/biff/PaneRecord;->columnsVisible:I

    if-nez v3, :cond_2

    .line 94
    const/4 v1, 0x2

    goto :goto_0

    .line 96
    :cond_2
    if-nez v2, :cond_3

    iget v3, p0, Ljxl/write/biff/PaneRecord;->columnsVisible:I

    if-lez v3, :cond_3

    .line 98
    const/4 v1, 0x1

    goto :goto_0

    .line 100
    :cond_3
    if-lez v2, :cond_4

    iget v2, p0, Ljxl/write/biff/PaneRecord;->columnsVisible:I

    if-lez v2, :cond_4

    .line 102
    const/4 v1, 0x0

    .line 105
    :cond_4
    :goto_0
    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 107
    return-object v0
.end method

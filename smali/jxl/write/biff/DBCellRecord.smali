.class Ljxl/write/biff/DBCellRecord;
.super Ljxl/biff/WritableRecordData;
.source "DBCellRecord.java"


# instance fields
.field private cellOffset:I

.field private cellRowPositions:Ljava/util/ArrayList;

.field private position:I

.field private rowPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "rp"    # I

    .line 63
    sget-object v0, Ljxl/biff/Type;->DBCELL:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 64
    iput p1, p0, Ljxl/write/biff/DBCellRecord;->rowPos:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/write/biff/DBCellRecord;->cellRowPositions:Ljava/util/ArrayList;

    .line 66
    return-void
.end method


# virtual methods
.method addCellRowPosition(I)V
    .locals 2
    .param p1, "pos"    # I

    .line 85
    iget-object v0, p0, Ljxl/write/biff/DBCellRecord;->cellRowPositions:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method protected getData()[B
    .locals 6

    .line 105
    iget-object v0, p0, Ljxl/write/biff/DBCellRecord;->cellRowPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 108
    .local v0, "data":[B
    iget v1, p0, Ljxl/write/biff/DBCellRecord;->position:I

    iget v2, p0, Ljxl/write/biff/DBCellRecord;->rowPos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 111
    const/4 v1, 0x4

    .line 112
    .local v1, "pos":I
    iget v2, p0, Ljxl/write/biff/DBCellRecord;->cellOffset:I

    .line 113
    .local v2, "lastCellPos":I
    iget-object v3, p0, Ljxl/write/biff/DBCellRecord;->cellRowPositions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 114
    .local v3, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 117
    .local v4, "cellPos":I
    sub-int v5, v4, v2

    invoke-static {v5, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 118
    move v2, v4

    .line 119
    nop

    .end local v4    # "cellPos":I
    add-int/lit8 v1, v1, 0x2

    .line 120
    goto :goto_0

    .line 122
    :cond_0
    return-object v0
.end method

.method setCellOffset(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 75
    iput p1, p0, Ljxl/write/biff/DBCellRecord;->cellOffset:I

    .line 76
    return-void
.end method

.method setPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 95
    iput p1, p0, Ljxl/write/biff/DBCellRecord;->position:I

    .line 96
    return-void
.end method

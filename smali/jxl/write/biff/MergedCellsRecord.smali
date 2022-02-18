.class public Ljxl/write/biff/MergedCellsRecord;
.super Ljxl/biff/WritableRecordData;
.source "MergedCellsRecord.java"


# instance fields
.field private ranges:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "mc"    # Ljava/util/ArrayList;

    .line 48
    sget-object v0, Ljxl/biff/Type;->MERGEDCELLS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 50
    iput-object p1, p0, Ljxl/write/biff/MergedCellsRecord;->ranges:Ljava/util/ArrayList;

    .line 51
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 8

    .line 60
    iget-object v0, p0, Ljxl/write/biff/MergedCellsRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 63
    .local v0, "data":[B
    iget-object v1, p0, Ljxl/write/biff/MergedCellsRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 65
    const/4 v1, 0x2

    .line 66
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 67
    .local v2, "range":Ljxl/Range;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Ljxl/write/biff/MergedCellsRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 69
    iget-object v4, p0, Ljxl/write/biff/MergedCellsRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljxl/Range;

    .line 72
    invoke-interface {v2}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v4

    .line 73
    .local v4, "tl":Ljxl/Cell;
    invoke-interface {v2}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v5

    .line 75
    .local v5, "br":Ljxl/Cell;
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v6

    invoke-static {v6, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 76
    invoke-interface {v5}, Ljxl/Cell;->getRow()I

    move-result v6

    add-int/lit8 v7, v1, 0x2

    invoke-static {v6, v0, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 77
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v6

    add-int/lit8 v7, v1, 0x4

    invoke-static {v6, v0, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 78
    invoke-interface {v5}, Ljxl/Cell;->getColumn()I

    move-result v6

    add-int/lit8 v7, v1, 0x6

    invoke-static {v6, v0, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 80
    nop

    .end local v4    # "tl":Ljxl/Cell;
    .end local v5    # "br":Ljxl/Cell;
    add-int/lit8 v1, v1, 0x8

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "i":I
    :cond_0
    return-object v0
.end method

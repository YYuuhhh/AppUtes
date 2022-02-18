.class Ljxl/biff/drawing/Dgg;
.super Ljxl/biff/drawing/EscherAtom;
.source "Dgg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/drawing/Dgg$Cluster;
    }
.end annotation


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private clusters:Ljava/util/ArrayList;

.field private data:[B

.field private drawingsSaved:I

.field private maxShapeId:I

.field private numClusters:I

.field private shapesSaved:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Ljxl/biff/drawing/Dgg;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Dgg;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "numShapes"    # I
    .param p2, "numDrawings"    # I

    .line 134
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->DGG:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    .line 135
    iput p1, p0, Ljxl/biff/drawing/Dgg;->shapesSaved:I

    .line 136
    iput p2, p0, Ljxl/biff/drawing/Dgg;->drawingsSaved:I

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/biff/drawing/Dgg;->clusters:Ljava/util/ArrayList;

    .line 138
    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 7
    .param p1, "erd"    # Ljxl/biff/drawing/EscherRecordData;

    .line 103
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/biff/drawing/Dgg;->clusters:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p0}, Ljxl/biff/drawing/Dgg;->getBytes()[B

    move-result-object v0

    .line 106
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    invoke-static {v1, v2, v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v1

    iput v1, p0, Ljxl/biff/drawing/Dgg;->maxShapeId:I

    .line 108
    const/4 v1, 0x4

    aget-byte v1, v0, v1

    const/4 v2, 0x5

    aget-byte v2, v0, v2

    const/4 v3, 0x6

    aget-byte v3, v0, v3

    const/4 v4, 0x7

    aget-byte v4, v0, v4

    invoke-static {v1, v2, v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v1

    iput v1, p0, Ljxl/biff/drawing/Dgg;->numClusters:I

    .line 110
    const/16 v1, 0x8

    aget-byte v1, v0, v1

    const/16 v2, 0x9

    aget-byte v2, v0, v2

    const/16 v3, 0xa

    aget-byte v3, v0, v3

    const/16 v4, 0xb

    aget-byte v4, v0, v4

    invoke-static {v1, v2, v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v1

    iput v1, p0, Ljxl/biff/drawing/Dgg;->shapesSaved:I

    .line 112
    const/16 v1, 0xc

    aget-byte v1, v0, v1

    const/16 v2, 0xd

    aget-byte v2, v0, v2

    const/16 v3, 0xe

    aget-byte v3, v0, v3

    const/16 v4, 0xf

    aget-byte v4, v0, v4

    invoke-static {v1, v2, v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v1

    iput v1, p0, Ljxl/biff/drawing/Dgg;->drawingsSaved:I

    .line 115
    const/16 v1, 0x10

    .line 116
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Ljxl/biff/drawing/Dgg;->numClusters:I

    if-ge v2, v3, :cond_0

    .line 118
    aget-byte v3, v0, v1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    .line 119
    .local v3, "dgId":I
    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v0, v4

    add-int/lit8 v5, v1, 0x3

    aget-byte v5, v0, v5

    invoke-static {v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    .line 120
    .local v4, "sids":I
    new-instance v5, Ljxl/biff/drawing/Dgg$Cluster;

    invoke-direct {v5, v3, v4}, Ljxl/biff/drawing/Dgg$Cluster;-><init>(II)V

    .line 121
    .local v5, "c":Ljxl/biff/drawing/Dgg$Cluster;
    iget-object v6, p0, Ljxl/biff/drawing/Dgg;->clusters:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    nop

    .end local v3    # "dgId":I
    .end local v4    # "sids":I
    .end local v5    # "c":Ljxl/biff/drawing/Dgg$Cluster;
    add-int/lit8 v1, v1, 0x4

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method addCluster(II)V
    .locals 2
    .param p1, "dgid"    # I
    .param p2, "sids"    # I

    .line 148
    new-instance v0, Ljxl/biff/drawing/Dgg$Cluster;

    invoke-direct {v0, p1, p2}, Ljxl/biff/drawing/Dgg$Cluster;-><init>(II)V

    .line 149
    .local v0, "c":Ljxl/biff/drawing/Dgg$Cluster;
    iget-object v1, p0, Ljxl/biff/drawing/Dgg;->clusters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method getCluster(I)Ljxl/biff/drawing/Dgg$Cluster;
    .locals 1
    .param p1, "i"    # I

    .line 215
    iget-object v0, p0, Ljxl/biff/drawing/Dgg;->clusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/drawing/Dgg$Cluster;

    return-object v0
.end method

.method getData()[B
    .locals 6

    .line 159
    iget-object v0, p0, Ljxl/biff/drawing/Dgg;->clusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/Dgg;->numClusters:I

    .line 160
    const/4 v1, 0x4

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/biff/drawing/Dgg;->data:[B

    .line 163
    iget v2, p0, Ljxl/biff/drawing/Dgg;->shapesSaved:I

    add-int/lit16 v2, v2, 0x400

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 166
    iget v0, p0, Ljxl/biff/drawing/Dgg;->numClusters:I

    iget-object v2, p0, Ljxl/biff/drawing/Dgg;->data:[B

    invoke-static {v0, v2, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 169
    iget v0, p0, Ljxl/biff/drawing/Dgg;->shapesSaved:I

    iget-object v1, p0, Ljxl/biff/drawing/Dgg;->data:[B

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 173
    iget-object v0, p0, Ljxl/biff/drawing/Dgg;->data:[B

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 175
    const/16 v0, 0x10

    .line 176
    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljxl/biff/drawing/Dgg;->numClusters:I

    if-ge v1, v2, :cond_0

    .line 178
    iget-object v2, p0, Ljxl/biff/drawing/Dgg;->clusters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/drawing/Dgg$Cluster;

    .line 179
    .local v2, "c":Ljxl/biff/drawing/Dgg$Cluster;
    iget v3, v2, Ljxl/biff/drawing/Dgg$Cluster;->drawingGroupId:I

    iget-object v4, p0, Ljxl/biff/drawing/Dgg;->data:[B

    invoke-static {v3, v4, v0}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 180
    iget v3, v2, Ljxl/biff/drawing/Dgg$Cluster;->shapeIdsUsed:I

    iget-object v4, p0, Ljxl/biff/drawing/Dgg;->data:[B

    add-int/lit8 v5, v0, 0x2

    invoke-static {v3, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 181
    nop

    .end local v2    # "c":Ljxl/biff/drawing/Dgg$Cluster;
    add-int/lit8 v0, v0, 0x4

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Ljxl/biff/drawing/Dgg;->data:[B

    invoke-virtual {p0, v1}, Ljxl/biff/drawing/Dgg;->setHeaderData([B)[B

    move-result-object v1

    return-object v1
.end method

.method getDrawingsSaved()I
    .locals 1

    .line 204
    iget v0, p0, Ljxl/biff/drawing/Dgg;->drawingsSaved:I

    return v0
.end method

.method getShapesSaved()I
    .locals 1

    .line 194
    iget v0, p0, Ljxl/biff/drawing/Dgg;->shapesSaved:I

    return v0
.end method

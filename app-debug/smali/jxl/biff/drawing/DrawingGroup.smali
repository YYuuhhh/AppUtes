.class public Ljxl/biff/drawing/DrawingGroup;
.super Ljava/lang/Object;
.source "DrawingGroup.java"

# interfaces
.implements Ljxl/biff/drawing/EscherStream;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

.field private drawingData:[B

.field private drawingGroupId:I

.field private drawings:Ljava/util/ArrayList;

.field private drawingsOmitted:Z

.field private escherData:Ljxl/biff/drawing/EscherContainer;

.field private imageFiles:Ljava/util/HashMap;

.field private initialized:Z

.field private maxObjectId:I

.field private maxShapeId:I

.field private numBlips:I

.field private numCharts:I

.field private origin:Ljxl/biff/drawing/Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Ljxl/biff/drawing/DrawingGroup;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/DrawingGroup;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/DrawingGroup;)V
    .locals 1
    .param p1, "dg"    # Ljxl/biff/drawing/DrawingGroup;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    .line 138
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    .line 139
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

    .line 140
    iget-boolean v0, p1, Ljxl/biff/drawing/DrawingGroup;->initialized:Z

    iput-boolean v0, p0, Ljxl/biff/drawing/DrawingGroup;->initialized:Z

    .line 141
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    .line 142
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    .line 143
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

    .line 144
    iget v0, p1, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    .line 145
    iget v0, p1, Ljxl/biff/drawing/DrawingGroup;->numCharts:I

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->numCharts:I

    .line 146
    iget v0, p1, Ljxl/biff/drawing/DrawingGroup;->drawingGroupId:I

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingGroupId:I

    .line 147
    iget-boolean v0, p1, Ljxl/biff/drawing/DrawingGroup;->drawingsOmitted:Z

    iput-boolean v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingsOmitted:Z

    .line 148
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    .line 149
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->imageFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->imageFiles:Ljava/util/HashMap;

    .line 150
    iget v0, p1, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    .line 151
    iget v0, p1, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/Origin;)V
    .locals 3
    .param p1, "o"    # Ljxl/biff/drawing/Origin;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    .line 119
    sget-object v0, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Ljxl/biff/drawing/DrawingGroup;->initialized:Z

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->imageFiles:Ljava/util/HashMap;

    .line 122
    iput-boolean v2, p0, Ljxl/biff/drawing/DrawingGroup;->drawingsOmitted:Z

    .line 123
    iput v1, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    .line 124
    const/16 v0, 0x400

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    .line 125
    return-void
.end method

.method private addData([B)V
    .locals 4
    .param p1, "msodata"    # [B

    .line 190
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 192
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    .line 193
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    return-void

    .line 198
    :cond_0
    array-length v2, v0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 199
    .local v2, "newdata":[B
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    array-length v0, v0

    array-length v3, p1

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iput-object v2, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    .line 202
    return-void
.end method

.method private getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;
    .locals 4

    .line 370
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

    if-nez v0, :cond_1

    .line 372
    iget-boolean v0, p0, Ljxl/biff/drawing/DrawingGroup;->initialized:Z

    if-nez v0, :cond_0

    .line 374
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->initialize()V

    .line 377
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 378
    .local v0, "children":[Ljxl/biff/drawing/EscherRecord;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v1

    sget-object v3, Ljxl/biff/drawing/EscherRecordType;->BSTORE_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v1, v3, :cond_1

    .line 381
    aget-object v1, v0, v2

    check-cast v1, Ljxl/biff/drawing/BStoreContainer;

    iput-object v1, p0, Ljxl/biff/drawing/DrawingGroup;->bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

    .line 385
    .end local v0    # "children":[Ljxl/biff/drawing/EscherRecord;
    :cond_1
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

    return-object v0
.end method

.method private initialize()V
    .locals 5

    .line 351
    new-instance v0, Ljxl/biff/drawing/EscherRecordData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljxl/biff/drawing/EscherRecordData;-><init>(Ljxl/biff/drawing/EscherStream;I)V

    .line 353
    .local v0, "er":Ljxl/biff/drawing/EscherRecordData;
    invoke-virtual {v0}, Ljxl/biff/drawing/EscherRecordData;->isContainer()Z

    move-result v2

    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 355
    new-instance v2, Ljxl/biff/drawing/EscherContainer;

    invoke-direct {v2, v0}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    iput-object v2, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    .line 357
    invoke-virtual {v2}, Ljxl/biff/drawing/EscherContainer;->getLength()I

    move-result v2

    iget-object v3, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 358
    iget-object v2, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v2}, Ljxl/biff/drawing/EscherContainer;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v2

    sget-object v3, Ljxl/biff/drawing/EscherRecordType;->DGG_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v2, v3, :cond_1

    move v1, v4

    :cond_1
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 360
    iput-boolean v4, p0, Ljxl/biff/drawing/DrawingGroup;->initialized:Z

    .line 361
    return-void
.end method


# virtual methods
.method public add(Ljxl/biff/drawing/Chart;)V
    .locals 1
    .param p1, "c"    # Ljxl/biff/drawing/Chart;

    .line 223
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->numCharts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->numCharts:I

    .line 224
    return-void
.end method

.method public add(Ljxl/biff/drawing/DrawingGroupObject;)V
    .locals 6
    .param p1, "d"    # Ljxl/biff/drawing/DrawingGroupObject;

    .line 233
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 235
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    .line 236
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v0

    .line 237
    .local v0, "bsc":Ljxl/biff/drawing/BStoreContainer;
    iget-object v1, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v1}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    check-cast v1, Ljxl/biff/drawing/Dgg;

    .line 238
    .local v1, "dgg":Ljxl/biff/drawing/Dgg;
    invoke-virtual {v1, v2}, Ljxl/biff/drawing/Dgg;->getCluster(I)Ljxl/biff/drawing/Dgg$Cluster;

    move-result-object v4

    iget v4, v4, Ljxl/biff/drawing/Dgg$Cluster;->drawingGroupId:I

    iget v5, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    iput v4, p0, Ljxl/biff/drawing/DrawingGroup;->drawingGroupId:I

    .line 239
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljxl/biff/drawing/BStoreContainer;->getNumBlips()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput v4, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    .line 241
    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {v0}, Ljxl/biff/drawing/BStoreContainer;->getNumBlips()I

    move-result v5

    if-ne v4, v5, :cond_1

    move v3, v2

    :cond_1
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 247
    .end local v0    # "bsc":Ljxl/biff/drawing/BStoreContainer;
    .end local v1    # "dgg":Ljxl/biff/drawing/Dgg;
    :cond_2
    instance-of v0, p1, Ljxl/biff/drawing/Drawing;

    if-nez v0, :cond_4

    .line 251
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    add-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    .line 252
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    add-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    .line 253
    invoke-interface {p1, p0}, Ljxl/biff/drawing/DrawingGroupObject;->setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V

    .line 254
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    iget v1, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    add-int/2addr v1, v2

    iget v2, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    invoke-interface {p1, v0, v1, v2}, Ljxl/biff/drawing/DrawingGroupObject;->setObjectId(III)V

    .line 255
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    if-le v0, v1, :cond_3

    .line 257
    sget-object v0, Ljxl/biff/drawing/DrawingGroup;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawings length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeds the max object id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 261
    :cond_3
    return-void

    .line 264
    :cond_4
    move-object v0, p1

    check-cast v0, Ljxl/biff/drawing/Drawing;

    .line 267
    .local v0, "drawing":Ljxl/biff/drawing/Drawing;
    iget-object v1, p0, Ljxl/biff/drawing/DrawingGroup;->imageFiles:Ljava/util/HashMap;

    invoke-interface {p1}, Ljxl/biff/drawing/DrawingGroupObject;->getImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/drawing/Drawing;

    .line 270
    .local v1, "refImage":Ljxl/biff/drawing/Drawing;
    if-nez v1, :cond_5

    .line 274
    iget v3, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    add-int/2addr v3, v2

    iput v3, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    .line 275
    iget v3, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    add-int/2addr v3, v2

    iput v3, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    .line 276
    iget-object v3, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {v0, p0}, Ljxl/biff/drawing/Drawing;->setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V

    .line 278
    iget v3, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    iget v4, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    add-int/2addr v4, v2

    iget v5, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    invoke-virtual {v0, v3, v4, v5}, Ljxl/biff/drawing/Drawing;->setObjectId(III)V

    .line 279
    iget v3, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    add-int/2addr v3, v2

    iput v3, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    .line 280
    iget-object v2, p0, Ljxl/biff/drawing/DrawingGroup;->imageFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljxl/biff/drawing/Drawing;->getImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 287
    :cond_5
    invoke-virtual {v1}, Ljxl/biff/drawing/Drawing;->getReferenceCount()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljxl/biff/drawing/Drawing;->setReferenceCount(I)V

    .line 288
    invoke-virtual {v0, p0}, Ljxl/biff/drawing/Drawing;->setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V

    .line 289
    invoke-virtual {v1}, Ljxl/biff/drawing/Drawing;->getObjectId()I

    move-result v2

    invoke-virtual {v1}, Ljxl/biff/drawing/Drawing;->getBlipId()I

    move-result v3

    invoke-virtual {v1}, Ljxl/biff/drawing/Drawing;->getShapeId()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljxl/biff/drawing/Drawing;->setObjectId(III)V

    .line 293
    :goto_1
    return-void
.end method

.method public add(Ljxl/biff/drawing/MsoDrawingGroupRecord;)V
    .locals 1
    .param p1, "mso"    # Ljxl/biff/drawing/MsoDrawingGroupRecord;

    .line 169
    invoke-virtual {p1}, Ljxl/biff/drawing/MsoDrawingGroupRecord;->getData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljxl/biff/drawing/DrawingGroup;->addData([B)V

    .line 170
    return-void
.end method

.method public add(Ljxl/read/biff/Record;)V
    .locals 1
    .param p1, "cont"    # Ljxl/read/biff/Record;

    .line 180
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljxl/biff/drawing/DrawingGroup;->addData([B)V

    .line 181
    return-void
.end method

.method final addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V
    .locals 2
    .param p1, "d"    # Ljxl/biff/drawing/DrawingGroupObject;

    .line 211
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    invoke-interface {p1}, Ljxl/biff/drawing/DrawingGroupObject;->getObjectId()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    .line 213
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    invoke-interface {p1}, Ljxl/biff/drawing/DrawingGroupObject;->getShapeId()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    .line 214
    return-void
.end method

.method public getData()[B
    .locals 1

    .line 395
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    return-object v0
.end method

.method getImageData(I)[B
    .locals 4
    .param p1, "blipId"    # I

    .line 529
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/BStoreContainer;->getNumBlips()I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    .line 531
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 532
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    sget-object v3, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    sget-object v3, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v0, v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 535
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/BStoreContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 536
    .local v0, "children":[Ljxl/biff/drawing/EscherRecord;
    add-int/lit8 v1, p1, -0x1

    aget-object v1, v0, v1

    check-cast v1, Ljxl/biff/drawing/BlipStoreEntry;

    .line 538
    .local v1, "bse":Ljxl/biff/drawing/BlipStoreEntry;
    invoke-virtual {v1}, Ljxl/biff/drawing/BlipStoreEntry;->getImageData()[B

    move-result-object v2

    return-object v2
.end method

.method final getNumberOfBlips()I
    .locals 1

    .line 517
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    return v0
.end method

.method public hasDrawingsOmitted()Z
    .locals 1

    .line 565
    iget-boolean v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingsOmitted:Z

    return v0
.end method

.method public remove(Ljxl/biff/drawing/DrawingGroupObject;)V
    .locals 8
    .param p1, "d"    # Ljxl/biff/drawing/DrawingGroupObject;

    .line 304
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 306
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 311
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    .line 312
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/BStoreContainer;->getNumBlips()I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    .line 313
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljxl/biff/drawing/Dgg;

    .line 314
    .local v0, "dgg":Ljxl/biff/drawing/Dgg;
    invoke-virtual {v0, v2}, Ljxl/biff/drawing/Dgg;->getCluster(I)Ljxl/biff/drawing/Dgg$Cluster;

    move-result-object v1

    iget v1, v1, Ljxl/biff/drawing/Dgg$Cluster;->drawingGroupId:I

    iget v3, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    iput v1, p0, Ljxl/biff/drawing/DrawingGroup;->drawingGroupId:I

    .line 318
    .end local v0    # "dgg":Ljxl/biff/drawing/Dgg;
    :cond_1
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/BStoreContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 319
    .local v0, "children":[Ljxl/biff/drawing/EscherRecord;
    invoke-interface {p1}, Ljxl/biff/drawing/DrawingGroupObject;->getBlipId()I

    move-result v1

    sub-int/2addr v1, v2

    aget-object v1, v0, v1

    check-cast v1, Ljxl/biff/drawing/BlipStoreEntry;

    .line 321
    .local v1, "bse":Ljxl/biff/drawing/BlipStoreEntry;
    invoke-virtual {v1}, Ljxl/biff/drawing/BlipStoreEntry;->dereference()V

    .line 323
    invoke-virtual {v1}, Ljxl/biff/drawing/BlipStoreEntry;->getReferenceCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 326
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljxl/biff/drawing/BStoreContainer;->remove(Ljxl/biff/drawing/EscherRecord;)V

    .line 329
    iget-object v3, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 331
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/biff/drawing/DrawingGroupObject;

    .line 333
    .local v4, "drawing":Ljxl/biff/drawing/DrawingGroupObject;
    invoke-interface {v4}, Ljxl/biff/drawing/DrawingGroupObject;->getBlipId()I

    move-result v5

    invoke-interface {p1}, Ljxl/biff/drawing/DrawingGroupObject;->getBlipId()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 335
    invoke-interface {v4}, Ljxl/biff/drawing/DrawingGroupObject;->getObjectId()I

    move-result v5

    invoke-interface {v4}, Ljxl/biff/drawing/DrawingGroupObject;->getBlipId()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-interface {v4}, Ljxl/biff/drawing/DrawingGroupObject;->getShapeId()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Ljxl/biff/drawing/DrawingGroupObject;->setObjectId(III)V

    .line 339
    .end local v4    # "drawing":Ljxl/biff/drawing/DrawingGroupObject;
    :cond_2
    goto :goto_0

    .line 341
    .end local v3    # "i":Ljava/util/Iterator;
    :cond_3
    iget v3, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    .line 343
    :cond_4
    return-void
.end method

.method public setDrawingsOmitted(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;)V
    .locals 2
    .param p1, "mso"    # Ljxl/biff/drawing/MsoDrawingRecord;
    .param p2, "obj"    # Ljxl/biff/drawing/ObjRecord;

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingsOmitted:Z

    .line 552
    if-eqz p2, :cond_0

    .line 554
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    invoke-virtual {p2}, Ljxl/biff/drawing/ObjRecord;->getObjectId()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    .line 556
    :cond_0
    return-void
.end method

.method public updateData(Ljxl/biff/drawing/DrawingGroup;)V
    .locals 1
    .param p1, "dg"    # Ljxl/biff/drawing/DrawingGroup;

    .line 580
    iget-boolean v0, p1, Ljxl/biff/drawing/DrawingGroup;->drawingsOmitted:Z

    iput-boolean v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingsOmitted:Z

    .line 581
    iget v0, p1, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    .line 582
    iget v0, p1, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    .line 583
    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 10
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 408
    new-instance v0, Ljxl/biff/drawing/DggContainer;

    invoke-direct {v0}, Ljxl/biff/drawing/DggContainer;-><init>()V

    .line 410
    .local v0, "dggContainer":Ljxl/biff/drawing/DggContainer;
    new-instance v1, Ljxl/biff/drawing/Dgg;

    iget v4, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    iget v5, p0, Ljxl/biff/drawing/DrawingGroup;->numCharts:I

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    invoke-direct {v1, v5, v4}, Ljxl/biff/drawing/Dgg;-><init>(II)V

    .line 412
    .local v1, "dgg":Ljxl/biff/drawing/Dgg;
    invoke-virtual {v1, v2, v3}, Ljxl/biff/drawing/Dgg;->addCluster(II)V

    .line 413
    iget v4, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v4, v3}, Ljxl/biff/drawing/Dgg;->addCluster(II)V

    .line 415
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 417
    const/4 v2, 0x0

    .line 418
    .local v2, "drawingsAdded":I
    new-instance v3, Ljxl/biff/drawing/BStoreContainer;

    invoke-direct {v3}, Ljxl/biff/drawing/BStoreContainer;-><init>()V

    .line 421
    .local v3, "bstoreCont":Ljxl/biff/drawing/BStoreContainer;
    iget-object v4, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 423
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 424
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Ljxl/biff/drawing/Drawing;

    if-eqz v6, :cond_0

    .line 426
    move-object v6, v5

    check-cast v6, Ljxl/biff/drawing/Drawing;

    .line 427
    .local v6, "d":Ljxl/biff/drawing/Drawing;
    new-instance v7, Ljxl/biff/drawing/BlipStoreEntry;

    invoke-direct {v7, v6}, Ljxl/biff/drawing/BlipStoreEntry;-><init>(Ljxl/biff/drawing/Drawing;)V

    .line 429
    .local v7, "bse":Ljxl/biff/drawing/BlipStoreEntry;
    invoke-virtual {v3, v7}, Ljxl/biff/drawing/BStoreContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 430
    add-int/lit8 v2, v2, 0x1

    .line 432
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "d":Ljxl/biff/drawing/Drawing;
    .end local v7    # "bse":Ljxl/biff/drawing/BlipStoreEntry;
    :cond_0
    goto :goto_0

    .line 433
    .end local v4    # "i":Ljava/util/Iterator;
    :cond_1
    if-lez v2, :cond_2

    .line 435
    invoke-virtual {v3, v2}, Ljxl/biff/drawing/BStoreContainer;->setNumBlips(I)V

    .line 436
    invoke-virtual {v0, v3}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 439
    :cond_2
    new-instance v4, Ljxl/biff/drawing/Opt;

    invoke-direct {v4}, Ljxl/biff/drawing/Opt;-><init>()V

    .line 441
    .local v4, "opt":Ljxl/biff/drawing/Opt;
    invoke-virtual {v0, v4}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 443
    new-instance v5, Ljxl/biff/drawing/SplitMenuColors;

    invoke-direct {v5}, Ljxl/biff/drawing/SplitMenuColors;-><init>()V

    .line 444
    .local v5, "splitMenuColors":Ljxl/biff/drawing/SplitMenuColors;
    invoke-virtual {v0, v5}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 446
    invoke-virtual {v0}, Ljxl/biff/drawing/DggContainer;->getData()[B

    move-result-object v6

    iput-object v6, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    .line 447
    .end local v0    # "dggContainer":Ljxl/biff/drawing/DggContainer;
    .end local v1    # "dgg":Ljxl/biff/drawing/Dgg;
    .end local v2    # "drawingsAdded":I
    .end local v3    # "bstoreCont":Ljxl/biff/drawing/BStoreContainer;
    .end local v4    # "opt":Ljxl/biff/drawing/Opt;
    .end local v5    # "splitMenuColors":Ljxl/biff/drawing/SplitMenuColors;
    goto/16 :goto_3

    .line 448
    :cond_3
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_7

    .line 450
    new-instance v0, Ljxl/biff/drawing/DggContainer;

    invoke-direct {v0}, Ljxl/biff/drawing/DggContainer;-><init>()V

    .line 452
    .restart local v0    # "dggContainer":Ljxl/biff/drawing/DggContainer;
    new-instance v1, Ljxl/biff/drawing/Dgg;

    iget v4, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    iget v5, p0, Ljxl/biff/drawing/DrawingGroup;->numCharts:I

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    invoke-direct {v1, v5, v4}, Ljxl/biff/drawing/Dgg;-><init>(II)V

    .line 454
    .restart local v1    # "dgg":Ljxl/biff/drawing/Dgg;
    invoke-virtual {v1, v2, v3}, Ljxl/biff/drawing/Dgg;->addCluster(II)V

    .line 455
    iget v4, p0, Ljxl/biff/drawing/DrawingGroup;->drawingGroupId:I

    iget v5, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    invoke-virtual {v1, v4, v3}, Ljxl/biff/drawing/Dgg;->addCluster(II)V

    .line 457
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 459
    new-instance v2, Ljxl/biff/drawing/BStoreContainer;

    invoke-direct {v2}, Ljxl/biff/drawing/BStoreContainer;-><init>()V

    .line 460
    .local v2, "bstoreCont":Ljxl/biff/drawing/BStoreContainer;
    iget v4, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    invoke-virtual {v2, v4}, Ljxl/biff/drawing/BStoreContainer;->setNumBlips(I)V

    .line 463
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v4

    .line 465
    .local v4, "readBStoreContainer":Ljxl/biff/drawing/BStoreContainer;
    if-eqz v4, :cond_4

    .line 467
    invoke-virtual {v4}, Ljxl/biff/drawing/BStoreContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v5

    .line 468
    .local v5, "children":[Ljxl/biff/drawing/EscherRecord;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_4

    .line 470
    aget-object v7, v5, v6

    check-cast v7, Ljxl/biff/drawing/BlipStoreEntry;

    .line 471
    .restart local v7    # "bse":Ljxl/biff/drawing/BlipStoreEntry;
    invoke-virtual {v2, v7}, Ljxl/biff/drawing/BStoreContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 468
    .end local v7    # "bse":Ljxl/biff/drawing/BlipStoreEntry;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 476
    .end local v5    # "children":[Ljxl/biff/drawing/EscherRecord;
    .end local v6    # "i":I
    :cond_4
    iget-object v5, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 478
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/biff/drawing/DrawingGroupObject;

    .line 479
    .local v6, "dgo":Ljxl/biff/drawing/DrawingGroupObject;
    instance-of v7, v6, Ljxl/biff/drawing/Drawing;

    if-eqz v7, :cond_5

    .line 481
    move-object v7, v6

    check-cast v7, Ljxl/biff/drawing/Drawing;

    .line 482
    .local v7, "d":Ljxl/biff/drawing/Drawing;
    invoke-virtual {v7}, Ljxl/biff/drawing/Drawing;->getOrigin()Ljxl/biff/drawing/Origin;

    move-result-object v8

    sget-object v9, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    if-ne v8, v9, :cond_5

    .line 484
    new-instance v8, Ljxl/biff/drawing/BlipStoreEntry;

    invoke-direct {v8, v7}, Ljxl/biff/drawing/BlipStoreEntry;-><init>(Ljxl/biff/drawing/Drawing;)V

    .line 485
    .local v8, "bse":Ljxl/biff/drawing/BlipStoreEntry;
    invoke-virtual {v2, v8}, Ljxl/biff/drawing/BStoreContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 488
    .end local v6    # "dgo":Ljxl/biff/drawing/DrawingGroupObject;
    .end local v7    # "d":Ljxl/biff/drawing/Drawing;
    .end local v8    # "bse":Ljxl/biff/drawing/BlipStoreEntry;
    :cond_5
    goto :goto_2

    .line 490
    .end local v5    # "i":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v0, v2}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 492
    new-instance v5, Ljxl/biff/drawing/Opt;

    invoke-direct {v5}, Ljxl/biff/drawing/Opt;-><init>()V

    .line 494
    .local v5, "opt":Ljxl/biff/drawing/Opt;
    const/16 v6, 0xbf

    const v7, 0x80008

    invoke-virtual {v5, v6, v3, v3, v7}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 495
    const/16 v6, 0x181

    const v7, 0x8000009

    invoke-virtual {v5, v6, v3, v3, v7}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 496
    const/16 v6, 0x1c0

    const v7, 0x8000040

    invoke-virtual {v5, v6, v3, v3, v7}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 498
    invoke-virtual {v0, v5}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 500
    new-instance v3, Ljxl/biff/drawing/SplitMenuColors;

    invoke-direct {v3}, Ljxl/biff/drawing/SplitMenuColors;-><init>()V

    .line 501
    .local v3, "splitMenuColors":Ljxl/biff/drawing/SplitMenuColors;
    invoke-virtual {v0, v3}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 503
    invoke-virtual {v0}, Ljxl/biff/drawing/DggContainer;->getData()[B

    move-result-object v6

    iput-object v6, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    .line 506
    .end local v0    # "dggContainer":Ljxl/biff/drawing/DggContainer;
    .end local v1    # "dgg":Ljxl/biff/drawing/Dgg;
    .end local v2    # "bstoreCont":Ljxl/biff/drawing/BStoreContainer;
    .end local v3    # "splitMenuColors":Ljxl/biff/drawing/SplitMenuColors;
    .end local v4    # "readBStoreContainer":Ljxl/biff/drawing/BStoreContainer;
    .end local v5    # "opt":Ljxl/biff/drawing/Opt;
    :cond_7
    :goto_3
    new-instance v0, Ljxl/biff/drawing/MsoDrawingGroupRecord;

    iget-object v1, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    invoke-direct {v0, v1}, Ljxl/biff/drawing/MsoDrawingGroupRecord;-><init>([B)V

    .line 507
    .local v0, "msodg":Ljxl/biff/drawing/MsoDrawingGroupRecord;
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 508
    return-void
.end method

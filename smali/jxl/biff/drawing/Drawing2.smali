.class public Ljxl/biff/drawing/Drawing2;
.super Ljava/lang/Object;
.source "Drawing2.java"

# interfaces
.implements Ljxl/biff/drawing/DrawingGroupObject;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private blipId:I

.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private drawingNumber:I

.field private escherData:Ljxl/biff/drawing/EscherContainer;

.field private height:D

.field private imageData:[B

.field private imageFile:Ljava/io/File;

.field private initialized:Z

.field private msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

.field private objectId:I

.field private origin:Ljxl/biff/drawing/Origin;

.field private readSpContainer:Ljxl/biff/drawing/EscherContainer;

.field private referenceCount:I

.field private shapeId:I

.field private type:Ljxl/biff/drawing/ShapeType;

.field private width:D

.field private x:D

.field private y:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Ljxl/biff/drawing/Drawing;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Drawing2;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(DDDDLjava/io/File;)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D
    .param p9, "image"    # Ljava/io/File;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 198
    iput-object p9, p0, Ljxl/biff/drawing/Drawing2;->imageFile:Ljava/io/File;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 200
    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    iput-object v1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 201
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing2;->x:D

    .line 202
    iput-wide p3, p0, Ljxl/biff/drawing/Drawing2;->y:D

    .line 203
    iput-wide p5, p0, Ljxl/biff/drawing/Drawing2;->width:D

    .line 204
    iput-wide p7, p0, Ljxl/biff/drawing/Drawing2;->height:D

    .line 205
    iput v0, p0, Ljxl/biff/drawing/Drawing2;->referenceCount:I

    .line 206
    sget-object v0, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->type:Ljxl/biff/drawing/ShapeType;

    .line 207
    return-void
.end method

.method public constructor <init>(DDDD[B)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D
    .param p9, "image"    # [B

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 224
    iput-object p9, p0, Ljxl/biff/drawing/Drawing2;->imageData:[B

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 226
    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    iput-object v1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 227
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing2;->x:D

    .line 228
    iput-wide p3, p0, Ljxl/biff/drawing/Drawing2;->y:D

    .line 229
    iput-wide p5, p0, Ljxl/biff/drawing/Drawing2;->width:D

    .line 230
    iput-wide p7, p0, Ljxl/biff/drawing/Drawing2;->height:D

    .line 231
    iput v0, p0, Ljxl/biff/drawing/Drawing2;->referenceCount:I

    .line 232
    sget-object v0, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->type:Ljxl/biff/drawing/ShapeType;

    .line 233
    return-void
.end method

.method protected constructor <init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;)V
    .locals 4
    .param p1, "dgo"    # Ljxl/biff/drawing/DrawingGroupObject;
    .param p2, "dg"    # Ljxl/biff/drawing/DrawingGroup;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 172
    move-object v1, p1

    check-cast v1, Ljxl/biff/drawing/Drawing2;

    .line 173
    .local v1, "d":Ljxl/biff/drawing/Drawing2;
    iget-object v2, v1, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v3, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 174
    iget-object v2, v1, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    iput-object v2, p0, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 175
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 176
    sget-object v0, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 177
    iget-object v0, v1, Ljxl/biff/drawing/Drawing2;->drawingData:Ljxl/biff/drawing/DrawingData;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 178
    iput-object p2, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 179
    iget v0, v1, Ljxl/biff/drawing/Drawing2;->drawingNumber:I

    iput v0, p0, Ljxl/biff/drawing/Drawing2;->drawingNumber:I

    .line 180
    invoke-virtual {p2, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;)V
    .locals 3
    .param p1, "mso"    # Ljxl/biff/drawing/MsoDrawingRecord;
    .param p2, "dd"    # Ljxl/biff/drawing/DrawingData;
    .param p3, "dg"    # Ljxl/biff/drawing/DrawingGroup;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 150
    iput-object p3, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 151
    iput-object p1, p0, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 152
    iput-object p2, p0, Ljxl/biff/drawing/Drawing2;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 153
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 154
    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object v1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 156
    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v2, p0, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v2}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    .line 157
    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {v1, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 159
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 161
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 162
    return-void
.end method

.method private getReadSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 1

    .line 530
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_0

    .line 532
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 535
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    return-object v0
.end method

.method private initialize()V
    .locals 1

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 241
    return-void
.end method


# virtual methods
.method public final getBlipId()I
    .locals 1

    .line 300
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_0

    .line 302
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 305
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Drawing2;->blipId:I

    return v0
.end method

.method public getColumn()D
    .locals 2

    .line 625
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing2;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .locals 1

    .line 353
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .line 495
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_0

    .line 497
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 500
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing2;->height:D

    return-wide v0
.end method

.method public getImageBytes()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    const/4 v0, 0x0

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 564
    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 569
    :cond_0
    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 571
    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->imageFile:Ljava/io/File;

    if-nez v1, :cond_3

    .line 573
    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->imageData:[B

    if-eqz v1, :cond_2

    move v0, v3

    :cond_2
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 574
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->imageData:[B

    return-object v0

    .line 577
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 578
    .local v1, "data":[B
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Ljxl/biff/drawing/Drawing2;->imageFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 579
    .local v2, "fis":Ljava/io/FileInputStream;
    array-length v3, v1

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 580
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 581
    return-object v1

    .line 566
    .end local v1    # "data":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing2;->getImageData()[B

    move-result-object v0

    return-object v0
.end method

.method public getImageData()[B
    .locals 3

    .line 545
    const/4 v0, 0x0

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 546
    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 548
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_2

    .line 550
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 553
    :cond_2
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget v1, p0, Ljxl/biff/drawing/Drawing2;->blipId:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingGroup;->getImageData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getImageFilePath()Ljava/lang/String;
    .locals 1

    .line 684
    const/4 v0, 0x0

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 685
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;
    .locals 1

    .line 315
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    return-object v0
.end method

.method public final getObjectId()I
    .locals 1

    .line 270
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 275
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Drawing2;->objectId:I

    return v0
.end method

.method public getOrigin()Ljxl/biff/drawing/Origin;
    .locals 1

    .line 363
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    return-object v0
.end method

.method public getReferenceCount()I
    .locals 1

    .line 373
    iget v0, p0, Ljxl/biff/drawing/Drawing2;->referenceCount:I

    return v0
.end method

.method public getRow()D
    .locals 2

    .line 635
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing2;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public getShapeId()I
    .locals 1

    .line 285
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_0

    .line 287
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 290
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Drawing2;->shapeId:I

    return v0
.end method

.method public getSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 2

    .line 325
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_0

    .line 327
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 330
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 332
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->getReadSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljxl/biff/drawing/ShapeType;
    .locals 1

    .line 591
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->type:Ljxl/biff/drawing/ShapeType;

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    .line 461
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_0

    .line 463
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 466
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing2;->width:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .line 393
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_0

    .line 395
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 397
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing2;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 426
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_0

    .line 428
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 431
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing2;->y:D

    return-wide v0
.end method

.method public isFirst()Z
    .locals 1

    .line 647
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/MsoDrawingRecord;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isFormObject()Z
    .locals 1

    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method public removeRow(I)V
    .locals 4
    .param p1, "r"    # I

    .line 669
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing2;->y:D

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 671
    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Ljxl/biff/drawing/Drawing2;->setY(D)V

    .line 673
    :cond_0
    return-void
.end method

.method public setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V
    .locals 0
    .param p1, "dg"    # Ljxl/biff/drawing/DrawingGroup;

    .line 343
    iput-object p1, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 344
    return-void
.end method

.method public setHeight(D)V
    .locals 2
    .param p1, "h"    # D

    .line 510
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 512
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_0

    .line 514
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 516
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 519
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing2;->height:D

    .line 520
    return-void
.end method

.method public final setObjectId(III)V
    .locals 2
    .param p1, "objid"    # I
    .param p2, "bip"    # I
    .param p3, "sid"    # I

    .line 253
    iput p1, p0, Ljxl/biff/drawing/Drawing2;->objectId:I

    .line 254
    iput p2, p0, Ljxl/biff/drawing/Drawing2;->blipId:I

    .line 255
    iput p3, p0, Ljxl/biff/drawing/Drawing2;->shapeId:I

    .line 257
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    .line 259
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 261
    :cond_0
    return-void
.end method

.method public setReferenceCount(I)V
    .locals 0
    .param p1, "r"    # I

    .line 383
    iput p1, p0, Ljxl/biff/drawing/Drawing2;->referenceCount:I

    .line 384
    return-void
.end method

.method public setWidth(D)V
    .locals 2
    .param p1, "w"    # D

    .line 476
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 478
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_0

    .line 480
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 482
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 485
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing2;->width:D

    .line 486
    return-void
.end method

.method public setX(D)V
    .locals 2
    .param p1, "x"    # D

    .line 407
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 409
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_0

    .line 411
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 413
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 416
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing2;->x:D

    .line 417
    return-void
.end method

.method public setY(D)V
    .locals 2
    .param p1, "y"    # D

    .line 441
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 443
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_0

    .line 445
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 447
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 450
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing2;->y:D

    .line 451
    return-void
.end method

.method public writeAdditionalRecords(Ljxl/write/biff/File;)V
    .locals 0
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    return-void
.end method

.method public writeTailRecords(Ljxl/write/biff/File;)V
    .locals 0
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    return-void
.end method

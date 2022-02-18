.class public Ljxl/biff/drawing/Comment;
.super Ljava/lang/Object;
.source "Comment.java"

# interfaces
.implements Ljxl/biff/drawing/DrawingGroupObject;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private blipId:I

.field private column:I

.field private commentText:Ljava/lang/String;

.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private drawingNumber:I

.field private escherData:Ljxl/biff/drawing/EscherContainer;

.field private formatting:Ljxl/biff/ContinueRecord;

.field private height:D

.field private initialized:Z

.field private mso:Ljxl/biff/drawing/MsoDrawingRecord;

.field private msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

.field private note:Ljxl/biff/drawing/NoteRecord;

.field private objRecord:Ljxl/biff/drawing/ObjRecord;

.field private objectId:I

.field private origin:Ljxl/biff/drawing/Origin;

.field private readSpContainer:Ljxl/biff/drawing/EscherContainer;

.field private referenceCount:I

.field private row:I

.field private shapeId:I

.field private spContainer:Ljxl/biff/drawing/EscherContainer;

.field private text:Ljxl/biff/ContinueRecord;

.field private txo:Ljxl/biff/drawing/TextObjectRecord;

.field private type:Ljxl/biff/drawing/ShapeType;

.field private width:D

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Ljxl/biff/drawing/Comment;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Comment;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "c"    # I
    .param p3, "r"    # I

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    .line 246
    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    iput-object v1, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    .line 247
    iput p2, p0, Ljxl/biff/drawing/Comment;->column:I

    .line 248
    iput p3, p0, Ljxl/biff/drawing/Comment;->row:I

    .line 249
    iput v0, p0, Ljxl/biff/drawing/Comment;->referenceCount:I

    .line 250
    sget-object v0, Ljxl/biff/drawing/ShapeType;->TEXT_BOX:Ljxl/biff/drawing/ShapeType;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->type:Ljxl/biff/drawing/ShapeType;

    .line 251
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    .line 252
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, p0, Ljxl/biff/drawing/Comment;->width:D

    .line 253
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, Ljxl/biff/drawing/Comment;->height:D

    .line 254
    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V
    .locals 4
    .param p1, "dgo"    # Ljxl/biff/drawing/DrawingGroupObject;
    .param p2, "dg"    # Ljxl/biff/drawing/DrawingGroup;
    .param p3, "ws"    # Ljxl/WorkbookSettings;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    .line 216
    move-object v1, p1

    check-cast v1, Ljxl/biff/drawing/Comment;

    .line 217
    .local v1, "d":Ljxl/biff/drawing/Comment;
    iget-object v2, v1, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v3, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 218
    iget-object v2, v1, Ljxl/biff/drawing/Comment;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    iput-object v2, p0, Ljxl/biff/drawing/Comment;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 219
    iget-object v2, v1, Ljxl/biff/drawing/Comment;->objRecord:Ljxl/biff/drawing/ObjRecord;

    iput-object v2, p0, Ljxl/biff/drawing/Comment;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 220
    iput-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    .line 221
    sget-object v0, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    .line 222
    iget-object v0, v1, Ljxl/biff/drawing/Comment;->drawingData:Ljxl/biff/drawing/DrawingData;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 223
    iput-object p2, p0, Ljxl/biff/drawing/Comment;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 224
    iget v0, v1, Ljxl/biff/drawing/Comment;->drawingNumber:I

    iput v0, p0, Ljxl/biff/drawing/Comment;->drawingNumber:I

    .line 225
    invoke-virtual {p2, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 226
    iget-object v0, v1, Ljxl/biff/drawing/Comment;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 227
    iget-object v0, v1, Ljxl/biff/drawing/Comment;->txo:Ljxl/biff/drawing/TextObjectRecord;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->txo:Ljxl/biff/drawing/TextObjectRecord;

    .line 228
    iget-object v0, v1, Ljxl/biff/drawing/Comment;->text:Ljxl/biff/ContinueRecord;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->text:Ljxl/biff/ContinueRecord;

    .line 229
    iget-object v0, v1, Ljxl/biff/drawing/Comment;->formatting:Ljxl/biff/ContinueRecord;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->formatting:Ljxl/biff/ContinueRecord;

    .line 230
    iget-object v0, v1, Ljxl/biff/drawing/Comment;->note:Ljxl/biff/drawing/NoteRecord;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->note:Ljxl/biff/drawing/NoteRecord;

    .line 231
    iget-wide v2, v1, Ljxl/biff/drawing/Comment;->width:D

    iput-wide v2, p0, Ljxl/biff/drawing/Comment;->width:D

    .line 232
    iget-wide v2, v1, Ljxl/biff/drawing/Comment;->height:D

    iput-wide v2, p0, Ljxl/biff/drawing/Comment;->height:D

    .line 233
    iput-object p3, p0, Ljxl/biff/drawing/Comment;->workbookSettings:Ljxl/WorkbookSettings;

    .line 234
    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V
    .locals 3
    .param p1, "msorec"    # Ljxl/biff/drawing/MsoDrawingRecord;
    .param p2, "obj"    # Ljxl/biff/drawing/ObjRecord;
    .param p3, "dd"    # Ljxl/biff/drawing/DrawingData;
    .param p4, "dg"    # Ljxl/biff/drawing/DrawingGroup;
    .param p5, "ws"    # Ljxl/WorkbookSettings;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    .line 186
    iput-object p4, p0, Ljxl/biff/drawing/Comment;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 187
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 188
    iput-object p3, p0, Ljxl/biff/drawing/Comment;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 189
    iput-object p2, p0, Ljxl/biff/drawing/Comment;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 190
    iput-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    .line 191
    iput-object p5, p0, Ljxl/biff/drawing/Comment;->workbookSettings:Ljxl/WorkbookSettings;

    .line 192
    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object v1, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    .line 193
    iget-object v1, p0, Ljxl/biff/drawing/Comment;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v2, p0, Ljxl/biff/drawing/Comment;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v2}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 194
    iget-object v1, p0, Ljxl/biff/drawing/Comment;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {v1}, Ljxl/biff/drawing/DrawingData;->getNumDrawings()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Ljxl/biff/drawing/Comment;->drawingNumber:I

    .line 195
    iget-object v1, p0, Ljxl/biff/drawing/Comment;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {v1, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 197
    iget-object v1, p0, Ljxl/biff/drawing/Comment;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljxl/biff/drawing/Comment;->objRecord:Ljxl/biff/drawing/ObjRecord;

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 199
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_1

    .line 201
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 203
    :cond_1
    return-void
.end method

.method private getReadSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 1

    .line 619
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 621
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 624
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    return-object v0
.end method

.method private initialize()V
    .locals 8

    .line 261
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget v1, p0, Ljxl/biff/drawing/Comment;->drawingNumber:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingData;->getSpContainer(I)Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    .line 262
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 264
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 266
    .local v0, "children":[Ljxl/biff/drawing/EscherRecord;
    iget-object v3, p0, Ljxl/biff/drawing/Comment;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v3}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v3

    aget-object v1, v3, v1

    check-cast v1, Ljxl/biff/drawing/Sp;

    .line 267
    .local v1, "sp":Ljxl/biff/drawing/Sp;
    iget-object v3, p0, Ljxl/biff/drawing/Comment;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {v3}, Ljxl/biff/drawing/ObjRecord;->getObjectId()I

    move-result v3

    iput v3, p0, Ljxl/biff/drawing/Comment;->objectId:I

    .line 268
    invoke-virtual {v1}, Ljxl/biff/drawing/Sp;->getShapeId()I

    move-result v3

    iput v3, p0, Ljxl/biff/drawing/Comment;->shapeId:I

    .line 269
    invoke-virtual {v1}, Ljxl/biff/drawing/Sp;->getShapeType()I

    move-result v3

    invoke-static {v3}, Ljxl/biff/drawing/ShapeType;->getType(I)Ljxl/biff/drawing/ShapeType;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/drawing/Comment;->type:Ljxl/biff/drawing/ShapeType;

    .line 271
    sget-object v4, Ljxl/biff/drawing/ShapeType;->UNKNOWN:Ljxl/biff/drawing/ShapeType;

    if-ne v3, v4, :cond_1

    .line 273
    sget-object v3, Ljxl/biff/drawing/Comment;->logger:Ljxl/common/Logger;

    const-string v4, "Unknown shape type"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 276
    :cond_1
    const/4 v3, 0x0

    .line 277
    .local v3, "clientAnchor":Ljxl/biff/drawing/ClientAnchor;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_3

    if-nez v3, :cond_3

    .line 279
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v5

    sget-object v6, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    if-ne v5, v6, :cond_2

    .line 281
    aget-object v5, v0, v4

    move-object v3, v5

    check-cast v3, Ljxl/biff/drawing/ClientAnchor;

    .line 277
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 285
    .end local v4    # "i":I
    :cond_3
    if-nez v3, :cond_4

    .line 287
    sget-object v4, Ljxl/biff/drawing/Comment;->logger:Ljxl/common/Logger;

    const-string v5, "client anchor not found"

    invoke-virtual {v4, v5}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_2

    .line 291
    :cond_4
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getX1()D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v4, v2

    iput v4, p0, Ljxl/biff/drawing/Comment;->column:I

    .line 292
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getY1()D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v4, v2

    iput v4, p0, Ljxl/biff/drawing/Comment;->row:I

    .line 293
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getX2()D

    move-result-wide v4

    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getX1()D

    move-result-wide v6

    sub-double/2addr v4, v6

    iput-wide v4, p0, Ljxl/biff/drawing/Comment;->width:D

    .line 294
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getY2()D

    move-result-wide v4

    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getY1()D

    move-result-wide v6

    sub-double/2addr v4, v6

    iput-wide v4, p0, Ljxl/biff/drawing/Comment;->height:D

    .line 297
    :goto_2
    iput-boolean v2, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    .line 298
    return-void
.end method


# virtual methods
.method public addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V
    .locals 2
    .param p1, "d"    # Ljxl/biff/drawing/MsoDrawingRecord;

    .line 725
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 726
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {p1}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    .line 727
    return-void
.end method

.method public final getBlipId()I
    .locals 1

    .line 358
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 360
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 363
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Comment;->blipId:I

    return v0
.end method

.method public getColumn()I
    .locals 1

    .line 830
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->note:Ljxl/biff/drawing/NoteRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/NoteRecord;->getColumn()I

    move-result v0

    return v0
.end method

.method public getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .locals 1

    .line 441
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .line 584
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 586
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 589
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Comment;->height:D

    return-wide v0
.end method

.method public getImageBytes()[B
    .locals 1

    .line 701
    const/4 v0, 0x0

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 702
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageData()[B
    .locals 2

    .line 634
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 636
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_2

    .line 638
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 641
    :cond_2
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget v1, p0, Ljxl/biff/drawing/Comment;->blipId:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingGroup;->getImageData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getImageFilePath()Ljava/lang/String;
    .locals 1

    .line 714
    const/4 v0, 0x0

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 715
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;
    .locals 1

    .line 373
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    return-object v0
.end method

.method public final getObjectId()I
    .locals 1

    .line 328
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 330
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 333
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Comment;->objectId:I

    return v0
.end method

.method public getOrigin()Ljxl/biff/drawing/Origin;
    .locals 1

    .line 451
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    return-object v0
.end method

.method public getReferenceCount()I
    .locals 1

    .line 461
    iget v0, p0, Ljxl/biff/drawing/Comment;->referenceCount:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 820
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->note:Ljxl/biff/drawing/NoteRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/NoteRecord;->getRow()I

    move-result v0

    return v0
.end method

.method public final getShapeId()I
    .locals 1

    .line 343
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 348
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Comment;->shapeId:I

    return v0
.end method

.method public getSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 17

    .line 383
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v1, :cond_0

    .line 385
    invoke-direct/range {p0 .. p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 388
    :cond_0
    iget-object v1, v0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_1

    .line 390
    invoke-direct/range {p0 .. p0}, Ljxl/biff/drawing/Comment;->getReadSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v1

    return-object v1

    .line 393
    :cond_1
    iget-object v1, v0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    if-nez v1, :cond_2

    .line 395
    new-instance v1, Ljxl/biff/drawing/SpContainer;

    invoke-direct {v1}, Ljxl/biff/drawing/SpContainer;-><init>()V

    iput-object v1, v0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    .line 396
    new-instance v1, Ljxl/biff/drawing/Sp;

    iget-object v2, v0, Ljxl/biff/drawing/Comment;->type:Ljxl/biff/drawing/ShapeType;

    iget v3, v0, Ljxl/biff/drawing/Comment;->shapeId:I

    const/16 v4, 0xa00

    invoke-direct {v1, v2, v3, v4}, Ljxl/biff/drawing/Sp;-><init>(Ljxl/biff/drawing/ShapeType;II)V

    .line 397
    .local v1, "sp":Ljxl/biff/drawing/Sp;
    iget-object v2, v0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v2, v1}, Ljxl/biff/drawing/EscherContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 398
    new-instance v2, Ljxl/biff/drawing/Opt;

    invoke-direct {v2}, Ljxl/biff/drawing/Opt;-><init>()V

    .line 399
    .local v2, "opt":Ljxl/biff/drawing/Opt;
    const/16 v3, 0x158

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v4}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 400
    const/16 v3, 0x181

    const v5, 0x8000050

    invoke-virtual {v2, v3, v4, v4, v5}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 401
    const/16 v3, 0x183

    invoke-virtual {v2, v3, v4, v4, v5}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 402
    const/16 v3, 0x3bf

    const v5, 0x20002

    invoke-virtual {v2, v3, v4, v4, v5}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 403
    iget-object v3, v0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v3, v2}, Ljxl/biff/drawing/EscherContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 405
    new-instance v3, Ljxl/biff/drawing/ClientAnchor;

    iget v4, v0, Ljxl/biff/drawing/Comment;->column:I

    int-to-double v4, v4

    const-wide v6, 0x3ff4cccccccccccdL    # 1.3

    add-double v8, v4, v6

    const-wide/16 v4, 0x0

    iget v10, v0, Ljxl/biff/drawing/Comment;->row:I

    int-to-double v10, v10

    const-wide v12, 0x3fe3333333333333L    # 0.6

    sub-double/2addr v10, v12

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    iget v4, v0, Ljxl/biff/drawing/Comment;->column:I

    int-to-double v4, v4

    add-double/2addr v4, v6

    iget-wide v6, v0, Ljxl/biff/drawing/Comment;->width:D

    add-double v12, v4, v6

    iget v4, v0, Ljxl/biff/drawing/Comment;->row:I

    int-to-double v4, v4

    iget-wide v6, v0, Ljxl/biff/drawing/Comment;->height:D

    add-double v14, v4, v6

    const/16 v16, 0x1

    move-object v4, v3

    move-wide v5, v8

    move-wide v7, v10

    move-wide v9, v12

    move-wide v11, v14

    move/from16 v13, v16

    invoke-direct/range {v4 .. v13}, Ljxl/biff/drawing/ClientAnchor;-><init>(DDDDI)V

    .line 411
    .local v3, "clientAnchor":Ljxl/biff/drawing/ClientAnchor;
    iget-object v4, v0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v4, v3}, Ljxl/biff/drawing/EscherContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 413
    new-instance v4, Ljxl/biff/drawing/ClientData;

    invoke-direct {v4}, Ljxl/biff/drawing/ClientData;-><init>()V

    .line 414
    .local v4, "clientData":Ljxl/biff/drawing/ClientData;
    iget-object v5, v0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v5, v4}, Ljxl/biff/drawing/EscherContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 416
    new-instance v5, Ljxl/biff/drawing/ClientTextBox;

    invoke-direct {v5}, Ljxl/biff/drawing/ClientTextBox;-><init>()V

    .line 417
    .local v5, "clientTextBox":Ljxl/biff/drawing/ClientTextBox;
    iget-object v6, v0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v6, v5}, Ljxl/biff/drawing/EscherContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 420
    .end local v1    # "sp":Ljxl/biff/drawing/Sp;
    .end local v2    # "opt":Ljxl/biff/drawing/Opt;
    .end local v3    # "clientAnchor":Ljxl/biff/drawing/ClientAnchor;
    .end local v4    # "clientData":Ljxl/biff/drawing/ClientData;
    .end local v5    # "clientTextBox":Ljxl/biff/drawing/ClientTextBox;
    :cond_2
    iget-object v1, v0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    return-object v1
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 840
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 842
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->text:Ljxl/biff/ContinueRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 844
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->text:Ljxl/biff/ContinueRecord;

    invoke-virtual {v0}, Ljxl/biff/ContinueRecord;->getData()[B

    move-result-object v0

    .line 845
    .local v0, "td":[B
    aget-byte v1, v0, v1

    if-nez v1, :cond_1

    .line 847
    array-length v1, v0

    sub-int/2addr v1, v2

    iget-object v3, p0, Ljxl/biff/drawing/Comment;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-static {v0, v1, v2, v3}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    goto :goto_1

    .line 852
    :cond_1
    array-length v1, v0

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, v2}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    .line 857
    .end local v0    # "td":[B
    :cond_2
    :goto_1
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljxl/biff/drawing/ShapeType;
    .locals 1

    .line 651
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->type:Ljxl/biff/drawing/ShapeType;

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    .line 550
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 552
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 555
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Comment;->width:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .line 481
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 483
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 485
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Comment;->column:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 515
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 517
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 520
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Comment;->row:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 867
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .line 894
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/MsoDrawingRecord;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isFormObject()Z
    .locals 1

    .line 905
    const/4 v0, 0x1

    return v0
.end method

.method public setCommentText(Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/String;

    .line 877
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    .line 879
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    .line 881
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    .line 883
    :cond_0
    return-void
.end method

.method public setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V
    .locals 0
    .param p1, "dg"    # Ljxl/biff/drawing/DrawingGroup;

    .line 431
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 432
    return-void
.end method

.method public setFormatting(Ljxl/biff/ContinueRecord;)V
    .locals 0
    .param p1, "t"    # Ljxl/biff/ContinueRecord;

    .line 691
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->formatting:Ljxl/biff/ContinueRecord;

    .line 692
    return-void
.end method

.method public setHeight(D)V
    .locals 2
    .param p1, "h"    # D

    .line 599
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 601
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 603
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 605
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    .line 608
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Comment;->height:D

    .line 609
    return-void
.end method

.method public setNote(Ljxl/biff/drawing/NoteRecord;)V
    .locals 0
    .param p1, "t"    # Ljxl/biff/drawing/NoteRecord;

    .line 671
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->note:Ljxl/biff/drawing/NoteRecord;

    .line 672
    return-void
.end method

.method public final setObjectId(III)V
    .locals 2
    .param p1, "objid"    # I
    .param p2, "bip"    # I
    .param p3, "sid"    # I

    .line 311
    iput p1, p0, Ljxl/biff/drawing/Comment;->objectId:I

    .line 312
    iput p2, p0, Ljxl/biff/drawing/Comment;->blipId:I

    .line 313
    iput p3, p0, Ljxl/biff/drawing/Comment;->shapeId:I

    .line 315
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    .line 317
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    .line 319
    :cond_0
    return-void
.end method

.method public setReferenceCount(I)V
    .locals 0
    .param p1, "r"    # I

    .line 471
    iput p1, p0, Ljxl/biff/drawing/Comment;->referenceCount:I

    .line 472
    return-void
.end method

.method public setText(Ljxl/biff/ContinueRecord;)V
    .locals 0
    .param p1, "t"    # Ljxl/biff/ContinueRecord;

    .line 681
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->text:Ljxl/biff/ContinueRecord;

    .line 682
    return-void
.end method

.method public setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V
    .locals 0
    .param p1, "t"    # Ljxl/biff/drawing/TextObjectRecord;

    .line 661
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->txo:Ljxl/biff/drawing/TextObjectRecord;

    .line 662
    return-void
.end method

.method public setWidth(D)V
    .locals 2
    .param p1, "w"    # D

    .line 565
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 567
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 569
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 571
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    .line 574
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Comment;->width:D

    .line 575
    return-void
.end method

.method public setX(D)V
    .locals 2
    .param p1, "x"    # D

    .line 496
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 498
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 500
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 502
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    .line 505
    :cond_1
    double-to-int v0, p1

    iput v0, p0, Ljxl/biff/drawing/Comment;->column:I

    .line 506
    return-void
.end method

.method public setY(D)V
    .locals 2
    .param p1, "y"    # D

    .line 530
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 532
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 534
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 536
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    .line 539
    :cond_1
    double-to-int v0, p1

    iput v0, p0, Ljxl/biff/drawing/Comment;->row:I

    .line 540
    return-void
.end method

.method public writeAdditionalRecords(Ljxl/write/biff/File;)V
    .locals 10
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_2

    .line 739
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 741
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 745
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->txo:Ljxl/biff/drawing/TextObjectRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 746
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->text:Ljxl/biff/ContinueRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 747
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->formatting:Ljxl/biff/ContinueRecord;

    if-eqz v0, :cond_1

    .line 749
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 751
    :cond_1
    return-void

    .line 755
    :cond_2
    new-instance v0, Ljxl/biff/drawing/ObjRecord;

    iget v1, p0, Ljxl/biff/drawing/Comment;->objectId:I

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord;-><init>(ILjxl/biff/drawing/ObjRecord$ObjType;)V

    .line 758
    .local v0, "objrec":Ljxl/biff/drawing/ObjRecord;
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 762
    new-instance v1, Ljxl/biff/drawing/ClientTextBox;

    invoke-direct {v1}, Ljxl/biff/drawing/ClientTextBox;-><init>()V

    .line 763
    .local v1, "textBox":Ljxl/biff/drawing/ClientTextBox;
    new-instance v2, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v1}, Ljxl/biff/drawing/ClientTextBox;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>([B)V

    .line 764
    .local v2, "msod":Ljxl/biff/drawing/MsoDrawingRecord;
    invoke-virtual {p1, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 766
    new-instance v3, Ljxl/biff/drawing/TextObjectRecord;

    invoke-virtual {p0}, Ljxl/biff/drawing/Comment;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljxl/biff/drawing/TextObjectRecord;-><init>(Ljava/lang/String;)V

    .line 767
    .local v3, "txorec":Ljxl/biff/drawing/TextObjectRecord;
    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 770
    iget-object v4, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    const/4 v6, 0x1

    add-int/2addr v4, v6

    new-array v4, v4, [B

    .line 771
    .local v4, "textData":[B
    const/4 v7, 0x0

    aput-byte v6, v4, v7

    .line 772
    iget-object v8, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    invoke-static {v8, v4, v6}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 774
    new-instance v6, Ljxl/biff/ContinueRecord;

    invoke-direct {v6, v4}, Ljxl/biff/ContinueRecord;-><init>([B)V

    .line 775
    .local v6, "textContinue":Ljxl/biff/ContinueRecord;
    invoke-virtual {p1, v6}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 779
    const/16 v8, 0x10

    new-array v8, v8, [B

    .line 782
    .local v8, "frData":[B
    invoke-static {v7, v8, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 783
    invoke-static {v7, v8, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 785
    iget-object v5, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v9, 0x8

    invoke-static {v5, v8, v9}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 786
    const/16 v5, 0xa

    invoke-static {v7, v8, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 788
    new-instance v5, Ljxl/biff/ContinueRecord;

    invoke-direct {v5, v8}, Ljxl/biff/ContinueRecord;-><init>([B)V

    .line 789
    .local v5, "frContinue":Ljxl/biff/ContinueRecord;
    invoke-virtual {p1, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 790
    return-void
.end method

.method public writeTailRecords(Ljxl/write/biff/File;)V
    .locals 4
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    .line 804
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->note:Ljxl/biff/drawing/NoteRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 805
    return-void

    .line 809
    :cond_0
    new-instance v0, Ljxl/biff/drawing/NoteRecord;

    iget v1, p0, Ljxl/biff/drawing/Comment;->column:I

    iget v2, p0, Ljxl/biff/drawing/Comment;->row:I

    iget v3, p0, Ljxl/biff/drawing/Comment;->objectId:I

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/drawing/NoteRecord;-><init>(III)V

    .line 810
    .local v0, "noteRecord":Ljxl/biff/drawing/NoteRecord;
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 811
    return-void
.end method

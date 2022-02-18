.class public Ljxl/biff/drawing/ComboBox;
.super Ljava/lang/Object;
.source "ComboBox.java"

# interfaces
.implements Ljxl/biff/drawing/DrawingGroupObject;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private blipId:I

.field private column:I

.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private drawingNumber:I

.field private escherData:Ljxl/biff/drawing/EscherContainer;

.field private height:D

.field private initialized:Z

.field private msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

.field private objRecord:Ljxl/biff/drawing/ObjRecord;

.field private objectId:I

.field private origin:Ljxl/biff/drawing/Origin;

.field private readSpContainer:Ljxl/biff/drawing/EscherContainer;

.field private referenceCount:I

.field private row:I

.field private shapeId:I

.field private spContainer:Ljxl/biff/drawing/EscherContainer;

.field private type:Ljxl/biff/drawing/ShapeType;

.field private width:D

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Ljxl/biff/drawing/ComboBox;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/ComboBox;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    .line 199
    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    iput-object v1, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    .line 200
    iput v0, p0, Ljxl/biff/drawing/ComboBox;->referenceCount:I

    .line 201
    sget-object v0, Ljxl/biff/drawing/ShapeType;->HOST_CONTROL:Ljxl/biff/drawing/ShapeType;

    iput-object v0, p0, Ljxl/biff/drawing/ComboBox;->type:Ljxl/biff/drawing/ShapeType;

    .line 202
    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V
    .locals 4
    .param p1, "dgo"    # Ljxl/biff/drawing/DrawingGroupObject;
    .param p2, "dg"    # Ljxl/biff/drawing/DrawingGroup;
    .param p3, "ws"    # Ljxl/WorkbookSettings;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    .line 180
    move-object v1, p1

    check-cast v1, Ljxl/biff/drawing/ComboBox;

    .line 181
    .local v1, "d":Ljxl/biff/drawing/ComboBox;
    iget-object v2, v1, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v3, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 182
    iget-object v2, v1, Ljxl/biff/drawing/ComboBox;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    iput-object v2, p0, Ljxl/biff/drawing/ComboBox;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 183
    iget-object v2, v1, Ljxl/biff/drawing/ComboBox;->objRecord:Ljxl/biff/drawing/ObjRecord;

    iput-object v2, p0, Ljxl/biff/drawing/ComboBox;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 184
    iput-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    .line 185
    sget-object v0, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    .line 186
    iget-object v0, v1, Ljxl/biff/drawing/ComboBox;->drawingData:Ljxl/biff/drawing/DrawingData;

    iput-object v0, p0, Ljxl/biff/drawing/ComboBox;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 187
    iput-object p2, p0, Ljxl/biff/drawing/ComboBox;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 188
    iget v0, v1, Ljxl/biff/drawing/ComboBox;->drawingNumber:I

    iput v0, p0, Ljxl/biff/drawing/ComboBox;->drawingNumber:I

    .line 189
    invoke-virtual {p2, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 190
    iput-object p3, p0, Ljxl/biff/drawing/ComboBox;->workbookSettings:Ljxl/WorkbookSettings;

    .line 191
    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V
    .locals 3
    .param p1, "mso"    # Ljxl/biff/drawing/MsoDrawingRecord;
    .param p2, "obj"    # Ljxl/biff/drawing/ObjRecord;
    .param p3, "dd"    # Ljxl/biff/drawing/DrawingData;
    .param p4, "dg"    # Ljxl/biff/drawing/DrawingGroup;
    .param p5, "ws"    # Ljxl/WorkbookSettings;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    .line 153
    iput-object p4, p0, Ljxl/biff/drawing/ComboBox;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 154
    iput-object p1, p0, Ljxl/biff/drawing/ComboBox;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 155
    iput-object p3, p0, Ljxl/biff/drawing/ComboBox;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 156
    iput-object p2, p0, Ljxl/biff/drawing/ComboBox;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 157
    iput-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    .line 158
    iput-object p5, p0, Ljxl/biff/drawing/ComboBox;->workbookSettings:Ljxl/WorkbookSettings;

    .line 159
    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object v1, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    .line 160
    iget-object v1, p0, Ljxl/biff/drawing/ComboBox;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v2, p0, Ljxl/biff/drawing/ComboBox;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v2}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 161
    iget-object v1, p0, Ljxl/biff/drawing/ComboBox;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {v1}, Ljxl/biff/drawing/DrawingData;->getNumDrawings()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Ljxl/biff/drawing/ComboBox;->drawingNumber:I

    .line 162
    iget-object v1, p0, Ljxl/biff/drawing/ComboBox;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {v1, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 164
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move v0, v2

    :cond_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 166
    invoke-direct {p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 167
    return-void
.end method

.method private getReadSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 1

    .line 559
    iget-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    if-nez v0, :cond_0

    .line 561
    invoke-direct {p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 564
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    return-object v0
.end method

.method private initialize()V
    .locals 7

    .line 209
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget v1, p0, Ljxl/biff/drawing/ComboBox;->drawingNumber:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingData;->getSpContainer(I)Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/ComboBox;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    .line 210
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 212
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 214
    .local v0, "children":[Ljxl/biff/drawing/EscherRecord;
    iget-object v3, p0, Ljxl/biff/drawing/ComboBox;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v3}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v3

    aget-object v1, v3, v1

    check-cast v1, Ljxl/biff/drawing/Sp;

    .line 215
    .local v1, "sp":Ljxl/biff/drawing/Sp;
    iget-object v3, p0, Ljxl/biff/drawing/ComboBox;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {v3}, Ljxl/biff/drawing/ObjRecord;->getObjectId()I

    move-result v3

    iput v3, p0, Ljxl/biff/drawing/ComboBox;->objectId:I

    .line 216
    invoke-virtual {v1}, Ljxl/biff/drawing/Sp;->getShapeId()I

    move-result v3

    iput v3, p0, Ljxl/biff/drawing/ComboBox;->shapeId:I

    .line 217
    invoke-virtual {v1}, Ljxl/biff/drawing/Sp;->getShapeType()I

    move-result v3

    invoke-static {v3}, Ljxl/biff/drawing/ShapeType;->getType(I)Ljxl/biff/drawing/ShapeType;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/drawing/ComboBox;->type:Ljxl/biff/drawing/ShapeType;

    .line 219
    sget-object v4, Ljxl/biff/drawing/ShapeType;->UNKNOWN:Ljxl/biff/drawing/ShapeType;

    if-ne v3, v4, :cond_1

    .line 221
    sget-object v3, Ljxl/biff/drawing/ComboBox;->logger:Ljxl/common/Logger;

    const-string v4, "Unknown shape type"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 224
    :cond_1
    const/4 v3, 0x0

    .line 225
    .local v3, "clientAnchor":Ljxl/biff/drawing/ClientAnchor;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_3

    if-nez v3, :cond_3

    .line 227
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v5

    sget-object v6, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    if-ne v5, v6, :cond_2

    .line 229
    aget-object v5, v0, v4

    move-object v3, v5

    check-cast v3, Ljxl/biff/drawing/ClientAnchor;

    .line 225
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 233
    .end local v4    # "i":I
    :cond_3
    if-nez v3, :cond_4

    .line 235
    sget-object v4, Ljxl/biff/drawing/ComboBox;->logger:Ljxl/common/Logger;

    const-string v5, "Client anchor not found"

    invoke-virtual {v4, v5}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_2

    .line 239
    :cond_4
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getX1()D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Ljxl/biff/drawing/ComboBox;->column:I

    .line 240
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getY1()D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Ljxl/biff/drawing/ComboBox;->row:I

    .line 243
    :goto_2
    iput-boolean v2, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    .line 244
    return-void
.end method


# virtual methods
.method public final getBlipId()I
    .locals 1

    .line 304
    iget-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    if-nez v0, :cond_0

    .line 306
    invoke-direct {p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 309
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/ComboBox;->blipId:I

    return v0
.end method

.method public getColumn()I
    .locals 1

    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .locals 1

    .line 381
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .line 524
    iget-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    if-nez v0, :cond_0

    .line 526
    invoke-direct {p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 529
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/ComboBox;->height:D

    return-wide v0
.end method

.method public getImageBytes()[B
    .locals 1

    .line 601
    const/4 v0, 0x0

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 602
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageData()[B
    .locals 2

    .line 574
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

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

    .line 576
    iget-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    if-nez v0, :cond_2

    .line 578
    invoke-direct {p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 581
    :cond_2
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget v1, p0, Ljxl/biff/drawing/ComboBox;->blipId:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingGroup;->getImageData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getImageFilePath()Ljava/lang/String;
    .locals 1

    .line 614
    const/4 v0, 0x0

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 615
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;
    .locals 1

    .line 319
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    return-object v0
.end method

.method public final getObjectId()I
    .locals 1

    .line 274
    iget-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    if-nez v0, :cond_0

    .line 276
    invoke-direct {p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 279
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/ComboBox;->objectId:I

    return v0
.end method

.method public getOrigin()Ljxl/biff/drawing/Origin;
    .locals 1

    .line 391
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    return-object v0
.end method

.method public getReferenceCount()I
    .locals 1

    .line 401
    iget v0, p0, Ljxl/biff/drawing/ComboBox;->referenceCount:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public final getShapeId()I
    .locals 1

    .line 289
    iget-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 294
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/ComboBox;->shapeId:I

    return v0
.end method

.method public getSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 17

    .line 329
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    if-nez v1, :cond_0

    .line 331
    invoke-direct/range {p0 .. p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 334
    :cond_0
    iget-object v1, v0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_1

    .line 336
    invoke-direct/range {p0 .. p0}, Ljxl/biff/drawing/ComboBox;->getReadSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v1

    return-object v1

    .line 339
    :cond_1
    new-instance v1, Ljxl/biff/drawing/SpContainer;

    invoke-direct {v1}, Ljxl/biff/drawing/SpContainer;-><init>()V

    .line 340
    .local v1, "spc":Ljxl/biff/drawing/SpContainer;
    new-instance v2, Ljxl/biff/drawing/Sp;

    iget-object v3, v0, Ljxl/biff/drawing/ComboBox;->type:Ljxl/biff/drawing/ShapeType;

    iget v4, v0, Ljxl/biff/drawing/ComboBox;->shapeId:I

    const/16 v5, 0xa00

    invoke-direct {v2, v3, v4, v5}, Ljxl/biff/drawing/Sp;-><init>(Ljxl/biff/drawing/ShapeType;II)V

    .line 341
    .local v2, "sp":Ljxl/biff/drawing/Sp;
    invoke-virtual {v1, v2}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 342
    new-instance v3, Ljxl/biff/drawing/Opt;

    invoke-direct {v3}, Ljxl/biff/drawing/Opt;-><init>()V

    .line 343
    .local v3, "opt":Ljxl/biff/drawing/Opt;
    const/16 v4, 0x7f

    const v5, 0x1040104

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v6, v5}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 344
    const/16 v4, 0xbf

    const v5, 0x80008

    invoke-virtual {v3, v4, v6, v6, v5}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 345
    const/16 v4, 0x1ff

    const/high16 v5, 0x80000

    invoke-virtual {v3, v4, v6, v6, v5}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 346
    const/16 v4, 0x3bf

    const/high16 v5, 0x20000

    invoke-virtual {v3, v4, v6, v6, v5}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 349
    invoke-virtual {v1, v3}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 351
    new-instance v4, Ljxl/biff/drawing/ClientAnchor;

    iget v5, v0, Ljxl/biff/drawing/ComboBox;->column:I

    int-to-double v8, v5

    iget v6, v0, Ljxl/biff/drawing/ComboBox;->row:I

    int-to-double v10, v6

    add-int/lit8 v5, v5, 0x1

    int-to-double v12, v5

    add-int/lit8 v6, v6, 0x1

    int-to-double v14, v6

    const/16 v16, 0x1

    move-object v7, v4

    invoke-direct/range {v7 .. v16}, Ljxl/biff/drawing/ClientAnchor;-><init>(DDDDI)V

    .line 356
    .local v4, "clientAnchor":Ljxl/biff/drawing/ClientAnchor;
    invoke-virtual {v1, v4}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 357
    new-instance v5, Ljxl/biff/drawing/ClientData;

    invoke-direct {v5}, Ljxl/biff/drawing/ClientData;-><init>()V

    .line 358
    .local v5, "clientData":Ljxl/biff/drawing/ClientData;
    invoke-virtual {v1, v5}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 360
    return-object v1
.end method

.method public getType()Ljxl/biff/drawing/ShapeType;
    .locals 1

    .line 591
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->type:Ljxl/biff/drawing/ShapeType;

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    .line 490
    iget-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    if-nez v0, :cond_0

    .line 492
    invoke-direct {p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 495
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/ComboBox;->width:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .line 421
    iget-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    if-nez v0, :cond_0

    .line 423
    invoke-direct {p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 425
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/ComboBox;->column:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 455
    iget-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 460
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/ComboBox;->row:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 677
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .line 689
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/MsoDrawingRecord;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isFormObject()Z
    .locals 1

    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V
    .locals 0
    .param p1, "dg"    # Ljxl/biff/drawing/DrawingGroup;

    .line 371
    iput-object p1, p0, Ljxl/biff/drawing/ComboBox;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 372
    return-void
.end method

.method public setHeight(D)V
    .locals 2
    .param p1, "h"    # D

    .line 539
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 541
    iget-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    if-nez v0, :cond_0

    .line 543
    invoke-direct {p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 545
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    .line 548
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/ComboBox;->height:D

    .line 549
    return-void
.end method

.method public final setObjectId(III)V
    .locals 2
    .param p1, "objid"    # I
    .param p2, "bip"    # I
    .param p3, "sid"    # I

    .line 257
    iput p1, p0, Ljxl/biff/drawing/ComboBox;->objectId:I

    .line 258
    iput p2, p0, Ljxl/biff/drawing/ComboBox;->blipId:I

    .line 259
    iput p3, p0, Ljxl/biff/drawing/ComboBox;->shapeId:I

    .line 261
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    .line 263
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    .line 265
    :cond_0
    return-void
.end method

.method public setReferenceCount(I)V
    .locals 0
    .param p1, "r"    # I

    .line 411
    iput p1, p0, Ljxl/biff/drawing/ComboBox;->referenceCount:I

    .line 412
    return-void
.end method

.method public setWidth(D)V
    .locals 2
    .param p1, "w"    # D

    .line 505
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 507
    iget-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    if-nez v0, :cond_0

    .line 509
    invoke-direct {p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 511
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    .line 514
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/ComboBox;->width:D

    .line 515
    return-void
.end method

.method public setX(D)V
    .locals 2
    .param p1, "x"    # D

    .line 436
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 438
    iget-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    if-nez v0, :cond_0

    .line 440
    invoke-direct {p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 442
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    .line 445
    :cond_1
    double-to-int v0, p1

    iput v0, p0, Ljxl/biff/drawing/ComboBox;->column:I

    .line 446
    return-void
.end method

.method public setY(D)V
    .locals 2
    .param p1, "y"    # D

    .line 470
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 472
    iget-boolean v0, p0, Ljxl/biff/drawing/ComboBox;->initialized:Z

    if-nez v0, :cond_0

    .line 474
    invoke-direct {p0}, Ljxl/biff/drawing/ComboBox;->initialize()V

    .line 476
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    .line 479
    :cond_1
    double-to-int v0, p1

    iput v0, p0, Ljxl/biff/drawing/ComboBox;->row:I

    .line 480
    return-void
.end method

.method public writeAdditionalRecords(Ljxl/write/biff/File;)V
    .locals 3
    .param p1, "outputFile"    # Ljxl/write/biff/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    .line 628
    iget-object v0, p0, Ljxl/biff/drawing/ComboBox;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 629
    return-void

    .line 633
    :cond_0
    new-instance v0, Ljxl/biff/drawing/ObjRecord;

    iget v1, p0, Ljxl/biff/drawing/ComboBox;->objectId:I

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->COMBOBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord;-><init>(ILjxl/biff/drawing/ObjRecord$ObjType;)V

    .line 636
    .local v0, "objrec":Ljxl/biff/drawing/ObjRecord;
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 637
    return-void
.end method

.method public writeTailRecords(Ljxl/write/biff/File;)V
    .locals 0
    .param p1, "outputFile"    # Ljxl/write/biff/File;

    .line 648
    return-void
.end method

.class public Ljxl/biff/drawing/Drawing;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Ljxl/biff/drawing/DrawingGroupObject;
.implements Ljxl/Image;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/drawing/Drawing$ImageAnchorProperties;
    }
.end annotation


# static fields
.field private static final DEFAULT_FONT_SIZE:D = 10.0

.field public static MOVE_AND_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

.field public static MOVE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

.field public static NO_MOVE_OR_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private blipId:I

.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private drawingNumber:I

.field private escherData:Ljxl/biff/drawing/EscherContainer;

.field private height:D

.field private imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

.field private imageData:[B

.field private imageFile:Ljava/io/File;

.field private initialized:Z

.field private msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

.field private objRecord:Ljxl/biff/drawing/ObjRecord;

.field private objectId:I

.field private origin:Ljxl/biff/drawing/Origin;

.field private pngReader:Ljxl/biff/drawing/PNGReader;

.field private readSpContainer:Ljxl/biff/drawing/EscherContainer;

.field private referenceCount:I

.field private shapeId:I

.field private sheet:Ljxl/Sheet;

.field private type:Ljxl/biff/drawing/ShapeType;

.field private width:D

.field private x:D

.field private y:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-class v0, Ljxl/biff/drawing/Drawing;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Drawing;->logger:Ljxl/common/Logger;

    .line 205
    new-instance v0, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/Drawing;->MOVE_AND_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 207
    new-instance v0, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/Drawing;->MOVE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 209
    new-instance v0, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/Drawing;->NO_MOVE_OR_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    return-void
.end method

.method public constructor <init>(DDDDLjava/io/File;)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D
    .param p9, "image"    # Ljava/io/File;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 282
    iput-object p9, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 284
    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    iput-object v1, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 285
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing;->x:D

    .line 286
    iput-wide p3, p0, Ljxl/biff/drawing/Drawing;->y:D

    .line 287
    iput-wide p5, p0, Ljxl/biff/drawing/Drawing;->width:D

    .line 288
    iput-wide p7, p0, Ljxl/biff/drawing/Drawing;->height:D

    .line 289
    iput v0, p0, Ljxl/biff/drawing/Drawing;->referenceCount:I

    .line 290
    sget-object v0, Ljxl/biff/drawing/Drawing;->MOVE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 291
    sget-object v0, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    .line 292
    return-void
.end method

.method public constructor <init>(DDDD[B)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "w"    # D
    .param p7, "h"    # D
    .param p9, "image"    # [B

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 309
    iput-object p9, p0, Ljxl/biff/drawing/Drawing;->imageData:[B

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 311
    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    iput-object v1, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 312
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing;->x:D

    .line 313
    iput-wide p3, p0, Ljxl/biff/drawing/Drawing;->y:D

    .line 314
    iput-wide p5, p0, Ljxl/biff/drawing/Drawing;->width:D

    .line 315
    iput-wide p7, p0, Ljxl/biff/drawing/Drawing;->height:D

    .line 316
    iput v0, p0, Ljxl/biff/drawing/Drawing;->referenceCount:I

    .line 317
    sget-object v0, Ljxl/biff/drawing/Drawing;->MOVE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 318
    sget-object v0, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    .line 319
    return-void
.end method

.method protected constructor <init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;)V
    .locals 4
    .param p1, "dgo"    # Ljxl/biff/drawing/DrawingGroupObject;
    .param p2, "dg"    # Ljxl/biff/drawing/DrawingGroup;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 255
    move-object v1, p1

    check-cast v1, Ljxl/biff/drawing/Drawing;

    .line 256
    .local v1, "d":Ljxl/biff/drawing/Drawing;
    iget-object v2, v1, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v3, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 257
    iget-object v2, v1, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    iput-object v2, p0, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 258
    iget-object v2, v1, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    iput-object v2, p0, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 259
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 260
    sget-object v0, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 261
    iget-object v0, v1, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 262
    iput-object p2, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 263
    iget v0, v1, Ljxl/biff/drawing/Drawing;->drawingNumber:I

    iput v0, p0, Ljxl/biff/drawing/Drawing;->drawingNumber:I

    .line 264
    invoke-virtual {p2, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 265
    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/Sheet;)V
    .locals 3
    .param p1, "mso"    # Ljxl/biff/drawing/MsoDrawingRecord;
    .param p2, "obj"    # Ljxl/biff/drawing/ObjRecord;
    .param p3, "dd"    # Ljxl/biff/drawing/DrawingData;
    .param p4, "dg"    # Ljxl/biff/drawing/DrawingGroup;
    .param p5, "s"    # Ljxl/Sheet;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 231
    iput-object p4, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 232
    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 233
    iput-object p3, p0, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 234
    iput-object p2, p0, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 235
    iput-object p5, p0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    .line 236
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 237
    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object v1, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 238
    iget-object v1, p0, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v2, p0, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v2}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 239
    iget-object v1, p0, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {v1}, Ljxl/biff/drawing/DrawingData;->getNumDrawings()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Ljxl/biff/drawing/Drawing;->drawingNumber:I

    .line 240
    iget-object v1, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {v1, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 242
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move v0, v2

    :cond_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 244
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 245
    return-void
.end method

.method private getHeightInPoints()D
    .locals 14

    .line 955
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    if-nez v0, :cond_0

    .line 957
    sget-object v0, Ljxl/biff/drawing/Drawing;->logger:Ljxl/common/Logger;

    const-string v1, "calculating image height:  sheet is null"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 958
    const-wide/16 v0, 0x0

    return-wide v0

    .line 962
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing;->y:D

    double-to-int v2, v0

    .line 963
    .local v2, "firstRow":I
    iget-wide v3, p0, Ljxl/biff/drawing/Drawing;->height:D

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 967
    .local v0, "lastRow":I
    iget-object v1, p0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    invoke-interface {v1, v2}, Ljxl/Sheet;->getRowView(I)Ljxl/CellView;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/CellView;->getSize()I

    move-result v1

    .line 968
    .local v1, "firstRowHeight":I
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iget-wide v5, p0, Ljxl/biff/drawing/Drawing;->y:D

    int-to-double v7, v2

    sub-double/2addr v5, v7

    sub-double/2addr v3, v5

    int-to-double v5, v1

    mul-double/2addr v3, v5

    .line 972
    .local v3, "firstRowImageHeight":D
    const/4 v5, 0x0

    .line 973
    .local v5, "lastRowHeight":I
    const-wide/16 v6, 0x0

    .line 974
    .local v6, "lastRowImageHeight":D
    if-eq v0, v2, :cond_1

    .line 976
    iget-object v8, p0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    invoke-interface {v8, v0}, Ljxl/Sheet;->getRowView(I)Ljxl/CellView;

    move-result-object v8

    invoke-virtual {v8}, Ljxl/CellView;->getSize()I

    move-result v5

    .line 977
    iget-wide v8, p0, Ljxl/biff/drawing/Drawing;->y:D

    iget-wide v10, p0, Ljxl/biff/drawing/Drawing;->height:D

    add-double/2addr v8, v10

    int-to-double v10, v0

    sub-double/2addr v8, v10

    int-to-double v10, v5

    mul-double v6, v8, v10

    .line 981
    :cond_1
    const-wide/16 v8, 0x0

    .line 982
    .local v8, "height":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    sub-int v11, v0, v2

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_2

    .line 984
    iget-object v11, p0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    add-int/lit8 v12, v2, 0x1

    add-int/2addr v12, v10

    invoke-interface {v11, v12}, Ljxl/Sheet;->getRowView(I)Ljxl/CellView;

    move-result-object v11

    invoke-virtual {v11}, Ljxl/CellView;->getSize()I

    move-result v11

    int-to-double v11, v11

    add-double/2addr v8, v11

    .line 982
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 988
    .end local v10    # "i":I
    :cond_2
    int-to-double v10, v1

    add-double/2addr v10, v8

    int-to-double v12, v5

    add-double/2addr v10, v12

    .line 992
    .local v10, "heightInTwips":D
    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    div-double v12, v10, v12

    .line 994
    .local v12, "heightInPoints":D
    return-wide v12
.end method

.method private getPngReader()Ljxl/biff/drawing/PNGReader;
    .locals 4

    .line 1074
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->pngReader:Ljxl/biff/drawing/PNGReader;

    if-eqz v0, :cond_0

    .line 1076
    return-object v0

    .line 1079
    :cond_0
    const/4 v0, 0x0

    .line 1080
    .local v0, "imdata":[B
    iget-object v1, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 1088
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing;->getImageBytes()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1094
    goto :goto_1

    .line 1090
    :catch_0
    move-exception v1

    .line 1092
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Ljxl/biff/drawing/Drawing;->logger:Ljxl/common/Logger;

    const-string v3, "Could not read image file"

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 1093
    const/4 v2, 0x0

    new-array v0, v2, [B

    goto :goto_1

    .line 1082
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing;->getImageData()[B

    move-result-object v0

    .line 1097
    :goto_1
    new-instance v1, Ljxl/biff/drawing/PNGReader;

    invoke-direct {v1, v0}, Ljxl/biff/drawing/PNGReader;-><init>([B)V

    iput-object v1, p0, Ljxl/biff/drawing/Drawing;->pngReader:Ljxl/biff/drawing/PNGReader;

    .line 1098
    invoke-virtual {v1}, Ljxl/biff/drawing/PNGReader;->read()V

    .line 1099
    iget-object v1, p0, Ljxl/biff/drawing/Drawing;->pngReader:Ljxl/biff/drawing/PNGReader;

    return-object v1
.end method

.method private getReadSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 1

    .line 732
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 734
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 737
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    return-object v0
.end method

.method private getWidthInPoints()D
    .locals 25

    .line 891
    move-object/from16 v0, p0

    iget-object v1, v0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    if-nez v1, :cond_0

    .line 893
    sget-object v1, Ljxl/biff/drawing/Drawing;->logger:Ljxl/common/Logger;

    const-string v2, "calculating image width:  sheet is null"

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 894
    const-wide/16 v1, 0x0

    return-wide v1

    .line 898
    :cond_0
    iget-wide v1, v0, Ljxl/biff/drawing/Drawing;->x:D

    double-to-int v3, v1

    .line 899
    .local v3, "firstCol":I
    iget-wide v4, v0, Ljxl/biff/drawing/Drawing;->width:D

    add-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 908
    .local v1, "lastCol":I
    iget-object v2, v0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    invoke-interface {v2, v3}, Ljxl/Sheet;->getColumnView(I)Ljxl/CellView;

    move-result-object v2

    .line 909
    .local v2, "cellView":Ljxl/CellView;
    invoke-virtual {v2}, Ljxl/CellView;->getSize()I

    move-result v4

    .line 910
    .local v4, "firstColWidth":I
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iget-wide v7, v0, Ljxl/biff/drawing/Drawing;->x:D

    int-to-double v9, v3

    sub-double/2addr v7, v9

    sub-double/2addr v5, v7

    int-to-double v7, v4

    mul-double/2addr v5, v7

    .line 911
    .local v5, "firstColImageWidth":D
    invoke-virtual {v2}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v7

    invoke-interface {v7}, Ljxl/format/CellFormat;->getFont()Ljxl/format/Font;

    move-result-object v7

    invoke-interface {v7}, Ljxl/format/Font;->getPointSize()I

    move-result v7

    int-to-double v10, v7

    goto :goto_0

    :cond_1
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    .line 913
    .local v10, "pointSize":D
    :goto_0
    const-wide v12, 0x3fe2e147ae147ae1L    # 0.59

    mul-double v14, v5, v12

    mul-double/2addr v14, v10

    const-wide/high16 v16, 0x4070000000000000L    # 256.0

    div-double v14, v14, v16

    .line 917
    .local v14, "firstColWidthInPoints":D
    const/4 v7, 0x0

    .line 918
    .local v7, "lastColWidth":I
    const-wide/16 v18, 0x0

    .line 919
    .local v18, "lastColImageWidth":D
    const-wide/16 v20, 0x0

    .line 920
    .local v20, "lastColWidthInPoints":D
    if-eq v1, v3, :cond_3

    .line 922
    iget-object v8, v0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    invoke-interface {v8, v1}, Ljxl/Sheet;->getColumnView(I)Ljxl/CellView;

    move-result-object v2

    .line 923
    invoke-virtual {v2}, Ljxl/CellView;->getSize()I

    move-result v7

    .line 924
    iget-wide v8, v0, Ljxl/biff/drawing/Drawing;->x:D

    iget-wide v12, v0, Ljxl/biff/drawing/Drawing;->width:D

    add-double/2addr v8, v12

    int-to-double v12, v1

    sub-double/2addr v8, v12

    int-to-double v12, v7

    mul-double v18, v8, v12

    .line 925
    invoke-virtual {v2}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v8

    invoke-interface {v8}, Ljxl/format/CellFormat;->getFont()Ljxl/format/Font;

    move-result-object v8

    invoke-interface {v8}, Ljxl/format/Font;->getPointSize()I

    move-result v8

    int-to-double v8, v8

    goto :goto_1

    :cond_2
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    :goto_1
    move-wide v10, v8

    .line 927
    const-wide v8, 0x3fe2e147ae147ae1L    # 0.59

    mul-double v12, v18, v8

    mul-double/2addr v12, v10

    div-double v20, v12, v16

    .line 931
    :cond_3
    const-wide/16 v8, 0x0

    .line 932
    .local v8, "width":D
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    sub-int v13, v1, v3

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_5

    .line 934
    iget-object v13, v0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    add-int/lit8 v24, v3, 0x1

    add-int v0, v24, v12

    invoke-interface {v13, v0}, Ljxl/Sheet;->getColumnView(I)Ljxl/CellView;

    move-result-object v2

    .line 935
    invoke-virtual {v2}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v0

    invoke-interface {v0}, Ljxl/format/CellFormat;->getFont()Ljxl/format/Font;

    move-result-object v0

    invoke-interface {v0}, Ljxl/format/Font;->getPointSize()I

    move-result v0

    move v13, v1

    .end local v1    # "lastCol":I
    .local v13, "lastCol":I
    int-to-double v0, v0

    goto :goto_3

    .end local v13    # "lastCol":I
    .restart local v1    # "lastCol":I
    :cond_4
    move v13, v1

    .end local v1    # "lastCol":I
    .restart local v13    # "lastCol":I
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_3
    move-wide v10, v0

    .line 937
    invoke-virtual {v2}, Ljxl/CellView;->getSize()I

    move-result v0

    int-to-double v0, v0

    const-wide v22, 0x3fe2e147ae147ae1L    # 0.59

    mul-double v0, v0, v22

    mul-double/2addr v0, v10

    div-double v0, v0, v16

    add-double/2addr v8, v0

    .line 932
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move v1, v13

    goto :goto_2

    .line 941
    .end local v12    # "i":I
    .end local v13    # "lastCol":I
    .restart local v1    # "lastCol":I
    :cond_5
    add-double v0, v8, v14

    add-double v0, v0, v20

    .line 944
    .local v0, "widthInPoints":D
    return-wide v0
.end method

.method private initialize()V
    .locals 9

    .line 326
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget v1, p0, Ljxl/biff/drawing/Drawing;->drawingNumber:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingData;->getSpContainer(I)Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    .line 327
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 329
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 331
    .local v0, "children":[Ljxl/biff/drawing/EscherRecord;
    iget-object v3, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v3}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v3

    aget-object v1, v3, v1

    check-cast v1, Ljxl/biff/drawing/Sp;

    .line 332
    .local v1, "sp":Ljxl/biff/drawing/Sp;
    invoke-virtual {v1}, Ljxl/biff/drawing/Sp;->getShapeId()I

    move-result v3

    iput v3, p0, Ljxl/biff/drawing/Drawing;->shapeId:I

    .line 333
    iget-object v3, p0, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {v3}, Ljxl/biff/drawing/ObjRecord;->getObjectId()I

    move-result v3

    iput v3, p0, Ljxl/biff/drawing/Drawing;->objectId:I

    .line 334
    invoke-virtual {v1}, Ljxl/biff/drawing/Sp;->getShapeType()I

    move-result v3

    invoke-static {v3}, Ljxl/biff/drawing/ShapeType;->getType(I)Ljxl/biff/drawing/ShapeType;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    .line 336
    sget-object v4, Ljxl/biff/drawing/ShapeType;->UNKNOWN:Ljxl/biff/drawing/ShapeType;

    if-ne v3, v4, :cond_1

    .line 338
    sget-object v3, Ljxl/biff/drawing/Drawing;->logger:Ljxl/common/Logger;

    const-string v4, "Unknown shape type"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 341
    :cond_1
    iget-object v3, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v3}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v3

    aget-object v3, v3, v2

    check-cast v3, Ljxl/biff/drawing/Opt;

    .line 343
    .local v3, "opt":Ljxl/biff/drawing/Opt;
    const/16 v4, 0x104

    invoke-virtual {v3, v4}, Ljxl/biff/drawing/Opt;->getProperty(I)Ljxl/biff/drawing/Opt$Property;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 345
    invoke-virtual {v3, v4}, Ljxl/biff/drawing/Opt;->getProperty(I)Ljxl/biff/drawing/Opt$Property;

    move-result-object v4

    iget v4, v4, Ljxl/biff/drawing/Opt$Property;->value:I

    iput v4, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    .line 348
    :cond_2
    const/16 v4, 0x105

    invoke-virtual {v3, v4}, Ljxl/biff/drawing/Opt;->getProperty(I)Ljxl/biff/drawing/Opt$Property;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 350
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3, v4}, Ljxl/biff/drawing/Opt;->getProperty(I)Ljxl/biff/drawing/Opt$Property;

    move-result-object v4

    iget-object v4, v4, Ljxl/biff/drawing/Opt$Property;->stringValue:Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    goto :goto_1

    .line 354
    :cond_3
    iget-object v4, p0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    sget-object v5, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    if-ne v4, v5, :cond_4

    .line 356
    sget-object v4, Ljxl/biff/drawing/Drawing;->logger:Ljxl/common/Logger;

    const-string v5, "no filename property for drawing"

    invoke-virtual {v4, v5}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 357
    new-instance v4, Ljava/io/File;

    iget v5, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    .line 361
    :cond_4
    :goto_1
    const/4 v4, 0x0

    .line 362
    .local v4, "clientAnchor":Ljxl/biff/drawing/ClientAnchor;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, v0

    if-ge v5, v6, :cond_6

    if-nez v4, :cond_6

    .line 364
    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v6

    sget-object v7, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    if-ne v6, v7, :cond_5

    .line 366
    aget-object v6, v0, v5

    move-object v4, v6

    check-cast v4, Ljxl/biff/drawing/ClientAnchor;

    .line 362
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 370
    .end local v5    # "i":I
    :cond_6
    if-nez v4, :cond_7

    .line 372
    sget-object v5, Ljxl/biff/drawing/Drawing;->logger:Ljxl/common/Logger;

    const-string v6, "client anchor not found"

    invoke-virtual {v5, v6}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_3

    .line 376
    :cond_7
    invoke-virtual {v4}, Ljxl/biff/drawing/ClientAnchor;->getX1()D

    move-result-wide v5

    iput-wide v5, p0, Ljxl/biff/drawing/Drawing;->x:D

    .line 377
    invoke-virtual {v4}, Ljxl/biff/drawing/ClientAnchor;->getY1()D

    move-result-wide v5

    iput-wide v5, p0, Ljxl/biff/drawing/Drawing;->y:D

    .line 378
    invoke-virtual {v4}, Ljxl/biff/drawing/ClientAnchor;->getX2()D

    move-result-wide v5

    iget-wide v7, p0, Ljxl/biff/drawing/Drawing;->x:D

    sub-double/2addr v5, v7

    iput-wide v5, p0, Ljxl/biff/drawing/Drawing;->width:D

    .line 379
    invoke-virtual {v4}, Ljxl/biff/drawing/ClientAnchor;->getY2()D

    move-result-wide v5

    iget-wide v7, p0, Ljxl/biff/drawing/Drawing;->y:D

    sub-double/2addr v5, v7

    iput-wide v5, p0, Ljxl/biff/drawing/Drawing;->height:D

    .line 380
    invoke-virtual {v4}, Ljxl/biff/drawing/ClientAnchor;->getProperties()I

    move-result v5

    invoke-static {v5}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;->getImageAnchorProperties(I)Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    move-result-object v5

    iput-object v5, p0, Ljxl/biff/drawing/Drawing;->imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 384
    :goto_3
    iget v5, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    if-nez v5, :cond_8

    .line 386
    sget-object v5, Ljxl/biff/drawing/Drawing;->logger:Ljxl/common/Logger;

    const-string v6, "linked drawings are not supported"

    invoke-virtual {v5, v6}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 389
    :cond_8
    iput-boolean v2, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 390
    return-void
.end method


# virtual methods
.method public final getBlipId()I
    .locals 1

    .line 477
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 479
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 482
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    return v0
.end method

.method public getColumn()D
    .locals 2

    .line 833
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .locals 1

    .line 555
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .line 697
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 699
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 702
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing;->height:D

    return-wide v0
.end method

.method public getHeight(Ljxl/common/LengthUnit;)D
    .locals 4
    .param p1, "unit"    # Ljxl/common/LengthUnit;

    .line 1018
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->getHeightInPoints()D

    move-result-wide v0

    .line 1019
    .local v0, "heightInPoints":D
    sget-object v2, Ljxl/common/LengthUnit;->POINTS:Ljxl/common/LengthUnit;

    invoke-static {v2, p1}, Ljxl/common/LengthConverter;->getConversionFactor(Ljxl/common/LengthUnit;Ljxl/common/LengthUnit;)D

    move-result-wide v2

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public getHorizontalResolution(Ljxl/common/LengthUnit;)D
    .locals 5
    .param p1, "unit"    # Ljxl/common/LengthUnit;

    .line 1056
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->getPngReader()Ljxl/biff/drawing/PNGReader;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/PNGReader;->getHorizontalResolution()I

    move-result v0

    .line 1057
    .local v0, "res":I
    int-to-double v1, v0

    sget-object v3, Ljxl/common/LengthUnit;->METRES:Ljxl/common/LengthUnit;

    invoke-static {v3, p1}, Ljxl/common/LengthConverter;->getConversionFactor(Ljxl/common/LengthUnit;Ljxl/common/LengthUnit;)D

    move-result-wide v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method protected getImageAnchor()Ljxl/biff/drawing/Drawing$ImageAnchorProperties;
    .locals 1

    .line 1120
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 1122
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 1125
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    return-object v0
.end method

.method public getImageBytes()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 769
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 771
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    if-nez v0, :cond_3

    .line 773
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageData:[B

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 774
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageData:[B

    return-object v0

    .line 777
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 778
    .local v0, "data":[B
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 779
    .local v1, "fis":Ljava/io/FileInputStream;
    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 780
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 781
    return-object v0

    .line 766
    .end local v0    # "data":[B
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing;->getImageData()[B

    move-result-object v0

    return-object v0
.end method

.method public getImageData()[B
    .locals 2

    .line 747
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

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

    .line 749
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_2

    .line 751
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 754
    :cond_2
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget v1, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingGroup;->getImageData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getImageFile()Ljava/io/File;
    .locals 1

    .line 399
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    return-object v0
.end method

.method public getImageFilePath()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 414
    iget v0, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "__new__image__"

    :goto_0
    return-object v0

    .line 417
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 1044
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->getPngReader()Ljxl/biff/drawing/PNGReader;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/PNGReader;->getHeight()I

    move-result v0

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 1032
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->getPngReader()Ljxl/biff/drawing/PNGReader;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/PNGReader;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;
    .locals 1

    .line 492
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    return-object v0
.end method

.method public final getObjectId()I
    .locals 1

    .line 447
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 449
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 452
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Drawing;->objectId:I

    return v0
.end method

.method public getOrigin()Ljxl/biff/drawing/Origin;
    .locals 1

    .line 565
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    return-object v0
.end method

.method public getReferenceCount()I
    .locals 1

    .line 575
    iget v0, p0, Ljxl/biff/drawing/Drawing;->referenceCount:I

    return v0
.end method

.method public getRow()D
    .locals 2

    .line 843
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public getShapeId()I
    .locals 1

    .line 462
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 464
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 467
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Drawing;->shapeId:I

    return v0
.end method

.method public getSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 21

    .line 502
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v1, :cond_0

    .line 504
    invoke-direct/range {p0 .. p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 507
    :cond_0
    iget-object v1, v0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_1

    .line 509
    invoke-direct/range {p0 .. p0}, Ljxl/biff/drawing/Drawing;->getReadSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v1

    return-object v1

    .line 512
    :cond_1
    new-instance v1, Ljxl/biff/drawing/SpContainer;

    invoke-direct {v1}, Ljxl/biff/drawing/SpContainer;-><init>()V

    .line 513
    .local v1, "spContainer":Ljxl/biff/drawing/SpContainer;
    new-instance v2, Ljxl/biff/drawing/Sp;

    iget-object v3, v0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    iget v4, v0, Ljxl/biff/drawing/Drawing;->shapeId:I

    const/16 v5, 0xa00

    invoke-direct {v2, v3, v4, v5}, Ljxl/biff/drawing/Sp;-><init>(Ljxl/biff/drawing/ShapeType;II)V

    .line 514
    .local v2, "sp":Ljxl/biff/drawing/Sp;
    invoke-virtual {v1, v2}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 515
    new-instance v3, Ljxl/biff/drawing/Opt;

    invoke-direct {v3}, Ljxl/biff/drawing/Opt;-><init>()V

    .line 516
    .local v3, "opt":Ljxl/biff/drawing/Opt;
    const/16 v4, 0x104

    const/4 v5, 0x1

    iget v6, v0, Ljxl/biff/drawing/Drawing;->blipId:I

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v5, v10, v6}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 518
    iget-object v4, v0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    sget-object v5, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    if-ne v4, v5, :cond_3

    .line 520
    iget-object v4, v0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v4, ""

    :goto_0
    move-object v9, v4

    .line 521
    .local v9, "filePath":Ljava/lang/String;
    const/16 v5, 0x105

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v8, v4, 0x2

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Ljxl/biff/drawing/Opt;->addProperty(IZZILjava/lang/String;)V

    .line 522
    const/16 v4, 0x1bf

    const/high16 v5, 0x10000

    invoke-virtual {v3, v4, v10, v10, v5}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 523
    const/16 v4, 0x3bf

    const/high16 v5, 0x80000

    invoke-virtual {v3, v4, v10, v10, v5}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 524
    invoke-virtual {v1, v3}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 527
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljxl/biff/drawing/ClientAnchor;

    iget-wide v12, v0, Ljxl/biff/drawing/Drawing;->x:D

    iget-wide v14, v0, Ljxl/biff/drawing/Drawing;->y:D

    iget-wide v5, v0, Ljxl/biff/drawing/Drawing;->width:D

    add-double v16, v12, v5

    iget-wide v5, v0, Ljxl/biff/drawing/Drawing;->height:D

    add-double v18, v14, v5

    iget-object v5, v0, Ljxl/biff/drawing/Drawing;->imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    invoke-virtual {v5}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;->getValue()I

    move-result v20

    move-object v11, v4

    invoke-direct/range {v11 .. v20}, Ljxl/biff/drawing/ClientAnchor;-><init>(DDDDI)V

    .line 530
    .local v4, "clientAnchor":Ljxl/biff/drawing/ClientAnchor;
    invoke-virtual {v1, v4}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 531
    new-instance v5, Ljxl/biff/drawing/ClientData;

    invoke-direct {v5}, Ljxl/biff/drawing/ClientData;-><init>()V

    .line 532
    .local v5, "clientData":Ljxl/biff/drawing/ClientData;
    invoke-virtual {v1, v5}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 534
    return-object v1
.end method

.method public getType()Ljxl/biff/drawing/ShapeType;
    .locals 1

    .line 791
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    return-object v0
.end method

.method public getVerticalResolution(Ljxl/common/LengthUnit;)D
    .locals 5
    .param p1, "unit"    # Ljxl/common/LengthUnit;

    .line 1068
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->getPngReader()Ljxl/biff/drawing/PNGReader;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/PNGReader;->getVerticalResolution()I

    move-result v0

    .line 1069
    .local v0, "res":I
    int-to-double v1, v0

    sget-object v3, Ljxl/common/LengthUnit;->METRES:Ljxl/common/LengthUnit;

    invoke-static {v3, p1}, Ljxl/common/LengthConverter;->getConversionFactor(Ljxl/common/LengthUnit;Ljxl/common/LengthUnit;)D

    move-result-wide v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getWidth()D
    .locals 2

    .line 663
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 665
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 668
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing;->width:D

    return-wide v0
.end method

.method public getWidth(Ljxl/common/LengthUnit;)D
    .locals 4
    .param p1, "unit"    # Ljxl/common/LengthUnit;

    .line 1005
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->getWidthInPoints()D

    move-result-wide v0

    .line 1006
    .local v0, "widthInPoints":D
    sget-object v2, Ljxl/common/LengthUnit;->POINTS:Ljxl/common/LengthUnit;

    invoke-static {v2, p1}, Ljxl/common/LengthConverter;->getConversionFactor(Ljxl/common/LengthUnit;Ljxl/common/LengthUnit;)D

    move-result-wide v2

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public getX()D
    .locals 2

    .line 595
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 599
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 628
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 630
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 633
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing;->y:D

    return-wide v0
.end method

.method public isFirst()Z
    .locals 1

    .line 855
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/MsoDrawingRecord;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isFormObject()Z
    .locals 1

    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public removeRow(I)V
    .locals 4
    .param p1, "r"    # I

    .line 877
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing;->y:D

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 879
    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Ljxl/biff/drawing/Drawing;->setY(D)V

    .line 881
    :cond_0
    return-void
.end method

.method public setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V
    .locals 0
    .param p1, "dg"    # Ljxl/biff/drawing/DrawingGroup;

    .line 545
    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 546
    return-void
.end method

.method public setHeight(D)V
    .locals 2
    .param p1, "h"    # D

    .line 712
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 714
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 716
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 718
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 721
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing;->height:D

    .line 722
    return-void
.end method

.method protected setImageAnchor(Ljxl/biff/drawing/Drawing$ImageAnchorProperties;)V
    .locals 2
    .param p1, "iap"    # Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 1107
    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 1109
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    .line 1111
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 1113
    :cond_0
    return-void
.end method

.method public final setObjectId(III)V
    .locals 2
    .param p1, "objid"    # I
    .param p2, "bip"    # I
    .param p3, "sid"    # I

    .line 430
    iput p1, p0, Ljxl/biff/drawing/Drawing;->objectId:I

    .line 431
    iput p2, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    .line 432
    iput p3, p0, Ljxl/biff/drawing/Drawing;->shapeId:I

    .line 434
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    .line 436
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 438
    :cond_0
    return-void
.end method

.method public setReferenceCount(I)V
    .locals 0
    .param p1, "r"    # I

    .line 585
    iput p1, p0, Ljxl/biff/drawing/Drawing;->referenceCount:I

    .line 586
    return-void
.end method

.method public setWidth(D)V
    .locals 2
    .param p1, "w"    # D

    .line 678
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 680
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 682
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 684
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 687
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing;->width:D

    .line 688
    return-void
.end method

.method public setX(D)V
    .locals 2
    .param p1, "x"    # D

    .line 609
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 611
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 613
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 615
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 618
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing;->x:D

    .line 619
    return-void
.end method

.method public setY(D)V
    .locals 2
    .param p1, "y"    # D

    .line 643
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 645
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 647
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 649
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 652
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing;->y:D

    .line 653
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

    .line 802
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    .line 804
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 805
    return-void

    .line 809
    :cond_0
    new-instance v0, Ljxl/biff/drawing/ObjRecord;

    iget v1, p0, Ljxl/biff/drawing/Drawing;->objectId:I

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord;-><init>(ILjxl/biff/drawing/ObjRecord$ObjType;)V

    .line 811
    .local v0, "objrec":Ljxl/biff/drawing/ObjRecord;
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 812
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

    .line 824
    return-void
.end method

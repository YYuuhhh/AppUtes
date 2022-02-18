.class public Ljxl/biff/drawing/Chart;
.super Ljava/lang/Object;
.source "Chart.java"

# interfaces
.implements Ljxl/biff/ByteData;
.implements Ljxl/biff/drawing/EscherStream;


# static fields
.field private static final logger:Ljxl/common/Logger;


# instance fields
.field private data:[B

.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawingNumber:I

.field private endpos:I

.field private file:Ljxl/read/biff/File;

.field private initialized:Z

.field private msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

.field private objRecord:Ljxl/biff/drawing/ObjRecord;

.field private startpos:I

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Ljxl/biff/drawing/Chart;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Chart;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;IILjxl/read/biff/File;Ljxl/WorkbookSettings;)V
    .locals 2
    .param p1, "mso"    # Ljxl/biff/drawing/MsoDrawingRecord;
    .param p2, "obj"    # Ljxl/biff/drawing/ObjRecord;
    .param p3, "dd"    # Ljxl/biff/drawing/DrawingData;
    .param p4, "sp"    # I
    .param p5, "ep"    # I
    .param p6, "f"    # Ljxl/read/biff/File;
    .param p7, "ws"    # Ljxl/WorkbookSettings;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Ljxl/biff/drawing/Chart;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 110
    iput-object p2, p0, Ljxl/biff/drawing/Chart;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 111
    iput p4, p0, Ljxl/biff/drawing/Chart;->startpos:I

    .line 112
    iput p5, p0, Ljxl/biff/drawing/Chart;->endpos:I

    .line 113
    iput-object p6, p0, Ljxl/biff/drawing/Chart;->file:Ljxl/read/biff/File;

    .line 114
    iput-object p7, p0, Ljxl/biff/drawing/Chart;->workbookSettings:Ljxl/WorkbookSettings;

    .line 119
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 121
    iput-object p3, p0, Ljxl/biff/drawing/Chart;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 122
    invoke-virtual {p1}, Ljxl/biff/drawing/MsoDrawingRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 123
    iget-object v1, p0, Ljxl/biff/drawing/Chart;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {v1}, Ljxl/biff/drawing/DrawingData;->getNumDrawings()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Ljxl/biff/drawing/Chart;->drawingNumber:I

    .line 126
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljxl/biff/drawing/Chart;->initialized:Z

    .line 131
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 133
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 165
    iget-object v0, p0, Ljxl/biff/drawing/Chart;->file:Ljxl/read/biff/File;

    iget v1, p0, Ljxl/biff/drawing/Chart;->startpos:I

    iget v2, p0, Ljxl/biff/drawing/Chart;->endpos:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Ljxl/read/biff/File;->read(II)[B

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/Chart;->data:[B

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxl/biff/drawing/Chart;->initialized:Z

    .line 167
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 142
    iget-boolean v0, p0, Ljxl/biff/drawing/Chart;->initialized:Z

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0}, Ljxl/biff/drawing/Chart;->initialize()V

    .line 147
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Chart;->data:[B

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 157
    iget-object v0, p0, Ljxl/biff/drawing/Chart;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/MsoDrawingRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;
    .locals 1

    .line 253
    iget-object v0, p0, Ljxl/biff/drawing/Chart;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    return-object v0
.end method

.method getObjRecord()Ljxl/biff/drawing/ObjRecord;
    .locals 1

    .line 263
    iget-object v0, p0, Ljxl/biff/drawing/Chart;->objRecord:Ljxl/biff/drawing/ObjRecord;

    return-object v0
.end method

.method getSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 2

    .line 241
    iget-object v0, p0, Ljxl/biff/drawing/Chart;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget v1, p0, Ljxl/biff/drawing/Chart;->drawingNumber:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingData;->getSpContainer(I)Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    .line 243
    .local v0, "spContainer":Ljxl/biff/drawing/EscherContainer;
    return-object v0
.end method

.method public rationalize(Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;)V
    .locals 11
    .param p1, "xfMapping"    # Ljxl/biff/IndexMapping;
    .param p2, "fontMapping"    # Ljxl/biff/IndexMapping;
    .param p3, "formatMapping"    # Ljxl/biff/IndexMapping;

    .line 179
    iget-boolean v0, p0, Ljxl/biff/drawing/Chart;->initialized:Z

    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0}, Ljxl/biff/drawing/Chart;->initialize()V

    .line 187
    :cond_0
    const/4 v0, 0x0

    .line 188
    .local v0, "pos":I
    const/4 v1, 0x0

    .line 189
    .local v1, "code":I
    const/4 v2, 0x0

    .line 190
    .local v2, "length":I
    const/4 v3, 0x0

    .line 191
    .local v3, "type":Ljxl/biff/Type;
    :goto_0
    iget-object v4, p0, Ljxl/biff/drawing/Chart;->data:[B

    array-length v5, v4

    if-ge v0, v5, :cond_5

    .line 193
    aget-byte v5, v4, v0

    add-int/lit8 v6, v0, 0x1

    aget-byte v4, v4, v6

    invoke-static {v5, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    .line 194
    iget-object v4, p0, Ljxl/biff/drawing/Chart;->data:[B

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, v4, v5

    add-int/lit8 v6, v0, 0x3

    aget-byte v4, v4, v6

    invoke-static {v5, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 196
    invoke-static {v1}, Ljxl/biff/Type;->getType(I)Ljxl/biff/Type;

    move-result-object v3

    .line 198
    sget-object v4, Ljxl/biff/Type;->FONTX:Ljxl/biff/Type;

    if-ne v3, v4, :cond_1

    .line 200
    iget-object v4, p0, Ljxl/biff/drawing/Chart;->data:[B

    add-int/lit8 v5, v0, 0x4

    aget-byte v5, v4, v5

    add-int/lit8 v6, v0, 0x5

    aget-byte v4, v4, v6

    invoke-static {v5, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    .line 201
    .local v4, "fontind":I
    invoke-virtual {p2, v4}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v5

    iget-object v6, p0, Ljxl/biff/drawing/Chart;->data:[B

    add-int/lit8 v7, v0, 0x4

    invoke-static {v5, v6, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 203
    .end local v4    # "fontind":I
    goto :goto_2

    .line 204
    :cond_1
    sget-object v4, Ljxl/biff/Type;->FBI:Ljxl/biff/Type;

    if-ne v3, v4, :cond_2

    .line 206
    iget-object v4, p0, Ljxl/biff/drawing/Chart;->data:[B

    add-int/lit8 v5, v0, 0xc

    aget-byte v5, v4, v5

    add-int/lit8 v6, v0, 0xd

    aget-byte v4, v4, v6

    invoke-static {v5, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    .line 207
    .restart local v4    # "fontind":I
    invoke-virtual {p2, v4}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v5

    iget-object v6, p0, Ljxl/biff/drawing/Chart;->data:[B

    add-int/lit8 v7, v0, 0xc

    invoke-static {v5, v6, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 209
    .end local v4    # "fontind":I
    goto :goto_2

    .line 210
    :cond_2
    sget-object v4, Ljxl/biff/Type;->IFMT:Ljxl/biff/Type;

    if-ne v3, v4, :cond_3

    .line 212
    iget-object v4, p0, Ljxl/biff/drawing/Chart;->data:[B

    add-int/lit8 v5, v0, 0x4

    aget-byte v5, v4, v5

    add-int/lit8 v6, v0, 0x5

    aget-byte v4, v4, v6

    invoke-static {v5, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    .line 213
    .local v4, "formind":I
    invoke-virtual {p3, v4}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v5

    iget-object v6, p0, Ljxl/biff/drawing/Chart;->data:[B

    add-int/lit8 v7, v0, 0x4

    invoke-static {v5, v6, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 215
    .end local v4    # "formind":I
    goto :goto_2

    .line 216
    :cond_3
    sget-object v4, Ljxl/biff/Type;->ALRUNS:Ljxl/biff/Type;

    if-ne v3, v4, :cond_4

    .line 218
    iget-object v4, p0, Ljxl/biff/drawing/Chart;->data:[B

    add-int/lit8 v5, v0, 0x4

    aget-byte v5, v4, v5

    add-int/lit8 v6, v0, 0x5

    aget-byte v4, v4, v6

    invoke-static {v5, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    .line 219
    .local v4, "numRuns":I
    add-int/lit8 v5, v0, 0x6

    .line 220
    .local v5, "fontPos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_4

    .line 222
    iget-object v7, p0, Ljxl/biff/drawing/Chart;->data:[B

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, v7, v8

    add-int/lit8 v9, v5, 0x3

    aget-byte v7, v7, v9

    invoke-static {v8, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v7

    .line 224
    .local v7, "fontind":I
    invoke-virtual {p2, v7}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v8

    iget-object v9, p0, Ljxl/biff/drawing/Chart;->data:[B

    add-int/lit8 v10, v5, 0x2

    invoke-static {v8, v9, v10}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 226
    nop

    .end local v7    # "fontind":I
    add-int/lit8 v5, v5, 0x4

    .line 220
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 230
    .end local v4    # "numRuns":I
    .end local v5    # "fontPos":I
    .end local v6    # "i":I
    :cond_4
    :goto_2
    add-int/lit8 v4, v2, 0x4

    add-int/2addr v0, v4

    goto/16 :goto_0

    .line 232
    :cond_5
    return-void
.end method

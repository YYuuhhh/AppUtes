.class Ljxl/biff/drawing/Dg;
.super Ljxl/biff/drawing/EscherAtom;
.source "Dg.java"


# instance fields
.field private data:[B

.field private drawingId:I

.field private seed:I

.field private shapeCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "numDrawings"    # I

    .line 71
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->DG:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Ljxl/biff/drawing/Dg;->drawingId:I

    .line 73
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Ljxl/biff/drawing/Dg;->shapeCount:I

    .line 74
    add-int/lit16 v1, v1, 0x400

    add-int/2addr v1, v0

    iput v1, p0, Ljxl/biff/drawing/Dg;->seed:I

    .line 75
    invoke-virtual {p0, v0}, Ljxl/biff/drawing/Dg;->setInstance(I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 5
    .param p1, "erd"    # Ljxl/biff/drawing/EscherRecordData;

    .line 56
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 57
    invoke-virtual {p0}, Ljxl/biff/drawing/Dg;->getInstance()I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/Dg;->drawingId:I

    .line 59
    invoke-virtual {p0}, Ljxl/biff/drawing/Dg;->getBytes()[B

    move-result-object v0

    .line 60
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

    iput v1, p0, Ljxl/biff/drawing/Dg;->shapeCount:I

    .line 61
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

    iput v1, p0, Ljxl/biff/drawing/Dg;->seed:I

    .line 62
    return-void
.end method


# virtual methods
.method getData()[B
    .locals 3

    .line 105
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/biff/drawing/Dg;->data:[B

    .line 106
    iget v1, p0, Ljxl/biff/drawing/Dg;->shapeCount:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 107
    iget v0, p0, Ljxl/biff/drawing/Dg;->seed:I

    iget-object v1, p0, Ljxl/biff/drawing/Dg;->data:[B

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 109
    iget-object v0, p0, Ljxl/biff/drawing/Dg;->data:[B

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/Dg;->setHeaderData([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getDrawingId()I
    .locals 1

    .line 85
    iget v0, p0, Ljxl/biff/drawing/Dg;->drawingId:I

    return v0
.end method

.method getShapeCount()I
    .locals 1

    .line 95
    iget v0, p0, Ljxl/biff/drawing/Dg;->shapeCount:I

    return v0
.end method

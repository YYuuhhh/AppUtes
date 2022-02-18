.class Ljxl/biff/drawing/Sp;
.super Ljxl/biff/drawing/EscherAtom;
.source "Sp.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private data:[B

.field private persistenceFlags:I

.field private shapeId:I

.field private shapeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Ljxl/biff/drawing/Sp;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Sp;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 5
    .param p1, "erd"    # Ljxl/biff/drawing/EscherRecordData;

    .line 63
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 64
    invoke-virtual {p0}, Ljxl/biff/drawing/Sp;->getInstance()I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/Sp;->shapeType:I

    .line 65
    invoke-virtual {p0}, Ljxl/biff/drawing/Sp;->getBytes()[B

    move-result-object v0

    .line 66
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

    iput v1, p0, Ljxl/biff/drawing/Sp;->shapeId:I

    .line 67
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

    iput v1, p0, Ljxl/biff/drawing/Sp;->persistenceFlags:I

    .line 69
    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/ShapeType;II)V
    .locals 1
    .param p1, "st"    # Ljxl/biff/drawing/ShapeType;
    .param p2, "sid"    # I
    .param p3, "p"    # I

    .line 80
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->SP:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    .line 81
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/Sp;->setVersion(I)V

    .line 82
    invoke-virtual {p1}, Ljxl/biff/drawing/ShapeType;->getValue()I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/Sp;->shapeType:I

    .line 83
    iput p2, p0, Ljxl/biff/drawing/Sp;->shapeId:I

    .line 84
    iput p3, p0, Ljxl/biff/drawing/Sp;->persistenceFlags:I

    .line 85
    invoke-virtual {p0, v0}, Ljxl/biff/drawing/Sp;->setInstance(I)V

    .line 86
    return-void
.end method


# virtual methods
.method getData()[B
    .locals 3

    .line 115
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/biff/drawing/Sp;->data:[B

    .line 116
    iget v1, p0, Ljxl/biff/drawing/Sp;->shapeId:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 117
    iget v0, p0, Ljxl/biff/drawing/Sp;->persistenceFlags:I

    iget-object v1, p0, Ljxl/biff/drawing/Sp;->data:[B

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 118
    iget-object v0, p0, Ljxl/biff/drawing/Sp;->data:[B

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/Sp;->setHeaderData([B)[B

    move-result-object v0

    return-object v0
.end method

.method getShapeId()I
    .locals 1

    .line 95
    iget v0, p0, Ljxl/biff/drawing/Sp;->shapeId:I

    return v0
.end method

.method getShapeType()I
    .locals 1

    .line 105
    iget v0, p0, Ljxl/biff/drawing/Sp;->shapeType:I

    return v0
.end method

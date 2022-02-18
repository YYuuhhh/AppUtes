.class Ljxl/biff/drawing/ClientAnchor;
.super Ljxl/biff/drawing/EscherAtom;
.source "ClientAnchor.java"


# static fields
.field private static final logger:Ljxl/common/Logger;


# instance fields
.field private data:[B

.field private properties:I

.field private x1:D

.field private x2:D

.field private y1:D

.field private y2:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Ljxl/biff/drawing/ClientAnchor;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/ClientAnchor;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(DDDDI)V
    .locals 1
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "x2"    # D
    .param p7, "y2"    # D
    .param p9, "props"    # I

    .line 115
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    .line 116
    iput-wide p1, p0, Ljxl/biff/drawing/ClientAnchor;->x1:D

    .line 117
    iput-wide p3, p0, Ljxl/biff/drawing/ClientAnchor;->y1:D

    .line 118
    iput-wide p5, p0, Ljxl/biff/drawing/ClientAnchor;->x2:D

    .line 119
    iput-wide p7, p0, Ljxl/biff/drawing/ClientAnchor;->y2:D

    .line 120
    iput p9, p0, Ljxl/biff/drawing/ClientAnchor;->properties:I

    .line 121
    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 16
    .param p1, "erd"    # Ljxl/biff/drawing/EscherRecordData;

    .line 73
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 74
    invoke-virtual/range {p0 .. p0}, Ljxl/biff/drawing/ClientAnchor;->getBytes()[B

    move-result-object v1

    .line 77
    .local v1, "bytes":[B
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, v0, Ljxl/biff/drawing/ClientAnchor;->properties:I

    .line 80
    const/4 v2, 0x2

    aget-byte v2, v1, v2

    const/4 v3, 0x3

    aget-byte v3, v1, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    .line 81
    .local v2, "x1Cell":I
    const/4 v3, 0x4

    aget-byte v3, v1, v3

    const/4 v4, 0x5

    aget-byte v4, v1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    .line 83
    .local v3, "x1Fraction":I
    int-to-double v4, v2

    int-to-double v6, v3

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v0, Ljxl/biff/drawing/ClientAnchor;->x1:D

    .line 86
    const/4 v4, 0x6

    aget-byte v4, v1, v4

    const/4 v5, 0x7

    aget-byte v5, v1, v5

    invoke-static {v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    .line 87
    .local v4, "y1Cell":I
    const/16 v5, 0x8

    aget-byte v5, v1, v5

    const/16 v6, 0x9

    aget-byte v6, v1, v6

    invoke-static {v5, v6}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    .line 89
    .local v5, "y1Fraction":I
    int-to-double v6, v4

    int-to-double v10, v5

    const-wide/high16 v12, 0x4070000000000000L    # 256.0

    div-double/2addr v10, v12

    add-double/2addr v6, v10

    iput-wide v6, v0, Ljxl/biff/drawing/ClientAnchor;->y1:D

    .line 92
    const/16 v6, 0xa

    aget-byte v6, v1, v6

    const/16 v7, 0xb

    aget-byte v7, v1, v7

    invoke-static {v6, v7}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    .line 93
    .local v6, "x2Cell":I
    const/16 v7, 0xc

    aget-byte v7, v1, v7

    const/16 v10, 0xd

    aget-byte v10, v1, v10

    invoke-static {v7, v10}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v7

    .line 95
    .local v7, "x2Fraction":I
    int-to-double v10, v6

    int-to-double v14, v7

    div-double/2addr v14, v8

    add-double/2addr v10, v14

    iput-wide v10, v0, Ljxl/biff/drawing/ClientAnchor;->x2:D

    .line 98
    const/16 v8, 0xe

    aget-byte v8, v1, v8

    const/16 v9, 0xf

    aget-byte v9, v1, v9

    invoke-static {v8, v9}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v8

    .line 99
    .local v8, "y2Cell":I
    const/16 v9, 0x10

    aget-byte v9, v1, v9

    const/16 v10, 0x11

    aget-byte v10, v1, v10

    invoke-static {v9, v10}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v9

    .line 101
    .local v9, "y2Fraction":I
    int-to-double v10, v8

    int-to-double v14, v9

    div-double/2addr v14, v12

    add-double/2addr v10, v14

    iput-wide v10, v0, Ljxl/biff/drawing/ClientAnchor;->y2:D

    .line 102
    return-void
.end method


# virtual methods
.method getData()[B
    .locals 10

    .line 130
    const/16 v0, 0x12

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    .line 131
    iget v1, p0, Ljxl/biff/drawing/ClientAnchor;->properties:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 134
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->x1:D

    double-to-int v0, v0

    iget-object v1, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 137
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->x1:D

    double-to-int v2, v0

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 138
    .local v0, "x1fraction":I
    iget-object v1, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/4 v4, 0x4

    invoke-static {v0, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 141
    iget-wide v4, p0, Ljxl/biff/drawing/ClientAnchor;->y1:D

    double-to-int v1, v4

    iget-object v4, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/4 v5, 0x6

    invoke-static {v1, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 144
    iget-wide v4, p0, Ljxl/biff/drawing/ClientAnchor;->y1:D

    double-to-int v1, v4

    int-to-double v6, v1

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 145
    .local v1, "y1fraction":I
    iget-object v4, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/16 v5, 0x8

    invoke-static {v1, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 148
    iget-wide v4, p0, Ljxl/biff/drawing/ClientAnchor;->x2:D

    double-to-int v4, v4

    iget-object v5, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/16 v8, 0xa

    invoke-static {v4, v5, v8}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 151
    iget-wide v4, p0, Ljxl/biff/drawing/ClientAnchor;->x2:D

    double-to-int v8, v4

    int-to-double v8, v8

    sub-double/2addr v4, v8

    mul-double/2addr v4, v2

    double-to-int v2, v4

    .line 152
    .local v2, "x2fraction":I
    iget-object v3, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 155
    iget-wide v3, p0, Ljxl/biff/drawing/ClientAnchor;->y2:D

    double-to-int v3, v3

    iget-object v4, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/16 v5, 0xe

    invoke-static {v3, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 158
    iget-wide v3, p0, Ljxl/biff/drawing/ClientAnchor;->y2:D

    double-to-int v5, v3

    int-to-double v8, v5

    sub-double/2addr v3, v8

    mul-double/2addr v3, v6

    double-to-int v3, v3

    .line 159
    .local v3, "y2fraction":I
    iget-object v4, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/16 v5, 0x10

    invoke-static {v3, v4, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 161
    iget-object v4, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    invoke-virtual {p0, v4}, Ljxl/biff/drawing/ClientAnchor;->setHeaderData([B)[B

    move-result-object v4

    return-object v4
.end method

.method getProperties()I
    .locals 1

    .line 209
    iget v0, p0, Ljxl/biff/drawing/ClientAnchor;->properties:I

    return v0
.end method

.method getX1()D
    .locals 2

    .line 171
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->x1:D

    return-wide v0
.end method

.method getX2()D
    .locals 2

    .line 191
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->x2:D

    return-wide v0
.end method

.method getY1()D
    .locals 2

    .line 181
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->y1:D

    return-wide v0
.end method

.method getY2()D
    .locals 2

    .line 201
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->y2:D

    return-wide v0
.end method

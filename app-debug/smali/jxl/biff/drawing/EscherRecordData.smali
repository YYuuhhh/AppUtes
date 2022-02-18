.class final Ljxl/biff/drawing/EscherRecordData;
.super Ljava/lang/Object;
.source "EscherRecordData.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private container:Z

.field private escherStream:Ljxl/biff/drawing/EscherStream;

.field private instance:I

.field private length:I

.field private pos:I

.field private recordId:I

.field private streamLength:I

.field private type:Ljxl/biff/drawing/EscherRecordType;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Ljxl/biff/drawing/EscherRecordData;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/EscherRecordData;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordType;)V
    .locals 1
    .param p1, "t"    # Ljxl/biff/drawing/EscherRecordType;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Ljxl/biff/drawing/EscherRecordData;->type:Ljxl/biff/drawing/EscherRecordType;

    .line 132
    invoke-virtual {p1}, Ljxl/biff/drawing/EscherRecordType;->getValue()I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/EscherRecordData;->recordId:I

    .line 133
    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherStream;I)V
    .locals 7
    .param p1, "dg"    # Ljxl/biff/drawing/EscherStream;
    .param p2, "p"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Ljxl/biff/drawing/EscherRecordData;->escherStream:Ljxl/biff/drawing/EscherStream;

    .line 93
    iput p2, p0, Ljxl/biff/drawing/EscherRecordData;->pos:I

    .line 94
    invoke-interface {p1}, Ljxl/biff/drawing/EscherStream;->getData()[B

    move-result-object v0

    .line 96
    .local v0, "data":[B
    array-length v1, v0

    iput v1, p0, Ljxl/biff/drawing/EscherRecordData;->streamLength:I

    .line 99
    iget v1, p0, Ljxl/biff/drawing/EscherRecordData;->pos:I

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    aget-byte v1, v0, v1

    invoke-static {v2, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    .line 102
    .local v1, "value":I
    const v2, 0xfff0

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljxl/biff/drawing/EscherRecordData;->instance:I

    .line 105
    and-int/lit8 v2, v1, 0xf

    iput v2, p0, Ljxl/biff/drawing/EscherRecordData;->version:I

    .line 108
    iget v2, p0, Ljxl/biff/drawing/EscherRecordData;->pos:I

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v0, v4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, v0, v2

    invoke-static {v4, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/biff/drawing/EscherRecordData;->recordId:I

    .line 111
    iget v2, p0, Ljxl/biff/drawing/EscherRecordData;->pos:I

    add-int/lit8 v4, v2, 0x4

    aget-byte v4, v0, v4

    add-int/lit8 v5, v2, 0x5

    aget-byte v5, v0, v5

    add-int/lit8 v6, v2, 0x6

    aget-byte v6, v0, v6

    add-int/lit8 v2, v2, 0x7

    aget-byte v2, v0, v2

    invoke-static {v4, v5, v6, v2}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v2

    iput v2, p0, Ljxl/biff/drawing/EscherRecordData;->length:I

    .line 114
    iget v2, p0, Ljxl/biff/drawing/EscherRecordData;->version:I

    const/16 v4, 0xf

    if-ne v2, v4, :cond_0

    .line 116
    iput-boolean v3, p0, Ljxl/biff/drawing/EscherRecordData;->container:Z

    goto :goto_0

    .line 120
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljxl/biff/drawing/EscherRecordData;->container:Z

    .line 122
    :goto_0
    return-void
.end method


# virtual methods
.method getBytes()[B
    .locals 5

    .line 299
    iget v0, p0, Ljxl/biff/drawing/EscherRecordData;->length:I

    new-array v0, v0, [B

    .line 300
    .local v0, "d":[B
    iget-object v1, p0, Ljxl/biff/drawing/EscherRecordData;->escherStream:Ljxl/biff/drawing/EscherStream;

    invoke-interface {v1}, Ljxl/biff/drawing/EscherStream;->getData()[B

    move-result-object v1

    iget v2, p0, Ljxl/biff/drawing/EscherRecordData;->pos:I

    add-int/lit8 v2, v2, 0x8

    iget v3, p0, Ljxl/biff/drawing/EscherRecordData;->length:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    return-object v0
.end method

.method getDrawingGroup()Ljxl/biff/drawing/EscherStream;
    .locals 1

    .line 172
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecordData;->escherStream:Ljxl/biff/drawing/EscherStream;

    return-object v0
.end method

.method getEscherStream()Ljxl/biff/drawing/EscherStream;
    .locals 1

    .line 289
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecordData;->escherStream:Ljxl/biff/drawing/EscherStream;

    return-object v0
.end method

.method getInstance()I
    .locals 1

    .line 207
    iget v0, p0, Ljxl/biff/drawing/EscherRecordData;->instance:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 152
    iget v0, p0, Ljxl/biff/drawing/EscherRecordData;->length:I

    return v0
.end method

.method getPos()I
    .locals 1

    .line 182
    iget v0, p0, Ljxl/biff/drawing/EscherRecordData;->pos:I

    return v0
.end method

.method public getRecordId()I
    .locals 1

    .line 162
    iget v0, p0, Ljxl/biff/drawing/EscherRecordData;->recordId:I

    return v0
.end method

.method getStreamLength()I
    .locals 1

    .line 311
    iget v0, p0, Ljxl/biff/drawing/EscherRecordData;->streamLength:I

    return v0
.end method

.method getType()Ljxl/biff/drawing/EscherRecordType;
    .locals 1

    .line 192
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecordData;->type:Ljxl/biff/drawing/EscherRecordType;

    if-nez v0, :cond_0

    .line 194
    iget v0, p0, Ljxl/biff/drawing/EscherRecordData;->recordId:I

    invoke-static {v0}, Ljxl/biff/drawing/EscherRecordType;->getType(I)Ljxl/biff/drawing/EscherRecordType;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/EscherRecordData;->type:Ljxl/biff/drawing/EscherRecordType;

    .line 197
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecordData;->type:Ljxl/biff/drawing/EscherRecordType;

    return-object v0
.end method

.method public isContainer()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Ljxl/biff/drawing/EscherRecordData;->container:Z

    return v0
.end method

.method setContainer(Z)V
    .locals 0
    .param p1, "c"    # Z

    .line 218
    iput-boolean p1, p0, Ljxl/biff/drawing/EscherRecordData;->container:Z

    .line 219
    return-void
.end method

.method setHeaderData([B)[B
    .locals 5
    .param p1, "d"    # [B

    .line 260
    array-length v0, p1

    const/16 v1, 0x8

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 261
    .local v0, "data":[B
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget-boolean v1, p0, Ljxl/biff/drawing/EscherRecordData;->container:Z

    if-eqz v1, :cond_0

    .line 265
    const/16 v1, 0xf

    iput v1, p0, Ljxl/biff/drawing/EscherRecordData;->version:I

    .line 269
    :cond_0
    iget v1, p0, Ljxl/biff/drawing/EscherRecordData;->instance:I

    const/4 v2, 0x4

    shl-int/2addr v1, v2

    .line 270
    .local v1, "value":I
    iget v4, p0, Ljxl/biff/drawing/EscherRecordData;->version:I

    or-int/2addr v1, v4

    .line 271
    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 274
    iget v3, p0, Ljxl/biff/drawing/EscherRecordData;->recordId:I

    const/4 v4, 0x2

    invoke-static {v3, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 277
    array-length v3, p1

    invoke-static {v3, v0, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 279
    return-object v0
.end method

.method setInstance(I)V
    .locals 0
    .param p1, "inst"    # I

    .line 228
    iput p1, p0, Ljxl/biff/drawing/EscherRecordData;->instance:I

    .line 229
    return-void
.end method

.method setLength(I)V
    .locals 0
    .param p1, "l"    # I

    .line 238
    iput p1, p0, Ljxl/biff/drawing/EscherRecordData;->length:I

    .line 239
    return-void
.end method

.method setVersion(I)V
    .locals 0
    .param p1, "v"    # I

    .line 248
    iput p1, p0, Ljxl/biff/drawing/EscherRecordData;->version:I

    .line 249
    return-void
.end method

.class Ljxl/biff/drawing/ChunkType;
.super Ljava/lang/Object;
.source "ChunkType.java"


# static fields
.field public static IEND:Ljxl/biff/drawing/ChunkType;

.field public static IHDR:Ljxl/biff/drawing/ChunkType;

.field public static PHYS:Ljxl/biff/drawing/ChunkType;

.field public static UNKNOWN:Ljxl/biff/drawing/ChunkType;

.field private static chunkTypes:[Ljxl/biff/drawing/ChunkType;


# instance fields
.field private id:[B

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/drawing/ChunkType;

    sput-object v0, Ljxl/biff/drawing/ChunkType;->chunkTypes:[Ljxl/biff/drawing/ChunkType;

    .line 70
    new-instance v0, Ljxl/biff/drawing/ChunkType;

    const/16 v2, 0x49

    const/16 v3, 0x48

    const/16 v4, 0x44

    const/16 v5, 0x52

    const-string v6, "IHDR"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/biff/drawing/ChunkType;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ChunkType;->IHDR:Ljxl/biff/drawing/ChunkType;

    .line 71
    new-instance v0, Ljxl/biff/drawing/ChunkType;

    const/16 v8, 0x49

    const/16 v9, 0x45

    const/16 v10, 0x4e

    const/16 v11, 0x44

    const-string v12, "IEND"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/biff/drawing/ChunkType;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ChunkType;->IEND:Ljxl/biff/drawing/ChunkType;

    .line 72
    new-instance v0, Ljxl/biff/drawing/ChunkType;

    const/16 v2, 0x70

    const/16 v4, 0x59

    const/16 v5, 0x73

    const-string v6, "pHYs"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/biff/drawing/ChunkType;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ChunkType;->PHYS:Ljxl/biff/drawing/ChunkType;

    .line 73
    new-instance v0, Ljxl/biff/drawing/ChunkType;

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    const-string v12, "UNKNOWN"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/biff/drawing/ChunkType;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ChunkType;->UNKNOWN:Ljxl/biff/drawing/ChunkType;

    return-void
.end method

.method private constructor <init>(IIIILjava/lang/String;)V
    .locals 5
    .param p1, "d1"    # I
    .param p2, "d2"    # I
    .param p3, "d3"    # I
    .param p4, "d4"    # I
    .param p5, "n"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p2

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    int-to-byte v1, p3

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    int-to-byte v1, p4

    const/4 v4, 0x3

    aput-byte v1, v0, v4

    iput-object v0, p0, Ljxl/biff/drawing/ChunkType;->id:[B

    .line 37
    iput-object p5, p0, Ljxl/biff/drawing/ChunkType;->name:Ljava/lang/String;

    .line 39
    sget-object v0, Ljxl/biff/drawing/ChunkType;->chunkTypes:[Ljxl/biff/drawing/ChunkType;

    array-length v1, v0

    add-int/2addr v1, v3

    new-array v1, v1, [Ljxl/biff/drawing/ChunkType;

    .line 40
    .local v1, "ct":[Ljxl/biff/drawing/ChunkType;
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    sget-object v0, Ljxl/biff/drawing/ChunkType;->chunkTypes:[Ljxl/biff/drawing/ChunkType;

    array-length v0, v0

    aput-object p0, v1, v0

    .line 42
    sput-object v1, Ljxl/biff/drawing/ChunkType;->chunkTypes:[Ljxl/biff/drawing/ChunkType;

    .line 43
    return-void
.end method

.method public static getChunkType(BBBB)Ljxl/biff/drawing/ChunkType;
    .locals 6
    .param p0, "d1"    # B
    .param p1, "d2"    # B
    .param p2, "d3"    # B
    .param p3, "d4"    # B

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 v1, 0x2

    aput-byte p2, v0, v1

    const/4 v1, 0x3

    aput-byte p3, v0, v1

    .line 54
    .local v0, "cmp":[B
    const/4 v1, 0x0

    .line 55
    .local v1, "found":Z
    sget-object v2, Ljxl/biff/drawing/ChunkType;->UNKNOWN:Ljxl/biff/drawing/ChunkType;

    .line 57
    .local v2, "chunk":Ljxl/biff/drawing/ChunkType;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Ljxl/biff/drawing/ChunkType;->chunkTypes:[Ljxl/biff/drawing/ChunkType;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    if-nez v1, :cond_1

    .line 59
    aget-object v4, v4, v3

    iget-object v4, v4, Ljxl/biff/drawing/ChunkType;->id:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    sget-object v4, Ljxl/biff/drawing/ChunkType;->chunkTypes:[Ljxl/biff/drawing/ChunkType;

    aget-object v2, v4, v3

    .line 62
    const/4 v1, 0x1

    .line 57
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Ljxl/biff/drawing/ChunkType;->name:Ljava/lang/String;

    return-object v0
.end method

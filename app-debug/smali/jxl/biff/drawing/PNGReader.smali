.class public Ljxl/biff/drawing/PNGReader;
.super Ljava/lang/Object;
.source "PNGReader.java"


# static fields
.field private static PNG_MAGIC_NUMBER:[B


# instance fields
.field private horizontalResolution:I

.field private ihdr:Ljxl/biff/drawing/Chunk;

.field private phys:Ljxl/biff/drawing/Chunk;

.field private pixelHeight:I

.field private pixelWidth:I

.field private pngData:[B

.field private resolutionUnit:I

.field private verticalResolution:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljxl/biff/drawing/PNGReader;->PNG_MAGIC_NUMBER:[B

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ljxl/biff/drawing/PNGReader;->pngData:[B

    .line 46
    return-void
.end method

.method private getInt(BBBB)I
    .locals 6
    .param p1, "d1"    # B
    .param p2, "d2"    # B
    .param p3, "d3"    # B
    .param p4, "d4"    # B

    .line 102
    and-int/lit16 v0, p1, 0xff

    .line 103
    .local v0, "i1":I
    and-int/lit16 v1, p2, 0xff

    .line 104
    .local v1, "i2":I
    and-int/lit16 v2, p3, 0xff

    .line 105
    .local v2, "i3":I
    and-int/lit16 v3, p4, 0xff

    .line 107
    .local v3, "i4":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    .line 112
    .local v4, "val":I
    return v4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .line 141
    :try_start_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    .line 144
    .local v1, "size":I
    new-array v2, v1, [B

    .line 146
    .local v2, "data":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 147
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 148
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 149
    new-instance v4, Ljxl/biff/drawing/PNGReader;

    invoke-direct {v4, v2}, Ljxl/biff/drawing/PNGReader;-><init>([B)V

    .line 150
    .local v4, "reader":Ljxl/biff/drawing/PNGReader;
    invoke-virtual {v4}, Ljxl/biff/drawing/PNGReader;->read()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "size":I
    .end local v2    # "data":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljxl/biff/drawing/PNGReader;
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    .line 154
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 117
    iget v0, p0, Ljxl/biff/drawing/PNGReader;->pixelHeight:I

    return v0
.end method

.method public getHorizontalResolution()I
    .locals 2

    .line 128
    iget v0, p0, Ljxl/biff/drawing/PNGReader;->resolutionUnit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljxl/biff/drawing/PNGReader;->horizontalResolution:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVerticalResolution()I
    .locals 2

    .line 134
    iget v0, p0, Ljxl/biff/drawing/PNGReader;->resolutionUnit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljxl/biff/drawing/PNGReader;->verticalResolution:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 122
    iget v0, p0, Ljxl/biff/drawing/PNGReader;->pixelWidth:I

    return v0
.end method

.method read()V
    .locals 16

    .line 51
    move-object/from16 v0, p0

    sget-object v1, Ljxl/biff/drawing/PNGReader;->PNG_MAGIC_NUMBER:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 52
    .local v1, "header":[B
    iget-object v2, v0, Ljxl/biff/drawing/PNGReader;->pngData:[B

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    sget-object v2, Ljxl/biff/drawing/PNGReader;->PNG_MAGIC_NUMBER:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 54
    .local v2, "pngFile":Z
    if-nez v2, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    const/16 v3, 0x8

    .line 60
    .local v3, "pos":I
    :goto_0
    iget-object v5, v0, Ljxl/biff/drawing/PNGReader;->pngData:[B

    array-length v6, v5

    if-ge v3, v6, :cond_3

    .line 62
    aget-byte v6, v5, v3

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v5, v7

    add-int/lit8 v8, v3, 0x2

    aget-byte v8, v5, v8

    add-int/lit8 v9, v3, 0x3

    aget-byte v5, v5, v9

    invoke-direct {v0, v6, v7, v8, v5}, Ljxl/biff/drawing/PNGReader;->getInt(BBBB)I

    move-result v5

    .line 66
    .local v5, "length":I
    iget-object v6, v0, Ljxl/biff/drawing/PNGReader;->pngData:[B

    add-int/lit8 v7, v3, 0x4

    aget-byte v7, v6, v7

    add-int/lit8 v8, v3, 0x5

    aget-byte v8, v6, v8

    add-int/lit8 v9, v3, 0x6

    aget-byte v9, v6, v9

    add-int/lit8 v10, v3, 0x7

    aget-byte v6, v6, v10

    invoke-static {v7, v8, v9, v6}, Ljxl/biff/drawing/ChunkType;->getChunkType(BBBB)Ljxl/biff/drawing/ChunkType;

    move-result-object v6

    .line 71
    .local v6, "chunkType":Ljxl/biff/drawing/ChunkType;
    sget-object v7, Ljxl/biff/drawing/ChunkType;->IHDR:Ljxl/biff/drawing/ChunkType;

    if-ne v6, v7, :cond_1

    .line 73
    new-instance v7, Ljxl/biff/drawing/Chunk;

    add-int/lit8 v8, v3, 0x8

    iget-object v9, v0, Ljxl/biff/drawing/PNGReader;->pngData:[B

    invoke-direct {v7, v8, v5, v6, v9}, Ljxl/biff/drawing/Chunk;-><init>(IILjxl/biff/drawing/ChunkType;[B)V

    iput-object v7, v0, Ljxl/biff/drawing/PNGReader;->ihdr:Ljxl/biff/drawing/Chunk;

    goto :goto_1

    .line 75
    :cond_1
    sget-object v7, Ljxl/biff/drawing/ChunkType;->PHYS:Ljxl/biff/drawing/ChunkType;

    if-ne v6, v7, :cond_2

    .line 77
    new-instance v7, Ljxl/biff/drawing/Chunk;

    add-int/lit8 v8, v3, 0x8

    iget-object v9, v0, Ljxl/biff/drawing/PNGReader;->pngData:[B

    invoke-direct {v7, v8, v5, v6, v9}, Ljxl/biff/drawing/Chunk;-><init>(IILjxl/biff/drawing/ChunkType;[B)V

    iput-object v7, v0, Ljxl/biff/drawing/PNGReader;->phys:Ljxl/biff/drawing/Chunk;

    .line 80
    :cond_2
    :goto_1
    add-int/lit8 v7, v5, 0xc

    add-int/2addr v3, v7

    .line 81
    .end local v5    # "length":I
    .end local v6    # "chunkType":Ljxl/biff/drawing/ChunkType;
    goto :goto_0

    .line 84
    :cond_3
    iget-object v5, v0, Ljxl/biff/drawing/PNGReader;->ihdr:Ljxl/biff/drawing/Chunk;

    invoke-virtual {v5}, Ljxl/biff/drawing/Chunk;->getData()[B

    move-result-object v5

    .line 85
    .local v5, "ihdrData":[B
    aget-byte v6, v5, v4

    const/4 v7, 0x1

    aget-byte v8, v5, v7

    const/4 v9, 0x2

    aget-byte v10, v5, v9

    const/4 v11, 0x3

    aget-byte v12, v5, v11

    invoke-direct {v0, v6, v8, v10, v12}, Ljxl/biff/drawing/PNGReader;->getInt(BBBB)I

    move-result v6

    iput v6, v0, Ljxl/biff/drawing/PNGReader;->pixelWidth:I

    .line 86
    const/4 v6, 0x4

    aget-byte v8, v5, v6

    const/4 v10, 0x5

    aget-byte v12, v5, v10

    const/4 v13, 0x6

    aget-byte v14, v5, v13

    const/4 v15, 0x7

    aget-byte v13, v5, v15

    invoke-direct {v0, v8, v12, v14, v13}, Ljxl/biff/drawing/PNGReader;->getInt(BBBB)I

    move-result v8

    iput v8, v0, Ljxl/biff/drawing/PNGReader;->pixelHeight:I

    .line 88
    iget-object v8, v0, Ljxl/biff/drawing/PNGReader;->phys:Ljxl/biff/drawing/Chunk;

    if-eqz v8, :cond_4

    .line 90
    invoke-virtual {v8}, Ljxl/biff/drawing/Chunk;->getData()[B

    move-result-object v8

    .line 91
    .local v8, "physData":[B
    const/16 v12, 0x8

    aget-byte v12, v8, v12

    iput v12, v0, Ljxl/biff/drawing/PNGReader;->resolutionUnit:I

    .line 92
    aget-byte v4, v8, v4

    aget-byte v7, v8, v7

    aget-byte v9, v8, v9

    aget-byte v11, v8, v11

    invoke-direct {v0, v4, v7, v9, v11}, Ljxl/biff/drawing/PNGReader;->getInt(BBBB)I

    move-result v4

    iput v4, v0, Ljxl/biff/drawing/PNGReader;->horizontalResolution:I

    .line 94
    aget-byte v4, v8, v6

    aget-byte v6, v8, v10

    const/4 v7, 0x6

    aget-byte v7, v8, v7

    aget-byte v9, v8, v15

    invoke-direct {v0, v4, v6, v7, v9}, Ljxl/biff/drawing/PNGReader;->getInt(BBBB)I

    move-result v4

    iput v4, v0, Ljxl/biff/drawing/PNGReader;->verticalResolution:I

    .line 97
    .end local v8    # "physData":[B
    :cond_4
    return-void
.end method

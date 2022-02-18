.class public final Ljxl/biff/IntegerHelper;
.super Ljava/lang/Object;
.source "IntegerHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getFourBytes(I[BI)V
    .locals 3
    .param p0, "i"    # I
    .param p1, "target"    # [B
    .param p2, "pos"    # I

    .line 143
    invoke-static {p0}, Ljxl/biff/IntegerHelper;->getFourBytes(I)[B

    move-result-object v0

    .line 144
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    aput-byte v1, p1, p2

    .line 145
    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    aput-byte v2, p1, v1

    .line 146
    add-int/lit8 v1, p2, 0x2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    aput-byte v2, p1, v1

    .line 147
    add-int/lit8 v1, p2, 0x3

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    aput-byte v2, p1, v1

    .line 148
    return-void
.end method

.method public static getFourBytes(I)[B
    .locals 4
    .param p0, "i"    # I

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 109
    .local v0, "bytes":[B
    const v1, 0xffff

    and-int/2addr v1, p0

    .line 110
    .local v1, "i1":I
    const/high16 v2, -0x10000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    .line 112
    .local v2, "i2":I
    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 113
    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 115
    return-object v0
.end method

.method public static getInt(BB)I
    .locals 3
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .line 43
    and-int/lit16 v0, p0, 0xff

    .line 44
    .local v0, "i1":I
    and-int/lit16 v1, p1, 0xff

    .line 45
    .local v1, "i2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    .line 46
    .local v2, "val":I
    return v2
.end method

.method public static getInt(BBBB)I
    .locals 3
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .param p2, "b3"    # B
    .param p3, "b4"    # B

    .line 76
    invoke-static {p0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    .line 77
    .local v0, "i1":I
    invoke-static {p2, p3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    .line 79
    .local v1, "i2":I
    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v2, v0

    .line 80
    .local v2, "val":I
    return v2
.end method

.method public static getShort(BB)S
    .locals 3
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .line 58
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    .line 59
    .local v0, "i1":S
    and-int/lit16 v1, p1, 0xff

    int-to-short v1, v1

    .line 60
    .local v1, "i2":S
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    int-to-short v2, v2

    .line 61
    .local v2, "val":S
    return v2
.end method

.method public static getTwoBytes(I[BI)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "target"    # [B
    .param p2, "pos"    # I

    .line 129
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 130
    add-int/lit8 v0, p2, 0x1

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 131
    return-void
.end method

.method public static getTwoBytes(I)[B
    .locals 3
    .param p0, "i"    # I

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 93
    .local v0, "bytes":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 94
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 96
    return-object v0
.end method

.class public Ljxl/biff/DoubleHelper;
.super Ljava/lang/Object;
.source "DoubleHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getIEEEBytes(D[BI)V
    .locals 6
    .param p0, "d"    # D
    .param p2, "target"    # [B
    .param p3, "pos"    # I

    .line 76
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 77
    .local v0, "val":J
    const-wide/16 v2, 0xff

    and-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 78
    add-int/lit8 v2, p3, 0x1

    const-wide/32 v3, 0xff00

    and-long/2addr v3, v0

    const/16 v5, 0x8

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 79
    add-int/lit8 v2, p3, 0x2

    const-wide/32 v3, 0xff0000

    and-long/2addr v3, v0

    const/16 v5, 0x10

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 80
    add-int/lit8 v2, p3, 0x3

    const-wide/32 v3, -0x1000000

    and-long/2addr v3, v0

    const/16 v5, 0x18

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 81
    add-int/lit8 v2, p3, 0x4

    const-wide v3, 0xff00000000L

    and-long/2addr v3, v0

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 82
    add-int/lit8 v2, p3, 0x5

    const-wide v3, 0xff0000000000L

    and-long/2addr v3, v0

    const/16 v5, 0x28

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 83
    add-int/lit8 v2, p3, 0x6

    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v0

    const/16 v5, 0x30

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 84
    add-int/lit8 v2, p3, 0x7

    const-wide/high16 v3, -0x100000000000000L

    and-long/2addr v3, v0

    const/16 v5, 0x38

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 85
    return-void
.end method

.method public static getIEEEDouble([BI)D
    .locals 9
    .param p0, "data"    # [B
    .param p1, "pos"    # I

    .line 43
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    invoke-static {v0, v1, v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    .line 45
    .local v0, "num1":I
    add-int/lit8 v1, p1, 0x4

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    add-int/lit8 v3, p1, 0x6

    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x7

    aget-byte v4, p0, v4

    invoke-static {v1, v2, v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v1

    .line 51
    .local v1, "num2":I
    const/high16 v2, -0x80000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 54
    .local v2, "negative":Z
    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v3, v1

    int-to-long v3, v3

    const-wide v5, 0x100000000L

    mul-long/2addr v3, v5

    int-to-long v7, v0

    if-gez v0, :cond_1

    add-long/2addr v7, v5

    :cond_1
    add-long/2addr v3, v7

    .line 56
    .local v3, "val":J
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 58
    .local v5, "value":D
    if-eqz v2, :cond_2

    .line 60
    neg-double v5, v5

    .line 62
    :cond_2
    return-wide v5
.end method

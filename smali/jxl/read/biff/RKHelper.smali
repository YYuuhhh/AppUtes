.class final Ljxl/read/biff/RKHelper;
.super Ljava/lang/Object;
.source "RKHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getDouble(I)D
    .locals 7
    .param p0, "rk"    # I

    .line 42
    and-int/lit8 v0, p0, 0x2

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_1

    .line 44
    shr-int/lit8 v0, p0, 0x2

    .line 46
    .local v0, "intval":I
    int-to-double v3, v0

    .line 47
    .local v3, "value":D
    and-int/lit8 v5, p0, 0x1

    if-eqz v5, :cond_0

    .line 49
    div-double/2addr v3, v1

    .line 52
    :cond_0
    return-wide v3

    .line 56
    .end local v0    # "intval":I
    .end local v3    # "value":D
    :cond_1
    and-int/lit8 v0, p0, -0x4

    int-to-long v3, v0

    .line 57
    .local v3, "valbits":J
    const/16 v0, 0x20

    shl-long/2addr v3, v0

    .line 58
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 60
    .local v5, "value":D
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    .line 62
    div-double/2addr v5, v1

    .line 65
    :cond_2
    return-wide v5
.end method

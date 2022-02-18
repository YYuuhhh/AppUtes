.class public Ljxl/common/LengthConverter;
.super Ljava/lang/Object;
.source "LengthConverter.java"


# static fields
.field private static factors:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    invoke-static {}, Ljxl/common/LengthUnit;->getCount()I

    move-result v0

    invoke-static {}, Ljxl/common/LengthUnit;->getCount()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, D

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    sput-object v0, Ljxl/common/LengthConverter;->factors:[[D

    .line 30
    sget-object v1, Ljxl/common/LengthUnit;->POINTS:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->POINTS:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    .line 31
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->METRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->METRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aput-wide v2, v0, v1

    .line 32
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->CENTIMETRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->CENTIMETRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aput-wide v2, v0, v1

    .line 33
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->INCHES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->INCHES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aput-wide v2, v0, v1

    .line 36
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->POINTS:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->METRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    const-wide v2, 0x3f371ea104b0a998L    # 3.5277777778E-4

    aput-wide v2, v0, v1

    .line 37
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->POINTS:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->CENTIMETRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    const-wide v2, 0x3fa20fedcbaa047fL    # 0.035277777778

    aput-wide v2, v0, v1

    .line 38
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->POINTS:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->INCHES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    const-wide v2, 0x3f8c71c71c72c150L    # 0.013888888889

    aput-wide v2, v0, v1

    .line 41
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->METRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->POINTS:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    const-wide v2, 0x40a67bae147ae148L    # 2877.84

    aput-wide v2, v0, v1

    .line 42
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->METRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->CENTIMETRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    aput-wide v2, v0, v1

    .line 43
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->METRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->INCHES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    const-wide v2, 0x4043af5c28f5c28fL    # 39.37

    aput-wide v2, v0, v1

    .line 46
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->CENTIMETRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->POINTS:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    const-wide v2, 0x403c58afa2f05a71L    # 28.34643

    aput-wide v2, v0, v1

    .line 47
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->CENTIMETRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->METRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    aput-wide v2, v0, v1

    .line 48
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->CENTIMETRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->INCHES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    const-wide v2, 0x3fd932617c1bda51L    # 0.3937

    aput-wide v2, v0, v1

    .line 51
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->INCHES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->POINTS:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    aput-wide v2, v0, v1

    .line 52
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->INCHES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->METRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    const-wide v2, 0x3f9a027525460aa6L    # 0.0254

    aput-wide v2, v0, v1

    .line 53
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    sget-object v1, Ljxl/common/LengthUnit;->INCHES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Ljxl/common/LengthUnit;->CENTIMETRES:Ljxl/common/LengthUnit;

    invoke-virtual {v1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    const-wide v2, 0x400451eb851eb852L    # 2.54

    aput-wide v2, v0, v1

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConversionFactor(Ljxl/common/LengthUnit;Ljxl/common/LengthUnit;)D
    .locals 3
    .param p0, "from"    # Ljxl/common/LengthUnit;
    .param p1, "to"    # Ljxl/common/LengthUnit;

    .line 58
    sget-object v0, Ljxl/common/LengthConverter;->factors:[[D

    invoke-virtual {p0}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ljxl/common/LengthUnit;->getIndex()I

    move-result v1

    aget-wide v1, v0, v1

    return-wide v1
.end method

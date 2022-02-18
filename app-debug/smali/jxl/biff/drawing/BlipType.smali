.class final Ljxl/biff/drawing/BlipType;
.super Ljava/lang/Object;
.source "BlipType.java"


# static fields
.field public static final DIB:Ljxl/biff/drawing/BlipType;

.field public static final EMF:Ljxl/biff/drawing/BlipType;

.field public static final ERROR:Ljxl/biff/drawing/BlipType;

.field public static final FIRST_CLIENT:Ljxl/biff/drawing/BlipType;

.field public static final JPEG:Ljxl/biff/drawing/BlipType;

.field public static final LAST_CLIENT:Ljxl/biff/drawing/BlipType;

.field public static final PICT:Ljxl/biff/drawing/BlipType;

.field public static final PNG:Ljxl/biff/drawing/BlipType;

.field public static final UNKNOWN:Ljxl/biff/drawing/BlipType;

.field public static final WMF:Ljxl/biff/drawing/BlipType;

.field private static types:[Ljxl/biff/drawing/BlipType;


# instance fields
.field private desc:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/biff/drawing/BlipType;

    sput-object v1, Ljxl/biff/drawing/BlipType;->types:[Ljxl/biff/drawing/BlipType;

    .line 100
    new-instance v1, Ljxl/biff/drawing/BlipType;

    const-string v2, "Error"

    invoke-direct {v1, v0, v2}, Ljxl/biff/drawing/BlipType;-><init>(ILjava/lang/String;)V

    sput-object v1, Ljxl/biff/drawing/BlipType;->ERROR:Ljxl/biff/drawing/BlipType;

    .line 102
    new-instance v0, Ljxl/biff/drawing/BlipType;

    const/4 v1, 0x1

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/BlipType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/BlipType;->UNKNOWN:Ljxl/biff/drawing/BlipType;

    .line 104
    new-instance v0, Ljxl/biff/drawing/BlipType;

    const/4 v1, 0x2

    const-string v2, "EMF"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/BlipType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/BlipType;->EMF:Ljxl/biff/drawing/BlipType;

    .line 106
    new-instance v0, Ljxl/biff/drawing/BlipType;

    const/4 v1, 0x3

    const-string v2, "WMF"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/BlipType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/BlipType;->WMF:Ljxl/biff/drawing/BlipType;

    .line 108
    new-instance v0, Ljxl/biff/drawing/BlipType;

    const/4 v1, 0x4

    const-string v2, "PICT"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/BlipType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/BlipType;->PICT:Ljxl/biff/drawing/BlipType;

    .line 110
    new-instance v0, Ljxl/biff/drawing/BlipType;

    const/4 v1, 0x5

    const-string v2, "JPEG"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/BlipType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/BlipType;->JPEG:Ljxl/biff/drawing/BlipType;

    .line 111
    new-instance v0, Ljxl/biff/drawing/BlipType;

    const/4 v1, 0x6

    const-string v2, "PNG"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/BlipType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/BlipType;->PNG:Ljxl/biff/drawing/BlipType;

    .line 112
    new-instance v0, Ljxl/biff/drawing/BlipType;

    const/4 v1, 0x7

    const-string v2, "DIB"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/BlipType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/BlipType;->DIB:Ljxl/biff/drawing/BlipType;

    .line 113
    new-instance v0, Ljxl/biff/drawing/BlipType;

    const/16 v1, 0x20

    const-string v2, "FIRST"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/BlipType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/BlipType;->FIRST_CLIENT:Ljxl/biff/drawing/BlipType;

    .line 115
    new-instance v0, Ljxl/biff/drawing/BlipType;

    const/16 v1, 0xff

    const-string v2, "LAST"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/BlipType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/BlipType;->LAST_CLIENT:Ljxl/biff/drawing/BlipType;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "val"    # I
    .param p2, "d"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Ljxl/biff/drawing/BlipType;->value:I

    .line 51
    iput-object p2, p0, Ljxl/biff/drawing/BlipType;->desc:Ljava/lang/String;

    .line 53
    sget-object v0, Ljxl/biff/drawing/BlipType;->types:[Ljxl/biff/drawing/BlipType;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljxl/biff/drawing/BlipType;

    .line 54
    .local v1, "newtypes":[Ljxl/biff/drawing/BlipType;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    sget-object v0, Ljxl/biff/drawing/BlipType;->types:[Ljxl/biff/drawing/BlipType;

    array-length v0, v0

    aput-object p0, v1, v0

    .line 56
    sput-object v1, Ljxl/biff/drawing/BlipType;->types:[Ljxl/biff/drawing/BlipType;

    .line 57
    return-void
.end method

.method public static getType(I)Ljxl/biff/drawing/BlipType;
    .locals 4
    .param p0, "val"    # I

    .line 87
    sget-object v0, Ljxl/biff/drawing/BlipType;->UNKNOWN:Ljxl/biff/drawing/BlipType;

    .line 88
    .local v0, "type":Ljxl/biff/drawing/BlipType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Ljxl/biff/drawing/BlipType;->types:[Ljxl/biff/drawing/BlipType;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 90
    aget-object v3, v2, v1

    iget v3, v3, Ljxl/biff/drawing/BlipType;->value:I

    if-ne v3, p0, :cond_0

    .line 92
    aget-object v0, v2, v1

    .line 93
    goto :goto_1

    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Ljxl/biff/drawing/BlipType;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 76
    iget v0, p0, Ljxl/biff/drawing/BlipType;->value:I

    return v0
.end method

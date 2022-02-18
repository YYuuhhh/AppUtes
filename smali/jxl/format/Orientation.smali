.class public final Ljxl/format/Orientation;
.super Ljava/lang/Object;
.source "Orientation.java"


# static fields
.field public static HORIZONTAL:Ljxl/format/Orientation;

.field public static MINUS_45:Ljxl/format/Orientation;

.field public static MINUS_90:Ljxl/format/Orientation;

.field public static PLUS_45:Ljxl/format/Orientation;

.field public static PLUS_90:Ljxl/format/Orientation;

.field public static STACKED:Ljxl/format/Orientation;

.field public static VERTICAL:Ljxl/format/Orientation;

.field private static orientations:[Ljxl/format/Orientation;


# instance fields
.field private string:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/format/Orientation;

    sput-object v1, Ljxl/format/Orientation;->orientations:[Ljxl/format/Orientation;

    .line 98
    new-instance v1, Ljxl/format/Orientation;

    const-string v2, "horizontal"

    invoke-direct {v1, v0, v2}, Ljxl/format/Orientation;-><init>(ILjava/lang/String;)V

    sput-object v1, Ljxl/format/Orientation;->HORIZONTAL:Ljxl/format/Orientation;

    .line 103
    new-instance v0, Ljxl/format/Orientation;

    const/16 v1, 0xff

    const-string/jumbo v2, "vertical"

    invoke-direct {v0, v1, v2}, Ljxl/format/Orientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Orientation;->VERTICAL:Ljxl/format/Orientation;

    .line 108
    new-instance v0, Ljxl/format/Orientation;

    const/16 v2, 0x5a

    const-string/jumbo v3, "up 90"

    invoke-direct {v0, v2, v3}, Ljxl/format/Orientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Orientation;->PLUS_90:Ljxl/format/Orientation;

    .line 113
    new-instance v0, Ljxl/format/Orientation;

    const/16 v2, 0xb4

    const-string v3, "down 90"

    invoke-direct {v0, v2, v3}, Ljxl/format/Orientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Orientation;->MINUS_90:Ljxl/format/Orientation;

    .line 118
    new-instance v0, Ljxl/format/Orientation;

    const/16 v2, 0x2d

    const-string/jumbo v3, "up 45"

    invoke-direct {v0, v2, v3}, Ljxl/format/Orientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Orientation;->PLUS_45:Ljxl/format/Orientation;

    .line 123
    new-instance v0, Ljxl/format/Orientation;

    const/16 v2, 0x87

    const-string v3, "down 45"

    invoke-direct {v0, v2, v3}, Ljxl/format/Orientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Orientation;->MINUS_45:Ljxl/format/Orientation;

    .line 128
    new-instance v0, Ljxl/format/Orientation;

    const-string v2, "stacked"

    invoke-direct {v0, v1, v2}, Ljxl/format/Orientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/Orientation;->STACKED:Ljxl/format/Orientation;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "val"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Ljxl/format/Orientation;->value:I

    iput-object p2, p0, Ljxl/format/Orientation;->string:Ljava/lang/String;

    .line 51
    sget-object v0, Ljxl/format/Orientation;->orientations:[Ljxl/format/Orientation;

    .line 52
    .local v0, "oldorients":[Ljxl/format/Orientation;
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljxl/format/Orientation;

    sput-object v1, Ljxl/format/Orientation;->orientations:[Ljxl/format/Orientation;

    .line 53
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    sget-object v1, Ljxl/format/Orientation;->orientations:[Ljxl/format/Orientation;

    array-length v2, v0

    aput-object p0, v1, v2

    .line 55
    return-void
.end method

.method public static getOrientation(I)Ljxl/format/Orientation;
    .locals 3
    .param p0, "val"    # I

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Ljxl/format/Orientation;->orientations:[Ljxl/format/Orientation;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 85
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/format/Orientation;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 87
    sget-object v1, Ljxl/format/Orientation;->orientations:[Ljxl/format/Orientation;

    aget-object v1, v1, v0

    return-object v1

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Ljxl/format/Orientation;->HORIZONTAL:Ljxl/format/Orientation;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Ljxl/format/Orientation;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 64
    iget v0, p0, Ljxl/format/Orientation;->value:I

    return v0
.end method

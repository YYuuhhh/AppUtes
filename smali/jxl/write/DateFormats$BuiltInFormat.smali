.class Ljxl/write/DateFormats$BuiltInFormat;
.super Ljava/lang/Object;
.source "DateFormats.java"

# interfaces
.implements Ljxl/biff/DisplayFormat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/write/DateFormats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuiltInFormat"
.end annotation


# instance fields
.field private formatString:Ljava/lang/String;

.field private index:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Ljxl/write/DateFormats$BuiltInFormat;->index:I

    .line 52
    iput-object p2, p0, Ljxl/write/DateFormats$BuiltInFormat;->formatString:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 116
    return v0

    .line 119
    :cond_0
    instance-of v1, p1, Ljxl/write/DateFormats$BuiltInFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 121
    return v2

    .line 124
    :cond_1
    move-object v1, p1

    check-cast v1, Ljxl/write/DateFormats$BuiltInFormat;

    .line 126
    .local v1, "bif":Ljxl/write/DateFormats$BuiltInFormat;
    iget v3, p0, Ljxl/write/DateFormats$BuiltInFormat;->index:I

    iget v4, v1, Ljxl/write/DateFormats$BuiltInFormat;->index:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getFormatIndex()I
    .locals 1

    .line 62
    iget v0, p0, Ljxl/write/DateFormats$BuiltInFormat;->index:I

    return v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Ljxl/write/DateFormats$BuiltInFormat;->formatString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 136
    iget v0, p0, Ljxl/write/DateFormats$BuiltInFormat;->index:I

    return v0
.end method

.method public initialize(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 84
    return-void
.end method

.method public isBuiltIn()Z
    .locals 1

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

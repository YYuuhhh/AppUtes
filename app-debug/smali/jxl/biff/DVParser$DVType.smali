.class public Ljxl/biff/DVParser$DVType;
.super Ljava/lang/Object;
.source "DVParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/DVParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DVType"
.end annotation


# static fields
.field private static types:[Ljxl/biff/DVParser$DVType;


# instance fields
.field private desc:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/DVParser$DVType;

    sput-object v0, Ljxl/biff/DVParser$DVType;->types:[Ljxl/biff/DVParser$DVType;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "v"    # I
    .param p2, "d"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Ljxl/biff/DVParser$DVType;->value:I

    .line 58
    iput-object p2, p0, Ljxl/biff/DVParser$DVType;->desc:Ljava/lang/String;

    .line 59
    sget-object v0, Ljxl/biff/DVParser$DVType;->types:[Ljxl/biff/DVParser$DVType;

    .line 60
    .local v0, "oldtypes":[Ljxl/biff/DVParser$DVType;
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljxl/biff/DVParser$DVType;

    sput-object v1, Ljxl/biff/DVParser$DVType;->types:[Ljxl/biff/DVParser$DVType;

    .line 61
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    sget-object v1, Ljxl/biff/DVParser$DVType;->types:[Ljxl/biff/DVParser$DVType;

    array-length v2, v0

    aput-object p0, v1, v2

    .line 63
    return-void
.end method

.method static getType(I)Ljxl/biff/DVParser$DVType;
    .locals 4
    .param p0, "v"    # I

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "found":Ljxl/biff/DVParser$DVType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Ljxl/biff/DVParser$DVType;->types:[Ljxl/biff/DVParser$DVType;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    if-nez v0, :cond_1

    .line 70
    aget-object v3, v2, v1

    iget v3, v3, Ljxl/biff/DVParser$DVType;->value:I

    if-ne v3, p0, :cond_0

    .line 72
    aget-object v0, v2, v1

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Ljxl/biff/DVParser$DVType;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 80
    iget v0, p0, Ljxl/biff/DVParser$DVType;->value:I

    return v0
.end method

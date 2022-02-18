.class public Ljxl/biff/DVParser$ErrorStyle;
.super Ljava/lang/Object;
.source "DVParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/DVParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorStyle"
.end annotation


# static fields
.field private static types:[Ljxl/biff/DVParser$ErrorStyle;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/DVParser$ErrorStyle;

    sput-object v0, Ljxl/biff/DVParser$ErrorStyle;->types:[Ljxl/biff/DVParser$ErrorStyle;

    return-void
.end method

.method constructor <init>(I)V
    .locals 4
    .param p1, "v"    # I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Ljxl/biff/DVParser$ErrorStyle;->value:I

    .line 99
    sget-object v0, Ljxl/biff/DVParser$ErrorStyle;->types:[Ljxl/biff/DVParser$ErrorStyle;

    .line 100
    .local v0, "oldtypes":[Ljxl/biff/DVParser$ErrorStyle;
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljxl/biff/DVParser$ErrorStyle;

    sput-object v1, Ljxl/biff/DVParser$ErrorStyle;->types:[Ljxl/biff/DVParser$ErrorStyle;

    .line 101
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    sget-object v1, Ljxl/biff/DVParser$ErrorStyle;->types:[Ljxl/biff/DVParser$ErrorStyle;

    array-length v2, v0

    aput-object p0, v1, v2

    .line 103
    return-void
.end method

.method static getErrorStyle(I)Ljxl/biff/DVParser$ErrorStyle;
    .locals 4
    .param p0, "v"    # I

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "found":Ljxl/biff/DVParser$ErrorStyle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Ljxl/biff/DVParser$ErrorStyle;->types:[Ljxl/biff/DVParser$ErrorStyle;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    if-nez v0, :cond_1

    .line 110
    aget-object v3, v2, v1

    iget v3, v3, Ljxl/biff/DVParser$ErrorStyle;->value:I

    if-ne v3, p0, :cond_0

    .line 112
    aget-object v0, v2, v1

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 120
    iget v0, p0, Ljxl/biff/DVParser$ErrorStyle;->value:I

    return v0
.end method

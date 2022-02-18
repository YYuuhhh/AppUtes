.class public Ljxl/biff/DVParser$Condition;
.super Ljava/lang/Object;
.source "DVParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/DVParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Condition"
.end annotation


# static fields
.field private static types:[Ljxl/biff/DVParser$Condition;


# instance fields
.field private format:Ljava/text/MessageFormat;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/DVParser$Condition;

    sput-object v0, Ljxl/biff/DVParser$Condition;->types:[Ljxl/biff/DVParser$Condition;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "v"    # I
    .param p2, "pattern"    # Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Ljxl/biff/DVParser$Condition;->value:I

    .line 135
    new-instance v0, Ljava/text/MessageFormat;

    invoke-direct {v0, p2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/biff/DVParser$Condition;->format:Ljava/text/MessageFormat;

    .line 136
    sget-object v0, Ljxl/biff/DVParser$Condition;->types:[Ljxl/biff/DVParser$Condition;

    .line 137
    .local v0, "oldtypes":[Ljxl/biff/DVParser$Condition;
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljxl/biff/DVParser$Condition;

    sput-object v1, Ljxl/biff/DVParser$Condition;->types:[Ljxl/biff/DVParser$Condition;

    .line 138
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    sget-object v1, Ljxl/biff/DVParser$Condition;->types:[Ljxl/biff/DVParser$Condition;

    array-length v2, v0

    aput-object p0, v1, v2

    .line 140
    return-void
.end method

.method static getCondition(I)Ljxl/biff/DVParser$Condition;
    .locals 4
    .param p0, "v"    # I

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "found":Ljxl/biff/DVParser$Condition;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Ljxl/biff/DVParser$Condition;->types:[Ljxl/biff/DVParser$Condition;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    if-nez v0, :cond_1

    .line 147
    aget-object v3, v2, v1

    iget v3, v3, Ljxl/biff/DVParser$Condition;->value:I

    if-ne v3, p0, :cond_0

    .line 149
    aget-object v0, v2, v1

    .line 145
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getConditionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Ljxl/biff/DVParser$Condition;->format:Ljava/text/MessageFormat;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 157
    iget v0, p0, Ljxl/biff/DVParser$Condition;->value:I

    return v0
.end method

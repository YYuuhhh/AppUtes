.class public final Ljxl/format/UnderlineStyle;
.super Ljava/lang/Object;
.source "UnderlineStyle.java"


# static fields
.field public static final DOUBLE:Ljxl/format/UnderlineStyle;

.field public static final DOUBLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

.field public static final NO_UNDERLINE:Ljxl/format/UnderlineStyle;

.field public static final SINGLE:Ljxl/format/UnderlineStyle;

.field public static final SINGLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

.field private static styles:[Ljxl/format/UnderlineStyle;


# instance fields
.field private string:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/format/UnderlineStyle;

    sput-object v1, Ljxl/format/UnderlineStyle;->styles:[Ljxl/format/UnderlineStyle;

    .line 103
    new-instance v1, Ljxl/format/UnderlineStyle;

    const-string v2, "none"

    invoke-direct {v1, v0, v2}, Ljxl/format/UnderlineStyle;-><init>(ILjava/lang/String;)V

    sput-object v1, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    .line 106
    new-instance v0, Ljxl/format/UnderlineStyle;

    const/4 v1, 0x1

    const-string v2, "single"

    invoke-direct {v0, v1, v2}, Ljxl/format/UnderlineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    .line 109
    new-instance v0, Ljxl/format/UnderlineStyle;

    const/4 v1, 0x2

    const-string v2, "double"

    invoke-direct {v0, v1, v2}, Ljxl/format/UnderlineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/UnderlineStyle;->DOUBLE:Ljxl/format/UnderlineStyle;

    .line 112
    new-instance v0, Ljxl/format/UnderlineStyle;

    const/16 v1, 0x21

    const-string v2, "single accounting"

    invoke-direct {v0, v1, v2}, Ljxl/format/UnderlineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/UnderlineStyle;->SINGLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

    .line 115
    new-instance v0, Ljxl/format/UnderlineStyle;

    const/16 v1, 0x22

    const-string v2, "double accounting"

    invoke-direct {v0, v1, v2}, Ljxl/format/UnderlineStyle;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/format/UnderlineStyle;->DOUBLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "val"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Ljxl/format/UnderlineStyle;->value:I

    .line 54
    iput-object p2, p0, Ljxl/format/UnderlineStyle;->string:Ljava/lang/String;

    .line 56
    sget-object v0, Ljxl/format/UnderlineStyle;->styles:[Ljxl/format/UnderlineStyle;

    .line 57
    .local v0, "oldstyles":[Ljxl/format/UnderlineStyle;
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljxl/format/UnderlineStyle;

    sput-object v1, Ljxl/format/UnderlineStyle;->styles:[Ljxl/format/UnderlineStyle;

    .line 58
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    sget-object v1, Ljxl/format/UnderlineStyle;->styles:[Ljxl/format/UnderlineStyle;

    array-length v2, v0

    aput-object p0, v1, v2

    .line 60
    return-void
.end method

.method public static getStyle(I)Ljxl/format/UnderlineStyle;
    .locals 3
    .param p0, "val"    # I

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Ljxl/format/UnderlineStyle;->styles:[Ljxl/format/UnderlineStyle;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 93
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/format/UnderlineStyle;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 95
    sget-object v1, Ljxl/format/UnderlineStyle;->styles:[Ljxl/format/UnderlineStyle;

    aget-object v1, v1, v0

    return-object v1

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Ljxl/format/UnderlineStyle;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 70
    iget v0, p0, Ljxl/format/UnderlineStyle;->value:I

    return v0
.end method

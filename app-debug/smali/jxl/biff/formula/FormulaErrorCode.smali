.class public Ljxl/biff/formula/FormulaErrorCode;
.super Ljava/lang/Object;
.source "FormulaErrorCode.java"


# static fields
.field public static final DIV0:Ljxl/biff/formula/FormulaErrorCode;

.field public static final NA:Ljxl/biff/formula/FormulaErrorCode;

.field public static final NAME:Ljxl/biff/formula/FormulaErrorCode;

.field public static final NULL:Ljxl/biff/formula/FormulaErrorCode;

.field public static final NUM:Ljxl/biff/formula/FormulaErrorCode;

.field public static final REF:Ljxl/biff/formula/FormulaErrorCode;

.field public static final UNKNOWN:Ljxl/biff/formula/FormulaErrorCode;

.field public static final VALUE:Ljxl/biff/formula/FormulaErrorCode;

.field private static codes:[Ljxl/biff/formula/FormulaErrorCode;


# instance fields
.field private description:Ljava/lang/String;

.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/biff/formula/FormulaErrorCode;

    sput-object v1, Ljxl/biff/formula/FormulaErrorCode;->codes:[Ljxl/biff/formula/FormulaErrorCode;

    .line 126
    new-instance v1, Ljxl/biff/formula/FormulaErrorCode;

    const/16 v2, 0xff

    const-string v3, "?"

    invoke-direct {v1, v2, v3}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v1, Ljxl/biff/formula/FormulaErrorCode;->UNKNOWN:Ljxl/biff/formula/FormulaErrorCode;

    .line 128
    new-instance v1, Ljxl/biff/formula/FormulaErrorCode;

    const-string v2, "#NULL!"

    invoke-direct {v1, v0, v2}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v1, Ljxl/biff/formula/FormulaErrorCode;->NULL:Ljxl/biff/formula/FormulaErrorCode;

    .line 130
    new-instance v0, Ljxl/biff/formula/FormulaErrorCode;

    const/4 v1, 0x7

    const-string v2, "#DIV/0!"

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaErrorCode;->DIV0:Ljxl/biff/formula/FormulaErrorCode;

    .line 132
    new-instance v0, Ljxl/biff/formula/FormulaErrorCode;

    const/16 v1, 0xf

    const-string v2, "#VALUE!"

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaErrorCode;->VALUE:Ljxl/biff/formula/FormulaErrorCode;

    .line 134
    new-instance v0, Ljxl/biff/formula/FormulaErrorCode;

    const/16 v1, 0x17

    const-string v2, "#REF!"

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaErrorCode;->REF:Ljxl/biff/formula/FormulaErrorCode;

    .line 136
    new-instance v0, Ljxl/biff/formula/FormulaErrorCode;

    const/16 v1, 0x1d

    const-string v2, "#NAME?"

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaErrorCode;->NAME:Ljxl/biff/formula/FormulaErrorCode;

    .line 138
    new-instance v0, Ljxl/biff/formula/FormulaErrorCode;

    const/16 v1, 0x24

    const-string v2, "#NUM!"

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaErrorCode;->NUM:Ljxl/biff/formula/FormulaErrorCode;

    .line 140
    new-instance v0, Ljxl/biff/formula/FormulaErrorCode;

    const/16 v1, 0x2a

    const-string v2, "#N/A!"

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaErrorCode;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaErrorCode;->NA:Ljxl/biff/formula/FormulaErrorCode;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Ljxl/biff/formula/FormulaErrorCode;->errorCode:I

    .line 51
    iput-object p2, p0, Ljxl/biff/formula/FormulaErrorCode;->description:Ljava/lang/String;

    .line 52
    sget-object v0, Ljxl/biff/formula/FormulaErrorCode;->codes:[Ljxl/biff/formula/FormulaErrorCode;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljxl/biff/formula/FormulaErrorCode;

    .line 53
    .local v1, "newcodes":[Ljxl/biff/formula/FormulaErrorCode;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    sget-object v0, Ljxl/biff/formula/FormulaErrorCode;->codes:[Ljxl/biff/formula/FormulaErrorCode;

    array-length v0, v0

    aput-object p0, v1, v0

    .line 55
    sput-object v1, Ljxl/biff/formula/FormulaErrorCode;->codes:[Ljxl/biff/formula/FormulaErrorCode;

    .line 56
    return-void
.end method

.method public static getErrorCode(I)Ljxl/biff/formula/FormulaErrorCode;
    .locals 5
    .param p0, "code"    # I

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "found":Z
    sget-object v1, Ljxl/biff/formula/FormulaErrorCode;->UNKNOWN:Ljxl/biff/formula/FormulaErrorCode;

    .line 88
    .local v1, "ec":Ljxl/biff/formula/FormulaErrorCode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Ljxl/biff/formula/FormulaErrorCode;->codes:[Ljxl/biff/formula/FormulaErrorCode;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    if-nez v0, :cond_1

    .line 90
    aget-object v4, v3, v2

    iget v4, v4, Ljxl/biff/formula/FormulaErrorCode;->errorCode:I

    if-ne v4, p0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 93
    aget-object v1, v3, v2

    .line 88
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static getErrorCode(Ljava/lang/String;)Ljxl/biff/formula/FormulaErrorCode;
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "found":Z
    sget-object v1, Ljxl/biff/formula/FormulaErrorCode;->UNKNOWN:Ljxl/biff/formula/FormulaErrorCode;

    .line 110
    .local v1, "ec":Ljxl/biff/formula/FormulaErrorCode;
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Ljxl/biff/formula/FormulaErrorCode;->codes:[Ljxl/biff/formula/FormulaErrorCode;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    if-nez v0, :cond_2

    .line 117
    aget-object v3, v3, v2

    iget-object v3, v3, Ljxl/biff/formula/FormulaErrorCode;->description:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    const/4 v0, 0x1

    .line 120
    sget-object v3, Ljxl/biff/formula/FormulaErrorCode;->codes:[Ljxl/biff/formula/FormulaErrorCode;

    aget-object v1, v3, v2

    .line 115
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 112
    :cond_3
    :goto_1
    return-object v1
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 65
    iget v0, p0, Ljxl/biff/formula/FormulaErrorCode;->errorCode:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Ljxl/biff/formula/FormulaErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method

.class final Ljxl/biff/drawing/ObjRecord$ObjType;
.super Ljava/lang/Object;
.source "ObjRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/drawing/ObjRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObjType"
.end annotation


# static fields
.field private static types:[Ljxl/biff/drawing/ObjRecord$ObjType;


# instance fields
.field public desc:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/drawing/ObjRecord$ObjType;

    sput-object v0, Ljxl/biff/drawing/ObjRecord$ObjType;->types:[Ljxl/biff/drawing/ObjRecord$ObjType;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "v"    # I
    .param p2, "d"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Ljxl/biff/drawing/ObjRecord$ObjType;->value:I

    .line 69
    iput-object p2, p0, Ljxl/biff/drawing/ObjRecord$ObjType;->desc:Ljava/lang/String;

    .line 71
    sget-object v0, Ljxl/biff/drawing/ObjRecord$ObjType;->types:[Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 72
    .local v0, "oldtypes":[Ljxl/biff/drawing/ObjRecord$ObjType;
    sget-object v1, Ljxl/biff/drawing/ObjRecord$ObjType;->types:[Ljxl/biff/drawing/ObjRecord$ObjType;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljxl/biff/drawing/ObjRecord$ObjType;

    sput-object v1, Ljxl/biff/drawing/ObjRecord$ObjType;->types:[Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 73
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    sget-object v1, Ljxl/biff/drawing/ObjRecord$ObjType;->types:[Ljxl/biff/drawing/ObjRecord$ObjType;

    array-length v2, v0

    aput-object p0, v1, v2

    .line 75
    return-void
.end method

.method public static getType(I)Ljxl/biff/drawing/ObjRecord$ObjType;
    .locals 4
    .param p0, "val"    # I

    .line 84
    sget-object v0, Ljxl/biff/drawing/ObjRecord;->UNKNOWN:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 85
    .local v0, "retval":Ljxl/biff/drawing/ObjRecord$ObjType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Ljxl/biff/drawing/ObjRecord$ObjType;->types:[Ljxl/biff/drawing/ObjRecord$ObjType;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->UNKNOWN:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v0, v2, :cond_1

    .line 87
    sget-object v2, Ljxl/biff/drawing/ObjRecord$ObjType;->types:[Ljxl/biff/drawing/ObjRecord$ObjType;

    aget-object v3, v2, v1

    iget v3, v3, Ljxl/biff/drawing/ObjRecord$ObjType;->value:I

    if-ne v3, p0, :cond_0

    .line 89
    aget-object v0, v2, v1

    .line 85
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Ljxl/biff/drawing/ObjRecord$ObjType;->desc:Ljava/lang/String;

    return-object v0
.end method

.class public Ljxl/biff/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# static fields
.field private static final defaultGrowSize:I = 0x400


# instance fields
.field private bytes:[B

.field private growSize:I

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljxl/biff/ByteArray;-><init>(I)V

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "gs"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Ljxl/biff/ByteArray;->growSize:I

    .line 61
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/biff/ByteArray;->bytes:[B

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Ljxl/biff/ByteArray;->pos:I

    .line 63
    return-void
.end method

.method private checkSize(I)V
    .locals 4
    .param p1, "sz"    # I

    .line 109
    :goto_0
    iget v0, p0, Ljxl/biff/ByteArray;->pos:I

    add-int v1, v0, p1

    iget-object v2, p0, Ljxl/biff/ByteArray;->bytes:[B

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 112
    array-length v1, v2

    iget v3, p0, Ljxl/biff/ByteArray;->growSize:I

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 113
    .local v1, "newArray":[B
    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iput-object v1, p0, Ljxl/biff/ByteArray;->bytes:[B

    .line 115
    .end local v1    # "newArray":[B
    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public add(B)V
    .locals 3
    .param p1, "b"    # B

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljxl/biff/ByteArray;->checkSize(I)V

    .line 73
    iget-object v1, p0, Ljxl/biff/ByteArray;->bytes:[B

    iget v2, p0, Ljxl/biff/ByteArray;->pos:I

    aput-byte p1, v1, v2

    .line 74
    add-int/2addr v2, v0

    iput v2, p0, Ljxl/biff/ByteArray;->pos:I

    .line 75
    return-void
.end method

.method public add([B)V
    .locals 4
    .param p1, "b"    # [B

    .line 84
    array-length v0, p1

    invoke-direct {p0, v0}, Ljxl/biff/ByteArray;->checkSize(I)V

    .line 85
    iget-object v0, p0, Ljxl/biff/ByteArray;->bytes:[B

    iget v1, p0, Ljxl/biff/ByteArray;->pos:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget v0, p0, Ljxl/biff/ByteArray;->pos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Ljxl/biff/ByteArray;->pos:I

    .line 87
    return-void
.end method

.method public getBytes()[B
    .locals 4

    .line 96
    iget v0, p0, Ljxl/biff/ByteArray;->pos:I

    new-array v1, v0, [B

    .line 97
    .local v1, "returnArray":[B
    iget-object v2, p0, Ljxl/biff/ByteArray;->bytes:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    return-object v1
.end method

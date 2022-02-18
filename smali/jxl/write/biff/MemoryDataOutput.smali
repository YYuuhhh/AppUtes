.class Ljxl/write/biff/MemoryDataOutput;
.super Ljava/lang/Object;
.source "MemoryDataOutput.java"

# interfaces
.implements Ljxl/write/biff/ExcelDataOutput;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private data:[B

.field private growSize:I

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Ljxl/write/biff/MemoryDataOutput;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/MemoryDataOutput;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "initialSize"    # I
    .param p2, "gs"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-array v0, p1, [B

    iput-object v0, p0, Ljxl/write/biff/MemoryDataOutput;->data:[B

    .line 57
    iput p2, p0, Ljxl/write/biff/MemoryDataOutput;->growSize:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Ljxl/write/biff/MemoryDataOutput;->pos:I

    .line 59
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public getPosition()I
    .locals 1

    .line 88
    iget v0, p0, Ljxl/write/biff/MemoryDataOutput;->pos:I

    return v0
.end method

.method public setData([BI)V
    .locals 3
    .param p1, "newdata"    # [B
    .param p2, "pos"    # I

    .line 99
    iget-object v0, p0, Ljxl/write/biff/MemoryDataOutput;->data:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    return-void
.end method

.method public write([B)V
    .locals 5
    .param p1, "bytes"    # [B

    .line 69
    :goto_0
    iget v0, p0, Ljxl/write/biff/MemoryDataOutput;->pos:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Ljxl/write/biff/MemoryDataOutput;->data:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    .line 72
    array-length v1, v2

    iget v3, p0, Ljxl/write/biff/MemoryDataOutput;->growSize:I

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 73
    .local v1, "newdata":[B
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iput-object v1, p0, Ljxl/write/biff/MemoryDataOutput;->data:[B

    .line 75
    .end local v1    # "newdata":[B
    goto :goto_0

    .line 77
    :cond_0
    array-length v1, p1

    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget v0, p0, Ljxl/write/biff/MemoryDataOutput;->pos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Ljxl/write/biff/MemoryDataOutput;->pos:I

    .line 79
    return-void
.end method

.method public writeData(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Ljxl/write/biff/MemoryDataOutput;->data:[B

    iget v1, p0, Ljxl/write/biff/MemoryDataOutput;->pos:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 108
    return-void
.end method

.class public abstract Lorg/apache/log4j/lf5/util/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const/16 v0, 0x800

    invoke-static {p0, p1, v0}, Lorg/apache/log4j/lf5/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 66
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-array v0, p2, [B

    .line 78
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 79
    .local v1, "bytesRead":I
    nop

    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 84
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    return-void

    .line 80
    .restart local v0    # "buf":[B
    .restart local v1    # "bytesRead":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 81
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0
.end method

.method public static copyThenClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-static {p0, p1}, Lorg/apache/log4j/lf5/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 94
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 95
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 96
    return-void
.end method

.method public static getBytes(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    .local v0, "result":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/log4j/lf5/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 108
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

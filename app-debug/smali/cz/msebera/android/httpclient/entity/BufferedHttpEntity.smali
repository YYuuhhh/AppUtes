.class public Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "BufferedHttpEntity.java"


# instance fields
.field private final buffer:[B


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 4
    .param p1, "entity"    # Lcz/msebera/android/httpclient/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 60
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    .line 65
    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    nop

    .line 68
    :goto_1
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 72
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->getContentLength()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public isChunked()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 109
    :goto_0
    return-void
.end method

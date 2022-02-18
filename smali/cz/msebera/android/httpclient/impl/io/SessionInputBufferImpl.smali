.class public Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;
.super Ljava/lang/Object;
.source "SessionInputBufferImpl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/SessionInputBuffer;
.implements Lcz/msebera/android/httpclient/io/BufferInfo;


# instance fields
.field private final buffer:[B

.field private bufferLen:I

.field private bufferPos:I

.field private cbuf:Ljava/nio/CharBuffer;

.field private final constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

.field private final decoder:Ljava/nio/charset/CharsetDecoder;

.field private inStream:Ljava/io/InputStream;

.field private final lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

.field private final metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

.field private final minChunkLimit:I


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;I)V
    .locals 6
    .param p1, "metrics"    # Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;
    .param p2, "bufferSize"    # I

    .line 109
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;-><init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;IILcz/msebera/android/httpclient/config/MessageConstraints;Ljava/nio/charset/CharsetDecoder;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;IILcz/msebera/android/httpclient/config/MessageConstraints;Ljava/nio/charset/CharsetDecoder;)V
    .locals 1
    .param p1, "metrics"    # Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;
    .param p2, "bufferSize"    # I
    .param p3, "minChunkLimit"    # I
    .param p4, "constraints"    # Lcz/msebera/android/httpclient/config/MessageConstraints;
    .param p5, "charDecoder"    # Ljava/nio/charset/CharsetDecoder;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "HTTP transport metrcis"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    const-string v0, "Buffer size"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    .line 96
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    .line 97
    new-array v0, p2, [B

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    .line 99
    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    .line 100
    if-ltz p3, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    const/16 v0, 0x200

    :goto_0
    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->minChunkLimit:I

    .line 101
    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_1

    :cond_1
    sget-object v0, Lcz/msebera/android/httpclient/config/MessageConstraints;->DEFAULT:Lcz/msebera/android/httpclient/config/MessageConstraints;

    :goto_1
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    .line 102
    new-instance v0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    .line 103
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 104
    return-void
.end method

.method private appendDecoded(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "charbuffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "bbuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x0

    return v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    if-nez v0, :cond_1

    .line 357
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    .line 359
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "len":I
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 363
    .local v1, "result":Ljava/nio/charset/CoderResult;
    invoke-direct {p0, v1, p1, p2}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    .line 364
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    goto :goto_0

    .line 365
    :cond_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 366
    .restart local v1    # "result":Ljava/nio/charset/CoderResult;
    invoke-direct {p0, v1, p1, p2}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    .line 367
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 368
    return v0
.end method

.method private handleDecodingResult(Ljava/nio/charset/CoderResult;Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "result"    # Ljava/nio/charset/CoderResult;
    .param p2, "charbuffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p3, "bbuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 378
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 379
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 380
    .local v0, "len":I
    :goto_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-virtual {p2, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 384
    return v0
.end method

.method private lineFromLineBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I
    .locals 3
    .param p1, "charbuffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v0

    .line 310
    .local v0, "len":I
    if-lez v0, :cond_1

    .line 311
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 312
    add-int/lit8 v0, v0, -0x1

    .line 315
    :cond_0
    if-lez v0, :cond_1

    .line 316
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 317
    add-int/lit8 v0, v0, -0x1

    .line 321
    :cond_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 322
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {p1, v1, v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;II)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 325
    .local v1, "bbuf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1, v1}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->appendDecoded(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 327
    .end local v1    # "bbuf":Ljava/nio/ByteBuffer;
    :goto_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->clear()V

    .line 328
    return v0
.end method

.method private lineFromReadBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;I)I
    .locals 4
    .param p1, "charbuffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    move v0, p2

    .line 334
    .local v0, "pos":I
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    .line 336
    .local v1, "off":I
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    .line 337
    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    add-int/lit8 v3, v0, -0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 339
    add-int/lit8 v0, v0, -0x1

    .line 341
    :cond_0
    sub-int v2, v0, v1

    .line 342
    .local v2, "len":I
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v3, :cond_1

    .line 343
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-virtual {p1, v3, v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append([BII)V

    goto :goto_0

    .line 345
    :cond_1
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-static {v3, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 346
    .local v3, "bbuf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1, v3}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->appendDecoded(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 348
    .end local v3    # "bbuf":Ljava/nio/ByteBuffer;
    :goto_0
    return v2
.end method

.method private streamRead([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->inStream:Ljava/io/InputStream;

    const-string v1, "Input stream"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bind(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 113
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->inStream:Ljava/io/InputStream;

    .line 114
    return-void
.end method

.method public capacity()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    .line 168
    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    .line 169
    return-void
.end method

.method public fillBuffer()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    if-lez v0, :cond_1

    .line 143
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    sub-int/2addr v1, v0

    .line 144
    .local v1, "len":I
    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 145
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :cond_0
    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    .line 148
    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    .line 151
    .end local v1    # "len":I
    :cond_1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    .line 152
    .local v0, "off":I
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    .line 153
    .local v2, "len":I
    invoke-direct {p0, v1, v0, v2}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->streamRead([BII)I

    move-result v1

    .line 154
    .local v1, "readLen":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 155
    return v3

    .line 157
    :cond_2
    add-int v3, v0, v1

    iput v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    .line 158
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    .line 159
    return v1
.end method

.method public getMetrics()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;
    .locals 1

    .line 401
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 2

    .line 163
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBound()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->inStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDataAvailable(I)Z
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 2

    .line 127
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->fillBuffer()I

    move-result v0

    .line 176
    .local v0, "noRead":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 177
    return v1

    .line 180
    .end local v0    # "noRead":I
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 219
    return v0

    .line 221
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    if-nez p1, :cond_0

    .line 186
    const/4 v0, 0x0

    return v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 190
    .local v0, "chunk":I
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    .line 192
    return v0

    .line 196
    .end local v0    # "chunk":I
    :cond_1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->minChunkLimit:I

    if-le p3, v0, :cond_3

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->streamRead([BII)I

    move-result v0

    .line 198
    .local v0, "readLen":I
    if-lez v0, :cond_2

    .line 199
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    .line 201
    :cond_2
    return v0

    .line 204
    .end local v0    # "readLen":I
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_5

    .line 205
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->fillBuffer()I

    move-result v0

    .line 206
    .local v0, "noRead":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 207
    return v1

    .line 209
    .end local v0    # "noRead":I
    :cond_4
    goto :goto_0

    .line 210
    :cond_5
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 211
    .local v0, "chunk":I
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    .line 213
    return v0
.end method

.method public readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I
    .locals 9
    .param p1, "charbuffer"    # Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/MessageConstraints;->getMaxLineLength()I

    move-result v0

    .line 243
    .local v0, "maxLineLen":I
    const/4 v1, 0x0

    .line 244
    .local v1, "noRead":I
    const/4 v2, 0x1

    .line 245
    .local v2, "retry":Z
    :goto_0
    const/4 v3, -0x1

    if-eqz v2, :cond_9

    .line 247
    const/4 v4, -0x1

    .line 248
    .local v4, "pos":I
    iget v5, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    .local v5, "i":I
    :goto_1
    iget v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    if-ge v5, v6, :cond_1

    .line 249
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    aget-byte v6, v6, v5

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    .line 250
    move v4, v5

    .line 251
    goto :goto_2

    .line 248
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 255
    .end local v5    # "i":I
    :cond_1
    :goto_2
    if-lez v0, :cond_4

    .line 256
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v5

    if-ltz v4, :cond_2

    move v6, v4

    goto :goto_3

    :cond_2
    iget v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    :goto_3
    add-int/2addr v5, v6

    iget v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr v5, v6

    .line 258
    .local v5, "currentLen":I
    if-ge v5, v0, :cond_3

    goto :goto_4

    .line 259
    :cond_3
    new-instance v3, Lcz/msebera/android/httpclient/MessageConstraintException;

    const-string v6, "Maximum line length limit exceeded"

    invoke-direct {v3, v6}, Lcz/msebera/android/httpclient/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    .end local v5    # "currentLen":I
    :cond_4
    :goto_4
    if-eq v4, v3, :cond_6

    .line 265
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 267
    invoke-direct {p0, p1, v4}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineFromReadBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;I)I

    move-result v3

    return v3

    .line 269
    :cond_5
    const/4 v2, 0x0

    .line 270
    add-int/lit8 v3, v4, 0x1

    iget v5, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr v3, v5

    .line 271
    .local v3, "len":I
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-virtual {v6, v7, v5, v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    .line 272
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    .line 273
    .end local v3    # "len":I
    goto :goto_5

    .line 275
    :cond_6
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 276
    iget v5, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr v5, v6

    .line 277
    .local v5, "len":I
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-virtual {v7, v8, v6, v5}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    .line 278
    iget v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferLen:I

    iput v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferPos:I

    .line 280
    .end local v5    # "len":I
    :cond_7
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->fillBuffer()I

    move-result v1

    .line 281
    if-ne v1, v3, :cond_8

    .line 282
    const/4 v2, 0x0

    .line 285
    .end local v4    # "pos":I
    :cond_8
    :goto_5
    goto :goto_0

    .line 286
    :cond_9
    if-ne v1, v3, :cond_a

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineBuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 288
    return v3

    .line 290
    :cond_a
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineFromLineBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v3

    return v3
.end method

.method public readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 390
    .local v0, "charbuffer":Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v1

    .line 391
    .local v1, "readLen":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

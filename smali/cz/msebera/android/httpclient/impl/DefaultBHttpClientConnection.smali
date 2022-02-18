.class public Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;
.super Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;
.source "DefaultBHttpClientConnection.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpClientConnection;


# instance fields
.field private final requestWriter:Lcz/msebera/android/httpclient/io/HttpMessageWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/io/HttpMessageWriter<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseParser:Lcz/msebera/android/httpclient/io/HttpMessageParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/io/HttpMessageParser<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 10
    .param p1, "bufferSize"    # I

    .line 112
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    invoke-direct/range {v0 .. v9}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lcz/msebera/android/httpclient/config/MessageConstraints;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;)V

    .line 113
    return-void
.end method

.method public constructor <init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lcz/msebera/android/httpclient/config/MessageConstraints;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;)V
    .locals 2
    .param p1, "bufferSize"    # I
    .param p2, "fragmentSizeHint"    # I
    .param p3, "charDecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p4, "charEncoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p5, "constraints"    # Lcz/msebera/android/httpclient/config/MessageConstraints;
    .param p6, "incomingContentStrategy"    # Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;
    .param p7, "outgoingContentStrategy"    # Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/nio/charset/CharsetEncoder;",
            "Lcz/msebera/android/httpclient/config/MessageConstraints;",
            "Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;",
            "Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;",
            "Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;",
            "Lcz/msebera/android/httpclient/io/HttpMessageParserFactory<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p8, "requestWriterFactory":Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;, "Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory<Lcz/msebera/android/httpclient/HttpRequest;>;"
    .local p9, "responseParserFactory":Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;, "Lcz/msebera/android/httpclient/io/HttpMessageParserFactory<Lcz/msebera/android/httpclient/HttpResponse;>;"
    invoke-direct/range {p0 .. p7}, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lcz/msebera/android/httpclient/config/MessageConstraints;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V

    .line 97
    if-eqz p8, :cond_0

    move-object v0, p8

    goto :goto_0

    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->getSessionOutputBuffer()Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;->create(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;)Lcz/msebera/android/httpclient/io/HttpMessageWriter;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->requestWriter:Lcz/msebera/android/httpclient/io/HttpMessageWriter;

    .line 99
    if-eqz p9, :cond_1

    move-object v0, p9

    goto :goto_1

    :cond_1
    sget-object v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;

    .line 100
    :goto_1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->getSessionInputBuffer()Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    move-result-object v1

    invoke-interface {v0, v1, p5}, Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;->create(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/config/MessageConstraints;)Lcz/msebera/android/httpclient/io/HttpMessageParser;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->responseParser:Lcz/msebera/android/httpclient/io/HttpMessageParser;

    .line 101
    return-void
.end method

.method public constructor <init>(ILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lcz/msebera/android/httpclient/config/MessageConstraints;)V
    .locals 10
    .param p1, "bufferSize"    # I
    .param p2, "charDecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p3, "charEncoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p4, "constraints"    # Lcz/msebera/android/httpclient/config/MessageConstraints;

    .line 108
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v9}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lcz/msebera/android/httpclient/config/MessageConstraints;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;)V

    .line 109
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->bind(Ljava/net/Socket;)V

    .line 124
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 183
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->doFlush()V

    .line 184
    return-void
.end method

.method public isResponseAvailable(I)Z
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 130
    :try_start_0
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->awaitInput(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Ljava/net/SocketTimeoutException;
    const/4 v1, 0x0

    return v1
.end method

.method protected onRequestSubmitted(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 0
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 119
    return-void
.end method

.method protected onResponseReceived(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 0
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .line 116
    return-void
.end method

.method public receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 1
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 176
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->prepareInput(Lcz/msebera/android/httpclient/HttpMessage;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 177
    .local v0, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 178
    return-void
.end method

.method public receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 163
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->responseParser:Lcz/msebera/android/httpclient/io/HttpMessageParser;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/HttpMessageParser;->parse()Lcz/msebera/android/httpclient/HttpMessage;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpResponse;

    .line 164
    .local v0, "response":Lcz/msebera/android/httpclient/HttpResponse;
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->onResponseReceived(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 165
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    .line 166
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->incrementResponseCount()V

    .line 168
    :cond_0
    return-object v0
.end method

.method public sendRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .locals 2
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 151
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 152
    .local v0, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    if-nez v0, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->prepareOutput(Lcz/msebera/android/httpclient/HttpMessage;)Ljava/io/OutputStream;

    move-result-object v1

    .line 156
    .local v1, "outStream":Ljava/io/OutputStream;
    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 157
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 158
    return-void
.end method

.method public sendRequestHeader(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 1
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 141
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->requestWriter:Lcz/msebera/android/httpclient/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/io/HttpMessageWriter;->write(Lcz/msebera/android/httpclient/HttpMessage;)V

    .line 142
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->onRequestSubmitted(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 143
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->incrementRequestCount()V

    .line 144
    return-void
.end method

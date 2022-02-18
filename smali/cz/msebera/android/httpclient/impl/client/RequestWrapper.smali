.class public Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
.super Lcz/msebera/android/httpclient/message/AbstractHttpMessage;
.source "RequestWrapper.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private execCount:I

.field private method:Ljava/lang/String;

.field private final original:Lcz/msebera/android/httpclient/HttpRequest;

.field private uri:Ljava/net/URI;

.field private version:Lcz/msebera/android/httpclient/ProtocolVersion;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 5
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/AbstractHttpMessage;-><init>()V

    .line 68
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->original:Lcz/msebera/android/httpclient/HttpRequest;

    .line 70
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 71
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 73
    instance-of v0, p1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 74
    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    .line 75
    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->method:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    goto :goto_0

    .line 78
    :cond_0
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    .line 80
    .local v0, "requestLine":Lcz/msebera/android/httpclient/RequestLine;
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    nop

    .line 85
    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->method:Ljava/lang/String;

    .line 86
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 88
    .end local v0    # "requestLine":Lcz/msebera/android/httpclient/RequestLine;
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->execCount:I

    .line 89
    return-void

    .line 81
    .restart local v0    # "requestLine":Lcz/msebera/android/httpclient/RequestLine;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "ex":Ljava/net/URISyntaxException;
    new-instance v2, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 83
    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public abort()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExecCount()I
    .locals 1

    .line 161
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->execCount:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal()Lcz/msebera/android/httpclient/HttpRequest;
    .locals 1

    .line 153
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->original:Lcz/msebera/android/httpclient/HttpRequest;

    return-object v0
.end method

.method public getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;
    .locals 1

    .line 109
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->getVersion(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 112
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    return-object v0
.end method

.method public getRequestLine()Lcz/msebera/android/httpclient/RequestLine;
    .locals 4

    .line 131
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    .line 132
    .local v0, "ver":Lcz/msebera/android/httpclient/ProtocolVersion;
    const/4 v1, 0x0

    .line 133
    .local v1, "uritext":Ljava/lang/String;
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    .line 136
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    :cond_1
    const-string v1, "/"

    .line 139
    :cond_2
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicRequestLine;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcz/msebera/android/httpclient/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    return-object v2
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 122
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public incrementExecCount()V
    .locals 1

    .line 165
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->execCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->execCount:I

    .line 166
    return-void
.end method

.method public isAborted()Z
    .locals 1

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public resetHeaders()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;->clear()V

    .line 94
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->original:Lcz/msebera/android/httpclient/HttpRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 95
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .line 103
    const-string v0, "Method name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->method:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setProtocolVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)V
    .locals 0
    .param p1, "version"    # Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 116
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 117
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .line 126
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->uri:Ljava/net/URI;

    .line 127
    return-void
.end method

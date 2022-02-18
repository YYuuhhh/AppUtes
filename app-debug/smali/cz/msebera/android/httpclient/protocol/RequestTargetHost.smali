.class public Lcz/msebera/android/httpclient/protocol/RequestTargetHost;
.super Ljava/lang/Object;
.source "RequestTargetHost.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 10
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    invoke-static {p2}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/protocol/HttpCoreContext;

    move-result-object v0

    .line 66
    .local v0, "coreContext":Lcz/msebera/android/httpclient/protocol/HttpCoreContext;
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v1

    .line 67
    .local v1, "ver":Lcz/msebera/android/httpclient/ProtocolVersion;
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "method":Ljava/lang/String;
    const-string v3, "CONNECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v1, v3}, Lcz/msebera/android/httpclient/ProtocolVersion;->lessEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    const-string v3, "Host"

    invoke-interface {p1, v3}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 73
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v4

    .line 74
    .local v4, "targetHost":Lcz/msebera/android/httpclient/HttpHost;
    if-nez v4, :cond_3

    .line 75
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->getConnection()Lcz/msebera/android/httpclient/HttpConnection;

    move-result-object v5

    .line 76
    .local v5, "conn":Lcz/msebera/android/httpclient/HttpConnection;
    instance-of v6, v5, Lcz/msebera/android/httpclient/HttpInetConnection;

    if-eqz v6, :cond_1

    .line 79
    move-object v6, v5

    check-cast v6, Lcz/msebera/android/httpclient/HttpInetConnection;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 80
    .local v6, "address":Ljava/net/InetAddress;
    move-object v7, v5

    check-cast v7, Lcz/msebera/android/httpclient/HttpInetConnection;

    invoke-interface {v7}, Lcz/msebera/android/httpclient/HttpInetConnection;->getRemotePort()I

    move-result v7

    .line 81
    .local v7, "port":I
    if-eqz v6, :cond_1

    .line 82
    new-instance v8, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v4, v8

    .line 85
    .end local v6    # "address":Ljava/net/InetAddress;
    .end local v7    # "port":I
    :cond_1
    if-nez v4, :cond_3

    .line 86
    sget-object v3, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v1, v3}, Lcz/msebera/android/httpclient/ProtocolVersion;->lessEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    return-void

    .line 89
    :cond_2
    new-instance v3, Lcz/msebera/android/httpclient/ProtocolException;

    const-string v6, "Target host missing"

    invoke-direct {v3, v6}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    .end local v5    # "conn":Lcz/msebera/android/httpclient/HttpConnection;
    :cond_3
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v5}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v4    # "targetHost":Lcz/msebera/android/httpclient/HttpHost;
    :cond_4
    return-void
.end method

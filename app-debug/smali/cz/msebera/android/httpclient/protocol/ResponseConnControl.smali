.class public Lcz/msebera/android/httpclient/protocol/ResponseConnControl;
.super Ljava/lang/Object;
.source "ResponseConnControl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 11
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    invoke-static {p2}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/protocol/HttpCoreContext;

    move-result-object v0

    .line 68
    .local v0, "corecontext":Lcz/msebera/android/httpclient/protocol/HttpCoreContext;
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v1

    .line 69
    .local v1, "status":I
    const-string v2, "Close"

    const-string v3, "Connection"

    const/16 v4, 0x190

    if-eq v1, v4, :cond_6

    const/16 v4, 0x198

    if-eq v1, v4, :cond_6

    const/16 v4, 0x19b

    if-eq v1, v4, :cond_6

    const/16 v4, 0x19d

    if-eq v1, v4, :cond_6

    const/16 v4, 0x19e

    if-eq v1, v4, :cond_6

    const/16 v4, 0x1f7

    if-eq v1, v4, :cond_6

    const/16 v4, 0x1f5

    if-ne v1, v4, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-interface {p1, v3}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    .line 80
    .local v4, "explicit":Lcz/msebera/android/httpclient/Header;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    return-void

    .line 86
    :cond_1
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v5

    .line 87
    .local v5, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    if-eqz v5, :cond_3

    .line 88
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lcz/msebera/android/httpclient/StatusLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v6

    .line 89
    .local v6, "ver":Lcz/msebera/android/httpclient/ProtocolVersion;
    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 90
    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpEntity;->isChunked()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/ProtocolVersion;->lessEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 91
    :cond_2
    invoke-interface {p1, v3, v2}, Lcz/msebera/android/httpclient/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 96
    .end local v6    # "ver":Lcz/msebera/android/httpclient/ProtocolVersion;
    :cond_3
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->getRequest()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v6

    .line 97
    .local v6, "request":Lcz/msebera/android/httpclient/HttpRequest;
    if-eqz v6, :cond_5

    .line 98
    invoke-interface {v6, v3}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v7

    .line 99
    .local v7, "header":Lcz/msebera/android/httpclient/Header;
    if-eqz v7, :cond_4

    .line 100
    invoke-interface {v7}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lcz/msebera/android/httpclient/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_4
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v8

    sget-object v9, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v8, v9}, Lcz/msebera/android/httpclient/ProtocolVersion;->lessEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 102
    invoke-interface {p1, v3, v2}, Lcz/msebera/android/httpclient/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v7    # "header":Lcz/msebera/android/httpclient/Header;
    :cond_5
    :goto_0
    return-void

    .line 76
    .end local v4    # "explicit":Lcz/msebera/android/httpclient/Header;
    .end local v5    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .end local v6    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    :cond_6
    :goto_1
    invoke-interface {p1, v3, v2}, Lcz/msebera/android/httpclient/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

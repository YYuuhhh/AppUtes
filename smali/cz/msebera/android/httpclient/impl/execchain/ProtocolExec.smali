.class public Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;
.super Ljava/lang/Object;
.source "ProtocolExec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# instance fields
.field private final httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/protocol/HttpProcessor;)V
    .locals 2
    .param p1, "requestExecutor"    # Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .param p2, "httpProcessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 83
    const-string v0, "HTTP client request executor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    const-string v0, "HTTP protocol processor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 86
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 87
    return-void
.end method


# virtual methods
.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 9
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p2, "request"    # Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .param p3, "context"    # Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .param p4, "execAware"    # Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 110
    const-string v0, "HTTP route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v0

    .line 115
    .local v0, "original":Lcz/msebera/android/httpclient/HttpRequest;
    const/4 v1, 0x0

    .line 116
    .local v1, "uri":Ljava/net/URI;
    instance-of v2, v0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    if-eqz v2, :cond_0

    .line 117
    move-object v2, v0

    check-cast v2, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "uriString":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 127
    goto :goto_0

    .line 122
    :catch_0
    move-exception v3

    .line 123
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' as a valid URI; request URI and Host header may be inconsistent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 130
    .end local v2    # "uriString":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    invoke-virtual {p2, v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setURI(Ljava/net/URI;)V

    .line 133
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isNormalizeUri()Z

    move-result v2

    invoke-virtual {p0, p2, p1, v2}, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->rewriteRequestURI(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Z)V

    .line 135
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v2

    .line 136
    .local v2, "params":Lcz/msebera/android/httpclient/params/HttpParams;
    const-string v3, "http.virtual-host"

    invoke-interface {v2, v3}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/HttpHost;

    .line 138
    .local v3, "virtualHost":Lcz/msebera/android/httpclient/HttpHost;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 139
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v4

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v4

    .line 140
    .local v4, "port":I
    if-eq v4, v5, :cond_2

    .line 141
    new-instance v5, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v3, v5

    .line 144
    :cond_2
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 145
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using virtual host"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 149
    .end local v4    # "port":I
    :cond_3
    const/4 v4, 0x0

    .line 150
    .local v4, "target":Lcz/msebera/android/httpclient/HttpHost;
    if-eqz v3, :cond_4

    .line 151
    move-object v4, v3

    goto :goto_1

    .line 153
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 154
    new-instance v5, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v7

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v4, v5

    .line 157
    :cond_5
    :goto_1
    if-nez v4, :cond_6

    .line 158
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getTarget()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v4

    .line 160
    :cond_6
    if-nez v4, :cond_7

    .line 161
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v4

    .line 165
    :cond_7
    if-eqz v1, :cond_9

    .line 166
    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "userinfo":Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 168
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getCredentialsProvider()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v6

    .line 169
    .local v6, "credsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    if-nez v6, :cond_8

    .line 170
    new-instance v7, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;

    invoke-direct {v7}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;-><init>()V

    move-object v6, v7

    .line 171
    invoke-virtual {p3, v6}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setCredentialsProvider(Lcz/msebera/android/httpclient/client/CredentialsProvider;)V

    .line 173
    :cond_8
    new-instance v7, Lcz/msebera/android/httpclient/auth/AuthScope;

    invoke-direct {v7, v4}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Lcz/msebera/android/httpclient/HttpHost;)V

    new-instance v8, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;

    invoke-direct {v8, v5}, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7, v8}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->setCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;)V

    .line 180
    .end local v5    # "userinfo":Ljava/lang/String;
    .end local v6    # "credsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    :cond_9
    const-string v5, "http.target_host"

    invoke-virtual {p3, v5, v4}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-string v5, "http.route"

    invoke-virtual {p3, v5, p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    const-string v5, "http.request"

    invoke-virtual {p3, v5, p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-interface {v5, p2, p3}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 186
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    invoke-interface {v5, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v5

    .line 190
    .local v5, "response":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_start_1
    const-string v6, "http.response"

    invoke-virtual {p3, v6, v5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-interface {v6, v5, p3}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    return-object v5

    .line 199
    :catch_1
    move-exception v6

    .line 200
    .local v6, "ex":Lcz/msebera/android/httpclient/HttpException;
    invoke-interface {v5}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 201
    throw v6

    .line 196
    .end local v6    # "ex":Lcz/msebera/android/httpclient/HttpException;
    :catch_2
    move-exception v6

    .line 197
    .local v6, "ex":Ljava/io/IOException;
    invoke-interface {v5}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 198
    throw v6

    .line 193
    .end local v6    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 194
    .local v6, "ex":Ljava/lang/RuntimeException;
    invoke-interface {v5}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 195
    throw v6
.end method

.method rewriteRequestURI(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Z)V
    .locals 5
    .param p1, "request"    # Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .param p2, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p3, "normalizeUri"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 94
    .local v0, "uri":Ljava/net/URI;
    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    invoke-static {v0, p2, p3}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURIForRoute(Ljava/net/URI;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;Z)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "ex":Ljava/net/URISyntaxException;
    new-instance v2, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 101
    .end local v1    # "ex":Ljava/net/URISyntaxException;
    :cond_0
    :goto_0
    return-void
.end method

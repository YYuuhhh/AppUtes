.class Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;
.super Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
.source "MinimalHttpClient.java"


# instance fields
.field private final connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private final params:Lcz/msebera/android/httpclient/params/HttpParams;

.field private final requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)V
    .locals 4
    .param p1, "connManager"    # Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 75
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;-><init>()V

    .line 76
    const-string v0, "HTTP connection manager"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 77
    new-instance v0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;

    new-instance v1, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>()V

    sget-object v2, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    sget-object v3, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0, v1, p1, v2, v3}, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;

    .line 82
    new-instance v0, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;)Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;

    .line 67
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->shutdown()V

    .line 122
    return-void
.end method

.method protected doExecute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 6
    .param p1, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    .line 90
    const-string v0, "Target host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    instance-of v1, p2, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

    if-eqz v1, :cond_0

    .line 94
    move-object v0, p2

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

    .line 97
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->wrap(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v1

    .line 98
    .local v1, "wrapper":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    if-eqz p3, :cond_1

    move-object v2, p3

    goto :goto_0

    :cond_1
    new-instance v2, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    :goto_0
    invoke-static {v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v2

    .line 100
    .local v2, "localcontext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    new-instance v3, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {v3, p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;)V

    .line 101
    .local v3, "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    const/4 v4, 0x0

    .line 102
    .local v4, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    instance-of v5, p2, Lcz/msebera/android/httpclient/client/methods/Configurable;

    if-eqz v5, :cond_2

    .line 103
    move-object v5, p2

    check-cast v5, Lcz/msebera/android/httpclient/client/methods/Configurable;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/client/methods/Configurable;->getConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v5

    move-object v4, v5

    .line 105
    :cond_2
    if-eqz v4, :cond_3

    .line 106
    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setRequestConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)V

    .line 108
    :cond_3
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;

    invoke-virtual {v5, v3, v1, v2, v0}, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v5
    :try_end_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 109
    .end local v1    # "wrapper":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .end local v2    # "localcontext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .end local v3    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v4    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    :catch_0
    move-exception v1

    .line 110
    .local v1, "httpException":Lcz/msebera/android/httpclient/HttpException;
    new-instance v2, Lcz/msebera/android/httpclient/client/ClientProtocolException;

    invoke-direct {v2, v1}, Lcz/msebera/android/httpclient/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .locals 1

    .line 127
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient$1;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient$1;-><init>(Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;)V

    return-object v0
.end method

.method public getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .locals 1

    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    return-object v0
.end method

.class public Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;
.super Ljava/lang/Object;
.source "MinimalClientExec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# instance fields
.field private final connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private final httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private final keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;)V
    .locals 6
    .param p1, "requestExecutor"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .param p2, "connManager"    # Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .param p3, "reuseStrategy"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .param p4, "keepAliveStrategy"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 100
    const-string v0, "HTTP request executor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    const-string v0, "Client connection manager"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    const-string v0, "Connection reuse strategy"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    const-string v0, "Connection keep alive strategy"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    new-instance v0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    const/4 v1, 0x4

    new-array v1, v1, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    new-instance v2, Lcz/msebera/android/httpclient/protocol/RequestContent;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/protocol/RequestContent;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 108
    const-string v4, "Apache-HttpClient"

    const-string v5, "cz.msebera.android.httpclient.client"

    invoke-static {v4, v5, v3}, Lcz/msebera/android/httpclient/util/VersionInfo;->getUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 110
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 111
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 112
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 113
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 114
    return-void
.end method

.method static rewriteRequestURI(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Z)V
    .locals 4
    .param p0, "request"    # Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p2, "normalizeUri"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 122
    .local v0, "uri":Ljava/net/URI;
    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    sget-object v2, Lcz/msebera/android/httpclient/client/utils/URIUtils;->DROP_FRAGMENT_AND_NORMALIZE:Ljava/util/EnumSet;

    goto :goto_0

    :cond_0
    sget-object v2, Lcz/msebera/android/httpclient/client/utils/URIUtils;->DROP_FRAGMENT:Ljava/util/EnumSet;

    :goto_0
    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Ljava/util/EnumSet;)Ljava/net/URI;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 127
    :cond_1
    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    move-object v0, v1

    .line 129
    :goto_1
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0    # "uri":Ljava/net/URI;
    :cond_2
    nop

    .line 134
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 17
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

    .line 142
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v0, "HTTP route"

    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    const-string v0, "HTTP request"

    invoke-static {v3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    const-string v0, "HTTP context"

    invoke-static {v4, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isNormalizeUri()Z

    move-result v0

    invoke-static {v3, v2, v0}, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->rewriteRequestURI(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Z)V

    .line 148
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ConnectionRequest;

    move-result-object v7

    .line 149
    .local v7, "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    const-string v8, "Request aborted"

    if-eqz v5, :cond_1

    .line 150
    invoke-interface/range {p4 .. p4}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-interface {v5, v7}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->setCancellable(Lcz/msebera/android/httpclient/concurrent/Cancellable;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-interface {v7}, Lcz/msebera/android/httpclient/conn/ConnectionRequest;->cancel()Z

    .line 152
    new-instance v0, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    invoke-direct {v0, v8}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v9

    .line 161
    .local v9, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    :try_start_0
    invoke-virtual {v9}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v0

    .line 162
    .local v0, "timeout":I
    if-lez v0, :cond_2

    int-to-long v10, v0

    goto :goto_1

    :cond_2
    const-wide/16 v10, 0x0

    :goto_1
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v10, v11, v12}, Lcz/msebera/android/httpclient/conn/ConnectionRequest;->get(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/HttpClientConnection;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_5

    .line 172
    .end local v0    # "timeout":I
    .local v10, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    nop

    .line 174
    new-instance v0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    iget-object v11, v1, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iget-object v12, v1, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-direct {v0, v11, v12, v10}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/HttpClientConnection;)V

    move-object v11, v0

    .line 176
    .local v11, "releaseTrigger":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    if-eqz v5, :cond_4

    .line 177
    :try_start_1
    invoke-interface/range {p4 .. p4}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    invoke-interface {v5, v11}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->setCancellable(Lcz/msebera/android/httpclient/concurrent/Cancellable;)V

    goto :goto_2

    .line 178
    :cond_3
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->close()V

    .line 179
    new-instance v0, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    invoke-direct {v0, v8}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    .end local v7    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .end local v9    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .end local v10    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v11    # "releaseTrigger":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local p1    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local p2    # "request":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .end local p3    # "context":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .end local p4    # "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    throw v0

    .line 184
    .restart local v7    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .restart local v9    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .restart local v10    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v11    # "releaseTrigger":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local p1    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local p2    # "request":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .restart local p3    # "context":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .restart local p4    # "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    :cond_4
    :goto_2
    invoke-interface {v10}, Lcz/msebera/android/httpclient/HttpClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_6

    .line 185
    invoke-virtual {v9}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectTimeout()I

    move-result v0

    .line 186
    .restart local v0    # "timeout":I
    iget-object v8, v1, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    if-lez v0, :cond_5

    move v12, v0

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    invoke-interface {v8, v10, v2, v12, v4}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->connect(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 191
    iget-object v8, v1, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {v8, v10, v2, v4}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->routeComplete(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 193
    .end local v0    # "timeout":I
    :cond_6
    invoke-virtual {v9}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getSocketTimeout()I

    move-result v0

    .line 194
    .restart local v0    # "timeout":I
    if-ltz v0, :cond_7

    .line 195
    invoke-interface {v10, v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->setSocketTimeout(I)V

    .line 198
    :cond_7
    const/4 v8, 0x0

    .line 199
    .local v8, "target":Lcz/msebera/android/httpclient/HttpHost;
    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v12

    .line 200
    .local v12, "original":Lcz/msebera/android/httpclient/HttpRequest;
    instance-of v13, v12, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    if-eqz v13, :cond_9

    .line 201
    move-object v13, v12

    check-cast v13, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v13}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v13

    .line 202
    .local v13, "uri":Ljava/net/URI;
    invoke-virtual {v13}, Ljava/net/URI;->isAbsolute()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 203
    new-instance v14, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v13}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Ljava/net/URI;->getPort()I

    move-result v6

    move/from16 v16, v0

    .end local v0    # "timeout":I
    .local v16, "timeout":I
    invoke-virtual {v13}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v15, v6, v0}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v8, v14

    goto :goto_4

    .line 202
    .end local v16    # "timeout":I
    .restart local v0    # "timeout":I
    :cond_8
    move/from16 v16, v0

    .end local v0    # "timeout":I
    .restart local v16    # "timeout":I
    goto :goto_4

    .line 200
    .end local v13    # "uri":Ljava/net/URI;
    .end local v16    # "timeout":I
    .restart local v0    # "timeout":I
    :cond_9
    move/from16 v16, v0

    .line 206
    .end local v0    # "timeout":I
    .restart local v16    # "timeout":I
    :goto_4
    if-nez v8, :cond_a

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    move-object v8, v0

    .line 210
    :cond_a
    const-string v0, "http.target_host"

    invoke-virtual {v4, v0, v8}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    const-string v0, "http.request"

    invoke-virtual {v4, v0, v3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    const-string v0, "http.connection"

    invoke-virtual {v4, v0, v10}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    const-string v0, "http.route"

    invoke-virtual {v4, v0, v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-interface {v0, v3, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 216
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-virtual {v0, v3, v10, v4}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    .line 217
    .local v0, "response":Lcz/msebera/android/httpclient/HttpResponse;
    iget-object v6, v1, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-interface {v6, v0, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 220
    iget-object v6, v1, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {v6, v0, v4}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 222
    iget-object v6, v1, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v6, v0, v4}, Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)J

    move-result-wide v13

    .line 223
    .local v13, "duration":J
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v13, v14, v6}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->setValidFor(JLjava/util/concurrent/TimeUnit;)V

    .line 224
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->markReusable()V

    .line 225
    .end local v13    # "duration":J
    goto :goto_5

    .line 226
    :cond_b
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->markNonReusable()V

    .line 230
    :goto_5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v6

    .line 231
    .local v6, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    if-eqz v6, :cond_d

    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v13

    if-nez v13, :cond_c

    goto :goto_6

    .line 236
    :cond_c
    new-instance v13, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;

    invoke-direct {v13, v0, v11}, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;-><init>(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V

    return-object v13

    .line 233
    :cond_d
    :goto_6
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->releaseConnection()V

    .line 234
    new-instance v13, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v14}, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;-><init>(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V
    :try_end_1
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-object v13

    .line 251
    .end local v0    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v6    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .end local v8    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v12    # "original":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v16    # "timeout":I
    :catch_0
    move-exception v0

    .line 252
    .local v0, "error":Ljava/lang/Error;
    iget-object v6, v1, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->shutdown()V

    .line 253
    throw v0

    .line 248
    .end local v0    # "error":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 249
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 250
    throw v0

    .line 245
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 246
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 247
    throw v0

    .line 242
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 243
    .local v0, "ex":Lcz/msebera/android/httpclient/HttpException;
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 244
    throw v0

    .line 237
    .end local v0    # "ex":Lcz/msebera/android/httpclient/HttpException;
    :catch_4
    move-exception v0

    .line 238
    .local v0, "ex":Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;
    new-instance v6, Ljava/io/InterruptedIOException;

    const-string v8, "Connection has been shut down"

    invoke-direct {v6, v8}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 240
    .local v6, "ioex":Ljava/io/InterruptedIOException;
    invoke-virtual {v6, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 241
    throw v6

    .line 166
    .end local v0    # "ex":Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;
    .end local v6    # "ioex":Ljava/io/InterruptedIOException;
    .end local v10    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v11    # "releaseTrigger":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_5
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 168
    .local v6, "cause":Ljava/lang/Throwable;
    if-nez v6, :cond_e

    .line 169
    move-object v6, v0

    .line 171
    :cond_e
    new-instance v8, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    const-string v10, "Request execution failed"

    invoke-direct {v8, v10, v6}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 163
    .end local v0    # "ex":Ljava/util/concurrent/ExecutionException;
    .end local v6    # "cause":Ljava/lang/Throwable;
    :catch_6
    move-exception v0

    .line 164
    .local v0, "interrupted":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 165
    new-instance v6, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    invoke-direct {v6, v8, v0}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

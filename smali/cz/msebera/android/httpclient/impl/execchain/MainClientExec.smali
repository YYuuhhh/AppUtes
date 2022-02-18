.class public Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;
.super Ljava/lang/Object;
.source "MainClientExec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# instance fields
.field private final authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

.field private final connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private final keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private final proxyHttpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private final requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private final routeDirector:Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;

.field private final targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private final userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)V
    .locals 9
    .param p1, "requestExecutor"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .param p2, "connManager"    # Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .param p3, "reuseStrategy"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .param p4, "keepAliveStrategy"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .param p5, "targetAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p6, "proxyAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p7, "userTokenHandler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 144
    new-instance v5, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    const/4 v0, 0x1

    new-array v0, v0, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    new-instance v1, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {v5, v0}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)V
    .locals 2
    .param p1, "requestExecutor"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .param p2, "connManager"    # Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .param p3, "reuseStrategy"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .param p4, "keepAliveStrategy"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .param p5, "proxyHttpProcessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .param p6, "targetAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p7, "proxyAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p8, "userTokenHandler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 116
    const-string v0, "HTTP request executor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    const-string v0, "Client connection manager"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v0, "Connection reuse strategy"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v0, "Connection keep alive strategy"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    const-string v0, "Proxy HTTP processor"

    invoke-static {p5, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    const-string v0, "Target authentication strategy"

    invoke-static {p6, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    const-string v0, "Proxy authentication strategy"

    invoke-static {p7, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    const-string v0, "User token handler"

    invoke-static {p8, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    .line 125
    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->routeDirector:Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;

    .line 126
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 127
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 128
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 129
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 130
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyHttpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 131
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 132
    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 133
    iput-object p8, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 134
    return-void
.end method

.method private createTunnelToProxy(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z
    .locals 2
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p2, "hop"    # I
    .param p3, "context"    # Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 555
    new-instance v0, Lcz/msebera/android/httpclient/HttpException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createTunnelToTarget(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z
    .locals 18
    .param p1, "proxyAuthState"    # Lcz/msebera/android/httpclient/auth/AuthState;
    .param p2, "managedConn"    # Lcz/msebera/android/httpclient/HttpClientConnection;
    .param p3, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p4, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p5, "context"    # Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p5

    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v9

    .line 462
    .local v9, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    invoke-virtual {v9}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectTimeout()I

    move-result v10

    .line 464
    .local v10, "timeout":I
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v11

    .line 465
    .local v11, "target":Lcz/msebera/android/httpclient/HttpHost;
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v12

    .line 466
    .local v12, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    const/4 v2, 0x0

    .line 468
    .local v2, "response":Lcz/msebera/android/httpclient/HttpResponse;
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v13

    .line 469
    .local v13, "authority":Ljava/lang/String;
    new-instance v3, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    invoke-interface/range {p4 .. p4}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v4

    const-string v5, "CONNECT"

    invoke-direct {v3, v5, v13, v4}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    move-object v14, v3

    .line 471
    .local v14, "connect":Lcz/msebera/android/httpclient/HttpRequest;
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyHttpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v3, v14, v4, v8}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->preProcess(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 473
    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_7

    .line 474
    invoke-interface/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 475
    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    if-lez v10, :cond_0

    move v3, v10

    :cond_0
    move-object/from16 v15, p3

    invoke-interface {v4, v1, v15, v3, v8}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->connect(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)V

    goto :goto_1

    .line 474
    :cond_1
    move-object/from16 v15, p3

    .line 482
    :goto_1
    const-string v3, "Proxy-Authorization"

    invoke-interface {v14, v3}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 483
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    move-object/from16 v7, p1

    invoke-virtual {v3, v14, v7, v8}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->generateAuthResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 485
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-virtual {v3, v14, v1, v8}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v6

    .line 486
    .end local v2    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .local v6, "response":Lcz/msebera/android/httpclient/HttpResponse;
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyHttpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v2, v6, v3, v8}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->postProcess(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 488
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v5

    .line 489
    .local v5, "status":I
    const/16 v2, 0xc8

    if-lt v5, v2, :cond_6

    .line 494
    invoke-virtual {v9}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 495
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object v3, v12

    move-object/from16 v16, v4

    move-object v4, v6

    move/from16 v17, v5

    .end local v5    # "status":I
    .local v17, "status":I
    move-object/from16 v5, v16

    move-object/from16 v16, v6

    .end local v6    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .local v16, "response":Lcz/msebera/android/httpclient/HttpResponse;
    move-object/from16 v6, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 497
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object v3, v12

    move-object/from16 v4, v16

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 500
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    move-object/from16 v3, v16

    .end local v16    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .local v3, "response":Lcz/msebera/android/httpclient/HttpResponse;
    invoke-interface {v2, v3, v8}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Connection kept alive"

    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 503
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v2

    .line 504
    .local v2, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    invoke-static {v2}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 505
    .end local v2    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    goto :goto_2

    .line 506
    :cond_2
    invoke-interface/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    .line 508
    :goto_2
    const/4 v2, 0x0

    .end local v3    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .local v2, "response":Lcz/msebera/android/httpclient/HttpResponse;
    goto :goto_4

    .line 497
    .end local v2    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v16    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    :cond_3
    move-object/from16 v3, v16

    .end local v16    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v3    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    goto :goto_3

    .line 495
    .end local v3    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v16    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    :cond_4
    move-object/from16 v3, v16

    .end local v16    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v3    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    goto :goto_3

    .line 494
    .end local v3    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v17    # "status":I
    .restart local v5    # "status":I
    .restart local v6    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    :cond_5
    move/from16 v17, v5

    move-object v3, v6

    .line 512
    .end local v5    # "status":I
    .end local v6    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v3    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    :goto_3
    move-object v2, v3

    .end local v3    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v2    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    :goto_4
    goto/16 :goto_0

    .line 490
    .end local v2    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v5    # "status":I
    .restart local v6    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    :cond_6
    move/from16 v17, v5

    move-object v3, v6

    .end local v5    # "status":I
    .end local v6    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v3    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v17    # "status":I
    new-instance v2, Lcz/msebera/android/httpclient/HttpException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected response to CONNECT request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 491
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 514
    .end local v3    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v17    # "status":I
    .restart local v2    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    :cond_7
    move-object/from16 v15, p3

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v4

    .line 516
    .local v4, "status":I
    const/16 v5, 0x12b

    if-le v4, v5, :cond_9

    .line 519
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    .line 520
    .local v3, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    if-eqz v3, :cond_8

    .line 521
    new-instance v5, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;

    invoke-direct {v5, v3}, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {v2, v5}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 524
    :cond_8
    invoke-interface/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    .line 525
    new-instance v5, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONNECT refused by proxy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 526
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)V

    throw v5

    .line 533
    .end local v3    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    :cond_9
    return v3
.end method

.method private needAuthentication(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z
    .locals 18
    .param p1, "targetAuthState"    # Lcz/msebera/android/httpclient/auth/AuthState;
    .param p2, "proxyAuthState"    # Lcz/msebera/android/httpclient/auth/AuthState;
    .param p3, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p4, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p5, "context"    # Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    .line 564
    move-object/from16 v0, p0

    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v1

    .line 565
    .local v1, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 566
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    .line 567
    .local v2, "target":Lcz/msebera/android/httpclient/HttpHost;
    if-nez v2, :cond_0

    .line 568
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    .line 570
    :cond_0
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v3

    if-gez v3, :cond_1

    .line 571
    new-instance v3, Lcz/msebera/android/httpclient/HttpHost;

    .line 572
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    .line 573
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v5

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v5

    .line 574
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v2, v3

    .line 576
    :cond_1
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object v4, v2

    move-object/from16 v5, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v9

    .line 579
    .local v9, "targetAuthRequested":Z
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    .line 581
    .local v3, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    if-nez v3, :cond_2

    .line 582
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_0

    .line 581
    :cond_2
    move-object/from16 v16, v3

    .line 584
    .end local v3    # "proxy":Lcz/msebera/android/httpclient/HttpHost;
    .local v16, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    :goto_0
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v13, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object/from16 v11, v16

    move-object/from16 v12, p4

    move-object/from16 v14, p2

    move-object/from16 v15, p5

    invoke-virtual/range {v10 .. v15}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v17

    .line 587
    .local v17, "proxyAuthRequested":Z
    if-eqz v9, :cond_3

    .line 588
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object v4, v2

    move-object/from16 v5, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    return v3

    .line 591
    :cond_3
    if-eqz v17, :cond_4

    .line 592
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v13, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object/from16 v11, v16

    move-object/from16 v12, p4

    move-object/from16 v14, p2

    move-object/from16 v15, p5

    invoke-virtual/range {v10 .. v15}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    return v3

    .line 596
    .end local v2    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local v9    # "targetAuthRequested":Z
    .end local v16    # "proxy":Lcz/msebera/android/httpclient/HttpHost;
    .end local v17    # "proxyAuthRequested":Z
    :cond_4
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method establishRoute(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)V
    .locals 9
    .param p1, "proxyAuthState"    # Lcz/msebera/android/httpclient/auth/AuthState;
    .param p2, "managedConn"    # Lcz/msebera/android/httpclient/HttpClientConnection;
    .param p3, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .param p4, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p5, "context"    # Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    invoke-virtual {p5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    .line 383
    .local v0, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectTimeout()I

    move-result v1

    .line 384
    .local v1, "timeout":I
    new-instance v2, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-direct {v2, p3}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;-><init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 387
    .local v2, "tracker":Lcz/msebera/android/httpclient/conn/routing/RouteTracker;
    :cond_0
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->toRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v3

    .line 388
    .local v3, "fact":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->routeDirector:Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;

    invoke-interface {v4, p3, v3}, Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;->nextStep(Lcz/msebera/android/httpclient/conn/routing/RouteInfo;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)I

    move-result v4

    .line 390
    .local v4, "step":I
    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    .line 439
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown step indicator "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from RouteDirector."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 428
    :pswitch_0
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {v5, p2, p3, p5}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->upgrade(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 429
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isSecure()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layerProtocol(Z)V

    .line 430
    goto :goto_2

    .line 421
    :pswitch_1
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getHopCount()I

    move-result v6

    sub-int/2addr v6, v5

    .line 422
    .local v6, "hop":I
    invoke-direct {p0, p3, v6, p5}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->createTunnelToProxy(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z

    move-result v5

    .line 423
    .local v5, "secure":Z
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v8, "Tunnel to proxy created."

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 424
    invoke-virtual {p3, v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getHopTarget(I)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V

    .line 425
    .end local v5    # "secure":Z
    .end local v6    # "hop":I
    goto :goto_2

    .line 410
    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->createTunnelToTarget(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z

    move-result v5

    .line 412
    .restart local v5    # "secure":Z
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Tunnel to target created."

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 413
    invoke-virtual {v2, v5}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelTarget(Z)V

    .line 414
    .end local v5    # "secure":Z
    goto :goto_2

    .line 401
    :pswitch_3
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    if-lez v1, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v6

    :goto_0
    invoke-interface {v7, p2, p3, v8, p5}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->connect(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 406
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v7

    .line 407
    .local v7, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isSecure()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    invoke-virtual {v2, v7, v5}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connectProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V

    .line 408
    goto :goto_2

    .line 393
    .end local v7    # "proxy":Lcz/msebera/android/httpclient/HttpHost;
    :pswitch_4
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    if-lez v1, :cond_3

    move v6, v1

    :cond_3
    invoke-interface {v5, p2, p3, v6, p5}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->connect(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 398
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isSecure()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connectTarget(Z)V

    .line 399
    goto :goto_2

    .line 436
    :pswitch_5
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {v5, p2, p3, p5}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->routeComplete(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 437
    nop

    .line 443
    .end local v3    # "fact":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :goto_2
    if-gtz v4, :cond_0

    .line 444
    return-void

    .line 433
    .restart local v3    # "fact":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :pswitch_6
    new-instance v5, Lcz/msebera/android/httpclient/HttpException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to establish route: planned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; current = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 26
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

    .line 155
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    const-string v12, "Proxy-Authorization"

    const-string v13, "Authorization"

    const-string v1, "HTTP route"

    invoke-static {v8, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    const-string v1, "HTTP request"

    invoke-static {v9, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    const-string v1, "HTTP context"

    invoke-static {v10, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetAuthState()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v1

    .line 160
    .local v1, "targetAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    if-nez v1, :cond_0

    .line 161
    new-instance v2, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    move-object v1, v2

    .line 162
    const-string v2, "http.auth.target-scope"

    invoke-virtual {v10, v2, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v14, v1

    goto :goto_0

    .line 160
    :cond_0
    move-object v14, v1

    .line 164
    .end local v1    # "targetAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .local v14, "targetAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getProxyAuthState()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v1

    .line 165
    .local v1, "proxyAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    if-nez v1, :cond_1

    .line 166
    new-instance v2, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    move-object v1, v2

    .line 167
    const-string v2, "http.auth.proxy-scope"

    invoke-virtual {v10, v2, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v15, v1

    goto :goto_1

    .line 165
    :cond_1
    move-object v15, v1

    .line 170
    .end local v1    # "proxyAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .local v15, "proxyAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    :goto_1
    instance-of v1, v9, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_2

    .line 171
    move-object v1, v9

    check-cast v1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->enhance(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    .line 174
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getUserToken()Ljava/lang/Object;

    move-result-object v6

    .line 176
    .local v6, "userToken":Ljava/lang/Object;
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {v1, v8, v6}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ConnectionRequest;

    move-result-object v5

    .line 177
    .local v5, "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    const-string v4, "Request aborted"

    if-eqz v11, :cond_4

    .line 178
    invoke-interface/range {p4 .. p4}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 182
    invoke-interface {v11, v5}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->setCancellable(Lcz/msebera/android/httpclient/concurrent/Cancellable;)V

    goto :goto_2

    .line 179
    :cond_3
    invoke-interface {v5}, Lcz/msebera/android/httpclient/conn/ConnectionRequest;->cancel()Z

    .line 180
    new-instance v1, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    invoke-direct {v1, v4}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_4
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v16

    .line 189
    .local v16, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v1

    .line 190
    .local v1, "timeout":I
    const-wide/16 v17, 0x0

    if-lez v1, :cond_5

    int-to-long v2, v1

    goto :goto_3

    :cond_5
    move-wide/from16 v2, v17

    :goto_3
    move/from16 v19, v1

    .end local v1    # "timeout":I
    .local v19, "timeout":I
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v2, v3, v1}, Lcz/msebera/android/httpclient/conn/ConnectionRequest;->get(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/HttpClientConnection;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_5b

    move-object v3, v1

    .line 200
    .end local v19    # "timeout":I
    .local v3, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    nop

    .line 202
    const-string v1, "http.connection"

    invoke-virtual {v10, v1, v3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isStaleConnectionCheckEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 206
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 207
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Stale connection check"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 208
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpClientConnection;->isStale()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 209
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Stale connection detected"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 210
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    .line 215
    :cond_6
    new-instance v1, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    iget-object v2, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v19, v5

    .end local v5    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .local v19, "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    iget-object v5, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-direct {v1, v2, v5, v3}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/HttpClientConnection;)V

    move-object v5, v1

    .line 217
    .local v5, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    if-eqz v11, :cond_7

    .line 218
    :try_start_1
    invoke-interface {v11, v5}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->setCancellable(Lcz/msebera/android/httpclient/concurrent/Cancellable;)V

    goto :goto_4

    .line 367
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v23, v3

    move-object v1, v5

    goto/16 :goto_13

    .line 358
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v23, v3

    move-object v1, v5

    goto/16 :goto_14

    .line 349
    :catch_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v23, v3

    move-object v1, v5

    goto/16 :goto_15

    .line 346
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object/from16 v23, v3

    move-object v1, v5

    goto/16 :goto_16

    .line 341
    :catch_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v23, v3

    move-object v1, v5

    goto/16 :goto_17

    .line 222
    :cond_7
    :goto_4
    const/4 v1, 0x1

    move v2, v1

    .line 224
    .local v2, "execCount":I
    :goto_5
    const/4 v1, 0x1

    if-le v2, v1, :cond_9

    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->isRepeatable(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    .line 225
    :cond_8
    new-instance v1, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;

    const-string v4, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v1, v4}, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    .end local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v14    # "targetAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .end local v15    # "proxyAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .end local v16    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .end local v19    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .end local p1    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local p2    # "request":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .end local p3    # "context":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .end local p4    # "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    throw v1

    .line 229
    .restart local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v14    # "targetAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .restart local v15    # "proxyAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .restart local v16    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .restart local v19    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .restart local p1    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local p2    # "request":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .restart local p3    # "context":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .restart local p4    # "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    :cond_9
    :goto_6
    if-eqz v11, :cond_b

    invoke-interface/range {p4 .. p4}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_7

    .line 230
    :cond_a
    new-instance v1, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    invoke-direct {v1, v4}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    .end local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v6    # "userToken":Ljava/lang/Object;
    .end local v14    # "targetAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .end local v15    # "proxyAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .end local v16    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .end local v19    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .end local p1    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local p2    # "request":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .end local p3    # "context":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .end local p4    # "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    throw v1
    :try_end_1
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    .restart local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .restart local v14    # "targetAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .restart local v15    # "proxyAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .restart local v16    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .restart local v19    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .restart local p1    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local p2    # "request":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .restart local p3    # "context":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .restart local p4    # "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    :cond_b
    :goto_7
    :try_start_2
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpClientConnection;->isOpen()Z

    move-result v1
    :try_end_2
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_5a
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_2 .. :try_end_2} :catch_59
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_58
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_57
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_56

    if-nez v1, :cond_d

    .line 234
    :try_start_3
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move/from16 v20, v2

    .end local v2    # "execCount":I
    .local v20, "execCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_10

    move-object/from16 v21, v3

    .end local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v21, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :try_start_4
    const-string v3, "Opening connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_4
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_b

    .line 236
    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v22, v21

    .end local v21    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v22, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    move-object/from16 v3, v22

    move-object v8, v4

    move-object/from16 v4, p1

    move-object/from16 v23, v5

    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v23, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    move-object/from16 v5, p2

    move-object/from16 v21, v6

    .end local v6    # "userToken":Ljava/lang/Object;
    .local v21, "userToken":Ljava/lang/Object;
    move-object/from16 v6, p3

    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->establishRoute(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)V
    :try_end_5
    .catch Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_5

    .line 243
    goto/16 :goto_8

    .line 367
    .end local v20    # "execCount":I
    :catch_5
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v22

    goto/16 :goto_13

    .line 358
    :catch_6
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v22

    goto/16 :goto_14

    .line 349
    :catch_7
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v22

    goto/16 :goto_15

    .line 346
    :catch_8
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v22

    goto/16 :goto_16

    .line 341
    :catch_9
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v22

    goto/16 :goto_17

    .line 237
    .restart local v20    # "execCount":I
    :catch_a
    move-exception v0

    move-object v1, v0

    .line 238
    .local v1, "ex":Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;
    :try_start_6
    iget-object v2, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 239
    iget-object v2, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 241
    :cond_c
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;->getResponse()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v2
    :try_end_6
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_5

    .line 242
    .local v2, "response":Lcz/msebera/android/httpclient/HttpResponse;
    move-object/from16 v24, v23

    move-object/from16 v23, v22

    goto/16 :goto_f

    .line 367
    .end local v1    # "ex":Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;
    .end local v2    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v20    # "execCount":I
    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .local v21, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_b
    move-exception v0

    move-object/from16 v22, v21

    move-object/from16 v21, v6

    move-object v2, v0

    move-object v1, v5

    move-object/from16 v23, v22

    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v6    # "userToken":Ljava/lang/Object;
    .local v21, "userToken":Ljava/lang/Object;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_13

    .line 358
    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .local v21, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_c
    move-exception v0

    move-object/from16 v22, v21

    move-object/from16 v21, v6

    move-object v2, v0

    move-object v1, v5

    move-object/from16 v23, v22

    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v6    # "userToken":Ljava/lang/Object;
    .local v21, "userToken":Ljava/lang/Object;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_14

    .line 349
    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .local v21, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_d
    move-exception v0

    move-object/from16 v22, v21

    move-object/from16 v21, v6

    move-object v2, v0

    move-object v1, v5

    move-object/from16 v23, v22

    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v6    # "userToken":Ljava/lang/Object;
    .local v21, "userToken":Ljava/lang/Object;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_15

    .line 346
    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .local v21, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_e
    move-exception v0

    move-object/from16 v22, v21

    move-object/from16 v21, v6

    move-object v2, v0

    move-object v1, v5

    move-object/from16 v23, v22

    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v6    # "userToken":Ljava/lang/Object;
    .local v21, "userToken":Ljava/lang/Object;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_16

    .line 341
    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "userToken":Ljava/lang/Object;
    .local v21, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_f
    move-exception v0

    move-object/from16 v22, v21

    move-object/from16 v21, v6

    move-object v2, v0

    move-object v1, v5

    move-object/from16 v23, v22

    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v6    # "userToken":Ljava/lang/Object;
    .local v21, "userToken":Ljava/lang/Object;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_17

    .line 367
    .end local v21    # "userToken":Ljava/lang/Object;
    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "userToken":Ljava/lang/Object;
    :catch_10
    move-exception v0

    move-object/from16 v21, v6

    move-object v2, v0

    move-object/from16 v23, v3

    move-object v1, v5

    .end local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v6    # "userToken":Ljava/lang/Object;
    .restart local v21    # "userToken":Ljava/lang/Object;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_13

    .line 358
    .end local v21    # "userToken":Ljava/lang/Object;
    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "userToken":Ljava/lang/Object;
    :catch_11
    move-exception v0

    move-object/from16 v21, v6

    move-object v2, v0

    move-object/from16 v23, v3

    move-object v1, v5

    .end local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v6    # "userToken":Ljava/lang/Object;
    .restart local v21    # "userToken":Ljava/lang/Object;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_14

    .line 349
    .end local v21    # "userToken":Ljava/lang/Object;
    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "userToken":Ljava/lang/Object;
    :catch_12
    move-exception v0

    move-object/from16 v21, v6

    move-object v2, v0

    move-object/from16 v23, v3

    move-object v1, v5

    .end local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v6    # "userToken":Ljava/lang/Object;
    .restart local v21    # "userToken":Ljava/lang/Object;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_15

    .line 346
    .end local v21    # "userToken":Ljava/lang/Object;
    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "userToken":Ljava/lang/Object;
    :catch_13
    move-exception v0

    move-object/from16 v21, v6

    move-object v2, v0

    move-object/from16 v23, v3

    move-object v1, v5

    .end local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v6    # "userToken":Ljava/lang/Object;
    .restart local v21    # "userToken":Ljava/lang/Object;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_16

    .line 341
    .end local v21    # "userToken":Ljava/lang/Object;
    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "userToken":Ljava/lang/Object;
    :catch_14
    move-exception v0

    move-object/from16 v21, v6

    move-object v2, v0

    move-object/from16 v23, v3

    move-object v1, v5

    .end local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v6    # "userToken":Ljava/lang/Object;
    .restart local v21    # "userToken":Ljava/lang/Object;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_17

    .line 233
    .end local v21    # "userToken":Ljava/lang/Object;
    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v2, "execCount":I
    .restart local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "userToken":Ljava/lang/Object;
    :cond_d
    move/from16 v20, v2

    move-object/from16 v22, v3

    move-object v8, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    .line 245
    .end local v2    # "execCount":I
    .end local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v6    # "userToken":Ljava/lang/Object;
    .restart local v20    # "execCount":I
    .restart local v21    # "userToken":Ljava/lang/Object;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :goto_8
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getSocketTimeout()I

    move-result v1
    :try_end_7
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_7 .. :try_end_7} :catch_55
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_7 .. :try_end_7} :catch_54
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_53
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_52
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_51

    move v6, v1

    .line 246
    .local v6, "timeout":I
    if-ltz v6, :cond_e

    .line 247
    move-object/from16 v5, v22

    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v5, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :try_start_8
    invoke-interface {v5, v6}, Lcz/msebera/android/httpclient/HttpClientConnection;->setSocketTimeout(I)V

    goto :goto_9

    .line 367
    .end local v6    # "timeout":I
    .end local v20    # "execCount":I
    :catch_15
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    goto/16 :goto_13

    .line 358
    :catch_16
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    goto/16 :goto_14

    .line 349
    :catch_17
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    goto/16 :goto_15

    .line 346
    :catch_18
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    goto/16 :goto_16

    .line 341
    :catch_19
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    goto/16 :goto_17

    .line 246
    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v6    # "timeout":I
    .restart local v20    # "execCount":I
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :cond_e
    move-object/from16 v5, v22

    .line 250
    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :goto_9
    if-eqz v11, :cond_10

    invoke-interface/range {p4 .. p4}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_a

    .line 251
    :cond_f
    new-instance v1, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    invoke-direct {v1, v8}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v14    # "targetAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .end local v15    # "proxyAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .end local v16    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .end local v19    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .end local v21    # "userToken":Ljava/lang/Object;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local p1    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local p2    # "request":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .end local p3    # "context":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .end local p4    # "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    throw v1
    :try_end_8
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_16
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_15

    .line 254
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v14    # "targetAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .restart local v15    # "proxyAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .restart local v16    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .restart local v19    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .restart local v21    # "userToken":Ljava/lang/Object;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local p1    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local p2    # "request":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .restart local p3    # "context":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .restart local p4    # "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    :cond_10
    :goto_a
    :try_start_9
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1
    :try_end_9
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_9 .. :try_end_9} :catch_50
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_9 .. :try_end_9} :catch_4f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4d
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_4c

    if-eqz v1, :cond_11

    .line 255
    :try_start_a
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_a
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_a .. :try_end_a} :catch_19
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_a .. :try_end_a} :catch_18
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_16
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_15

    .line 258
    :cond_11
    :try_start_b
    invoke-virtual {v9, v13}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v1
    :try_end_b
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_b .. :try_end_b} :catch_50
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_b .. :try_end_b} :catch_4f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4d
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_4c

    if-nez v1, :cond_13

    .line 259
    :try_start_c
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 260
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target auth state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 262
    :cond_12
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    invoke-virtual {v1, v9, v14, v10}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->generateAuthResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    :try_end_c
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_c .. :try_end_c} :catch_19
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_c .. :try_end_c} :catch_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_16
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_15

    .line 264
    :cond_13
    :try_start_d
    invoke-virtual {v9, v12}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v1
    :try_end_d
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_d .. :try_end_d} :catch_50
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_d .. :try_end_d} :catch_4f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4d
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_4c

    if-nez v1, :cond_15

    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_15

    .line 265
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 266
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy auth state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 268
    :cond_14
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    invoke-virtual {v1, v9, v15, v10}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->generateAuthResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    :try_end_e
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_e .. :try_end_e} :catch_19
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_e .. :try_end_e} :catch_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_16
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_15

    .line 271
    :cond_15
    :try_start_f
    const-string v1, "http.request"

    invoke-virtual {v10, v1, v9}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-virtual {v1, v9, v5, v10}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v1

    move-object v4, v1

    .line 275
    .local v4, "response":Lcz/msebera/android/httpclient/HttpResponse;
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {v1, v4, v10}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v1
    :try_end_f
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_f .. :try_end_f} :catch_50
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_f .. :try_end_f} :catch_4f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_4d
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_4c

    if-eqz v1, :cond_18

    .line 277
    :try_start_10
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v1, v4, v10}, Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)J

    move-result-wide v1

    .line 278
    .local v1, "duration":J
    iget-object v3, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3
    :try_end_10
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_10 .. :try_end_10} :catch_32
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_10 .. :try_end_10} :catch_31
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2f
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_2e

    if-eqz v3, :cond_17

    .line 280
    cmp-long v3, v1, v17

    if-lez v3, :cond_16

    .line 281
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v4

    .end local v4    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .local v22, "response":Lcz/msebera/android/httpclient/HttpResponse;
    const-string v4, "for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_11
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_11 .. :try_end_11} :catch_19
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_11 .. :try_end_11} :catch_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_15

    .local v3, "s":Ljava/lang/String;
    goto :goto_b

    .line 283
    .end local v3    # "s":Ljava/lang/String;
    .end local v22    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v4    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    :cond_16
    move-object/from16 v22, v4

    .end local v4    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v22    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    :try_start_12
    const-string v3, "indefinitely"

    .line 285
    .restart local v3    # "s":Ljava/lang/String;
    :goto_b
    iget-object v4, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;
    :try_end_12
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_12 .. :try_end_12} :catch_23
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_12 .. :try_end_12} :catch_22
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_20
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_12} :catch_1f

    move-object/from16 v24, v5

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v24, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :try_start_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v6

    .end local v6    # "timeout":I
    .local v25, "timeout":I
    const-string v6, "Connection can be kept alive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_13
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_13 .. :try_end_13} :catch_1e
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_13 .. :try_end_13} :catch_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_13} :catch_1a

    goto/16 :goto_c

    .line 367
    .end local v1    # "duration":J
    .end local v3    # "s":Ljava/lang/String;
    .end local v20    # "execCount":I
    .end local v22    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v25    # "timeout":I
    :catch_1a
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v24

    goto/16 :goto_13

    .line 358
    :catch_1b
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v24

    goto/16 :goto_14

    .line 349
    :catch_1c
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v24

    goto/16 :goto_15

    .line 346
    :catch_1d
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v24

    goto/16 :goto_16

    .line 341
    :catch_1e
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v24

    goto/16 :goto_17

    .line 367
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_1f
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_13

    .line 358
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_20
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_14

    .line 349
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_21
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_15

    .line 346
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_22
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_16

    .line 341
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_23
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_17

    .line 278
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "duration":J
    .restart local v4    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v6    # "timeout":I
    .restart local v20    # "execCount":I
    :cond_17
    move-object/from16 v22, v4

    move-object/from16 v24, v5

    move/from16 v25, v6

    .line 287
    .end local v4    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v6    # "timeout":I
    .restart local v22    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v25    # "timeout":I
    :goto_c
    :try_start_14
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_14
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_14 .. :try_end_14} :catch_2d
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_14 .. :try_end_14} :catch_2c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2b
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_2a
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_14} :catch_29

    move-object/from16 v6, v23

    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v6, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :try_start_15
    invoke-virtual {v6, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->setValidFor(JLjava/util/concurrent/TimeUnit;)V

    .line 288
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->markReusable()V
    :try_end_15
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_15 .. :try_end_15} :catch_28
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_15 .. :try_end_15} :catch_27
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_25
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_15} :catch_24

    .line 289
    .end local v1    # "duration":J
    goto/16 :goto_d

    .line 367
    .end local v20    # "execCount":I
    .end local v22    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v25    # "timeout":I
    :catch_24
    move-exception v0

    move-object v2, v0

    move-object v1, v6

    move-object/from16 v6, v21

    move-object/from16 v23, v24

    goto/16 :goto_13

    .line 358
    :catch_25
    move-exception v0

    move-object v2, v0

    move-object v1, v6

    move-object/from16 v6, v21

    move-object/from16 v23, v24

    goto/16 :goto_14

    .line 349
    :catch_26
    move-exception v0

    move-object v2, v0

    move-object v1, v6

    move-object/from16 v6, v21

    move-object/from16 v23, v24

    goto/16 :goto_15

    .line 346
    :catch_27
    move-exception v0

    move-object v2, v0

    move-object v1, v6

    move-object/from16 v6, v21

    move-object/from16 v23, v24

    goto/16 :goto_16

    .line 341
    :catch_28
    move-exception v0

    move-object v2, v0

    move-object v1, v6

    move-object/from16 v6, v21

    move-object/from16 v23, v24

    goto/16 :goto_17

    .line 367
    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_29
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v24

    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_13

    .line 358
    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_2a
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v24

    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_14

    .line 349
    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_2b
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v24

    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_15

    .line 346
    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_2c
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v24

    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_16

    .line 341
    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_2d
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v24

    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_17

    .line 367
    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_2e
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_13

    .line 358
    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_2f
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_14

    .line 349
    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_30
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_15

    .line 346
    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_31
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_16

    .line 341
    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_32
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_17

    .line 290
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v4    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v6, "timeout":I
    .restart local v20    # "execCount":I
    .restart local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :cond_18
    move-object/from16 v22, v4

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v6, v23

    .end local v4    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v23    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v6, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v22    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v25    # "timeout":I
    :try_start_16
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->markNonReusable()V
    :try_end_16
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_16 .. :try_end_16} :catch_4b
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_16 .. :try_end_16} :catch_4a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_49
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_48
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_16} :catch_47

    .line 293
    :goto_d
    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p1

    move-object/from16 v23, v24

    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v23, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    move-object/from16 v5, v22

    move-object/from16 v24, v6

    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v24, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    move-object/from16 v6, p3

    :try_start_17
    invoke-direct/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->needAuthentication(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z

    move-result v1
    :try_end_17
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_17 .. :try_end_17} :catch_46
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_17 .. :try_end_17} :catch_45
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_44
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_43
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_17} :catch_42

    if-eqz v1, :cond_1e

    .line 296
    :try_start_18
    invoke-interface/range {v22 .. v22}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v1

    .line 297
    .local v1, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    invoke-virtual/range {v24 .. v24}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->isReusable()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 298
    invoke-static {v1}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    goto :goto_e

    .line 300
    :cond_19
    invoke-interface/range {v23 .. v23}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    .line 301
    invoke-virtual {v15}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v2

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->SUCCESS:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    if-ne v2, v3, :cond_1a

    .line 302
    invoke-virtual {v15}, Lcz/msebera/android/httpclient/auth/AuthState;->isConnectionBased()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 303
    iget-object v2, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Resetting proxy auth state"

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 304
    invoke-virtual {v15}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 306
    :cond_1a
    invoke-virtual {v14}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v2

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->SUCCESS:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    if-ne v2, v3, :cond_1b

    .line 307
    invoke-virtual {v14}, Lcz/msebera/android/httpclient/auth/AuthState;->isConnectionBased()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 308
    iget-object v2, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Resetting target auth state"

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 309
    invoke-virtual {v14}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 313
    :cond_1b
    :goto_e
    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v2

    .line 314
    .local v2, "original":Lcz/msebera/android/httpclient/HttpRequest;
    invoke-interface {v2, v13}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 315
    invoke-virtual {v9, v13}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 317
    :cond_1c
    invoke-interface {v2, v12}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 318
    invoke-virtual {v9, v12}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 222
    .end local v1    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    .end local v2    # "original":Lcz/msebera/android/httpclient/HttpRequest;
    .end local v25    # "timeout":I
    :cond_1d
    add-int/lit8 v2, v20, 0x1

    move-object v4, v8

    move-object/from16 v6, v21

    move-object/from16 v3, v23

    move-object/from16 v5, v24

    move-object/from16 v8, p1

    .end local v20    # "execCount":I
    .local v2, "execCount":I
    goto/16 :goto_5

    .line 293
    .end local v2    # "execCount":I
    .restart local v20    # "execCount":I
    .restart local v25    # "timeout":I
    :cond_1e
    move-object/from16 v2, v22

    .line 325
    .end local v20    # "execCount":I
    .end local v22    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v25    # "timeout":I
    .local v2, "response":Lcz/msebera/android/httpclient/HttpResponse;
    :goto_f
    if-nez v21, :cond_1f

    .line 326
    iget-object v1, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    invoke-interface {v1, v10}, Lcz/msebera/android/httpclient/client/UserTokenHandler;->getUserToken(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v1
    :try_end_18
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_18 .. :try_end_18} :catch_3c
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_18 .. :try_end_18} :catch_3b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_39
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_18} :catch_38

    move-object v6, v1

    .line 327
    .end local v21    # "userToken":Ljava/lang/Object;
    .local v6, "userToken":Ljava/lang/Object;
    :try_start_19
    const-string v1, "http.user-token"

    invoke-virtual {v10, v1, v6}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_19
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_19 .. :try_end_19} :catch_37
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_19 .. :try_end_19} :catch_36
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_34
    .catch Ljava/lang/Error; {:try_start_19 .. :try_end_19} :catch_33

    goto :goto_10

    .line 367
    .end local v2    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    :catch_33
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v24

    goto/16 :goto_13

    .line 358
    :catch_34
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v24

    goto/16 :goto_14

    .line 349
    :catch_35
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v24

    goto/16 :goto_15

    .line 346
    :catch_36
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v24

    goto/16 :goto_16

    .line 341
    :catch_37
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v24

    goto/16 :goto_17

    .line 367
    .end local v6    # "userToken":Ljava/lang/Object;
    .restart local v21    # "userToken":Ljava/lang/Object;
    :catch_38
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v24

    goto/16 :goto_13

    .line 358
    :catch_39
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v24

    goto/16 :goto_14

    .line 349
    :catch_3a
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v24

    goto/16 :goto_15

    .line 346
    :catch_3b
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v24

    goto/16 :goto_16

    .line 341
    :catch_3c
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v21

    move-object/from16 v1, v24

    goto/16 :goto_17

    .line 325
    .restart local v2    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    :cond_1f
    move-object/from16 v6, v21

    .line 329
    .end local v21    # "userToken":Ljava/lang/Object;
    .restart local v6    # "userToken":Ljava/lang/Object;
    :goto_10
    if-eqz v6, :cond_20

    .line 330
    move-object/from16 v1, v24

    .end local v24    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v1, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :try_start_1a
    invoke-virtual {v1, v6}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->setState(Ljava/lang/Object;)V

    goto :goto_11

    .line 329
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v24    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :cond_20
    move-object/from16 v1, v24

    .line 334
    .end local v24    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :goto_11
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    .line 335
    .local v3, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    if-eqz v3, :cond_22

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_12

    .line 340
    :cond_21
    new-instance v4, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;

    invoke-direct {v4, v2, v1}, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;-><init>(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V

    return-object v4

    .line 337
    :cond_22
    :goto_12
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->releaseConnection()V

    .line 338
    new-instance v4, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;-><init>(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V
    :try_end_1a
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_1a .. :try_end_1a} :catch_41
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_1a .. :try_end_1a} :catch_40
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3f
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_3e
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_1a} :catch_3d

    return-object v4

    .line 367
    .end local v2    # "response":Lcz/msebera/android/httpclient/HttpResponse;
    .end local v3    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    :catch_3d
    move-exception v0

    move-object v2, v0

    goto/16 :goto_13

    .line 358
    :catch_3e
    move-exception v0

    move-object v2, v0

    goto/16 :goto_14

    .line 349
    :catch_3f
    move-exception v0

    move-object v2, v0

    goto/16 :goto_15

    .line 346
    :catch_40
    move-exception v0

    move-object v2, v0

    goto/16 :goto_16

    .line 341
    :catch_41
    move-exception v0

    move-object v2, v0

    goto/16 :goto_17

    .line 367
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v6    # "userToken":Ljava/lang/Object;
    .restart local v21    # "userToken":Ljava/lang/Object;
    .restart local v24    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_42
    move-exception v0

    move-object/from16 v1, v24

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v24    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_13

    .line 358
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v24    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_43
    move-exception v0

    move-object/from16 v1, v24

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v24    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_14

    .line 349
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v24    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_44
    move-exception v0

    move-object/from16 v1, v24

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v24    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_15

    .line 346
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v24    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_45
    move-exception v0

    move-object/from16 v1, v24

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v24    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_16

    .line 341
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v24    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_46
    move-exception v0

    move-object/from16 v1, v24

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v24    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    goto/16 :goto_17

    .line 367
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v6, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v24, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_47
    move-exception v0

    move-object v1, v6

    move-object/from16 v23, v24

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_13

    .line 358
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_48
    move-exception v0

    move-object v1, v6

    move-object/from16 v23, v24

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_14

    .line 349
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_49
    move-exception v0

    move-object v1, v6

    move-object/from16 v23, v24

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_15

    .line 346
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_4a
    move-exception v0

    move-object v1, v6

    move-object/from16 v23, v24

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_16

    .line 341
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :catch_4b
    move-exception v0

    move-object v1, v6

    move-object/from16 v23, v24

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v6    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v24    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_17

    .line 367
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v23, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_4c
    move-exception v0

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v23, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_13

    .line 358
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v23, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_4d
    move-exception v0

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v23, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_14

    .line 349
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v23, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_4e
    move-exception v0

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v23, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_15

    .line 346
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v23, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_4f
    move-exception v0

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v23, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_16

    .line 341
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v23, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_50
    move-exception v0

    move-object/from16 v1, v23

    move-object/from16 v23, v5

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v5    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v23, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto/16 :goto_17

    .line 367
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v22, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v23, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_51
    move-exception v0

    move-object/from16 v1, v23

    move-object/from16 v23, v22

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v23, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto :goto_13

    .line 358
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v23, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_52
    move-exception v0

    move-object/from16 v1, v23

    move-object/from16 v23, v22

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v23, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto :goto_14

    .line 349
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v23, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_53
    move-exception v0

    move-object/from16 v1, v23

    move-object/from16 v23, v22

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v23, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto :goto_15

    .line 346
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v23, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_54
    move-exception v0

    move-object/from16 v1, v23

    move-object/from16 v23, v22

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v23, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto :goto_16

    .line 341
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v23, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_55
    move-exception v0

    move-object/from16 v1, v23

    move-object/from16 v23, v22

    move-object v2, v0

    move-object/from16 v6, v21

    .end local v22    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v23, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    goto :goto_17

    .line 367
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v21    # "userToken":Ljava/lang/Object;
    .end local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v3, "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v5, "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v6, "userToken":Ljava/lang/Object;
    :catch_56
    move-exception v0

    move-object/from16 v23, v3

    move-object v1, v5

    move-object/from16 v21, v6

    move-object v2, v0

    .line 368
    .end local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v2, "error":Ljava/lang/Error;
    .restart local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :goto_13
    iget-object v3, v7, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->shutdown()V

    .line 369
    throw v2

    .line 358
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v2    # "error":Ljava/lang/Error;
    .end local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_57
    move-exception v0

    move-object/from16 v23, v3

    move-object v1, v5

    move-object/from16 v21, v6

    move-object v2, v0

    .line 359
    .end local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v2, "ex":Ljava/lang/RuntimeException;
    .restart local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :goto_14
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 360
    invoke-virtual {v15}, Lcz/msebera/android/httpclient/auth/AuthState;->isConnectionBased()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 361
    invoke-virtual {v15}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 363
    :cond_23
    invoke-virtual {v14}, Lcz/msebera/android/httpclient/auth/AuthState;->isConnectionBased()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 364
    invoke-virtual {v14}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 366
    :cond_24
    throw v2

    .line 349
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .end local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_58
    move-exception v0

    move-object/from16 v23, v3

    move-object v1, v5

    move-object/from16 v21, v6

    move-object v2, v0

    .line 350
    .end local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v2, "ex":Ljava/io/IOException;
    .restart local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :goto_15
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 351
    invoke-virtual {v15}, Lcz/msebera/android/httpclient/auth/AuthState;->isConnectionBased()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 352
    invoke-virtual {v15}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 354
    :cond_25
    invoke-virtual {v14}, Lcz/msebera/android/httpclient/auth/AuthState;->isConnectionBased()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 355
    invoke-virtual {v14}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 357
    :cond_26
    throw v2

    .line 346
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_59
    move-exception v0

    move-object/from16 v23, v3

    move-object v1, v5

    move-object/from16 v21, v6

    move-object v2, v0

    .line 347
    .end local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v2, "ex":Lcz/msebera/android/httpclient/HttpException;
    .restart local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :goto_16
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 348
    throw v2

    .line 341
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v2    # "ex":Lcz/msebera/android/httpclient/HttpException;
    .end local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .restart local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    :catch_5a
    move-exception v0

    move-object/from16 v23, v3

    move-object v1, v5

    move-object/from16 v21, v6

    move-object v2, v0

    .line 342
    .end local v3    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .end local v5    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .restart local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .local v2, "ex":Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;
    .restart local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    :goto_17
    new-instance v3, Ljava/io/InterruptedIOException;

    const-string v4, "Connection has been shut down"

    invoke-direct {v3, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 344
    .local v3, "ioex":Ljava/io/InterruptedIOException;
    invoke-virtual {v3, v2}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 345
    throw v3

    .line 194
    .end local v1    # "connHolder":Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
    .end local v2    # "ex":Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;
    .end local v3    # "ioex":Ljava/io/InterruptedIOException;
    .end local v19    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .end local v23    # "managedConn":Lcz/msebera/android/httpclient/HttpClientConnection;
    .local v5, "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    :catch_5b
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move-object v1, v0

    .line 195
    .end local v5    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .local v1, "ex":Ljava/util/concurrent/ExecutionException;
    .restart local v19    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .restart local v21    # "userToken":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 196
    .local v2, "cause":Ljava/lang/Throwable;
    if-nez v2, :cond_27

    .line 197
    move-object v2, v1

    .line 199
    :cond_27
    new-instance v3, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    const-string v4, "Request execution failed"

    invoke-direct {v3, v4, v2}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 191
    .end local v1    # "ex":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v19    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .end local v21    # "userToken":Ljava/lang/Object;
    .restart local v5    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .restart local v6    # "userToken":Ljava/lang/Object;
    :catch_5c
    move-exception v0

    move-object v8, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move-object v1, v0

    .line 192
    .end local v5    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .end local v6    # "userToken":Ljava/lang/Object;
    .local v1, "interrupted":Ljava/lang/InterruptedException;
    .restart local v19    # "connRequest":Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .restart local v21    # "userToken":Ljava/lang/Object;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 193
    new-instance v2, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    invoke-direct {v2, v8, v1}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

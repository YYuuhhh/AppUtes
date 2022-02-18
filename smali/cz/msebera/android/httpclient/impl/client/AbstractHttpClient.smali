.class public abstract Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
.super Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
.source "AbstractHttpClient.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

.field private connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

.field private connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

.field private cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

.field private credsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

.field private defaultParams:Lcz/msebera/android/httpclient/params/HttpParams;

.field private keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private mutableProcessor:Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

.field private protocolProcessor:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

.field private proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

.field private requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field private retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

.field private reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

.field private supportedAuthSchemes:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

.field private supportedCookieSpecs:Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

.field private targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;


# direct methods
.method protected constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 2
    .param p1, "conman"    # Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .param p2, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 232
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;-><init>()V

    .line 201
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 233
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->defaultParams:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 234
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 235
    return-void
.end method

.method private declared-synchronized getProtocolProcessor()Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .locals 7

    monitor-enter p0

    .line 673
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->protocolProcessor:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    if-nez v0, :cond_2

    .line 675
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 677
    .local v0, "proc":Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->getRequestInterceptorCount()I

    move-result v1

    .line 678
    .local v1, "reqc":I
    new-array v2, v1, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 679
    .local v2, "reqinterceptors":[Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 680
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->getRequestInterceptor(I)Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    move-result-object v4

    aput-object v4, v2, v3

    .line 679
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 682
    .end local v3    # "i":I
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->getResponseInterceptorCount()I

    move-result v3

    .line 683
    .local v3, "resc":I
    new-array v4, v3, [Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 684
    .local v4, "resinterceptors":[Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 685
    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->getResponseInterceptor(I)Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    move-result-object v6

    aput-object v6, v4, v5

    .line 684
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 687
    .end local v5    # "i":I
    :cond_1
    new-instance v5, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    invoke-direct {v5, v2, v4}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>([Lcz/msebera/android/httpclient/HttpRequestInterceptor;[Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V

    iput-object v5, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->protocolProcessor:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    .line 689
    .end local v0    # "proc":Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
    .end local v1    # "reqc":I
    .end local v2    # "reqinterceptors":[Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    .end local v3    # "resc":I
    .end local v4    # "resinterceptors":[Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->protocolProcessor:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addRequestInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    monitor-enter p0

    .line 729
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->protocolProcessor:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    monitor-exit p0

    return-void

    .line 728
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "itcp":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRequestInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;I)V
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    .param p2, "index"    # I

    monitor-enter p0

    .line 734
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;I)V

    .line 735
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->protocolProcessor:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    monitor-exit p0

    return-void

    .line 733
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "itcp":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    .end local p2    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addResponseInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    monitor-enter p0

    .line 709
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V

    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->protocolProcessor:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    monitor-exit p0

    return-void

    .line 708
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "itcp":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addResponseInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;I)V
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    .param p2, "index"    # I

    monitor-enter p0

    .line 714
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->addInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;I)V

    .line 715
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->protocolProcessor:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    monitor-exit p0

    return-void

    .line 713
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "itcp":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    .end local p2    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearRequestInterceptors()V
    .locals 1

    monitor-enter p0

    .line 739
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->clearRequestInterceptors()V

    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->protocolProcessor:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    monitor-exit p0

    return-void

    .line 738
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearResponseInterceptors()V
    .locals 1

    monitor-enter p0

    .line 719
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->clearResponseInterceptors()V

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->protocolProcessor:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    monitor-exit p0

    return-void

    .line 718
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1

    .line 961
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->shutdown()V

    .line 962
    return-void
.end method

.method protected createAuthSchemeRegistry()Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;
    .locals 3

    .line 304
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;-><init>()V

    .line 305
    .local v0, "registry":Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;-><init>()V

    const-string v2, "Basic"

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V

    .line 308
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;-><init>()V

    const-string v2, "Digest"

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V

    .line 311
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;-><init>()V

    const-string v2, "NTLM"

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V

    .line 316
    return-object v0
.end method

.method protected createClientConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .locals 10

    .line 266
    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;->createDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 268
    .local v0, "registry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    const/4 v1, 0x0

    .line 269
    .local v1, "connManager":Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v2

    .line 271
    .local v2, "params":Lcz/msebera/android/httpclient/params/HttpParams;
    const/4 v3, 0x0

    .line 273
    .local v3, "factory":Lcz/msebera/android/httpclient/conn/ClientConnectionManagerFactory;
    const-string v4, "http.connection-manager.factory-class-name"

    invoke-interface {v2, v4}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    .local v4, "className":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 276
    .local v5, "contextLoader":Ljava/lang/ClassLoader;
    if-eqz v4, :cond_1

    .line 279
    if-eqz v5, :cond_0

    .line 280
    const/4 v6, 0x1

    :try_start_0
    invoke-static {v4, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 282
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 284
    .restart local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcz/msebera/android/httpclient/conn/ClientConnectionManagerFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v7

    .line 291
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 289
    :catch_0
    move-exception v6

    .line 290
    .local v6, "ex":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/InstantiationError;

    invoke-virtual {v6}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 287
    .end local v6    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v6

    .line 288
    .local v6, "ex":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/IllegalAccessError;

    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 285
    .end local v6    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v6

    .line 286
    .local v6, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid class name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 293
    .end local v6    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 294
    invoke-interface {v3, v2, v0}, Lcz/msebera/android/httpclient/conn/ClientConnectionManagerFactory;->newInstance(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v1

    goto :goto_2

    .line 296
    :cond_2
    new-instance v6, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;

    invoke-direct {v6, v0}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    move-object v1, v6

    .line 299
    :goto_2
    return-object v1
.end method

.method protected createClientRequestDirector(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/client/RequestDirector;
    .locals 14
    .param p1, "requestExec"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .param p2, "conman"    # Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .param p3, "reustrat"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .param p4, "kastrat"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .param p5, "rouplan"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .param p6, "httpProcessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .param p7, "retryHandler"    # Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    .param p8, "redirectHandler"    # Lcz/msebera/android/httpclient/client/RedirectHandler;
    .param p9, "targetAuthHandler"    # Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .param p10, "proxyAuthHandler"    # Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .param p11, "userTokenHandler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;
    .param p12, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 856
    new-instance v13, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v13
.end method

.method protected createClientRequestDirector(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/client/RequestDirector;
    .locals 16
    .param p1, "requestExec"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .param p2, "conman"    # Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .param p3, "reustrat"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .param p4, "kastrat"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .param p5, "rouplan"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .param p6, "httpProcessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .param p7, "retryHandler"    # Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    .param p8, "redirectStrategy"    # Lcz/msebera/android/httpclient/client/RedirectStrategy;
    .param p9, "targetAuthHandler"    # Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .param p10, "proxyAuthHandler"    # Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .param p11, "userTokenHandler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;
    .param p12, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 888
    new-instance v14, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;

    move-object/from16 v15, p0

    iget-object v1, v15, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object v0, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v14
.end method

.method protected createClientRequestDirector(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/client/RequestDirector;
    .locals 16
    .param p1, "requestExec"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .param p2, "conman"    # Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .param p3, "reustrat"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .param p4, "kastrat"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .param p5, "rouplan"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .param p6, "httpProcessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .param p7, "retryHandler"    # Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    .param p8, "redirectStrategy"    # Lcz/msebera/android/httpclient/client/RedirectStrategy;
    .param p9, "targetAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p10, "proxyAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p11, "userTokenHandler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;
    .param p12, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 921
    new-instance v14, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;

    move-object/from16 v15, p0

    iget-object v1, v15, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object v0, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v14
.end method

.method protected createConnectionKeepAliveStrategy()Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .locals 1

    .line 355
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    return-object v0
.end method

.method protected createConnectionReuseStrategy()Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .locals 1

    .line 351
    new-instance v0, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-object v0
.end method

.method protected createCookieSpecRegistry()Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;
    .locals 3

    .line 321
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;-><init>()V

    .line 322
    .local v0, "registry":Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;-><init>()V

    const-string v2, "default"

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;)V

    .line 325
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;-><init>()V

    const-string v2, "best-match"

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;)V

    .line 328
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory;-><init>()V

    const-string v2, "compatibility"

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;)V

    .line 331
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;-><init>()V

    const-string v2, "netscape"

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;)V

    .line 334
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/RFC2109SpecFactory;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109SpecFactory;-><init>()V

    const-string v2, "rfc2109"

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;)V

    .line 337
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecFactory;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecFactory;-><init>()V

    const-string v2, "rfc2965"

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;)V

    .line 340
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecFactory;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecFactory;-><init>()V

    const-string v2, "ignoreCookies"

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;)V

    .line 343
    return-object v0
.end method

.method protected createCookieStore()Lcz/msebera/android/httpclient/client/CookieStore;
    .locals 1

    .line 395
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;-><init>()V

    return-object v0
.end method

.method protected createCredentialsProvider()Lcz/msebera/android/httpclient/client/CredentialsProvider;
    .locals 1

    .line 399
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;-><init>()V

    return-object v0
.end method

.method protected createHttpContext()Lcz/msebera/android/httpclient/protocol/HttpContext;
    .locals 3

    .line 245
    new-instance v0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    .line 246
    .local v0, "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    nop

    .line 248
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v1

    .line 246
    const-string v2, "http.scheme-registry"

    invoke-interface {v0, v2, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    nop

    .line 251
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getAuthSchemes()Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    move-result-object v1

    .line 249
    const-string v2, "http.authscheme-registry"

    invoke-interface {v0, v2, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    nop

    .line 254
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getCookieSpecs()Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

    move-result-object v1

    .line 252
    const-string v2, "http.cookiespec-registry"

    invoke-interface {v0, v2, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    nop

    .line 257
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getCookieStore()Lcz/msebera/android/httpclient/client/CookieStore;

    move-result-object v1

    .line 255
    const-string v2, "http.cookie-store"

    invoke-interface {v0, v2, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    nop

    .line 260
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getCredentialsProvider()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v1

    .line 258
    const-string v2, "http.auth.credentials-provider"

    invoke-interface {v0, v2, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    return-object v0
.end method

.method protected abstract createHttpParams()Lcz/msebera/android/httpclient/params/HttpParams;
.end method

.method protected abstract createHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
.end method

.method protected createHttpRequestRetryHandler()Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    .locals 1

    .line 359
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    return-object v0
.end method

.method protected createHttpRoutePlanner()Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .locals 2

    .line 403
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpRoutePlanner;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected createProxyAuthenticationHandler()Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 391
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultProxyAuthenticationHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultProxyAuthenticationHandler;-><init>()V

    return-object v0
.end method

.method protected createProxyAuthenticationStrategy()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .locals 1

    .line 383
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;-><init>()V

    return-object v0
.end method

.method protected createRedirectHandler()Lcz/msebera/android/httpclient/client/RedirectHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;-><init>()V

    return-object v0
.end method

.method protected createRequestExecutor()Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .locals 1

    .line 347
    new-instance v0, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>()V

    return-object v0
.end method

.method protected createTargetAuthenticationHandler()Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 379
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultTargetAuthenticationHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultTargetAuthenticationHandler;-><init>()V

    return-object v0
.end method

.method protected createTargetAuthenticationStrategy()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .locals 1

    .line 371
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;-><init>()V

    return-object v0
.end method

.method protected createUserTokenHandler()Lcz/msebera/android/httpclient/client/UserTokenHandler;
    .locals 1

    .line 407
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;-><init>()V

    return-object v0
.end method

.method protected determineParams(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/params/HttpParams;
    .locals 4
    .param p1, "req"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 954
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;

    .line 955
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 954
    return-object v0
.end method

.method protected final doExecute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 26
    .param p1, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    .line 753
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    const-string v0, "HTTP request"

    invoke-static {v12, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 757
    const/4 v1, 0x0

    .line 758
    .local v1, "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    const/16 v16, 0x0

    .line 759
    .local v16, "director":Lcz/msebera/android/httpclient/client/RequestDirector;
    const/16 v17, 0x0

    .line 760
    .local v17, "routePlanner":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    const/16 v18, 0x0

    .line 761
    .local v18, "connectionBackoffStrategy":Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    const/16 v19, 0x0

    .line 765
    .local v19, "backoffManager":Lcz/msebera/android/httpclient/client/BackoffManager;
    monitor-enter p0

    .line 767
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createHttpContext()Lcz/msebera/android/httpclient/protocol/HttpContext;

    move-result-object v0

    .line 768
    .local v0, "defaultContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    if-nez v11, :cond_0

    .line 769
    move-object v1, v0

    move-object v10, v1

    goto :goto_0

    .line 771
    :cond_0
    new-instance v2, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;

    invoke-direct {v2, v11, v0}, Lcz/msebera/android/httpclient/protocol/DefaultedHttpContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v1, v2

    move-object v10, v1

    .line 773
    .end local v1    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .local v10, "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :goto_0
    :try_start_1
    invoke-virtual {v14, v12}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->determineParams(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v13

    .line 774
    .local v13, "params":Lcz/msebera/android/httpclient/params/HttpParams;
    invoke-static {v13}, Lcz/msebera/android/httpclient/client/params/HttpClientParamConfig;->getRequestConfig(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v1

    move-object v9, v1

    .line 775
    .local v9, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    const-string v1, "http.request-config"

    invoke-interface {v10, v1, v9}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 778
    nop

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getRequestExecutor()Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    move-result-object v2

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v3

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getConnectionReuseStrategy()Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    move-result-object v4

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getConnectionKeepAliveStrategy()Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    move-result-object v5

    .line 783
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getRoutePlanner()Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    move-result-object v6

    .line 784
    invoke-direct/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getProtocolProcessor()Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-result-object v7

    .line 785
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    move-result-object v8

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getRedirectStrategy()Lcz/msebera/android/httpclient/client/RedirectStrategy;

    move-result-object v20

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getTargetAuthenticationStrategy()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-result-object v21

    .line 788
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getProxyAuthenticationStrategy()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-result-object v22

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getUserTokenHandler()Lcz/msebera/android/httpclient/client/UserTokenHandler;

    move-result-object v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 778
    move-object/from16 v1, p0

    move-object/from16 v24, v9

    .end local v9    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .local v24, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    move-object/from16 v9, v20

    move-object/from16 v25, v10

    .end local v10    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .local v25, "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    :try_start_2
    invoke-virtual/range {v1 .. v13}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createClientRequestDirector(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/client/RequestDirector;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 791
    .end local v16    # "director":Lcz/msebera/android/httpclient/client/RequestDirector;
    .local v1, "director":Lcz/msebera/android/httpclient/client/RequestDirector;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getRoutePlanner()Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 792
    .end local v17    # "routePlanner":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .local v2, "routePlanner":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getConnectionBackoffStrategy()Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 793
    .end local v18    # "connectionBackoffStrategy":Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    .local v3, "connectionBackoffStrategy":Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getBackoffManager()Lcz/msebera/android/httpclient/client/BackoffManager;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 794
    .end local v0    # "defaultContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .end local v13    # "params":Lcz/msebera/android/httpclient/params/HttpParams;
    .end local v19    # "backoffManager":Lcz/msebera/android/httpclient/client/BackoffManager;
    .end local v24    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .local v4, "backoffManager":Lcz/msebera/android/httpclient/client/BackoffManager;
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 797
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 798
    if-eqz v15, :cond_1

    move-object/from16 v5, p2

    move-object v0, v15

    goto :goto_1

    .line 799
    :cond_1
    move-object/from16 v5, p2

    :try_start_7
    invoke-virtual {v14, v5}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->determineParams(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    const-string v6, "http.default-host"

    invoke-interface {v0, v6}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;
    :try_end_7
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_1
    move-object v6, v0

    .line 801
    .local v6, "targetForRoute":Lcz/msebera/android/httpclient/HttpHost;
    move-object/from16 v7, v25

    .end local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .local v7, "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :try_start_8
    invoke-interface {v2, v6, v5, v7}, Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;->determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0
    :try_end_8
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_8 .. :try_end_8} :catch_3

    move-object v8, v0

    .line 805
    .local v8, "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    nop

    .line 806
    :try_start_9
    invoke-interface {v1, v15, v5, v7}, Lcz/msebera/android/httpclient/client/RequestDirector;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    .line 805
    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;->newProxy(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_9 .. :try_end_9} :catch_3

    .line 823
    .local v0, "out":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    nop

    .line 824
    :try_start_a
    invoke-interface {v3, v0}, Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;->shouldBackoff(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 825
    invoke-interface {v4, v8}, Lcz/msebera/android/httpclient/client/BackoffManager;->backOff(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    goto :goto_2

    .line 827
    :cond_2
    invoke-interface {v4, v8}, Lcz/msebera/android/httpclient/client/BackoffManager;->probe(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 829
    :goto_2
    return-object v0

    .line 812
    .end local v0    # "out":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {v3, v0}, Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;->shouldBackoff(Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 814
    invoke-interface {v4, v8}, Lcz/msebera/android/httpclient/client/BackoffManager;->backOff(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 816
    :cond_3
    instance-of v9, v0, Lcz/msebera/android/httpclient/HttpException;

    if-nez v9, :cond_5

    .line 819
    instance-of v9, v0, Ljava/io/IOException;

    if-eqz v9, :cond_4

    .line 820
    move-object v9, v0

    check-cast v9, Ljava/io/IOException;

    .end local v1    # "director":Lcz/msebera/android/httpclient/client/RequestDirector;
    .end local v2    # "routePlanner":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .end local v3    # "connectionBackoffStrategy":Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    .end local v4    # "backoffManager":Lcz/msebera/android/httpclient/client/BackoffManager;
    .end local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .end local p1    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local p2    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .end local p3    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    throw v9

    .line 822
    .restart local v1    # "director":Lcz/msebera/android/httpclient/client/RequestDirector;
    .restart local v2    # "routePlanner":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .restart local v3    # "connectionBackoffStrategy":Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    .restart local v4    # "backoffManager":Lcz/msebera/android/httpclient/client/BackoffManager;
    .restart local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local p1    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local p2    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local p3    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :cond_4
    new-instance v9, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v9, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "director":Lcz/msebera/android/httpclient/client/RequestDirector;
    .end local v2    # "routePlanner":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .end local v3    # "connectionBackoffStrategy":Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    .end local v4    # "backoffManager":Lcz/msebera/android/httpclient/client/BackoffManager;
    .end local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .end local p1    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local p2    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .end local p3    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    throw v9

    .line 817
    .restart local v1    # "director":Lcz/msebera/android/httpclient/client/RequestDirector;
    .restart local v2    # "routePlanner":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .restart local v3    # "connectionBackoffStrategy":Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    .restart local v4    # "backoffManager":Lcz/msebera/android/httpclient/client/BackoffManager;
    .restart local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local p1    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local p2    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local p3    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :cond_5
    move-object v9, v0

    check-cast v9, Lcz/msebera/android/httpclient/HttpException;

    .end local v1    # "director":Lcz/msebera/android/httpclient/client/RequestDirector;
    .end local v2    # "routePlanner":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .end local v3    # "connectionBackoffStrategy":Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    .end local v4    # "backoffManager":Lcz/msebera/android/httpclient/client/BackoffManager;
    .end local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .end local p1    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local p2    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .end local p3    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    throw v9

    .line 807
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "director":Lcz/msebera/android/httpclient/client/RequestDirector;
    .restart local v2    # "routePlanner":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .restart local v3    # "connectionBackoffStrategy":Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    .restart local v4    # "backoffManager":Lcz/msebera/android/httpclient/client/BackoffManager;
    .restart local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local p1    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local p2    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local p3    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :catch_1
    move-exception v0

    .line 808
    .local v0, "re":Ljava/lang/RuntimeException;
    invoke-interface {v3, v0}, Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;->shouldBackoff(Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 809
    invoke-interface {v4, v8}, Lcz/msebera/android/httpclient/client/BackoffManager;->backOff(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 811
    :cond_6
    nop

    .end local v1    # "director":Lcz/msebera/android/httpclient/client/RequestDirector;
    .end local v2    # "routePlanner":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .end local v3    # "connectionBackoffStrategy":Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    .end local v4    # "backoffManager":Lcz/msebera/android/httpclient/client/BackoffManager;
    .end local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .end local p1    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .end local p2    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .end local p3    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    throw v0

    .line 834
    .end local v0    # "re":Ljava/lang/RuntimeException;
    .end local v6    # "targetForRoute":Lcz/msebera/android/httpclient/HttpHost;
    .end local v8    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v1    # "director":Lcz/msebera/android/httpclient/client/RequestDirector;
    .restart local v2    # "routePlanner":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .restart local v3    # "connectionBackoffStrategy":Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    .restart local v4    # "backoffManager":Lcz/msebera/android/httpclient/client/BackoffManager;
    .restart local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local p1    # "target":Lcz/msebera/android/httpclient/HttpHost;
    .restart local p2    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local p3    # "context":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :catch_2
    move-exception v0

    move-object/from16 v7, v25

    .end local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    goto :goto_3

    .line 797
    .end local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :cond_7
    move-object/from16 v5, p2

    move-object/from16 v7, v25

    .line 831
    .end local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    nop

    .line 832
    invoke-interface {v1, v15, v5, v7}, Lcz/msebera/android/httpclient/client/RequestDirector;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    .line 831
    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;->newProxy(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0
    :try_end_a
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_a .. :try_end_a} :catch_3

    return-object v0

    .line 834
    :catch_3
    move-exception v0

    .line 835
    .local v0, "httpException":Lcz/msebera/android/httpclient/HttpException;
    :goto_3
    new-instance v6, Lcz/msebera/android/httpclient/client/ClientProtocolException;

    invoke-direct {v6, v0}, Lcz/msebera/android/httpclient/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 794
    .end local v0    # "httpException":Lcz/msebera/android/httpclient/HttpException;
    .end local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :catchall_0
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v7, v25

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object v1, v7

    .end local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    goto :goto_4

    .end local v4    # "backoffManager":Lcz/msebera/android/httpclient/client/BackoffManager;
    .end local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v19    # "backoffManager":Lcz/msebera/android/httpclient/client/BackoffManager;
    .restart local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :catchall_1
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v7, v25

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v1, v7

    .end local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    goto :goto_4

    .end local v3    # "connectionBackoffStrategy":Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    .end local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v18    # "connectionBackoffStrategy":Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    .restart local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :catchall_2
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v7, v25

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object v1, v7

    .end local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    goto :goto_4

    .end local v2    # "routePlanner":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .end local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v17    # "routePlanner":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .restart local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :catchall_3
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v7, v25

    move-object/from16 v16, v1

    move-object v1, v7

    .end local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    goto :goto_4

    .end local v1    # "director":Lcz/msebera/android/httpclient/client/RequestDirector;
    .end local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v16    # "director":Lcz/msebera/android/httpclient/client/RequestDirector;
    .restart local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :catchall_4
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v7, v25

    move-object v1, v7

    .end local v25    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    goto :goto_4

    .end local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v10    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :catchall_5
    move-exception v0

    move-object v7, v10

    move-object v5, v12

    move-object v1, v7

    .end local v10    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .restart local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    goto :goto_4

    .end local v7    # "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    .local v1, "execContext":Lcz/msebera/android/httpclient/protocol/HttpContext;
    :catchall_6
    move-exception v0

    move-object v5, v12

    :goto_4
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_4
.end method

.method public final declared-synchronized getAuthSchemes()Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;
    .locals 1

    monitor-enter p0

    .line 448
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createAuthSchemeRegistry()Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    .line 451
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getBackoffManager()Lcz/msebera/android/httpclient/client/BackoffManager;
    .locals 1

    monitor-enter p0

    .line 474
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 474
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionBackoffStrategy()Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    .locals 1

    monitor-enter p0

    .line 459
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 459
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionKeepAliveStrategy()Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .locals 1

    monitor-enter p0

    .line 499
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createConnectionKeepAliveStrategy()Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 502
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .locals 1

    monitor-enter p0

    .line 432
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    if-nez v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createClientConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 435
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionReuseStrategy()Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .locals 1

    monitor-enter p0

    .line 486
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    if-nez v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createConnectionReuseStrategy()Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 489
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieSpecs()Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;
    .locals 1

    monitor-enter p0

    .line 467
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createCookieSpecRegistry()Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

    .line 470
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieStore()Lcz/msebera/android/httpclient/client/CookieStore;
    .locals 1

    monitor-enter p0

    .line 622
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

    if-nez v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createCookieStore()Lcz/msebera/android/httpclient/client/CookieStore;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

    .line 625
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCredentialsProvider()Lcz/msebera/android/httpclient/client/CredentialsProvider;
    .locals 1

    monitor-enter p0

    .line 633
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->credsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    if-nez v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createCredentialsProvider()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->credsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 636
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->credsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized getHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
    .locals 1

    monitor-enter p0

    .line 666
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->mutableProcessor:Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    if-nez v0, :cond_0

    .line 667
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->mutableProcessor:Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    .line 669
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->mutableProcessor:Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getHttpRequestRetryHandler()Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    .locals 1

    monitor-enter p0

    .line 512
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    if-nez v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createHttpRequestRetryHandler()Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    .line 515
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .locals 1

    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->defaultParams:Lcz/msebera/android/httpclient/params/HttpParams;

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createHttpParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->defaultParams:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 416
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->defaultParams:Lcz/msebera/android/httpclient/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getProxyAuthenticationHandler()Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 593
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createProxyAuthenticationHandler()Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 593
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getProxyAuthenticationStrategy()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .locals 1

    monitor-enter p0

    .line 608
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    if-nez v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createProxyAuthenticationStrategy()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 611
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRedirectHandler()Lcz/msebera/android/httpclient/client/RedirectHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 527
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createRedirectHandler()Lcz/msebera/android/httpclient/client/RedirectHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 527
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRedirectStrategy()Lcz/msebera/android/httpclient/client/RedirectStrategy;
    .locals 1

    monitor-enter p0

    .line 542
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 545
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRequestExecutor()Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .locals 1

    monitor-enter p0

    .line 440
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    if-nez v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createRequestExecutor()Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 443
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptor(I)Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    .locals 1
    .param p1, "index"    # I

    monitor-enter p0

    .line 701
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->getRequestInterceptor(I)Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 701
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRequestInterceptorCount()I
    .locals 1

    monitor-enter p0

    .line 705
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->getRequestInterceptorCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 705
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptor(I)Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    .locals 1
    .param p1, "index"    # I

    monitor-enter p0

    .line 697
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->getResponseInterceptor(I)Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 697
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getResponseInterceptorCount()I
    .locals 1

    monitor-enter p0

    .line 693
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->getResponseInterceptorCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 693
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRoutePlanner()Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .locals 1

    monitor-enter p0

    .line 644
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    if-nez v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createHttpRoutePlanner()Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 647
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTargetAuthenticationHandler()Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 560
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createTargetAuthenticationHandler()Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 560
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTargetAuthenticationStrategy()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .locals 1

    monitor-enter p0

    .line 575
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    if-nez v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createTargetAuthenticationStrategy()Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 578
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getUserTokenHandler()Lcz/msebera/android/httpclient/client/UserTokenHandler;
    .locals 1

    monitor-enter p0

    .line 655
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    if-nez v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->createUserTokenHandler()Lcz/msebera/android/httpclient/client/UserTokenHandler;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 658
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcz/msebera/android/httpclient/HttpRequestInterceptor;>;"
    monitor-enter p0

    .line 744
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    .line 745
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->protocolProcessor:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    monitor-exit p0

    return-void

    .line 743
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcz/msebera/android/httpclient/HttpRequestInterceptor;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcz/msebera/android/httpclient/HttpResponseInterceptor;>;"
    monitor-enter p0

    .line 724
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->getHttpProcessor()Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpProcessor;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->protocolProcessor:Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    monitor-exit p0

    return-void

    .line 723
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcz/msebera/android/httpclient/HttpResponseInterceptor;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAuthSchemes(Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;)V
    .locals 0
    .param p1, "registry"    # Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    monitor-enter p0

    .line 455
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    .line 454
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "registry":Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBackoffManager(Lcz/msebera/android/httpclient/client/BackoffManager;)V
    .locals 0
    .param p1, "manager"    # Lcz/msebera/android/httpclient/client/BackoffManager;

    monitor-enter p0

    .line 478
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    monitor-exit p0

    return-void

    .line 477
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "manager":Lcz/msebera/android/httpclient/client/BackoffManager;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConnectionBackoffStrategy(Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;)V
    .locals 0
    .param p1, "strategy"    # Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    monitor-enter p0

    .line 463
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 462
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "strategy":Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCookieSpecs(Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;)V
    .locals 0
    .param p1, "registry"    # Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;

    monitor-enter p0

    .line 482
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    monitor-exit p0

    return-void

    .line 481
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "registry":Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCookieStore(Lcz/msebera/android/httpclient/client/CookieStore;)V
    .locals 0
    .param p1, "cookieStore"    # Lcz/msebera/android/httpclient/client/CookieStore;

    monitor-enter p0

    .line 629
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    monitor-exit p0

    return-void

    .line 628
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "cookieStore":Lcz/msebera/android/httpclient/client/CookieStore;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCredentialsProvider(Lcz/msebera/android/httpclient/client/CredentialsProvider;)V
    .locals 0
    .param p1, "credsProvider"    # Lcz/msebera/android/httpclient/client/CredentialsProvider;

    monitor-enter p0

    .line 640
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->credsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    monitor-exit p0

    return-void

    .line 639
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "credsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHttpRequestRetryHandler(Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)V
    .locals 0
    .param p1, "handler"    # Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    monitor-enter p0

    .line 519
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    .line 518
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "handler":Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setKeepAliveStrategy(Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;)V
    .locals 0
    .param p1, "strategy"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    monitor-enter p0

    .line 507
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    monitor-exit p0

    return-void

    .line 506
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "strategy":Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    monitor-enter p0

    .line 426
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->defaultParams:Lcz/msebera/android/httpclient/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit p0

    return-void

    .line 425
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "params":Lcz/msebera/android/httpclient/params/HttpParams;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProxyAuthenticationHandler(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V
    .locals 1
    .param p1, "handler"    # Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 601
    :try_start_0
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    monitor-exit p0

    return-void

    .line 600
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "handler":Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProxyAuthenticationStrategy(Lcz/msebera/android/httpclient/client/AuthenticationStrategy;)V
    .locals 0
    .param p1, "strategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    monitor-enter p0

    .line 618
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    monitor-exit p0

    return-void

    .line 617
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "strategy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRedirectHandler(Lcz/msebera/android/httpclient/client/RedirectHandler;)V
    .locals 1
    .param p1, "handler"    # Lcz/msebera/android/httpclient/client/RedirectHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 535
    :try_start_0
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/RedirectHandler;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    monitor-exit p0

    return-void

    .line 534
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "handler":Lcz/msebera/android/httpclient/client/RedirectHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRedirectStrategy(Lcz/msebera/android/httpclient/client/RedirectStrategy;)V
    .locals 0
    .param p1, "strategy"    # Lcz/msebera/android/httpclient/client/RedirectStrategy;

    monitor-enter p0

    .line 552
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    monitor-exit p0

    return-void

    .line 551
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "strategy":Lcz/msebera/android/httpclient/client/RedirectStrategy;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReuseStrategy(Lcz/msebera/android/httpclient/ConnectionReuseStrategy;)V
    .locals 0
    .param p1, "strategy"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    monitor-enter p0

    .line 494
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    monitor-exit p0

    return-void

    .line 493
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "strategy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRoutePlanner(Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;)V
    .locals 0
    .param p1, "routePlanner"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    monitor-enter p0

    .line 651
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    monitor-exit p0

    return-void

    .line 650
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "routePlanner":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTargetAuthenticationHandler(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V
    .locals 1
    .param p1, "handler"    # Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 568
    :try_start_0
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    monitor-exit p0

    return-void

    .line 567
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "handler":Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTargetAuthenticationStrategy(Lcz/msebera/android/httpclient/client/AuthenticationStrategy;)V
    .locals 0
    .param p1, "strategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    monitor-enter p0

    .line 585
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    monitor-exit p0

    return-void

    .line 584
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "strategy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserTokenHandler(Lcz/msebera/android/httpclient/client/UserTokenHandler;)V
    .locals 0
    .param p1, "handler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;

    monitor-enter p0

    .line 662
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    .line 661
    .end local p0    # "this":Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;
    .end local p1    # "handler":Lcz/msebera/android/httpclient/client/UserTokenHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

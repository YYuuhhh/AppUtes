.class public Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
.super Ljava/lang/Object;
.source "HttpClientBuilder.java"


# instance fields
.field private authCachingDisabled:Z

.field private authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private automaticRetriesDisabled:Z

.field private backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

.field private closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private connManagerShared:Z

.field private connTimeToLive:J

.field private connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

.field private connectionStateDisabled:Z

.field private contentCompressionDisabled:Z

.field private contentDecoderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;"
        }
    .end annotation
.end field

.field private cookieManagementDisabled:Z

.field private cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation
.end field

.field private cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

.field private credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

.field private defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

.field private defaultHeaders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation
.end field

.field private defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

.field private defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

.field private defaultUserAgentDisabled:Z

.field private dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

.field private evictExpiredConnections:Z

.field private evictIdleConnections:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field private maxConnPerRoute:I

.field private maxConnTotal:I

.field private maxIdleTime:J

.field private maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private proxy:Lcz/msebera/android/httpclient/HttpHost;

.field private proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

.field private redirectHandlingDisabled:Z

.field private redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

.field private requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field private requestFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private requestLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

.field private reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

.field private schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

.field private serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

.field private systemProperties:Z

.field private targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private userAgent:Ljava/lang/String;

.field private userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    .line 211
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    .line 213
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLive:J

    .line 214
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 226
    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 221
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;-><init>()V

    return-object v0
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 938
    invoke-static {p0}, Lcz/msebera/android/httpclient/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    const/4 v0, 0x0

    return-object v0

    .line 941
    :cond_0
    const-string v0, " *, *"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addCloseable(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 928
    if-nez p1, :cond_0

    .line 929
    return-void

    .line 931
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    if-nez v0, :cond_1

    .line 932
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    .line 934
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    return-void
.end method

.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 548
    if-nez p1, :cond_0

    .line 549
    return-object p0

    .line 551
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 552
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    .line 554
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 555
    return-object p0
.end method

.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 513
    if-nez p1, :cond_0

    .line 514
    return-object p0

    .line 516
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 517
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    .line 519
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 520
    return-object p0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 565
    if-nez p1, :cond_0

    .line 566
    return-object p0

    .line 568
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 569
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    .line 571
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 572
    return-object p0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 531
    if-nez p1, :cond_0

    .line 532
    return-object p0

    .line 534
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 535
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    .line 537
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 538
    return-object p0
.end method

.method public build()Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
    .locals 39

    .line 947
    move-object/from16 v9, p0

    iget-object v0, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 948
    .local v0, "publicSuffixMatcherCopy":Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    if-nez v0, :cond_0

    .line 949
    invoke-static {}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->getDefault()Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 948
    :cond_0
    move-object v10, v0

    .line 952
    .end local v0    # "publicSuffixMatcherCopy":Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .local v10, "publicSuffixMatcherCopy":Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    :goto_0
    iget-object v0, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 953
    .local v0, "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    if-nez v0, :cond_1

    .line 954
    new-instance v1, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>()V

    move-object v0, v1

    move-object v11, v0

    goto :goto_1

    .line 953
    :cond_1
    move-object v11, v0

    .line 956
    .end local v0    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .local v11, "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    :goto_1
    iget-object v0, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 957
    .local v0, "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    const-string v1, "http.keepAlive"

    const-string/jumbo v2, "true"

    if-nez v0, :cond_e

    .line 958
    iget-object v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    .line 959
    .local v3, "sslSocketFactoryCopy":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    if-nez v3, :cond_7

    .line 960
    iget-boolean v4, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v4, :cond_2

    .line 961
    const-string v4, "https.protocols"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 960
    invoke-static {v4}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 962
    .local v4, "supportedProtocols":[Ljava/lang/String;
    :goto_2
    iget-boolean v5, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v5, :cond_3

    .line 963
    const-string v5, "https.cipherSuites"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 962
    invoke-static {v5}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 964
    .local v5, "supportedCipherSuites":[Ljava/lang/String;
    :goto_3
    iget-object v6, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 965
    .local v6, "hostnameVerifierCopy":Ljavax/net/ssl/HostnameVerifier;
    if-nez v6, :cond_4

    .line 966
    new-instance v7, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;

    invoke-direct {v7, v10}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;-><init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    move-object v6, v7

    .line 968
    :cond_4
    iget-object v7, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v7, :cond_5

    .line 969
    new-instance v7, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    iget-object v8, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-direct {v7, v8, v4, v5, v6}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    move-object v3, v7

    goto :goto_4

    .line 972
    :cond_5
    iget-boolean v7, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v7, :cond_6

    .line 973
    new-instance v7, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    .line 974
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v8

    check-cast v8, Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v7, v8, v4, v5, v6}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    move-object v3, v7

    goto :goto_4

    .line 977
    :cond_6
    new-instance v7, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    .line 978
    invoke-static {}, Lcz/msebera/android/httpclient/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/HostnameVerifier;)V

    move-object v3, v7

    .line 984
    .end local v4    # "supportedProtocols":[Ljava/lang/String;
    .end local v5    # "supportedCipherSuites":[Ljava/lang/String;
    .end local v6    # "hostnameVerifierCopy":Ljavax/net/ssl/HostnameVerifier;
    :cond_7
    :goto_4
    new-instance v4, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;

    .line 985
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v5

    .line 986
    invoke-static {}, Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;

    move-result-object v6

    const-string v7, "http"

    invoke-virtual {v5, v7, v6}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v5

    .line 987
    const-string v6, "https"

    invoke-virtual {v5, v6, v3}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v5

    .line 988
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v5, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    iget-wide v6, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLive:J

    iget-object v8, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_5
    move-object/from16 v20, v8

    move-object v13, v4

    move-object/from16 v17, v5

    move-wide/from16 v18, v6

    invoke-direct/range {v13 .. v20}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Registry;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    .line 994
    .local v4, "poolingmgr":Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;
    iget-object v5, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    if-eqz v5, :cond_9

    .line 995
    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)V

    .line 997
    :cond_9
    iget-object v5, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    if-eqz v5, :cond_a

    .line 998
    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    .line 1000
    :cond_a
    iget-boolean v5, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v5, :cond_b

    .line 1001
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1002
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1003
    const-string v6, "http.maxConnections"

    const-string v7, "5"

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1004
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1005
    .local v6, "max":I
    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    .line 1006
    mul-int/lit8 v7, v6, 0x2

    invoke-virtual {v4, v7}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    .line 1009
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "max":I
    :cond_b
    iget v5, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    if-lez v5, :cond_c

    .line 1010
    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    .line 1012
    :cond_c
    iget v5, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    if-lez v5, :cond_d

    .line 1013
    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    .line 1015
    :cond_d
    move-object v0, v4

    move-object/from16 v23, v0

    goto :goto_6

    .line 957
    .end local v3    # "sslSocketFactoryCopy":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    .end local v4    # "poolingmgr":Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;
    :cond_e
    move-object/from16 v23, v0

    .line 1017
    .end local v0    # "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .local v23, "connManagerCopy":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    :goto_6
    iget-object v0, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 1018
    .local v0, "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    if-nez v0, :cond_11

    .line 1019
    iget-boolean v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v3, :cond_10

    .line 1020
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1021
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1022
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;

    goto :goto_7

    .line 1024
    :cond_f
    sget-object v0, Lcz/msebera/android/httpclient/impl/NoConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/NoConnectionReuseStrategy;

    .line 1026
    .end local v1    # "s":Ljava/lang/String;
    :goto_7
    move-object/from16 v24, v0

    goto :goto_8

    .line 1027
    :cond_10
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;

    move-object/from16 v24, v0

    goto :goto_8

    .line 1018
    :cond_11
    move-object/from16 v24, v0

    .line 1030
    .end local v0    # "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .local v24, "reuseStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    :goto_8
    iget-object v0, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 1031
    .local v0, "keepAliveStrategyCopy":Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    if-nez v0, :cond_12

    .line 1032
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    move-object/from16 v25, v0

    goto :goto_9

    .line 1031
    :cond_12
    move-object/from16 v25, v0

    .line 1034
    .end local v0    # "keepAliveStrategyCopy":Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .local v25, "keepAliveStrategyCopy":Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    :goto_9
    iget-object v0, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 1035
    .local v0, "targetAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    if-nez v0, :cond_13

    .line 1036
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;

    move-object/from16 v26, v0

    goto :goto_a

    .line 1035
    :cond_13
    move-object/from16 v26, v0

    .line 1038
    .end local v0    # "targetAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .local v26, "targetAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    :goto_a
    iget-object v0, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 1039
    .local v0, "proxyAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    if-nez v0, :cond_14

    .line 1040
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    move-object/from16 v27, v0

    goto :goto_b

    .line 1039
    :cond_14
    move-object/from16 v27, v0

    .line 1042
    .end local v0    # "proxyAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .local v27, "proxyAuthStrategyCopy":Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    :goto_b
    iget-object v0, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 1043
    .local v0, "userTokenHandlerCopy":Lcz/msebera/android/httpclient/client/UserTokenHandler;
    if-nez v0, :cond_16

    .line 1044
    iget-boolean v1, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionStateDisabled:Z

    if-nez v1, :cond_15

    .line 1045
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;

    move-object/from16 v28, v0

    goto :goto_c

    .line 1047
    :cond_15
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/NoopUserTokenHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/NoopUserTokenHandler;

    move-object/from16 v28, v0

    goto :goto_c

    .line 1043
    :cond_16
    move-object/from16 v28, v0

    .line 1051
    .end local v0    # "userTokenHandlerCopy":Lcz/msebera/android/httpclient/client/UserTokenHandler;
    .local v28, "userTokenHandlerCopy":Lcz/msebera/android/httpclient/client/UserTokenHandler;
    :goto_c
    iget-object v0, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userAgent:Ljava/lang/String;

    .line 1052
    .local v0, "userAgentCopy":Ljava/lang/String;
    if-nez v0, :cond_19

    .line 1053
    iget-boolean v1, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v1, :cond_17

    .line 1054
    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1056
    :cond_17
    if-nez v0, :cond_18

    iget-boolean v1, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultUserAgentDisabled:Z

    if-nez v1, :cond_18

    .line 1057
    nop

    .line 1058
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1057
    const-string v2, "Apache-HttpClient"

    const-string v3, "cz.msebera.android.httpclient.client"

    invoke-static {v2, v3, v1}, Lcz/msebera/android/httpclient/util/VersionInfo;->getUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_d

    .line 1062
    :cond_18
    move-object v15, v0

    goto :goto_d

    .line 1052
    :cond_19
    move-object v15, v0

    .line 1062
    .end local v0    # "userAgentCopy":Ljava/lang/String;
    .local v15, "userAgentCopy":Ljava/lang/String;
    :goto_d
    new-instance v5, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    const/4 v13, 0x2

    new-array v0, v13, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    new-instance v1, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    const/4 v14, 0x0

    aput-object v1, v0, v14

    new-instance v1, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    invoke-direct {v1, v15}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    aput-object v1, v0, v8

    invoke-direct {v5, v0}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move v12, v8

    move-object/from16 v8, v28

    invoke-virtual/range {v0 .. v8}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->createMainExec(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-result-object v0

    .line 1072
    .local v0, "execChain":Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    invoke-virtual {v9, v0}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->decorateMainExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-result-object v0

    .line 1074
    iget-object v1, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 1075
    .local v1, "httpprocessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    if-nez v1, :cond_26

    .line 1077
    invoke-static {}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->create()Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object v2

    .line 1078
    .local v2, "b":Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    iget-object v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    if-eqz v3, :cond_1a

    .line 1079
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 1080
    .local v4, "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1081
    .end local v4    # "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    goto :goto_e

    .line 1083
    :cond_1a
    iget-object v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    if-eqz v3, :cond_1b

    .line 1084
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 1085
    .local v4, "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1086
    .end local v4    # "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    goto :goto_f

    .line 1088
    :cond_1b
    const/4 v3, 0x6

    new-array v3, v3, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    new-instance v4, Lcz/msebera/android/httpclient/client/protocol/RequestDefaultHeaders;

    iget-object v5, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    invoke-direct {v4, v5}, Lcz/msebera/android/httpclient/client/protocol/RequestDefaultHeaders;-><init>(Ljava/util/Collection;)V

    aput-object v4, v3, v14

    new-instance v4, Lcz/msebera/android/httpclient/protocol/RequestContent;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/protocol/RequestContent;-><init>()V

    aput-object v4, v3, v12

    new-instance v4, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    aput-object v4, v3, v13

    const/4 v4, 0x3

    new-instance v5, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    invoke-direct {v5, v15}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Lcz/msebera/android/httpclient/client/protocol/RequestExpectContinue;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/client/protocol/RequestExpectContinue;-><init>()V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAll([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1095
    iget-boolean v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v3, :cond_1c

    .line 1096
    new-instance v3, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1098
    :cond_1c
    iget-boolean v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v3, :cond_1e

    .line 1099
    iget-object v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    if-eqz v3, :cond_1d

    .line 1100
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1101
    .local v3, "encodings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1102
    new-instance v4, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;

    invoke-direct {v4, v3}, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1103
    .end local v3    # "encodings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_10

    .line 1104
    :cond_1d
    new-instance v3, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;-><init>()V

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1107
    :cond_1e
    :goto_10
    iget-boolean v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authCachingDisabled:Z

    if-nez v3, :cond_1f

    .line 1108
    new-instance v3, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1110
    :cond_1f
    iget-boolean v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v3, :cond_20

    .line 1111
    new-instance v3, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1113
    :cond_20
    iget-boolean v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v3, :cond_23

    .line 1114
    iget-object v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    if-eqz v3, :cond_22

    .line 1115
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v3

    .line 1116
    .local v3, "b2":Lcz/msebera/android/httpclient/config/RegistryBuilder;, "Lcz/msebera/android/httpclient/config/RegistryBuilder<Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    iget-object v4, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1117
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    .line 1118
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    goto :goto_11

    .line 1119
    :cond_21
    new-instance v4, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v5

    invoke-direct {v4, v5}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>(Lcz/msebera/android/httpclient/config/Lookup;)V

    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1120
    .end local v3    # "b2":Lcz/msebera/android/httpclient/config/RegistryBuilder;, "Lcz/msebera/android/httpclient/config/RegistryBuilder<Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    goto :goto_12

    .line 1121
    :cond_22
    new-instance v3, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>()V

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1124
    :cond_23
    :goto_12
    iget-object v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    if-eqz v3, :cond_24

    .line 1125
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 1126
    .local v4, "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1127
    .end local v4    # "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    goto :goto_13

    .line 1129
    :cond_24
    iget-object v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    if-eqz v3, :cond_25

    .line 1130
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 1131
    .local v4, "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 1132
    .end local v4    # "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    goto :goto_14

    .line 1134
    :cond_25
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->build()Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-result-object v1

    .line 1136
    .end local v2    # "b":Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    :cond_26
    new-instance v2, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;

    invoke-direct {v2, v0, v1}, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/protocol/HttpProcessor;)V

    move-object v0, v2

    .line 1138
    invoke-virtual {v9, v0}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->decorateProtocolExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-result-object v0

    .line 1141
    iget-boolean v2, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->automaticRetriesDisabled:Z

    if-nez v2, :cond_28

    .line 1142
    iget-object v2, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    .line 1143
    .local v2, "retryHandlerCopy":Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    if-nez v2, :cond_27

    .line 1144
    sget-object v2, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;

    .line 1146
    :cond_27
    new-instance v3, Lcz/msebera/android/httpclient/impl/execchain/RetryExec;

    invoke-direct {v3, v0, v2}, Lcz/msebera/android/httpclient/impl/execchain/RetryExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)V

    move-object v0, v3

    .line 1149
    .end local v2    # "retryHandlerCopy":Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;
    :cond_28
    iget-object v2, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 1150
    .local v2, "routePlannerCopy":Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    if-nez v2, :cond_2c

    .line 1151
    iget-object v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .line 1152
    .local v3, "schemePortResolverCopy":Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    if-nez v3, :cond_29

    .line 1153
    sget-object v3, Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;

    .line 1155
    :cond_29
    iget-object v4, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v4, :cond_2a

    .line 1156
    new-instance v4, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;

    iget-object v5, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {v4, v5, v3}, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;-><init>(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    move-object v2, v4

    goto :goto_15

    .line 1157
    :cond_2a
    iget-boolean v4, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v4, :cond_2b

    .line 1158
    new-instance v4, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;

    .line 1159
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;Ljava/net/ProxySelector;)V

    move-object v2, v4

    goto :goto_15

    .line 1161
    :cond_2b
    new-instance v4, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;

    invoke-direct {v4, v3}, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    move-object v2, v4

    .line 1166
    .end local v3    # "schemePortResolverCopy":Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    :cond_2c
    :goto_15
    iget-object v3, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    .line 1167
    .local v3, "serviceUnavailStrategyCopy":Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;
    if-eqz v3, :cond_2d

    .line 1168
    new-instance v4, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;

    invoke-direct {v4, v0, v3}, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V

    move-object v0, v4

    .line 1172
    :cond_2d
    iget-boolean v4, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectHandlingDisabled:Z

    if-nez v4, :cond_2f

    .line 1173
    iget-object v4, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 1174
    .local v4, "redirectStrategyCopy":Lcz/msebera/android/httpclient/client/RedirectStrategy;
    if-nez v4, :cond_2e

    .line 1175
    sget-object v4, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;

    .line 1177
    :cond_2e
    new-instance v5, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;

    invoke-direct {v5, v0, v2, v4}, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/client/RedirectStrategy;)V

    move-object v0, v5

    .line 1181
    .end local v4    # "redirectStrategyCopy":Lcz/msebera/android/httpclient/client/RedirectStrategy;
    :cond_2f
    iget-object v4, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    if-eqz v4, :cond_30

    iget-object v4, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    if-eqz v4, :cond_30

    .line 1182
    new-instance v4, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;

    iget-object v5, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    iget-object v6, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    invoke-direct {v4, v0, v5, v6}, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;Lcz/msebera/android/httpclient/client/BackoffManager;)V

    move-object v0, v4

    .line 1185
    :cond_30
    iget-object v4, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 1186
    .local v4, "authSchemeRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    if-nez v4, :cond_31

    .line 1187
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v5

    new-instance v6, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;-><init>()V

    .line 1188
    const-string v7, "Basic"

    invoke-virtual {v5, v7, v6}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v5

    new-instance v6, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;-><init>()V

    .line 1189
    const-string v7, "Digest"

    invoke-virtual {v5, v7, v6}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v5

    new-instance v6, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;-><init>()V

    .line 1190
    const-string v7, "NTLM"

    invoke-virtual {v5, v7, v6}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v5

    .line 1193
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v4

    .line 1195
    :cond_31
    iget-object v5, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 1196
    .local v5, "cookieSpecRegistryCopy":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    if-nez v5, :cond_32

    .line 1197
    invoke-static {v10}, Lcz/msebera/android/httpclient/impl/client/CookieSpecRegistries;->createDefault(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v5

    .line 1200
    :cond_32
    iget-object v6, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

    .line 1201
    .local v6, "defaultCookieStore":Lcz/msebera/android/httpclient/client/CookieStore;
    if-nez v6, :cond_33

    .line 1202
    new-instance v7, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;

    invoke-direct {v7}, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;-><init>()V

    move-object v6, v7

    .line 1205
    :cond_33
    iget-object v7, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 1206
    .local v7, "defaultCredentialsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    if-nez v7, :cond_35

    .line 1207
    iget-boolean v8, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v8, :cond_34

    .line 1208
    new-instance v8, Lcz/msebera/android/httpclient/impl/client/SystemDefaultCredentialsProvider;

    invoke-direct {v8}, Lcz/msebera/android/httpclient/impl/client/SystemDefaultCredentialsProvider;-><init>()V

    move-object v7, v8

    goto :goto_16

    .line 1210
    :cond_34
    new-instance v8, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;

    invoke-direct {v8}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;-><init>()V

    move-object v7, v8

    .line 1214
    :cond_35
    :goto_16
    iget-object v8, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    if-eqz v8, :cond_36

    new-instance v8, Ljava/util/ArrayList;

    iget-object v13, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v16, v8

    goto :goto_17

    :cond_36
    const/16 v16, 0x0

    :goto_17
    move-object/from16 v8, v16

    .line 1215
    .local v8, "closeablesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    iget-boolean v13, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManagerShared:Z

    if-nez v13, :cond_3c

    .line 1216
    if-nez v8, :cond_37

    .line 1217
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v13

    .line 1219
    :cond_37
    move-object/from16 v12, v23

    .line 1221
    .local v12, "cm":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    iget-boolean v13, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictExpiredConnections:Z

    if-nez v13, :cond_39

    iget-boolean v13, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictIdleConnections:Z

    if-eqz v13, :cond_38

    goto :goto_18

    :cond_38
    move-object/from16 v37, v10

    move-object/from16 v38, v11

    goto :goto_1b

    .line 1222
    :cond_39
    :goto_18
    new-instance v13, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    .end local v10    # "publicSuffixMatcherCopy":Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .end local v11    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .local v37, "publicSuffixMatcherCopy":Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .local v38, "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    iget-wide v10, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v10, v16

    if-lez v14, :cond_3a

    goto :goto_19

    :cond_3a
    const-wide/16 v10, 0xa

    :goto_19
    move-wide/from16 v31, v10

    iget-object v10, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v10, :cond_3b

    goto :goto_1a

    :cond_3b
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_1a
    move-object/from16 v33, v10

    iget-wide v10, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTime:J

    iget-object v14, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v29, v13

    move-object/from16 v30, v12

    move-wide/from16 v34, v10

    move-object/from16 v36, v14

    invoke-direct/range {v29 .. v36}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;-><init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    move-object v10, v13

    .line 1225
    .local v10, "connectionEvictor":Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;
    new-instance v11, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$1;

    invoke-direct {v11, v9, v10}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$1;-><init>(Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    invoke-virtual {v10}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->start()V

    .line 1240
    .end local v10    # "connectionEvictor":Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;
    :goto_1b
    new-instance v10, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$2;

    invoke-direct {v10, v9, v12}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$2;-><init>(Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1215
    .end local v12    # "cm":Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .end local v37    # "publicSuffixMatcherCopy":Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .end local v38    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .local v10, "publicSuffixMatcherCopy":Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .restart local v11    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    :cond_3c
    move-object/from16 v37, v10

    move-object/from16 v38, v11

    .line 1250
    .end local v10    # "publicSuffixMatcherCopy":Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .end local v11    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .restart local v37    # "publicSuffixMatcherCopy":Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .restart local v38    # "requestExecCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    :goto_1c
    new-instance v10, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;

    iget-object v11, v9, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    if-eqz v11, :cond_3d

    goto :goto_1d

    :cond_3d
    sget-object v11, Lcz/msebera/android/httpclient/client/config/RequestConfig;->DEFAULT:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    :goto_1d
    move-object/from16 v21, v11

    move-object v13, v10

    move-object v14, v0

    move-object v11, v15

    .end local v15    # "userAgentCopy":Ljava/lang/String;
    .local v11, "userAgentCopy":Ljava/lang/String;
    move-object/from16 v15, v23

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    invoke-direct/range {v13 .. v22}, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/client/CookieStore;Lcz/msebera/android/httpclient/client/CredentialsProvider;Lcz/msebera/android/httpclient/client/config/RequestConfig;Ljava/util/List;)V

    return-object v10
.end method

.method protected createMainExec(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 10
    .param p1, "requestExec"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
    .param p2, "connManager"    # Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .param p3, "reuseStrategy"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    .param p4, "keepAliveStrategy"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;
    .param p5, "proxyHttpProcessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .param p6, "targetAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p7, "proxyAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;
    .param p8, "userTokenHandler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 899
    new-instance v9, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)V

    return-object v9
.end method

.method protected decorateMainExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 0
    .param p1, "mainExec"    # Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 914
    return-object p1
.end method

.method protected decorateProtocolExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 0
    .param p1, "protocolExec"    # Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 921
    return-object p1
.end method

.method public final disableAuthCaching()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authCachingDisabled:Z

    .line 605
    return-object p0
.end method

.method public final disableAutomaticRetries()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->automaticRetriesDisabled:Z

    .line 642
    return-object p0
.end method

.method public final disableConnectionState()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionStateDisabled:Z

    .line 469
    return-object p0
.end method

.method public final disableContentCompression()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    .line 594
    return-object p0
.end method

.method public final disableCookieManagement()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    .line 583
    return-object p0
.end method

.method public final disableDefaultUserAgent()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultUserAgentDisabled:Z

    .line 875
    return-object p0
.end method

.method public final disableRedirectHandling()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectHandlingDisabled:Z

    .line 681
    return-object p0
.end method

.method public final evictExpiredConnections()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictExpiredConnections:Z

    .line 805
    return-object p0
.end method

.method public final evictIdleConnections(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "maxIdleTime"    # J
    .param p3, "maxIdleTimeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictIdleConnections:Z

    .line 863
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTime:J

    .line 864
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 865
    return-object p0
.end method

.method public final evictIdleConnections(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 2
    .param p1, "maxIdleTime"    # Ljava/lang/Long;
    .param p2, "maxIdleTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 835
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictIdleConnections(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final setBackoffManager(Lcz/msebera/android/httpclient/client/BackoffManager;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "backoffManager"    # Lcz/msebera/android/httpclient/client/BackoffManager;

    .line 697
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    .line 698
    return-object p0
.end method

.method public final setConnectionBackoffStrategy(Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "connectionBackoffStrategy"    # Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    .line 689
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    .line 690
    return-object p0
.end method

.method public final setConnectionManager(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "connManager"    # Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 390
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 391
    return-object p0
.end method

.method public final setConnectionManagerShared(Z)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "shared"    # Z

    .line 410
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManagerShared:Z

    .line 411
    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lcz/msebera/android/httpclient/ConnectionReuseStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "reuseStrategy"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 419
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 420
    return-object p0
.end method

.method public final setConnectionTimeToLive(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "connTimeToLive"    # J
    .param p3, "connTimeToLiveTimeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 380
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLive:J

    .line 381
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 382
    return-object p0
.end method

.method public final setContentDecoderRegistry(Ljava/util/Map;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 762
    .local p1, "contentDecoderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;>;"
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    .line 763
    return-object p0
.end method

.method public final setDefaultAuthSchemeRegistry(Lcz/msebera/android/httpclient/config/Lookup;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 737
    .local p1, "authSchemeRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 738
    return-object p0
.end method

.method public final setDefaultConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "config"    # Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .line 366
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .line 367
    return-object p0
.end method

.method public final setDefaultCookieSpecRegistry(Lcz/msebera/android/httpclient/config/Lookup;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 751
    .local p1, "cookieSpecRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 752
    return-object p0
.end method

.method public final setDefaultCookieStore(Lcz/msebera/android/httpclient/client/CookieStore;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "cookieStore"    # Lcz/msebera/android/httpclient/client/CookieStore;

    .line 715
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

    .line 716
    return-object p0
.end method

.method public final setDefaultCredentialsProvider(Lcz/msebera/android/httpclient/client/CredentialsProvider;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "credentialsProvider"    # Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 726
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 727
    return-object p0
.end method

.method public final setDefaultHeaders(Ljava/util/Collection;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcz/msebera/android/httpclient/Header;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 501
    .local p1, "defaultHeaders":Ljava/util/Collection;, "Ljava/util/Collection<+Lcz/msebera/android/httpclient/Header;>;"
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    .line 502
    return-object p0
.end method

.method public final setDefaultRequestConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "config"    # Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .line 772
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .line 773
    return-object p0
.end method

.method public final setDefaultSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "config"    # Lcz/msebera/android/httpclient/config/SocketConfig;

    .line 354
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    .line 355
    return-object p0
.end method

.method public final setDnsResolver(Lcz/msebera/android/httpclient/conn/DnsResolver;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "dnsResolver"    # Lcz/msebera/android/httpclient/conn/DnsResolver;

    .line 622
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    .line 623
    return-object p0
.end method

.method public final setHostnameVerifier(Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "hostnameVerifier"    # Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 249
    return-object p0
.end method

.method public final setHttpProcessor(Lcz/msebera/android/httpclient/protocol/HttpProcessor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "httpprocessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 612
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 613
    return-object p0
.end method

.method public final setKeepAliveStrategy(Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "keepAliveStrategy"    # Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 428
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 429
    return-object p0
.end method

.method public final setMaxConnPerRoute(I)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "maxConnPerRoute"    # I

    .line 342
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    .line 343
    return-object p0
.end method

.method public final setMaxConnTotal(I)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "maxConnTotal"    # I

    .line 330
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    .line 331
    return-object p0
.end method

.method public final setProxy(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "proxy"    # Lcz/msebera/android/httpclient/HttpHost;

    .line 652
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    .line 653
    return-object p0
.end method

.method public final setProxyAuthenticationStrategy(Lcz/msebera/android/httpclient/client/AuthenticationStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "proxyAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 448
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 449
    return-object p0
.end method

.method public final setPublicSuffixMatcher(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "publicSuffixMatcher"    # Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 277
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 278
    return-object p0
.end method

.method public final setRedirectStrategy(Lcz/msebera/android/httpclient/client/RedirectStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "redirectStrategy"    # Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 672
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 673
    return-object p0
.end method

.method public final setRequestExecutor(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "requestExec"    # Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 232
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 233
    return-object p0
.end method

.method public final setRetryHandler(Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "retryHandler"    # Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    .line 633
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    .line 634
    return-object p0
.end method

.method public final setRoutePlanner(Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "routePlanner"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 660
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 661
    return-object p0
.end method

.method public final setSSLContext(Ljavax/net/ssl/SSLContext;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .line 305
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 306
    return-object p0
.end method

.method public final setSSLHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .line 263
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 264
    return-object p0
.end method

.method public final setSSLSocketFactory(Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "sslSocketFactory"    # Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    .line 318
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    .line 319
    return-object p0
.end method

.method public final setSchemePortResolver(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "schemePortResolver"    # Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .line 477
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .line 478
    return-object p0
.end method

.method public final setServiceUnavailableRetryStrategy(Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "serviceUnavailStrategy"    # Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    .line 706
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    .line 707
    return-object p0
.end method

.method public final setSslcontext(Ljavax/net/ssl/SSLContext;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1
    .param p1, "sslcontext"    # Ljavax/net/ssl/SSLContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->setSSLContext(Ljavax/net/ssl/SSLContext;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final setTargetAuthenticationStrategy(Lcz/msebera/android/httpclient/client/AuthenticationStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "targetAuthStrategy"    # Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 438
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 439
    return-object p0
.end method

.method public final setUserAgent(Ljava/lang/String;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 489
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userAgent:Ljava/lang/String;

    .line 490
    return-object p0
.end method

.method public final setUserTokenHandler(Lcz/msebera/android/httpclient/client/UserTokenHandler;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .param p1, "userTokenHandler"    # Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 460
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 461
    return-object p0
.end method

.method public final useSystemProperties()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    .line 782
    return-object p0
.end method

.class public Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
.super Ljava/lang/Object;
.source "ServerBootstrap.java"


# instance fields
.field private connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

.field private connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/HttpConnectionFactory<",
            "+",
            "Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;",
            ">;"
        }
    .end annotation
.end field

.field private exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

.field private expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

.field private handlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

.field private httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private listenerPort:I

.field private localAddress:Ljava/net/InetAddress;

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

.field private responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

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

.field private serverInfo:Ljava/lang/String;

.field private serverSocketFactory:Ljavax/net/ServerSocketFactory;

.field private socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static bootstrap()Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1

    .line 91
    new-instance v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 198
    if-nez p1, :cond_0

    .line 199
    return-object p0

    .line 201
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    .line 204
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 205
    return-object p0
.end method

.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 158
    if-nez p1, :cond_0

    .line 159
    return-object p0

    .line 161
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    .line 164
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 165
    return-object p0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 218
    if-nez p1, :cond_0

    .line 219
    return-object p0

    .line 221
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    .line 224
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 225
    return-object p0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1
    .param p1, "itcp"    # Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 178
    if-nez p1, :cond_0

    .line 179
    return-object p0

    .line 181
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    .line 184
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 185
    return-object p0
.end method

.method public create()Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;
    .locals 21

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 363
    .local v1, "httpProcessorCopy":Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 365
    invoke-static {}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->create()Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object v3

    .line 366
    .local v3, "b":Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    if-eqz v4, :cond_0

    .line 367
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 368
    .local v5, "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    invoke-virtual {v3, v5}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 369
    .end local v5    # "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    goto :goto_0

    .line 371
    :cond_0
    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    if-eqz v4, :cond_1

    .line 372
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 373
    .local v5, "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    invoke-virtual {v3, v5}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 374
    .end local v5    # "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    goto :goto_1

    .line 377
    :cond_1
    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverInfo:Ljava/lang/String;

    .line 378
    .local v4, "serverInfoCopy":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 379
    const-string v4, "Apache-HttpCore/1.1"

    .line 382
    :cond_2
    const/4 v5, 0x4

    new-array v5, v5, [Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    new-instance v6, Lcz/msebera/android/httpclient/protocol/ResponseDate;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/protocol/ResponseDate;-><init>()V

    aput-object v6, v5, v2

    const/4 v6, 0x1

    new-instance v7, Lcz/msebera/android/httpclient/protocol/ResponseServer;

    invoke-direct {v7, v4}, Lcz/msebera/android/httpclient/protocol/ResponseServer;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcz/msebera/android/httpclient/protocol/ResponseContent;

    invoke-direct {v7}, Lcz/msebera/android/httpclient/protocol/ResponseContent;-><init>()V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcz/msebera/android/httpclient/protocol/ResponseConnControl;

    invoke-direct {v7}, Lcz/msebera/android/httpclient/protocol/ResponseConnControl;-><init>()V

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAll([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 387
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    if-eqz v5, :cond_3

    .line 388
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 389
    .local v6, "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    invoke-virtual {v3, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 390
    .end local v6    # "i":Lcz/msebera/android/httpclient/HttpRequestInterceptor;
    goto :goto_2

    .line 392
    :cond_3
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    if-eqz v5, :cond_4

    .line 393
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 394
    .local v6, "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    invoke-virtual {v3, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 395
    .end local v6    # "i":Lcz/msebera/android/httpclient/HttpResponseInterceptor;
    goto :goto_3

    .line 397
    :cond_4
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->build()Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-result-object v1

    .line 400
    .end local v3    # "b":Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .end local v4    # "serverInfoCopy":Ljava/lang/String;
    :cond_5
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    .line 401
    .local v3, "handlerMapperCopy":Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;
    if-nez v3, :cond_7

    .line 402
    new-instance v4, Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;

    invoke-direct {v4}, Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;-><init>()V

    .line 403
    .local v4, "reqistry":Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    if-eqz v5, :cond_6

    .line 404
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 405
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;

    invoke-virtual {v4, v7, v8}, Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;)V

    .line 406
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;>;"
    goto :goto_4

    .line 408
    :cond_6
    move-object v3, v4

    .line 411
    .end local v4    # "reqistry":Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;
    :cond_7
    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 412
    .local v4, "connStrategyCopy":Lcz/msebera/android/httpclient/ConnectionReuseStrategy;
    if-nez v4, :cond_8

    .line 413
    sget-object v4, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    .line 416
    :cond_8
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 417
    .local v5, "responseFactoryCopy":Lcz/msebera/android/httpclient/HttpResponseFactory;
    if-nez v5, :cond_9

    .line 418
    sget-object v5, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;

    move-object v11, v5

    goto :goto_5

    .line 417
    :cond_9
    move-object v11, v5

    .line 421
    .end local v5    # "responseFactoryCopy":Lcz/msebera/android/httpclient/HttpResponseFactory;
    .local v11, "responseFactoryCopy":Lcz/msebera/android/httpclient/HttpResponseFactory;
    :goto_5
    new-instance v17, Lcz/msebera/android/httpclient/protocol/HttpService;

    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    move-object/from16 v5, v17

    move-object v6, v1

    move-object v7, v4

    move-object v8, v11

    move-object v9, v3

    invoke-direct/range {v5 .. v10}, Lcz/msebera/android/httpclient/protocol/HttpService;-><init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V

    .line 425
    .local v17, "httpService":Lcz/msebera/android/httpclient/protocol/HttpService;
    iget-object v5, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 426
    .local v5, "serverSocketFactoryCopy":Ljavax/net/ServerSocketFactory;
    if-nez v5, :cond_b

    .line 427
    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v6, :cond_a

    .line 428
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v5

    goto :goto_6

    .line 430
    :cond_a
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v5

    .line 434
    :cond_b
    :goto_6
    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    .line 435
    .local v6, "connectionFactoryCopy":Lcz/msebera/android/httpclient/HttpConnectionFactory;, "Lcz/msebera/android/httpclient/HttpConnectionFactory<+Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;>;"
    if-nez v6, :cond_d

    .line 436
    iget-object v7, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    if-eqz v7, :cond_c

    .line 437
    new-instance v7, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;

    iget-object v8, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-direct {v7, v8}, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;-><init>(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    move-object v6, v7

    goto :goto_7

    .line 439
    :cond_c
    sget-object v6, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;

    .line 443
    :cond_d
    :goto_7
    iget-object v7, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    .line 444
    .local v7, "exceptionLoggerCopy":Lcz/msebera/android/httpclient/ExceptionLogger;
    if-nez v7, :cond_e

    .line 445
    sget-object v7, Lcz/msebera/android/httpclient/ExceptionLogger;->NO_OP:Lcz/msebera/android/httpclient/ExceptionLogger;

    .line 448
    :cond_e
    new-instance v8, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;

    iget v9, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->listenerPort:I

    if-lez v9, :cond_f

    move v13, v9

    goto :goto_8

    :cond_f
    move v13, v2

    :goto_8
    iget-object v14, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->localAddress:Ljava/net/InetAddress;

    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    if-eqz v2, :cond_10

    goto :goto_9

    :cond_10
    sget-object v2, Lcz/msebera/android/httpclient/config/SocketConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/SocketConfig;

    :goto_9
    move-object v15, v2

    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    move-object v12, v8

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v20, v7

    invoke-direct/range {v12 .. v20}, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;-><init>(ILjava/net/InetAddress;Lcz/msebera/android/httpclient/config/SocketConfig;Ljavax/net/ServerSocketFactory;Lcz/msebera/android/httpclient/protocol/HttpService;Lcz/msebera/android/httpclient/HttpConnectionFactory;Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;Lcz/msebera/android/httpclient/ExceptionLogger;)V

    return-object v8
.end method

.method public final registerHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "handler"    # Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;

    .line 285
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    .line 291
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-object p0

    .line 286
    :cond_2
    :goto_0
    return-object p0
.end method

.method public final setConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "connectionConfig"    # Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .line 134
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .line 135
    return-object p0
.end method

.method public final setConnectionFactory(Lcz/msebera/android/httpclient/HttpConnectionFactory;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpConnectionFactory<",
            "+",
            "Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;"
        }
    .end annotation

    .line 312
    .local p1, "connectionFactory":Lcz/msebera/android/httpclient/HttpConnectionFactory;, "Lcz/msebera/android/httpclient/HttpConnectionFactory<+Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;>;"
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    .line 313
    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lcz/msebera/android/httpclient/ConnectionReuseStrategy;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "connStrategy"    # Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 248
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 249
    return-object p0
.end method

.method public final setExceptionLogger(Lcz/msebera/android/httpclient/ExceptionLogger;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "exceptionLogger"    # Lcz/msebera/android/httpclient/ExceptionLogger;

    .line 356
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    .line 357
    return-object p0
.end method

.method public final setExpectationVerifier(Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "expectationVerifier"    # Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    .line 301
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    .line 302
    return-object p0
.end method

.method public final setHandlerMapper(Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "handlerMapper"    # Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    .line 268
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    .line 269
    return-object p0
.end method

.method public final setHttpProcessor(Lcz/msebera/android/httpclient/protocol/HttpProcessor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "httpProcessor"    # Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 144
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 145
    return-object p0
.end method

.method public final setListenerPort(I)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "listenerPort"    # I

    .line 100
    iput p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->listenerPort:I

    .line 101
    return-object p0
.end method

.method public final setLocalAddress(Ljava/net/InetAddress;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "localAddress"    # Ljava/net/InetAddress;

    .line 110
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->localAddress:Ljava/net/InetAddress;

    .line 111
    return-object p0
.end method

.method public final setResponseFactory(Lcz/msebera/android/httpclient/HttpResponseFactory;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "responseFactory"    # Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 258
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 259
    return-object p0
.end method

.method public final setServerInfo(Ljava/lang/String;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "serverInfo"    # Ljava/lang/String;

    .line 238
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverInfo:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public final setServerSocketFactory(Ljavax/net/ServerSocketFactory;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "serverSocketFactory"    # Ljavax/net/ServerSocketFactory;

    .line 332
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 333
    return-object p0
.end method

.method public final setSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "socketConfig"    # Lcz/msebera/android/httpclient/config/SocketConfig;

    .line 120
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    .line 121
    return-object p0
.end method

.method public final setSslContext(Ljavax/net/ssl/SSLContext;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .line 346
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 347
    return-object p0
.end method

.method public final setSslSetupHandler(Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .param p1, "sslSetupHandler"    # Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    .line 322
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    .line 323
    return-object p0
.end method

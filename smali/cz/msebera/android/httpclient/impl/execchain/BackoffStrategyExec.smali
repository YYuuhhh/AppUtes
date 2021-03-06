.class public Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;
.super Ljava/lang/Object;
.source "BackoffStrategyExec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# instance fields
.field private final backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

.field private final connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

.field private final requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;Lcz/msebera/android/httpclient/client/BackoffManager;)V
    .locals 1
    .param p1, "requestExecutor"    # Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .param p2, "connectionBackoffStrategy"    # Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;
    .param p3, "backoffManager"    # Lcz/msebera/android/httpclient/client/BackoffManager;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "HTTP client request executor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    const-string v0, "Connection backoff strategy"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    const-string v0, "Backoff manager"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 64
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    .line 65
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    .line 66
    return-void
.end method


# virtual methods
.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 3
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

    .line 74
    const-string v0, "HTTP route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "out":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    invoke-interface {v1, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 97
    nop

    .line 98
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;->shouldBackoff(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    invoke-interface {v1, p1}, Lcz/msebera/android/httpclient/client/BackoffManager;->backOff(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    invoke-interface {v1, p1}, Lcz/msebera/android/httpclient/client/BackoffManager;->probe(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 103
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 84
    :cond_1
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    invoke-interface {v2, v1}, Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;->shouldBackoff(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    invoke-interface {v2, p1}, Lcz/msebera/android/httpclient/client/BackoffManager;->backOff(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 87
    :cond_2
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_5

    .line 90
    instance-of v2, v1, Lcz/msebera/android/httpclient/HttpException;

    if-nez v2, :cond_4

    .line 93
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_3

    .line 94
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 96
    :cond_3
    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v2, v1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 91
    :cond_4
    move-object v2, v1

    check-cast v2, Lcz/msebera/android/httpclient/HttpException;

    throw v2

    .line 88
    :cond_5
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
.end method

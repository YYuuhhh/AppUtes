.class Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;
.super Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
.source "InternalHttpClient.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/methods/Configurable;


# instance fields
.field private final authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private final connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private final cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

.field private final credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

.field private final defaultConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

.field private final execChain:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/client/CookieStore;Lcz/msebera/android/httpclient/client/CredentialsProvider;Lcz/msebera/android/httpclient/client/config/RequestConfig;Ljava/util/List;)V
    .locals 2
    .param p1, "execChain"    # Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .param p2, "connManager"    # Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .param p3, "routePlanner"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .param p6, "cookieStore"    # Lcz/msebera/android/httpclient/client/CookieStore;
    .param p7, "credentialsProvider"    # Lcz/msebera/android/httpclient/client/CredentialsProvider;
    .param p8, "defaultConfig"    # Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;",
            "Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;",
            "Lcz/msebera/android/httpclient/client/CookieStore;",
            "Lcz/msebera/android/httpclient/client/CredentialsProvider;",
            "Lcz/msebera/android/httpclient/client/config/RequestConfig;",
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p4, "cookieSpecRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    .local p5, "authSchemeRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;>;"
    .local p9, "closeables":Ljava/util/List;, "Ljava/util/List<Ljava/io/Closeable;>;"
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;-><init>()V

    .line 80
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 103
    const-string v0, "HTTP client exec chain"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string v0, "HTTP connection manager"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    const-string v0, "HTTP route planner"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->execChain:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 107
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 108
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 109
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 110
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 111
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

    .line 112
    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 113
    iput-object p8, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->defaultConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .line 114
    iput-object p9, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->closeables:Ljava/util/List;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;)Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;

    .line 78
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    return-object v0
.end method

.method private determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 3
    .param p1, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 121
    move-object v0, p1

    .line 122
    .local v0, "host":Lcz/msebera/android/httpclient/HttpHost;
    if-nez v0, :cond_0

    .line 123
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v1

    const-string v2, "http.default-host"

    invoke-interface {v1, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    .line 125
    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    invoke-interface {v1, v0, p2, p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;->determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v1

    return-object v1
.end method

.method private setupContext(Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)V
    .locals 2
    .param p1, "context"    # Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    .line 129
    const-string v0, "http.auth.target-scope"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    :cond_0
    const-string v0, "http.auth.proxy-scope"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 133
    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    :cond_1
    const-string v0, "http.authscheme-registry"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 136
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    invoke-virtual {p1, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    :cond_2
    const-string v0, "http.cookiespec-registry"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 139
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    invoke-virtual {p1, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    :cond_3
    const-string v0, "http.cookie-store"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 142
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

    invoke-virtual {p1, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    :cond_4
    const-string v0, "http.auth.credentials-provider"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 145
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    invoke-virtual {p1, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    :cond_5
    const-string v0, "http.request-config"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 148
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->defaultConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    invoke-virtual {p1, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    :cond_6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 198
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->closeables:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .line 201
    .local v1, "closeable":Ljava/io/Closeable;
    :try_start_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_1

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, "ex":Ljava/io/IOException;
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 205
    .end local v1    # "closeable":Ljava/io/Closeable;
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 207
    :cond_0
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

    .line 157
    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    instance-of v1, p2, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

    if-eqz v1, :cond_0

    .line 160
    move-object v0, p2

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

    .line 163
    :cond_0
    :try_start_0
    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->wrap(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v1

    .line 164
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

    .line 166
    .local v2, "localcontext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    const/4 v3, 0x0

    .line 167
    .local v3, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    instance-of v4, p2, Lcz/msebera/android/httpclient/client/methods/Configurable;

    if-eqz v4, :cond_2

    .line 168
    move-object v4, p2

    check-cast v4, Lcz/msebera/android/httpclient/client/methods/Configurable;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/client/methods/Configurable;->getConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v4

    move-object v3, v4

    .line 170
    :cond_2
    if-nez v3, :cond_4

    .line 171
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v4

    .line 172
    .local v4, "params":Lcz/msebera/android/httpclient/params/HttpParams;
    instance-of v5, v4, Lcz/msebera/android/httpclient/params/HttpParamsNames;

    if-eqz v5, :cond_3

    .line 173
    move-object v5, v4

    check-cast v5, Lcz/msebera/android/httpclient/params/HttpParamsNames;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/params/HttpParamsNames;->getNames()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 174
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->defaultConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    invoke-static {v4, v5}, Lcz/msebera/android/httpclient/client/params/HttpClientParamConfig;->getRequestConfig(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/client/config/RequestConfig;)Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v5

    move-object v3, v5

    goto :goto_1

    .line 177
    :cond_3
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->defaultConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    invoke-static {v4, v5}, Lcz/msebera/android/httpclient/client/params/HttpClientParamConfig;->getRequestConfig(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/client/config/RequestConfig;)Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v5

    move-object v3, v5

    .line 180
    .end local v4    # "params":Lcz/msebera/android/httpclient/params/HttpParams;
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 181
    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setRequestConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)V

    .line 183
    :cond_5
    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->setupContext(Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)V

    .line 184
    invoke-direct {p0, p1, v1, v2}, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v4

    .line 185
    .local v4, "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->execChain:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    invoke-interface {v5, v4, v1, v2, v0}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v5
    :try_end_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 186
    .end local v1    # "wrapper":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .end local v2    # "localcontext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .end local v3    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .end local v4    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    :catch_0
    move-exception v1

    .line 187
    .local v1, "httpException":Lcz/msebera/android/httpclient/HttpException;
    new-instance v2, Lcz/msebera/android/httpclient/client/ClientProtocolException;

    invoke-direct {v2, v1}, Lcz/msebera/android/httpclient/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .locals 1

    .line 193
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;->defaultConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    return-object v0
.end method

.method public getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .locals 1

    .line 217
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient$1;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient$1;-><init>(Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;)V

    return-object v0
.end method

.method public getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .locals 1

    .line 211
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

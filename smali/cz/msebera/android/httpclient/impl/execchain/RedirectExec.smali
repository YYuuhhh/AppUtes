.class public Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;
.super Ljava/lang/Object;
.source "RedirectExec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

.field private final requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

.field private final routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/client/RedirectStrategy;)V
    .locals 2
    .param p1, "requestExecutor"    # Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .param p2, "routePlanner"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;
    .param p3, "redirectStrategy"    # Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 82
    const-string v0, "HTTP client request executor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    const-string v0, "HTTP route planner"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    const-string v0, "HTTP redirect strategy"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 86
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 87
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 88
    return-void
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

    .line 96
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v0, "HTTP route"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string v0, "HTTP request"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    const-string v0, "HTTP context"

    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRedirectLocations()Ljava/util/List;

    move-result-object v5

    .line 101
    .local v5, "redirectLocations":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    if-eqz v5, :cond_0

    .line 102
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 105
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v6

    .line 106
    .local v6, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getMaxRedirects()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getMaxRedirects()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x32

    :goto_0
    move v7, v0

    .line 107
    .local v7, "maxRedirects":I
    move-object/from16 v0, p1

    .line 108
    .local v0, "currentRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    move-object/from16 v8, p2

    .line 109
    .local v8, "currentRequest":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    const/4 v9, 0x0

    move v10, v9

    move-object v9, v8

    move-object v8, v0

    .line 110
    .end local v0    # "currentRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .local v8, "currentRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .local v9, "currentRequest":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .local v10, "redirectCount":I
    :goto_1
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-object/from16 v11, p4

    invoke-interface {v0, v8, v9, v2, v11}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v12

    .line 113
    .local v12, "response":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_start_0
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isRedirectsEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 114
    invoke-virtual {v9}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v13

    invoke-interface {v0, v13, v12, v2}, Lcz/msebera/android/httpclient/client/RedirectStrategy;->isRedirected(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 116
    if-ge v10, v7, :cond_9

    .line 119
    add-int/lit8 v10, v10, 0x1

    .line 121
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 122
    invoke-virtual {v9}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v13

    .line 121
    invoke-interface {v0, v13, v12, v2}, Lcz/msebera/android/httpclient/client/RedirectStrategy;->getRedirect(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    move-result-object v0

    .line 123
    .local v0, "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpRequest;->headerIterator()Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v13

    invoke-interface {v13}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 124
    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v13

    .line 125
    .local v13, "original":Lcz/msebera/android/httpclient/HttpRequest;
    invoke-interface {v13}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v14

    invoke-interface {v0, v14}, Lcz/msebera/android/httpclient/HttpRequest;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 127
    .end local v13    # "original":Lcz/msebera/android/httpclient/HttpRequest;
    :cond_2
    invoke-static {v0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->wrap(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v13

    move-object v9, v13

    .line 129
    nop

    instance-of v13, v9, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v13, :cond_3

    .line 130
    move-object v13, v9

    check-cast v13, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-static {v13}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->enhance(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    .line 133
    :cond_3
    invoke-virtual {v9}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v13

    .line 134
    .local v13, "uri":Ljava/net/URI;
    invoke-static {v13}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v14

    .line 135
    .local v14, "newTarget":Lcz/msebera/android/httpclient/HttpHost;
    if-eqz v14, :cond_8

    .line 141
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcz/msebera/android/httpclient/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 142
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetAuthState()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v15

    .line 143
    .local v15, "targetAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    if-eqz v15, :cond_4

    .line 144
    move-object/from16 v16, v0

    .end local v0    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    .local v16, "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Resetting target auth state"

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v15}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    goto :goto_2

    .line 143
    .end local v16    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v0    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    :cond_4
    move-object/from16 v16, v0

    .line 147
    .end local v0    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v16    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getProxyAuthState()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v0

    .line 148
    .local v0, "proxyAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/AuthState;->isConnectionBased()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 149
    iget-object v3, v1, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Resetting proxy auth state"

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 150
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    goto :goto_3

    .line 141
    .end local v15    # "targetAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    .end local v16    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    .local v0, "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    :cond_5
    move-object/from16 v16, v0

    .line 154
    .end local v0    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v16    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    :cond_6
    :goto_3
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    invoke-interface {v0, v14, v9, v2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;->determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    move-object v8, v0

    .line 155
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirecting to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' via "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 158
    :cond_7
    invoke-interface {v12}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 159
    invoke-interface {v12}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 160
    .end local v13    # "uri":Ljava/net/URI;
    .end local v14    # "newTarget":Lcz/msebera/android/httpclient/HttpHost;
    .end local v16    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    nop

    .line 180
    nop

    .line 181
    .end local v12    # "response":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    goto/16 :goto_1

    .line 136
    .restart local v0    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v12    # "response":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .restart local v13    # "uri":Ljava/net/URI;
    .restart local v14    # "newTarget":Lcz/msebera/android/httpclient/HttpHost;
    :cond_8
    move-object/from16 v16, v0

    .end local v0    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v16    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirect URI does not specify a valid host name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v5    # "redirectLocations":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    .end local v6    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .end local v7    # "maxRedirects":I
    .end local v8    # "currentRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v9    # "currentRequest":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .end local v10    # "redirectCount":I
    .end local v12    # "response":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .end local p1    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local p2    # "request":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .end local p3    # "context":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .end local p4    # "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    throw v0

    .line 117
    .end local v13    # "uri":Ljava/net/URI;
    .end local v14    # "newTarget":Lcz/msebera/android/httpclient/HttpHost;
    .end local v16    # "redirect":Lcz/msebera/android/httpclient/HttpRequest;
    .restart local v5    # "redirectLocations":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    .restart local v6    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .restart local v7    # "maxRedirects":I
    .restart local v8    # "currentRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v9    # "currentRequest":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .restart local v10    # "redirectCount":I
    .restart local v12    # "response":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .restart local p1    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local p2    # "request":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .restart local p3    # "context":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .restart local p4    # "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    :cond_9
    new-instance v0, Lcz/msebera/android/httpclient/client/RedirectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum redirects ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") exceeded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcz/msebera/android/httpclient/client/RedirectException;-><init>(Ljava/lang/String;)V

    .end local v5    # "redirectLocations":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    .end local v6    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .end local v7    # "maxRedirects":I
    .end local v8    # "currentRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local v9    # "currentRequest":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .end local v10    # "redirectCount":I
    .end local v12    # "response":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .end local p1    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .end local p2    # "request":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .end local p3    # "context":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .end local p4    # "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .restart local v5    # "redirectLocations":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    .restart local v6    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .restart local v7    # "maxRedirects":I
    .restart local v8    # "currentRoute":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local v9    # "currentRequest":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .restart local v10    # "redirectCount":I
    .restart local v12    # "response":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .restart local p1    # "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .restart local p2    # "request":Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .restart local p3    # "context":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .restart local p4    # "execAware":Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;
    :cond_a
    return-object v12

    .line 169
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 173
    .local v3, "ex":Lcz/msebera/android/httpclient/HttpException;
    :try_start_1
    invoke-interface {v12}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :goto_4
    invoke-interface {v12}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 178
    goto :goto_5

    .line 177
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 174
    :catch_1
    move-exception v0

    .line 175
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_2
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v13, "I/O error while releasing connection"

    invoke-virtual {v4, v13, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ioex":Ljava/io/IOException;
    goto :goto_4

    .line 179
    :goto_5
    throw v3

    .line 177
    :goto_6
    invoke-interface {v12}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 178
    throw v0

    .line 166
    .end local v3    # "ex":Lcz/msebera/android/httpclient/HttpException;
    :catch_2
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/io/IOException;
    invoke-interface {v12}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 168
    throw v0

    .line 163
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 164
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-interface {v12}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 165
    throw v0
.end method

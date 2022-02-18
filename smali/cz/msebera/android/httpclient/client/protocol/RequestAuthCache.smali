.class public Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;
.super Ljava/lang/Object;
.source "RequestAuthCache.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 65
    return-void
.end method

.method private doPreemptiveAuth(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/client/CredentialsProvider;)V
    .locals 5
    .param p1, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "authScheme"    # Lcz/msebera/android/httpclient/auth/AuthScheme;
    .param p3, "authState"    # Lcz/msebera/android/httpclient/auth/AuthState;
    .param p4, "credsProvider"    # Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 129
    invoke-interface {p2}, Lcz/msebera/android/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "schemeName":Ljava/lang/String;
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-using cached \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 134
    :cond_0
    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthScope;

    sget-object v2, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v1, "authScope":Lcz/msebera/android/httpclient/auth/AuthScope;
    invoke-interface {p4, v1}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->getCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v2

    .line 137
    .local v2, "creds":Lcz/msebera/android/httpclient/auth/Credentials;
    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {p3, p2, v2}, Lcz/msebera/android/httpclient/auth/AuthState;->update(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v3, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "No credentials for preemptive authentication"

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 142
    :goto_0
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 10
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    const-string v0, "HTTP context"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 75
    .local v0, "clientContext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAuthCache()Lcz/msebera/android/httpclient/client/AuthCache;

    move-result-object v1

    .line 76
    .local v1, "authCache":Lcz/msebera/android/httpclient/client/AuthCache;
    if-nez v1, :cond_0

    .line 77
    iget-object v2, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Auth cache not set in the context"

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 78
    return-void

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getCredentialsProvider()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v2

    .line 82
    .local v2, "credsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    if-nez v2, :cond_1

    .line 83
    iget-object v3, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Credentials provider not set in the context"

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 84
    return-void

    .line 87
    :cond_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getHttpRoute()Lcz/msebera/android/httpclient/conn/routing/RouteInfo;

    move-result-object v3

    .line 88
    .local v3, "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    if-nez v3, :cond_2

    .line 89
    iget-object v4, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Route info not set in the context"

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 90
    return-void

    .line 93
    :cond_2
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v4

    .line 94
    .local v4, "target":Lcz/msebera/android/httpclient/HttpHost;
    if-nez v4, :cond_3

    .line 95
    iget-object v5, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Target host not set in the context"

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 96
    return-void

    .line 99
    :cond_3
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v5

    if-gez v5, :cond_4

    .line 100
    new-instance v5, Lcz/msebera/android/httpclient/HttpHost;

    .line 101
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v7

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v7

    .line 103
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v4, v5

    .line 106
    :cond_4
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetAuthState()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v5

    .line 107
    .local v5, "targetState":Lcz/msebera/android/httpclient/auth/AuthState;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v6

    sget-object v7, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->UNCHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    if-ne v6, v7, :cond_5

    .line 108
    invoke-interface {v1, v4}, Lcz/msebera/android/httpclient/client/AuthCache;->get(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v6

    .line 109
    .local v6, "authScheme":Lcz/msebera/android/httpclient/auth/AuthScheme;
    if-eqz v6, :cond_5

    .line 110
    invoke-direct {p0, v4, v6, v5, v2}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->doPreemptiveAuth(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/client/CredentialsProvider;)V

    .line 114
    .end local v6    # "authScheme":Lcz/msebera/android/httpclient/auth/AuthScheme;
    :cond_5
    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v6

    .line 115
    .local v6, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getProxyAuthState()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v7

    .line 116
    .local v7, "proxyState":Lcz/msebera/android/httpclient/auth/AuthState;
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v8

    sget-object v9, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->UNCHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    if-ne v8, v9, :cond_6

    .line 117
    invoke-interface {v1, v6}, Lcz/msebera/android/httpclient/client/AuthCache;->get(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v8

    .line 118
    .local v8, "authScheme":Lcz/msebera/android/httpclient/auth/AuthScheme;
    if-eqz v8, :cond_6

    .line 119
    invoke-direct {p0, v6, v8, v7, v2}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;->doPreemptiveAuth(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/client/CredentialsProvider;)V

    .line 122
    .end local v8    # "authScheme":Lcz/msebera/android/httpclient/auth/AuthScheme;
    :cond_6
    return-void
.end method

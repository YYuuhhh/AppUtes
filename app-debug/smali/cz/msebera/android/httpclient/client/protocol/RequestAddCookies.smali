.class public Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 74
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 27
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "HTTP request"

    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    const-string v0, "HTTP context"

    invoke-static {v3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "method":Ljava/lang/String;
    const-string v0, "CONNECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    return-void

    .line 87
    :cond_0
    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v5

    .line 90
    .local v5, "clientContext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getCookieStore()Lcz/msebera/android/httpclient/client/CookieStore;

    move-result-object v6

    .line 91
    .local v6, "cookieStore":Lcz/msebera/android/httpclient/client/CookieStore;
    if-nez v6, :cond_1

    .line 92
    iget-object v0, v1, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Cookie store not specified in HTTP context"

    invoke-virtual {v0, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 93
    return-void

    .line 97
    :cond_1
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getCookieSpecRegistry()Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v7

    .line 98
    .local v7, "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    if-nez v7, :cond_2

    .line 99
    iget-object v0, v1, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v8, "CookieSpec registry not specified in HTTP context"

    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 100
    return-void

    .line 104
    :cond_2
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v8

    .line 105
    .local v8, "targetHost":Lcz/msebera/android/httpclient/HttpHost;
    if-nez v8, :cond_3

    .line 106
    iget-object v0, v1, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v9, "Target host not set in the context"

    invoke-virtual {v0, v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 107
    return-void

    .line 111
    :cond_3
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getHttpRoute()Lcz/msebera/android/httpclient/conn/routing/RouteInfo;

    move-result-object v9

    .line 112
    .local v9, "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    if-nez v9, :cond_4

    .line 113
    iget-object v0, v1, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v10, "Connection route not set in the context"

    invoke-virtual {v0, v10}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 114
    return-void

    .line 117
    :cond_4
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v10

    .line 118
    .local v10, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    invoke-virtual {v10}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getCookieSpec()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "policy":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 120
    const-string v0, "default"

    move-object v11, v0

    goto :goto_0

    .line 119
    :cond_5
    move-object v11, v0

    .line 122
    .end local v0    # "policy":Ljava/lang/String;
    .local v11, "policy":Ljava/lang/String;
    :goto_0
    iget-object v0, v1, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    iget-object v0, v1, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CookieSpec selected: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 126
    :cond_6
    const/4 v12, 0x0

    .line 127
    .local v12, "requestURI":Ljava/net/URI;
    instance-of v0, v2, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    if-eqz v0, :cond_7

    .line 128
    move-object v0, v2

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v12

    goto :goto_1

    .line 131
    :cond_7
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v13

    invoke-interface {v13}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    .line 133
    goto :goto_1

    .line 132
    :catch_0
    move-exception v0

    .line 135
    :goto_1
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 136
    .local v0, "path":Ljava/lang/String;
    :goto_2
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v13

    .line 137
    .local v13, "hostName":Ljava/lang/String;
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v14

    .line 138
    .local v14, "port":I
    if-gez v14, :cond_9

    .line 139
    invoke-interface {v9}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v15

    invoke-virtual {v15}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v14

    .line 142
    :cond_9
    new-instance v15, Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    if-ltz v14, :cond_a

    move-object/from16 v17, v4

    move v4, v14

    goto :goto_3

    :cond_a
    const/16 v16, 0x0

    move-object/from16 v17, v4

    move/from16 v4, v16

    .line 145
    .end local v4    # "method":Ljava/lang/String;
    .local v17, "method":Ljava/lang/String;
    :goto_3
    invoke-static {v0}, Lcz/msebera/android/httpclient/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_b

    move-object/from16 v18, v0

    goto :goto_4

    :cond_b
    const-string v16, "/"

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    .line 146
    .end local v0    # "path":Ljava/lang/String;
    .local v18, "path":Ljava/lang/String;
    :goto_4
    move-object/from16 v16, v8

    .end local v8    # "targetHost":Lcz/msebera/android/httpclient/HttpHost;
    .local v16, "targetHost":Lcz/msebera/android/httpclient/HttpHost;
    invoke-interface {v9}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->isSecure()Z

    move-result v8

    invoke-direct {v15, v13, v4, v0, v8}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    move-object v0, v15

    .line 149
    .local v0, "cookieOrigin":Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    invoke-interface {v7, v11}, Lcz/msebera/android/httpclient/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;

    .line 150
    .local v4, "provider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    if-nez v4, :cond_d

    .line 151
    iget-object v8, v1, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 152
    iget-object v8, v1, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v7

    .end local v7    # "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    .local v19, "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    const-string v7, "Unsupported cookie policy: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_5

    .line 151
    .end local v19    # "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    .restart local v7    # "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    :cond_c
    move-object/from16 v19, v7

    .line 155
    .end local v7    # "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    .restart local v19    # "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    :goto_5
    return-void

    .line 157
    .end local v19    # "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    .restart local v7    # "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    :cond_d
    move-object/from16 v19, v7

    .end local v7    # "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    .restart local v19    # "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;>;"
    invoke-interface {v4, v5}, Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;->create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;

    move-result-object v7

    .line 159
    .local v7, "cookieSpec":Lcz/msebera/android/httpclient/cookie/CookieSpec;
    invoke-interface {v6}, Lcz/msebera/android/httpclient/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v8

    .line 161
    .local v8, "cookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v15, "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    move-object/from16 v21, v20

    .line 163
    .local v21, "now":Ljava/util/Date;
    const/16 v20, 0x0

    .line 164
    .local v20, "expired":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v4

    .end local v4    # "provider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    .local v24, "provider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    move-object/from16 v4, v23

    check-cast v4, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 165
    .local v4, "cookie":Lcz/msebera/android/httpclient/cookie/Cookie;
    move-object/from16 v23, v5

    move-object/from16 v5, v21

    .end local v21    # "now":Ljava/util/Date;
    .local v5, "now":Ljava/util/Date;
    .local v23, "clientContext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    invoke-interface {v4, v5}, Lcz/msebera/android/httpclient/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v21

    move-object/from16 v25, v8

    .end local v8    # "cookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    .local v25, "cookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    const-string v8, "Cookie "

    if-nez v21, :cond_10

    .line 166
    invoke-interface {v7, v4, v0}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 167
    move-object/from16 v21, v9

    .end local v9    # "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    .local v21, "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    iget-object v9, v1, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 168
    iget-object v9, v1, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v26, v10

    .end local v10    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .local v26, "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " match "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_7

    .line 167
    .end local v26    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .restart local v10    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    :cond_e
    move-object/from16 v26, v10

    .line 170
    .end local v10    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .restart local v26    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    :goto_7
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 166
    .end local v21    # "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    .end local v26    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .restart local v9    # "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    .restart local v10    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    :cond_f
    move-object/from16 v21, v9

    move-object/from16 v26, v10

    .end local v9    # "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    .end local v10    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .restart local v21    # "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    .restart local v26    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    goto :goto_8

    .line 173
    .end local v21    # "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    .end local v26    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .restart local v9    # "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    .restart local v10    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    :cond_10
    move-object/from16 v21, v9

    move-object/from16 v26, v10

    .end local v9    # "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    .end local v10    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .restart local v21    # "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    .restart local v26    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    iget-object v9, v1, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 174
    iget-object v9, v1, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " expired"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 176
    :cond_11
    const/4 v8, 0x1

    move/from16 v20, v8

    .line 178
    .end local v4    # "cookie":Lcz/msebera/android/httpclient/cookie/Cookie;
    :goto_8
    move-object/from16 v9, v21

    move-object/from16 v4, v24

    move-object/from16 v8, v25

    move-object/from16 v10, v26

    move-object/from16 v21, v5

    move-object/from16 v5, v23

    goto/16 :goto_6

    .line 182
    .end local v23    # "clientContext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .end local v24    # "provider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    .end local v25    # "cookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    .end local v26    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .local v4, "provider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    .local v5, "clientContext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .restart local v8    # "cookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    .restart local v9    # "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    .restart local v10    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .local v21, "now":Ljava/util/Date;
    :cond_12
    move-object/from16 v24, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v8

    move-object/from16 v26, v10

    move-object/from16 v5, v21

    move-object/from16 v21, v9

    .end local v4    # "provider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    .end local v8    # "cookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    .end local v9    # "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    .end local v10    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .local v5, "now":Ljava/util/Date;
    .local v21, "route":Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    .restart local v23    # "clientContext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .restart local v24    # "provider":Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;
    .restart local v25    # "cookies":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/cookie/Cookie;>;"
    .restart local v26    # "config":Lcz/msebera/android/httpclient/client/config/RequestConfig;
    if-eqz v20, :cond_13

    .line 183
    invoke-interface {v6, v5}, Lcz/msebera/android/httpclient/client/CookieStore;->clearExpired(Ljava/util/Date;)Z

    .line 186
    :cond_13
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    .line 187
    invoke-interface {v7, v15}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 188
    .local v4, "headers":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/Header;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcz/msebera/android/httpclient/Header;

    .line 189
    .local v9, "header":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v2, v9}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 190
    .end local v9    # "header":Lcz/msebera/android/httpclient/Header;
    goto :goto_9

    .line 193
    .end local v4    # "headers":Ljava/util/List;, "Ljava/util/List<Lcz/msebera/android/httpclient/Header;>;"
    :cond_14
    invoke-interface {v7}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->getVersion()I

    move-result v4

    .line 194
    .local v4, "ver":I
    if-lez v4, :cond_15

    .line 195
    invoke-interface {v7}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->getVersionHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object v8

    .line 196
    .local v8, "header":Lcz/msebera/android/httpclient/Header;
    if-eqz v8, :cond_15

    .line 198
    invoke-interface {v2, v8}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 204
    .end local v8    # "header":Lcz/msebera/android/httpclient/Header;
    :cond_15
    const-string v8, "http.cookie-spec"

    invoke-interface {v3, v8, v7}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    const-string v8, "http.cookie-origin"

    invoke-interface {v3, v8, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    return-void
.end method

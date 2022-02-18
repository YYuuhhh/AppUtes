.class Lcom/loopj/android/http/MyRedirectHandler;
.super Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;
.source "MyRedirectHandler.java"


# static fields
.field private static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"


# instance fields
.field private final enableRedirects:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "allowRedirects"    # Z

    .line 51
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/loopj/android/http/MyRedirectHandler;->enableRedirects:Z

    .line 53
    return-void
.end method


# virtual methods
.method public getLocationURI(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/URI;
    .locals 10
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    .line 81
    if-eqz p1, :cond_8

    .line 85
    const-string v0, "location"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 86
    .local v0, "locationHeader":Lcz/msebera/android/httpclient/Header;
    if-eqz v0, :cond_7

    .line 94
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "location":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    .local v2, "uri":Ljava/net/URI;
    nop

    .line 103
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v3

    .line 106
    .local v3, "params":Lcz/msebera/android/httpclient/params/HttpParams;
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 107
    const-string v4, "http.protocol.reject-relative-redirect"

    invoke-interface {v3, v4}, Lcz/msebera/android/httpclient/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 112
    const-string v4, "http.target_host"

    invoke-interface {p2, v4}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpHost;

    .line 114
    .local v4, "target":Lcz/msebera/android/httpclient/HttpHost;
    if-eqz v4, :cond_0

    .line 119
    const-string v6, "http.request"

    invoke-interface {p2, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/HttpRequest;

    .line 123
    .local v6, "request":Lcz/msebera/android/httpclient/HttpRequest;
    :try_start_1
    new-instance v7, Ljava/net/URI;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v8

    invoke-interface {v8}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 124
    .local v7, "requestURI":Ljava/net/URI;
    invoke-static {v7, v4, v5}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v8

    .line 125
    .local v8, "absoluteRequestURI":Ljava/net/URI;
    invoke-static {v8, v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v9
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v9

    .line 128
    .end local v7    # "requestURI":Ljava/net/URI;
    .end local v8    # "absoluteRequestURI":Ljava/net/URI;
    goto :goto_0

    .line 126
    :catch_0
    move-exception v5

    .line 127
    .local v5, "ex":Ljava/net/URISyntaxException;
    new-instance v7, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v5}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 115
    .end local v5    # "ex":Ljava/net/URISyntaxException;
    .end local v6    # "request":Lcz/msebera/android/httpclient/HttpRequest;
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Target host not available in the HTTP context"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    .end local v4    # "target":Lcz/msebera/android/httpclient/HttpHost;
    :cond_1
    new-instance v4, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Relative redirect location \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not allowed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    :cond_2
    :goto_0
    const-string v4, "http.protocol.allow-circular-redirects"

    invoke-interface {v3, v4}, Lcz/msebera/android/httpclient/params/HttpParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 133
    const-string v4, "http.protocol.redirect-locations"

    invoke-interface {p2, v4}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    .line 136
    .local v6, "redirectLocations":Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
    if-nez v6, :cond_3

    .line 137
    new-instance v7, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    invoke-direct {v7}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;-><init>()V

    move-object v6, v7

    .line 138
    invoke-interface {p2, v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    :cond_3
    invoke-virtual {v2}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 144
    :try_start_2
    new-instance v4, Lcz/msebera/android/httpclient/HttpHost;

    .line 145
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 146
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v8

    .line 147
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v7, v8, v9}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    .restart local v4    # "target":Lcz/msebera/android/httpclient/HttpHost;
    invoke-static {v2, v4, v5}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v5
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v5

    .line 151
    .local v4, "redirectURI":Ljava/net/URI;
    goto :goto_1

    .line 149
    .end local v4    # "redirectURI":Ljava/net/URI;
    :catch_1
    move-exception v4

    .line 150
    .local v4, "ex":Ljava/net/URISyntaxException;
    new-instance v5, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v4}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 153
    .end local v4    # "ex":Ljava/net/URISyntaxException;
    :cond_4
    move-object v4, v2

    .line 156
    .local v4, "redirectURI":Ljava/net/URI;
    :goto_1
    invoke-virtual {v6, v4}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->contains(Ljava/net/URI;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 160
    invoke-virtual {v6, v4}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->add(Ljava/net/URI;)V

    goto :goto_2

    .line 157
    :cond_5
    new-instance v5, Lcz/msebera/android/httpclient/client/CircularRedirectException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Circular redirect to \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcz/msebera/android/httpclient/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 164
    .end local v4    # "redirectURI":Ljava/net/URI;
    .end local v6    # "redirectLocations":Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
    :cond_6
    :goto_2
    return-object v2

    .line 99
    .end local v2    # "uri":Ljava/net/URI;
    .end local v3    # "params":Lcz/msebera/android/httpclient/params/HttpParams;
    :catch_2
    move-exception v2

    .line 100
    .local v2, "ex":Ljava/net/URISyntaxException;
    new-instance v3, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid redirect URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 88
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    :cond_7
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received redirect response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but no location header"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    .end local v0    # "locationHeader":Lcz/msebera/android/httpclient/Header;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRedirectRequested(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 3
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 59
    iget-boolean v0, p0, Lcom/loopj/android/http/MyRedirectHandler;->enableRedirects:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60
    return v1

    .line 62
    :cond_0
    if-eqz p1, :cond_2

    .line 65
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    .line 66
    .local v0, "statusCode":I
    const/16 v2, 0x133

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 73
    return v1

    .line 71
    :cond_1
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 63
    .end local v0    # "statusCode":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

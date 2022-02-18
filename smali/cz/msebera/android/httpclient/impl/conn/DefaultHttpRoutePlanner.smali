.class public Lcz/msebera/android/httpclient/impl/conn/DefaultHttpRoutePlanner;
.super Ljava/lang/Object;
.source "DefaultHttpRoutePlanner.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 1
    .param p1, "schreg"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpRoutePlanner;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 80
    return-void
.end method


# virtual methods
.method public determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 6
    .param p1, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 88
    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    nop

    .line 92
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->getForcedRoute(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    .line 93
    .local v0, "route":Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    if-eqz v0, :cond_0

    .line 94
    return-object v0

    .line 100
    :cond_0
    const-string v1, "Target host"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    nop

    .line 103
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->getLocalAddress(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/InetAddress;

    move-result-object v1

    .line 104
    .local v1, "local":Ljava/net/InetAddress;
    nop

    .line 105
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v2

    invoke-static {v2}, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->getDefaultProxy(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    .line 109
    .local v2, "proxy":Lcz/msebera/android/httpclient/HttpHost;
    :try_start_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpRoutePlanner;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .local v3, "schm":Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    nop

    .line 115
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->isLayered()Z

    move-result v4

    .line 117
    .local v4, "secure":Z
    if-nez v2, :cond_1

    .line 118
    new-instance v5, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {v5, p1, v1, v4}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Z)V

    move-object v0, v5

    goto :goto_0

    .line 120
    :cond_1
    new-instance v5, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {v5, p1, v1, v2, v4}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/HttpHost;Z)V

    move-object v0, v5

    .line 122
    :goto_0
    return-object v0

    .line 110
    .end local v3    # "schm":Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    .end local v4    # "secure":Z
    :catch_0
    move-exception v3

    .line 111
    .local v3, "ex":Ljava/lang/IllegalStateException;
    new-instance v4, Lcz/msebera/android/httpclient/HttpException;

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

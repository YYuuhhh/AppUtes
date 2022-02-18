.class public Lcz/msebera/android/httpclient/conn/params/ConnRouteParamBean;
.super Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;
.source "ConnRouteParamBean.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 50
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 51
    return-void
.end method


# virtual methods
.method public setDefaultProxy(Lcz/msebera/android/httpclient/HttpHost;)V
    .locals 2
    .param p1, "defaultProxy"    # Lcz/msebera/android/httpclient/HttpHost;

    .line 55
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnRouteParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 56
    return-void
.end method

.method public setForcedRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .locals 2
    .param p1, "route"    # Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 65
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnRouteParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.route.forced-route"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 66
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 60
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnRouteParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.route.local-address"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 61
    return-void
.end method

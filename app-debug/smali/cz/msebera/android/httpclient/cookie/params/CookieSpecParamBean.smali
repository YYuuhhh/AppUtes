.class public Lcz/msebera/android/httpclient/cookie/params/CookieSpecParamBean;
.super Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;
.source "CookieSpecParamBean.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 49
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 50
    return-void
.end method


# virtual methods
.method public setDatePatterns(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcz/msebera/android/httpclient/cookie/params/CookieSpecParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.protocol.cookie-datepatterns"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 54
    return-void
.end method

.method public setSingleHeader(Z)V
    .locals 2
    .param p1, "singleHeader"    # Z

    .line 57
    iget-object v0, p0, Lcz/msebera/android/httpclient/cookie/params/CookieSpecParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.protocol.single-cookie-header"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 58
    return-void
.end method

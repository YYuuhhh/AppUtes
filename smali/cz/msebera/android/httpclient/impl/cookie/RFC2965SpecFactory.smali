.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecFactory;
.super Ljava/lang/Object;
.source "RFC2965SpecFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecFactory;-><init>([Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 1
    .param p1, "datepatterns"    # [Ljava/lang/String;
    .param p2, "oneHeader"    # Z

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecFactory;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 59
    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 1
    .param p1, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 87
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecFactory;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-object v0
.end method

.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 4
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 67
    if-eqz p1, :cond_1

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "patterns":[Ljava/lang/String;
    const-string v1, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 72
    .local v1, "param":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 74
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    .line 76
    :cond_0
    const/4 v2, 0x0

    const-string v3, "http.protocol.single-cookie-header"

    invoke-interface {p1, v3, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    .line 79
    .local v2, "singleHeader":Z
    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    invoke-direct {v3, v0, v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    return-object v3

    .line 81
    .end local v0    # "patterns":[Ljava/lang/String;
    .end local v1    # "param":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v2    # "singleHeader":Z
    :cond_1
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>()V

    return-object v0
.end method

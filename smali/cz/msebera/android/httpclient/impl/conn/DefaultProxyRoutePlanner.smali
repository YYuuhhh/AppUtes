.class public Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;
.super Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;
.source "DefaultProxyRoutePlanner.java"


# instance fields
.field private final proxy:Lcz/msebera/android/httpclient/HttpHost;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;)V
    .locals 1
    .param p1, "proxy"    # Lcz/msebera/android/httpclient/HttpHost;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;-><init>(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V
    .locals 1
    .param p1, "proxy"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "schemePortResolver"    # Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .line 51
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    .line 52
    const-string v0, "Proxy host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    .line 53
    return-void
.end method


# virtual methods
.method protected determineProxy(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpHost;
    .locals 1
    .param p1, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p2, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    return-object v0
.end method

.class Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;
.super Ljava/lang/Object;
.source "DefaultRedirectStrategyAdaptor.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/RedirectStrategy;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final handler:Lcz/msebera/android/httpclient/client/RedirectHandler;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/client/RedirectHandler;)V
    .locals 0
    .param p1, "handler"    # Lcz/msebera/android/httpclient/client/RedirectHandler;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lcz/msebera/android/httpclient/client/RedirectHandler;

    .line 56
    return-void
.end method


# virtual methods
.method public getHandler()Lcz/msebera/android/httpclient/client/RedirectHandler;
    .locals 1

    .line 81
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lcz/msebera/android/httpclient/client/RedirectHandler;

    return-object v0
.end method

.method public getRedirect(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .locals 3
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lcz/msebera/android/httpclient/client/RedirectHandler;

    invoke-interface {v0, p2, p3}, Lcz/msebera/android/httpclient/client/RedirectHandler;->getLocationURI(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v0

    .line 72
    .local v0, "uri":Ljava/net/URI;
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "method":Ljava/lang/String;
    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    new-instance v2, Lcz/msebera/android/httpclient/client/methods/HttpHead;

    invoke-direct {v2, v0}, Lcz/msebera/android/httpclient/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    return-object v2

    .line 76
    :cond_0
    new-instance v2, Lcz/msebera/android/httpclient/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lcz/msebera/android/httpclient/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    return-object v2
.end method

.method public isRedirected(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 1
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lcz/msebera/android/httpclient/client/RedirectHandler;

    invoke-interface {v0, p2, p3}, Lcz/msebera/android/httpclient/client/RedirectHandler;->isRedirectRequested(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    return v0
.end method

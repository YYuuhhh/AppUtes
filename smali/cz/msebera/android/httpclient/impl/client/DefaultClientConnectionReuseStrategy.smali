.class public Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;
.super Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;
.source "DefaultClientConnectionReuseStrategy.java"


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 5
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 49
    const-string v0, "http.request"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpRequest;

    .line 50
    .local v0, "request":Lcz/msebera/android/httpclient/HttpRequest;
    if-eqz v0, :cond_1

    .line 51
    const-string v1, "Connection"

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 52
    .local v1, "connHeaders":[Lcz/msebera/android/httpclient/Header;
    array-length v2, v1

    if-eqz v2, :cond_1

    .line 53
    new-instance v2, Lcz/msebera/android/httpclient/message/BasicTokenIterator;

    new-instance v3, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;-><init>([Lcz/msebera/android/httpclient/Header;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;)V

    .line 54
    .local v2, "ti":Lcz/msebera/android/httpclient/TokenIterator;
    :goto_0
    invoke-interface {v2}, Lcz/msebera/android/httpclient/TokenIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    invoke-interface {v2}, Lcz/msebera/android/httpclient/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "token":Ljava/lang/String;
    const-string v4, "Close"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    const/4 v4, 0x0

    return v4

    .line 59
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 62
    .end local v1    # "connHeaders":[Lcz/msebera/android/httpclient/Header;
    .end local v2    # "ti":Lcz/msebera/android/httpclient/TokenIterator;
    :cond_1
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v1

    return v1
.end method

.class public Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;


# instance fields
.field private final nonRetriableClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/io/IOException;",
            ">;>;"
        }
    .end annotation
.end field

.field private final requestSentRetryEnabled:Z

.field private final retryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 122
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 123
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3
    .param p1, "retryCount"    # I
    .param p2, "requestSentRetryEnabled"    # Z

    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/io/InterruptedIOException;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/net/UnknownHostException;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/net/ConnectException;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/net/ssl/SSLException;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZLjava/util/Collection;)V

    .line 109
    return-void
.end method

.method protected constructor <init>(IZLjava/util/Collection;)V
    .locals 3
    .param p1, "retryCount"    # I
    .param p2, "requestSentRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/io/IOException;",
            ">;>;)V"
        }
    .end annotation

    .line 81
    .local p3, "clazzes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Ljava/io/IOException;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    .line 83
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->nonRetriableClasses:Ljava/util/Set;

    .line 85
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 86
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/io/IOException;>;"
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->nonRetriableClasses:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/io/IOException;>;"
    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    .line 180
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    return v0
.end method

.method protected handleAsIdempotent(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 1
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 187
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method protected requestIsAborted(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 2
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    move-object v0, p1

    .line 198
    .local v0, "req":Lcz/msebera/android/httpclient/HttpRequest;
    instance-of v1, p1, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    if-eqz v1, :cond_0

    .line 199
    move-object v1, p1

    check-cast v1, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v0

    .line 201
    :cond_0
    instance-of v1, v0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->isAborted()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public retryRequest(Ljava/io/IOException;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 5
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 133
    const-string v0, "Exception parameter"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    .line 137
    return v1

    .line 139
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->nonRetriableClasses:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    return v1

    .line 142
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->nonRetriableClasses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 143
    .local v2, "rejectException":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/io/IOException;>;"
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    return v1

    .line 146
    .end local v2    # "rejectException":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/io/IOException;>;"
    :cond_2
    goto :goto_0

    .line 147
    :cond_3
    invoke-static {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 148
    .local v0, "clientContext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequest()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v2

    .line 150
    .local v2, "request":Lcz/msebera/android/httpclient/HttpRequest;
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->requestIsAborted(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    return v1

    .line 154
    :cond_4
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->handleAsIdempotent(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 156
    return v4

    .line 159
    :cond_5
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->isRequestSent()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v3, :cond_6

    goto :goto_1

    .line 165
    :cond_6
    return v1

    .line 162
    :cond_7
    :goto_1
    return v4
.end method

.class public Lcom/loopj/android/http/SyncHttpClient;
.super Lcom/loopj/android/http/AsyncHttpClient;
.source "SyncHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    const/4 v0, 0x0

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    invoke-direct {p0, v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "httpPort"    # I

    .line 48
    const/4 v0, 0x0

    const/16 v1, 0x1bb

    invoke-direct {p0, v0, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    .line 49
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "httpPort"    # I
    .param p2, "httpsPort"    # I

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 0
    .param p1, "schemeRegistry"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 78
    invoke-direct {p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    .line 79
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0
    .param p1, "fixNoHttpResponseException"    # Z
    .param p2, "httpPort"    # I
    .param p3, "httpsPort"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    .line 70
    return-void
.end method


# virtual methods
.method protected sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;
    .locals 2
    .param p1, "client"    # Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;
    .param p2, "httpContext"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .param p3, "uriRequest"    # Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "responseHandler"    # Lcom/loopj/android/http/ResponseHandlerInterface;
    .param p6, "context"    # Landroid/content/Context;

    .line 86
    if-eqz p4, :cond_0

    .line 87
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p5, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->setUseSynchronousMode(Z)V

    .line 95
    invoke-virtual/range {p0 .. p6}, Lcom/loopj/android/http/SyncHttpClient;->newAsyncHttpRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/AsyncHttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopj/android/http/AsyncHttpRequest;->run()V

    .line 99
    new-instance v0, Lcom/loopj/android/http/RequestHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loopj/android/http/RequestHandle;-><init>(Lcom/loopj/android/http/AsyncHttpRequest;)V

    return-object v0
.end method

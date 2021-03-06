.class public Lcz/msebera/android/httpclient/client/utils/HttpClientUtils;
.super Ljava/lang/Object;
.source "HttpClientUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static closeQuietly(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 2
    .param p0, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .line 71
    if-eqz p0, :cond_0

    .line 72
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 73
    .local v0, "entity":Lcz/msebera/android/httpclient/HttpEntity;
    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 80
    .end local v0    # "entity":Lcz/msebera/android/httpclient/HttpEntity;
    :cond_0
    :goto_0
    return-void
.end method

.method public static closeQuietly(Lcz/msebera/android/httpclient/client/HttpClient;)V
    .locals 1
    .param p0, "httpClient"    # Lcz/msebera/android/httpclient/client/HttpClient;

    .line 139
    if-eqz p0, :cond_0

    .line 140
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 147
    :cond_0
    :goto_0
    return-void
.end method

.method public static closeQuietly(Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)V
    .locals 1
    .param p0, "response"    # Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 105
    if-eqz p0, :cond_0

    .line 108
    :try_start_0
    invoke-interface {p0}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    invoke-interface {p0}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 111
    nop

    .line 113
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 111
    nop

    .end local p0    # "response":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .restart local p0    # "response":Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :catch_0
    move-exception v0

    .line 115
    :cond_0
    :goto_0
    return-void
.end method

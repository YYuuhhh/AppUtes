.class public Lcz/msebera/android/httpclient/impl/client/HttpClients;
.super Ljava/lang/Object;
.source "HttpClients.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static createDefault()Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
    .locals 1

    .line 56
    invoke-static {}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->create()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->build()Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createMinimal()Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
    .locals 2

    .line 72
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;

    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;-><init>()V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)V

    return-object v0
.end method

.method public static createMinimal(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
    .locals 1
    .param p0, "connManager"    # Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 80
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)V

    return-object v0
.end method

.method public static createSystem()Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
    .locals 1

    .line 64
    invoke-static {}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->create()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->useSystemProperties()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->build()Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static custom()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    .line 48
    invoke-static {}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->create()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    move-result-object v0

    return-object v0
.end method

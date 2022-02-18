.class public abstract Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;
.super Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;
.source "HttpRequestBase.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
.implements Lcz/msebera/android/httpclient/client/methods/Configurable;


# instance fields
.field private config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

.field private uri:Ljava/net/URI;

.field private version:Lcz/msebera/android/httpclient/ProtocolVersion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .locals 1

    .line 95
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    return-object v0
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;
    .locals 1

    .line 63
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->getVersion(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRequestLine()Lcz/msebera/android/httpclient/RequestLine;
    .locals 5

    .line 79
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "method":Ljava/lang/String;
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v1

    .line 81
    .local v1, "ver":Lcz/msebera/android/httpclient/ProtocolVersion;
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    .line 82
    .local v2, "uriCopy":Ljava/net/URI;
    const/4 v3, 0x0

    .line 83
    .local v3, "uritext":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v3

    .line 86
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    :cond_1
    const-string v3, "/"

    .line 89
    :cond_2
    new-instance v4, Lcz/msebera/android/httpclient/message/BasicRequestLine;

    invoke-direct {v4, v0, v3, v1}, Lcz/msebera/android/httpclient/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    return-object v4
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public releaseConnection()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->reset()V

    .line 120
    return-void
.end method

.method public setConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)V
    .locals 0
    .param p1, "config"    # Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .line 99
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .line 100
    return-void
.end method

.method public setProtocolVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)V
    .locals 0
    .param p1, "version"    # Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 58
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 59
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .line 103
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->uri:Ljava/net/URI;

    .line 104
    return-void
.end method

.method public started()V
    .locals 0

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

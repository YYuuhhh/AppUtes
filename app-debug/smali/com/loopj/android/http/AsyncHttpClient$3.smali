.class Lcom/loopj/android/http/AsyncHttpClient$3;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/AsyncHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/AsyncHttpClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/loopj/android/http/AsyncHttpClient;

    .line 250
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient$3;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 7
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;-><init>()V

    .line 255
    .local v0, "authSchemeRegistry":Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;
    new-instance v1, Lcom/loopj/android/http/BearerAuthSchemeFactory;

    invoke-direct {v1}, Lcom/loopj/android/http/BearerAuthSchemeFactory;-><init>()V

    const-string v2, "Bearer"

    invoke-virtual {v0, v2, v1}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V

    .line 256
    const-string v1, "http.authscheme-registry"

    invoke-interface {p2, v1, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    const-string v1, "http.auth.target-scope"

    invoke-interface {p2, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/auth/AuthState;

    .line 259
    .local v1, "authState":Lcz/msebera/android/httpclient/auth/AuthState;
    const-string v2, "http.auth.credentials-provider"

    invoke-interface {p2, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/client/CredentialsProvider;

    .line 261
    .local v2, "credsProvider":Lcz/msebera/android/httpclient/client/CredentialsProvider;
    const-string v3, "http.target_host"

    invoke-interface {p2, v3}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/HttpHost;

    .line 263
    .local v3, "targetHost":Lcz/msebera/android/httpclient/HttpHost;
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v4

    if-nez v4, :cond_1

    .line 264
    new-instance v4, Lcz/msebera/android/httpclient/auth/AuthScope;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 265
    .local v4, "authScope":Lcz/msebera/android/httpclient/auth/AuthScope;
    invoke-interface {v2, v4}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->getCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v5

    .line 266
    .local v5, "creds":Lcz/msebera/android/httpclient/auth/Credentials;
    instance-of v6, v5, Lcom/loopj/android/http/TokenCredentials;

    if-eqz v6, :cond_0

    .line 267
    new-instance v6, Lcom/loopj/android/http/BearerAuthSchemeFactory$BearerAuthScheme;

    invoke-direct {v6}, Lcom/loopj/android/http/BearerAuthSchemeFactory$BearerAuthScheme;-><init>()V

    invoke-virtual {v1, v6}, Lcz/msebera/android/httpclient/auth/AuthState;->setAuthScheme(Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    .line 268
    invoke-virtual {v1, v5}, Lcz/msebera/android/httpclient/auth/AuthState;->setCredentials(Lcz/msebera/android/httpclient/auth/Credentials;)V

    goto :goto_0

    .line 269
    :cond_0
    if-eqz v5, :cond_1

    .line 270
    new-instance v6, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>()V

    invoke-virtual {v1, v6}, Lcz/msebera/android/httpclient/auth/AuthState;->setAuthScheme(Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    .line 271
    invoke-virtual {v1, v5}, Lcz/msebera/android/httpclient/auth/AuthState;->setCredentials(Lcz/msebera/android/httpclient/auth/Credentials;)V

    .line 274
    .end local v4    # "authScope":Lcz/msebera/android/httpclient/auth/AuthScope;
    .end local v5    # "creds":Lcz/msebera/android/httpclient/auth/Credentials;
    :cond_1
    :goto_0
    return-void
.end method

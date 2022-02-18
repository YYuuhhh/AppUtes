.class public Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;
.super Ljava/lang/Object;
.source "DefaultUserTokenHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/UserTokenHandler;


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAuthPrincipal(Lcz/msebera/android/httpclient/auth/AuthState;)Ljava/security/Principal;
    .locals 3
    .param p0, "authState"    # Lcz/msebera/android/httpclient/auth/AuthState;

    .line 93
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v0

    .line 94
    .local v0, "scheme":Lcz/msebera/android/httpclient/auth/AuthScheme;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/auth/AuthState;->getCredentials()Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v1

    .line 96
    .local v1, "creds":Lcz/msebera/android/httpclient/auth/Credentials;
    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v1}, Lcz/msebera/android/httpclient/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v2

    return-object v2

    .line 100
    .end local v1    # "creds":Lcz/msebera/android/httpclient/auth/Credentials;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getUserToken(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 66
    invoke-static {p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 68
    .local v0, "clientContext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    const/4 v1, 0x0

    .line 70
    .local v1, "userPrincipal":Ljava/security/Principal;
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetAuthState()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v2

    .line 71
    .local v2, "targetAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    if-eqz v2, :cond_0

    .line 72
    invoke-static {v2}, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lcz/msebera/android/httpclient/auth/AuthState;)Ljava/security/Principal;

    move-result-object v1

    .line 73
    if-nez v1, :cond_0

    .line 74
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getProxyAuthState()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v3

    .line 75
    .local v3, "proxyAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    invoke-static {v3}, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lcz/msebera/android/httpclient/auth/AuthState;)Ljava/security/Principal;

    move-result-object v1

    .line 79
    .end local v3    # "proxyAuthState":Lcz/msebera/android/httpclient/auth/AuthState;
    :cond_0
    if-nez v1, :cond_1

    .line 80
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getConnection()Lcz/msebera/android/httpclient/HttpConnection;

    move-result-object v3

    .line 81
    .local v3, "conn":Lcz/msebera/android/httpclient/HttpConnection;
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpConnection;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v3, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    if-eqz v4, :cond_1

    .line 82
    move-object v4, v3

    check-cast v4, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    .line 83
    .local v4, "sslsession":Ljavax/net/ssl/SSLSession;
    if-eqz v4, :cond_1

    .line 84
    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v1

    .line 89
    .end local v3    # "conn":Lcz/msebera/android/httpclient/HttpConnection;
    .end local v4    # "sslsession":Ljavax/net/ssl/SSLSession;
    :cond_1
    return-object v1
.end method

.class public Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;
.super Ljava/lang/Object;
.source "PlainSocketFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;
.implements Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    .line 78
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;)V
    .locals 0
    .param p1, "nameResolver"    # Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    .line 73
    return-void
.end method

.method public static getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;
    .locals 1

    .line 63
    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "local":Ljava/net/InetSocketAddress;
    if-nez p4, :cond_0

    if-lez p5, :cond_2

    .line 154
    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_1

    move v2, p5

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, p4, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v0, v1

    .line 157
    :cond_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    if-eqz v1, :cond_3

    .line 158
    invoke-interface {v1, p2}, Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .local v1, "remoteAddress":Ljava/net/InetAddress;
    goto :goto_1

    .line 160
    .end local v1    # "remoteAddress":Ljava/net/InetAddress;
    :cond_3
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 162
    .restart local v1    # "remoteAddress":Ljava/net/InetAddress;
    :goto_1
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 163
    .local v2, "remote":Ljava/net/InetSocketAddress;
    invoke-virtual {p0, p1, v2, v0, p6}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v3

    return-object v3
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 7
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "remoteAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "localAddress"    # Ljava/net/InetSocketAddress;
    .param p4, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
        }
    .end annotation

    .line 106
    const-string v0, "Remote address"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    const-string v0, "HTTP parameters"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    move-object v0, p1

    .line 109
    .local v0, "sock":Ljava/net/Socket;
    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 112
    :cond_0
    if-eqz p3, :cond_1

    .line 113
    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getSoReuseaddr(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 114
    invoke-virtual {v0, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 116
    :cond_1
    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v1

    .line 117
    .local v1, "connTimeout":I
    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v2

    .line 120
    .local v2, "soTimeout":I
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 121
    invoke-virtual {v0, p2, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    nop

    .line 125
    return-object v0

    .line 122
    :catch_0
    move-exception v3

    .line 123
    .local v3, "ex":Ljava/net/SocketTimeoutException;
    new-instance v4, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timed out"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    .line 94
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 1
    .param p1, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;

    .line 89
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 1
    .param p1, "sock"    # Ljava/net/Socket;

    .line 139
    const/4 v0, 0x0

    return v0
.end method

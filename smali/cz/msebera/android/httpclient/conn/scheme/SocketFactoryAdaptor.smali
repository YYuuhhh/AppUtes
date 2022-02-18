.class Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SocketFactoryAdaptor.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V
    .locals 0
    .param p1, "factory"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 51
    return-void
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

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "local":Ljava/net/InetSocketAddress;
    if-nez p4, :cond_0

    if-lez p5, :cond_2

    .line 67
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

    .line 69
    :cond_2
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 70
    .local v1, "remoteAddress":Ljava/net/InetAddress;
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 71
    .local v2, "remote":Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-interface {v3, p1, v2, v0, p6}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v3

    return-object v3
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    .line 56
    .local v0, "params":Lcz/msebera/android/httpclient/params/HttpParams;
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 85
    if-nez p1, :cond_0

    .line 86
    const/4 v0, 0x0

    return v0

    .line 88
    :cond_0
    if-ne p0, p1, :cond_1

    .line 89
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_1
    instance-of v0, p1, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    move-object v1, p1

    check-cast v1, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;

    iget-object v1, v1, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 91
    :goto_0
    return v0
.end method

.method public getFactory()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;
    .locals 1

    .line 80
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method

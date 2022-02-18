.class public Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultHttpClientConnectionOperator.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/HttpClientConnectionOperator;


# static fields
.field static final SOCKET_FACTORY_REGISTRY:Ljava/lang/String; = "http.socket-factory-registry"


# instance fields
.field private final dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

.field private final socketFactoryRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;)V
    .locals 2
    .param p2, "schemePortResolver"    # Lcz/msebera/android/httpclient/conn/SchemePortResolver;
    .param p3, "dnsResolver"    # Lcz/msebera/android/httpclient/conn/DnsResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/SchemePortResolver;",
            "Lcz/msebera/android/httpclient/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    .line 79
    .local p1, "socketFactoryRegistry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 80
    const-string v0, "Socket factory registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->socketFactoryRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 82
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .line 84
    if-eqz p3, :cond_1

    move-object v0, p3

    goto :goto_1

    :cond_1
    sget-object v0, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;

    :goto_1
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    .line 86
    return-void
.end method

.method private getSocketFactoryRegistry(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/config/Lookup;
    .locals 1
    .param p1, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/protocol/HttpContext;",
            ")",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation

    .line 90
    const-string v0, "http.socket-factory-registry"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/config/Lookup;

    .line 92
    .local v0, "reg":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;>;"
    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->socketFactoryRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    .line 95
    :cond_0
    return-object v0
.end method


# virtual methods
.method public connect(Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetSocketAddress;ILcz/msebera/android/httpclient/config/SocketConfig;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 21
    .param p1, "conn"    # Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    .param p2, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p3, "localAddress"    # Ljava/net/InetSocketAddress;
    .param p4, "connectTimeout"    # I
    .param p5, "socketConfig"    # Lcz/msebera/android/httpclient/config/SocketConfig;
    .param p6, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p6

    invoke-direct {v1, v11}, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->getSocketFactoryRegistry(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v12

    .line 107
    .local v12, "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;>;"
    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Lcz/msebera/android/httpclient/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;

    .line 108
    .local v13, "sf":Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;
    if-eqz v13, :cond_d

    .line 112
    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_0

    new-array v0, v15, [Ljava/net/InetAddress;

    .line 113
    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v0, v14

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcz/msebera/android/httpclient/conn/DnsResolver;->resolve(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    move-object v9, v0

    .line 114
    .local v9, "addresses":[Ljava/net/InetAddress;
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    invoke-interface {v0, v10}, Lcz/msebera/android/httpclient/conn/SchemePortResolver;->resolve(Lcz/msebera/android/httpclient/HttpHost;)I

    move-result v8

    .line 115
    .local v8, "port":I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_1
    array-length v0, v9

    if-ge v7, v0, :cond_c

    .line 116
    aget-object v6, v9, v7

    .line 117
    .local v6, "address":Ljava/net/InetAddress;
    array-length v0, v9

    sub-int/2addr v0, v15

    if-ne v7, v0, :cond_1

    move v0, v15

    goto :goto_2

    :cond_1
    move v0, v14

    :goto_2
    move/from16 v16, v0

    .line 119
    .local v16, "last":Z
    invoke-interface {v13, v11}, Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;->createSocket(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v5

    .line 120
    .local v5, "sock":Ljava/net/Socket;
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSoTimeout()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 121
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/config/SocketConfig;->isSoReuseAddress()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 122
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/config/SocketConfig;->isTcpNoDelay()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 123
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/config/SocketConfig;->isSoKeepAlive()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 124
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getRcvBufSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 125
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getRcvBufSize()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 127
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSndBufSize()I

    move-result v0

    if-lez v0, :cond_3

    .line 128
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSndBufSize()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 131
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSoLinger()I

    move-result v4

    .line 132
    .local v4, "linger":I
    if-ltz v4, :cond_4

    .line 133
    invoke-virtual {v5, v15, v4}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 135
    :cond_4
    invoke-interface {v2, v5}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 137
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v6, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v3, v0

    .line 138
    .local v3, "remoteAddress":Ljava/net/InetSocketAddress;
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Connecting to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 142
    :cond_5
    move-object v14, v3

    .end local v3    # "remoteAddress":Ljava/net/InetSocketAddress;
    .local v14, "remoteAddress":Ljava/net/InetSocketAddress;
    move-object v3, v13

    move v15, v4

    .end local v4    # "linger":I
    .local v15, "linger":I
    move/from16 v4, p4

    move-object/from16 v17, v5

    .end local v5    # "sock":Ljava/net/Socket;
    .local v17, "sock":Ljava/net/Socket;
    move-object/from16 v18, v6

    .end local v6    # "address":Ljava/net/InetAddress;
    .local v18, "address":Ljava/net/InetAddress;
    move-object/from16 v6, p2

    move/from16 v19, v7

    .end local v7    # "i":I
    .local v19, "i":I
    move-object v7, v14

    move/from16 v20, v8

    .end local v8    # "port":I
    .local v20, "port":I
    move-object/from16 v8, p3

    move-object v11, v9

    .end local v9    # "addresses":[Ljava/net/InetAddress;
    .local v11, "addresses":[Ljava/net/InetAddress;
    move-object/from16 v9, p6

    :try_start_0
    invoke-interface/range {v3 .. v9}, Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;->connectSocket(ILjava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v5, v0

    .line 144
    .end local v17    # "sock":Ljava/net/Socket;
    .restart local v5    # "sock":Ljava/net/Socket;
    :try_start_1
    invoke-interface {v2, v5}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 145
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection established "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/NoRouteToHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    :cond_6
    return-void

    .line 160
    :catch_0
    move-exception v0

    goto :goto_3

    .line 153
    :catch_1
    move-exception v0

    goto :goto_4

    .line 149
    :catch_2
    move-exception v0

    goto :goto_6

    .line 160
    .end local v5    # "sock":Ljava/net/Socket;
    .restart local v17    # "sock":Ljava/net/Socket;
    :catch_3
    move-exception v0

    move-object/from16 v5, v17

    .line 161
    .end local v17    # "sock":Ljava/net/Socket;
    .local v0, "ex":Ljava/net/NoRouteToHostException;
    .restart local v5    # "sock":Ljava/net/Socket;
    :goto_3
    if-nez v16, :cond_7

    goto :goto_8

    .line 162
    :cond_7
    throw v0

    .line 153
    .end local v0    # "ex":Ljava/net/NoRouteToHostException;
    .end local v5    # "sock":Ljava/net/Socket;
    .restart local v17    # "sock":Ljava/net/Socket;
    :catch_4
    move-exception v0

    move-object/from16 v5, v17

    .line 154
    .end local v17    # "sock":Ljava/net/Socket;
    .local v0, "ex":Ljava/net/ConnectException;
    .restart local v5    # "sock":Ljava/net/Socket;
    :goto_4
    if-eqz v16, :cond_9

    .line 155
    invoke-virtual {v0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "Connection timed out"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;

    invoke-direct {v4, v0, v10, v11}, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;-><init>(Ljava/io/IOException;Lcz/msebera/android/httpclient/HttpHost;[Ljava/net/InetAddress;)V

    goto :goto_5

    :cond_8
    new-instance v4, Lcz/msebera/android/httpclient/conn/HttpHostConnectException;

    invoke-direct {v4, v0, v10, v11}, Lcz/msebera/android/httpclient/conn/HttpHostConnectException;-><init>(Ljava/io/IOException;Lcz/msebera/android/httpclient/HttpHost;[Ljava/net/InetAddress;)V

    :goto_5
    throw v4

    .line 154
    .end local v0    # "ex":Ljava/net/ConnectException;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_9
    goto :goto_7

    .line 149
    .end local v5    # "sock":Ljava/net/Socket;
    .restart local v17    # "sock":Ljava/net/Socket;
    :catch_5
    move-exception v0

    move-object/from16 v5, v17

    .line 150
    .end local v17    # "sock":Ljava/net/Socket;
    .local v0, "ex":Ljava/net/SocketTimeoutException;
    .restart local v5    # "sock":Ljava/net/Socket;
    :goto_6
    if-nez v16, :cond_b

    .line 164
    .end local v0    # "ex":Ljava/net/SocketTimeoutException;
    :goto_7
    nop

    .line 165
    :goto_8
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 166
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timed out. Connection will be retried using another IP address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 115
    .end local v5    # "sock":Ljava/net/Socket;
    .end local v14    # "remoteAddress":Ljava/net/InetSocketAddress;
    .end local v15    # "linger":I
    .end local v16    # "last":Z
    .end local v18    # "address":Ljava/net/InetAddress;
    :cond_a
    add-int/lit8 v7, v19, 0x1

    move-object v9, v11

    move/from16 v8, v20

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v11, p6

    .end local v19    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_1

    .line 151
    .end local v7    # "i":I
    .restart local v0    # "ex":Ljava/net/SocketTimeoutException;
    .restart local v5    # "sock":Ljava/net/Socket;
    .restart local v14    # "remoteAddress":Ljava/net/InetSocketAddress;
    .restart local v15    # "linger":I
    .restart local v16    # "last":Z
    .restart local v18    # "address":Ljava/net/InetAddress;
    .restart local v19    # "i":I
    :cond_b
    new-instance v3, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;

    invoke-direct {v3, v0, v10, v11}, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;-><init>(Ljava/io/IOException;Lcz/msebera/android/httpclient/HttpHost;[Ljava/net/InetAddress;)V

    throw v3

    .line 170
    .end local v0    # "ex":Ljava/net/SocketTimeoutException;
    .end local v5    # "sock":Ljava/net/Socket;
    .end local v11    # "addresses":[Ljava/net/InetAddress;
    .end local v14    # "remoteAddress":Ljava/net/InetSocketAddress;
    .end local v15    # "linger":I
    .end local v16    # "last":Z
    .end local v18    # "address":Ljava/net/InetAddress;
    .end local v19    # "i":I
    .end local v20    # "port":I
    .restart local v8    # "port":I
    .restart local v9    # "addresses":[Ljava/net/InetAddress;
    :cond_c
    return-void

    .line 109
    .end local v8    # "port":I
    .end local v9    # "addresses":[Ljava/net/InetAddress;
    :cond_d
    new-instance v0, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " protocol is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public upgrade(Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 7
    .param p1, "conn"    # Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    .param p2, "host"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-static {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 178
    .local v0, "clientContext":Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->getSocketFactoryRegistry(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v1

    .line 179
    .local v1, "registry":Lcz/msebera/android/httpclient/config/Lookup;, "Lcz/msebera/android/httpclient/config/Lookup<Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;>;"
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcz/msebera/android/httpclient/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;

    .line 180
    .local v2, "sf":Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;
    if-eqz v2, :cond_1

    .line 184
    instance-of v3, v2, Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    if-eqz v3, :cond_0

    .line 188
    move-object v3, v2

    check-cast v3, Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    .line 189
    .local v3, "lsf":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    .line 190
    .local v4, "sock":Ljava/net/Socket;
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    invoke-interface {v5, p2}, Lcz/msebera/android/httpclient/conn/SchemePortResolver;->resolve(Lcz/msebera/android/httpclient/HttpHost;)I

    move-result v5

    .line 191
    .local v5, "port":I
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6, v5, p3}, Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v4

    .line 192
    invoke-interface {p1, v4}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 193
    return-void

    .line 185
    .end local v3    # "lsf":Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
    .end local v4    # "sock":Ljava/net/Socket;
    .end local v5    # "port":I
    :cond_0
    new-instance v3, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " protocol does not support connection upgrade"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 181
    :cond_1
    new-instance v3, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " protocol is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

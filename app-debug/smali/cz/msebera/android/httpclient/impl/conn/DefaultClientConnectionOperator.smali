.class public Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected final schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 2
    .param p1, "schemes"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 109
    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 111
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    .line 112
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcz/msebera/android/httpclient/conn/DnsResolver;)V
    .locals 2
    .param p1, "schemes"    # Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .param p2, "dnsResolver"    # Lcz/msebera/android/httpclient/conn/DnsResolver;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 124
    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    const-string v0, "DNS resolver"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 129
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    .line 130
    return-void
.end method

.method private getSchemeRegistry(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .locals 1
    .param p1, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 138
    const-string v0, "http.scheme-registry"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 140
    .local v0, "reg":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 143
    :cond_0
    return-object v0
.end method


# virtual methods
.method public createConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .locals 1

    .line 134
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public openConnection(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 19
    .param p1, "conn"    # Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .param p2, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p3, "local"    # Ljava/net/InetAddress;
    .param p4, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .param p5, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const-string v0, "Connection"

    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    const-string v0, "Target host"

    invoke-static {v3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    const-string v0, "HTTP parameters"

    invoke-static {v6, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    const-string v8, "Connection must not be open"

    invoke-static {v0, v8}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 158
    invoke-direct {v1, v5}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->getSchemeRegistry(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v8

    .line 159
    .local v8, "registry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v9

    .line 160
    .local v9, "schm":Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    invoke-virtual {v9}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getSchemeSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    move-result-object v10

    .line 162
    .local v10, "sf":Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;
    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->resolveHostname(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v11

    .line 163
    .local v11, "addresses":[Ljava/net/InetAddress;
    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v0

    invoke-virtual {v9, v0}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->resolvePort(I)I

    move-result v12

    .line 164
    .local v12, "port":I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_0
    array-length v0, v11

    if-ge v13, v0, :cond_7

    .line 165
    aget-object v14, v11, v13

    .line 166
    .local v14, "address":Ljava/net/InetAddress;
    array-length v0, v11

    sub-int/2addr v0, v7

    const/4 v15, 0x0

    if-ne v13, v0, :cond_0

    move v0, v7

    goto :goto_1

    :cond_0
    move v0, v15

    :goto_1
    move/from16 v16, v0

    .line 168
    .local v16, "last":Z
    invoke-interface {v10, v6}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v7

    .line 169
    .local v7, "sock":Ljava/net/Socket;
    invoke-interface {v2, v7, v3}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;)V

    .line 171
    new-instance v0, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;

    invoke-direct {v0, v3, v14, v12}, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;I)V

    move-object/from16 v17, v0

    .line 172
    .local v17, "remoteAddress":Ljava/net/InetSocketAddress;
    const/4 v0, 0x0

    .line 173
    .local v0, "localAddress":Ljava/net/InetSocketAddress;
    if-eqz v4, :cond_1

    .line 174
    move-object/from16 v18, v0

    .end local v0    # "localAddress":Ljava/net/InetSocketAddress;
    .local v18, "localAddress":Ljava/net/InetSocketAddress;
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v4, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v15, v0

    .end local v18    # "localAddress":Ljava/net/InetSocketAddress;
    .restart local v0    # "localAddress":Ljava/net/InetSocketAddress;
    goto :goto_2

    .line 173
    :cond_1
    move-object/from16 v18, v0

    .end local v0    # "localAddress":Ljava/net/InetSocketAddress;
    .restart local v18    # "localAddress":Ljava/net/InetSocketAddress;
    move-object/from16 v15, v18

    .line 176
    .end local v18    # "localAddress":Ljava/net/InetSocketAddress;
    .local v15, "localAddress":Ljava/net/InetSocketAddress;
    :goto_2
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v8

    .end local v8    # "registry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .local v18, "registry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    const-string v8, "Connecting to "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v8, v17

    .end local v17    # "remoteAddress":Ljava/net/InetSocketAddress;
    .local v8, "remoteAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_3

    .line 176
    .end local v18    # "registry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .local v8, "registry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .restart local v17    # "remoteAddress":Ljava/net/InetSocketAddress;
    :cond_2
    move-object/from16 v18, v8

    move-object/from16 v8, v17

    .line 180
    .end local v17    # "remoteAddress":Ljava/net/InetSocketAddress;
    .local v8, "remoteAddress":Ljava/net/InetSocketAddress;
    .restart local v18    # "registry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    :goto_3
    :try_start_0
    invoke-interface {v10, v7, v8, v15, v6}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    .line 181
    .local v0, "connsock":Ljava/net/Socket;
    if-eq v7, v0, :cond_3

    .line 182
    move-object v7, v0

    .line 183
    invoke-interface {v2, v7, v3}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;)V

    .line 185
    :cond_3
    invoke-virtual {v1, v7, v5, v6}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 186
    invoke-interface {v10, v7}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v4

    invoke-interface {v2, v4, v6}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->openCompleted(ZLcz/msebera/android/httpclient/params/HttpParams;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcz/msebera/android/httpclient/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    return-void

    .line 192
    .end local v0    # "connsock":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ex":Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
    if-nez v16, :cond_4

    goto :goto_4

    .line 194
    :cond_4
    throw v0

    .line 188
    .end local v0    # "ex":Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "ex":Ljava/net/ConnectException;
    if-nez v16, :cond_6

    .line 196
    .end local v0    # "ex":Ljava/net/ConnectException;
    nop

    .line 197
    :goto_4
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connect to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " timed out. Connection will be retried using another IP address"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 164
    .end local v7    # "sock":Ljava/net/Socket;
    .end local v8    # "remoteAddress":Ljava/net/InetSocketAddress;
    .end local v14    # "address":Ljava/net/InetAddress;
    .end local v15    # "localAddress":Ljava/net/InetSocketAddress;
    .end local v16    # "last":Z
    :cond_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v8, v18

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 190
    .restart local v0    # "ex":Ljava/net/ConnectException;
    .restart local v7    # "sock":Ljava/net/Socket;
    .restart local v8    # "remoteAddress":Ljava/net/InetSocketAddress;
    .restart local v14    # "address":Ljava/net/InetAddress;
    .restart local v15    # "localAddress":Ljava/net/InetSocketAddress;
    .restart local v16    # "last":Z
    :cond_6
    throw v0

    .line 202
    .end local v0    # "ex":Ljava/net/ConnectException;
    .end local v7    # "sock":Ljava/net/Socket;
    .end local v13    # "i":I
    .end local v14    # "address":Ljava/net/InetAddress;
    .end local v15    # "localAddress":Ljava/net/InetSocketAddress;
    .end local v16    # "last":Z
    .end local v18    # "registry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .local v8, "registry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    :cond_7
    return-void
.end method

.method protected prepareSocket(Ljava/net/Socket;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .param p3, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-static {p3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getTcpNoDelay(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 240
    invoke-static {p3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 242
    invoke-static {p3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getLinger(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v0

    .line 243
    .local v0, "linger":I
    if-ltz v0, :cond_1

    .line 244
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 246
    :cond_1
    return-void
.end method

.method protected resolveHostname(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/DnsResolver;->resolve(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public updateSecureConnection(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 6
    .param p1, "conn"    # Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .param p2, "target"    # Lcz/msebera/android/httpclient/HttpHost;
    .param p3, "context"    # Lcz/msebera/android/httpclient/protocol/HttpContext;
    .param p4, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    const-string v0, "Connection"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    const-string v0, "Target host"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    const-string v0, "Parameters"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    const-string v1, "Connection must be open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 215
    invoke-direct {p0, p3}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->getSchemeRegistry(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 216
    .local v0, "registry":Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v1

    .line 217
    .local v1, "schm":Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getSchemeSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    move-result-object v2

    instance-of v2, v2, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;

    const-string v3, "Socket factory must implement SchemeLayeredSocketFactory"

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getSchemeSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;

    .line 220
    .local v2, "lsf":Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;
    nop

    .line 221
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v5

    invoke-virtual {v1, v5}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->resolvePort(I)I

    move-result v5

    .line 220
    invoke-interface {v2, v3, v4, v5, p4}, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v3

    .line 222
    .local v3, "sock":Ljava/net/Socket;
    invoke-virtual {p0, v3, p3, p4}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 223
    invoke-interface {v2, v3}, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v4

    invoke-interface {p1, v3, p2, v4, p4}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 224
    return-void
.end method

.class Lcom/google/firebase/database/connection/WebsocketConnection;
.super Ljava/lang/Object;
.source "WebsocketConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;,
        Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;,
        Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT_MS:J = 0x7530L

.field private static final KEEP_ALIVE_TIMEOUT_MS:J = 0xafc8L

.field private static final MAX_FRAME_SIZE:I = 0x4000

.field private static connectionId:J


# instance fields
.field private conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

.field private connectTimeout:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final connectionContext:Lcom/google/firebase/database/connection/ConnectionContext;

.field private delegate:Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;

.field private everConnected:Z

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

.field private isClosed:Z

.field private keepAlive:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private totalFrames:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectionId:J

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;Ljava/lang/String;)V
    .locals 6
    .param p1, "connectionContext"    # Lcom/google/firebase/database/connection/ConnectionContext;
    .param p2, "hostInfo"    # Lcom/google/firebase/database/connection/HostInfo;
    .param p3, "optCachedHost"    # Ljava/lang/String;
    .param p4, "delegate"    # Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;
    .param p5, "optLastSessionId"    # Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->everConnected:Z

    .line 157
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->isClosed:Z

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->totalFrames:J

    .line 173
    iput-object p1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectionContext:Lcom/google/firebase/database/connection/ConnectionContext;

    .line 174
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 175
    iput-object p4, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->delegate:Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;

    .line 176
    sget-wide v0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectionId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/firebase/database/connection/WebsocketConnection;->connectionId:J

    .line 177
    .local v0, "connId":J
    new-instance v2, Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ws_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WebSocket"

    invoke-direct {v2, v3, v5, v4}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 178
    invoke-direct {p0, p2, p3, p5}, Lcom/google/firebase/database/connection/WebsocketConnection;->createConnection(Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/connection/WebsocketConnection;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/connection/WebsocketConnection;

    .line 34
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/firebase/database/connection/WebsocketConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/connection/WebsocketConnection;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->everConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/connection/WebsocketConnection;

    .line 34
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/firebase/database/connection/WebsocketConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/connection/WebsocketConnection;

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->resetKeepAlive()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/database/connection/WebsocketConnection;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/connection/WebsocketConnection;

    .line 34
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/firebase/database/connection/WebsocketConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/connection/WebsocketConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/WebsocketConnection;->handleIncomingFrame(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/database/connection/WebsocketConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/connection/WebsocketConnection;

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->onClosed()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firebase/database/connection/WebsocketConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/connection/WebsocketConnection;

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->closeIfNeverConnected()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/connection/WebsocketConnection;

    .line 34
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    return-object v0
.end method

.method private appendFrame(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/connection/util/StringListReader;->addString(Ljava/lang/String;)V

    .line 249
    iget-wide v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->totalFrames:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->totalFrames:J

    .line 250
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/util/StringListReader;->freeze()V

    .line 254
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/util/StringListReader;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/util/JsonMapper;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 255
    .local v0, "decoded":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    .line 256
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIncomingFrame complete frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->delegate:Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;

    invoke-interface {v1, v0}, Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;->onMessage(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "decoded":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing frame (cast error): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    invoke-virtual {v3}, Lcom/google/firebase/database/connection/util/StringListReader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/database/logging/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->close()V

    .line 265
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->shutdown()V

    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    invoke-virtual {v3}, Lcom/google/firebase/database/connection/util/StringListReader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/database/logging/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->close()V

    .line 261
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->shutdown()V

    .line 268
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method

.method private closeIfNeverConnected()V
    .locals 3

    .line 358
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->everConnected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->isClosed:Z

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "timed out on connect"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;->close()V

    .line 362
    :cond_1
    return-void
.end method

.method private createConnection(Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;
    .locals 6
    .param p1, "hostInfo"    # Lcom/google/firebase/database/connection/HostInfo;
    .param p2, "optCachedHost"    # Ljava/lang/String;
    .param p3, "optLastSessionId"    # Ljava/lang/String;

    .line 183
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/HostInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "host":Ljava/lang/String;
    :goto_0
    nop

    .line 186
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/HostInfo;->isSecure()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/HostInfo;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-static {v0, v1, v2, p3}, Lcom/google/firebase/database/connection/HostInfo;->getConnectionUrl(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 187
    .local v1, "uri":Ljava/net/URI;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v2, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectionContext:Lcom/google/firebase/database/connection/ConnectionContext;

    invoke-virtual {v3}, Lcom/google/firebase/database/connection/ConnectionContext;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "User-Agent"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v3, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectionContext:Lcom/google/firebase/database/connection/ConnectionContext;

    invoke-virtual {v3}, Lcom/google/firebase/database/connection/ConnectionContext;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "X-Firebase-GMPID"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v3, Lcom/google/firebase/database/tubesock/WebSocket;

    iget-object v4, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectionContext:Lcom/google/firebase/database/connection/ConnectionContext;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5, v2}, Lcom/google/firebase/database/tubesock/WebSocket;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    .line 191
    .local v3, "ws":Lcom/google/firebase/database/tubesock/WebSocket;
    new-instance v4, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    invoke-direct {v4, p0, v3, v5}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;-><init>(Lcom/google/firebase/database/connection/WebsocketConnection;Lcom/google/firebase/database/tubesock/WebSocket;Lcom/google/firebase/database/connection/WebsocketConnection$1;)V

    .line 192
    .local v4, "client":Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;
    return-object v4
.end method

.method private extractFrameCount(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 283
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 284
    .local v0, "frameCount":I
    if-lez v0, :cond_0

    .line 285
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->handleNewFrameCount(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 288
    .end local v0    # "frameCount":I
    :catch_0
    move-exception v0

    .line 292
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->handleNewFrameCount(I)V

    .line 293
    return-object p1
.end method

.method private handleIncomingFrame(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 297
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->isClosed:Z

    if-nez v0, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->resetKeepAlive()V

    .line 299
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/WebsocketConnection;->appendFrame(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/WebsocketConnection;->extractFrameCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "remaining":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 304
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->appendFrame(Ljava/lang/String;)V

    .line 308
    .end local v0    # "remaining":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private handleNewFrameCount(I)V
    .locals 4
    .param p1, "numFrames"    # I

    .line 271
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->totalFrames:J

    .line 272
    new-instance v0, Lcom/google/firebase/database/connection/util/StringListReader;

    invoke-direct {v0}, Lcom/google/firebase/database/connection/util/StringListReader;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    .line 273
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleNewFrameCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->totalFrames:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    :cond_0
    return-void
.end method

.method private isBuffering()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nop()Ljava/lang/Runnable;
    .locals 1

    .line 324
    new-instance v0, Lcom/google/firebase/database/connection/WebsocketConnection$2;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/WebsocketConnection$2;-><init>(Lcom/google/firebase/database/connection/WebsocketConnection;)V

    return-object v0
.end method

.method private onClosed()V
    .locals 4

    .line 342
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->isClosed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "closing itself"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->shutdown()V

    .line 346
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    .line 347
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 348
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 350
    :cond_2
    return-void
.end method

.method private resetKeepAlive()V
    .locals 5

    .line 311
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->isClosed:Z

    if-nez v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 313
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 314
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset keepAlive. Remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Reset keepAlive"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->nop()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xafc8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    .line 321
    :cond_2
    return-void
.end method

.method private shutdown()V
    .locals 2

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->isClosed:Z

    .line 354
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->delegate:Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;

    iget-boolean v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->everConnected:Z

    invoke-interface {v0, v1}, Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;->onDisconnect(Z)V

    .line 355
    return-void
.end method

.method private static splitIntoFrames(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "maxFrameSize"    # I

    .line 365
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 366
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    .line 368
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v0, "segs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 370
    add-int v2, v1, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 371
    .local v2, "end":I
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "seg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v2    # "end":I
    .end local v3    # "seg":Ljava/lang/String;
    add-int/2addr v1, p1

    goto :goto_0

    .line 374
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "websocket is being closed"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->isClosed:Z

    .line 219
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    invoke-interface {v1}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;->close()V

    .line 220
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 221
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    .line 224
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 226
    :cond_2
    return-void
.end method

.method public open()V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;->connect()V

    .line 197
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/firebase/database/connection/WebsocketConnection$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/connection/WebsocketConnection$1;-><init>(Lcom/google/firebase/database/connection/WebsocketConnection;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 198
    const-wide/16 v3, 0x7530

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    .line 207
    return-void
.end method

.method public send(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p1, "message":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->resetKeepAlive()V

    .line 232
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/database/util/JsonMapper;->serializeJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "toSend":Ljava/lang/String;
    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/google/firebase/database/connection/WebsocketConnection;->splitIntoFrames(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "segs":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 235
    iget-object v2, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;->send(Ljava/lang/String;)V

    .line 238
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "toSend":Ljava/lang/String;
    .end local v1    # "segs":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to serialize message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/database/logging/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->shutdown()V

    .line 245
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public start()V
    .locals 0

    .line 211
    return-void
.end method

.class Lcom/google/firebase/database/connection/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/connection/Connection$State;,
        Lcom/google/firebase/database/connection/Connection$Delegate;,
        Lcom/google/firebase/database/connection/Connection$DisconnectReason;
    }
.end annotation


# static fields
.field private static final REQUEST_PAYLOAD:Ljava/lang/String; = "d"

.field private static final REQUEST_TYPE:Ljava/lang/String; = "t"

.field private static final REQUEST_TYPE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_CONTROL_MESSAGE:Ljava/lang/String; = "c"

.field private static final SERVER_CONTROL_MESSAGE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_CONTROL_MESSAGE_HELLO:Ljava/lang/String; = "h"

.field private static final SERVER_CONTROL_MESSAGE_RESET:Ljava/lang/String; = "r"

.field private static final SERVER_CONTROL_MESSAGE_SHUTDOWN:Ljava/lang/String; = "s"

.field private static final SERVER_CONTROL_MESSAGE_TYPE:Ljava/lang/String; = "t"

.field private static final SERVER_DATA_MESSAGE:Ljava/lang/String; = "d"

.field private static final SERVER_ENVELOPE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_ENVELOPE_TYPE:Ljava/lang/String; = "t"

.field private static final SERVER_HELLO_HOST:Ljava/lang/String; = "h"

.field private static final SERVER_HELLO_SESSION_ID:Ljava/lang/String; = "s"

.field private static final SERVER_HELLO_TIMESTAMP:Ljava/lang/String; = "ts"

.field private static connectionIds:J


# instance fields
.field private conn:Lcom/google/firebase/database/connection/WebsocketConnection;

.field private delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

.field private hostInfo:Lcom/google/firebase/database/connection/HostInfo;

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private state:Lcom/google/firebase/database/connection/Connection$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/firebase/database/connection/Connection;->connectionIds:J

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Lcom/google/firebase/database/connection/Connection$Delegate;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Lcom/google/firebase/database/connection/ConnectionContext;
    .param p2, "hostInfo"    # Lcom/google/firebase/database/connection/HostInfo;
    .param p3, "cachedHost"    # Ljava/lang/String;
    .param p4, "delegate"    # Lcom/google/firebase/database/connection/Connection$Delegate;
    .param p5, "optLastSessionId"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-wide v0, Lcom/google/firebase/database/connection/Connection;->connectionIds:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/firebase/database/connection/Connection;->connectionIds:J

    .line 80
    .local v0, "connId":J
    iput-object p2, p0, Lcom/google/firebase/database/connection/Connection;->hostInfo:Lcom/google/firebase/database/connection/HostInfo;

    .line 81
    iput-object p4, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    .line 82
    new-instance v2, Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conn_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Connection"

    invoke-direct {v2, v3, v5, v4}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 83
    sget-object v2, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTING:Lcom/google/firebase/database/connection/Connection$State;

    iput-object v2, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    .line 84
    new-instance v2, Lcom/google/firebase/database/connection/WebsocketConnection;

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p0

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/database/connection/WebsocketConnection;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    .line 85
    return-void
.end method

.method private onConnectionReady(JLjava/lang/String;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "sessionId"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "realtime connection established"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_0
    sget-object v0, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    iput-object v0, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    .line 217
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/firebase/database/connection/Connection$Delegate;->onReady(JLjava/lang/String;)V

    .line 218
    return-void
.end method

.method private onConnectionShutdown(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Connection shutdown command received. Shutting down..."

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/Connection$Delegate;->onKill(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    .line 200
    return-void
.end method

.method private onControlMessage(Ljava/util/Map;)V
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

    .line 168
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got control message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_0
    :try_start_0
    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    .local v0, "messageType":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 172
    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "d"

    if-eqz v2, :cond_1

    .line 173
    :try_start_1
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    .local v2, "reason":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/firebase/database/connection/Connection;->onConnectionShutdown(Ljava/lang/String;)V

    .line 175
    .end local v2    # "reason":Ljava/lang/String;
    goto :goto_0

    :cond_1
    const-string v2, "r"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    .local v2, "host":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/firebase/database/connection/Connection;->onReset(Ljava/lang/String;)V

    .line 178
    .end local v2    # "host":Ljava/lang/String;
    goto :goto_0

    :cond_2
    const-string v2, "h"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 180
    nop

    .line 181
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 182
    .local v2, "handshakeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v2}, Lcom/google/firebase/database/connection/Connection;->onHandshake(Ljava/util/Map;)V

    .line 183
    .end local v2    # "handshakeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 184
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unknown control message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_4
    iget-object v2, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got invalid control message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_5
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    .end local v0    # "messageType":Ljava/lang/String;
    :cond_6
    :goto_0
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v2, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse control message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_7
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    .line 194
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :goto_1
    return-void
.end method

.method private onDataMessage(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received data message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/Connection$Delegate;->onDataMessage(Ljava/util/Map;)V

    .line 165
    return-void
.end method

.method private onHandshake(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p1, "handshake":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "ts"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 204
    .local v0, "timestamp":J
    const-string v2, "h"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    .local v2, "host":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v3, v2}, Lcom/google/firebase/database/connection/Connection$Delegate;->onCacheHost(Ljava/lang/String;)V

    .line 206
    const-string v3, "s"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    .local v3, "sessionId":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    sget-object v5, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTING:Lcom/google/firebase/database/connection/Connection$State;

    if-ne v4, v5, :cond_0

    .line 209
    iget-object v4, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-virtual {v4}, Lcom/google/firebase/database/connection/WebsocketConnection;->start()V

    .line 210
    invoke-direct {p0, v0, v1, v3}, Lcom/google/firebase/database/connection/Connection;->onConnectionReady(JLjava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method

.method private onReset(Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got a reset; killing connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/connection/Connection;->hostInfo:Lcom/google/firebase/database/connection/HostInfo;

    .line 224
    invoke-virtual {v2}, Lcom/google/firebase/database/connection/HostInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Updating internalHost to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 222
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/Connection$Delegate;->onCacheHost(Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->SERVER_RESET:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/Connection;->close(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V

    .line 232
    return-void
.end method

.method private sendData(Ljava/util/Map;Z)V
    .locals 3
    .param p2, "isSensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 235
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    sget-object v1, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Tried to send on an unconnected connection"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 238
    :cond_0
    if-eqz p2, :cond_1

    .line 239
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Sending data (contents hidden)"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v2, "Sending data: %s"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/connection/WebsocketConnection;->send(Ljava/util/Map;)V

    .line 245
    :goto_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 107
    sget-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->OTHER:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/Connection;->close(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V

    .line 108
    return-void
.end method

.method public close(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V
    .locals 3
    .param p1, "reason"    # Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    .line 93
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    sget-object v1, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_DISCONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    if-eq v0, v1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "closing realtime connection"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_0
    sget-object v0, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_DISCONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    iput-object v0, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    .line 97
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->close()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/Connection$Delegate;->onDisconnect(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V

    .line 104
    :cond_2
    return-void
.end method

.method public injectConnectionFailure()V
    .locals 0

    .line 249
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    .line 250
    return-void
.end method

.method public onDisconnect(Z)V
    .locals 3
    .param p1, "wasEverConnected"    # Z

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    .line 152
    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    sget-object v2, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTING:Lcom/google/firebase/database/connection/Connection$State;

    if-ne v1, v2, :cond_0

    .line 153
    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Realtime connection failed"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Realtime connection lost"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    .line 159
    return-void
.end method

.method public onMessage(Ljava/util/Map;)V
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

    .line 123
    .local p1, "message":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "d"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "t"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    .local v2, "messageType":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 128
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/Connection;->onDataMessage(Ljava/util/Map;)V

    .line 129
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    :cond_0
    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 132
    .restart local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/Connection;->onControlMessage(Ljava/util/Map;)V

    .line 133
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unknown server message type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse server message: missing message type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 139
    invoke-virtual {v0, v3, v4}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v2    # "messageType":Ljava/lang/String;
    :cond_4
    :goto_0
    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v2, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse server message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_5
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    .line 147
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :goto_1
    return-void
.end method

.method public open()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Opening a connection"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->open()V

    .line 90
    return-void
.end method

.method public sendRequest(Ljava/util/Map;Z)V
    .locals 3
    .param p2, "isSensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 113
    .local p1, "message":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v0, "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "t"

    const-string v2, "d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/connection/Connection;->sendData(Ljava/util/Map;Z)V

    .line 118
    return-void
.end method

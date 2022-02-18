.class Lcom/google/firebase/database/tubesock/WebSocketReceiver;
.super Ljava/lang/Object;
.source "WebSocketReceiver.java"


# instance fields
.field private eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

.field private input:Ljava/io/DataInputStream;

.field private inputHeader:[B

.field private pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

.field private volatile stop:Z

.field private websocket:Lcom/google/firebase/database/tubesock/WebSocket;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/tubesock/WebSocket;)V
    .locals 1
    .param p1, "websocket"    # Lcom/google/firebase/database/tubesock/WebSocket;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    .line 28
    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    .line 29
    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    .line 30
    const/16 v0, 0x70

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    .line 36
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    .line 37
    return-void
.end method

.method private appendBytes(ZB[B)V
    .locals 3
    .param p1, "fin"    # Z
    .param p2, "opcode"    # B
    .param p3, "data"    # [B

    .line 101
    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-direct {p0, p3}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->handlePing([B)V

    goto :goto_2

    .line 105
    :cond_0
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v1, "PING must not fragment across frames"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 109
    :cond_2
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v1, "Failed to continue outstanding frame"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_3
    :goto_0
    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    goto :goto_1

    .line 112
    :cond_4
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v1, "Received continuing frame, but there\'s nothing to continue"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 116
    invoke-static {p2}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory;->builder(B)Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    invoke-interface {v0, p3}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;->appendBytes([B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 120
    if-eqz p1, :cond_8

    .line 121
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    invoke-interface {v0}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;->toMessage()Lcom/google/firebase/database/tubesock/WebSocketMessage;

    move-result-object v0

    .line 122
    .local v0, "message":Lcom/google/firebase/database/tubesock/WebSocketMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    .line 124
    if-eqz v0, :cond_7

    .line 127
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    invoke-interface {v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onMessage(Lcom/google/firebase/database/tubesock/WebSocketMessage;)V

    goto :goto_2

    .line 125
    :cond_7
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "Failed to decode whole message"

    invoke-direct {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    .end local v0    # "message":Lcom/google/firebase/database/tubesock/WebSocketMessage;
    :cond_8
    :goto_2
    return-void

    .line 119
    :cond_9
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v1, "Failed to decode frame"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .locals 1
    .param p1, "e"    # Lcom/google/firebase/database/tubesock/WebSocketException;

    .line 168
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stopit()V

    .line 169
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->handleReceiverError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 170
    return-void
.end method

.method private handlePing([B)V
    .locals 2
    .param p1, "payload"    # [B

    .line 135
    array-length v0, p1

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->pong([B)V

    .line 140
    return-void

    .line 138
    :cond_0
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v1, "PING frame too long"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseLong([BI)J
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .line 144
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 156
    return p3
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method run()V
    .locals 16

    .line 44
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocket;->getEventHandler()Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    move-result-object v0

    iput-object v0, v1, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    .line 45
    :goto_0
    iget-boolean v0, v1, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    if-nez v0, :cond_a

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "offset":I
    :try_start_0
    iget-object v2, v1, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    move-result v2

    add-int/2addr v0, v2

    .line 49
    iget-object v2, v1, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v4, 0x0

    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v4

    .line 50
    .local v5, "fin":Z
    :goto_1
    aget-byte v6, v2, v4

    and-int/lit8 v6, v6, 0x70

    if-eqz v6, :cond_1

    move v6, v3

    goto :goto_2

    :cond_1
    move v6, v4

    .line 51
    .local v6, "rsv":Z
    :goto_2
    if-nez v6, :cond_9

    .line 54
    aget-byte v7, v2, v4

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    .line 55
    .local v7, "opcode":B
    invoke-direct {v1, v2, v0, v3}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    move-result v2

    add-int/2addr v0, v2

    .line 56
    iget-object v2, v1, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    aget-byte v8, v2, v3

    .line 57
    .local v8, "length":B
    const-wide/16 v9, 0x0

    .line 58
    .local v9, "payload_length":J
    const/16 v11, 0x7e

    const/4 v12, 0x2

    const/16 v13, 0x8

    if-ge v8, v11, :cond_2

    .line 59
    int-to-long v9, v8

    goto :goto_3

    .line 60
    :cond_2
    if-ne v8, v11, :cond_3

    .line 61
    invoke-direct {v1, v2, v0, v12}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    move-result v2

    add-int/2addr v0, v2

    .line 62
    iget-object v2, v1, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    aget-byte v11, v2, v12

    and-int/lit16 v11, v11, 0xff

    int-to-long v14, v11

    shl-long/2addr v14, v13

    const/4 v11, 0x3

    aget-byte v2, v2, v11

    and-int/lit16 v2, v2, 0xff

    int-to-long v3, v2

    or-long v9, v14, v3

    goto :goto_3

    .line 63
    :cond_3
    const/16 v3, 0x7f

    if-ne v8, v3, :cond_4

    .line 67
    invoke-direct {v1, v2, v0, v13}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    move-result v2

    add-int/2addr v0, v2

    .line 69
    iget-object v2, v1, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    add-int/lit8 v3, v0, -0x8

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->parseLong([BI)J

    move-result-wide v2

    move-wide v9, v2

    .line 72
    :cond_4
    :goto_3
    long-to-int v2, v9

    new-array v2, v2, [B

    .line 73
    .local v2, "payload":[B
    long-to-int v3, v9

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    .line 74
    if-ne v7, v13, :cond_5

    .line 75
    iget-object v3, v1, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v3}, Lcom/google/firebase/database/tubesock/WebSocket;->onCloseOpReceived()V

    goto :goto_5

    .line 76
    :cond_5
    const/16 v3, 0xa

    if-ne v7, v3, :cond_6

    goto :goto_5

    .line 78
    :cond_6
    const/4 v3, 0x1

    if-eq v7, v3, :cond_8

    if-eq v7, v12, :cond_8

    const/16 v3, 0x9

    if-eq v7, v3, :cond_8

    if-nez v7, :cond_7

    goto :goto_4

    .line 86
    :cond_7
    new-instance v3, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported opcode: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_8
    :goto_4
    invoke-direct {v1, v5, v7, v2}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->appendBytes(ZB[B)V

    goto :goto_5

    .line 52
    .end local v2    # "payload":[B
    .end local v7    # "opcode":B
    .end local v8    # "length":B
    .end local v9    # "payload_length":J
    :cond_9
    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v3, "Invalid frame received"

    invoke-direct {v2, v3}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "offset":I
    .end local v5    # "fin":Z
    .end local v6    # "rsv":Z
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lcom/google/firebase/database/tubesock/WebSocketException;
    invoke-direct {v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .end local v0    # "e":Lcom/google/firebase/database/tubesock/WebSocketException;
    goto :goto_5

    .line 91
    :catch_1
    move-exception v0

    .line 92
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v3, "IO Error"

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 95
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_5
    goto/16 :goto_0

    .line 89
    :catch_2
    move-exception v0

    .line 90
    .local v0, "sto":Ljava/net/SocketTimeoutException;
    goto/16 :goto_0

    .line 97
    .end local v0    # "sto":Ljava/net/SocketTimeoutException;
    :cond_a
    return-void
.end method

.method setInput(Ljava/io/DataInputStream;)V
    .locals 0
    .param p1, "input"    # Ljava/io/DataInputStream;

    .line 40
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    .line 41
    return-void
.end method

.method stopit()V
    .locals 1

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    .line 161
    return-void
.end method

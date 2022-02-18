.class public Lcom/google/firebase/database/tubesock/WebSocketMessage;
.super Ljava/lang/Object;
.source "WebSocketMessage.java"


# instance fields
.field private byteMessage:[B

.field private opcode:B

.field private stringMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->stringMessage:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->opcode:B

    .line 30
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "message"    # [B

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->byteMessage:[B

    .line 24
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->opcode:B

    .line 25
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->byteMessage:[B

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->stringMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isBinary()Z
    .locals 2

    .line 37
    iget-byte v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->opcode:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isText()Z
    .locals 2

    .line 33
    iget-byte v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->opcode:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

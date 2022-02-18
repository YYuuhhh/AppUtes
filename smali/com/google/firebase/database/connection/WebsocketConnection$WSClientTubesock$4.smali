.class Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;
.super Ljava/lang/Object;
.source "WebsocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

.field final synthetic val$e:Lcom/google/firebase/database/tubesock/WebSocketException;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    .line 107
    iput-object p1, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    iput-object p2, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->val$e:Lcom/google/firebase/database/tubesock/WebSocketException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->val$e:Lcom/google/firebase/database/tubesock/WebSocketException;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->val$e:Lcom/google/firebase/database/tubesock/WebSocketException;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/EOFException;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WebSocket reached EOF."

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->val$e:Lcom/google/firebase/database/tubesock/WebSocketException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "WebSocket error."

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;->this$1:Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    iget-object v0, v0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$600(Lcom/google/firebase/database/connection/WebsocketConnection;)V

    .line 116
    return-void
.end method

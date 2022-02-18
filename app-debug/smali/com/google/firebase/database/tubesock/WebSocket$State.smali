.class final enum Lcom/google/firebase/database/tubesock/WebSocket$State;
.super Ljava/lang/Enum;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/tubesock/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/database/tubesock/WebSocket$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum CONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum CONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum DISCONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

.field public static final enum NONE:Lcom/google/firebase/database/tubesock/WebSocket$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 53
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocket$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->NONE:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 54
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocket$State;

    const-string v3, "CONNECTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 55
    new-instance v3, Lcom/google/firebase/database/tubesock/WebSocket$State;

    const-string v5, "CONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 56
    new-instance v5, Lcom/google/firebase/database/tubesock/WebSocket$State;

    const-string v7, "DISCONNECTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 57
    new-instance v7, Lcom/google/firebase/database/tubesock/WebSocket$State;

    const-string v9, "DISCONNECTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/firebase/database/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 52
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/firebase/database/tubesock/WebSocket$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/firebase/database/tubesock/WebSocket$State;->$VALUES:[Lcom/google/firebase/database/tubesock/WebSocket$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/tubesock/WebSocket$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 52
    const-class v0, Lcom/google/firebase/database/tubesock/WebSocket$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/tubesock/WebSocket$State;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/tubesock/WebSocket$State;
    .locals 1

    .line 52
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->$VALUES:[Lcom/google/firebase/database/tubesock/WebSocket$State;

    invoke-virtual {v0}, [Lcom/google/firebase/database/tubesock/WebSocket$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/tubesock/WebSocket$State;

    return-object v0
.end method

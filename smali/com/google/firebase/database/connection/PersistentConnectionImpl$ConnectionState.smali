.class final enum Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
.super Ljava/lang/Enum;
.source "PersistentConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

.field public static final enum Authenticating:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

.field public static final enum Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

.field public static final enum Connecting:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

.field public static final enum Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

.field public static final enum GettingToken:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 215
    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const-string v1, "Disconnected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 216
    new-instance v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const-string v3, "GettingToken"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->GettingToken:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 217
    new-instance v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const-string v5, "Connecting"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connecting:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 218
    new-instance v5, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const-string v7, "Authenticating"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Authenticating:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 219
    new-instance v7, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const-string v9, "Connected"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 214
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->$VALUES:[Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 214
    const-class v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
    .locals 1

    .line 214
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->$VALUES:[Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    invoke-virtual {v0}, [Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    return-object v0
.end method

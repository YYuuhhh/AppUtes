.class final enum Lcom/google/firebase/database/connection/Connection$State;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/database/connection/Connection$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/database/connection/Connection$State;

.field public static final enum REALTIME_CONNECTED:Lcom/google/firebase/database/connection/Connection$State;

.field public static final enum REALTIME_CONNECTING:Lcom/google/firebase/database/connection/Connection$State;

.field public static final enum REALTIME_DISCONNECTED:Lcom/google/firebase/database/connection/Connection$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    new-instance v0, Lcom/google/firebase/database/connection/Connection$State;

    const-string v1, "REALTIME_CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/connection/Connection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTING:Lcom/google/firebase/database/connection/Connection$State;

    .line 44
    new-instance v1, Lcom/google/firebase/database/connection/Connection$State;

    const-string v3, "REALTIME_CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/database/connection/Connection$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    .line 45
    new-instance v3, Lcom/google/firebase/database/connection/Connection$State;

    const-string v5, "REALTIME_DISCONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/firebase/database/connection/Connection$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_DISCONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    .line 42
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/firebase/database/connection/Connection$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/firebase/database/connection/Connection$State;->$VALUES:[Lcom/google/firebase/database/connection/Connection$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/connection/Connection$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lcom/google/firebase/database/connection/Connection$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/Connection$State;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/connection/Connection$State;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/firebase/database/connection/Connection$State;->$VALUES:[Lcom/google/firebase/database/connection/Connection$State;

    invoke-virtual {v0}, [Lcom/google/firebase/database/connection/Connection$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/connection/Connection$State;

    return-object v0
.end method

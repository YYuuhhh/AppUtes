.class public final enum Lcom/google/firebase/database/connection/Connection$DisconnectReason;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisconnectReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/database/connection/Connection$DisconnectReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/database/connection/Connection$DisconnectReason;

.field public static final enum OTHER:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

.field public static final enum SERVER_RESET:Lcom/google/firebase/database/connection/Connection$DisconnectReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    const-string v1, "SERVER_RESET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/connection/Connection$DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->SERVER_RESET:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    .line 25
    new-instance v1, Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    const-string v3, "OTHER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/database/connection/Connection$DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->OTHER:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    .line 23
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->$VALUES:[Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/connection/Connection$DisconnectReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/connection/Connection$DisconnectReason;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->$VALUES:[Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    invoke-virtual {v0}, [Lcom/google/firebase/database/connection/Connection$DisconnectReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    return-object v0
.end method

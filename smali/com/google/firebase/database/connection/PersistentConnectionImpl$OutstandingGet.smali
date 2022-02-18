.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;
.super Ljava/lang/Object;
.source "PersistentConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutstandingGet"
.end annotation


# instance fields
.field private final onComplete:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;

.field private final request:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private sent:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p3, "onComplete"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;",
            ")V"
        }
    .end annotation

    .line 121
    .local p2, "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->request:Ljava/util/Map;

    .line 123
    iput-object p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->onComplete:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->sent:Z

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;
    .param p4, "x3"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;

    .line 115
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->getRequest()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;

    .line 115
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->getOnComplete()Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;

    .line 115
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->markSent()Z

    move-result v0

    return v0
.end method

.method private getOnComplete()Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->onComplete:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;

    return-object v0
.end method

.method private getRequest()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->request:Ljava/util/Map;

    return-object v0
.end method

.method private markSent()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->sent:Z

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    return v0

    .line 144
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->sent:Z

    .line 145
    return v0
.end method

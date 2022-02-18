.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;
.super Ljava/lang/Object;
.source "PersistentConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuerySpec"
.end annotation


# instance fields
.field private final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final queryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->path:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->queryParams:Ljava/util/Map;

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    .line 43
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->path:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    .line 43
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->queryParams:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 54
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 55
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 56
    return v1

    .line 59
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    .line 61
    .local v0, "that":Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->path:Ljava/util/List;

    iget-object v3, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->path:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    return v1

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->queryParams:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->queryParams:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->path:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 70
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->queryParams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 71
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->path:Ljava/util/List;

    invoke-static {v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->queryParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

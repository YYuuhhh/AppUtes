.class Lcom/google/firebase/database/core/persistence/TrackedQueryManager$5;
.super Ljava/lang/Object;
.source "TrackedQueryManager.java"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->setQueriesComplete(Lcom/google/firebase/database/core/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<",
        "Ljava/util/Map<",
        "Lcom/google/firebase/database/core/view/QueryParams;",
        "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    .line 183
    iput-object p1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$5;->this$0:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 183
    check-cast p2, Ljava/util/Map;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$5;->onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/util/Map;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/util/Map;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .param p3, "accum"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/view/QueryParams;",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 187
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 189
    .local v2, "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    iget-boolean v3, v2, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    if-nez v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$5;->this$0:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/persistence/TrackedQuery;->setComplete()Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->access$100(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    .line 192
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    .end local v2    # "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    :cond_0
    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

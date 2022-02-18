.class Lcom/google/firebase/database/core/persistence/TrackedQueryManager$7;
.super Ljava/lang/Object;
.source "TrackedQueryManager.java"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->verifyCache()V
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

.field final synthetic val$trackedQueries:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    .line 341
    iput-object p1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$7;->this$0:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    iput-object p2, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$7;->val$trackedQueries:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 341
    check-cast p2, Ljava/util/Map;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$7;->onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/util/Map;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/util/Map;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
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

    .line 345
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 346
    .local v1, "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    iget-object v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$7;->val$trackedQueries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v1    # "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    goto :goto_0

    .line 348
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

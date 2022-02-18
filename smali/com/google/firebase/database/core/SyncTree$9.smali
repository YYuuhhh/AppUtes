.class Lcom/google/firebase/database/core/SyncTree$9;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->applyTaggedQueryOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Tag;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "+",
        "Lcom/google/firebase/database/core/view/Event;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;

.field final synthetic val$path:Lcom/google/firebase/database/core/Path;

.field final synthetic val$snap:Lcom/google/firebase/database/snapshot/Node;

.field final synthetic val$tag:Lcom/google/firebase/database/core/Tag;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Tag;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SyncTree;

    .line 415
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$9;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$9;->val$tag:Lcom/google/firebase/database/core/Tag;

    iput-object p3, p0, Lcom/google/firebase/database/core/SyncTree$9;->val$path:Lcom/google/firebase/database/core/Path;

    iput-object p4, p0, Lcom/google/firebase/database/core/SyncTree$9;->val$snap:Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$9;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$9;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$9;->val$tag:Lcom/google/firebase/database/core/Tag;

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/SyncTree;->access$500(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Tag;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    .line 419
    .local v0, "query":Lcom/google/firebase/database/core/view/QuerySpec;
    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$9;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-static {v1, v2}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    .line 422
    .local v1, "relativePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$9;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-static {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    .line 423
    .local v2, "queryToOverwrite":Lcom/google/firebase/database/core/view/QuerySpec;
    :goto_0
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$9;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v3}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$9;->val$snap:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v3, v2, v4}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->updateServerCache(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/snapshot/Node;)V

    .line 424
    new-instance v3, Lcom/google/firebase/database/core/operation/Overwrite;

    .line 426
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/database/core/operation/OperationSource;->forServerTaggedQuery(Lcom/google/firebase/database/core/view/QueryParams;)Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/database/core/SyncTree$9;->val$snap:Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {v3, v4, v1, v5}, Lcom/google/firebase/database/core/operation/Overwrite;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    .line 427
    .local v3, "op":Lcom/google/firebase/database/core/operation/Operation;
    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$9;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v4, v0, v3}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/operation/Operation;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 430
    .end local v1    # "relativePath":Lcom/google/firebase/database/core/Path;
    .end local v2    # "queryToOverwrite":Lcom/google/firebase/database/core/view/QuerySpec;
    .end local v3    # "op":Lcom/google/firebase/database/core/operation/Operation;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

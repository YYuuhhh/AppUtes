.class Lcom/google/firebase/database/core/SyncTree$8;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->applyTaggedListenComplete(Lcom/google/firebase/database/core/Tag;)Ljava/util/List;
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

.field final synthetic val$tag:Lcom/google/firebase/database/core/Tag;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Tag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SyncTree;

    .line 385
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$8;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$8;->val$tag:Lcom/google/firebase/database/core/Tag;

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

    .line 385
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$8;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$8;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$8;->val$tag:Lcom/google/firebase/database/core/Tag;

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/SyncTree;->access$500(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Tag;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    .line 389
    .local v0, "query":Lcom/google/firebase/database/core/view/QuerySpec;
    if-eqz v0, :cond_0

    .line 390
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$8;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v1}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->setQueryComplete(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 391
    new-instance v1, Lcom/google/firebase/database/core/operation/ListenComplete;

    .line 393
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/core/operation/OperationSource;->forServerTaggedQuery(Lcom/google/firebase/database/core/view/QueryParams;)Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v2

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/database/core/operation/ListenComplete;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V

    .line 394
    .local v1, "op":Lcom/google/firebase/database/core/operation/Operation;
    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$8;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/operation/Operation;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 397
    .end local v1    # "op":Lcom/google/firebase/database/core/operation/Operation;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

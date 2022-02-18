.class Lcom/google/firebase/database/core/Repo$13;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/google/firebase/database/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->runOnDisconnectEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$events:Ljava/util/List;

.field final synthetic val$serverValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/Repo;

    .line 758
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$13;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$13;->val$serverValues:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$13;->val$events:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 4
    .param p1, "prefixPath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .line 761
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$13;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$900(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/SyncTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 762
    .local v0, "existing":Lcom/google/firebase/database/snapshot/Node;
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$13;->val$serverValues:Ljava/util/Map;

    .line 763
    invoke-static {p2, v0, v1}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 764
    .local v1, "resolvedNode":Lcom/google/firebase/database/snapshot/Node;
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$13;->val$events:Ljava/util/List;

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$13;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v3}, Lcom/google/firebase/database/core/Repo;->access$900(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/google/firebase/database/core/SyncTree;->applyServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 765
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$13;->this$0:Lcom/google/firebase/database/core/Repo;

    const/16 v3, -0x9

    invoke-static {v2, p1, v3}, Lcom/google/firebase/database/core/Repo;->access$1200(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;I)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 766
    .local v2, "affectedPath":Lcom/google/firebase/database/core/Path;
    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$13;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v3, v2}, Lcom/google/firebase/database/core/Repo;->access$1300(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    .line 767
    return-void
.end method

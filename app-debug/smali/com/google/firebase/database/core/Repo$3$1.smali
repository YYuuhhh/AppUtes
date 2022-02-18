.class Lcom/google/firebase/database/core/Repo$3$1;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo$3;->startListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/core/SyncTree$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/database/core/Repo$3;

.field final synthetic val$onComplete:Lcom/google/firebase/database/core/SyncTree$CompletionListener;

.field final synthetic val$query:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo$3;Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/SyncTree$CompletionListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/firebase/database/core/Repo$3;

    .line 156
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$3$1;->this$1:Lcom/google/firebase/database/core/Repo$3;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$3$1;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$3$1;->val$onComplete:Lcom/google/firebase/database/core/SyncTree$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$3$1;->this$1:Lcom/google/firebase/database/core/Repo$3;

    iget-object v0, v0, Lcom/google/firebase/database/core/Repo$3;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$300(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SnapshotHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$3$1;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/SnapshotHolder;->getNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 162
    .local v0, "node":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$3$1;->this$1:Lcom/google/firebase/database/core/Repo$3;

    iget-object v1, v1, Lcom/google/firebase/database/core/Repo$3;->this$0:Lcom/google/firebase/database/core/Repo;

    .line 164
    invoke-static {v1}, Lcom/google/firebase/database/core/Repo;->access$400(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$3$1;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/database/core/SyncTree;->applyServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, "infoEvents":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$3$1;->this$1:Lcom/google/firebase/database/core/Repo$3;

    iget-object v2, v2, Lcom/google/firebase/database/core/Repo$3;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v2, v1}, Lcom/google/firebase/database/core/Repo;->access$500(Lcom/google/firebase/database/core/Repo;Ljava/util/List;)V

    .line 166
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$3$1;->val$onComplete:Lcom/google/firebase/database/core/SyncTree$CompletionListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/firebase/database/core/SyncTree$CompletionListener;->onListenComplete(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    .line 168
    .end local v1    # "infoEvents":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    :cond_0
    return-void
.end method

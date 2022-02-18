.class Lcom/google/firebase/database/core/Repo$8$1;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/database/core/Repo$8;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/firebase/database/core/Repo$8;

    .line 511
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 514
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    iget-object v0, v0, Lcom/google/firebase/database/core/Repo$8;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$100(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get for query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    iget-object v2, v2, Lcom/google/firebase/database/core/Repo$8;->val$query:Lcom/google/firebase/database/Query;

    .line 517
    invoke-virtual {v2}, Lcom/google/firebase/database/Query;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " falling back to disk cache after error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 519
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->info(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    iget-object v0, v0, Lcom/google/firebase/database/core/Repo$8;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$900(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    iget-object v1, v1, Lcom/google/firebase/database/core/Repo$8;->val$query:Lcom/google/firebase/database/Query;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/SyncTree;->persistenceServerCache(Lcom/google/firebase/database/Query;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    .line 521
    .local v0, "cached":Lcom/google/firebase/database/DataSnapshot;
    invoke-virtual {v0}, Lcom/google/firebase/database/DataSnapshot;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    iget-object v1, v1, Lcom/google/firebase/database/core/Repo$8;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    iget-object v1, v1, Lcom/google/firebase/database/core/Repo$8;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 526
    .end local v0    # "cached":Lcom/google/firebase/database/DataSnapshot;
    :goto_0
    goto :goto_1

    .line 527
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 528
    .local v0, "serverNode":Lcom/google/firebase/database/snapshot/Node;
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    iget-object v1, v1, Lcom/google/firebase/database/core/Repo$8;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    iget-object v2, v2, Lcom/google/firebase/database/core/Repo$8;->this$0:Lcom/google/firebase/database/core/Repo;

    .line 529
    invoke-static {v2}, Lcom/google/firebase/database/core/Repo;->access$900(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    iget-object v3, v3, Lcom/google/firebase/database/core/Repo$8;->val$query:Lcom/google/firebase/database/Query;

    invoke-virtual {v3}, Lcom/google/firebase/database/Query;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/firebase/database/core/SyncTree;->applyServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object v2

    .line 528
    invoke-static {v1, v2}, Lcom/google/firebase/database/core/Repo;->access$500(Lcom/google/firebase/database/core/Repo;Ljava/util/List;)V

    .line 530
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    iget-object v1, v1, Lcom/google/firebase/database/core/Repo$8;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    iget-object v2, v2, Lcom/google/firebase/database/core/Repo$8;->val$query:Lcom/google/firebase/database/Query;

    .line 532
    invoke-virtual {v2}, Lcom/google/firebase/database/Query;->getRef()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    iget-object v3, v3, Lcom/google/firebase/database/core/Repo$8;->val$query:Lcom/google/firebase/database/Query;

    .line 533
    invoke-virtual {v3}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    .line 531
    invoke-static {v2, v3}, Lcom/google/firebase/database/InternalHelpers;->createDataSnapshot(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v2

    .line 530
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 535
    .end local v0    # "serverNode":Lcom/google/firebase/database/snapshot/Node;
    :goto_1
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    iget-object v0, v0, Lcom/google/firebase/database/core/Repo$8;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$900(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$8$1;->this$1:Lcom/google/firebase/database/core/Repo$8;

    iget-object v1, v1, Lcom/google/firebase/database/core/Repo$8;->val$query:Lcom/google/firebase/database/Query;

    invoke-virtual {v1}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/SyncTree;->setQueryInactive(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 536
    return-void
.end method

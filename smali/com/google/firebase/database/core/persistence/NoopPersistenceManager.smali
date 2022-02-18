.class public Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;
.super Ljava/lang/Object;
.source "NoopPersistenceManager.java"

# interfaces
.implements Lcom/google/firebase/database/core/persistence/PersistenceManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "NoopPersistenceManager"


# instance fields
.field private insideTransaction:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    return-void
.end method

.method private verifyInsideTransaction()V
    .locals 2

    .line 138
    iget-boolean v0, p0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public applyUserWriteToServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V
    .locals 0
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "merge"    # Lcom/google/firebase/database/core/CompoundWrite;

    .line 67
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 68
    return-void
.end method

.method public applyUserWriteToServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .line 62
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 63
    return-void
.end method

.method public loadUserWrites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAllUserWrites()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 58
    return-void
.end method

.method public removeUserWrite(J)V
    .locals 0
    .param p1, "writeId"    # J

    .line 52
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 53
    return-void
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 121
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-boolean v0, p0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v0, v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 124
    iput-boolean v1, p0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    .line 126
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iput-boolean v0, p0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    .line 126
    return-object v1

    .line 127
    :catchall_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "NoopPersistenceManager"

    const-string v3, "Caught Throwable."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local p1    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :catchall_1
    move-exception v1

    iput-boolean v0, p0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->insideTransaction:Z

    .line 134
    throw v1
.end method

.method public saveUserMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;J)V
    .locals 0
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "children"    # Lcom/google/firebase/database/core/CompoundWrite;
    .param p3, "writeId"    # J

    .line 47
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 48
    return-void
.end method

.method public saveUserOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;J)V
    .locals 0
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "node"    # Lcom/google/firebase/database/snapshot/Node;
    .param p3, "writeId"    # J

    .line 42
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 43
    return-void
.end method

.method public serverCache(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/CacheNode;
    .locals 3
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 77
    new-instance v0, Lcom/google/firebase/database/core/view/CacheNode;

    .line 78
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    .line 77
    return-object v0
.end method

.method public setQueryActive(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 0
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 95
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 96
    return-void
.end method

.method public setQueryComplete(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 0
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 105
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 106
    return-void
.end method

.method public setQueryInactive(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 0
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 100
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 101
    return-void
.end method

.method public setTrackedQueryKeys(Lcom/google/firebase/database/core/view/QuerySpec;Ljava/util/Set;)V
    .locals 0
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p2, "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 111
    return-void
.end method

.method public updateServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V
    .locals 0
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "children"    # Lcom/google/firebase/database/core/CompoundWrite;

    .line 90
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 91
    return-void
.end method

.method public updateServerCache(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;
    .param p2, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .line 85
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 86
    return-void
.end method

.method public updateTrackedQueryKeys(Lcom/google/firebase/database/core/view/QuerySpec;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p2, "added":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    .local p3, "removed":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;->verifyInsideTransaction()V

    .line 116
    return-void
.end method

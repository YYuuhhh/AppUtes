.class public Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;
.super Ljava/lang/Object;
.source "DefaultPersistenceManager.java"

# interfaces
.implements Lcom/google/firebase/database/core/persistence/PersistenceManager;


# instance fields
.field private final cachePolicy:Lcom/google/firebase/database/core/persistence/CachePolicy;

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private serverCacheUpdatesSinceLastPruneCheck:J

.field private final storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

.field private final trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;Lcom/google/firebase/database/core/persistence/CachePolicy;)V
    .locals 1
    .param p1, "ctx"    # Lcom/google/firebase/database/core/Context;
    .param p2, "engine"    # Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;
    .param p3, "cachePolicy"    # Lcom/google/firebase/database/core/persistence/CachePolicy;

    .line 47
    new-instance v0, Lcom/google/firebase/database/core/utilities/DefaultClock;

    invoke-direct {v0}, Lcom/google/firebase/database/core/utilities/DefaultClock;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;-><init>(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;Lcom/google/firebase/database/core/persistence/CachePolicy;Lcom/google/firebase/database/core/utilities/Clock;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;Lcom/google/firebase/database/core/persistence/CachePolicy;Lcom/google/firebase/database/core/utilities/Clock;)V
    .locals 2
    .param p1, "ctx"    # Lcom/google/firebase/database/core/Context;
    .param p2, "engine"    # Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;
    .param p3, "cachePolicy"    # Lcom/google/firebase/database/core/persistence/CachePolicy;
    .param p4, "clock"    # Lcom/google/firebase/database/core/utilities/Clock;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->serverCacheUpdatesSinceLastPruneCheck:J

    .line 52
    iput-object p2, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    .line 53
    const-string v0, "Persistence"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/Context;->getLogger(Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 54
    new-instance v1, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-direct {v1, p2, v0, p4}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;-><init>(Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;Lcom/google/firebase/database/logging/LogWrapper;Lcom/google/firebase/database/core/utilities/Clock;)V

    iput-object v1, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    .line 55
    iput-object p3, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->cachePolicy:Lcom/google/firebase/database/core/persistence/CachePolicy;

    .line 56
    return-void
.end method

.method private doPruneCheckAfterServerUpdate()V
    .locals 8

    .line 251
    iget-wide v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->serverCacheUpdatesSinceLastPruneCheck:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->serverCacheUpdatesSinceLastPruneCheck:J

    .line 252
    iget-object v2, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->cachePolicy:Lcom/google/firebase/database/core/persistence/CachePolicy;

    invoke-interface {v2, v0, v1}, Lcom/google/firebase/database/core/persistence/CachePolicy;->shouldCheckCacheSize(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Reached prune check threshold."

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->serverCacheUpdatesSinceLastPruneCheck:J

    .line 257
    const/4 v0, 0x1

    .line 258
    .local v0, "canPrune":Z
    iget-object v2, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v2}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->serverCacheEstimatedSizeInBytes()J

    move-result-wide v2

    .line 259
    .local v2, "cacheSize":J
    iget-object v4, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v4}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    iget-object v4, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cache size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->cachePolicy:Lcom/google/firebase/database/core/persistence/CachePolicy;

    iget-object v5, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    .line 263
    invoke-virtual {v5}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->countOfPrunableQueries()J

    move-result-wide v5

    invoke-interface {v4, v2, v3, v5, v6}, Lcom/google/firebase/database/core/persistence/CachePolicy;->shouldPrune(JJ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 264
    iget-object v4, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    iget-object v5, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->cachePolicy:Lcom/google/firebase/database/core/persistence/CachePolicy;

    invoke-virtual {v4, v5}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->pruneOldQueries(Lcom/google/firebase/database/core/persistence/CachePolicy;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object v4

    .line 265
    .local v4, "pruneForest":Lcom/google/firebase/database/core/persistence/PruneForest;
    invoke-virtual {v4}, Lcom/google/firebase/database/core/persistence/PruneForest;->prunesAnything()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 266
    iget-object v5, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->pruneCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/persistence/PruneForest;)V

    goto :goto_1

    .line 268
    :cond_2
    const/4 v0, 0x0

    .line 270
    :goto_1
    iget-object v5, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v5}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->serverCacheEstimatedSizeInBytes()J

    move-result-wide v2

    .line 271
    iget-object v5, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v5}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    iget-object v5, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cache size after prune: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    .end local v4    # "pruneForest":Lcom/google/firebase/database/core/persistence/PruneForest;
    :cond_3
    goto :goto_0

    .line 276
    .end local v0    # "canPrune":Z
    .end local v2    # "cacheSize":J
    :cond_4
    return-void
.end method


# virtual methods
.method public applyUserWriteToServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V
    .locals 4
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "merge"    # Lcom/google/firebase/database/core/CompoundWrite;

    .line 116
    invoke-virtual {p2}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 117
    .local v1, "write":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 118
    .local v2, "writePath":Lcom/google/firebase/database/core/Path;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/Node;

    .line 119
    .local v3, "writeNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->applyUserWriteToServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    .line 120
    .end local v1    # "write":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    .end local v2    # "writePath":Lcom/google/firebase/database/core/Path;
    .end local v3    # "writeNode":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public applyUserWriteToServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .line 107
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->hasActiveDefaultQuery(Lcom/google/firebase/database/core/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->overwriteServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    .line 109
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->ensureCompleteTrackedQuery(Lcom/google/firebase/database/core/Path;)V

    .line 111
    :cond_0
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

    .line 130
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->loadUserWrites()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAllUserWrites()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->removeAllUserWrites()V

    .line 95
    return-void
.end method

.method public removeUserWrite(J)V
    .locals 1
    .param p1, "writeId"    # J

    .line 89
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->removeUserWrite(J)V

    .line 90
    return-void
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 237
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->beginTransaction()V

    .line 239
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v1}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    nop

    .line 246
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v1}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->endTransaction()V

    .line 241
    return-object v0

    .line 242
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v2, "Caught Throwable."

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/database/logging/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v1}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->endTransaction()V

    .line 247
    throw v0
.end method

.method public saveUserMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;J)V
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "children"    # Lcom/google/firebase/database/core/CompoundWrite;
    .param p3, "writeId"    # J

    .line 79
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->saveUserMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;J)V

    .line 80
    return-void
.end method

.method public saveUserOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;J)V
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "node"    # Lcom/google/firebase/database/snapshot/Node;
    .param p3, "writeId"    # J

    .line 67
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->saveUserOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;J)V

    .line 68
    return-void
.end method

.method public serverCache(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/CacheNode;
    .locals 7
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 146
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->isQueryComplete(Lcom/google/firebase/database/core/view/QuerySpec;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const/4 v0, 0x1

    .line 148
    .local v0, "complete":Z
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object v1

    .line 149
    .local v1, "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    iget-wide v3, v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-interface {v2, v3, v4}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->loadTrackedQueryKeys(J)Ljava/util/Set;

    move-result-object v2

    .local v2, "trackedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    goto :goto_0

    .line 152
    .end local v2    # "trackedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    :cond_0
    const/4 v2, 0x0

    .line 154
    .end local v1    # "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .restart local v2    # "trackedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    :goto_0
    goto :goto_1

    .line 155
    .end local v0    # "complete":Z
    .end local v2    # "trackedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    :cond_1
    const/4 v0, 0x0

    .line 156
    .restart local v0    # "complete":Z
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->getKnownCompleteChildren(Lcom/google/firebase/database/core/Path;)Ljava/util/Set;

    move-result-object v2

    .line 160
    .restart local v2    # "trackedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->serverCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 161
    .local v1, "serverCacheNode":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v2, :cond_3

    .line 162
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v3

    .line 163
    .local v3, "filteredNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 164
    .local v5, "key":Lcom/google/firebase/database/snapshot/ChildKey;
    nop

    .line 165
    invoke-interface {v1, v5}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    .line 166
    .end local v5    # "key":Lcom/google/firebase/database/snapshot/ChildKey;
    goto :goto_2

    .line 167
    :cond_2
    new-instance v4, Lcom/google/firebase/database/core/view/CacheNode;

    .line 168
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v0, v6}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    .line 167
    return-object v4

    .line 170
    .end local v3    # "filteredNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_3
    new-instance v3, Lcom/google/firebase/database/core/view/CacheNode;

    .line 171
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    .line 170
    return-object v3
.end method

.method public setQueryActive(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 1
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 194
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->setQueryActive(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 195
    return-void
.end method

.method public setQueryComplete(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 2
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 204
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->setQueriesComplete(Lcom/google/firebase/database/core/Path;)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->setQueryCompleteIfExists(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 209
    :goto_0
    return-void
.end method

.method public setQueryInactive(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 1
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 199
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->setQueryInactive(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 200
    return-void
.end method

.method public setTrackedQueryKeys(Lcom/google/firebase/database/core/view/QuerySpec;Ljava/util/Set;)V
    .locals 4
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

    .line 213
    .local p2, "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "We should only track keys for filtered queries."

    invoke-static {v0, v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object v0

    .line 215
    .local v0, "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "We only expect tracked keys for currently-active queries."

    invoke-static {v1, v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    iget-wide v2, v0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-interface {v1, v2, v3, p2}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->saveTrackedQueryKeys(JLjava/util/Set;)V

    .line 221
    return-void
.end method

.method public updateServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "children"    # Lcom/google/firebase/database/core/CompoundWrite;

    .line 188
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->mergeIntoServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V

    .line 189
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->doPruneCheckAfterServerUpdate()V

    .line 190
    return-void
.end method

.method public updateServerCache(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 2
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;
    .param p2, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .line 177
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->overwriteServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->mergeIntoServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    .line 182
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->setQueryComplete(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 183
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->doPruneCheckAfterServerUpdate()V

    .line 184
    return-void
.end method

.method public updateTrackedQueryKeys(Lcom/google/firebase/database/core/view/QuerySpec;Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
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

    .line 225
    .local p2, "added":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    .local p3, "removed":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "We should only track keys for filtered queries."

    invoke-static {v0, v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object v0

    .line 227
    .local v0, "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "We only expect tracked keys for currently-active queries."

    invoke-static {v1, v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    iget-wide v2, v0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-interface {v1, v2, v3, p2, p3}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->updateTrackedQueryKeys(JLjava/util/Set;Ljava/util/Set;)V

    .line 233
    return-void
.end method

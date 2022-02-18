.class public Lcom/google/firebase/database/core/SyncPoint;
.super Ljava/lang/Object;
.source "SyncPoint.java"


# instance fields
.field private final persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

.field private final views:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/view/QueryParams;",
            "Lcom/google/firebase/database/core/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/persistence/PersistenceManager;)V
    .locals 1
    .param p1, "persistenceManager"    # Lcom/google/firebase/database/core/persistence/PersistenceManager;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    .line 70
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncPoint;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    .line 71
    return-void
.end method

.method private applyOperationToView(Lcom/google/firebase/database/core/view/View;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;
    .locals 7
    .param p1, "view"    # Lcom/google/firebase/database/core/view/View;
    .param p2, "operation"    # Lcom/google/firebase/database/core/operation/Operation;
    .param p3, "writes"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p4, "optCompleteServerCache"    # Lcom/google/firebase/database/snapshot/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/View;",
            "Lcom/google/firebase/database/core/operation/Operation;",
            "Lcom/google/firebase/database/core/WriteTreeRef;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/firebase/database/core/view/View;->applyOperation(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/View$OperationResult;

    move-result-object v0

    .line 81
    .local v0, "result":Lcom/google/firebase/database/core/view/View$OperationResult;
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v1

    if-nez v1, :cond_4

    .line 82
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 83
    .local v1, "removed":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 84
    .local v2, "added":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    iget-object v3, v0, Lcom/google/firebase/database/core/view/View$OperationResult;->changes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/view/Change;

    .line 85
    .local v4, "change":Lcom/google/firebase/database/core/view/Change;
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v5

    .line 86
    .local v5, "type":Lcom/google/firebase/database/core/view/Event$EventType;
    sget-object v6, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_ADDED:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v5, v6, :cond_0

    .line 87
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_0
    sget-object v6, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v5, v6, :cond_1

    .line 89
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v4    # "change":Lcom/google/firebase/database/core/view/Change;
    .end local v5    # "type":Lcom/google/firebase/database/core/view/Event$EventType;
    :cond_1
    :goto_1
    goto :goto_0

    .line 92
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 93
    :cond_3
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncPoint;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v4

    invoke-interface {v3, v4, v2, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->updateTrackedQueryKeys(Lcom/google/firebase/database/core/view/QuerySpec;Ljava/util/Set;Ljava/util/Set;)V

    .line 96
    .end local v1    # "removed":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    .end local v2    # "added":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    :cond_4
    iget-object v1, v0, Lcom/google/firebase/database/core/view/View$OperationResult;->events:Ljava/util/List;

    return-object v1
.end method


# virtual methods
.method public addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/CacheNode;)Ljava/util/List;
    .locals 6
    .param p1, "eventRegistration"    # Lcom/google/firebase/database/core/EventRegistration;
    .param p2, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p3, "serverCache"    # Lcom/google/firebase/database/core/view/CacheNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/EventRegistration;",
            "Lcom/google/firebase/database/core/WriteTreeRef;",
            "Lcom/google/firebase/database/core/view/CacheNode;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    .line 148
    .local v0, "query":Lcom/google/firebase/database/core/view/QuerySpec;
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/firebase/database/core/SyncPoint;->getView(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/core/view/View;

    move-result-object v1

    .line 150
    .local v1, "view":Lcom/google/firebase/database/core/view/View;
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 151
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 152
    .local v2, "allChildren":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/View;->getEventCache()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 153
    .local v4, "node":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v4    # "node":Lcom/google/firebase/database/snapshot/NamedNode;
    goto :goto_0

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncPoint;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    invoke-interface {v3, v0, v2}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->setTrackedQueryKeys(Lcom/google/firebase/database/core/view/QuerySpec;Ljava/util/Set;)V

    .line 157
    .end local v2    # "allChildren":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/view/View;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    .line 163
    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/view/View;->getInitialEvents(Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public applyOperation(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;
    .locals 6
    .param p1, "operation"    # Lcom/google/firebase/database/core/operation/Operation;
    .param p2, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p3, "optCompleteServerCache"    # Lcom/google/firebase/database/snapshot/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/operation/Operation;",
            "Lcom/google/firebase/database/core/WriteTreeRef;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Operation;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/OperationSource;->getQueryParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    .line 102
    .local v0, "queryParams":Lcom/google/firebase/database/core/view/QueryParams;
    if-eqz v0, :cond_1

    .line 103
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/view/View;

    .line 104
    .local v1, "view":Lcom/google/firebase/database/core/view/View;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 105
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/google/firebase/database/core/SyncPoint;->applyOperationToView(Lcom/google/firebase/database/core/view/View;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 107
    .end local v1    # "view":Lcom/google/firebase/database/core/view/View;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/DataEvent;>;"
    iget-object v2, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 109
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/view/View;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/view/View;

    .line 110
    .local v4, "view":Lcom/google/firebase/database/core/view/View;
    invoke-direct {p0, v4, p1, p2, p3}, Lcom/google/firebase/database/core/SyncPoint;->applyOperationToView(Lcom/google/firebase/database/core/view/View;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/view/View;>;"
    .end local v4    # "view":Lcom/google/firebase/database/core/view/View;
    goto :goto_1

    .line 112
    :cond_2
    return-object v1
.end method

.method public getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 3
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .line 237
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/view/View;

    .line 238
    .local v1, "view":Lcom/google/firebase/database/core/view/View;
    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/view/View;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/view/View;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0

    .line 241
    .end local v1    # "view":Lcom/google/firebase/database/core/view/View;
    :cond_0
    goto :goto_0

    .line 242
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompleteView()Lcom/google/firebase/database/core/view/View;
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 265
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/view/View;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/view/View;

    .line 266
    .local v2, "view":Lcom/google/firebase/database/core/view/View;
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    return-object v2

    .line 269
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/view/View;>;"
    .end local v2    # "view":Lcom/google/firebase/database/core/view/View;
    :cond_0
    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueryViews()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/View;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "views":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/View;>;"
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 228
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/view/View;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/view/View;

    .line 229
    .local v3, "view":Lcom/google/firebase/database/core/view/View;
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v4

    if-nez v4, :cond_0

    .line 230
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/view/View;>;"
    .end local v3    # "view":Lcom/google/firebase/database/core/view/View;
    :cond_0
    goto :goto_0

    .line 233
    :cond_1
    return-object v0
.end method

.method public getView(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/core/view/View;
    .locals 7
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;
    .param p2, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p3, "serverCache"    # Lcom/google/firebase/database/core/view/CacheNode;

    .line 118
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/View;

    .line 119
    .local v0, "view":Lcom/google/firebase/database/core/view/View;
    if-nez v0, :cond_3

    .line 121
    nop

    .line 123
    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 122
    :goto_0
    invoke-virtual {p2, v1}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 125
    .local v1, "eventCache":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v1, :cond_1

    .line 126
    const/4 v2, 0x1

    .local v2, "eventCacheComplete":Z
    goto :goto_2

    .line 128
    .end local v2    # "eventCacheComplete":Z
    :cond_1
    nop

    .line 130
    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v2

    .line 129
    :goto_1
    invoke-virtual {p2, v2}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 131
    const/4 v2, 0x0

    .line 133
    .restart local v2    # "eventCacheComplete":Z
    :goto_2
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    .line 134
    .local v3, "indexed":Lcom/google/firebase/database/snapshot/IndexedNode;
    new-instance v4, Lcom/google/firebase/database/core/view/ViewCache;

    new-instance v5, Lcom/google/firebase/database/core/view/CacheNode;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v2, v6}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    invoke-direct {v4, v5, p3}, Lcom/google/firebase/database/core/view/ViewCache;-><init>(Lcom/google/firebase/database/core/view/CacheNode;Lcom/google/firebase/database/core/view/CacheNode;)V

    .line 136
    .local v4, "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    new-instance v5, Lcom/google/firebase/database/core/view/View;

    invoke-direct {v5, p1, v4}, Lcom/google/firebase/database/core/view/View;-><init>(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/view/ViewCache;)V

    return-object v5

    .line 139
    .end local v1    # "eventCache":Lcom/google/firebase/database/snapshot/Node;
    .end local v2    # "eventCacheComplete":Z
    .end local v3    # "indexed":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v4    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_3
    return-object v0
.end method

.method getViews()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/view/QueryParams;",
            "Lcom/google/firebase/database/core/view/View;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    return-object v0
.end method

.method public hasCompleteView()Z
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteView()Lcom/google/firebase/database/core/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/core/utilities/Pair;
    .locals 7
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;
    .param p2, "eventRegistration"    # Lcom/google/firebase/database/core/EventRegistration;
    .param p3, "cancelError"    # Lcom/google/firebase/database/DatabaseError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            "Lcom/google/firebase/database/core/EventRegistration;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Lcom/google/firebase/database/core/utilities/Pair<",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;>;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v1, "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v2

    .line 186
    .local v2, "hadCompleteView":Z
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 189
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/view/View;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 191
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/view/View;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/core/view/View;

    .line 192
    .local v5, "view":Lcom/google/firebase/database/core/view/View;
    invoke-virtual {v5, p2, p3}, Lcom/google/firebase/database/core/view/View;->removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/View;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 194
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 197
    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v6

    if-nez v6, :cond_0

    .line 198
    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/view/View;>;"
    .end local v5    # "view":Lcom/google/firebase/database/core/view/View;
    :cond_0
    goto :goto_0

    .line 202
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/view/View;>;>;"
    :cond_1
    goto :goto_1

    .line 204
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/view/View;

    .line 205
    .local v3, "view":Lcom/google/firebase/database/core/view/View;
    if-eqz v3, :cond_3

    .line 206
    invoke-virtual {v3, p2, p3}, Lcom/google/firebase/database/core/view/View;->removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/View;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    iget-object v4, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v4

    if-nez v4, :cond_3

    .line 212
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v3    # "view":Lcom/google/firebase/database/core/view/View;
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v3

    if-nez v3, :cond_4

    .line 220
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_4
    new-instance v3, Lcom/google/firebase/database/core/utilities/Pair;

    invoke-direct {v3, v0, v1}, Lcom/google/firebase/database/core/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public viewExistsForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Z
    .locals 1
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 256
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/SyncPoint;->viewForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public viewForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/View;
    .locals 2
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 248
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteView()Lcom/google/firebase/database/core/view/View;

    move-result-object v0

    return-object v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/View;

    return-object v0
.end method

.class public Lcom/google/firebase/database/core/view/View;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/view/View$OperationResult;
    }
.end annotation


# instance fields
.field private final eventGenerator:Lcom/google/firebase/database/core/view/EventGenerator;

.field private final eventRegistrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private final processor:Lcom/google/firebase/database/core/view/ViewProcessor;

.field private final query:Lcom/google/firebase/database/core/view/QuerySpec;

.field private viewCache:Lcom/google/firebase/database/core/view/ViewCache;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/view/ViewCache;)V
    .locals 11
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;
    .param p2, "initialViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/firebase/database/core/view/View;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 47
    new-instance v0, Lcom/google/firebase/database/core/view/filter/IndexedFilter;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/view/filter/IndexedFilter;-><init>(Lcom/google/firebase/database/snapshot/Index;)V

    .line 48
    .local v0, "indexFilter":Lcom/google/firebase/database/core/view/filter/IndexedFilter;
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QueryParams;->getNodeFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v1

    .line 49
    .local v1, "filter":Lcom/google/firebase/database/core/view/filter/NodeFilter;
    new-instance v2, Lcom/google/firebase/database/core/view/ViewProcessor;

    invoke-direct {v2, v1}, Lcom/google/firebase/database/core/view/ViewProcessor;-><init>(Lcom/google/firebase/database/core/view/filter/NodeFilter;)V

    iput-object v2, p0, Lcom/google/firebase/database/core/view/View;->processor:Lcom/google/firebase/database/core/view/ViewProcessor;

    .line 50
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    .line 51
    .local v2, "initialServerCache":Lcom/google/firebase/database/core/view/CacheNode;
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    .line 54
    .local v3, "initialEventCache":Lcom/google/firebase/database/core/view/CacheNode;
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    .line 55
    .local v4, "emptyIndexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    nop

    .line 56
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/firebase/database/core/view/filter/IndexedFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v5

    .line 57
    .local v5, "serverSnap":Lcom/google/firebase/database/snapshot/IndexedNode;
    nop

    .line 58
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v7

    invoke-interface {v1, v4, v7, v6}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v6

    .line 59
    .local v6, "eventSnap":Lcom/google/firebase/database/snapshot/IndexedNode;
    new-instance v7, Lcom/google/firebase/database/core/view/CacheNode;

    .line 61
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v8

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/filter/IndexedFilter;->filtersNodes()Z

    move-result v9

    invoke-direct {v7, v5, v8, v9}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    .line 62
    .local v7, "newServerCache":Lcom/google/firebase/database/core/view/CacheNode;
    new-instance v8, Lcom/google/firebase/database/core/view/CacheNode;

    .line 63
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v9

    invoke-interface {v1}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v10

    invoke-direct {v8, v6, v9, v10}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    .line 65
    .local v8, "newEventCache":Lcom/google/firebase/database/core/view/CacheNode;
    new-instance v9, Lcom/google/firebase/database/core/view/ViewCache;

    invoke-direct {v9, v8, v7}, Lcom/google/firebase/database/core/view/ViewCache;-><init>(Lcom/google/firebase/database/core/view/CacheNode;Lcom/google/firebase/database/core/view/CacheNode;)V

    iput-object v9, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 67
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    .line 69
    new-instance v9, Lcom/google/firebase/database/core/view/EventGenerator;

    invoke-direct {v9, p1}, Lcom/google/firebase/database/core/view/EventGenerator;-><init>(Lcom/google/firebase/database/core/view/QuerySpec;)V

    iput-object v9, p0, Lcom/google/firebase/database/core/view/View;->eventGenerator:Lcom/google/firebase/database/core/view/EventGenerator;

    .line 70
    return-void
.end method

.method private generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;
    .locals 2
    .param p2, "eventCache"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .param p3, "registration"    # Lcom/google/firebase/database/core/EventRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;",
            "Lcom/google/firebase/database/snapshot/IndexedNode;",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .line 202
    .local p1, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Change;>;"
    if-nez p3, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    .local v0, "registrations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/EventRegistration;>;"
    goto :goto_0

    .line 205
    .end local v0    # "registrations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/EventRegistration;>;"
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/firebase/database/core/EventRegistration;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 207
    .restart local v0    # "registrations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/EventRegistration;>;"
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/database/core/view/View;->eventGenerator:Lcom/google/firebase/database/core/view/EventGenerator;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V
    .locals 1
    .param p1, "registration"    # Lcom/google/firebase/database/core/EventRegistration;

    .line 117
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public applyOperation(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/View$OperationResult;
    .locals 5
    .param p1, "operation"    # Lcom/google/firebase/database/core/operation/Operation;
    .param p2, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p3, "optCompleteServerCache"    # Lcom/google/firebase/database/snapshot/Node;

    .line 162
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Operation;->getType()Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/core/operation/Operation$OperationType;->Merge:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 163
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Operation;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/OperationSource;->getQueryParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 165
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 164
    :goto_0
    const-string v1, "We should always have a full cache before handling merges"

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 168
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    .line 167
    :goto_1
    const-string v1, "Missing event cache, even though we have a server cache"

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 172
    .local v0, "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    iget-object v1, p0, Lcom/google/firebase/database/core/view/View;->processor:Lcom/google/firebase/database/core/view/ViewProcessor;

    .line 173
    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyOperation(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;

    move-result-object v1

    .line 175
    .local v1, "result":Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;
    iget-object v4, v1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 176
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 177
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v2, v3

    .line 175
    :cond_4
    const-string v3, "Once a server snap is complete, it should never go back"

    invoke-static {v2, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 180
    iget-object v2, v1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    iput-object v2, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 181
    iget-object v2, v1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->changes:Ljava/util/List;

    iget-object v3, v1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 183
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    const/4 v4, 0x0

    .line 182
    invoke-direct {p0, v2, v3, v4}, Lcom/google/firebase/database/core/view/View;->generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;

    move-result-object v2

    .line 184
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/DataEvent;>;"
    new-instance v3, Lcom/google/firebase/database/core/view/View$OperationResult;

    iget-object v4, v1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->changes:Ljava/util/List;

    invoke-direct {v3, v2, v4}, Lcom/google/firebase/database/core/view/View$OperationResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method public getCompleteNode()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 2
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .line 100
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 101
    .local v0, "cache":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v0, :cond_1

    .line 104
    iget-object v1, p0, Lcom/google/firebase/database/core/view/View;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    return-object v1

    .line 109
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEventCache()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method getEventRegistrations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    return-object v0
.end method

.method public getInitialEvents(Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;
    .locals 6
    .param p1, "registration"    # Lcom/google/firebase/database/core/EventRegistration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    .line 189
    .local v0, "eventSnap":Lcom/google/firebase/database/core/view/CacheNode;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "initialChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Change;>;"
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 191
    .local v3, "child":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v3    # "child":Lcom/google/firebase/database/snapshot/NamedNode;
    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/core/view/Change;->valueChange(Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Lcom/google/firebase/database/core/view/View;->generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getQuery()Lcom/google/firebase/database/core/view/QuerySpec;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    return-object v0
.end method

.method public getServerCache()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 5
    .param p1, "registration"    # Lcom/google/firebase/database/core/EventRegistration;
    .param p2, "cancelError"    # Lcom/google/firebase/database/DatabaseError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/EventRegistration;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 123
    if-eqz p2, :cond_2

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "A cancel should cancel all event registrations"

    invoke-static {v1, v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/google/firebase/database/core/view/View;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    .line 127
    .local v1, "path":Lcom/google/firebase/database/core/Path;
    iget-object v2, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/EventRegistration;

    .line 128
    .local v3, "eventRegistration":Lcom/google/firebase/database/core/EventRegistration;
    new-instance v4, Lcom/google/firebase/database/core/view/CancelEvent;

    invoke-direct {v4, v3, p2, v1}, Lcom/google/firebase/database/core/view/CancelEvent;-><init>(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/core/Path;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v3    # "eventRegistration":Lcom/google/firebase/database/core/EventRegistration;
    goto :goto_1

    .line 130
    .end local v1    # "path":Lcom/google/firebase/database/core/Path;
    :cond_1
    goto :goto_2

    .line 131
    .end local v0    # "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 133
    .restart local v0    # "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    :goto_2
    if-eqz p1, :cond_6

    .line 136
    const/4 v1, -0x1

    .line 137
    .local v1, "indexToDelete":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 138
    iget-object v3, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/EventRegistration;

    .line 139
    .local v3, "candidate":Lcom/google/firebase/database/core/EventRegistration;
    invoke-virtual {v3, p1}, Lcom/google/firebase/database/core/EventRegistration;->isSameListener(Lcom/google/firebase/database/core/EventRegistration;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    move v1, v2

    .line 141
    invoke-virtual {v3}, Lcom/google/firebase/database/core/EventRegistration;->isZombied()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    goto :goto_4

    .line 137
    .end local v3    # "candidate":Lcom/google/firebase/database/core/EventRegistration;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 146
    .end local v2    # "i":I
    :cond_4
    :goto_4
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 147
    iget-object v2, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/EventRegistration;

    .line 148
    .local v2, "deletedRegistration":Lcom/google/firebase/database/core/EventRegistration;
    iget-object v3, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    invoke-virtual {v2}, Lcom/google/firebase/database/core/EventRegistration;->zombify()V

    .line 151
    .end local v1    # "indexToDelete":I
    .end local v2    # "deletedRegistration":Lcom/google/firebase/database/core/EventRegistration;
    :cond_5
    goto :goto_6

    .line 152
    :cond_6
    iget-object v1, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/EventRegistration;

    .line 153
    .local v2, "eventRegistration":Lcom/google/firebase/database/core/EventRegistration;
    invoke-virtual {v2}, Lcom/google/firebase/database/core/EventRegistration;->zombify()V

    .line 154
    .end local v2    # "eventRegistration":Lcom/google/firebase/database/core/EventRegistration;
    goto :goto_5

    .line 155
    :cond_7
    iget-object v1, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 157
    :goto_6
    return-object v0
.end method

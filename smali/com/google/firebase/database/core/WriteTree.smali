.class public Lcom/google/firebase/database/core/WriteTree;
.super Ljava/lang/Object;
.source "WriteTree.java"


# static fields
.field private static final DEFAULT_FILTER:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allWrites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private lastWriteId:Ljava/lang/Long;

.field private visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 412
    new-instance v0, Lcom/google/firebase/database/core/WriteTree$2;

    invoke-direct {v0}, Lcom/google/firebase/database/core/WriteTree$2;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/WriteTree;->DEFAULT_FILTER:Lcom/google/firebase/database/core/utilities/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    .line 60
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 61
    return-void
.end method

.method private static layerTree(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Predicate;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;
    .locals 7
    .param p2, "treeRoot"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;",
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Lcom/google/firebase/database/core/CompoundWrite;"
        }
    .end annotation

    .line 426
    .local p0, "writes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/UserWriteRecord;>;"
    .local p1, "filter":Lcom/google/firebase/database/core/utilities/Predicate;, "Lcom/google/firebase/database/core/utilities/Predicate<Lcom/google/firebase/database/core/UserWriteRecord;>;"
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 427
    .local v0, "compoundWrite":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 433
    .local v2, "write":Lcom/google/firebase/database/core/UserWriteRecord;
    invoke-interface {p1, v2}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 434
    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 435
    .local v3, "writePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 436
    invoke-virtual {p2, v3}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    invoke-static {p2, v3}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    .line 438
    .local v4, "relativePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getOverwrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 439
    .end local v4    # "relativePath":Lcom/google/firebase/database/core/Path;
    :cond_0
    goto :goto_1

    :cond_1
    invoke-virtual {v3, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 440
    nop

    .line 442
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    .line 443
    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getOverwrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-static {v3, p2}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 441
    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto :goto_1

    .line 448
    :cond_2
    invoke-virtual {p2, v3}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 449
    invoke-static {p2, v3}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    .line 450
    .restart local v4    # "relativePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 451
    .end local v4    # "relativePath":Lcom/google/firebase/database/core/Path;
    :cond_3
    goto :goto_1

    :cond_4
    invoke-virtual {v3, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 452
    invoke-static {v3, p2}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    .line 453
    .restart local v4    # "relativePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v4}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 454
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto :goto_1

    .line 456
    :cond_5
    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 457
    .local v5, "deepNode":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v5, :cond_6

    .line 458
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 466
    .end local v2    # "write":Lcom/google/firebase/database/core/UserWriteRecord;
    .end local v3    # "writePath":Lcom/google/firebase/database/core/Path;
    .end local v4    # "relativePath":Lcom/google/firebase/database/core/Path;
    .end local v5    # "deepNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_6
    :goto_1
    goto/16 :goto_0

    .line 467
    :cond_7
    return-object v0
.end method

.method private recordContainsPath(Lcom/google/firebase/database/core/UserWriteRecord;Lcom/google/firebase/database/core/Path;)Z
    .locals 4
    .param p1, "writeRecord"    # Lcom/google/firebase/database/core/UserWriteRecord;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;

    .line 388
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v0

    return v0

    .line 391
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 392
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/Path;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    const/4 v0, 0x1

    return v0

    .line 395
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    :cond_1
    goto :goto_0

    .line 396
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private resetTree()V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    sget-object v1, Lcom/google/firebase/database/core/WriteTree;->DEFAULT_FILTER:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 403
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/database/core/WriteTree;->layerTree(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Predicate;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 404
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    goto :goto_0

    .line 407
    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 409
    :goto_0
    return-void
.end method


# virtual methods
.method public addMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Ljava/lang/Long;)V
    .locals 4
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "changedChildren"    # Lcom/google/firebase/database/core/CompoundWrite;
    .param p3, "writeId"    # Ljava/lang/Long;

    .line 82
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 83
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    new-instance v1, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/firebase/database/core/UserWriteRecord;-><init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 85
    iput-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 86
    return-void
.end method

.method public addOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/lang/Long;Z)V
    .locals 8
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "snap"    # Lcom/google/firebase/database/snapshot/Node;
    .param p3, "writeId"    # Ljava/lang/Long;
    .param p4, "visible"    # Z

    .line 72
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 73
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    new-instance v7, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, v7

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/core/UserWriteRecord;-><init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Z)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    if-eqz p4, :cond_1

    .line 75
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 77
    :cond_1
    iput-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    .line 78
    return-void
.end method

.method public calcCompleteChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;
    .locals 4
    .param p1, "treePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p3, "existingServerSnap"    # Lcom/google/firebase/database/core/view/CacheNode;

    .line 337
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 338
    .local v0, "path":Lcom/google/firebase/database/core/Path;
    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 339
    .local v1, "shadowingNode":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v1, :cond_0

    .line 340
    return-object v1

    .line 342
    :cond_0
    invoke-virtual {p3, p2}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v2

    .line 344
    .local v2, "childMerge":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    return-object v3

    .line 346
    .end local v2    # "childMerge":Lcom/google/firebase/database/core/CompoundWrite;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "treePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "completeServerCache"    # Lcom/google/firebase/database/snapshot/Node;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "treePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "completeServerCache"    # Lcom/google/firebase/database/snapshot/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .line 192
    .local p3, "writeIdsToExclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;
    .locals 5
    .param p1, "treePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "completeServerCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p4, "includeHiddenWrites"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .line 200
    .local p3, "writeIdsToExclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 201
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 202
    .local v0, "shadowingNode":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v0, :cond_0

    .line 203
    return-object v0

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v2, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v2

    .line 206
    .local v2, "subMerge":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual {v2}, Lcom/google/firebase/database/core/CompoundWrite;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    return-object p2

    .line 208
    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/CompoundWrite;->hasCompleteWrite(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 211
    return-object v1

    .line 214
    :cond_2
    if-eqz p2, :cond_3

    .line 215
    move-object v1, p2

    .local v1, "layeredCache":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_0

    .line 217
    .end local v1    # "layeredCache":Lcom/google/firebase/database/snapshot/Node;
    :cond_3
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v1

    .line 219
    .restart local v1    # "layeredCache":Lcom/google/firebase/database/snapshot/Node;
    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    return-object v3

    .line 223
    .end local v0    # "shadowingNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v1    # "layeredCache":Lcom/google/firebase/database/snapshot/Node;
    .end local v2    # "subMerge":Lcom/google/firebase/database/core/CompoundWrite;
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 224
    .local v0, "merge":Lcom/google/firebase/database/core/CompoundWrite;
    if-nez p4, :cond_5

    invoke-virtual {v0}, Lcom/google/firebase/database/core/CompoundWrite;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    return-object p2

    .line 228
    :cond_5
    if-nez p4, :cond_6

    if-nez p2, :cond_6

    .line 230
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/CompoundWrite;->hasCompleteWrite(Lcom/google/firebase/database/core/Path;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 231
    return-object v1

    .line 233
    :cond_6
    new-instance v1, Lcom/google/firebase/database/core/WriteTree$1;

    invoke-direct {v1, p0, p4, p3, p1}, Lcom/google/firebase/database/core/WriteTree$1;-><init>(Lcom/google/firebase/database/core/WriteTree;ZLjava/util/List;Lcom/google/firebase/database/core/Path;)V

    .line 243
    .local v1, "filter":Lcom/google/firebase/database/core/utilities/Predicate;, "Lcom/google/firebase/database/core/utilities/Predicate<Lcom/google/firebase/database/core/UserWriteRecord;>;"
    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-static {v2, v1, p1}, Lcom/google/firebase/database/core/WriteTree;->layerTree(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Predicate;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v2

    .line 244
    .local v2, "mergeAtPath":Lcom/google/firebase/database/core/CompoundWrite;
    if-eqz p2, :cond_7

    move-object v3, p2

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v3

    .line 245
    .local v3, "layeredCache":Lcom/google/firebase/database/snapshot/Node;
    :goto_1
    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    return-object v4
.end method

.method public calcCompleteEventChildren(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 9
    .param p1, "treePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "completeServerChildren"    # Lcom/google/firebase/database/snapshot/Node;

    .line 257
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    .line 258
    .local v0, "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 259
    .local v1, "topLevelSet":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v1, :cond_1

    .line 260
    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 263
    .local v3, "childEntry":Lcom/google/firebase/database/snapshot/NamedNode;
    nop

    .line 264
    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 265
    .end local v3    # "childEntry":Lcom/google/firebase/database/snapshot/NamedNode;
    goto :goto_0

    .line 267
    :cond_0
    return-object v0

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v2, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v2

    .line 273
    .local v2, "merge":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 274
    .local v4, "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    new-instance v5, Lcom/google/firebase/database/core/Path;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v5, v6}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    invoke-virtual {v2, v5}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 275
    .local v5, "node":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 276
    .end local v4    # "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v5    # "node":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_1

    .line 278
    :cond_2
    invoke-virtual {v2}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 279
    .local v4, "node":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 280
    .end local v4    # "node":Lcom/google/firebase/database/snapshot/NamedNode;
    goto :goto_2

    .line 281
    :cond_3
    return-object v0
.end method

.method public calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 3
    .param p1, "treePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "childPath"    # Lcom/google/firebase/database/core/Path;
    .param p3, "existingEventSnap"    # Lcom/google/firebase/database/snapshot/Node;
    .param p4, "existingServerSnap"    # Lcom/google/firebase/database/snapshot/Node;

    .line 305
    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Either existingEventSnap or existingServerSnap must exist"

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 308
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 309
    .local v0, "path":Lcom/google/firebase/database/core/Path;
    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/CompoundWrite;->hasCompleteWrite(Lcom/google/firebase/database/core/Path;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    const/4 v1, 0x0

    return-object v1

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    .line 316
    .local v1, "childMerge":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual {v1}, Lcom/google/firebase/database/core/CompoundWrite;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 318
    invoke-interface {p4, p2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    return-object v2

    .line 327
    :cond_3
    invoke-interface {p4, p2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    return-object v2
.end method

.method public calcNextNodeAfterPost(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/NamedNode;ZLcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 7
    .param p1, "treePath"    # Lcom/google/firebase/database/core/Path;
    .param p2, "completeServerData"    # Lcom/google/firebase/database/snapshot/Node;
    .param p3, "post"    # Lcom/google/firebase/database/snapshot/NamedNode;
    .param p4, "reverse"    # Z
    .param p5, "index"    # Lcom/google/firebase/database/snapshot/Index;

    .line 367
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 368
    .local v0, "merge":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 369
    .local v1, "shadowingNode":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v1, :cond_0

    .line 370
    move-object v2, v1

    .local v2, "toIterate":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_0

    .line 371
    .end local v2    # "toIterate":Lcom/google/firebase/database/snapshot/Node;
    :cond_0
    if-eqz p2, :cond_4

    .line 372
    invoke-virtual {v0, p2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 377
    .restart local v2    # "toIterate":Lcom/google/firebase/database/snapshot/Node;
    :goto_0
    const/4 v3, 0x0

    .line 378
    .local v3, "currentNext":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 379
    .local v5, "node":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {p5, v5, p3, p4}, Lcom/google/firebase/database/snapshot/Index;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I

    move-result v6

    if-lez v6, :cond_2

    if-eqz v3, :cond_1

    .line 380
    invoke-virtual {p5, v5, v3, p4}, Lcom/google/firebase/database/snapshot/Index;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I

    move-result v6

    if-gez v6, :cond_2

    .line 381
    :cond_1
    move-object v3, v5

    .line 383
    .end local v5    # "node":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_2
    goto :goto_1

    .line 384
    :cond_3
    return-object v3

    .line 375
    .end local v2    # "toIterate":Lcom/google/firebase/database/snapshot/Node;
    .end local v3    # "currentNext":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method public childWrites(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/WriteTreeRef;
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .line 67
    new-instance v0, Lcom/google/firebase/database/core/WriteTreeRef;

    invoke-direct {v0, p1, p0}, Lcom/google/firebase/database/core/WriteTreeRef;-><init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTree;)V

    return-object v0
.end method

.method public getCompleteWriteData(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .line 179
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public getWrite(J)Lcom/google/firebase/database/core/UserWriteRecord;
    .locals 4
    .param p1, "writeId"    # J

    .line 89
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 90
    .local v1, "record":Lcom/google/firebase/database/core/UserWriteRecord;
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 91
    return-object v1

    .line 93
    .end local v1    # "record":Lcom/google/firebase/database/core/UserWriteRecord;
    :cond_0
    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public purgeAllWrites()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    .local v0, "purgedWrites":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/UserWriteRecord;>;"
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    .line 102
    return-object v0
.end method

.method public removeWrite(J)Z
    .locals 11
    .param p1, "writeId"    # J

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "writeToRemove":Lcom/google/firebase/database/core/UserWriteRecord;
    const/4 v1, 0x0

    .line 124
    .local v1, "idx":I
    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 125
    .local v3, "record":Lcom/google/firebase/database/core/UserWriteRecord;
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 126
    move-object v0, v3

    .line 127
    goto :goto_1

    .line 129
    :cond_0
    nop

    .end local v3    # "record":Lcom/google/firebase/database/core/UserWriteRecord;
    add-int/lit8 v1, v1, 0x1

    .line 130
    goto :goto_0

    .line 131
    :cond_1
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    const-string v5, "removeWrite called with nonexistent writeId"

    invoke-static {v4, v5}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 133
    iget-object v4, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->isVisible()Z

    move-result v4

    .line 136
    .local v4, "removedWriteWasVisible":Z
    const/4 v5, 0x0

    .line 137
    .local v5, "removedWriteOverlapsWithOtherWrites":Z
    iget-object v6, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    .line 139
    .local v6, "i":I
    :goto_3
    if-eqz v4, :cond_5

    if-ltz v6, :cond_5

    .line 140
    iget-object v7, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 141
    .local v7, "currentWrite":Lcom/google/firebase/database/core/UserWriteRecord;
    invoke-virtual {v7}, Lcom/google/firebase/database/core/UserWriteRecord;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 142
    if-lt v6, v1, :cond_3

    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/google/firebase/database/core/WriteTree;->recordContainsPath(Lcom/google/firebase/database/core/UserWriteRecord;Lcom/google/firebase/database/core/Path;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 144
    const/4 v4, 0x0

    goto :goto_4

    .line 145
    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 148
    const/4 v5, 0x1

    .line 151
    :cond_4
    :goto_4
    nop

    .end local v7    # "currentWrite":Lcom/google/firebase/database/core/UserWriteRecord;
    add-int/lit8 v6, v6, -0x1

    .line 152
    goto :goto_3

    .line 154
    :cond_5
    if-nez v4, :cond_6

    .line 155
    return v2

    .line 156
    :cond_6
    if-eqz v5, :cond_7

    .line 158
    invoke-direct {p0}, Lcom/google/firebase/database/core/WriteTree;->resetTree()V

    .line 159
    return v3

    .line 162
    :cond_7
    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 163
    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/firebase/database/core/CompoundWrite;->removeWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    goto :goto_6

    .line 165
    :cond_8
    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 166
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/database/core/Path;

    .line 167
    .local v8, "path":Lcom/google/firebase/database/core/Path;
    iget-object v9, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/firebase/database/core/CompoundWrite;->removeWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v9

    iput-object v9, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 168
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    .end local v8    # "path":Lcom/google/firebase/database/core/Path;
    goto :goto_5

    .line 170
    :cond_9
    :goto_6
    return v3
.end method

.method public shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .line 357
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

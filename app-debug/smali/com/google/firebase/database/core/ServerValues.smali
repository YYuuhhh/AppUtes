.class public Lcom/google/firebase/database/core/ServerValues;
.super Ljava/lang/Object;
.source "ServerValues.java"


# static fields
.field public static final NAME_OP_INCREMENT:Ljava/lang/String; = "increment"

.field public static final NAME_OP_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final NAME_SUBKEY_SERVERVALUE:Ljava/lang/String; = ".sv"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/snapshot/Node;
    .param p1, "x1"    # Lcom/google/firebase/database/core/ValueProvider;
    .param p2, "x2"    # Ljava/util/Map;

    .line 29
    invoke-static {p0, p1, p2}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method private static canBeRepresentedAsLong(Ljava/lang/Number;)Z
    .locals 1
    .param p0, "x"    # Ljava/lang/Number;

    .line 170
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static generateServerValues(Lcom/google/firebase/database/core/utilities/Clock;)Ljava/util/Map;
    .locals 3
    .param p0, "clock"    # Lcom/google/firebase/database/core/utilities/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Clock;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Lcom/google/firebase/database/core/utilities/Clock;->millis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-object v0
.end method

.method static resolveComplexDeferredValue(Ljava/util/Map;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Ljava/lang/Object;
    .locals 15
    .param p1, "existing"    # Lcom/google/firebase/database/core/ValueProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/core/ValueProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 73
    .local p0, "op":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p0

    const-string v1, "increment"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 74
    return-object v3

    .line 77
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 78
    .local v1, "incrObject":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Number;

    if-nez v2, :cond_1

    .line 79
    return-object v3

    .line 82
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    .line 85
    .local v2, "increment":Ljava/lang/Number;
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/ValueProvider;->node()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    .line 86
    .local v3, "existingNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v3}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Number;

    if-nez v4, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    invoke-interface {v3}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 91
    .local v4, "existingVal":Ljava/lang/Number;
    invoke-static {v2}, Lcom/google/firebase/database/core/ServerValues;->canBeRepresentedAsLong(Ljava/lang/Number;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lcom/google/firebase/database/core/ServerValues;->canBeRepresentedAsLong(Ljava/lang/Number;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 92
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 93
    .local v5, "x":J
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 94
    .local v7, "y":J
    add-long v9, v5, v7

    .line 98
    .local v9, "r":J
    xor-long v11, v5, v9

    xor-long v13, v7, v9

    and-long/2addr v11, v13

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-ltz v11, :cond_3

    .line 99
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    return-object v11

    .line 102
    .end local v5    # "x":J
    .end local v7    # "y":J
    .end local v9    # "r":J
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    return-object v5

    .line 87
    .end local v4    # "existingVal":Ljava/lang/Number;
    :cond_4
    :goto_0
    return-object v2
.end method

.method public static resolveDeferredLeafValue(Ljava/lang/Object;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "existing"    # Lcom/google/firebase/database/core/ValueProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/core/ValueProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 42
    .local p2, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 43
    return-object p0

    .line 45
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 46
    .local v0, "mapValue":Ljava/util/Map;
    const-string v1, ".sv"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    return-object p0

    .line 50
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    .local v1, "op":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 52
    .local v2, "res":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 53
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Lcom/google/firebase/database/core/ServerValues;->resolveScalarDeferredValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 54
    :cond_2
    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 55
    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, p1, p2}, Lcom/google/firebase/database/core/ServerValues;->resolveComplexDeferredValue(Ljava/util/Map;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    .line 57
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 58
    return-object p0

    .line 60
    :cond_4
    return-object v2
.end method

.method public static resolveDeferredValueMerge(Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Lcom/google/firebase/database/core/CompoundWrite;
    .locals 6
    .param p0, "merge"    # Lcom/google/firebase/database/core/CompoundWrite;
    .param p1, "syncTree"    # Lcom/google/firebase/database/core/SyncTree;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/CompoundWrite;",
            "Lcom/google/firebase/database/core/SyncTree;",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/database/core/CompoundWrite;"
        }
    .end annotation

    .line 157
    .local p3, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 158
    .local v0, "write":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual {p0}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    new-instance v3, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v4}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;)V

    .line 160
    .local v3, "deferredValue":Lcom/google/firebase/database/core/ValueProvider;
    nop

    .line 162
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/Path;

    .line 163
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/snapshot/Node;

    invoke-static {v5, v3, p3}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 161
    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 164
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    .end local v3    # "deferredValue":Lcom/google/firebase/database/core/ValueProvider;
    goto :goto_0

    .line 165
    :cond_0
    return-object v0
.end method

.method public static resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p0, "data"    # Lcom/google/firebase/database/snapshot/Node;
    .param p1, "syncTree"    # Lcom/google/firebase/database/core/SyncTree;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/core/SyncTree;",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .line 112
    .local p3, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/core/ValueProvider$DeferredValueProvider;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;)V

    invoke-static {p0, v0, p3}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method private static resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;
    .locals 6
    .param p0, "data"    # Lcom/google/firebase/database/snapshot/Node;
    .param p1, "existing"    # Lcom/google/firebase/database/core/ValueProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/core/ValueProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .line 118
    .local p2, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, "rawPriority":Ljava/lang/Object;
    nop

    .line 122
    const-string v1, ".priority"

    invoke-static {v1}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/ValueProvider;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/ValueProvider;

    move-result-object v1

    .line 120
    invoke-static {v0, v1, p2}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredLeafValue(Ljava/lang/Object;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, "priority":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredLeafValue(Ljava/lang/Object;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    .line 126
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    return-object p0

    .line 127
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    return-object v3

    .line 130
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    return-object p0

    .line 133
    :cond_3
    move-object v2, p0

    check-cast v2, Lcom/google/firebase/database/snapshot/ChildrenNode;

    .line 134
    .local v2, "childNode":Lcom/google/firebase/database/snapshot/ChildrenNode;
    new-instance v3, Lcom/google/firebase/database/core/SnapshotHolder;

    invoke-direct {v3, v2}, Lcom/google/firebase/database/core/SnapshotHolder;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    .line 135
    .local v3, "holder":Lcom/google/firebase/database/core/SnapshotHolder;
    new-instance v4, Lcom/google/firebase/database/core/ServerValues$1;

    invoke-direct {v4, p1, p2, v3}, Lcom/google/firebase/database/core/ServerValues$1;-><init>(Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;Lcom/google/firebase/database/core/SnapshotHolder;)V

    invoke-virtual {v2, v4}, Lcom/google/firebase/database/snapshot/ChildrenNode;->forEachChild(Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;)V

    .line 147
    invoke-virtual {v3}, Lcom/google/firebase/database/core/SnapshotHolder;->getRootNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 148
    invoke-virtual {v3}, Lcom/google/firebase/database/core/SnapshotHolder;->getRootNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-static {v1}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/firebase/database/snapshot/Node;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    return-object v4

    .line 150
    :cond_4
    invoke-virtual {v3}, Lcom/google/firebase/database/core/SnapshotHolder;->getRootNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    return-object v4
.end method

.method public static resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p0, "data"    # Lcom/google/firebase/database/snapshot/Node;
    .param p1, "existing"    # Lcom/google/firebase/database/snapshot/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .line 107
    .local p2, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    invoke-static {p0, v0, p2}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/ValueProvider;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method static resolveScalarDeferredValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p0, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 64
    .local p1, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "timestamp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

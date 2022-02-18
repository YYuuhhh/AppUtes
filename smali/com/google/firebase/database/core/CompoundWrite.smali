.class public final Lcom/google/firebase/database/core/CompoundWrite;
.super Ljava/lang/Object;
.source "CompoundWrite.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/firebase/database/core/Path;",
        "Lcom/google/firebase/database/snapshot/Node;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/firebase/database/core/CompoundWrite;


# instance fields
.field private final writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Lcom/google/firebase/database/snapshot/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/google/firebase/database/core/CompoundWrite;

    new-instance v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/CompoundWrite;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    sput-object v0, Lcom/google/firebase/database/core/CompoundWrite;->EMPTY:Lcom/google/firebase/database/core/CompoundWrite;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Lcom/google/firebase/database/snapshot/Node;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "writeTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 43
    return-void
.end method

.method private applySubtreeWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 7
    .param p1, "relativePath"    # Lcom/google/firebase/database/core/Path;
    .param p3, "node"    # Lcom/google/firebase/database/snapshot/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Lcom/google/firebase/database/snapshot/Node;",
            ">;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ")",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .line 221
    .local p2, "writeTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-virtual {p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {p3, p1, v0}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    .line 226
    .local v0, "priorityWrite":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 227
    .local v2, "childTreeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 228
    .local v3, "childTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 229
    .local v4, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 232
    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-string v6, "Priority writes must always be leaf nodes"

    invoke-static {v5, v6}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 233
    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/google/firebase/database/snapshot/Node;

    goto :goto_2

    .line 235
    :cond_2
    invoke-virtual {p1, v4}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v5

    invoke-direct {p0, v5, v3, p3}, Lcom/google/firebase/database/core/CompoundWrite;->applySubtreeWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    .line 237
    .end local v2    # "childTreeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;>;"
    .end local v3    # "childTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    .end local v4    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    :goto_2
    goto :goto_0

    .line 239
    :cond_3
    invoke-interface {p3, p1}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 240
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getPriorityKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    .line 242
    :cond_4
    return-object p3
.end method

.method public static emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;
    .locals 1

    .line 46
    sget-object v0, Lcom/google/firebase/database/core/CompoundWrite;->EMPTY:Lcom/google/firebase/database/core/CompoundWrite;

    return-object v0
.end method

.method public static fromChildMerge(Ljava/util/Map;)Lcom/google/firebase/database/core/CompoundWrite;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ">;)",
            "Lcom/google/firebase/database/core/CompoundWrite;"
        }
    .end annotation

    .line 60
    .local p0, "merge":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    .line 61
    .local v0, "writeTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 62
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;>;"
    new-instance v3, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {v3, v4}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 63
    .local v3, "tree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    new-instance v4, Lcom/google/firebase/database/core/Path;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/database/snapshot/ChildKey;

    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    invoke-virtual {v0, v4, v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    .line 64
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;>;"
    .end local v3    # "tree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    goto :goto_0

    .line 65
    :cond_0
    new-instance v1, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/core/CompoundWrite;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-object v1
.end method

.method public static fromPathMerge(Ljava/util/Map;)Lcom/google/firebase/database/core/CompoundWrite;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ">;)",
            "Lcom/google/firebase/database/core/CompoundWrite;"
        }
    .end annotation

    .line 69
    .local p0, "merge":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    .line 70
    .local v0, "writeTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 71
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    new-instance v3, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {v3, v4}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 72
    .local v3, "tree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v4, v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    .line 73
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    .end local v3    # "tree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    goto :goto_0

    .line 74
    :cond_0
    new-instance v1, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/core/CompoundWrite;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-object v1
.end method

.method public static fromValue(Ljava/util/Map;)Lcom/google/firebase/database/core/CompoundWrite;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/database/core/CompoundWrite;"
        }
    .end annotation

    .line 50
    .local p0, "merge":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    .line 51
    .local v0, "writeTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 52
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 54
    .local v3, "tree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    new-instance v4, Lcom/google/firebase/database/core/Path;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    .line 55
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "tree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    goto :goto_0

    .line 56
    :cond_0
    new-instance v1, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/core/CompoundWrite;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-object v1
.end method


# virtual methods
.method public addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;
    .locals 6
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .line 78
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lcom/google/firebase/database/core/CompoundWrite;

    new-instance v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-direct {v1, p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/CompoundWrite;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->findRootMostPathWithValue(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 82
    .local v0, "rootMostPath":Lcom/google/firebase/database/core/Path;
    if-eqz v0, :cond_2

    .line 83
    invoke-static {v0, p1}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    .line 84
    .local v1, "relativePath":Lcom/google/firebase/database/core/Path;
    iget-object v2, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/Node;

    .line 85
    .local v2, "value":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v1}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    .line 86
    .local v3, "back":Lcom/google/firebase/database/snapshot/ChildKey;
    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    invoke-virtual {v1}, Lcom/google/firebase/database/core/Path;->getParent()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    return-object p0

    .line 92
    :cond_1
    invoke-interface {v2, v1, p2}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 93
    new-instance v4, Lcom/google/firebase/database/core/CompoundWrite;

    iget-object v5, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v5, v0, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/firebase/database/core/CompoundWrite;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-object v4

    .line 96
    .end local v1    # "relativePath":Lcom/google/firebase/database/core/Path;
    .end local v2    # "value":Lcom/google/firebase/database/snapshot/Node;
    .end local v3    # "back":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_2
    new-instance v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-direct {v1, p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 97
    .local v1, "subtree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    iget-object v2, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v2, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v2

    .line 98
    .local v2, "newWriteTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    new-instance v3, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-direct {v3, v2}, Lcom/google/firebase/database/core/CompoundWrite;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-object v3
.end method

.method public addWrite(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;
    .locals 3
    .param p1, "key"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .line 104
    new-instance v0, Lcom/google/firebase/database/core/Path;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    return-object v0
.end method

.method public addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;
    .locals 2
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "updates"    # Lcom/google/firebase/database/core/CompoundWrite;

    .line 108
    iget-object v0, p2, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    new-instance v1, Lcom/google/firebase/database/core/CompoundWrite$1;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/core/CompoundWrite$1;-><init>(Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/Path;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->fold(Ljava/lang/Object;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/CompoundWrite;

    return-object v0
.end method

.method public apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 2
    .param p1, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .line 254
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/firebase/database/core/CompoundWrite;->applySubtreeWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;
    .locals 3
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .line 190
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    return-object p0

    .line 193
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 194
    .local v0, "shadowingNode":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v0, :cond_1

    .line 195
    new-instance v1, Lcom/google/firebase/database/core/CompoundWrite;

    new-instance v2, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-direct {v2, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/google/firebase/database/core/CompoundWrite;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-object v1

    .line 198
    :cond_1
    new-instance v1, Lcom/google/firebase/database/core/CompoundWrite;

    iget-object v2, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v2, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/database/core/CompoundWrite;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-object v1
.end method

.method public childCompoundWrites()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/CompoundWrite;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v0, "children":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    iget-object v1, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 206
    .local v2, "entries":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/ChildKey;

    new-instance v4, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-direct {v4, v5}, Lcom/google/firebase/database/core/CompoundWrite;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v2    # "entries":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;>;"
    goto :goto_0

    .line 208
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 283
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 284
    return v0

    .line 286
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 290
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 287
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCompleteChildren()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/snapshot/NamedNode;>;"
    iget-object v1, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 176
    .local v2, "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    new-instance v3, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v2    # "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    goto :goto_0

    :cond_0
    goto :goto_2

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 180
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 181
    .local v3, "childTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 182
    new-instance v4, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {v4, v5, v6}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;>;"
    .end local v3    # "childTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    :cond_2
    goto :goto_1

    .line 186
    :cond_3
    :goto_2
    return-object v0
.end method

.method public getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 3
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .line 159
    iget-object v0, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->findRootMostPathWithValue(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 160
    .local v0, "rootMost":Lcom/google/firebase/database/core/Path;
    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/Node;

    invoke-static {v0, p1}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    return-object v1

    .line 163
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getValue(Z)Ljava/util/Map;
    .locals 3
    .param p1, "exportFormat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v0, "writes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    new-instance v2, Lcom/google/firebase/database/core/CompoundWrite$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/firebase/database/core/CompoundWrite$2;-><init>(Lcom/google/firebase/database/core/CompoundWrite;Ljava/util/Map;Z)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->foreach(Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V

    .line 273
    return-object v0
.end method

.method public hasCompleteWrite(Lcom/google/firebase/database/core/Path;)Z
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .line 143
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ">;>;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;
    .locals 2
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .line 126
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/google/firebase/database/core/CompoundWrite;->EMPTY:Lcom/google/firebase/database/core/CompoundWrite;

    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 130
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    .line 131
    .local v0, "newWriteTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/snapshot/Node;>;"
    new-instance v1, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/core/CompoundWrite;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-object v1
.end method

.method public rootWrite()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/firebase/database/core/CompoundWrite;->writeTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompoundWrite{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/firebase/database/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

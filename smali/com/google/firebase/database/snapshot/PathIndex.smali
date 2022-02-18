.class public final Lcom/google/firebase/database/snapshot/PathIndex;
.super Lcom/google/firebase/database/snapshot/Index;
.source "PathIndex.java"


# instance fields
.field private final indexPath:Lcom/google/firebase/database/core/Path;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/Path;)V
    .locals 2
    .param p1, "indexPath"    # Lcom/google/firebase/database/core/Path;

    .line 23
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/Index;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t create PathIndex with \'.priority\' as key. Please use PriorityIndex instead!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/PathIndex;->indexPath:Lcom/google/firebase/database/core/Path;

    .line 29
    return-void
.end method


# virtual methods
.method public compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;)I
    .locals 5
    .param p1, "a"    # Lcom/google/firebase/database/snapshot/NamedNode;
    .param p2, "b"    # Lcom/google/firebase/database/snapshot/NamedNode;

    .line 38
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/PathIndex;->indexPath:Lcom/google/firebase/database/core/Path;

    invoke-interface {v0, v1}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 39
    .local v0, "aChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/PathIndex;->indexPath:Lcom/google/firebase/database/core/Path;

    invoke-interface {v1, v2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 40
    .local v1, "bChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v0, v1}, Lcom/google/firebase/database/snapshot/Node;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 41
    .local v2, "indexCmp":I
    if-nez v2, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/snapshot/ChildKey;->compareTo(Lcom/google/firebase/database/snapshot/ChildKey;)I

    move-result v3

    return v3

    .line 44
    :cond_0
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/google/firebase/database/snapshot/NamedNode;

    check-cast p2, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/snapshot/PathIndex;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 68
    return v0

    .line 70
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/database/snapshot/PathIndex;

    .line 76
    .local v2, "that":Lcom/google/firebase/database/snapshot/PathIndex;
    iget-object v3, p0, Lcom/google/firebase/database/snapshot/PathIndex;->indexPath:Lcom/google/firebase/database/core/Path;

    iget-object v4, v2, Lcom/google/firebase/database/snapshot/PathIndex;->indexPath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/core/Path;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 77
    return v1

    .line 80
    :cond_2
    return v0

    .line 71
    .end local v2    # "that":Lcom/google/firebase/database/snapshot/PathIndex;
    :cond_3
    :goto_0
    return v1
.end method

.method public getQueryDefinition()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/PathIndex;->indexPath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->wireFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/PathIndex;->indexPath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDefinedOn(Lcom/google/firebase/database/snapshot/Node;)Z
    .locals 1
    .param p1, "snapshot"    # Lcom/google/firebase/database/snapshot/Node;

    .line 33
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/PathIndex;->indexPath:Lcom/google/firebase/database/core/Path;

    invoke-interface {p1, v0}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public makePost(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 2
    .param p1, "name"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "value"    # Lcom/google/firebase/database/snapshot/Node;

    .line 50
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/PathIndex;->indexPath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1, p2}, Lcom/google/firebase/database/snapshot/EmptyNode;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 51
    .local v0, "node":Lcom/google/firebase/database/snapshot/Node;
    new-instance v1, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-direct {v1, p1, v0}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v1
.end method

.method public maxPost()Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 3

    .line 56
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/PathIndex;->indexPath:Lcom/google/firebase/database/core/Path;

    sget-object v2, Lcom/google/firebase/database/snapshot/Node;->MAX_NODE:Lcom/google/firebase/database/snapshot/ChildrenNode;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/snapshot/EmptyNode;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 57
    .local v0, "node":Lcom/google/firebase/database/snapshot/Node;
    new-instance v1, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v1
.end method

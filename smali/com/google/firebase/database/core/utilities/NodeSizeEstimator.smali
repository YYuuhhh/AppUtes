.class public Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;
.super Ljava/lang/Object;
.source "NodeSizeEstimator.java"


# static fields
.field private static final LEAF_PRIORITY_OVERHEAD:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static estimateLeafNodeSize(Lcom/google/firebase/database/snapshot/LeafNode;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/LeafNode<",
            "*>;)J"
        }
    .end annotation

    .line 40
    .local p0, "node":Lcom/google/firebase/database/snapshot/LeafNode;, "Lcom/google/firebase/database/snapshot/LeafNode<*>;"
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;

    if-eqz v0, :cond_0

    .line 41
    const-wide/16 v0, 0x8

    .local v0, "valueSize":J
    goto :goto_0

    .line 42
    .end local v0    # "valueSize":J
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/LongNode;

    if-eqz v0, :cond_1

    .line 43
    const-wide/16 v0, 0x8

    .restart local v0    # "valueSize":J
    goto :goto_0

    .line 44
    .end local v0    # "valueSize":J
    :cond_1
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/BooleanNode;

    if-eqz v0, :cond_2

    .line 45
    const-wide/16 v0, 0x4

    .restart local v0    # "valueSize":J
    goto :goto_0

    .line 46
    .end local v0    # "valueSize":J
    :cond_2
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/StringNode;

    if-eqz v0, :cond_4

    .line 47
    const-wide/16 v0, 0x2

    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 51
    .restart local v0    # "valueSize":J
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    return-wide v0

    .line 54
    :cond_3
    const-wide/16 v2, 0x18

    add-long/2addr v2, v0

    .line 56
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/LeafNode;

    invoke-static {v4}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/google/firebase/database/snapshot/LeafNode;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 54
    return-wide v2

    .line 49
    .end local v0    # "valueSize":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown leaf node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static estimateSerializedNodeSize(Lcom/google/firebase/database/snapshot/Node;)J
    .locals 8
    .param p0, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .line 61
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_0

    .line 62
    return-wide v1

    .line 63
    :cond_0
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/database/snapshot/LeafNode;

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/google/firebase/database/snapshot/LeafNode;)J

    move-result-wide v0

    return-wide v0

    .line 66
    :cond_1
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected node type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 67
    const-wide/16 v3, 0x1

    .line 68
    .local v3, "sum":J
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 69
    .local v5, "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    .line 70
    add-long/2addr v3, v1

    .line 71
    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    invoke-static {v6}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateSerializedNodeSize(Lcom/google/firebase/database/snapshot/Node;)J

    move-result-wide v6

    add-long/2addr v3, v6

    .line 72
    .end local v5    # "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    goto :goto_0

    .line 73
    :cond_2
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    const-wide/16 v0, 0xc

    add-long/2addr v3, v0

    .line 75
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/LeafNode;

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/google/firebase/database/snapshot/LeafNode;)J

    move-result-wide v0

    add-long/2addr v3, v0

    .line 77
    :cond_3
    return-wide v3
.end method

.method public static nodeCount(Lcom/google/firebase/database/snapshot/Node;)I
    .locals 4
    .param p0, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .line 82
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_0
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_1
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "sum":I
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 90
    .local v2, "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->nodeCount(Lcom/google/firebase/database/snapshot/Node;)I

    move-result v3

    add-int/2addr v0, v3

    .line 91
    .end local v2    # "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    goto :goto_0

    .line 92
    :cond_2
    return v0
.end method

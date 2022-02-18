.class public Lcom/google/firebase/database/core/view/filter/LimitedFilter;
.super Ljava/lang/Object;
.source "LimitedFilter.java"

# interfaces
.implements Lcom/google/firebase/database/core/view/filter/NodeFilter;


# instance fields
.field private final index:Lcom/google/firebase/database/snapshot/Index;

.field private final limit:I

.field private final rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

.field private final reverse:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/view/QueryParams;)V
    .locals 1
    .param p1, "params"    # Lcom/google/firebase/database/core/view/QueryParams;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/view/filter/RangedFilter;-><init>(Lcom/google/firebase/database/core/view/QueryParams;)V

    iput-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    .line 43
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 44
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->limit:I

    .line 45
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->isViewFromLeft()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    .line 46
    return-void
.end method

.method private fullLimitUpdateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 16
    .param p1, "oldIndexed"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .param p2, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p3, "childSnap"    # Lcom/google/firebase/database/snapshot/Node;
    .param p4, "source"    # Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    .param p5, "optChangeAccumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/firebase/database/snapshot/Node;->getChildCount()I

    move-result v6

    iget v7, v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->limit:I

    const/4 v9, 0x1

    if-ne v6, v7, :cond_0

    move v6, v9

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {v6}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 79
    new-instance v6, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-direct {v6, v2, v3}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    .line 81
    .local v6, "newChildNamedNode":Lcom/google/firebase/database/snapshot/NamedNode;
    iget-boolean v7, v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    if-eqz v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getFirstChild()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getLastChild()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v7

    .line 82
    .local v7, "windowBoundary":Lcom/google/firebase/database/snapshot/NamedNode;
    :goto_1
    iget-object v10, v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v10, v6}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->matches(Lcom/google/firebase/database/snapshot/NamedNode;)Z

    move-result v10

    .line 83
    .local v10, "inRange":Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    invoke-interface {v11, v2}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    invoke-interface {v11, v2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    .line 85
    .local v11, "oldChildSnap":Lcom/google/firebase/database/snapshot/Node;
    iget-object v12, v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    iget-boolean v13, v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    invoke-interface {v4, v12, v7, v13}, Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;->getChildAfterChild(Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/snapshot/NamedNode;Z)Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v12

    .line 86
    .local v12, "nextChild":Lcom/google/firebase/database/snapshot/NamedNode;
    :goto_2
    if-eqz v12, :cond_3

    .line 87
    invoke-virtual {v12}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v13

    invoke-virtual {v12}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 92
    :cond_2
    iget-object v13, v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    iget-boolean v14, v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    invoke-interface {v4, v13, v12, v14}, Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;->getChildAfterChild(Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/snapshot/NamedNode;Z)Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v12

    goto :goto_2

    .line 95
    :cond_3
    if-nez v12, :cond_4

    move v13, v9

    goto :goto_3

    :cond_4
    iget-object v13, v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    iget-boolean v14, v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    invoke-virtual {v13, v12, v6, v14}, Lcom/google/firebase/database/snapshot/Index;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I

    move-result v13

    .line 96
    .local v13, "compareNext":I
    :goto_3
    if-eqz v10, :cond_5

    invoke-interface/range {p3 .. p3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    if-ltz v13, :cond_5

    move v14, v9

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    .line 97
    .local v14, "remainsInWindow":Z
    :goto_4
    if-eqz v14, :cond_7

    .line 98
    if-eqz v5, :cond_6

    .line 99
    nop

    .line 100
    invoke-static {v2, v3, v11}, Lcom/google/firebase/database/core/view/Change;->childChangedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v8

    .line 99
    invoke-virtual {v5, v8}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 102
    :cond_6
    invoke-virtual/range {p1 .. p3}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v8

    return-object v8

    .line 104
    :cond_7
    if-eqz v5, :cond_8

    .line 105
    invoke-static {v2, v11}, Lcom/google/firebase/database/core/view/Change;->childRemovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 107
    :cond_8
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v15

    invoke-virtual {v1, v2, v15}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v15

    .line 108
    .local v15, "newIndexed":Lcom/google/firebase/database/snapshot/IndexedNode;
    if-eqz v12, :cond_9

    iget-object v8, v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v8, v12}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->matches(Lcom/google/firebase/database/snapshot/NamedNode;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v9

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    .line 109
    .local v8, "nextChildInRange":Z
    :goto_5
    if-eqz v8, :cond_b

    .line 110
    if-eqz v5, :cond_a

    .line 111
    nop

    .line 112
    invoke-virtual {v12}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v9

    invoke-virtual {v12}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v2

    .line 111
    invoke-virtual {v5, v2}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 114
    :cond_a
    invoke-virtual {v12}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v12}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    invoke-virtual {v15, v2, v9}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    return-object v2

    .line 116
    :cond_b
    return-object v15

    .line 119
    .end local v8    # "nextChildInRange":Z
    .end local v11    # "oldChildSnap":Lcom/google/firebase/database/snapshot/Node;
    .end local v12    # "nextChild":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v13    # "compareNext":I
    .end local v14    # "remainsInWindow":Z
    .end local v15    # "newIndexed":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_c
    invoke-interface/range {p3 .. p3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 121
    return-object v1

    .line 122
    :cond_d
    if-eqz v10, :cond_10

    .line 123
    iget-object v2, v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    iget-boolean v8, v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    invoke-virtual {v2, v7, v6, v8}, Lcom/google/firebase/database/snapshot/Index;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I

    move-result v2

    if-ltz v2, :cond_f

    .line 124
    if-eqz v5, :cond_e

    .line 125
    nop

    .line 126
    invoke-virtual {v7}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/google/firebase/database/core/view/Change;->childRemovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v2

    .line 125
    invoke-virtual {v5, v2}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 127
    invoke-static/range {p2 .. p3}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 129
    :cond_e
    nop

    .line 130
    invoke-virtual/range {p1 .. p3}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    .line 131
    invoke-virtual {v7}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v8

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    .line 129
    return-object v2

    .line 133
    :cond_f
    return-object v1

    .line 136
    :cond_10
    return-object v1
.end method


# virtual methods
.method public filtersNodes()Z
    .locals 1

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public getIndex()Lcom/google/firebase/database/snapshot/Index;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    return-object v0
.end method

.method public getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v0

    return-object v0
.end method

.method public updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 7
    .param p1, "snap"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .param p2, "key"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p3, "newChild"    # Lcom/google/firebase/database/snapshot/Node;
    .param p4, "affectedPath"    # Lcom/google/firebase/database/core/Path;
    .param p5, "source"    # Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    .param p6, "optChangeAccumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 56
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    new-instance v1, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-direct {v1, p2, p3}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->matches(Lcom/google/firebase/database/snapshot/NamedNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p3

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    return-object p1

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->limit:I

    if-ge v0, v1, :cond_2

    .line 63
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    .line 64
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v0

    .line 65
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    .line 63
    return-object v0

    .line 67
    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->fullLimitUpdateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    return-object v0
.end method

.method public updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 11
    .param p1, "oldSnap"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .param p2, "newSnap"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .param p3, "optChangeAccumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 144
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 148
    :cond_0
    move-object v0, p2

    .line 150
    .local v0, "filtered":Lcom/google/firebase/database/snapshot/IndexedNode;
    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    .line 155
    iget-boolean v1, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->reverseIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 157
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/database/snapshot/NamedNode;>;"
    iget-object v2, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getEndPost()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v2

    .line 158
    .local v2, "startPost":Lcom/google/firebase/database/snapshot/NamedNode;
    iget-object v3, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getStartPost()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v3

    .line 159
    .local v3, "endPost":Lcom/google/firebase/database/snapshot/NamedNode;
    const/4 v4, -0x1

    .local v4, "sign":I
    goto :goto_0

    .line 161
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/database/snapshot/NamedNode;>;"
    .end local v2    # "startPost":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v3    # "endPost":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v4    # "sign":I
    :cond_1
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 162
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/database/snapshot/NamedNode;>;"
    iget-object v2, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getStartPost()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v2

    .line 163
    .restart local v2    # "startPost":Lcom/google/firebase/database/snapshot/NamedNode;
    iget-object v3, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getEndPost()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v3

    .line 164
    .restart local v3    # "endPost":Lcom/google/firebase/database/snapshot/NamedNode;
    const/4 v4, 0x1

    .line 167
    .restart local v4    # "sign":I
    :goto_0
    const/4 v5, 0x0

    .line 168
    .local v5, "count":I
    const/4 v6, 0x0

    .line 169
    .local v6, "foundStartPost":Z
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 171
    .local v7, "next":Lcom/google/firebase/database/snapshot/NamedNode;
    if-nez v6, :cond_2

    iget-object v8, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-virtual {v8, v2, v7}, Lcom/google/firebase/database/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    mul-int/2addr v8, v4

    if-gtz v8, :cond_2

    .line 173
    const/4 v6, 0x1

    .line 175
    :cond_2
    if-eqz v6, :cond_3

    iget v8, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->limit:I

    if-ge v5, v8, :cond_3

    iget-object v8, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 176
    invoke-virtual {v8, v7, v3}, Lcom/google/firebase/database/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    mul-int/2addr v8, v4

    if-gtz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 177
    .local v8, "inRange":Z
    :goto_2
    if-eqz v8, :cond_4

    .line 178
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 180
    :cond_4
    invoke-virtual {v7}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v9

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    .line 182
    .end local v7    # "next":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v8    # "inRange":Z
    :goto_3
    goto :goto_1

    .line 146
    .end local v0    # "filtered":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/database/snapshot/NamedNode;>;"
    .end local v2    # "startPost":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v3    # "endPost":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v4    # "sign":I
    .end local v5    # "count":I
    .end local v6    # "foundStartPost":Z
    :cond_5
    :goto_4
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-static {v0, v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    .line 184
    .restart local v0    # "filtered":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_6
    iget-object v1, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v1

    invoke-interface {v1, p1, v0, p3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    return-object v1
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 0
    .param p1, "oldSnap"    # Lcom/google/firebase/database/snapshot/IndexedNode;
    .param p2, "newPriority"    # Lcom/google/firebase/database/snapshot/Node;

    .line 190
    return-object p1
.end method

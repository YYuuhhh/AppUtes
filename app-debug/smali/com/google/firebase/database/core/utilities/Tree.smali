.class public Lcom/google/firebase/database/core/utilities/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/utilities/Tree$TreeFilter;,
        Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private name:Lcom/google/firebase/database/snapshot/ChildKey;

.field private node:Lcom/google/firebase/database/core/utilities/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/TreeNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field private parent:Lcom/google/firebase/database/core/utilities/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    new-instance v0, Lcom/google/firebase/database/core/utilities/TreeNode;

    invoke-direct {v0}, Lcom/google/firebase/database/core/utilities/TreeNode;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/google/firebase/database/core/utilities/Tree;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/Tree;Lcom/google/firebase/database/core/utilities/TreeNode;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/Tree;Lcom/google/firebase/database/core/utilities/TreeNode;)V
    .locals 0
    .param p1, "name"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "TT;>;",
            "Lcom/google/firebase/database/core/utilities/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    .local p2, "parent":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    .local p3, "node":Lcom/google/firebase/database/core/utilities/TreeNode;, "Lcom/google/firebase/database/core/utilities/TreeNode<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 40
    iput-object p2, p0, Lcom/google/firebase/database/core/utilities/Tree;->parent:Lcom/google/firebase/database/core/utilities/Tree;

    .line 41
    iput-object p3, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    .line 42
    return-void
.end method

.method private updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/Tree;)V
    .locals 4
    .param p1, "name"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "TT;>;)V"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    .local p2, "child":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    invoke-virtual {p2}, Lcom/google/firebase/database/core/utilities/Tree;->isEmpty()Z

    move-result v0

    .line 172
    .local v0, "childEmpty":Z
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v1, v1, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    .local v1, "childExists":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 174
    iget-object v2, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v2, v2, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-direct {p0}, Lcom/google/firebase/database/core/utilities/Tree;->updateParents()V

    goto :goto_0

    .line 176
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 177
    iget-object v2, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v2, v2, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    iget-object v3, p2, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-direct {p0}, Lcom/google/firebase/database/core/utilities/Tree;->updateParents()V

    .line 180
    :cond_1
    :goto_0
    return-void
.end method

.method private updateParents()V
    .locals 2

    .line 165
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->parent:Lcom/google/firebase/database/core/utilities/Tree;

    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/database/core/utilities/Tree;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/Tree;)V

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public forEachAncestor(Lcom/google/firebase/database/core/utilities/Tree$TreeFilter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree$TreeFilter<",
            "TT;>;)Z"
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    .local p1, "filter":Lcom/google/firebase/database/core/utilities/Tree$TreeFilter;, "Lcom/google/firebase/database/core/utilities/Tree$TreeFilter<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/core/utilities/Tree;->forEachAncestor(Lcom/google/firebase/database/core/utilities/Tree$TreeFilter;Z)Z

    move-result v0

    return v0
.end method

.method public forEachAncestor(Lcom/google/firebase/database/core/utilities/Tree$TreeFilter;Z)Z
    .locals 2
    .param p2, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree$TreeFilter<",
            "TT;>;Z)Z"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    .local p1, "filter":Lcom/google/firebase/database/core/utilities/Tree$TreeFilter;, "Lcom/google/firebase/database/core/utilities/Tree$TreeFilter<TT;>;"
    if-eqz p2, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->parent:Lcom/google/firebase/database/core/utilities/Tree;

    .line 144
    .local v0, "tree":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 145
    invoke-interface {p1, v0}, Lcom/google/firebase/database/core/utilities/Tree$TreeFilter;->filterTreeNode(Lcom/google/firebase/database/core/utilities/Tree;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    const/4 v1, 0x1

    return v1

    .line 148
    :cond_1
    iget-object v0, v0, Lcom/google/firebase/database/core/utilities/Tree;->parent:Lcom/google/firebase/database/core/utilities/Tree;

    goto :goto_0

    .line 150
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public forEachChild(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor<",
            "TT;>;)V"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    .local p1, "visitor":Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;, "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 156
    .local v0, "entries":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 158
    aget-object v2, v0, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/TreeNode<TT;>;>;"
    new-instance v3, Lcom/google/firebase/database/core/utilities/Tree;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/core/utilities/TreeNode;

    invoke-direct {v3, v4, p0, v5}, Lcom/google/firebase/database/core/utilities/Tree;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/Tree;Lcom/google/firebase/database/core/utilities/TreeNode;)V

    .line 160
    .local v3, "subTree":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    invoke-interface {p1, v3}, Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;->visitTree(Lcom/google/firebase/database/core/utilities/Tree;)V

    .line 156
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/TreeNode<TT;>;>;"
    .end local v3    # "subTree":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor<",
            "TT;>;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    .local p1, "visitor":Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;, "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/firebase/database/core/utilities/Tree;->forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;ZZ)V

    .line 113
    return-void
.end method

.method public forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;Z)V
    .locals 1
    .param p2, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    .local p1, "visitor":Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;, "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/core/utilities/Tree;->forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;ZZ)V

    .line 117
    return-void
.end method

.method public forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;ZZ)V
    .locals 1
    .param p2, "includeSelf"    # Z
    .param p3, "childrenFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor<",
            "TT;>;ZZ)V"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    .local p1, "visitor":Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;, "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor<TT;>;"
    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 122
    invoke-interface {p1, p0}, Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;->visitTree(Lcom/google/firebase/database/core/utilities/Tree;)V

    .line 125
    :cond_0
    new-instance v0, Lcom/google/firebase/database/core/utilities/Tree$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/firebase/database/core/utilities/Tree$1;-><init>(Lcom/google/firebase/database/core/utilities/Tree;Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;Z)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/utilities/Tree;->forEachChild(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;)V

    .line 133
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 134
    invoke-interface {p1, p0}, Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;->visitTree(Lcom/google/firebase/database/core/utilities/Tree;)V

    .line 136
    :cond_1
    return-void
.end method

.method public getName()Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1

    .line 91
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public getParent()Lcom/google/firebase/database/core/utilities/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->parent:Lcom/google/firebase/database/core/utilities/Tree;

    return-object v0
.end method

.method public getPath()Lcom/google/firebase/database/core/Path;
    .locals 4

    .line 95
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->parent:Lcom/google/firebase/database/core/utilities/Tree;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 97
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->parent:Lcom/google/firebase/database/core/utilities/Tree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/Tree;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    return-object v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/firebase/database/core/Path;

    new-array v2, v2, [Lcom/google/firebase/database/snapshot/ChildKey;

    iget-object v3, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .line 104
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 108
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastNodeOnPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/TreeNode;
    .locals 3
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Lcom/google/firebase/database/core/utilities/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    .line 50
    .local v0, "current":Lcom/google/firebase/database/core/utilities/TreeNode;, "Lcom/google/firebase/database/core/utilities/TreeNode<TT;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    .line 51
    .local v1, "next":Lcom/google/firebase/database/snapshot/ChildKey;
    :goto_0
    if-eqz v1, :cond_2

    .line 53
    iget-object v2, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/utilities/TreeNode;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 54
    .local v2, "childNode":Lcom/google/firebase/database/core/utilities/TreeNode;, "Lcom/google/firebase/database/core/utilities/TreeNode<TT;>;"
    :goto_1
    if-nez v2, :cond_1

    .line 55
    return-object v0

    .line 57
    :cond_1
    move-object v0, v2

    .line 58
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    .line 60
    .end local v2    # "childNode":Lcom/google/firebase/database/core/utilities/TreeNode;, "Lcom/google/firebase/database/core/utilities/TreeNode<TT;>;"
    goto :goto_0

    .line 61
    :cond_2
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iput-object p1, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->value:Ljava/lang/Object;

    .line 83
    invoke-direct {p0}, Lcom/google/firebase/database/core/utilities/Tree;->updateParents()V

    .line 84
    return-void
.end method

.method public subTree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/Tree;
    .locals 4
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    move-object v0, p0

    .line 66
    .local v0, "child":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    .line 67
    .local v1, "next":Lcom/google/firebase/database/snapshot/ChildKey;
    :goto_0
    if-eqz v1, :cond_1

    .line 69
    iget-object v2, v0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v2, v2, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v2, v2, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/utilities/TreeNode;

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/google/firebase/database/core/utilities/TreeNode;

    invoke-direct {v2}, Lcom/google/firebase/database/core/utilities/TreeNode;-><init>()V

    .line 70
    .local v2, "childNode":Lcom/google/firebase/database/core/utilities/TreeNode;, "Lcom/google/firebase/database/core/utilities/TreeNode<TT;>;"
    :goto_1
    new-instance v3, Lcom/google/firebase/database/core/utilities/Tree;

    invoke-direct {v3, v1, v0, v2}, Lcom/google/firebase/database/core/utilities/Tree;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/Tree;Lcom/google/firebase/database/core/utilities/TreeNode;)V

    move-object v0, v3

    .line 71
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    .line 73
    .end local v2    # "childNode":Lcom/google/firebase/database/core/utilities/TreeNode;, "Lcom/google/firebase/database/core/utilities/TreeNode<TT;>;"
    goto :goto_0

    .line 74
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 184
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/utilities/Tree;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;

    .line 188
    .local p0, "this":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    if-nez v0, :cond_0

    const-string v0, "<anon>"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "nodeName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/utilities/TreeNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

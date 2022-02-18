.class public Lcom/google/firebase/database/core/operation/Merge;
.super Lcom/google/firebase/database/core/operation/Operation;
.source "Merge.java"


# instance fields
.field private final children:Lcom/google/firebase/database/core/CompoundWrite;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V
    .locals 1
    .param p1, "source"    # Lcom/google/firebase/database/core/operation/OperationSource;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "children"    # Lcom/google/firebase/database/core/CompoundWrite;

    .line 26
    sget-object v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;->Merge:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/firebase/database/core/operation/Operation;-><init>(Lcom/google/firebase/database/core/operation/Operation$OperationType;Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V

    .line 27
    iput-object p3, p0, Lcom/google/firebase/database/core/operation/Merge;->children:Lcom/google/firebase/database/core/CompoundWrite;

    .line 28
    return-void
.end method


# virtual methods
.method public getChildren()Lcom/google/firebase/database/core/CompoundWrite;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/Merge;->children:Lcom/google/firebase/database/core/CompoundWrite;

    return-object v0
.end method

.method public operationForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/operation/Operation;
    .locals 5
    .param p1, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .line 36
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/Merge;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/Merge;->children:Lcom/google/firebase/database/core/CompoundWrite;

    new-instance v2, Lcom/google/firebase/database/core/Path;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 38
    .local v0, "childTree":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual {v0}, Lcom/google/firebase/database/core/CompoundWrite;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    return-object v1

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/database/core/CompoundWrite;->rootWrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 43
    new-instance v1, Lcom/google/firebase/database/core/operation/Overwrite;

    iget-object v2, p0, Lcom/google/firebase/database/core/operation/Merge;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/firebase/database/core/CompoundWrite;->rootWrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/database/core/operation/Overwrite;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Lcom/google/firebase/database/core/operation/Merge;

    iget-object v2, p0, Lcom/google/firebase/database/core/operation/Merge;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/firebase/database/core/operation/Merge;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V

    return-object v1

    .line 47
    .end local v0    # "childTree":Lcom/google/firebase/database/core/CompoundWrite;
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/Merge;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    new-instance v0, Lcom/google/firebase/database/core/operation/Merge;

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/Merge;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    iget-object v2, p0, Lcom/google/firebase/database/core/operation/Merge;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/core/operation/Merge;->children:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/database/core/operation/Merge;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V

    return-object v0

    .line 51
    :cond_3
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Lcom/google/firebase/database/core/operation/Merge;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/firebase/database/core/operation/Merge;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/Merge;->children:Lcom/google/firebase/database/core/CompoundWrite;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 57
    const-string v1, "Merge { path=%s, source=%s, children=%s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

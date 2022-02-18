.class public Lcom/google/firebase/database/core/operation/Overwrite;
.super Lcom/google/firebase/database/core/operation/Operation;
.source "Overwrite.java"


# instance fields
.field private final snapshot:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 1
    .param p1, "source"    # Lcom/google/firebase/database/core/operation/OperationSource;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "snapshot"    # Lcom/google/firebase/database/snapshot/Node;

    .line 26
    sget-object v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;->Overwrite:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/firebase/database/core/operation/Operation;-><init>(Lcom/google/firebase/database/core/operation/Operation$OperationType;Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V

    .line 27
    iput-object p3, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    .line 28
    return-void
.end method


# virtual methods
.method public getSnapshot()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method public operationForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/operation/Operation;
    .locals 4
    .param p1, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .line 36
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/Overwrite;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/google/firebase/database/core/operation/Overwrite;

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/Overwrite;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    .line 38
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v3, p1}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/database/core/operation/Overwrite;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    .line 37
    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/google/firebase/database/core/operation/Overwrite;

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/Overwrite;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    iget-object v2, p0, Lcom/google/firebase/database/core/operation/Overwrite;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/database/core/operation/Overwrite;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 46
    const-string v1, "Overwrite { path=%s, source=%s, snapshot=%s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

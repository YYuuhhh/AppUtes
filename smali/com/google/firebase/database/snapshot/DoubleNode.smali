.class public Lcom/google/firebase/database/snapshot/DoubleNode;
.super Lcom/google/firebase/database/snapshot/LeafNode;
.source "DoubleNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/database/snapshot/LeafNode<",
        "Lcom/google/firebase/database/snapshot/DoubleNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Double;
    .param p2, "priority"    # Lcom/google/firebase/database/snapshot/Node;

    .line 26
    invoke-direct {p0, p2}, Lcom/google/firebase/database/snapshot/LeafNode;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    .line 27
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    .line 28
    return-void
.end method


# virtual methods
.method protected compareLeafValues(Lcom/google/firebase/database/snapshot/DoubleNode;)I
    .locals 2
    .param p1, "other"    # Lcom/google/firebase/database/snapshot/DoubleNode;

    .line 57
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    iget-object v1, p1, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic compareLeafValues(Lcom/google/firebase/database/snapshot/LeafNode;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/google/firebase/database/snapshot/DoubleNode;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/DoubleNode;->compareLeafValues(Lcom/google/firebase/database/snapshot/DoubleNode;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 62
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/DoubleNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 63
    return v1

    .line 65
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/snapshot/DoubleNode;

    .line 66
    .local v0, "otherDoubleNode":Lcom/google/firebase/database/snapshot/DoubleNode;
    iget-object v2, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    iget-object v3, v0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    iget-object v3, v0, Lcom/google/firebase/database/snapshot/DoubleNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 4
    .param p1, "version"    # Lcom/google/firebase/database/snapshot/Node$HashVersion;

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/DoubleNode;->getPriorityHash(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "toHash":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->doubleToHashString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    return-object v0
.end method

.method protected getLeafType()Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
    .locals 1

    .line 51
    sget-object v0, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->Number:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/DoubleNode;
    .locals 2
    .param p1, "priority"    # Lcom/google/firebase/database/snapshot/Node;

    .line 45
    invoke-static {p1}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->isValidPriority(Lcom/google/firebase/database/snapshot/Node;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 46
    new-instance v0, Lcom/google/firebase/database/snapshot/DoubleNode;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/DoubleNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/DoubleNode;

    move-result-object p1

    return-object p1
.end method

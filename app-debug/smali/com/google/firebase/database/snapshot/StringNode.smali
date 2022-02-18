.class public Lcom/google/firebase/database/snapshot/StringNode;
.super Lcom/google/firebase/database/snapshot/LeafNode;
.source "StringNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/database/snapshot/LeafNode<",
        "Lcom/google/firebase/database/snapshot/StringNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "priority"    # Lcom/google/firebase/database/snapshot/Node;

    .line 24
    invoke-direct {p0, p2}, Lcom/google/firebase/database/snapshot/LeafNode;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    .line 25
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/StringNode;->value:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected bridge synthetic compareLeafValues(Lcom/google/firebase/database/snapshot/LeafNode;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/google/firebase/database/snapshot/StringNode;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/StringNode;->compareLeafValues(Lcom/google/firebase/database/snapshot/StringNode;)I

    move-result p1

    return p1
.end method

.method protected compareLeafValues(Lcom/google/firebase/database/snapshot/StringNode;)I
    .locals 2
    .param p1, "other"    # Lcom/google/firebase/database/snapshot/StringNode;

    .line 59
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/StringNode;->value:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/firebase/database/snapshot/StringNode;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 64
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/StringNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    return v1

    .line 67
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/snapshot/StringNode;

    .line 68
    .local v0, "otherStringNode":Lcom/google/firebase/database/snapshot/StringNode;
    iget-object v2, p0, Lcom/google/firebase/database/snapshot/StringNode;->value:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/firebase/database/snapshot/StringNode;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/StringNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    iget-object v3, v0, Lcom/google/firebase/database/snapshot/StringNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # Lcom/google/firebase/database/snapshot/Node$HashVersion;

    .line 35
    sget-object v0, Lcom/google/firebase/database/snapshot/StringNode$1;->$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/Node$HashVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "string:"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/StringNode;->getPriorityHash(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/StringNode;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/database/core/utilities/Utilities;->stringHashV2Representation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hash version for string node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/StringNode;->getPriorityHash(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/StringNode;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLeafType()Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->String:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/StringNode;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/StringNode;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/StringNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/StringNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/StringNode;

    move-result-object p1

    return-object p1
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/StringNode;
    .locals 2
    .param p1, "priority"    # Lcom/google/firebase/database/snapshot/Node;

    .line 49
    new-instance v0, Lcom/google/firebase/database/snapshot/StringNode;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/StringNode;->value:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

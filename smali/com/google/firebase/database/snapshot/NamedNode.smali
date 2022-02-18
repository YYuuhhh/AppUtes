.class public final Lcom/google/firebase/database/snapshot/NamedNode;
.super Ljava/lang/Object;
.source "NamedNode.java"


# static fields
.field private static final MAX_NODE:Lcom/google/firebase/database/snapshot/NamedNode;

.field private static final MIN_NODE:Lcom/google/firebase/database/snapshot/NamedNode;


# instance fields
.field private final name:Lcom/google/firebase/database/snapshot/ChildKey;

.field private final node:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMinName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    sput-object v0, Lcom/google/firebase/database/snapshot/NamedNode;->MIN_NODE:Lcom/google/firebase/database/snapshot/NamedNode;

    .line 22
    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/database/snapshot/Node;->MAX_NODE:Lcom/google/firebase/database/snapshot/ChildrenNode;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    sput-object v0, Lcom/google/firebase/database/snapshot/NamedNode;->MAX_NODE:Lcom/google/firebase/database/snapshot/NamedNode;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0
    .param p1, "name"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/NamedNode;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 34
    iput-object p2, p0, Lcom/google/firebase/database/snapshot/NamedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    .line 35
    return-void
.end method

.method public static getMaxNode()Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/firebase/database/snapshot/NamedNode;->MAX_NODE:Lcom/google/firebase/database/snapshot/NamedNode;

    return-object v0
.end method

.method public static getMinNode()Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/firebase/database/snapshot/NamedNode;->MIN_NODE:Lcom/google/firebase/database/snapshot/NamedNode;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 53
    return v0

    .line 55
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 61
    .local v2, "namedNode":Lcom/google/firebase/database/snapshot/NamedNode;
    iget-object v3, p0, Lcom/google/firebase/database/snapshot/NamedNode;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    iget-object v4, v2, Lcom/google/firebase/database/snapshot/NamedNode;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 62
    return v1

    .line 64
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/database/snapshot/NamedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    iget-object v4, v2, Lcom/google/firebase/database/snapshot/NamedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 65
    return v1

    .line 68
    :cond_3
    return v0

    .line 56
    .end local v2    # "namedNode":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_4
    :goto_0
    return v1
.end method

.method public getName()Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/NamedNode;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public getNode()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/NamedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/NamedNode;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->hashCode()I

    move-result v0

    .line 74
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/NamedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 75
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NamedNode{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/NamedNode;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/NamedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

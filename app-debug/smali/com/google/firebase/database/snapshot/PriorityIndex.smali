.class public Lcom/google/firebase/database/snapshot/PriorityIndex;
.super Lcom/google/firebase/database/snapshot/Index;
.source "PriorityIndex.java"


# static fields
.field private static final INSTANCE:Lcom/google/firebase/database/snapshot/PriorityIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/google/firebase/database/snapshot/PriorityIndex;

    invoke-direct {v0}, Lcom/google/firebase/database/snapshot/PriorityIndex;-><init>()V

    sput-object v0, Lcom/google/firebase/database/snapshot/PriorityIndex;->INSTANCE:Lcom/google/firebase/database/snapshot/PriorityIndex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/Index;-><init>()V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/database/snapshot/PriorityIndex;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/firebase/database/snapshot/PriorityIndex;->INSTANCE:Lcom/google/firebase/database/snapshot/PriorityIndex;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;)I
    .locals 4
    .param p1, "a"    # Lcom/google/firebase/database/snapshot/NamedNode;
    .param p2, "b"    # Lcom/google/firebase/database/snapshot/NamedNode;

    .line 31
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 32
    .local v0, "aPrio":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 33
    .local v1, "bPrio":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-static {v2, v0, v3, v1}, Lcom/google/firebase/database/snapshot/NodeUtilities;->nameAndPriorityCompare(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lcom/google/firebase/database/snapshot/NamedNode;

    check-cast p2, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/snapshot/PriorityIndex;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 58
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/PriorityIndex;

    return v0
.end method

.method public getQueryDefinition()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get query definition on priority index!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 64
    const v0, 0x302679

    return v0
.end method

.method public isDefinedOn(Lcom/google/firebase/database/snapshot/Node;)Z
    .locals 1
    .param p1, "a"    # Lcom/google/firebase/database/snapshot/Node;

    .line 38
    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public makePost(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 3
    .param p1, "name"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "value"    # Lcom/google/firebase/database/snapshot/Node;

    .line 43
    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    new-instance v1, Lcom/google/firebase/database/snapshot/StringNode;

    const-string v2, "[PRIORITY-POST]"

    invoke-direct {v1, v2, p2}, Lcom/google/firebase/database/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public maxPost()Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 2

    .line 48
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/snapshot/Node;->MAX_NODE:Lcom/google/firebase/database/snapshot/ChildrenNode;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/database/snapshot/PriorityIndex;->makePost(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, "PriorityIndex"

    return-object v0
.end method

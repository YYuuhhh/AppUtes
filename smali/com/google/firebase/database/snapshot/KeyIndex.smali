.class public Lcom/google/firebase/database/snapshot/KeyIndex;
.super Lcom/google/firebase/database/snapshot/Index;
.source "KeyIndex.java"


# static fields
.field private static final INSTANCE:Lcom/google/firebase/database/snapshot/KeyIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/google/firebase/database/snapshot/KeyIndex;

    invoke-direct {v0}, Lcom/google/firebase/database/snapshot/KeyIndex;-><init>()V

    sput-object v0, Lcom/google/firebase/database/snapshot/KeyIndex;->INSTANCE:Lcom/google/firebase/database/snapshot/KeyIndex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/Index;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/firebase/database/snapshot/KeyIndex;->INSTANCE:Lcom/google/firebase/database/snapshot/KeyIndex;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;)I
    .locals 2
    .param p1, "o1"    # Lcom/google/firebase/database/snapshot/NamedNode;
    .param p2, "o2"    # Lcom/google/firebase/database/snapshot/NamedNode;

    .line 55
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/snapshot/ChildKey;->compareTo(Lcom/google/firebase/database/snapshot/ChildKey;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/google/firebase/database/snapshot/NamedNode;

    check-cast p2, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/snapshot/KeyIndex;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 60
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/KeyIndex;

    return v0
.end method

.method public getQueryDefinition()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, ".key"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 66
    const/16 v0, 0x25

    return v0
.end method

.method public isDefinedOn(Lcom/google/firebase/database/snapshot/Node;)Z
    .locals 1
    .param p1, "a"    # Lcom/google/firebase/database/snapshot/Node;

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public makePost(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 3
    .param p1, "name"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "value"    # Lcom/google/firebase/database/snapshot/Node;

    .line 38
    instance-of v0, p2, Lcom/google/firebase/database/snapshot/StringNode;

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 40
    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public maxPost()Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 1

    .line 45
    invoke-static {}, Lcom/google/firebase/database/snapshot/NamedNode;->getMaxNode()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "KeyIndex"

    return-object v0
.end method

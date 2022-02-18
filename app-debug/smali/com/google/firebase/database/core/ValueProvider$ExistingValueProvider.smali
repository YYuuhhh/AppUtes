.class public Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;
.super Lcom/google/firebase/database/core/ValueProvider;
.source "ValueProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/ValueProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExistingValueProvider"
.end annotation


# instance fields
.field private final node:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0
    .param p1, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .line 41
    invoke-direct {p0}, Lcom/google/firebase/database/core/ValueProvider;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;->node:Lcom/google/firebase/database/snapshot/Node;

    .line 43
    return-void
.end method


# virtual methods
.method public getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/ValueProvider;
    .locals 2
    .param p1, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .line 47
    iget-object v0, p0, Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 48
    .local v0, "child":Lcom/google/firebase/database/snapshot/Node;
    new-instance v1, Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    return-object v1
.end method

.method public node()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/firebase/database/core/ValueProvider$ExistingValueProvider;->node:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

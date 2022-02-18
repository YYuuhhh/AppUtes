.class Lcom/google/firebase/database/snapshot/ChildrenNode$2;
.super Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;
.source "ChildrenNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/snapshot/ChildrenNode;->forEachChild(Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor<",
        "Lcom/google/firebase/database/snapshot/ChildKey;",
        "Lcom/google/firebase/database/snapshot/Node;",
        ">;"
    }
.end annotation


# instance fields
.field passedPriorityKey:Z

.field final synthetic this$0:Lcom/google/firebase/database/snapshot/ChildrenNode;

.field final synthetic val$visitor:Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/snapshot/ChildrenNode;Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/snapshot/ChildrenNode;

    .line 264
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/ChildrenNode$2;->this$0:Lcom/google/firebase/database/snapshot/ChildrenNode;

    iput-object p2, p0, Lcom/google/firebase/database/snapshot/ChildrenNode$2;->val$visitor:Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;

    invoke-direct {p0}, Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;-><init>()V

    .line 265
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/firebase/database/snapshot/ChildrenNode$2;->passedPriorityKey:Z

    return-void
.end method


# virtual methods
.method public visitEntry(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 3
    .param p1, "key"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "value"    # Lcom/google/firebase/database/snapshot/Node;

    .line 269
    iget-boolean v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode$2;->passedPriorityKey:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getPriorityKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/snapshot/ChildKey;->compareTo(Lcom/google/firebase/database/snapshot/ChildKey;)I

    move-result v0

    if-lez v0, :cond_0

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode$2;->passedPriorityKey:Z

    .line 271
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode$2;->val$visitor:Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getPriorityKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/ChildrenNode$2;->this$0:Lcom/google/firebase/database/snapshot/ChildrenNode;

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/ChildrenNode;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;->visitChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode$2;->val$visitor:Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;->visitChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    .line 274
    return-void
.end method

.method public bridge synthetic visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 264
    check-cast p1, Lcom/google/firebase/database/snapshot/ChildKey;

    check-cast p2, Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/snapshot/ChildrenNode$2;->visitEntry(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-void
.end method

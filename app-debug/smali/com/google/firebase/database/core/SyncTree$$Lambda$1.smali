.class final synthetic Lcom/google/firebase/database/core/SyncTree$$Lambda$1;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcom/google/firebase/database/core/SyncTree;

.field private final arg$2:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$$Lambda$1;->arg$1:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$$Lambda$1;->arg$2:Lcom/google/firebase/database/core/view/QuerySpec;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/firebase/database/core/SyncTree$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/core/SyncTree$$Lambda$1;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$$Lambda$1;->arg$1:Lcom/google/firebase/database/core/SyncTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$$Lambda$1;->arg$2:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/SyncTree;->lambda$getServerValue$0(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method
